--1030390:LR_超サイヤ人2孫悟飯(少年期)_必殺技：龍翔破
--sp_effect_b1_00315
--sp2821

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163575;  --ef_001 開幕〜飛び出すまで
SP_02  = 163576;  --ef_002 悟飯瞬間移動〜フィニッシュまで
SP_02b = 163577;  --ef_002b 悟飯瞬間移動〜フィニッシュまで

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 204;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 374;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --蹴り飛ばす
        SE030 = playSeVer2( spep_2 + 374+3, 1187, "", 0, 0, 0, -1);
        SE031 = playSeVer2( spep_2 + 374+3, 1024, "",spep_2 + 466, 0, 52, -1);
        setSeVolumeByWorkId( spep_2 + 374+3, SE031, 79 );
        SE032 = playSeVer2( spep_2 + 378+3, 1123, "", 0, 0, 0, -1);

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜飛び出すまで
-------------------------------------------------
MAX_FRAME_0 = 204;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜飛び出すまで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 76;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -165, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -165, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -165, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 230, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--入り
SE003 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 78, 1116, "",spep_0 + 130, 0, 26, -1);
SE006 = playSeVer2( spep_0 + 116, 1004, "", 0, 0, 0, -1);

--向かっていく
SE007 = playSeVer2( spep_0 + 160, 1182, "",spep_0 + 222, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 160, 9, "",spep_0 + 222, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 160, SE008, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 204f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 悟飯瞬間移動〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 612;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 悟飯瞬間移動〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 悟飯瞬間移動〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 18 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 6 );

--敵位置調整用
a = -10;
--敵サイズ調整用
b = 0.2;

setMoveKey( spep_2 + 0, 1, -158.3, -212 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -316.9, -166.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -316.9, -166.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -450.4, -128.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -450.4, -128.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -558.7, -96.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -558.7, -96.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -641.9, -73.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -641.9, -73.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -699.9, -56.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -699.9, -56.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -704, -55.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -704, -55.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -707.9, -54.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -707.9, -54.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -711.6, -53.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -711.6, -53.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -715.1, -52.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -715.1, -52.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -718.3, -51.2 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -718.3, -51.2 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -721.3, -50.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -721.3, -50.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -724.2, -49.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -724.2, -49.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -726.8, -48.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -726.8, -48.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -729.1, -48.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -729.1, -48.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -752.3, -44.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -752.3, -44.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -774.6, -40.3 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -774.6, -40.3 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -795.8, -36.7 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -795.8, -36.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -816.1, -33.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -816.1, -33.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -835.4, -29.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -835.4, -29.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -853.8, -26.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -853.8, -26.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -871.2, -23.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -871.2, -23.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -911.5, 2.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -911.5, 2.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -940.3, 21.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -940.3, 21.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -957.6, 32.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -957.6, 32.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -963.3, 36.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -963.3, 36.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -828.3, 1.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -828.3, 1.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -693.2, -32.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -693.2, -32.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -558.2, -67 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -558.2, -67 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -221.7, 998.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -221.7, 998.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 420.4, -204.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 420.4, -204.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -101, -151.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -101, -151.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 404.4, -204.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 404.4, -204.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 133, 180.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 133, 180.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 313.2, 473.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 313.2, 473.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -88.2, -148.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -88.2, -148.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 194.8, 144.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 194.8, 144.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 157.5, 159.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 157.5, 159.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 97.9, 230.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 97.9, 230.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 66.1, 257.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 66.1, 257.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 54.6, 270.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 54.6, 270.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 53, 264.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 53, 264.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 61.1, 276.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 61.1, 276.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 59.8, 269 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 59.8, 269 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 49, 280.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 49, 280.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 48, 272.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 48, 272.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 56.8, 283.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 56.8, 283.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 56.2, 275.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 56.2, 275.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 46.1, 285.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 46.1, 285.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 45.9, 276.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 45.9, 276.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -110.3, 46.8 + a, 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -110.3, 46.8 + a, 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -128.7, 69.3 + a, 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -128.7, 69.3 + a, 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -144.3, 88.4 + a, 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -144.3, 88.4 + a, 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -157.3, 104.2 + a, 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -157.3, 104.2 + a, 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -167.4, 116.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -167.4, 116.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -168.3, 117.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -168.3, 117.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -169.1, 118.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -169.1, 118.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -169.9, 119.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -169.9, 119.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -170.7, 120.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -170.7, 120.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -171.5, 121.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -171.5, 121.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -172.2, 122.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -172.2, 122.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -172.9, 123.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -172.9, 123.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -173.6, 124.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -173.6, 124.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -174.2, 124.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -174.2, 124.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -174.8, 125.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -174.8, 125.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -175.4, 126.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -175.4, 126.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -176, 127.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -176, 127.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -176.5, 127.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -176.5, 127.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -177.1, 128.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -177.1, 128.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -177.5, 129 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -177.5, 129 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -178, 129.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -178, 129.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -178.4, 130.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -178.4, 130.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -178.9, 130.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -178.9, 130.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -179.2, 131 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -179.2, 131 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -179.6, 131.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -179.6, 131.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -179.9, 131.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -179.9, 131.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -180.2, 132.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -180.2, 132.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -180.5, 132.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -180.5, 132.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -180.8, 132.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -180.8, 132.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -181, 133.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -181, 133.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -58.3, -115.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -58.3, -115.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -85, -306.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -85, -306.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -44.4, -25.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -44.4, -25.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -70.9, -210.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -70.9, -210.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -50.3, -107.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -50.3, -107.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -92.9, -314.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -92.9, -314.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -52.4, -17.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -52.4, -17.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -62.9, -218.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -62.9, -218.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -58.3, -115.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -58.3, -115.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -57.7, -53.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -57.7, -53.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -81.2, -14.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -81.2, -14.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -88.6, 55.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -88.6, 55.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -80.1, 94.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -80.1, 94.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -95.5, 156.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -95.5, 156.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -87.3, 166.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -87.3, 166.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -103.1, 151.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -103.1, 151.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -102.9, 169.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -102.9, 169.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -86.7, 154.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -86.7, 154.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -94.5, 164.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -94.5, 164.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -90.3, 169.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -90.3, 169.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -98.2, 162.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -98.2, 162.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -98.1, 171.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -98.1, 171.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -89.9, 164.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -89.9, 164.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -93.8, 169.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -93.8, 169.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -93.7, 169.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -93.7, 169.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -93.7, 170.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -93.7, 170.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -93.6, 171 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -93.6, 171 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -93.5, 171.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -93.5, 171.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -93.5, 171.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -93.5, 171.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -93.5, 171.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -93.5, 171.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -93.6, 171.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -93.6, 171.7 , 0 );

setScaleKey( spep_2 + 0, 1, 8, 8 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 8.27, 8.27 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 8.27, 8.27 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 8.82, 8.82 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 8.82, 8.82 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 8.96, 8.96 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 8.96, 8.96 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 8.97, 8.97 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 8.97, 8.97 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 8.54, 8.54 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 8.54, 8.54 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 8.24, 8.24 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 8.24, 8.24 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 8.06, 8.06 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 8.06, 8.06 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 79.67, 79.67 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 79.67, 79.67 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 92.95, 92.95 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 92.95, 92.95 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 73.03, 73.03 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 73.03, 73.03 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 42.31, 42.31 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 42.31, 42.31 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 31.5, 31.5 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 31.5, 31.5 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 30.96, 30.96 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 30.96, 30.96 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 30.47, 30.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 30.47, 30.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 30.03, 30.03 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 30.03, 30.03 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 29.64, 29.64 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 29.64, 29.64 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 29.3, 29.3 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 29.3, 29.3 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 29.01, 29.01 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 29.01, 29.01 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 28.77, 28.77 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 28.77, 28.77 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 28.58, 28.58 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 28.58, 28.58 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 28.45, 28.45 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 28.45, 28.45 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 28.36, 28.36 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 28.36, 28.36 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.33 + b, 3.33 + b );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.33 + b, 3.33 + b );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 8.42 + b, 8.42 + b );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 8.42 + b, 8.42 + b );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 7.33 + b, 7.33 + b );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 7.33 + b, 7.33 + b );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 6.23 + b, 6.23 + b );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 6.23 + b, 6.23 + b );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 5.14 + b, 5.14 + b );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 5.14 + b, 5.14 + b );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.04 + b, 4.04 + b );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.04 + b, 4.04 + b );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.02 + b, 4.02 + b );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.02 + b, 4.02 + b );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.99 + b, 3.99 + b );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.99 + b, 3.99 + b );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.97 + b, 3.97 + b );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.97 + b, 3.97 + b );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.95 + b, 3.95 + b );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 3.95 + b, 3.95 + b );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.93 + b, 3.93 + b );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.93 + b, 3.93 + b );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.91 + b, 3.91 + b );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.91 + b, 3.91 + b );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 3.9 + b, 3.9 + b );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 3.9 + b, 3.9 + b );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.88 + b, 3.88 + b );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.88 + b, 3.88 + b );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.87 + b, 3.87 + b );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.87 + b, 3.87 + b );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.86 + b, 3.86 + b );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.86 + b, 3.86 + b );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 3.85 + b, 3.85 + b );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.85 + b, 3.85 + b );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 3.84 + b, 3.84 + b );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 3.84 + b, 3.84 + b );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 3.83 + b, 3.83 + b );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.83 + b, 3.83 + b );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.82 + b, 3.82 + b );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.82 + b, 3.82 + b );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 39 );

--敵の動き2
setDisp( spep_2 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 230 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 230 + OFFSET_X, 1, 515.3, -950.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 515.3, -950.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 398.4, -714.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 398.4, -714.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 269.4, -485 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 269.4, -485 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 152.6, -249.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 152.6, -249.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 23.8, -7.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 23.8, -7.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 27.7, -5.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 27.7, -5.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 19.3, -9.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 19.3, -9.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 23.3, -7.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 23.3, -7.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 15.2, 0.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 15.2, 0.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 19.1, 2.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 19.1, 2.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 10.7, -1.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 10.7, -1.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 14.7, 0.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 14.7, 0.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 6.6, 8.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 6.6, 8.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 10.5, 10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 10.5, 10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 2.2, 6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 2.2, 6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 6.2, 8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 6.2, 8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -2, 16 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -2, 16 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 1.9, 17.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 1.9, 17.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -6.4, 13.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -6.4, 13.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -2.4, 15.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -2.4, 15.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -10.6, 23.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -10.6, 23.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -6.6, 25.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -6.6, 25.8 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.64, 3.64 );

setRotateKey( spep_2 + 230 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 35 );

--敵の動き3
setDisp( spep_2 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 352 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 374 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 434 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 352 + OFFSET_X, 1, 727.5, -36.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 727.5, -36.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 717.6, -36.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 717.6, -36.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 688.1, -38.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 688.1, -38.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 638.8, -42.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 638.8, -42.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 569.9, -46.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 569.9, -46.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 481.2, -52.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 481.2, -52.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 372.8, -59.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 372.8, -59.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 244.8, -68.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 244.8, -68.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 227.7, -69.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 227.7, -69.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 210.3, -70.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 210.3, -70.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 192.7, -71.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 192.7, -71.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -643.8, 177.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -643.8, 177.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -454.6, 182.3 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -454.6, 182.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -418.2, 260.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -418.2, 260.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -199.9, 182.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -199.9, 182.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -162.1, 216.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -162.1, 216.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -86.8, 182.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -86.8, 182.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -74.2, 172.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -74.2, 172.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -648.8, 182.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -648.8, 182.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -454.6, 172.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -454.6, 172.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -408.2, 270.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -408.2, 270.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -199.9, 172.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -199.9, 172.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -172.1, 226.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -172.1, 226.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -86.8, 172.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -86.8, 172.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -64.2, 182.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -64.2, 182.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -648.8, 172.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -648.8, 172.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -464.6, 182.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -464.6, 182.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -270.4, 172.3 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -270.4, 172.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -391, 270.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -391, 270.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -258.4, 172.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -258.4, 172.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -309.4, 226.5 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -309.4, 226.5 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -229.4, 172.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -229.4, 172.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -221.1, 182.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -221.1, 182.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -223.6, 172.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -223.6, 172.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -216.8, 182.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -216.8, 182.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -200.9, 172.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -200.9, 172.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -195.7, 182.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -195.7, 182.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -201.3, 172.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -201.3, 172.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -197.6, 182.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -197.6, 182.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -184.8, 172.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -184.8, 172.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -182.7, 182.2 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -182.7, 182.2 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -330.4, 185.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -330.4, 185.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -221.8, 158.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -221.8, 158.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -124, 123.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -124, 123.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -24.7, 99.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -24.7, 99.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 75.6, 65.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 75.6, 65.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 124, 40.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 124, 40.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 173.2, 16.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 173.2, 16.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 210.5, -14.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 210.5, -14.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 248, -35.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 248, -35.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 285.7, -66.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 285.7, -66.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 280.3, -64.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 280.3, -64.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 277.4, -65.6 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 277.4, -65.6 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 274.7, -66.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 274.7, -66.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 272.2, -67.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 272.2, -67.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 269.8, -68.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 269.8, -68.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 267.5, -68.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 267.5, -68.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 265.3, -69.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 265.3, -69.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 263.2, -70.3 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 263.2, -70.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 261.3, -70.9 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 261.3, -70.9 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 259.6, -71.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 259.6, -71.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 257.9, -72 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 257.9, -72 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 256.4, -72.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 256.4, -72.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 255, -73 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 255, -73 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 253.7, -73.4 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 253.7, -73.4 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 252.6, -73.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 252.6, -73.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 251.6, -74.1 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 251.6, -74.1 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 250.7, -74.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 250.7, -74.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 249.9, -74.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 249.9, -74.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 249.3, -74.9 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 249.3, -74.9 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 248.8, -75.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 248.8, -75.1 , 0 );

setScaleKey( spep_2 + 352 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 352 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE010 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 129 );

--イナヅマ
SE011 = playSeVer2( spep_2 + 6, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 40 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

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
--腹パン
SE012 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 50, 1190, "", 0, 0, 0, -1);

--踏み込む
SE015 = playSeVer2( spep_2 + 116, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 122, 1192, "",spep_2 + 152, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 122, SE016, 158 );
SE017 = playSeVer2( spep_2 + 122, 1007, "", 0, 0, 0, -1);

--アッパー
SE018 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 150, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 150, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 202, 1183, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1121, "",spep_2 + 348, 0, 90, -1);
setSeVolumeByWorkId( spep_2 + 202, SE022, 56 );
setPitch( spep_2 + 202, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
SE023 = playSeVer2( spep_2 + 206, 8, "", 0, 0, 0, -1);

--向かっていく
SE024 = playSeVer2( spep_2 + 270, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 270, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 274, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE026, 155 );

--振りかぶる
SE027 = playSeVer2( spep_2 + 306, 1116, "",spep_2 + 350, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 322, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE028,  167 );

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 352, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 364, 1187, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 364, 1024, "",spep_2 + 466, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 364, SE031, 79 );
SE032 = playSeVer2( spep_2 + 368, 1123, "", 0, 0, 0, -1);

--敵とんでいく
SE033 = playSeVer2( spep_2 + 418, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 418, 1121, "",spep_2 + 546, 0, 52, -1);

--連続爆発
SE035 = playSeVer2( spep_2 + 482, 1061, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 508, 1061, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 508, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE038, 89 );
SE039 = playSeVer2( spep_2 + 528, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 528, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE040, 84 );
SE041 = playSeVer2( spep_2 + 554, 1061, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 554, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 496 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 612f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜飛び出すまで
-------------------------------------------------
MAX_FRAME_0 = 204;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜飛び出すまで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 76;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 165, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 230, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--入り
SE003 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 78, 1116, "",spep_0 + 130, 0, 26, -1);
SE006 = playSeVer2( spep_0 + 116, 1004, "", 0, 0, 0, -1);

--向かっていく
SE007 = playSeVer2( spep_0 + 160, 1182, "",spep_0 + 222, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 160, 9, "",spep_0 + 222, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 160, SE008, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 204f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 悟飯瞬間移動〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 612;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 悟飯瞬間移動〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 悟飯瞬間移動〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );

--敵位置調整用
a = -10;
--敵サイズ調整用
b = 0.2;

setMoveKey( spep_2 + 0, 1, 158.3, -212 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 316.9, -166.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 316.9, -166.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 450.4, -128.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 450.4, -128.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 558.7, -96.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 558.7, -96.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 641.9, -73.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 641.9, -73.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 699.9, -56.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 699.9, -56.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 704, -55.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 704, -55.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 707.9, -54.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 707.9, -54.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 711.6, -53.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 711.6, -53.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 715.1, -52.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 715.1, -52.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 718.3, -51.2 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 718.3, -51.2 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 721.3, -50.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 721.3, -50.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 724.2, -49.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 724.2, -49.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 726.8, -48.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 726.8, -48.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 729.1, -48.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 729.1, -48.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 752.3, -44.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 752.3, -44.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 774.6, -40.3 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 774.6, -40.3 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 795.8, -36.7 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 795.8, -36.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 816.1, -33.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 816.1, -33.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 835.4, -29.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 835.4, -29.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 853.8, -26.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 853.8, -26.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 871.2, -23.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 871.2, -23.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 911.5, 2.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 911.5, 2.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 940.3, 21.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 940.3, 21.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 957.6, 32.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 957.6, 32.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 963.3, 36.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 963.3, 36.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 828.3, 1.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 828.3, 1.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 693.2, -32.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 693.2, -32.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 558.2, -67 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 558.2, -67 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 221.7, 998.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 221.7, 998.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -420.4, -204.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -420.4, -204.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 101, -151.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 101, -151.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -404.4, -204.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -404.4, -204.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -133, 180.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -133, 180.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -313.2, 473.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -313.2, 473.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 88.2, -148.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 88.2, -148.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -194.8, 144.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -194.8, 144.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -157.5, 159.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -157.5, 159.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -97.9, 230.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -97.9, 230.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -66.1, 257.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -66.1, 257.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -54.6, 270.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -54.6, 270.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -53, 264.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -53, 264.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -61.1, 276.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -61.1, 276.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -59.8, 269 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -59.8, 269 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -49, 280.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -49, 280.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -48, 272.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -48, 272.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -56.8, 283.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -56.8, 283.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -56.2, 275.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -56.2, 275.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -46.1, 285.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -46.1, 285.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -45.9, 276.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -45.9, 276.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 110.3, 46.8 + a, 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 110.3, 46.8 + a, 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 128.7, 69.3 + a, 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 128.7, 69.3 + a, 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 144.3, 88.4 + a, 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 144.3, 88.4 + a, 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 157.3, 104.2 + a, 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 157.3, 104.2 + a, 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 167.4, 116.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 167.4, 116.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 168.3, 117.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 168.3, 117.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 169.1, 118.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 169.1, 118.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 169.9, 119.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 169.9, 119.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 170.7, 120.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 170.7, 120.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 171.5, 121.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 171.5, 121.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 172.2, 122.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 172.2, 122.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 172.9, 123.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 172.9, 123.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 173.6, 124.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 173.6, 124.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 174.2, 124.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 174.2, 124.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 174.8, 125.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 174.8, 125.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 175.4, 126.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 175.4, 126.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 176, 127.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 176, 127.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 176.5, 127.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 176.5, 127.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 177.1, 128.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 177.1, 128.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 177.5, 129 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 177.5, 129 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 178, 129.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 178, 129.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 178.4, 130.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 178.4, 130.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 178.9, 130.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 178.9, 130.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 179.2, 131 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 179.2, 131 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 179.6, 131.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 179.6, 131.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 179.9, 131.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 179.9, 131.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 180.2, 132.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 180.2, 132.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 180.5, 132.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 180.5, 132.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 180.8, 132.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 180.8, 132.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 181, 133.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 181, 133.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 58.3, -115.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 58.3, -115.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 85, -306.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 85, -306.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 44.4, -25.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 44.4, -25.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 70.9, -210.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 70.9, -210.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 50.3, -107.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 50.3, -107.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 92.9, -314.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 92.9, -314.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 52.4, -17.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 52.4, -17.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 62.9, -218.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 62.9, -218.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 58.3, -115.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 58.3, -115.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 57.7, -53.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 57.7, -53.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 81.2, -14.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 81.2, -14.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 88.6, 55.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 88.6, 55.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 80.1, 94.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 80.1, 94.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 95.5, 156.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 95.5, 156.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 87.3, 166.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 87.3, 166.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 103.1, 151.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 103.1, 151.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 102.9, 169.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 102.9, 169.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 86.7, 154.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 86.7, 154.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 94.5, 164.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 94.5, 164.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 90.3, 169.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 90.3, 169.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 98.2, 162.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 98.2, 162.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 98.1, 171.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 98.1, 171.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 89.9, 164.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 89.9, 164.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 93.8, 169.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 93.8, 169.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 93.7, 169.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 93.7, 169.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 93.7, 170.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 93.7, 170.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 93.6, 171 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 93.6, 171 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 93.5, 171.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 93.5, 171.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 93.5, 171.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 93.5, 171.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 93.5, 171.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 93.5, 171.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 93.6, 171.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 93.6, 171.7 , 0 );

setScaleKey( spep_2 + 0, 1, 8, 8 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 8.27, 8.27 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 8.27, 8.27 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 8.82, 8.82 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 8.82, 8.82 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 8.96, 8.96 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 8.96, 8.96 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 8.97, 8.97 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 8.97, 8.97 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 8.54, 8.54 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 8.54, 8.54 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 8.24, 8.24 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 8.24, 8.24 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 8.06, 8.06 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 8.06, 8.06 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 79.67, 79.67 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 79.67, 79.67 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 66.39, 66.39 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 53.11, 53.11 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 92.95, 92.95 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 92.95, 92.95 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 73.03, 73.03 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 73.03, 73.03 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 42.31, 42.31 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 42.31, 42.31 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 31.5, 31.5 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 31.5, 31.5 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 30.96, 30.96 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 30.96, 30.96 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 30.47, 30.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 30.47, 30.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 30.03, 30.03 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 30.03, 30.03 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 29.64, 29.64 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 29.64, 29.64 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 29.3, 29.3 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 29.3, 29.3 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 29.01, 29.01 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 29.01, 29.01 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 28.77, 28.77 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 28.77, 28.77 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 28.58, 28.58 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 28.58, 28.58 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 28.45, 28.45 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 28.45, 28.45 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 28.36, 28.36 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 28.36, 28.36 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.33 + b, 3.33 + b );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.33 + b, 3.33 + b );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 14.28 + b, 14.28 + b );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 7.14 + b, 7.14 + b );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 11.9 + b, 11.9 + b );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 9.52 + b, 9.52 + b );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 8.42 + b, 8.42 + b );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 8.42 + b, 8.42 + b );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 7.33 + b, 7.33 + b );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 7.33 + b, 7.33 + b );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 6.23 + b, 6.23 + b );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 6.23 + b, 6.23 + b );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 5.14 + b, 5.14 + b );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 5.14 + b, 5.14 + b );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.04 + b, 4.04 + b );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.04 + b, 4.04 + b );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.02 + b, 4.02 + b );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.02 + b, 4.02 + b );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.99 + b, 3.99 + b );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.99 + b, 3.99 + b );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.97 + b, 3.97 + b );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.97 + b, 3.97 + b );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.95 + b, 3.95 + b );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 3.95 + b, 3.95 + b );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.93 + b, 3.93 + b );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.93 + b, 3.93 + b );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.91 + b, 3.91 + b );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.91 + b, 3.91 + b );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 3.9 + b, 3.9 + b );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 3.9 + b, 3.9 + b );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.88 + b, 3.88 + b );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.88 + b, 3.88 + b );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.87 + b, 3.87 + b );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.87 + b, 3.87 + b );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.86 + b, 3.86 + b );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.86 + b, 3.86 + b );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 3.85 + b, 3.85 + b );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.85 + b, 3.85 + b );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 3.84 + b, 3.84 + b );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 3.84 + b, 3.84 + b );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 3.83 + b, 3.83 + b );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.83 + b, 3.83 + b );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.82 + b, 3.82 + b );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.82 + b, 3.82 + b );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -39 );

--敵の動き2
setDisp( spep_2 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 230 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 230 + OFFSET_X, 1, -515.3, -950.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -515.3, -950.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -398.4, -714.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -398.4, -714.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -269.4, -485 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -269.4, -485 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -152.6, -249.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -152.6, -249.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -23.8, -7.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -23.8, -7.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -27.7, -5.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -27.7, -5.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -19.3, -9.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -19.3, -9.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -23.3, -7.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -23.3, -7.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -15.2, 0.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -15.2, 0.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -19.1, 2.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -19.1, 2.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -10.7, -1.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -10.7, -1.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -14.7, 0.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -14.7, 0.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -6.6, 8.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -6.6, 8.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -10.5, 10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -10.5, 10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -2.2, 6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -2.2, 6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -6.2, 8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -6.2, 8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 2, 16 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 2, 16 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -1.9, 17.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -1.9, 17.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 6.4, 13.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 6.4, 13.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 2.4, 15.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 2.4, 15.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 10.6, 23.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 10.6, 23.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 6.6, 25.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 6.6, 25.8 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.64, 3.64 );

setRotateKey( spep_2 + 230 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -35 );

--敵の動き3
setDisp( spep_2 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 352 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 374 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 434 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 352 + OFFSET_X, 1, -727.5, -36.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -727.5, -36.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -717.6, -36.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -717.6, -36.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -688.1, -38.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -688.1, -38.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -638.8, -42.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -638.8, -42.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -569.9, -46.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -569.9, -46.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -481.2, -52.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -481.2, -52.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -372.8, -59.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -372.8, -59.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -244.8, -68.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -244.8, -68.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -227.7, -69.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -227.7, -69.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -210.3, -70.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -210.3, -70.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -192.7, -71.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -192.7, -71.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 643.8, 177.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 643.8, 177.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 454.6, 182.3 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 454.6, 182.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 418.2, 260.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 418.2, 260.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 199.9, 182.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 199.9, 182.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 162.1, 216.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 162.1, 216.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 86.8, 182.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 86.8, 182.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 74.2, 172.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 74.2, 172.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 648.8, 182.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 648.8, 182.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 454.6, 172.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 454.6, 172.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 408.2, 270.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 408.2, 270.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 199.9, 172.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 199.9, 172.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 172.1, 226.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 172.1, 226.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 86.8, 172.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 86.8, 172.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 64.2, 182.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 64.2, 182.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 648.8, 172.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 648.8, 172.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 464.6, 182.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 464.6, 182.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 270.4, 172.3 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 270.4, 172.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 391, 270.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 391, 270.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 258.4, 172.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 258.4, 172.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 309.4, 226.5 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 309.4, 226.5 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 229.4, 172.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 229.4, 172.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 221.1, 182.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 221.1, 182.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 223.6, 172.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 223.6, 172.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 216.8, 182.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 216.8, 182.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 200.9, 172.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 200.9, 172.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 195.7, 182.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 195.7, 182.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 201.3, 172.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 201.3, 172.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 197.6, 182.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 197.6, 182.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 184.8, 172.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 184.8, 172.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 182.7, 182.2 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 182.7, 182.2 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 330.4, 185.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 330.4, 185.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 221.8, 158.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 221.8, 158.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 124, 123.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 124, 123.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 24.7, 99.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 24.7, 99.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -75.6, 65.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -75.6, 65.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -124, 40.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -124, 40.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -173.2, 16.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -173.2, 16.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -210.5, -14.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -210.5, -14.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -248, -35.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -248, -35.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -285.7, -66.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -285.7, -66.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -280.3, -64.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -280.3, -64.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -277.4, -65.6 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -277.4, -65.6 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -274.7, -66.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -274.7, -66.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -272.2, -67.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -272.2, -67.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -269.8, -68.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -269.8, -68.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -267.5, -68.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -267.5, -68.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -265.3, -69.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -265.3, -69.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -263.2, -70.3 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -263.2, -70.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -261.3, -70.9 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -261.3, -70.9 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -259.6, -71.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -259.6, -71.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -257.9, -72 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -257.9, -72 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -256.4, -72.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -256.4, -72.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -255, -73 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -255, -73 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -253.7, -73.4 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -253.7, -73.4 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -252.6, -73.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -252.6, -73.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -251.6, -74.1 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -251.6, -74.1 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -250.7, -74.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -250.7, -74.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -249.9, -74.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -249.9, -74.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -249.3, -74.9 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -249.3, -74.9 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -248.8, -75.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -248.8, -75.1 , 0 );

setScaleKey( spep_2 + 352 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 352 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE010 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 129 );

--イナヅマ
SE011 = playSeVer2( spep_2 + 6, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 40 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

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
--腹パン
SE012 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 50, 1190, "", 0, 0, 0, -1);

--踏み込む
SE015 = playSeVer2( spep_2 + 116, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 122, 1192, "",spep_2 + 152, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 122, SE016, 158 );
SE017 = playSeVer2( spep_2 + 122, 1007, "", 0, 0, 0, -1);

--アッパー
SE018 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 150, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 150, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 202, 1183, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1121, "",spep_2 + 348, 0, 90, -1);
setSeVolumeByWorkId( spep_2 + 202, SE022, 56 );
setPitch( spep_2 + 202, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
SE023 = playSeVer2( spep_2 + 206, 8, "", 0, 0, 0, -1);

--向かっていく
SE024 = playSeVer2( spep_2 + 270, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 270, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 274, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE026, 155 );

--振りかぶる
SE027 = playSeVer2( spep_2 + 306, 1116, "",spep_2 + 350, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 322, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE028,  167 );

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 352, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 364, 1187, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 364, 1024, "",spep_2 + 466, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 364, SE031, 79 );
SE032 = playSeVer2( spep_2 + 368, 1123, "", 0, 0, 0, -1);

--敵とんでいく
SE033 = playSeVer2( spep_2 + 418, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 418, 1121, "",spep_2 + 546, 0, 52, -1);

--連続爆発
SE035 = playSeVer2( spep_2 + 482, 1061, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 508, 1061, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 508, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE038, 89 );
SE039 = playSeVer2( spep_2 + 528, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 528, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE040, 84 );
SE041 = playSeVer2( spep_2 + 554, 1061, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 554, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 496 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 612f -4

end
