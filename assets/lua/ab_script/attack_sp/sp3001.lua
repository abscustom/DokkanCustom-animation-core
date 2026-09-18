--1032980:UR_ヤコン_必殺技：ダークスクラッチ
--sp_effect_a6_00025
--sp3001

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164373; --登場シーン 前面 ef_001
SP_02  = 164374; --攻撃シーン 前面 ef_002

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
        spep_1 = spep_0 + 294;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 64);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 64, SP_01, spep_2 + 64 - 1 + 2, 1);

        -- ** 敵キャラクター ** --
        --敵の動き
        setMoveKey( spep_2 + 64, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

        -- ** 音 ** --
        --斬りつける
        SE016 = playSeVer2( spep_2 + 64 + 3, 1031, "", 0, 0, 0, -1);
        SE017 = playSeVer2( spep_2 + 64 + 3, 1238, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 64 + 3, SE017, 158 );
        SE018 = playSeVer2( spep_2 + 64 + 3, 1032, "", 0, 0, 0, -1);
        SE019 = playSeVer2( spep_2 + 64 + 3, 1153, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 64 + 3, SE019, 75 );

    else 

        setupMovie(0 , SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場シーン 前面
-------------------------------------------------
MAX_FRAME_0 = 294;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場シーン 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 82;

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
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, 382, -448.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 382, -446.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 382, -446.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 382, -444.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 382, -444.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 382, -441.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 382, -441.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 382, -439.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 382, -439.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 382, -437.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 382, -437.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 382, -435 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 382, -435 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 382, -432.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 382, -432.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 382, -430.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 382, -430.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 382, -428.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 382, -428.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 382, -425.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 382, -425.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 382, -423.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 382, -423.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 382, -421.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 382, -421.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 382, -418.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 382, -418.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 382, -416.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 382, -416.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 382, -414.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 382, -414.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 382, -412 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 382, -412 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 382, -409.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 382, -409.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 382, -407.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 382, -407.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 382, -405.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 382, -405.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 382, -402.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 382, -402.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 382, -400.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 382, -400.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 382, -398.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 382, -398.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 382, -396 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 382, -396 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 382, -393.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 382, -393.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 382, -391.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 382, -391.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 382, -389.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 382, -389.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 382, -386.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 382, -386.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 398.4, -409.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 398.4, -409.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 447.5, -477.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 447.5, -477.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 529.3, -590.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 529.3, -590.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 643.9, -749.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 643.9, -749.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 791.2, -952.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 791.2, -952.9 , 0 );

setScaleKey( spep_0 + 0, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 8.92, 8.92 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 54 + OFFSET_X, 1, 3, 0, 0, 0, 0.34 );
setBlendColor( spep_0 + 68 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--出現する
SE001 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 230, 0, 70, -1);
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 94, 0, 24, -1);

--集中線
SE003 = playSeVer2( spep_0 + 70, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 76 );
SE004 = playSeVer2( spep_0 + 70, 1051, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE004, 79 );

--爪出る１
SE006 = playSeVer2( spep_0 + 180, 1334, "",spep_0 + 278, 8, 48, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 130 );
setStartTimeMs( SE006,  1067 );
setPitch( spep_0 + 180, SE006, 600 );
setTimeStretch( SE006, 1.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 184, 1511, "",spep_0 + 296, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 51 );
setPitch( spep_0 + 186, SE009, -700 );
setTimeStretch( SE009, 0.53, 30, 4 );
SE007 = playSeVer2( spep_0 + 186, 1222, "", 0, 4, 0, -1);
setStartTimeMs( SE007,  567 );

--爪出る２
SE008 = playSeVer2( spep_0 + 238, 1334, "",spep_0 + 318, 8, 14, -1);
setSeVolumeByWorkId( spep_0 + 238, SE008, 141 );
setStartTimeMs( SE008,  1067 );
setPitch( spep_0 + 238, SE008, 600 );
setTimeStretch( SE008, 1.4, 30, 4 );
SE011 = playSeVer2( spep_0 + 242, 1511, "",spep_0 + 316, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 242, SE011, 58 );
setPitch( spep_0 + 242, SE011, -700 );
setTimeStretch( SE011, 0.53, 30, 4 );
SE010 = playSeVer2( spep_0 + 244, 1222, "",spep_0 + 316, 4, 12, -1);
setStartTimeMs( SE010,  567 );


-- ** 次の準備 ** --
entryFade(MAX_FRAME_0 - 2 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_1 = spep_0 + MAX_FRAME_0; -- 294f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE013 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 33 );
setTimeStretch( SE015, 1.24, 30, 4 );


-------------------------------------------------
-- 攻撃シーン 前面
-------------------------------------------------
MAX_FRAME_2 = 146;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃シーン 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2 -1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -3, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 17 );

setMoveKey( spep_2 + 0, 1, 268.7, -441.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 271.2, -444.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 271.2, -444.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 273.7, -447.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 273.7, -447.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 276.2, -450.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 276.2, -450.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 278.8, -453.3 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 278.8, -453.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 281.3, -456.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 281.3, -456.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 283.9, -459.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 283.9, -459.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 286.5, -462 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 286.5, -462 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 289.1, -464.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 289.1, -464.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 291.7, -467.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 291.7, -467.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 294.4, -470.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 294.4, -470.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 297, -473.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 297, -473.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 299.7, -476.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 299.7, -476.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 302.4, -479.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 302.4, -479.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 305.1, -482.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 305.1, -482.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 307.8, -485.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 307.8, -485.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 310.6, -488.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 310.6, -488.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 313.3, -491.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 313.3, -491.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 316.1, -494.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 316.1, -494.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 318.9, -497.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 318.9, -497.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 321.7, -500.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 321.7, -500.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 324.5, -503.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 324.5, -503.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 327.4, -506.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 327.4, -506.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 330.2, -509.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 330.2, -509.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 332.1, -510.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 332.1, -510.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 334, -511.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 334, -511.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 308.8, -472.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 308.8, -472.7 , 0 );

setScaleKey( spep_2 + 0, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.46, 6.46 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.46, 6.46 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 6.71, 6.71 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 6.71, 6.71 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 7.07, 7.07 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 7.07, 7.07 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 7.1, 7.1 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 7.1, 7.1 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 6.61, 6.61 );

setRotateKey( spep_2 + 0, 1, 2.5 );
setRotateKey( spep_2 + 2 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 5 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 0, 1, 3, 0, 0, 0, 0.33 );
setBlendColor( spep_2 + 64 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 167.3, -173.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 167.3, -173.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 410, -24.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 410, -24.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 491.4, -56.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 491.4, -56.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 600, -27.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 600, -27.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 615.1, 37.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 615.1, 37.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 689.2, -1.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 689.2, -1.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 753.3, 54.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 753.3, 54.9 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.06, 2.06 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -11.7 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--斬りつける
SE016 = playSeVer2( spep_2 + 52, 1031, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 52, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE017, 158 );
SE018 = playSeVer2( spep_2 + 56, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE019, 75 );

--敵吹き飛ぶ
SE020 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 126f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 ); --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

--[[
-- 背景差し替えがある場合のみ
finish_1f = entryEffectLife( spep_N + 0, SP_03 , spep_N + 108, 0x100, -1, 0, 0, 0 ); --集中線_差し替え(ef_003)
setEffMoveKey( spep_N + 0, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 0, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
]]

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 ); --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14, 906, 32, 0x100, -1, 0, 0, 0 ); --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14, 1657, 98, 0x80, -1, 0, 0, 0 ); --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14, 10005, 98, 0x100, -1, 0, 3.9, 316.1 ); --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_N + 112 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場シーン 前面
-------------------------------------------------
MAX_FRAME_0 = 294;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場シーン 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 82;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, -382, -448.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -382, -446.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -382, -446.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -382, -444.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -382, -444.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -382, -441.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -382, -441.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -382, -439.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -382, -439.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -382, -437.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -382, -437.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -382, -435 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -382, -435 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -382, -432.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -382, -432.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -382, -430.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -382, -430.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -382, -428.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -382, -428.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -382, -425.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -382, -425.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -382, -423.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -382, -423.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -382, -421.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -382, -421.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -382, -418.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -382, -418.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -382, -416.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -382, -416.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -382, -414.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -382, -414.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -382, -412 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -382, -412 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -382, -409.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -382, -409.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -382, -407.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -382, -407.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -382, -405.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -382, -405.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -382, -402.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -382, -402.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -382, -400.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -382, -400.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -382, -398.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -382, -398.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -382, -396 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -382, -396 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -382, -393.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -382, -393.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -382, -391.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -382, -391.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -382, -389.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -382, -389.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -382, -386.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -382, -386.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -398.4, -409.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -398.4, -409.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -447.5, -477.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -447.5, -477.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -529.3, -590.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -529.3, -590.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -643.9, -749.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -643.9, -749.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -791.2, -952.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -791.2, -952.9 , 0 );

setScaleKey( spep_0 + 0, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 8.92, 8.92 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 54 + OFFSET_X, 1, 3, 0, 0, 0, 0.34 );
setBlendColor( spep_0 + 68 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--出現する
SE001 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 230, 0, 70, -1);
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 94, 0, 24, -1);

--集中線
SE003 = playSeVer2( spep_0 + 70, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 76 );
SE004 = playSeVer2( spep_0 + 70, 1051, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE004, 79 );

--爪出る１
SE006 = playSeVer2( spep_0 + 180, 1334, "",spep_0 + 278, 8, 48, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 130 );
setStartTimeMs( SE006,  1067 );
setPitch( spep_0 + 180, SE006, 600 );
setTimeStretch( SE006, 1.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 184, 1511, "",spep_0 + 296, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 51 );
setPitch( spep_0 + 186, SE009, -700 );
setTimeStretch( SE009, 0.53, 30, 4 );
SE007 = playSeVer2( spep_0 + 186, 1222, "", 0, 4, 0, -1);
setStartTimeMs( SE007,  567 );

--爪出る２
SE008 = playSeVer2( spep_0 + 238, 1334, "",spep_0 + 318, 8, 14, -1);
setSeVolumeByWorkId( spep_0 + 238, SE008, 141 );
setStartTimeMs( SE008,  1067 );
setPitch( spep_0 + 238, SE008, 600 );
setTimeStretch( SE008, 1.4, 30, 4 );
SE011 = playSeVer2( spep_0 + 242, 1511, "",spep_0 + 316, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 242, SE011, 58 );
setPitch( spep_0 + 242, SE011, -700 );
setTimeStretch( SE011, 0.53, 30, 4 );
SE010 = playSeVer2( spep_0 + 244, 1222, "",spep_0 + 316, 4, 12, -1);
setStartTimeMs( SE010,  567 );


-- ** 次の準備 ** --
entryFade(MAX_FRAME_0 - 2 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_1 = spep_0 + MAX_FRAME_0; -- 294f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE013 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 33 );
setTimeStretch( SE015, 1.24, 30, 4 );


-------------------------------------------------
-- 攻撃シーン 前面
-------------------------------------------------
MAX_FRAME_2 = 146;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃シーン 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2 -1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -3, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, -268.7, -441.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -271.2, -444.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -271.2, -444.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -273.7, -447.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -273.7, -447.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -276.2, -450.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -276.2, -450.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -278.8, -453.3 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -278.8, -453.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -281.3, -456.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -281.3, -456.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -283.9, -459.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -283.9, -459.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -286.5, -462 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -286.5, -462 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -289.1, -464.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -289.1, -464.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -291.7, -467.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -291.7, -467.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -294.4, -470.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -294.4, -470.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -297, -473.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -297, -473.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -299.7, -476.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -299.7, -476.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -302.4, -479.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -302.4, -479.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -305.1, -482.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -305.1, -482.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -307.8, -485.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -307.8, -485.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -310.6, -488.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -310.6, -488.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -313.3, -491.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -313.3, -491.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -316.1, -494.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -316.1, -494.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -318.9, -497.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -318.9, -497.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -321.7, -500.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -321.7, -500.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -324.5, -503.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -324.5, -503.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -327.4, -506.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -327.4, -506.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -330.2, -509.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -330.2, -509.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -332.1, -510.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -332.1, -510.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -334, -511.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -334, -511.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -308.8, -472.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -308.8, -472.7 , 0 );

setScaleKey( spep_2 + 0, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.46, 6.46 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.46, 6.46 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 6.71, 6.71 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 6.71, 6.71 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 7.07, 7.07 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 7.07, 7.07 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 7.1, 7.1 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 7.1, 7.1 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 6.61, 6.61 );

setRotateKey( spep_2 + 0, 1, -2.5 );
setRotateKey( spep_2 + 2 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 5 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 0, 1, 3, 0, 0, 0, 0.33 );
setBlendColor( spep_2 + 64 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, -167.3, -173.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -167.3, -173.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -410, -24.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -410, -24.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -491.4, -56.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -491.4, -56.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -600, -27.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -600, -27.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -615.1, 37.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -615.1, 37.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -689.2, -1.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -689.2, -1.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -753.3, 54.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -753.3, 54.9 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.06, 2.06 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 11.7 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--斬りつける
SE016 = playSeVer2( spep_2 + 52, 1031, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 52, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE017, 158 );
SE018 = playSeVer2( spep_2 + 56, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE019, 75 );

--敵吹き飛ぶ
SE020 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 126f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 ); --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, -1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, -1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

--[[
-- 背景差し替えがある場合のみ
finish_1f = entryEffectLife( spep_N + 0, SP_03 , spep_N + 108, 0x100, -1, 0, 0, 0 ); --集中線_差し替え(ef_003)
setEffMoveKey( spep_N + 0, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 0, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
]]

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 ); --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14, 906, 32, 0x100, -1, 0, 0, 0 ); --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, -1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, -1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14, 1657, 98, 0x80, -1, 0, 0, 0 ); --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14, 10005, 98, 0x100, -1, 0, 3.9, 316.1 ); --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_N + 112 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


end