-- 1027470：LR_セル(完全体)(GT)&フリーザ(最終形態)(GT)_アクティブ必殺：ヘルズバスター
-- sp_effect_a9_00118
-- ut0062

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162481;  -- ef_001
SP_01b = 162484;  -- ef_003
SP_02 = 162483;  -- ef_002
SP_02b = 162485;  -- ef_004


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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
--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 624

       if(_IS_DODGE_ == 1) then
            skipFrame(0, spep_0 + 120 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
            skipFrame(0, spep_1 + 2 -1);  -- スキップ先フレーム指定

            SE024 = playSeVer2( spep_1 + 2 - 1, 1355, "", spep_1 + 74, 0, 4, -1);
            setPitch( spep_1 + 2 - 1, SE024, 100 );
            setTimeStretch( SE024, 1.33, 30, 4 );
            setStartTimeMs( SE024, 600 );
            SE025 = playSeVer2( spep_1 + 2 - 1, 1145, "", spep_1 + 90, 0, 4, -1);
            setStartTimeMs( SE025, 400 );
            SE026 = playSeVer2( spep_1 + 2 - 1, 1183, "", spep_1 + 90, 0, 4, -1);
            SE027 = playSeVer2( spep_1 + 2 - 1, 1121, "", spep_1 + 90, 0, 4, -1);
            setSeVolumeByWorkId( spep_1 + 2 - 1, SE027, 63 );
            setPitch( spep_1 + 2 - 1, SE027, 200 );
            setTimeStretch( SE027, 1.13, 30, 4 );

       end
    else end


------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭
------------------------------------------------------
MAX_FRAME_0 = 624;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 白フェード ** --
entryFade( spep_0, 0, 1, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 232, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 614, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0, 1, 1);
setDisp( spep_0 + 140 + OFFSET_X, 1, 0);

changeAnime( spep_0, 1, 100 );
changeAnime( spep_0 + 70 + OFFSET_X, 1, 102 );

setMoveKey( spep_0, 1, 76.8, -32.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 76, -32.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 76, -32.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 75.4, -32.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 75.4, -32.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 74.8, -32.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 74.8, -32.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 74.3, -32.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 74.3, -32.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 73.8, -32.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 73.8, -32.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 73.4, -32.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 73.4, -32.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 73, -32.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 73, -32.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 72.6, -32.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 72.6, -32.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 72.2, -32.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 72.2, -32.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 71.8, -32.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 71.8, -32.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 71.5, -32.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 71.5, -32.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 71.1, -32.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 71.1, -32.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 70.8, -32.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 70.8, -32.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 70.5, -32.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 70.5, -32.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 70.2, -32.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 70.2, -32.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 69.9, -32.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 69.9, -32.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 69.6, -32.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 69.6, -32.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 69.3, -32.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 69.3, -32.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 69.1, -32.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 69.1, -32.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 68.8, -32.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 68.8, -32.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 68.6, -32.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 68.6, -32.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 68.3, -32.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 68.3, -32.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 68.1, -32.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 68.1, -32.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 67.9, -32.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 67.9, -32.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 67.7, -32.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 67.7, -32.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 67.6, -32.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 67.6, -32.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 67.4, -32.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 67.4, -32.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 67.3, -32.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 67.3, -32.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 67.2, -32.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 67.2, -32.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 67.1, -32.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 67.1, -32.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 67, -32.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 67, -32.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 66.9, -32.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 66.9, -32.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 66.8, -32.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 66.8, -32.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -93.2, -32.5 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -93.2, -32.5 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -92.3, -32.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -92.3, -32.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -91.7, -32.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -91.7, -32.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -91.1, -32.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -91.1, -32.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -90.6, -32.6 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -90.6, -32.6 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -90.1, -32.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -90.1, -32.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -89.7, -32.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -89.7, -32.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -89.3, -32.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -89.3, -32.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -88.9, -32.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -88.9, -32.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -88.5, -32.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -88.5, -32.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -88.1, -32.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -88.1, -32.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -87.8, -32.6 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -87.8, -32.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -87.4, -32.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -87.4, -32.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -87.1, -32.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -87.1, -32.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -86.8, -32.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -86.8, -32.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -86.5, -32.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -86.5, -32.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -86.2, -32.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -86.2, -32.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -85.9, -32.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -85.9, -32.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -85.6, -32.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -85.6, -32.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -85.4, -32.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -85.4, -32.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -85.1, -32.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -85.1, -32.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -84.9, -32.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -84.9, -32.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -84.6, -32.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -84.6, -32.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -84.4, -32.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -84.4, -32.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -84.2, -32.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -84.2, -32.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -84, -32.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -84, -32.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -83.9, -32.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -83.9, -32.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -83.7, -32.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -83.7, -32.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -83.6, -32.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -83.6, -32.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -83.5, -32.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -83.5, -32.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -83.4, -32.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -83.4, -32.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -83.3, -32.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -83.3, -32.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -83.2, -32.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -83.2, -32.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -83.2, -32.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -83.2, -32.5 , 0 );

setScaleKey( spep_0, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 240 + OFFSET_X, 1, 1);
setDisp( spep_0 + 440 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 240 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 59.6, 122.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 59.6, 122.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 57.7, 127.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 57.7, 127.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 57.1, 138.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 57.1, 138.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 56.7, 131.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 56.7, 131.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 56.5, 141.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 56.5, 141.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 56.3, 133.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 56.3, 133.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 56.2, 142.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 56.2, 142.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 56.1, 135.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 56.1, 135.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 56, 143.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 56, 143.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 55.9, 135.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 55.9, 135.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 55.9, 144 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 55.9, 144 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 55.9, 136 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 55.9, 136 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 55.9, 144.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 55.9, 144.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 55.8, 135.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 55.8, 135.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 55.8, 144.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 55.8, 144.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 55.8, 136 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 55.8, 136 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 55.8, 144.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 55.8, 144.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 55.8, 136.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 55.8, 136.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 55.8, 144.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 55.8, 144.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 55.7, 136.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 55.7, 136.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 55.7, 144.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 55.7, 144.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 55.7, 136.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 55.7, 136.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 55.7, 144.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 55.7, 144.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 55.7, 136.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 55.7, 136.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 55.7, 144.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 55.7, 144.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 55.7, 136.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 55.7, 136.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 55.7, 144.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 55.7, 144.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 55.7, 136.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 55.7, 136.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 55.6, 144.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 55.6, 144.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 55.7, 136.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 55.7, 136.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 55.6, 145 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 55.6, 145 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 55.7, 136.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 55.7, 136.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 55.7, 145 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 55.7, 145 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 55.7, 145 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 55.7, 145 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 55.7, 136.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 55.7, 136.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 55.6, 136.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 55.6, 136.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 55.7, 145.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 55.7, 145.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 55.6, 136.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 55.7, 136.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 55.7, 136.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 55.6, 136.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 55.6, 136.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 55.6, 136.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 55.6, 136.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 55.6, 145.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 55.6, 136.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 55.6, 136.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 55.7, 144.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 55.7, 144.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 41.5, 106.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 41.5, 106.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 35, 72.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 35, 72.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 30, 78 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 30, 78 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 25.6, 53.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 25.6, 53.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 21.8, 61.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 21.8, 61.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 18.3, 45.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 18.3, 45.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 15.2, 40.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 15.2, 40.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 12.3, 44.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 12.3, 44.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 9.6, 33.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 9.6, 33.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 7, 39.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 7, 39.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 4.7, 29.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 4.7, 29.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 2.5, 36.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 2.5, 36.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 0.4, 27.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 0.4, 27.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -1.6, 27.6 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -1.6, 36 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -1.6, 27.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -1.6, 27.8 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -41.9 );

-- 敵の動き3
setDisp( spep_0 + 554 + OFFSET_X, 1, 1);
setDisp( spep_0 + 624 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 554 + OFFSET_X, 1, 107 )

setMoveKey( spep_0 + 554 + OFFSET_X, 1, 943, 423.3 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 943, 423.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 854.8, 417.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 854.8, 417.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 770, 402.8 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 770, 402.8 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 688.1, 380.9 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 688.1, 380.9 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 609.6, 353.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 609.6, 353.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 534.8, 322.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 534.8, 322.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 463.3, 289.1 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 463.3, 289.1 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 395.7, 254.1 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 395.7, 254.1 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 332, 218.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 332, 218.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 272.3, 182.5 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 272.3, 182.5 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 216.6, 147.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 216.6, 147.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 165.1, 112.8 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 165.1, 112.8 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 117.7, 79.1 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 117.7, 79.1 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 74.2, 46.1 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 74.2, 46.1 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 34.6, 13.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 34.6, 13.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -1.3, -19.7 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -1.3, -19.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -33.9, -54.2 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -33.9, -54.2 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -63.5, -91.5 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -63.5, -91.5 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -90.6, -132.8 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -90.6, -132.8 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -115.7, -180.4 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -115.7, -180.4 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -139.5, -236.3 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -139.5, -236.3 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -163.5, -295.7 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -163.5, -295.7 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -187.8, -356 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -187.8, -356 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -212.2, -416.8 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -212.2, -416.8 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -236.9, -477.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -236.9, -477.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -261.4, -538.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -261.4, -538.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -285.7, -599.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -285.7, -599.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -309.7, -658.5 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -309.7, -658.5 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -333, -716.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -333, -716.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -355.8, -772.7 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -355.8, -772.7 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -377.6, -826.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -377.6, -826.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -398.5, -878.5 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -398.5, -878.5 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -418.4, -927.3 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -418.4, -927.3 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -437, -973 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -437, -973 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -454.2, -1015.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -454.2, -1015.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -470, -1053.8 , 0 );

setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.88, 0.88 );

setRotateKey( spep_0 + 554 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 27.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 236, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--画面遷移
SE003 = playSeVer2( spep_0 + 66, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE003,  267 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--フリーザアップ
SE004 = playSeVer2( spep_0 + 134, 1263, "",spep_0 + 224, 4, 42, -1);
setSeVolumeByWorkId( spep_0 + 134, SE004, 146 );
setStartTimeMs( SE004,  567 );
SE005 = playSeVer2( spep_0 + 136, 1438, "", 0, 4, 0, -1);
setStartTimeMs( SE005,  300 );
SE006 = playSeVer2( spep_0 + 136, 1179, "",spep_0 + 224, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 136, SE006, 71 );
--セリフカットイン
SE007 = playSeVer2( spep_0 + 140, 1018, "", 0, 0, 0, -1);
--セルアップ
SE008 = playSeVer2( spep_0 + 192, 1263, "",spep_0 + 282, 4, 42, -1);
setSeVolumeByWorkId( spep_0 + 192, SE008, 145 );
setStartTimeMs( SE008,  567 );
SE009 = playSeVer2( spep_0 + 192, 1438, "", 0, 4, 0, -1);
setStartTimeMs( SE009,  267 );
SE010 = playSeVer2( spep_0 + 192, 1369, "",spep_0 + 294, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 59 );
--エネルギー放出
SE011 = playSeVer2( spep_0 + 238, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE011, 69 );
SE012 = playSeVer2( spep_0 + 238, 1345, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE012, 89 );
SE013 = playSeVer2( spep_0 + 238, 1362, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE013, 79 );
setPitch( spep_0 + 238, SE013, 500 );
setTimeStretch( SE013, 1.33, 30, 4 );
SE014 = playSeVer2( spep_0 + 238, 1396, "",spep_0 + 700, 0, 30, -1);
--角度変わる
SE015 = playSeVer2( spep_0 + 336, 44, "", 0, 0, 0, -1);
--エネルギー放出
SE016 = playSeVer2( spep_0 + 444, 1161, "",spep_0 + 588, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 444, SE016, 69 );
--セル振りかぶる
SE017 = playSeVer2( spep_0 + 458, 1190, "",spep_0 + 524, 10, 28, -1);
setStartTimeMs( SE017,  100 );
SE018 = playSeVer2( spep_0 + 462, 1116, "",spep_0 + 518, 0, 34, -1);
SE019 = playSeVer2( spep_0 + 470, 1004, "", 0, 0, 0, -1);
--フリーザ振りかぶる
SE020 = playSeVer2( spep_0 + 520, 1170, "",spep_0 + 576, 12, 24, -1);
setStartTimeMs( SE020,  67 );
SE021 = playSeVer2( spep_0 + 520, 1116, "",spep_0 + 560, 0, 18, -1);
SE022 = playSeVer2( spep_0 + 530, 1004, "", 0, 0, 0, -1);
--敵落ちていく
SE023 = playSeVer2( spep_0 + 552, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE023, 63 );
SE024 = playSeVer2( spep_0 + 552, 1355, "", 0, 0, 0, -1);
setPitch( spep_0 + 552, SE024, 100 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_0 + 552, 1145, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 568, 1183, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 568, 1121, "",spep_0 + 708, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 568, SE027, 63 );
setPitch( spep_0 + 568, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 624F

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
MAX_FRAME_1 = 198;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1, 1, 1);
setDisp( spep_1 + 48 + OFFSET_X, 1, 0);

changeAnime( spep_1, 1, 107 );

setMoveKey( spep_1, 1, 321.7, 492 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 308.9, 478.1 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_X, 1, 308.9, 478.1 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 296, 463.6 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_X, 1, 296, 463.6 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 282.7, 448.1 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_X, 1, 282.7, 448.1 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 269.3, 431.9 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, 269.3, 431.9 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 255.7, 414.9 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 255.7, 414.9 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 241.9, 397.2 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 241.9, 397.2 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 228.1, 378.8 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 228.1, 378.8 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 214.2, 359.6 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 214.2, 359.6 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 200.2, 339.8 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 200.2, 339.8 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 186.1, 319.2 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 186.1, 319.2 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 172, 297.8 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 172, 297.8 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 157.9, 275.6 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 157.9, 275.6 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 143.9, 252.7 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 143.9, 252.7 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 129.8, 228.9 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 129.8, 228.9 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 115.9, 204.2 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 115.9, 204.2 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 102, 178.3 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 102, 178.3 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 88.2, 151.2 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 88.2, 151.2 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 74.5, 122.8 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 74.5, 122.8 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 60.9, 92.8 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 60.9, 92.8 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 47.5, 60.7 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 47.5, 60.7 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 34.4, 26 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 34.4, 26 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 21.5, -12.3 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 21.5, -12.3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 9.1, -55.9 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 9.1, -55.9 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, -2.7, -109.3 , 0 );

setScaleKey( spep_1, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 2 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 3 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 4 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 5 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 6 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 7 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 8 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 9 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 10 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 11 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 12 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 13 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 15 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 16 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 21 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 22 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 23 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 27 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 33 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 39 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_1 + 45 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_1 + 47 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 0.02, 0.02 );

setRotateKey( spep_1, 1, 39 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, 39 );

-- ** 音 ** --
--爆発
SE028 = playSeVer2( spep_1 + 68, 1024, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 76, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
--hideKoScreen();
dealDamage( spep_1 + 90 );
endPhase( spep_1 + MAX_FRAME_1 -4);-- 198F

else end
