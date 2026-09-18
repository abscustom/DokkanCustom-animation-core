--1032690:UR_魔人ドゥー_必殺技：ショットブレス
--sp_effect_a9_00163
--sp2965

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164364; --カード後 ef_002

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 246;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 166);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 166, SP_02, spep_2 + 166 - 1 + 2, 1);

        -- ** 音 ** --
        --気弾発射
        SE020 = playSeVer2( spep_2 + 166 + 3, 1027, "", 0, 0, 0, -1);
        SE021 = playSeVer2( spep_2 + 166 + 3, 1512, "",spep_2 + 302, 0, 86, -1);
        setSeVolumeByWorkId( spep_2 + 166 + 3, SE021, 63 );
        SE022 = playSeVer2( spep_2 + 166 + 3, 1193, "",spep_2 + 300, 0, 36, -1);

    else 

        setupMovie(0 , SP_02, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭 〜 カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 246;


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 90, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 90, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 90, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 310.3, -169.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 310.3, -169.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 310.3, -169.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 310.5, -169.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 310.5, -169.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 310.7, -169.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 310.7, -169.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 310.9, -169.1 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 310.9, -169.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 311.1, -169.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 311.1, -169.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 311.3, -169.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 311.3, -169.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 311.5, -169.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 311.5, -169.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 311.7, -169.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 311.7, -169.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 311.9, -169.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 311.9, -169.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 312.1, -169.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 312.1, -169.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 312.3, -169.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 312.3, -169.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 312.5, -169.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 312.5, -169.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 312.7, -169.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 312.7, -169.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 312.9, -169.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 312.9, -169.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 313.1, -169.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 313.1, -169.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 313.3, -169.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 313.3, -169.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 313.5, -169.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 313.5, -169.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 313.7, -169.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 313.7, -169.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 313.9, -169.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 313.9, -169.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 314.1, -169.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 314.1, -169.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 314.3, -169.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 314.3, -169.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 314.5, -169.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 314.5, -169.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 314.7, -169.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 314.7, -169.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 314.9, -169.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 314.9, -169.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 315.1, -169.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 315.1, -169.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 315.3, -169.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 315.3, -169.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 315.5, -169.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 315.5, -169.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 315.7, -169.1 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 315.7, -169.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 315.9, -169.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 315.9, -169.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 316.1, -169.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 316.1, -169.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 316.3, -169.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 316.3, -169.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 316.5, -169.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 316.5, -169.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 316.7, -169.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 316.7, -169.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 316.9, -169.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 316.9, -169.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 317.1, -169.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 317.1, -169.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 317.3, -169.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 317.3, -169.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 317.5, -169.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 317.5, -169.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 317.7, -169.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 317.7, -169.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 317.9, -169.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 317.9, -169.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 318.1, -169.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 318.1, -169.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 318.3, -169.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 318.3, -169.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 318.5, -169.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 318.5, -169.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 318.7, -169.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 318.7, -169.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 318.9, -169.1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 318.9, -169.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 319.1, -169.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 319.1, -169.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 319.3, -169.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 319.3, -169.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 319.5, -169.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 319.5, -169.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 319.7, -169.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 319.7, -169.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 319.9, -169.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 319.9, -169.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 320.1, -169.1 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 320.1, -169.1 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 320.3, -169.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 320.3, -169.1 , 0 );

setScaleKey( spep_0 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.1, 2.1 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--飛び跳ねる１
SE002 = playSeVer2( spep_0 + 26, 1130, "", 0, 6, 0, -1);
setStartTimeMs( SE002,  200 );
setPitch( spep_0 + 26, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 24, 1201, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 26, 1246, "",spep_0 + 46, 0, 6, -1);

--飛び跳ねる２
SE005 = playSeVer2( spep_0 + 72, 1130, "", 0, 6, 0, -1);
setStartTimeMs( SE005,  200 );
setPitch( spep_0 + 72, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 70, 1201, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1246, "",spep_0 + 92, 0, 6, -1);

--飛び跳ねる３
SE008 = playSeVer2( spep_0 + 132, 1130, "", 0, 4, 0, -1);
setStartTimeMs( SE008,  233 );
setPitch( spep_0 + 132, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 130, 1201, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 130, 1246, "",spep_0 + 152, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 130, 1291, "",spep_0 + 166, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 130, 1116, "",spep_0 + 256, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 130, SE012, 84 );
SE013 = playSeVer2( spep_0 + 134, 1207, "",spep_0 + 260, 12, 12, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 79 );
setStartTimeMs( SE013,  67 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 246f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--頭から煙出す
SE016 = playSeVer2( spep_1 + 84, 1259, "",spep_2 + 114, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 84, SE016, 65 );
SE017 = playSeVer2( spep_1 + 90, 1247, "", 0, 0, 0, -1);
setPitch( spep_1 + 90, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 378;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(eF_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 248 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, 581.4, 786.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 581.4, 786.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 581.4, 796.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 581.4, 796.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 581.4, 788.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 581.4, 788.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 589.4, 796.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 589.4, 796.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 581.4, 788.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 581.4, 788.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 583.4, 790.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 583.4, 790.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 583.4, 782.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 583.4, 782.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 583.4, 794.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 583.4, 794.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 597.3, 780.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 597.3, 780.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 541.3, 836.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 541.3, 836.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 573.3, 794.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 573.3, 794.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 589.2, 862.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 589.2, 862.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 577.1, 840 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 577.1, 840 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 576.6, 841.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 576.6, 841.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 575.8, 836.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 575.8, 836.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 574.5, 837.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 574.5, 837.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 572.4, 832.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 572.4, 832.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 569.6, 828.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 569.6, 828.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 565.8, 822.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 565.8, 822.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 560.9, 815.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 560.9, 815.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 554.9, 807 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 554.9, 807 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 547.4, 796.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 547.4, 796.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 538.5, 783.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 538.5, 783.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 528, 768.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 528, 768.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 515.8, 750.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 515.8, 750.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 501.7, 730.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 501.7, 730.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 485.5, 707.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 485.5, 707.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 467.2, 680.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 467.2, 680.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 446.6, 651.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 446.6, 651.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 423.6, 618 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 423.6, 618 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 398.1, 581.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 398.1, 581.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 369.8, 540.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 369.8, 540.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 338.7, 495.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 338.7, 495.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 304.7, 446.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 304.7, 446.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 267.6, 393.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 267.6, 393.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 227.3, 335.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 227.3, 335.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 183.6, 272.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 183.6, 272.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 136.4, 204.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 136.4, 204.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 85.5, 131.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 85.5, 131.3 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--煙吸収
SE015 = playSeVer2( spep_2 + 44, 1215, "",spep_2 + 164, 24, 52, -1);
setSeVolumeByWorkId( spep_2 + 44, SE015, 73 );
setStartTimeMs( SE015,  1333 );
SE018 = playSeVer2( spep_2 + 48, 1205, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 50 );
setStartTimeMs( SE018,  67 );
setPitch( spep_2 + 48, SE018, -1000 );
setTimeStretch( SE018, 0.33, 30, 4 );
SE019 = playSeVer2( spep_2 + 52, 1334, "",spep_2 + 188, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 52, SE019, 120 );
setPitch( spep_2 + 52, SE019, 300 );
setTimeStretch( SE019, 1.2, 30, 4 );

--気弾発射
SE020 = playSeVer2( spep_2 + 142, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 142, 1512, "",spep_2 + 302, 0, 86, -1);
setSeVolumeByWorkId( spep_2 + 142, SE021, 63 );
SE022 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 300, 0, 36, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 158; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE019, 0);

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
--爆発
SE023 = playSeVer2( spep_2 + 254, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE023, 76 );
SE024 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 254, 1427, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 378F -0F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭 〜 カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 246;


setupMovie(0 , SP_02, 0, 1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -90, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -90, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -90, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -310.3, -169.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -310.3, -169.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -310.3, -169.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -310.5, -169.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -310.5, -169.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -310.7, -169.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -310.7, -169.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -310.9, -169.1 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -310.9, -169.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -311.1, -169.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -311.1, -169.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -311.3, -169.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -311.3, -169.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -311.5, -169.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -311.5, -169.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -311.7, -169.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -311.7, -169.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -311.9, -169.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -311.9, -169.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -312.1, -169.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -312.1, -169.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -312.3, -169.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -312.3, -169.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -312.5, -169.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -312.5, -169.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -312.7, -169.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -312.7, -169.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -312.9, -169.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -312.9, -169.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -313.1, -169.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -313.1, -169.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -313.3, -169.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -313.3, -169.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -313.5, -169.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -313.5, -169.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -313.7, -169.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -313.7, -169.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -313.9, -169.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -313.9, -169.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -314.1, -169.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -314.1, -169.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -314.3, -169.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -314.3, -169.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -314.5, -169.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -314.5, -169.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -314.7, -169.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -314.7, -169.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -314.9, -169.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -314.9, -169.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -315.1, -169.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -315.1, -169.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -315.3, -169.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -315.3, -169.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -315.5, -169.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -315.5, -169.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -315.7, -169.1 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -315.7, -169.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -315.9, -169.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -315.9, -169.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -316.1, -169.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -316.1, -169.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -316.3, -169.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -316.3, -169.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -316.5, -169.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -316.5, -169.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -316.7, -169.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -316.7, -169.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -316.9, -169.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -316.9, -169.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -317.1, -169.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -317.1, -169.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -317.3, -169.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -317.3, -169.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -317.5, -169.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -317.5, -169.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -317.7, -169.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -317.7, -169.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -317.9, -169.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -317.9, -169.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -318.1, -169.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -318.1, -169.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -318.3, -169.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -318.3, -169.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -318.5, -169.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -318.5, -169.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -318.7, -169.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -318.7, -169.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -318.9, -169.1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -318.9, -169.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -319.1, -169.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -319.1, -169.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -319.3, -169.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -319.3, -169.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -319.5, -169.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -319.5, -169.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -319.7, -169.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -319.7, -169.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -319.9, -169.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -319.9, -169.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -320.1, -169.1 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -320.1, -169.1 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -320.3, -169.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -320.3, -169.1 , 0 );

setScaleKey( spep_0 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.1, 2.1 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--飛び跳ねる１
SE002 = playSeVer2( spep_0 + 26, 1130, "", 0, 6, 0, -1);
setStartTimeMs( SE002,  200 );
setPitch( spep_0 + 26, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 24, 1201, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 26, 1246, "",spep_0 + 46, 0, 6, -1);

--飛び跳ねる２
SE005 = playSeVer2( spep_0 + 72, 1130, "", 0, 6, 0, -1);
setStartTimeMs( SE005,  200 );
setPitch( spep_0 + 72, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 70, 1201, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1246, "",spep_0 + 92, 0, 6, -1);

--飛び跳ねる３
SE008 = playSeVer2( spep_0 + 132, 1130, "", 0, 4, 0, -1);
setStartTimeMs( SE008,  233 );
setPitch( spep_0 + 132, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 130, 1201, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 130, 1246, "",spep_0 + 152, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 130, 1291, "",spep_0 + 166, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 130, 1116, "",spep_0 + 256, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 130, SE012, 84 );
SE013 = playSeVer2( spep_0 + 134, 1207, "",spep_0 + 260, 12, 12, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 79 );
setStartTimeMs( SE013,  67 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 246f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--頭から煙出す
SE016 = playSeVer2( spep_1 + 84, 1259, "",spep_2 + 114, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 84, SE016, 65 );
SE017 = playSeVer2( spep_1 + 90, 1247, "", 0, 0, 0, -1);
setPitch( spep_1 + 90, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 378;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(eF_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 248 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, -581.4, 786.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -581.4, 786.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -581.4, 796.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -581.4, 796.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -581.4, 788.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -581.4, 788.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -589.4, 796.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -589.4, 796.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -581.4, 788.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -581.4, 788.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -583.4, 790.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -583.4, 790.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -583.4, 782.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -583.4, 782.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -583.4, 794.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -583.4, 794.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -597.3, 780.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -597.3, 780.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -541.3, 836.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -541.3, 836.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -573.3, 794.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -573.3, 794.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -589.2, 862.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -589.2, 862.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -577.1, 840 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -577.1, 840 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -576.6, 841.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -576.6, 841.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -575.8, 836.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -575.8, 836.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -574.5, 837.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -574.5, 837.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -572.4, 832.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -572.4, 832.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -569.6, 828.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -569.6, 828.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -565.8, 822.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -565.8, 822.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -560.9, 815.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -560.9, 815.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -554.9, 807 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -554.9, 807 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -547.4, 796.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -547.4, 796.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -538.5, 783.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -538.5, 783.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -528, 768.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -528, 768.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -515.8, 750.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -515.8, 750.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -501.7, 730.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -501.7, 730.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -485.5, 707.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -485.5, 707.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -467.2, 680.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -467.2, 680.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -446.6, 651.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -446.6, 651.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -423.6, 618 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -423.6, 618 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -398.1, 581.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -398.1, 581.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -369.8, 540.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -369.8, 540.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -338.7, 495.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -338.7, 495.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -304.7, 446.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -304.7, 446.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -267.6, 393.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -267.6, 393.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -227.3, 335.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -227.3, 335.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -183.6, 272.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -183.6, 272.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -136.4, 204.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -136.4, 204.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -85.5, 131.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -85.5, 131.3 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--煙吸収
SE015 = playSeVer2( spep_2 + 44, 1215, "",spep_2 + 164, 24, 52, -1);
setSeVolumeByWorkId( spep_2 + 44, SE015, 73 );
setStartTimeMs( SE015,  1333 );
SE018 = playSeVer2( spep_2 + 48, 1205, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 50 );
setStartTimeMs( SE018,  67 );
setPitch( spep_2 + 48, SE018, -1000 );
setTimeStretch( SE018, 0.33, 30, 4 );
SE019 = playSeVer2( spep_2 + 52, 1334, "",spep_2 + 188, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 52, SE019, 120 );
setPitch( spep_2 + 52, SE019, 300 );
setTimeStretch( SE019, 1.2, 30, 4 );

--気弾発射
SE020 = playSeVer2( spep_2 + 142, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 142, 1512, "",spep_2 + 302, 0, 86, -1);
setSeVolumeByWorkId( spep_2 + 142, SE021, 63 );
SE022 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 300, 0, 36, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 158; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE019, 0);

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
--爆発
SE023 = playSeVer2( spep_2 + 254, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE023, 76 );
SE024 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 254, 1427, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 378F -0F

end