-- 1028010: UR_超サイヤ人ブロリー_必殺技(↓簡易版)：ギガンティックインパクト
-- sp_effect_b1_00273
-- sp2683

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001_a = 162629;  -- 簡易版：冒頭から登場 ef_001s_a
SP_001_b = 162631;  -- 簡易版：冒頭から登場 ef_001s_b
SP_002_a = 162618;  -- 簡易版：蓮撃からパンチフィニッシュ ef_002s_a
SP_002_b = 162620;  -- 簡易版：蓮撃からパンチフィニッシュ ef_002s_b

-- 敵側
SP_001_a_r = 162630;  -- 簡易版：敵用：冒頭から登場 ef_001s_a_r
SP_001_b_r = 162632;  -- 簡易版：敵用：冒頭から登場 ef_001s_b_r
SP_002_a_r = 162619;  -- 簡易版：敵用：蓮撃からパンチフィニッシュ ef_002s_a_r
SP_002_b_r = 162621;  -- 簡易版：敵用：蓮撃からパンチフィニッシュ ef_002s_b_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 簡易版：冒頭から登場 ef_001s_a
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001_a, 0x100, -1, 0, 0, 0 );    -- 簡易版：冒頭から登場 ef_001s_a
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

SP_01b = entryEffect( spep_0 + 0, SP_001_b, 0x80, -1, 0, 0, 0 );    -- 簡易版：冒頭から登場 ef_001s_b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 0, -186.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 0, -186.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 0, -171.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 0, -171.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -5.7, -164.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -5.7, -164.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -4.7, -139.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -4.7, -139.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -5.7, -149.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -5.7, -149.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -4.7, -139.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -4.7, -139.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -5.7, -149.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -5.7, -149.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 5.7, -139.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 0, -142.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 0, -142.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -7.6, -142.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -7.6, -142.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 0.5, -148.8 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 0.5, -148.8 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 3.4, -133.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 3.4, -133.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 0.2, -132 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 0.2, -132 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 0.2, -145.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 0.2, -145.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 3, -144.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 3, -144.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 2.7, -125.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 2.7, -125.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 13.8, -127.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 13.8, -127.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 0.4, -129.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 0.4, -129.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 4.1, -143.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 4.1, -143.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -0.4, -146.8 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -0.4, -146.8 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -2.2, -142.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -2.2, -142.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -1.5, -142.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -1.5, -142.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 3, -148.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 3, -148.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -2.8, -139.3 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -2.8, -139.3 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -3.8, -142.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -3.8, -142.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -9.5, -138.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -9.5, -138.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 7.6, -151.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 7.6, -151.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 1.9, -142.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 1.9, -142.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 4.8, -144.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 4.8, -144.1 , 0 );

Sc_tmp = 0.2;

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.6 + Sc_tmp, 1.6 + Sc_tmp );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.6 + Sc_tmp, 1.6 + Sc_tmp );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.4 + Sc_tmp, 1.4 + Sc_tmp );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.4 + Sc_tmp, 1.4 + Sc_tmp );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1 + Sc_tmp, 1 + Sc_tmp );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1 + Sc_tmp, 1 + Sc_tmp );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--崖から飛び上がる
SE001 = playSeVer2( spep_0 + 6, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 141 );
setPitch( spep_0 + 8, SE002, 400 );
setTimeStretch( SE002, 1.27, 30, 4 );
SE003 = playSeVer2( spep_0 + 8, 1181, "",spep_0 + 118, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 84 );
SE004 = playSeVer2( spep_0 + 8, 1176, "",spep_0 + 120, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 72 );
setPitch( spep_0 + 8, SE004, -800 );
setTimeStretch( SE004, 0.47, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 簡易版：蓮撃からパンチフィニッシュ ef_002s_a
------------------------------------------------------
MAX_FRAME_2 = 566;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002_a, 0x100, -1, 0, 0, 0 );    -- 簡易版：蓮撃からパンチフィニッシュ ef_002s_a
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002_b, 0x80, -1, 0, 0, 0 );    -- 簡易版：蓮撃からパンチフィニッシュ ef_002s_b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 114 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 117.9, 31.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 117.9, 31.1 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.4, 1.4 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 340 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 182 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 210 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 334 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 69.8, 36.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 69.8, 36.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 92, 53 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 92, 53 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 70.7, 37 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 70.7, 37 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 131.8, 91.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 131.8, 91.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 131.3, 84.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 131.3, 84.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 150.2, 94.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 150.2, 94.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 179.5, 115.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 179.5, 115.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 252.8, 106.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 252.8, 106.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 242.9, 86.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 242.9, 86.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 198.2, 51.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 198.2, 51.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 189.2, 39.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 189.2, 39.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -58.5, -36.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -58.5, -36.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -86.8, -27.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -86.8, -27.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -28.3, -49.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -28.3, -49.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -60.2, -64.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -60.2, -64.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -46.5, -27.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -46.5, -27.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -25.6, -27.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -25.6, -27.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -44.9, -33.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -44.9, -33.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -31.6, -45.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -31.6, -45.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -22.5, -15.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -22.5, -15.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -12, -8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -12, -8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -0.2, -5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -0.2, -5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 247.5, -12.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 247.5, -12.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 271.4, -65.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 271.4, -65.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 217.3, -84.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 217.3, -84.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 235.1, -76.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 235.1, -76.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 268.7, -70.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 268.7, -70.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 258.1, -74.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 258.1, -74.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 262.6, -72.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 262.6, -72.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 259, -74.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 259, -74.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -201.9, -70.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -201.9, -70.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -315.3, -119.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -315.3, -119.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -402.1, -141.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -402.1, -141.9 , 0 );

Sc_tmp2 = 0.2;

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 2.5 );

-- 敵の動き3
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 566 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 426 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 448 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 456 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 478 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 494 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, -372.2, -183.6 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -372.2, -183.6 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -210.7, -183.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -210.7, -183.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -54.4, -310.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -54.4, -310.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -23.3, -406.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -23.3, -406.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 20.9, -510 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 20.9, -510 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 28.6, -512.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 28.6, -512.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 33.8, -515.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 33.8, -515.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 298.5, -141.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 298.5, -141.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 187, -125.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 187, -125.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 153.3, -108.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 153.3, -108.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 137.7, -103.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 137.7, -103.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -94.9, -14.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -94.9, -14.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -158.6, 74.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -158.6, 74.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -100, 15.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -100, 15.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -139.1, 33.8 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -139.1, 33.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -102.6, 31.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -102.6, 31.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -39, 69.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -39, 69.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -75.4, 60.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -75.4, 60.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -102.6, 54.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -102.6, 54.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -129.5, 47.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -129.5, 47.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -156.7, 44.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -156.7, 44.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -155.9, 44.8 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -155.9, 44.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -155.1, 44.8 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -155.1, 44.8 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -154.3, 44.8 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -154.3, 44.8 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -153.5, 44.7 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -153.5, 44.7 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -152.7, 44.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -152.7, 44.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -151.9, 44.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -151.9, 44.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -151.1, 44.7 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -151.1, 44.7 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -150.4, 44.7 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -150.4, 44.7 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -149.6, 44.7 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -149.6, 44.7 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -148.8, 44.7 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -148.8, 44.7 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -148, 44.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -148, 44.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -147.2, 44.7 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -147.2, 44.7 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -146.4, 44.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -146.4, 44.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -145.6, 44.7 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -145.6, 44.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -144.8, 44.7 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -144.8, 44.7 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -144.1, 44.7 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -144.1, 44.7 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -143.3, 44.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -143.3, 44.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -142.5, 44.7 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -142.5, 44.7 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -141.7, 44.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -141.7, 44.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -140.9, 44.7 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -140.9, 44.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -140.1, 44.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -140.1, 44.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -139.3, 44.7 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -139.3, 44.7 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -138.5, 44.7 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -138.5, 44.7 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -137.8, 44.7 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -137.8, 44.7 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -137, 44.7 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -137, 44.7 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -136.2, 44.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -136.2, 44.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -135.4, 44.7 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -135.4, 44.7 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -134.6, 44.7 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -134.6, 44.7 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -133.8, 44.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -133.8, 44.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -133, 44.7 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -133, 44.7 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -132.2, 44.7 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -132.2, 44.7 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -131.5, 44.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -131.5, 44.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -130.7, 44.7 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -130.7, 44.7 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -129.9, 44.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -129.9, 44.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -129.1, 44.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -129.1, 44.7 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, 48.4 );

-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 8, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_2 + 36;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--画面遷移２
SE010 = playSeVer2( spep_2 + 44, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE010,  333 );

--空力音
SE011 = playSeVer2( spep_2 + 38, 1278, "",spep_2 + 168, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 38, SE011, 77 );

--気弾溜め
SE012 = playSeVer2( spep_2 + 80, 1441, "",spep_2 + 132, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 80, SE012, 150 );
SE013 = playSeVer2( spep_2 + 80, 1440, "",spep_2 + 132, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 80, SE013, 150 );
setPitch( spep_2 + 80, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--敵ヒット
SE014 = playSeVer2( spep_2 + 108, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 112, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE016 = playSeVer2( spep_2 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE016, 79 );

--追いかける
SE017 = playSeVer2( spep_2 + 156, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 156, 1277, "", 0, 0, 0, -1);

--遠景連続打撃
SE019 = playSeVer2( spep_2 + 172, 1414, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 172, 1110, "",spep_2 + 198, 0, 6, -1);
SE021 = playSeVer2( spep_2 + 182, 1414, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 182, 1110, "",spep_2 + 212, 0, 8, -1);
SE023 = playSeVer2( spep_2 + 194, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 194, 1110, "",spep_2 + 222, 0, 8, -1);
SE025 = playSeVer2( spep_2 + 206, 1110, "", 0, 0, 0, -1);

--連続パンチ１
SE026 = playSeVer2( spep_2 + 224, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE026, 136 );
SE027 = playSeVer2( spep_2 + 228, 1414, "",spep_2 + 248, 0, 4, -1);
SE028 = playSeVer2( spep_2 + 228, 1359, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 232, 1187, "",spep_2 + 292, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 232, SE029, 69 );

--連続パンチ２
SE030 = playSeVer2( spep_2 + 254, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 258, 1414, "",spep_2 + 276, 0, 2, -1);
SE032 = playSeVer2( spep_2 + 262, 1187, "",spep_2 + 310, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 262, SE032, 82 );

--連続パンチ３
SE033 = playSeVer2( spep_2 + 286, 1414, "",spep_2 + 306, 0, 4, -1);
SE034 = playSeVer2( spep_2 + 286, 1359, "",spep_2 + 316, 0, 4, -1);
SE035 = playSeVer2( spep_2 + 290, 1187, "",spep_2 + 356, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 290, SE035, 81 );

--連続パンチ４
SE036 = playSeVer2( spep_2 + 316, 1003, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 320, 1359, "",spep_2 + 352, 0, 6, -1);
SE038 = playSeVer2( spep_2 + 322, 1414, "",spep_2 + 340, 0, 2, -1);
SE039 = playSeVer2( spep_2 + 326, 1187, "",spep_2 + 392, 0, 44, -1);

--顔アップ
SE040 = playSeVer2( spep_2 + 338, 1232, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 338, 8, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 352, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE042,  67 );

--振りかぶる
SE043 = playSeVer2( spep_2 + 394, 1188, "",spep_2 + 460, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 394, SE043, 85 );
setStartTimeMs( SE043,  200 );
SE044 = playSeVer2( spep_2 + 390, 1116, "",spep_2 + 440, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 396, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE046 = playSeVer2( spep_2 + 438, 1359, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 442, 1187, "",spep_2 + 576, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 442, SE047, 80 );
SE048 = playSeVer2( spep_2 + 442, 1120, "",spep_2 + 558, 0, 26, -1);

--敵飛んでいく
SE049 = playSeVer2( spep_2 + 448, 1183, "",spep_2 + 512, 0, 14, -1);
SE050 = playSeVer2( spep_2 + 454, 1277, "",spep_2 + 574, 0, 8, -1);

--岩激突
SE051 = playSeVer2( spep_2 + 486, 1159, "",spep_2 + 574, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 486, SE051, 65 );

-- ** おわり ** --
dealDamage( spep_2 + 460 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 566

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 簡易版：敵用：冒頭から登場 ef_001s_a_r
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001_a_r, 0x100, -1, 0, 0, 0 );    -- 簡易版：敵用：冒頭から登場 ef_001s_a_r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

SP_01b = entryEffect( spep_0 + 0, SP_001_b_r, 0x80, -1, 0, 0, 0 );    -- 簡易版：敵用：冒頭から登場 ef_001s_b_r
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 0, -201.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 0, -186.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 0, -186.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 0, -171.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 0, -171.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 5.7, -164.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 5.7, -164.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 4.7, -139.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 4.7, -139.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 5.7, -149.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 5.7, -149.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 4.7, -139.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 4.7, -139.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 0, -146 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 5.7, -149.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 5.7, -149.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -5.7, -139.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 0, -142.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 0, -142.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 7.6, -142.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 7.6, -142.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -0.5, -148.8 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -0.5, -148.8 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -3.4, -133.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -3.4, -133.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -0.2, -132 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -0.2, -132 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -0.2, -145.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -0.2, -145.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -3, -144.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -3, -144.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -2.7, -125.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -2.7, -125.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -13.8, -127.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -13.8, -127.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -0.4, -129.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -0.4, -129.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -4.1, -143.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -4.1, -143.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 0.4, -146.8 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 0.4, -146.8 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 2.2, -142.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 2.2, -142.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 1.5, -142.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 1.5, -142.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -3, -148.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -3, -148.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 2.8, -139.3 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 2.8, -139.3 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 3.8, -142.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 3.8, -142.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 9.5, -138.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 9.5, -138.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -7.6, -151.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -7.6, -151.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -1.9, -142.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -1.9, -142.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -4.8, -144.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -4.8, -144.1 , 0 );

Sc_tmp = 0.2;

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.8 + Sc_tmp, 1.8 + Sc_tmp );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.6 + Sc_tmp, 1.6 + Sc_tmp );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.6 + Sc_tmp, 1.6 + Sc_tmp );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.4 + Sc_tmp, 1.4 + Sc_tmp );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.4 + Sc_tmp, 1.4 + Sc_tmp );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1 + Sc_tmp, 1 + Sc_tmp );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1 + Sc_tmp, 1 + Sc_tmp );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--崖から飛び上がる
SE001 = playSeVer2( spep_0 + 6, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 141 );
setPitch( spep_0 + 8, SE002, 400 );
setTimeStretch( SE002, 1.27, 30, 4 );
SE003 = playSeVer2( spep_0 + 8, 1181, "",spep_0 + 118, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 84 );
SE004 = playSeVer2( spep_0 + 8, 1176, "",spep_0 + 120, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 72 );
setPitch( spep_0 + 8, SE004, -800 );
setTimeStretch( SE004, 0.47, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 簡易版：敵用：蓮撃からパンチフィニッシュ ef_002s_a_r
------------------------------------------------------
MAX_FRAME_2 = 566;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002_a_r, 0x100, -1, 0, 0, 0 );    -- 簡易版：敵用：蓮撃からパンチフィニッシュ ef_002s_a_r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002_b_r, 0x80, -1, 0, 0, 0 );    -- 簡易版：敵用：蓮撃からパンチフィニッシュ ef_002s_b_r
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 114 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 117.9, 31.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 117.9, 31.1 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.4, 1.4 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 340 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 182 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 210 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 334 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -69.8, 36.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -69.8, 36.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -92, 53 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -92, 53 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -70.7, 37 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -70.7, 37 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -131.8, 91.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -131.8, 91.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -131.3, 84.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -131.3, 84.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -150.2, 94.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -150.2, 94.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -179.5, 115.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -179.5, 115.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -252.8, 106.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -252.8, 106.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -242.9, 86.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -242.9, 86.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -198.2, 51.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -198.2, 51.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -189.2, 39.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -189.2, 39.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 58.5, -36.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 58.5, -36.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 86.8, -27.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 86.8, -27.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 28.3, -49.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 28.3, -49.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 60.2, -64.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 60.2, -64.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 46.5, -27.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 46.5, -27.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 25.6, -27.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 25.6, -27.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 44.9, -33.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 44.9, -33.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 31.6, -45.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 31.6, -45.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 22.5, -15.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 22.5, -15.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 12, -8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 12, -8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 0.2, -5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 0.2, -5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -247.5, -12.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -247.5, -12.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -271.4, -65.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -271.4, -65.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -217.3, -84.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -217.3, -84.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -235.1, -76.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -235.1, -76.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -268.7, -70.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -268.7, -70.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -258.1, -74.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -258.1, -74.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -262.6, -72.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -262.6, -72.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -259, -74.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -259, -74.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 201.9, -70.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 201.9, -70.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 315.3, -119.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 315.3, -119.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 402.1, -141.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 402.1, -141.9 , 0 );

Sc_tmp2 = 0.2;

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 47 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 47 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -2.5 );

-- 敵の動き3
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 566 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 426 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 448 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 456 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 478 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 494 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, 372.2, -183.6 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 372.2, -183.6 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 210.7, -183.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 210.7, -183.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 54.4, -310.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 54.4, -310.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 23.3, -406.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 23.3, -406.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -20.9, -510 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -20.9, -510 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -28.6, -512.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -28.6, -512.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -33.8, -515.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -33.8, -515.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -298.5, -141.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -298.5, -141.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -187, -125.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -187, -125.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -153.3, -108.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -153.3, -108.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -137.7, -103.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -137.7, -103.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 94.9, -14.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 94.9, -14.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 158.6, 74.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 158.6, 74.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 100, 15.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 100, 15.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 139.1, 33.8 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 139.1, 33.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 102.6, 31.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 102.6, 31.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 39, 69.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 39, 69.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 75.4, 60.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 75.4, 60.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 102.6, 54.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 102.6, 54.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 129.5, 47.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 129.5, 47.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 156.7, 44.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 156.7, 44.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 155.9, 44.8 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 155.9, 44.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 155.1, 44.8 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 155.1, 44.8 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 154.3, 44.8 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 154.3, 44.8 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 153.5, 44.7 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 153.5, 44.7 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 152.7, 44.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 152.7, 44.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 151.9, 44.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 151.9, 44.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 151.1, 44.7 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 151.1, 44.7 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 150.4, 44.7 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 150.4, 44.7 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 149.6, 44.7 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 149.6, 44.7 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 148.8, 44.7 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 148.8, 44.7 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 148, 44.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 148, 44.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 147.2, 44.7 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 147.2, 44.7 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 146.4, 44.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 146.4, 44.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 145.6, 44.7 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 145.6, 44.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 144.8, 44.7 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 144.8, 44.7 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 144.1, 44.7 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 144.1, 44.7 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 143.3, 44.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 143.3, 44.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 142.5, 44.7 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 142.5, 44.7 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 141.7, 44.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 141.7, 44.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 140.9, 44.7 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 140.9, 44.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 140.1, 44.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 140.1, 44.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 139.3, 44.7 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 139.3, 44.7 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 138.5, 44.7 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 138.5, 44.7 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 137.8, 44.7 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 137.8, 44.7 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 137, 44.7 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 137, 44.7 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 136.2, 44.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 136.2, 44.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 135.4, 44.7 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 135.4, 44.7 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 134.6, 44.7 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 134.6, 44.7 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 133.8, 44.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 133.8, 44.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 133, 44.7 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 133, 44.7 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 132.2, 44.7 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 132.2, 44.7 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 131.5, 44.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 131.5, 44.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 130.7, 44.7 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 130.7, 44.7 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 129.9, 44.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 129.9, 44.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 129.1, 44.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 129.1, 44.7 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -48.4 );

-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 8, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_2 + 36;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--画面遷移２
SE010 = playSeVer2( spep_2 + 44, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE010,  333 );

--空力音
SE011 = playSeVer2( spep_2 + 38, 1278, "",spep_2 + 168, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 38, SE011, 77 );

--気弾溜め
SE012 = playSeVer2( spep_2 + 80, 1441, "",spep_2 + 132, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 80, SE012, 150 );
SE013 = playSeVer2( spep_2 + 80, 1440, "",spep_2 + 132, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 80, SE013, 150 );
setPitch( spep_2 + 80, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--敵ヒット
SE014 = playSeVer2( spep_2 + 108, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 112, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE016 = playSeVer2( spep_2 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE016, 79 );

--追いかける
SE017 = playSeVer2( spep_2 + 156, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 156, 1277, "", 0, 0, 0, -1);

--遠景連続打撃
SE019 = playSeVer2( spep_2 + 172, 1414, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 172, 1110, "",spep_2 + 198, 0, 6, -1);
SE021 = playSeVer2( spep_2 + 182, 1414, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 182, 1110, "",spep_2 + 212, 0, 8, -1);
SE023 = playSeVer2( spep_2 + 194, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 194, 1110, "",spep_2 + 222, 0, 8, -1);
SE025 = playSeVer2( spep_2 + 206, 1110, "", 0, 0, 0, -1);

--連続パンチ１
SE026 = playSeVer2( spep_2 + 224, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE026, 136 );
SE027 = playSeVer2( spep_2 + 228, 1414, "",spep_2 + 248, 0, 4, -1);
SE028 = playSeVer2( spep_2 + 228, 1359, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 232, 1187, "",spep_2 + 292, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 232, SE029, 69 );

--連続パンチ２
SE030 = playSeVer2( spep_2 + 254, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 258, 1414, "",spep_2 + 276, 0, 2, -1);
SE032 = playSeVer2( spep_2 + 262, 1187, "",spep_2 + 310, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 262, SE032, 82 );

--連続パンチ３
SE033 = playSeVer2( spep_2 + 286, 1414, "",spep_2 + 306, 0, 4, -1);
SE034 = playSeVer2( spep_2 + 286, 1359, "",spep_2 + 316, 0, 4, -1);
SE035 = playSeVer2( spep_2 + 290, 1187, "",spep_2 + 356, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 290, SE035, 81 );

--連続パンチ４
SE036 = playSeVer2( spep_2 + 316, 1003, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 320, 1359, "",spep_2 + 352, 0, 6, -1);
SE038 = playSeVer2( spep_2 + 322, 1414, "",spep_2 + 340, 0, 2, -1);
SE039 = playSeVer2( spep_2 + 326, 1187, "",spep_2 + 392, 0, 44, -1);

--顔アップ
SE040 = playSeVer2( spep_2 + 338, 1232, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 338, 8, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 352, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE042,  67 );

--振りかぶる
SE043 = playSeVer2( spep_2 + 394, 1188, "",spep_2 + 460, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 394, SE043, 85 );
setStartTimeMs( SE043,  200 );
SE044 = playSeVer2( spep_2 + 390, 1116, "",spep_2 + 440, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 396, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE046 = playSeVer2( spep_2 + 438, 1359, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 442, 1187, "",spep_2 + 576, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 442, SE047, 80 );
SE048 = playSeVer2( spep_2 + 442, 1120, "",spep_2 + 558, 0, 26, -1);

--敵飛んでいく
SE049 = playSeVer2( spep_2 + 448, 1183, "",spep_2 + 512, 0, 14, -1);
SE050 = playSeVer2( spep_2 + 454, 1277, "",spep_2 + 574, 0, 8, -1);

--岩激突
SE051 = playSeVer2( spep_2 + 486, 1159, "",spep_2 + 574, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 486, SE051, 65 );

-- ** おわり ** --
dealDamage( spep_2 + 460 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 566

end
