-- 1028020: LR_超サイヤ人ブロリー_必殺技_ギガンティックインパクト
-- sp_effect_b1_00273
-- sp2655

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001_a = 162610;  -- 冒頭からパンチ ef_001_a
SP_001_b = 162612;  -- 冒頭からパンチ ef_001_b
SP_002_a = 162614;  -- キックからフィニッシュ ef_002_a
SP_002_b = 162616;  -- キックからフィニッシュ ef_002_b

-- 敵側
SP_001_a_r = 162611;  -- 敵用：冒頭からパンチ ef_001_a_r
SP_001_b_r = 162613;  -- 敵用：冒頭からパンチ ef_001_b_r
SP_002_a_r = 162615;  -- 敵用：キックからフィニッシュ ef_002_a_r
SP_002_b_r = 162617;  -- 敵用：キックからフィニッシュ ef_002_b_r

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

   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_2 = 674 + 94;

        skipFrame(0, spep_2 + 208);  -- スキップ先フレーム指定
    else 

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭からパンチ ef_001_a
------------------------------------------------------
MAX_FRAME_0 = 674;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001_a, 0x100, -1, 0, 0, 0 );    -- 冒頭からパンチ ef_001_a
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

SP_01b = entryEffect( spep_0 + 0, SP_001_b, 0x80, -1, 0, 0, 0 );    -- 冒頭からパンチ ef_001_b
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
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- 敵の動き2
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 117.9, 31.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 117.9, 31.1 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 450 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 250 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 308 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 388 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 444 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 69.8, 36.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 69.8, 36.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 92, 53 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 92, 53 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 70.7, 37 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 70.7, 37 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 131.8, 91.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 131.8, 91.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 131.3, 84.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 131.3, 84.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 150.2, 94.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 150.2, 94.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 179.5, 115.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 179.5, 115.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 252.8, 106.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 252.8, 106.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 242.9, 86.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 242.9, 86.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 198.2, 51.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 198.2, 51.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 189.2, 39.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 189.2, 39.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -58.5, -36.5 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -58.5, -36.5 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -86.8, -27.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -86.8, -27.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -28.3, -49.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -28.3, -49.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -60.2, -64.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -60.2, -64.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -46.5, -27.5 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -46.5, -27.5 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -25.6, -27.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -25.6, -27.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -44.9, -33.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -44.9, -33.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -31.6, -45.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -31.6, -45.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -22.5, -15.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -22.5, -15.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -12, -8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -12, -8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -0.2, -5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -0.2, -5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 247.5, -12.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 247.5, -12.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 271.4, -65.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 271.4, -65.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 217.3, -84.3 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 217.3, -84.3 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 235.1, -76.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 235.1, -76.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 268.7, -70.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 268.7, -70.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 258.1, -74.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 258.1, -74.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 262.6, -72.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 262.6, -72.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 259, -74.6 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 259, -74.6 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 260.8, -73.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -201.9, -70.8 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -201.9, -70.8 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -315.3, -119.8 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -315.3, -119.8 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -402.1, -141.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -402.1, -141.9 , 0 );

Sc_tmp2 = 0.2;

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 2.5 );

-- 敵の動き4
setDisp( spep_0 + 536 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 676 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 536 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 558 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 566 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 588 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 604 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 536 + OFFSET_X, 1, -372.2, -183.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -372.2, -183.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -210.7, -183.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -210.7, -183.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -54.4, -310.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -54.4, -310.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -23.3, -406.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -23.3, -406.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 20.9, -510 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 20.9, -510 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 28.6, -512.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 28.6, -512.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 33.8, -515.1 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 33.8, -515.1 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 298.5, -141.8 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 298.5, -141.8 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 187, -125.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 187, -125.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 153.3, -108.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 153.3, -108.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 137.7, -103.8 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 137.7, -103.8 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -94.9, -14.4 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -94.9, -14.4 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -158.6, 74.2 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -158.6, 74.2 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -100, 15.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -100, 15.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -139.1, 33.8 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -139.1, 33.8 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -102.6, 31.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -102.6, 31.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -124.8, 12.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -39, 69.7 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -39, 69.7 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -75.4, 60.7 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -75.4, 60.7 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -102.6, 54.2 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -102.6, 54.2 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -129.5, 47.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -129.5, 47.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -156.7, 44.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -156.7, 44.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -155.9, 44.8 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -155.9, 44.8 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -155.1, 44.8 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -155.1, 44.8 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -154.3, 44.8 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -154.3, 44.8 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -153.5, 44.7 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -153.5, 44.7 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -152.7, 44.7 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -152.7, 44.7 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -151.9, 44.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -151.9, 44.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -151.1, 44.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -151.1, 44.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -150.4, 44.7 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -150.4, 44.7 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -149.6, 44.7 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -149.6, 44.7 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -148.8, 44.7 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -148.8, 44.7 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -148, 44.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -148, 44.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -147.2, 44.7 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -147.2, 44.7 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -146.4, 44.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -146.4, 44.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -145.6, 44.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -145.6, 44.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -144.8, 44.7 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -144.8, 44.7 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -144.1, 44.7 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -144.1, 44.7 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -143.3, 44.7 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -143.3, 44.7 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -142.5, 44.7 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -142.5, 44.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -141.7, 44.7 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -141.7, 44.7 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -140.9, 44.7 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -140.9, 44.7 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -140.1, 44.7 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -140.1, 44.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -139.3, 44.7 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -139.3, 44.7 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -138.5, 44.7 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -138.5, 44.7 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -137.8, 44.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -137.8, 44.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -137, 44.7 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -137, 44.7 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -136.2, 44.7 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -136.2, 44.7 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -135.4, 44.7 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -135.4, 44.7 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -134.6, 44.7 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -134.6, 44.7 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -133.8, 44.7 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -133.8, 44.7 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -133, 44.7 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -133, 44.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -132.2, 44.7 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -132.2, 44.7 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -131.5, 44.7 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -131.5, 44.7 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -130.7, 44.7 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -130.7, 44.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -129.9, 44.7 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -129.9, 44.7 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -129.1, 44.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -129.1, 44.7 , 0 );

setScaleKey( spep_0 + 536 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 536 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, 48.4 );

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

--画面遷移
SE006 = playSeVer2( spep_0 + 86, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 74 );

--向かってくる
SE007 = playSeVer2( spep_0 + 124, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 124, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 146;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
SE010 = playSeVer2( spep_0 + 154, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE010,  333 );

--空力音
SE011 = playSeVer2( spep_0 + 148, 1278, "",spep_0 + 278, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 148, SE011, 77 );

--気弾溜め
SE012 = playSeVer2( spep_0 + 190, 1441, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 150 );
SE013 = playSeVer2( spep_0 + 190, 1440, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 150 );
setPitch( spep_0 + 190, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--敵ヒット
SE014 = playSeVer2( spep_0 + 218, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 222, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE016 = playSeVer2( spep_0 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE016, 79 );

--追いかける
SE017 = playSeVer2( spep_0 + 270, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 270, 1277, "", 0, 0, 0, -1);

--遠景連続打撃
SE019 = playSeVer2( spep_0 + 286, 1414, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 286, 1110, "",spep_0 + 308, 0, 6, -1);
SE021 = playSeVer2( spep_0 + 296, 1414, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 296, 1110, "",spep_0 + 322, 0, 8, -1);
SE023 = playSeVer2( spep_0 + 308, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 308, 1110, "",spep_0 + 332, 0, 8, -1);
SE025 = playSeVer2( spep_0 + 320, 1110, "", 0, 0, 0, -1);

--連続パンチ１
SE026 = playSeVer2( spep_0 + 338, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE026, 136 );
SE027 = playSeVer2( spep_0 + 342, 1414, "",spep_0 + 358, 0, 4, -1);
SE028 = playSeVer2( spep_0 + 342, 1359, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 346, 1187, "",spep_0 + 402, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 346, SE029, 69 );

--連続パンチ２
SE030 = playSeVer2( spep_0 + 370, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 372, 1414, "",spep_0 + 386, 0, 2, -1);
SE032 = playSeVer2( spep_0 + 376, 1187, "",spep_0 + 420, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 376, SE032, 82 );

--連続パンチ３
SE033 = playSeVer2( spep_0 + 400, 1414, "",spep_0 + 416, 0, 4, -1);
SE034 = playSeVer2( spep_0 + 400, 1359, "",spep_0 + 426, 0, 4, -1);
SE035 = playSeVer2( spep_0 + 404, 1187, "",spep_0 + 466, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 404, SE035, 81 );

--連続パンチ４
SE036 = playSeVer2( spep_0 + 430, 1003, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 434, 1359, "",spep_0 + 462, 0, 6, -1);
SE038 = playSeVer2( spep_0 + 436, 1414, "",spep_0 + 450, 0, 2, -1);
SE039 = playSeVer2( spep_0 + 440, 1187, "",spep_0 + 502, 0, 44, -1);

--顔アップ
SE040 = playSeVer2( spep_0 + 452, 1232, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 452, 8, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 466, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE042,  67 );

--振りかぶる
SE043 = playSeVer2( spep_0 + 508, 1188, "",spep_0 + 570, 12, 14, -1);
setSeVolumeByWorkId( spep_0 + 508, SE043, 85 );
setStartTimeMs( SE043,  200 );
SE044 = playSeVer2( spep_0 + 504, 1116, "",spep_0 + 550, 0, 20, -1);
SE045 = playSeVer2( spep_0 + 510, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE046 = playSeVer2( spep_0 + 552, 1359, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 556, 1187, "",spep_0 + 686, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 556, SE047, 80 );
SE048 = playSeVer2( spep_0 + 556, 1120, "",spep_0 + 668, 0, 26, -1);

--敵飛んでいく
SE049 = playSeVer2( spep_0 + 562, 1183, "",spep_0 + 622, 0, 14, -1);
SE050 = playSeVer2( spep_0 + 568, 1277, "",spep_0 + 684, 0, 8, -1);

--岩激突
SE051 = playSeVer2( spep_0 + 602, 1159, "",spep_0 + 684, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 602, SE051, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 674

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--振りかぶる
SE053 = playSeVer2( spep_1 + 86, 1068, "", 0, 22, 0, -1);

------------------------------------------------------
-- キックからフィニッシュ ef_002_a
------------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002_a, 0x100, -1, 0, 0, 0 );    -- キックからフィニッシュ ef_002_a
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002_b, 0x80, -1, 0, 0, 0 );    -- キックからフィニッシュ ef_002_b
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
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, -4.9, -47 - 80 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -4.9, -47 - 80 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 43.2, -24.9 - 80 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 43.2, -24.9 - 80 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -220.8, 0 - 120 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -220.8, 0 - 120 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -34.1, -8.1 - 120 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -34.1, -8.1 - 120 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -220.8, 0 - 150 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -220.8, 0 - 150 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -150.5, -46.2 - 150 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -150.5, -46.2 - 150 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -87.3, 69.6 - 240 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -87.3, 69.6 - 240 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -7.1, 31.4 - 240 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -7.1, 31.4 - 240 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -17.1, 65.6 - 240 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -17.1, 65.6 - 240 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -101.5, 75.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -101.5, 75.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -95, 72.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -95, 72.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -110.1, 74.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -110.1, 74.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -101.5, 72.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -101.5, 72.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -101.9, 81.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -101.9, 81.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -88.4, 92.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -88.4, 92.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -98.9, 86.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -98.9, 86.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -119.5, 82.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -119.5, 82.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -119.5, 77.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -119.5, 77.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -108.5, 82.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -108.5, 82.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -106, 72.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -106, 72.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -94.5, 88.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -94.5, 88.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -106.6, 78.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -106.6, 78.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -112.1, 69.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -112.1, 69.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -104.5, 65.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -104.5, 65.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -109.6, 65.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -109.6, 65.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -108.6, 64.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -108.6, 64.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -114.5, 68.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -114.5, 68.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -104, 71.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -104, 71.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -98.5, 77.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -98.5, 77.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -99.5, 69.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -99.5, 69.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -101, 83.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -101, 83.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -107.6, 76.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -107.6, 76.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -104.1, 69.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -104.1, 69.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -92.1, 86.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -92.1, 86.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -105.1, 68.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -105.1, 68.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -118.2, 92.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -118.2, 92.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -102.6, 77.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -102.6, 77.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -115.7, 87.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -115.7, 87.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -106.6, 62.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -106.6, 62.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -115.7, 63.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -115.7, 63.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -104.6, 53.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -104.6, 53.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -107.1, 59.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -107.1, 59.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -104.6, 59.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -104.6, 59.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -103.6, 63.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -103.6, 63.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -107.1, 62.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -107.1, 62.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -100.6, 70.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -100.6, 70.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -101.6, 69.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -101.6, 69.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -61.9, 26.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -61.9, 26.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -53.8, 44 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -53.8, 44 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -91, 1.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -91, 1.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -63.4, 30.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -63.4, 30.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -85.5, 3.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -85.5, 3.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -68.9, 24.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -68.9, 24.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -74.5, 0.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -74.5, 0.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -93, 23.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -93, 23.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -77.9, -2.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -77.9, -2.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -88, 20.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -88, 20.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -89, -0.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -89, -0.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -68.4, 17.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -68.4, 17.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -61.9, -4.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -61.9, -4.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -78.4, 12.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -78.4, 12.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -76.9, -1.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -76.9, -1.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -65.4, 8.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -65.4, 8.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -68.9, -0.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -68.9, -0.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -73.4, 5.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -73.4, 5.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -85.4, -2.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -85.4, -2.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -78.9, 5.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -78.9, 5.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -75.4, 1.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -75.4, 1.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -75.4, 5.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -75.4, 5.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -81, -2.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -81, -2.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -85, -5.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -85, -5.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -78.9, 0.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -78.9, 0.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -76.4, -4.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -76.4, -4.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -87.4, -0.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -87.4, -0.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -86.9, -4.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -86.9, -4.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -87.4, -1.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -87.4, -1.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -71.9, -11.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -71.9, -11.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -82.4, 1.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -82.4, 1.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -73.9, -3.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -73.9, -3.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -70.9, -12.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -70.9, -12.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -75.9, 0.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -75.9, 0.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -75.9, -9.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -75.9, -9.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -76.9, -4.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -76.9, -4.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -45.8, 11.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -45.8, 11.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -64.4, 6.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -64.4, 6.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -81.4, 3.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -81.4, 3.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -68.4, -3.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -68.4, -3.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -68.9, 7.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -68.9, 7.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -79.4, 12.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -79.4, 12.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -81.9, 0.2 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -81.9, 0.2 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -63.3, 9.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -63.3, 9.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -83.4, 4.7 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 33.6 );

-- ** 音 ** --
--蹴りつける
SE054 = playSeVer2( spep_2 + 46, 1414, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 46, 1359, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 46, 1159, "",spep_2 + 148, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 46, SE056, 80 );
SE057 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE057, 78 );

--連続蹴りつけ１
SE058 = playSeVer2( spep_2 + 96, 1359, "",spep_2 + 134, 0, 18, 0.7);
setSeVolumeByWorkId( spep_2 + 96, SE058, 71 );
SE059 = playSeVer2( spep_2 + 96, 1414, "", 0, 0, 0, 0.7);
SE060 = playSeVer2( spep_2 + 96, 1009, "",spep_2 + 126, 0, 10, 0.7);
SE061 = playSeVer2( spep_2 + 98, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ２
SE062 = playSeVer2( spep_2 + 114, 1010, "", 0, 0, 0, 0.7);
SE063 = playSeVer2( spep_2 + 114, 1359, "",spep_2 + 152, 0, 16, 0.7);
SE064 = playSeVer2( spep_2 + 114, 1414, "", 0, 0, 0, 0.7);
SE065 = playSeVer2( spep_2 + 116, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ３
SE066 = playSeVer2( spep_2 + 138, 1359, "",spep_2 + 176, 0, 18, 0.7);
SE067 = playSeVer2( spep_2 + 138, 1414, "", 0, 0, 0, 0.7);
SE068 = playSeVer2( spep_2 + 138, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ４
SE069 = playSeVer2( spep_2 + 162, 1010, "", 0, 0, 0, 0.7);
SE070 = playSeVer2( spep_2 + 162, 1359, "",spep_2 + 202, 0, 18, 0.7);
SE071 = playSeVer2( spep_2 + 162, 1414, "", 0, 0, 0, 0.7);
SE072 = playSeVer2( spep_2 + 168, 1014, "", 0, 0, 0, 0.7);

--ラスト蹴りつけ
SE073 = playSeVer2( spep_2 + 214, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE073, 129 );
SE074 = playSeVer2( spep_2 + 222, 1011, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 222, 1359, "",spep_2 + 262, 0, 18, -1);
SE076 = playSeVer2( spep_2 + 222, 1414, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 222, 1159, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 230 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 338

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭からパンチ ef_001_a
------------------------------------------------------
MAX_FRAME_0 = 674;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001_a_r, 0x100, -1, 0, 0, 0 );  -- 敵用：冒頭からパンチ ef_001_a_r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

SP_01b = entryEffect( spep_0 + 0, SP_001_b_r, 0x80, -1, 0, 0, 0 );  -- 敵用：冒頭からパンチ ef_001_b_r
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

-- 敵の動き2
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -158, 41.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -131, 47.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -104, 53.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -77, 59.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -50, 65.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -23, 71.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 12.2, 61.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 47.5, 51.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 82.7, 41.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 117.9, 31.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 117.9, 31.1 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.2 + Sc_tmp, 1.2 + Sc_tmp );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 450 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 250 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 308 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 388 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 444 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -207.7, -5.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 126.8, 165.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 58.1, 112.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 84.9, 141.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 84.9, 141.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 84.9, 127.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 129.6, 91.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 129.6, 59.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 193.1, 65.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 154.2, 65.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 112.9, 97.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 112.9, 52.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 110.8, 87.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 138.9, 105.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 122.5, 113.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 143, 113.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 172.6, 160.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 191.2, 158.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 195.5, 165.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 196.5, 165.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 249.5, 174.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 250.5, 168.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 264.5, 182.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 256.3, 158.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 249.1, 176 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 258.5, 140.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 292.5, 143.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 256.1, 139.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 187.5, 161.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 187.5, 153.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 243.8, 174.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 248.5, 162.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 259.6, 180.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -69.8, 36.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -69.8, 36.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -92, 53 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -92, 53 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -70.7, 37 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -70.7, 37 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -131.8, 91.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -131.8, 91.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -131.3, 84.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -131.3, 84.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -150.2, 94.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -150.2, 94.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -179.5, 115.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -179.5, 115.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -252.8, 106.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -252.8, 106.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -242.9, 86.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -242.9, 86.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -198.2, 51.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -198.2, 51.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -189.2, 39.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -189.2, 39.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 58.5, -36.5 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 58.5, -36.5 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 86.8, -27.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 86.8, -27.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 28.3, -49.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 28.3, -49.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 60.2, -64.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 60.2, -64.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 46.5, -27.5 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 46.5, -27.5 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 25.6, -27.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 25.6, -27.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 44.9, -33.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 44.9, -33.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 31.6, -45.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 31.6, -45.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 22.5, -15.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 22.5, -15.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 12, -8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 12, -8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 0.2, -5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 0.2, -5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -247.5, -12.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -247.5, -12.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -271.4, -65.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -271.4, -65.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -217.3, -84.3 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -217.3, -84.3 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -235.1, -76.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -235.1, -76.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -268.7, -70.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -268.7, -70.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -258.1, -74.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -258.1, -74.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -262.6, -72.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -262.6, -72.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -259, -74.6 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -259, -74.6 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -260.8, -73.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 201.9, -70.8 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 201.9, -70.8 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 315.3, -119.8 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 315.3, -119.8 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 402.1, -141.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 402.1, -141.9 , 0 );

Sc_tmp2 = 0.2;

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1 + Sc_tmp2, 1 + Sc_tmp2 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.1 + Sc_tmp2, 1.1 + Sc_tmp2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.2 + Sc_tmp2, 1.2 + Sc_tmp2 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.4 + Sc_tmp2, 1.4 + Sc_tmp2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1.8 + Sc_tmp2, 1.8 + Sc_tmp2 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 2.5 + Sc_tmp2, 2.5 + Sc_tmp2 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 3.5 + Sc_tmp2, 3.5 + Sc_tmp2 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -2.5 );

-- 敵の動き4
setDisp( spep_0 + 536 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 676 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 536 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 558 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 566 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 588 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 604 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 536 + OFFSET_X, 1, 372.2, -183.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 372.2, -183.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 210.7, -183.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 210.7, -183.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 54.4, -310.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 54.4, -310.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 23.3, -406.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 23.3, -406.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -20.9, -510 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -20.9, -510 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -28.6, -512.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -28.6, -512.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -33.8, -515.1 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -33.8, -515.1 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -298.5, -141.8 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -298.5, -141.8 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -187, -125.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -187, -125.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -153.3, -108.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -153.3, -108.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -137.7, -103.8 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -137.7, -103.8 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 94.9, -14.4 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 94.9, -14.4 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 158.6, 74.2 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 158.6, 74.2 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 100, 15.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 100, 15.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 139.1, 33.8 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 139.1, 33.8 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 102.6, 31.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 102.6, 31.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 124.8, 12.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 39, 69.7 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 39, 69.7 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 75.4, 60.7 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 75.4, 60.7 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 102.6, 54.2 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 102.6, 54.2 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 129.5, 47.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 129.5, 47.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 156.7, 44.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 156.7, 44.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 155.9, 44.8 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 155.9, 44.8 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 155.1, 44.8 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 155.1, 44.8 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 154.3, 44.8 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 154.3, 44.8 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 153.5, 44.7 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 153.5, 44.7 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 152.7, 44.7 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 152.7, 44.7 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 151.9, 44.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 151.9, 44.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 151.1, 44.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 151.1, 44.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 150.4, 44.7 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 150.4, 44.7 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 149.6, 44.7 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 149.6, 44.7 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 148.8, 44.7 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 148.8, 44.7 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 148, 44.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 148, 44.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 147.2, 44.7 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 147.2, 44.7 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 146.4, 44.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 146.4, 44.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 145.6, 44.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 145.6, 44.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 144.8, 44.7 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 144.8, 44.7 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 144.1, 44.7 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 144.1, 44.7 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 143.3, 44.7 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 143.3, 44.7 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 142.5, 44.7 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 142.5, 44.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 141.7, 44.7 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 141.7, 44.7 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 140.9, 44.7 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 140.9, 44.7 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 140.1, 44.7 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 140.1, 44.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 139.3, 44.7 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 139.3, 44.7 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 138.5, 44.7 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 138.5, 44.7 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 137.8, 44.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 137.8, 44.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 137, 44.7 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 137, 44.7 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 136.2, 44.7 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 136.2, 44.7 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 135.4, 44.7 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 135.4, 44.7 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 134.6, 44.7 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 134.6, 44.7 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 133.8, 44.7 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 133.8, 44.7 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 133, 44.7 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 133, 44.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 132.2, 44.7 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 132.2, 44.7 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 131.5, 44.7 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 131.5, 44.7 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 130.7, 44.7 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 130.7, 44.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 129.9, 44.7 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 129.9, 44.7 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 129.1, 44.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 129.1, 44.7 , 0 );

setScaleKey( spep_0 + 536 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 10.05, 10.05 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 10.1, 10.1 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 10.15, 10.15 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 536 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, -48.4 );

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

--画面遷移
SE006 = playSeVer2( spep_0 + 86, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 74 );

--向かってくる
SE007 = playSeVer2( spep_0 + 124, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 124, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 146;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
SE010 = playSeVer2( spep_0 + 154, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE010,  333 );

--空力音
SE011 = playSeVer2( spep_0 + 148, 1278, "",spep_0 + 278, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 148, SE011, 77 );

--気弾溜め
SE012 = playSeVer2( spep_0 + 190, 1441, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 150 );
SE013 = playSeVer2( spep_0 + 190, 1440, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 150 );
setPitch( spep_0 + 190, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--敵ヒット
SE014 = playSeVer2( spep_0 + 218, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 222, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE016 = playSeVer2( spep_0 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE016, 79 );

--追いかける
SE017 = playSeVer2( spep_0 + 270, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 270, 1277, "", 0, 0, 0, -1);

--遠景連続打撃
SE019 = playSeVer2( spep_0 + 286, 1414, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 286, 1110, "",spep_0 + 308, 0, 6, -1);
SE021 = playSeVer2( spep_0 + 296, 1414, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 296, 1110, "",spep_0 + 322, 0, 8, -1);
SE023 = playSeVer2( spep_0 + 308, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 308, 1110, "",spep_0 + 332, 0, 8, -1);
SE025 = playSeVer2( spep_0 + 320, 1110, "", 0, 0, 0, -1);

--連続パンチ１
SE026 = playSeVer2( spep_0 + 338, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE026, 136 );
SE027 = playSeVer2( spep_0 + 342, 1414, "",spep_0 + 358, 0, 4, -1);
SE028 = playSeVer2( spep_0 + 342, 1359, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 346, 1187, "",spep_0 + 402, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 346, SE029, 69 );

--連続パンチ２
SE030 = playSeVer2( spep_0 + 370, 1359, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 372, 1414, "",spep_0 + 386, 0, 2, -1);
SE032 = playSeVer2( spep_0 + 376, 1187, "",spep_0 + 420, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 376, SE032, 82 );

--連続パンチ３
SE033 = playSeVer2( spep_0 + 400, 1414, "",spep_0 + 416, 0, 4, -1);
SE034 = playSeVer2( spep_0 + 400, 1359, "",spep_0 + 426, 0, 4, -1);
SE035 = playSeVer2( spep_0 + 404, 1187, "",spep_0 + 466, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 404, SE035, 81 );

--連続パンチ４
SE036 = playSeVer2( spep_0 + 430, 1003, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 434, 1359, "",spep_0 + 462, 0, 6, -1);
SE038 = playSeVer2( spep_0 + 436, 1414, "",spep_0 + 450, 0, 2, -1);
SE039 = playSeVer2( spep_0 + 440, 1187, "",spep_0 + 502, 0, 44, -1);

--顔アップ
SE040 = playSeVer2( spep_0 + 452, 1232, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 452, 8, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 466, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE042,  67 );

--振りかぶる
SE043 = playSeVer2( spep_0 + 508, 1188, "",spep_0 + 570, 12, 14, -1);
setSeVolumeByWorkId( spep_0 + 508, SE043, 85 );
setStartTimeMs( SE043,  200 );
SE044 = playSeVer2( spep_0 + 504, 1116, "",spep_0 + 550, 0, 20, -1);
SE045 = playSeVer2( spep_0 + 510, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE046 = playSeVer2( spep_0 + 552, 1359, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 556, 1187, "",spep_0 + 686, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 556, SE047, 80 );
SE048 = playSeVer2( spep_0 + 556, 1120, "",spep_0 + 668, 0, 26, -1);

--敵飛んでいく
SE049 = playSeVer2( spep_0 + 562, 1183, "",spep_0 + 622, 0, 14, -1);
SE050 = playSeVer2( spep_0 + 568, 1277, "",spep_0 + 684, 0, 8, -1);

--岩激突
SE051 = playSeVer2( spep_0 + 602, 1159, "",spep_0 + 684, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 602, SE051, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 674

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--振りかぶる
SE053 = playSeVer2( spep_1 + 86, 1068, "", 0, 22, 0, -1);

------------------------------------------------------
-- キックからフィニッシュ ef_002_a
------------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002_a_r, 0x100, -1, 0, 0, 0 );  -- 敵用：キックからフィニッシュ ef_002_a_r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002_b_r, 0x80, -1, 0, 0, 0 );  -- 敵用：キックからフィニッシュ ef_002_b_r
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
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, -4.9, -47 - 80 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -4.9, -47 - 80 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 43.2, -24.9 - 80 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 43.2, -24.9 - 80 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -220.8, 0 - 120 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -220.8, 0 - 120 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -34.1, -8.1 - 120 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -34.1, -8.1 - 120 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -220.8, 0 - 150 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -220.8, 0 - 150 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -150.5, -46.2 - 150 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -150.5, -46.2 - 150 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -87.3, 69.6 - 240 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -87.3, 69.6 - 240 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -7.1, 31.4 - 240 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -7.1, 31.4 - 240 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -17.1, 65.6 - 240 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -17.1, 65.6 - 240 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -75.3, 43.5 - 240 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -101.5, 75.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -101.5, 75.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -95, 72.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -95, 72.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -110.1, 74.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -110.1, 74.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -101.5, 72.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -101.5, 72.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -105.5, 79.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -101.9, 81.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -101.9, 81.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -88.4, 92.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -88.4, 92.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -98.9, 86.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -98.9, 86.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -119.5, 82.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -119.5, 82.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -119.5, 77.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -119.5, 77.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -108.5, 82.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -108.5, 82.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -106, 72.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -106, 72.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -94.5, 88.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -94.5, 88.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -106.6, 78.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -106.6, 78.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -112.1, 69.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -112.1, 69.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -104.5, 65.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -104.5, 65.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -109.6, 65.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -109.6, 65.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -108.6, 64.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -108.6, 64.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -114.5, 68.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -114.5, 68.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -104, 71.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -104, 71.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -98.5, 77.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -98.5, 77.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -99.5, 69.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -99.5, 69.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -101, 83.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -101, 83.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -107.6, 76.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -107.6, 76.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -104.1, 69.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -104.1, 69.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -92.1, 86.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -92.1, 86.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -105.1, 68.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -105.1, 68.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -118.2, 92.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -118.2, 92.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -102.6, 77.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -102.6, 77.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -115.7, 87.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -115.7, 87.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -106.6, 62.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -106.6, 62.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -115.7, 63.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -115.7, 63.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -104.6, 53.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -104.6, 53.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -107.1, 59.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -107.1, 59.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -104.6, 59.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -104.6, 59.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -103.6, 63.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -103.6, 63.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -107.1, 62.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -107.1, 62.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -100.6, 70.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -100.6, 70.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -101.6, 69.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -101.6, 69.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -61.9, 26.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -61.9, 26.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -53.8, 44 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -53.8, 44 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -91, 1.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -91, 1.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -63.4, 30.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -63.4, 30.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -85.5, 3.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -85.5, 3.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -68.9, 24.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -68.9, 24.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -74.5, 0.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -74.5, 0.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -93, 23.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -93, 23.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -77.9, -2.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -77.9, -2.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -88, 20.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -88, 20.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -89, -0.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -89, -0.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -68.4, 17.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -68.4, 17.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -61.9, -4.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -61.9, -4.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -78.4, 12.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -78.4, 12.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -76.9, -1.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -76.9, -1.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -65.4, 8.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -65.4, 8.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -68.9, -0.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -68.9, -0.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -73.4, 5.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -73.4, 5.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -85.4, -2.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -85.4, -2.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -78.9, 5.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -78.9, 5.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -75.4, 1.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -75.4, 1.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -75.4, 5.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -75.4, 5.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -81, -2.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -81, -2.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -85, -5.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -85, -5.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -78.9, 0.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -78.9, 0.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -76.4, -4.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -76.4, -4.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -87.4, -0.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -87.4, -0.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -86.9, -4.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -86.9, -4.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -87.4, -1.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -87.4, -1.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -71.9, -11.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -71.9, -11.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -82.4, 1.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -82.4, 1.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -73.9, -3.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -73.9, -3.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -70.9, -12.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -70.9, -12.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -75.9, 0.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -75.9, 0.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -75.9, -9.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -75.9, -9.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -76.9, -4.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -76.9, -4.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -45.8, 11.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -45.8, 11.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -64.4, 6.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -64.4, 6.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -81.4, 3.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -81.4, 3.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -68.4, -3.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -68.4, -3.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -68.9, 7.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -68.9, 7.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -79.4, 12.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -79.4, 12.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -81.9, 0.2 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -81.9, 0.2 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -63.3, 9.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -63.3, 9.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -83.4, 4.7 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 33.6 );

-- ** 音 ** --
--蹴りつける
SE054 = playSeVer2( spep_2 + 46, 1414, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 46, 1359, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 46, 1159, "",spep_2 + 148, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 46, SE056, 80 );
SE057 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE057, 78 );

--連続蹴りつけ１
SE058 = playSeVer2( spep_2 + 96, 1359, "",spep_2 + 134, 0, 18, 0.7);
setSeVolumeByWorkId( spep_2 + 96, SE058, 71 );
SE059 = playSeVer2( spep_2 + 96, 1414, "", 0, 0, 0, 0.7);
SE060 = playSeVer2( spep_2 + 96, 1009, "",spep_2 + 126, 0, 10, 0.7);
SE061 = playSeVer2( spep_2 + 98, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ２
SE062 = playSeVer2( spep_2 + 114, 1010, "", 0, 0, 0, 0.7);
SE063 = playSeVer2( spep_2 + 114, 1359, "",spep_2 + 152, 0, 16, 0.7);
SE064 = playSeVer2( spep_2 + 114, 1414, "", 0, 0, 0, 0.7);
SE065 = playSeVer2( spep_2 + 116, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ３
SE066 = playSeVer2( spep_2 + 138, 1359, "",spep_2 + 176, 0, 18, 0.7);
SE067 = playSeVer2( spep_2 + 138, 1414, "", 0, 0, 0, 0.7);
SE068 = playSeVer2( spep_2 + 138, 1014, "", 0, 0, 0, 0.7);

--連続蹴りつけ４
SE069 = playSeVer2( spep_2 + 162, 1010, "", 0, 0, 0, 0.7);
SE070 = playSeVer2( spep_2 + 162, 1359, "",spep_2 + 202, 0, 18, 0.7);
SE071 = playSeVer2( spep_2 + 162, 1414, "", 0, 0, 0, 0.7);
SE072 = playSeVer2( spep_2 + 168, 1014, "", 0, 0, 0, 0.7);

--ラスト蹴りつけ
SE073 = playSeVer2( spep_2 + 214, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE073, 129 );
SE074 = playSeVer2( spep_2 + 222, 1011, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 222, 1359, "",spep_2 + 262, 0, 18, -1);
SE076 = playSeVer2( spep_2 + 222, 1414, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 222, 1159, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 230 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 338

end
