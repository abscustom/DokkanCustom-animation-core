--1033060:LR_魔人ベジータ+超サイヤ人2孫悟空(天使)_必殺技：ビッグ・バン・アタック
--sp_effect_a3_00125
--sp3002

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164410;  -- 開幕ビックバンアタック構える ef_001
SP_02 = 164411;  -- 発射→敵に着弾→爆発 ef_002


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
        spep_0 = 0;
        spep_1 = spep_0 + 478;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 106);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 106, SP_01, spep_2 + 106 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --気弾ヒット
SE036 = playSeVer2( spep_2 + 109, 1024, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 109, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 109, SE032, 42 );
SE033 = playSeVer2( spep_2 + 109, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 109, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 109, SE034, 71 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕ビックバンアタック構える
-------------------------------------------------
MAX_FRAME_0 = 478;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕ビックバンアタック構える(ef_001)
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
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[]
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

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--電気走る音
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--オーラ
SE003 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );
SE004 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 63 );

--うであげる
SE005 = playSeVer2( spep_0 + 38, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 71 );

--オーラ
SE006 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE006, 63 );
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE008, 63 );
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 63 );
SE010 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE010, 63 );
SE011 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE011, 63 );
SE012 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE012, 63 );

--電気走る音
SE013 = playSeVer2( spep_0 + 198, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 50 );

--オーラ
SE014 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 63 );
SE015 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 63 );
SE016 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE016, 63 );
SE017 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE017, 63 );
SE018 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE018, 63 );
SE019 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE019, 63 );

--電気走る音
SE020 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 496, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 332, SE020, 50 );

--気弾溜め
SE021 = playSeVer2( spep_0 + 380, 1505, "",spep_0 + 494, 10, 12, -1);
setStartTimeMs( SE021,  700 );
setPitch( spep_0 + 380, SE021, 900 );
setTimeStretch( SE021, 1.6, 30, 4 );

--手かざす
SE022 = playSeVer2( spep_0 + 340, 1189, "", 0, 0, 0, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE023, 63 );

--手かざす
SE024 = playSeVer2( spep_0 + 352, 1013, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE025, 63 );

--気弾溜め
SE026 = playSeVer2( spep_0 + 382, 1154, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE026, 158 );
setPitch( spep_0 + 382, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );
SE027 = playSeVer2( spep_0 + 384, 1506, "",spep_0 + 496, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 71 );
setPitch( spep_0 + 384, SE027, 900 );
setTimeStretch( SE027, 1.6, 30, 4 );

--オーラ
SE028 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE028, 63 );
SE029 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE029, 63 );
SE030 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE030, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --478F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射→敵に着弾→爆発
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射→敵に着弾→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 100 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 76 + OFFSET_X, 1, 164.1, -54.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 164.1, -54.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 149.6, -55.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 149.6, -55.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 135.1, -57.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 135.1, -57.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 120.6, -58.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 120.6, -58.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 106.1, -59.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 106.1, -59.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 164.1, -54.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 164.1, -54.6 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -3.5 );

--敵の動き2

setDisp( spep_2 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 106 + OFFSET_X, 1, 314.7, -73.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 314.7, -73.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 325.5, -83.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 325.5, -83.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 336.4, -78.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 336.4, -78.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 347.2, -78.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 347.2, -78.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 358.1, -78.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 358.1, -78.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 368.9, -79 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 368.9, -79 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 379.8, -79.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 379.8, -79.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 390.6, -79.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 390.6, -79.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 401.5, -79.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 401.5, -79.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 412.3, -79.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 412.3, -79.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 423.2, -80.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 423.2, -80.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 434, -80.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 434, -80.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 444.9, -80.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 444.9, -80.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 455.7, -80.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 455.7, -80.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 466.6, -81 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 466.6, -81 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 471.4, -84.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 471.4, -84.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 241.3, 497.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 241.3, 497.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 232.3, 473.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 232.3, 473.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 223.4, 449.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 223.4, 449.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 214.5, 425.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 214.5, 425.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 205.6, 401.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 205.6, 401.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 196.6, 377.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 196.6, 377.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 187.7, 353.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 187.7, 353.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 178.8, 329.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 178.8, 329.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 169.9, 305.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 169.9, 305.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 160.9, 281.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 160.9, 281.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 152, 257.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 152, 257.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 143.1, 233.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 143.1, 233.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 134.2, 209 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 134.2, 209 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 125.3, 184.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 125.3, 184.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 116.6, 143.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 116.6, 143.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 107.9, 102.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 107.9, 102.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 99.3, 61.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 99.3, 61.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 47.6, -17.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 47.6, -17.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 38.5, -60 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 38.5, -60 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 24.1, -87.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 24.1, -87.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 20.2, -97.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 20.2, -97.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 16.9, -108 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 16.9, -108 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 13.6, -118.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 13.6, -118.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 13.4, -113.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 13.4, -113.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 12, -117.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 12, -117.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 11.9, -121.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 11.9, -121.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 11, -127.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 11, -127.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 10.1, -132.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 10.1, -132.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 11.3, -126.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 11.3, -126.1 , 0 );

setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 106 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 156 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾発射
SE032 = playSeVer2( spep_2 + 6, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE032, 42 );
SE033 = playSeVer2( spep_2 + 6, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE034, 71 );
SE035 = playSeVer2( spep_2 + 20, 1193, "",spep_2 + 214, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
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

--気弾ヒット
SE036 = playSeVer2( spep_2 + 96, 1024, "", 0, 0, 0, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 156, 1202, "",spep_2 + 218, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 156, SE037, 207 );

--爆発
SE038 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 244, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 208); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 332F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕ビックバンアタック構える
-------------------------------------------------
MAX_FRAME_0 = 478;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕ビックバンアタック構える(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[]
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--電気走る音
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--オーラ
SE003 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );
SE004 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 63 );

--うであげる
SE005 = playSeVer2( spep_0 + 38, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 71 );

--オーラ
SE006 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE006, 63 );
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE008, 63 );
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 63 );
SE010 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE010, 63 );
SE011 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE011, 63 );
SE012 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE012, 63 );

--電気走る音
SE013 = playSeVer2( spep_0 + 198, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 50 );

--オーラ
SE014 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 63 );
SE015 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 63 );
SE016 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE016, 63 );
SE017 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE017, 63 );
SE018 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE018, 63 );
SE019 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE019, 63 );

--電気走る音
SE020 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 496, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 332, SE020, 50 );

--気弾溜め
SE021 = playSeVer2( spep_0 + 380, 1505, "",spep_0 + 494, 10, 12, -1);
setStartTimeMs( SE021,  700 );
setPitch( spep_0 + 380, SE021, 900 );
setTimeStretch( SE021, 1.6, 30, 4 );

--手かざす
SE022 = playSeVer2( spep_0 + 340, 1189, "", 0, 0, 0, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE023, 63 );

--手かざす
SE024 = playSeVer2( spep_0 + 352, 1013, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE025, 63 );

--気弾溜め
SE026 = playSeVer2( spep_0 + 382, 1154, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE026, 158 );
setPitch( spep_0 + 382, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );
SE027 = playSeVer2( spep_0 + 384, 1506, "",spep_0 + 496, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 71 );
setPitch( spep_0 + 384, SE027, 900 );
setTimeStretch( SE027, 1.6, 30, 4 );

--オーラ
SE028 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE028, 63 );
SE029 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE029, 63 );
SE030 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE030, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --478F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射→敵に着弾→爆発
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射→敵に着弾→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 100 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1,17 );

setMoveKey( spep_2 + 76 + OFFSET_X, 1, -164.1, -54.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -164.1, -54.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -149.6, -55.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -149.6, -55.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -135.1, -57.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -135.1, -57.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -120.6, -58.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -120.6, -58.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -106.1, -59.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -106.1, -59.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -164.1, -54.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -164.1, -54.6 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 3.5 );

--敵の動き2

setDisp( spep_2 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 106 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 106 + OFFSET_X, 1, -314.7, -73.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -314.7, -73.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -325.5, -83.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -325.5, -83.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -336.4, -78.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -336.4, -78.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -347.2, -78.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -347.2, -78.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -358.1, -78.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -358.1, -78.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -368.9, -79 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -368.9, -79 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -379.8, -79.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -379.8, -79.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -390.6, -79.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -390.6, -79.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -401.5, -79.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -401.5, -79.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -412.3, -79.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -412.3, -79.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -423.2, -80.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -423.2, -80.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -434, -80.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -434, -80.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -444.9, -80.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -444.9, -80.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -455.7, -80.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -455.7, -80.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -466.6, -81 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -466.6, -81 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -471.4, -84.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -471.4, -84.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -241.3, 497.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -241.3, 497.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -232.3, 473.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -232.3, 473.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -223.4, 449.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -223.4, 449.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -214.5, 425.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -214.5, 425.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -205.6, 401.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -205.6, 401.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -196.6, 377.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -196.6, 377.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -187.7, 353.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -187.7, 353.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -178.8, 329.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -178.8, 329.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -169.9, 305.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -169.9, 305.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -160.9, 281.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -160.9, 281.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -152, 257.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -152, 257.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -143.1, 233.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -143.1, 233.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -134.2, 209 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -134.2, 209 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -125.3, 184.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -125.3, 184.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -116.6, 143.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -116.6, 143.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -107.9, 102.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -107.9, 102.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -99.3, 61.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -99.3, 61.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -47.6, -17.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -47.6, -17.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -38.5, -60 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -38.5, -60 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -24.1, -87.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -24.1, -87.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -20.2, -97.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -20.2, -97.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -16.9, -108 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -16.9, -108 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -13.6, -118.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -13.6, -118.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -13.4, -113.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -13.4, -113.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -12, -117.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -12, -117.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -11.9, -121.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -11.9, -121.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -11, -127.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -11, -127.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -10.1, -132.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -10.1, -132.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -11.3, -126.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -11.3, -126.1 , 0 );

setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 106 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 156 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 5, 0.98, 0.88, 0.41, 0.4 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾発射
SE032 = playSeVer2( spep_2 + 6, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE032, 42 );
SE033 = playSeVer2( spep_2 + 6, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE034, 71 );
SE035 = playSeVer2( spep_2 + 20, 1193, "",spep_2 + 214, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
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

--気弾ヒット
SE036 = playSeVer2( spep_2 + 96, 1024, "", 0, 0, 0, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 156, 1202, "",spep_2 + 218, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 156, SE037, 207 );

--爆発
SE038 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 244, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 208); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 332F

end
