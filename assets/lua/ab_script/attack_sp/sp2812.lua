--1030570:LR_超サイヤ人ゴッドSSベジータ(進化)_必殺技：戦闘民族の誇り
--sp_effect_a1_00474
--sp2812

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163504;  -- 正面へ突進 ef_001
SP_02 = 163506;  -- 突進〜フィニッシュ ef_002
SP_02b = 163507;  -- 突進〜フィニッシュ ef_002b

--エフェクト(敵)
SP_01r = 163505;  -- 正面へ突進 ef_001r
SP_02r = 163508;  -- 突進〜フィニッシュ ef_002r
SP_02br = 163509;  -- 突進〜フィニッシュ ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 108;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 202;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --バク転
        SE021 = playSeVer2( spep_2 + 202 + 3, 1117, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 202 + 3, SE021, 81 );
        SE023 = playSeVer2( spep_2 + 202 + 3, 1233, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 202 + 3, SE023, 59 );
        SE024 = playSeVer2( spep_2 + 202 + 3, 1192, "",spep_2 + 222, 0, 10, -1);
        setSeVolumeByWorkId( spep_2 + 202 + 3, SE024, 282 );

    else end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 正面へ突進
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 正面へ突進(ef_001)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 350 );

--向かっていく
SE005 = playSeVer2( spep_0 + 74, 1182, "",spep_0 + 124, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 76, 9, "",spep_0 + 124, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --108F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かってくる
SE008 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 突進〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 500;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 611, -437.5 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 608.7, -436.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 608.7, -436.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 601.8, -432.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 601.8, -432.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 590.5, -425.3 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 590.5, -425.3 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 575.6, -414.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 575.6, -414.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 553, -404.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 553, -404.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 530.1, -389.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 530.1, -389.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 498.4, -370 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 498.4, -370 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 465.3, -350.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 465.3, -350.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 428.6, -325.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 428.6, -325.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 381.2, -303.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 381.2, -303.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 347.2, -282.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 347.2, -282.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 316.5, -269.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 316.5, -269.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 279.3, -249.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 279.3, -249.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 277.9, -244.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 277.9, -244.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 268, -248.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 268, -248.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 270.5, -247.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 270.5, -247.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 261.4, -239.5 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 261.4, -239.5 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 264.7, -238.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 264.7, -238.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 256.4, -243 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 256.4, -243 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 254.5, -236.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 254.5, -236.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 259, -235.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 259, -235.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 254.9, -237.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 254.9, -237.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 36.7, 10.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 36.7, 10.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 208.8, 129.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 208.8, 129.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 469.6, 226.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 469.6, 226.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 378, 177.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 378, 177.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 270.6, 128.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 270.6, 128.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 409.4, 193 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 409.4, 193 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 344, 160.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 344, 160.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 282.5, 133.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 282.5, 133.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 274.8, 123.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 274.8, 123.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 277.1, 133.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 277.1, 133.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 284.4, 128.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 284.4, 128.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 291.7, 133.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 291.7, 133.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 284, 123.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 284, 123.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 286.2, 133.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 286.2, 133.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 298.5, 123.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 298.5, 123.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 298.8, 131.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 298.8, 131.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 295.1, 125.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 295.1, 125.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 299.3, 129.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 299.3, 129.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 303.6, 129.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 303.6, 129.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 304.8, 128 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 304.8, 128 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 307.1, 129 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 307.1, 129 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 71.6, -15.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 71.6, -15.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 98.8, 24.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 98.8, 24.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 98.8, 31.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 98.8, 31.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 72.9, -24.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 72.9, -24.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 111, 82 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 111, 82 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 111, 89 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 111, 89 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 123.7, 99.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 123.7, 99.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 123.7, 106.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 123.7, 106.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 71.6, 15.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 71.6, 15.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 98.8, 4.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 98.8, 4.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 98.8, 11.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 98.8, 11.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 72.9, -44.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 72.9, -44.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 111, 72 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 111, 72 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 111, 79 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 111, 79 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 123.7, 96.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 123.7, 96.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 123.7, 90.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 123.7, 90.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 114.2, 52.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 114.2, 52.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 72, 71.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 72, 71.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 117.7, 116.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 117.7, 116.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 106.3, 103.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 106.3, 103.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 91.6, 88.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 91.6, 88.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 122.6, 117.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 122.6, 117.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 104.7, 99.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 104.7, 99.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 199.9, 238.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 199.9, 238.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 286.1, 368 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 286.1, 368 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 384.3, 503.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 384.3, 503.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 470.5, 645.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 470.5, 645.4 , 0 );

setScaleKey( spep_2 + 0, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -35.8 );

--敵の動き2

setDisp( spep_2 + 328 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 328 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 328 + OFFSET_X, 1, -35.8, -175.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -35.8, -175.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -32.8, -177.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -32.8, -177.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -28.1, -179.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -28.1, -179.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -21.8, -181.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -21.8, -181.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -13.9, -185.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -13.9, -185.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -12.7, -186.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -12.7, -186.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -11.6, -187.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -11.6, -187.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -10.6, -188.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -10.6, -188.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -9.5, -189.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -9.5, -189.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -8.6, -190.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -8.6, -190.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -7.7, -191.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -7.7, -191.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -6.8, -192.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -6.8, -192.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -6, -193.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -6, -193.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -5.3, -194.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -5.3, -194.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -4.6, -195.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -4.6, -195.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -4, -195.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -4, -195.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -3.4, -196.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -3.4, -196.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -2.9, -197.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -2.9, -197.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -2.4, -197.7 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -2.4, -197.7 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -2, -198.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -2, -198.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 6.4, -190.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 6.4, -190.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -0.3, -206.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -0.3, -206.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -0.1, -191.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -0.1, -191.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 7.1, -207.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 7.1, -207.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -4.1, -201.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -4.1, -201.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 0.7, -196.9 , 0 );

setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_2 + 328 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 42.1 );

-- ** 音 ** --

--近づく
SE010 = playSeVer2( spep_2 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 53 );
SE011 = playSeVer2( spep_2 + 4, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE011, 66 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--蹴り
SE012 = playSeVer2( spep_2 + 30, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 40, 1359, "", 0, 0, 0, -1);

--連打
SE015 = playSeVer2( spep_2 + 86, 1425, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 86, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 106, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 124, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 146, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 156, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE020, 80 );

--バク転
SE021 = playSeVer2( spep_2 + 186, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE021, 81 );
SE022 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE022, 71 );
SE023 = playSeVer2( spep_2 + 200, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE023, 59 );
SE024 = playSeVer2( spep_2 + 200, 1192, "",spep_2 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 200, SE024, 282 );
SE025 = playSeVer2( spep_2 + 220, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE025, 166 );
SE026 = playSeVer2( spep_2 + 232, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE026, 60 );
SE027 = playSeVer2( spep_2 + 232, 1192, "",spep_2 + 252, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 232, SE027, 263 );
SE028 = playSeVer2( spep_2 + 248, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE028, 178 );

--気を溜める音（気合を入れた時）
SE029 = playSeVer2( spep_2 + 254, 1035, "",spep_2 + 302, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 254, SE029, 130 );

--気弾発射
SE030 = playSeVer2( spep_2 + 304, 1212, "",spep_2 + 378, 20, 12, -1);
setSeVolumeByWorkId( spep_2 + 304, SE030, 79 );
setStartTimeMs( SE030,  633 );
SE031 = playSeVer2( spep_2 + 280, 1402, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 280, 1423, "",spep_2 + 380, 0, 12, -1);
SE033 = playSeVer2( spep_2 + 280, 1133, "",spep_2 + 378, 0, 10, -1);

--爆発
SE034 = playSeVer2( spep_2 + 356, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 366, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 382); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 500F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 正面へ突進
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 正面へ突進(ef_001r)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 350 );

--向かっていく
SE005 = playSeVer2( spep_0 + 74, 1182, "",spep_0 + 124, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 76, 9, "",spep_0 + 124, 0, 18, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --108F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かってくる
SE008 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 突進〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 500;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 突進〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 突進〜フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 611, -437.5 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 608.7, -436.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 608.7, -436.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 601.8, -432.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 601.8, -432.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 590.5, -425.3 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 590.5, -425.3 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 575.6, -414.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 575.6, -414.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 553, -404.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 553, -404.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 530.1, -389.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 530.1, -389.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 498.4, -370 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 498.4, -370 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 465.3, -350.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 465.3, -350.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 428.6, -325.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 428.6, -325.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 381.2, -303.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 381.2, -303.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 347.2, -282.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 347.2, -282.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 316.5, -269.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 316.5, -269.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 279.3, -249.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 279.3, -249.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 277.9, -244.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 277.9, -244.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 268, -248.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 268, -248.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 270.5, -247.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 270.5, -247.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 261.4, -239.5 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 261.4, -239.5 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 264.7, -238.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 264.7, -238.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 256.4, -243 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 256.4, -243 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 254.5, -236.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 254.5, -236.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 259, -235.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 259, -235.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 254.9, -237.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 254.9, -237.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 36.7, 10.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 36.7, 10.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 208.8, 129.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 208.8, 129.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 469.6, 226.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 469.6, 226.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 378, 177.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 378, 177.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 270.6, 128.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 270.6, 128.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 409.4, 193 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 409.4, 193 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 344, 160.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 344, 160.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 282.5, 133.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 282.5, 133.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 274.8, 123.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 274.8, 123.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 277.1, 133.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 277.1, 133.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 284.4, 128.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 284.4, 128.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 291.7, 133.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 291.7, 133.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 284, 123.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 284, 123.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 286.2, 133.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 286.2, 133.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 298.5, 123.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 298.5, 123.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 298.8, 131.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 298.8, 131.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 295.1, 125.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 295.1, 125.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 299.3, 129.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 299.3, 129.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 303.6, 129.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 303.6, 129.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 304.8, 128 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 304.8, 128 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 307.1, 129 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 307.1, 129 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 71.6, -15.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 71.6, -15.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 98.8, 24.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 98.8, 24.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 98.8, 31.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 98.8, 31.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 72.9, -24.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 72.9, -24.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 111, 82 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 111, 82 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 111, 89 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 111, 89 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 123.7, 99.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 123.7, 99.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 123.7, 106.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 123.7, 106.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 71.6, 15.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 71.6, 15.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 71.6, -8.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 98.8, 4.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 98.8, 4.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 98.8, 11.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 98.8, 11.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 72.9, -44.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 72.9, -44.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 72.9, -17.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 112.1, 22.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 112.1, 29.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 113.2, 21.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 113.2, 28.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 147.1, 64.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 147.1, 71.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 111, 72 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 111, 72 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 111, 79 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 111, 79 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 123.7, 96.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 123.7, 96.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 123.7, 90.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 123.7, 90.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 114.2, 52.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 114.2, 52.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 72, 71.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 72, 71.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 117.7, 116.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 117.7, 116.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 106.3, 103.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 106.3, 103.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 91.6, 88.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 91.6, 88.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 122.6, 117.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 122.6, 117.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 104.7, 99.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 104.7, 99.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 199.9, 238.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 199.9, 238.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 286.1, 368 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 286.1, 368 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 384.3, 503.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 384.3, 503.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 470.5, 645.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 470.5, 645.4 , 0 );

setScaleKey( spep_2 + 0, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -35.8 );

--敵の動き2

setDisp( spep_2 + 328 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 328 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 328 + OFFSET_X, 1, -35.8, -175.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -35.8, -175.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -32.8, -177.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -32.8, -177.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -28.1, -179.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -28.1, -179.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -21.8, -181.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -21.8, -181.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -13.9, -185.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -13.9, -185.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -12.7, -186.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -12.7, -186.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -11.6, -187.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -11.6, -187.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -10.6, -188.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -10.6, -188.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -9.5, -189.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -9.5, -189.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -8.6, -190.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -8.6, -190.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -7.7, -191.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -7.7, -191.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -6.8, -192.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -6.8, -192.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -6, -193.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -6, -193.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -5.3, -194.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -5.3, -194.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -4.6, -195.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -4.6, -195.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -4, -195.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -4, -195.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -3.4, -196.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -3.4, -196.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -2.9, -197.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -2.9, -197.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -2.4, -197.7 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -2.4, -197.7 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -2, -198.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -2, -198.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 6.4, -190.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 6.4, -190.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -0.3, -206.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -0.3, -206.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -0.1, -191.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -0.1, -191.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 7.1, -207.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 7.1, -207.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -4.1, -201.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -4.1, -201.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 0.7, -196.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 0.7, -196.9 , 0 );

setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_2 + 328 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 42.1 );

-- ** 音 ** --

--近づく
SE010 = playSeVer2( spep_2 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 53 );
SE011 = playSeVer2( spep_2 + 4, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE011, 66 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--蹴り
SE012 = playSeVer2( spep_2 + 30, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 40, 1359, "", 0, 0, 0, -1);

--連打
SE015 = playSeVer2( spep_2 + 86, 1425, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 86, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 106, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 124, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 146, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 156, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE020, 80 );

--バク転
SE021 = playSeVer2( spep_2 + 186, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE021, 81 );
SE022 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE022, 71 );
SE023 = playSeVer2( spep_2 + 200, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE023, 59 );
SE024 = playSeVer2( spep_2 + 200, 1192, "",spep_2 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 200, SE024, 282 );
SE025 = playSeVer2( spep_2 + 220, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE025, 166 );
SE026 = playSeVer2( spep_2 + 232, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE026, 60 );
SE027 = playSeVer2( spep_2 + 232, 1192, "",spep_2 + 252, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 232, SE027, 263 );
SE028 = playSeVer2( spep_2 + 248, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE028, 178 );

--気を溜める音（気合を入れた時）
SE029 = playSeVer2( spep_2 + 254, 1035, "",spep_2 + 302, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 254, SE029, 130 );

--気弾発射
SE030 = playSeVer2( spep_2 + 304, 1212, "",spep_2 + 378, 20, 12, -1);
setSeVolumeByWorkId( spep_2 + 304, SE030, 79 );
setStartTimeMs( SE030,  633 );
SE031 = playSeVer2( spep_2 + 280, 1402, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 280, 1423, "",spep_2 + 380, 0, 12, -1);
SE033 = playSeVer2( spep_2 + 280, 1133, "",spep_2 + 378, 0, 10, -1);

--爆発
SE034 = playSeVer2( spep_2 + 356, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 366, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 382); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 500F

end
