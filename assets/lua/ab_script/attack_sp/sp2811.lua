--4030340:LR_超サイヤ人3孫悟空(GT)(黄金大猿)_超必殺技：超火炎砲
--sp_effect_a1_00466
--sp2811

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163491; --大猿着地 ef_001
SP_01b = 163492; --大猿着地 ef_001b
SP_02  = 163495; --火炎放射〜爆発 ef_002
SP_02b = 163496; --火炎放射〜爆発 ef_002b

--エフェクト(敵)
SP_01r  = 163493; --大猿着地 ef_001r
SP_01br = 163494; --大猿着地 ef_001br
SP_02r  = 163497; --火炎放射〜爆発 ef_002r
SP_02br = 163498; --火炎放射〜爆発 ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

adjustAttackerLabel( 0, 205);

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 120;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 142;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --地響き
        SE008 = playSeVer2( spep_2 + 142, 1044, "",spep_2 + 158, 0, 26, -1);
        setSeVolumeByWorkId( spep_2 + 142, SE008, 75 );

        --炎吐く
        SE010 = playSeVer2( spep_2 + 142 + 3, 9, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 142 + 3, SE010, 94 );
        setTimeStretch( SE010, 1.24, 30, 4 );
        SE010_02 = playSeVer2( spep_2 + 142 + 3, 1027, "", 0, 0, 0, -1);
        SE011 = playSeVer2( spep_2 + 142 + 3, 1258, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 142 + 3, SE011, 89 );
        setTimeStretch( SE011, 1.25, 30, 4 );
        SE012 = playSeVer2( spep_2 + 142 + 3, 1226, "",spep_2 + 448, 0, 82, -1);
        setSeVolumeByWorkId( spep_2 + 142 + 3, SE012, 78 );
        SE013 = playSeVer2( spep_2 + 142 + 3, 1268, "",spep_2 + 402, 0, 68, -1);
        setSeVolumeByWorkId( spep_2 + 142 + 3, SE013, 195 );

    else end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 大猿着地
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 大猿着地(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 大猿着地(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 176.6, 282.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 176.6, 281.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 176.6, 281.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 176.6, 279.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 176.6, 279.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 176.6, 278.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 176.6, 278.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 176.6, 277.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 176.6, 277.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 176.6, 276.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 176.6, 276.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 176.6, 274.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 176.6, 274.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 176.6, 273.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 176.6, 273.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 176.6, 272.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 176.6, 272.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 176.6, 271.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 176.6, 271.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 176.6, 269.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 176.6, 269.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 176.6, 268.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 176.6, 268.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 176.6, 267.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 176.6, 267.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 176.6, 255.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 176.6, 255.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 164.6, 194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 164.6, 194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 136.6, 284.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 136.6, 284.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 136.6, 223.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 136.6, 223.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 172.6, 266.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 172.6, 266.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 128.6, 221.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 128.6, 221.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 124.6, 247.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 124.6, 247.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 156.6, 214.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 156.6, 214.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 156.7, 257.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 156.7, 257.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 164.6, 220.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 164.6, 220.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 148.6, 246.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 148.6, 246.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 140.6, 221.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 140.6, 221.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 136.7, 244.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 136.7, 244.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 132.6, 211.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 132.6, 211.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 148.6, 245.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 148.6, 245.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 140.6, 212.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 140.6, 212.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 152.6, 227.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 152.6, 227.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 152.6, 214.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 152.6, 214.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 164.6, 224.8 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 164.6, 224.8 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 156.6, 215.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 156.6, 215.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 148.6, 238.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 148.6, 238.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 148.6, 229 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 148.6, 229 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 148.6, 227.8 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 148.6, 227.8 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 150.6, 234.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 150.6, 234.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 148.6, 221.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 148.6, 221.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 164.6, 240.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 164.6, 240.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 166.6, 228.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 166.6, 228.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 180.7, 230.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 180.7, 230.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 180.7, 231.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 180.7, 231.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 180.7, 233.6 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--着地
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 48, 0, 22, -1);
SE002 = playSeVer2( spep_0 + 22, 1395, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1168, "",spep_0 + 140, 0, 82, -1);
SE004 = playSeVer2( spep_0 + 22, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 67 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 120f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 火炎放射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 446;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 火炎放射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 火炎放射〜爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 26;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 446 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 516.3, -70.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 516.3, -70.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 366.2, -55.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 366.2, -55.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 307.3, -50.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 307.3, -50.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 266.3, -46.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 266.3, -46.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 234.5, -43.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 234.5, -43.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 208.5, -40.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 208.5, -40.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 201.2, -35 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 201.2, -35 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 184.2, -32.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 184.2, -32.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 172.7, -30.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 172.7, -30.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 166.4, -27.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 166.4, -27.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 165, -24.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 165, -24.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 168.5, -20.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 168.5, -20.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 176.6, -16 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 176.6, -16 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 189.3, -11.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 189.3, -11.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 206.6, -6.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 206.6, -6.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 228.4, -0.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 228.4, -0.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 254.8, 5.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 254.8, 5.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 248.3, 6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 248.3, 6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 242.4, 6.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 242.4, 6.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 236.7, 7.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 236.7, 7.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 231.3, 8.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 231.3, 8.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 226.1, 32.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 226.1, 32.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 221, 13.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 221, 13.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 216.2, 62.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 216.2, 62.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 211.3, 30.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 211.3, 30.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 206.6, 71.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 206.6, 71.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 201.9, 39.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 201.9, 39.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 225.1, 68.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 225.1, 68.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 180.3, 29.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 180.3, 29.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 203.3, 25.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 203.3, 25.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 150.2, 74.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 150.2, 74.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 177, 43.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 177, 43.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 229.1, 95.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 229.1, 95.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 189.1, 55.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 189.1, 55.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 157, 87.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 157, 87.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 157, 35.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 157, 35.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 129, 59 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 129, 59 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 153, 35 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 153, 35 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 161, 43 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 161, 43 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 162, 44 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 162, 44 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 151, 47.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 151, 47.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 149, 31 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 149, 31 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 160, 42 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 160, 42 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 149, 46 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 149, 46 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 141, 54 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 141, 54 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 164.9, 39.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 164.9, 39.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 172.9, 32.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 172.9, 32.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 176.9, 15.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 176.9, 15.3 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--咆哮
SE007 = playSeVer2( spep_2 + 30, 1066, "",spep_2 + 144, 0, 40, -1);

--地響き
SE008 = playSeVer2( spep_2 + 28, 1044, "",spep_2 + 158, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 28, SE008, 75 );

--腕上げる
SE009 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);

--炎吐く
SE010 = playSeVer2( spep_2 + 130, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE010, 94 );
setTimeStretch( SE010, 1.24, 30, 4 );
SE010_02 = playSeVer2( spep_2 + 130, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 130, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE011, 89 );
setTimeStretch( SE011, 1.25, 30, 4 );
SE012 = playSeVer2( spep_2 + 130, 1226, "",spep_2 + 448, 0, 82, -1);
setSeVolumeByWorkId( spep_2 + 130, SE012, 78 );
SE013 = playSeVer2( spep_2 + 136, 1268, "",spep_2 + 402, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 136, SE013, 195 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE010_02, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--炎飛んでいく
SE014 = playSeVer2( spep_2 + 196, 1145, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 246, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 446f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 大猿着地
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 大猿着地(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 大猿着地(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 176.6, 282.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 176.6, 281.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 176.6, 281.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 176.6, 279.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 176.6, 279.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 176.6, 278.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 176.6, 278.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 176.6, 277.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 176.6, 277.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 176.6, 276.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 176.6, 276.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 176.6, 274.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 176.6, 274.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 176.6, 273.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 176.6, 273.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 176.6, 272.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 176.6, 272.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 176.6, 271.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 176.6, 271.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 176.6, 269.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 176.6, 269.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 176.6, 268.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 176.6, 268.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 176.6, 267.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 176.6, 267.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 176.6, 255.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 176.6, 255.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 164.6, 194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 164.6, 194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 136.6, 284.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 136.6, 284.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 136.6, 223.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 136.6, 223.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 172.6, 266.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 172.6, 266.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 128.6, 221.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 128.6, 221.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 124.6, 247.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 124.6, 247.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 156.6, 214.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 156.6, 214.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 156.7, 257.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 156.7, 257.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 164.6, 220.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 164.6, 220.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 148.6, 246.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 148.6, 246.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 140.6, 221.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 140.6, 221.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 136.7, 244.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 136.7, 244.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 132.6, 211.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 132.6, 211.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 148.6, 245.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 148.6, 245.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 140.6, 212.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 140.6, 212.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 152.6, 227.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 152.6, 227.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 152.6, 214.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 152.6, 214.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 164.6, 224.8 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 164.6, 224.8 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 156.6, 215.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 156.6, 215.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 148.6, 238.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 148.6, 238.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 148.6, 229 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 148.6, 229 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 148.6, 227.8 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 148.6, 227.8 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 150.6, 234.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 150.6, 234.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 148.6, 221.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 148.6, 221.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 164.6, 240.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 164.6, 240.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 166.6, 228.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 166.6, 228.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 180.7, 228.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 180.7, 230.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 180.7, 230.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 180.7, 231.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 180.7, 231.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 180.7, 233.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 180.7, 233.6 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--着地
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 48, 0, 22, -1);
SE002 = playSeVer2( spep_0 + 22, 1395, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1168, "",spep_0 + 140, 0, 82, -1);
SE004 = playSeVer2( spep_0 + 22, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 67 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 120f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 火炎放射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 446;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 火炎放射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 火炎放射〜爆発(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 26;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
]]
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 446 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 516.3, -70.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 516.3, -70.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 366.2, -55.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 366.2, -55.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 307.3, -50.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 307.3, -50.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 266.3, -46.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 266.3, -46.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 234.5, -43.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 234.5, -43.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 208.5, -40.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 208.5, -40.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 201.2, -35 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 201.2, -35 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 184.2, -32.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 184.2, -32.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 172.7, -30.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 172.7, -30.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 166.4, -27.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 166.4, -27.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 165, -24.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 165, -24.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 168.5, -20.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 168.5, -20.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 176.6, -16 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 176.6, -16 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 189.3, -11.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 189.3, -11.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 206.6, -6.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 206.6, -6.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 228.4, -0.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 228.4, -0.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 254.8, 5.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 254.8, 5.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 248.3, 6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 248.3, 6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 242.4, 6.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 242.4, 6.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 236.7, 7.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 236.7, 7.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 231.3, 8.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 231.3, 8.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 226.1, 32.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 226.1, 32.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 221, 13.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 221, 13.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 216.2, 62.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 216.2, 62.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 211.3, 30.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 211.3, 30.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 206.6, 71.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 206.6, 71.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 201.9, 39.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 201.9, 39.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 225.1, 68.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 225.1, 68.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 180.3, 29.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 180.3, 29.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 203.3, 25.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 203.3, 25.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 150.2, 74.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 150.2, 74.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 177, 43.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 177, 43.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 229.1, 95.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 229.1, 95.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 189.1, 55.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 189.1, 55.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 157, 87.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 157, 87.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 157, 35.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 157, 35.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 129, 59 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 129, 59 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 153, 35 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 153, 35 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 161, 43 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 161, 43 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 162, 44 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 162, 44 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 151, 47.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 151, 47.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 149, 31 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 149, 31 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 160, 42 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 160, 42 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 149, 46 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 149, 46 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 141, 54 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 141, 54 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 164.9, 39.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 164.9, 39.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 172.9, 32.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 172.9, 32.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 176.9, 15.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 176.9, 15.3 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--咆哮
SE007 = playSeVer2( spep_2 + 30, 1066, "",spep_2 + 144, 0, 40, -1);

--地響き
SE008 = playSeVer2( spep_2 + 28, 1044, "",spep_2 + 158, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 28, SE008, 75 );

--腕上げる
SE009 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);

--炎吐く
SE010 = playSeVer2( spep_2 + 130, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE010, 94 );
setTimeStretch( SE010, 1.24, 30, 4 );
SE010_02 = playSeVer2( spep_2 + 130, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 130, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE011, 89 );
setTimeStretch( SE011, 1.25, 30, 4 );
SE012 = playSeVer2( spep_2 + 130, 1226, "",spep_2 + 448, 0, 82, -1);
setSeVolumeByWorkId( spep_2 + 130, SE012, 78 );
SE013 = playSeVer2( spep_2 + 136, 1268, "",spep_2 + 402, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 136, SE013, 195 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE010_02, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--炎飛んでいく
SE014 = playSeVer2( spep_2 + 196, 1145, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 246, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 446f


end