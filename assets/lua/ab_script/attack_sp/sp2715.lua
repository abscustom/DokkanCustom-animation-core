-- 1028980: UR_超サイヤ人2トランクス(未来)_必殺技：ファイナルフラッシュ
-- sp_effect_a1_00442
-- sp2715

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162940;  -- トランクスが突撃～気弾が膨れ上がる	ef_001
SP_001b = 162941;  -- トランクスが突撃～気弾が膨れ上がる	ef_001b
SP_002 = 162943;  -- トランクスが気弾を放っている～敵に当たる	ef_002
SP_002b = 162944;  -- トランクスが気弾を放っている～敵に当たる	ef_002b

-- 敵側
SP_001r = 162942;  -- トランクスが突撃～気弾が膨れ上がる	ef_001r
SP_002r = 162945;  -- トランクスが気弾を放っている～敵に当たる	ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- トランクスが突撃～気弾が膨れ上がる
------------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );     -- トランクスが突撃～気弾が膨れ上がる	ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );    -- トランクスが突撃～気弾が膨れ上がる	ef_001b
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
spep_x = spep_0 + 268;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 76 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 96 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 112 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, 179.6, -420.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 179.6, -420.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 169.6, -378.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 169.6, -378.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 159.6, -336.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 159.6, -336.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 149.6, -294.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 149.6, -294.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 139.6, -252.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 139.6, -252.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 129.6, -210.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 129.6, -210.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 119.6, -168.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 119.6, -168.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 109.6, -126.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 109.6, -126.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 109.4, -125.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 109.4, -125.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 109.3, -124.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 109.3, -124.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 109.1, -124 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 109.1, -124 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 108.9, -123.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 108.9, -123.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 108.8, -122.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 108.8, -122.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 108.6, -122 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 108.6, -122 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 108.5, -121.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 108.5, -121.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 108.3, -120.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 108.3, -120.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 108.1, -119.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 108.1, -119.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 108, -119.3 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 108, -119.3 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 107.8, -118.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 107.8, -118.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 107.6, -117.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 107.6, -117.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 107.5, -117.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 107.5, -117.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 109.1, -114.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 109.1, -114.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 110.8, -111.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 110.8, -111.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -113.8, 42.7 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -113.8, 42.7 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -112, 44.9 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -112, 44.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -110.2, 47.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -110.2, 47.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -108.3, 49.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -108.3, 49.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -106.5, 51.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -106.5, 51.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -68.2, 3.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -68.2, 3.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -71.5, 15.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -71.5, 15.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -73.8, 20.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -73.8, 20.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -76.1, 25.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -76.1, 25.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -78.4, 30.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -78.4, 30.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 39, 5.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 39, 5.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 30.7, -19.8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 30.7, -19.8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 22.6, -10.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 22.6, -10.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 17.8, -9.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 17.8, -9.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 12.8, -8.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 12.8, -8.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 8, -7.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 8, -7.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 3, -6.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 3, -6.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -1.9, -5.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -1.9, -5.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 98.5, -37.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 98.5, -37.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 93.3, -61.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 93.3, -61.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 88.4, -50.2 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 88.4, -50.2 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 87.9, -48 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 87.9, -48 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 87.3, -45.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 87.3, -45.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 86.7, -43.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 86.7, -43.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 86.1, -41.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 86.1, -41.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 85.5, -39.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 85.5, -39.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 84.9, -37.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 84.9, -37.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 84.3, -35.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 84.3, -35.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 83.7, -33 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 83.7, -33 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 256.9, -119.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 256.9, -119.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 264.3, -152.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 264.3, -152.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 272, -149.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 272, -149.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 286, -156.2 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 286, -156.2 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 299.9, -163.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 299.9, -163.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 313.8, -170.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 313.8, -170.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 327.8, -177.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 327.8, -177.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 341.8, -184.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 341.8, -184.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 355.7, -191.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 355.7, -191.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 15.2, -62.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 15.2, -62.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 55.7, -43.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 55.7, -43.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 96.2, -23.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 96.2, -23.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 164.4, 8.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 164.4, 8.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 103, -34.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 103, -34.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 128.7, 57.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 128.7, 57.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 160.5, -26 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 160.5, -26 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 126.9, 7.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 126.9, 7.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 123.1, -20.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 123.1, -20.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 150.4, 3.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 150.4, 3.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 190.6, -5.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 190.6, -5.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 201.1, -5.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 201.1, -5.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 204.1, -3.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 204.1, -3.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 203.2, -0.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 203.2, -0.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 199.7, 3.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 199.7, 3.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 194.3, 8.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 194.3, 8.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 187.5, 13.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 187.5, 13.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 179.6, 19.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 179.6, 19.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 170.7, 25 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 170.7, 25 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 161.1, 31 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 161.1, 31 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 150.7, 37.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 150.7, 37.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 139.8, 43.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 139.8, 43.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 128.2, 50.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 128.2, 50.2 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.59, 0.59 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 75 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 21, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 155 );
--走っていく
SE003 = playSeVer2( spep_0 + 10, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 63 );
SE005 = playSeVer2( spep_0 + 14, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 158 );
SE006 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 158 );
SE007 = playSeVer2( spep_0 + 32, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE007, 158 );
SE008 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE008, 158 );
SE009 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE009, 158 );
SE010 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE010, 158 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 74;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);


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
--連続斬り
SE011 = playSeVer2( spep_0 + 70, 1278, "",spep_0 + 284, 0, 124, -1);
setSeVolumeByWorkId( spep_0 + 70, SE011, 46 );
SE012 = playSeVer2( spep_0 + 78, 1141, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 78, 1032, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 92, 1031, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 106, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE015, 73 );
SE016 = playSeVer2( spep_0 + 106, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 130, 1031, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 130, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE018, 76 );
--膝蹴り
SE019 = playSeVer2( spep_0 + 150, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE019, 70 );
--敵吹き飛ぶ
SE020 = playSeVer2( spep_0 + 158, 1027, "", 0, 0, 0, -1);
--腕伸ばす１
SE021 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 186, 1012, "", 0, 0, 0, -1);
--腕伸ばす２
SE023 = playSeVer2( spep_0 + 212, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 218, 1012, "", 0, 0, 0, -1);
--気ダメ
SE026 = playSeVer2( spep_0 + 270, 1035, "", 0, 0, 0, 0.6);
SE027 = playSeVer2( spep_0 + 276, 1122, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 276, SE027, 81 );
--オーラ
SE028 = playSeVer2( spep_0 + 282, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 306, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 330, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 378, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 402, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 426, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 450, 1036, "", 0, 0, 0, -1);
--両腕前に
SE032 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE034 = playSeVer2( spep_0 + 382, 1037, "",spep_0 + 472, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE034, 82 );
SE035 = playSeVer2( spep_0 + 382, 1199, "",spep_0 + 472, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE035, 85 );
SE036 = playSeVer2( spep_0 + 382, 1255, "",spep_0 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 382, SE036, 83 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 -1;  -- 472

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_1 + 88, 1133, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 88, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE042, 299 );
SE043 = playSeVer2( spep_1 + 88, 1213, "",spep_2 + 140, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 88, SE043, 54 );
SE044 = playSeVer2( spep_1 + 88, 1145, "", 0, 0, 0, -1);

------------------------------------------------------
-- トランクスが気弾を放っている～敵に当たる
------------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- トランクスが気弾を放っている～敵に当たる	ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- トランクスが気弾を放っている～敵に当たる	ef_002b
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
setDisp( spep_2 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 88 + OFFSET_X, 1, 241.7, -174.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 241.7, -174.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 243.3, -173.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 243.3, -173.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 245, -172.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 245, -172.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 246.6, -171.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 246.6, -171.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 248.3, -169.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 248.3, -169.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 250, -168.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 250, -168.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 251.6, -167.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 251.6, -167.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 253.3, -166.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 253.3, -166.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 254.9, -164.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 254.9, -164.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 256.6, -163.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 256.6, -163.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 258.3, -162.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 258.3, -162.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 266.6, -141.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 266.6, -141.6 , 0 );

setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.71, 0.71 );

setRotateKey( spep_2 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -39.7 );

setBlendColor( spep_2 + 112 + OFFSET_X, 1, 4, 1.0, 1.0, 0.0, 0.2 );
setBlendColor( spep_2 + 115 + OFFSET_X, 1, 4, 1.0, 1.0, 0.0, 0.2 );
setBlendColor( spep_2 + 116 + OFFSET_X, 1, 4, 0, 0, 0, 0 );

-- ** 音 ** --
--地響き
SE045 = playSeVer2( spep_2 + 46, 1044, "", 0, 0, 0, -1);
--爆発
SE046 = playSeVer2( spep_2 + 96, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 100, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 178 - 4

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- トランクスが突撃～気弾が膨れ上がる
------------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );     -- トランクスが突撃～気弾が膨れ上がる	ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );    -- トランクスが突撃～気弾が膨れ上がる	ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 268;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 76 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 96 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 112 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, -179.6, -420.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -179.6, -420.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -169.6, -378.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -169.6, -378.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -159.6, -336.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -159.6, -336.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -149.6, -294.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -149.6, -294.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -139.6, -252.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -139.6, -252.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -129.6, -210.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -129.6, -210.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -119.6, -168.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -119.6, -168.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -109.6, -126.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -109.6, -126.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -109.4, -125.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -109.4, -125.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -109.3, -124.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -109.3, -124.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -109.1, -124 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -109.1, -124 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -108.9, -123.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -108.9, -123.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -108.8, -122.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -108.8, -122.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -108.6, -122 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -108.6, -122 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -108.5, -121.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -108.5, -121.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -108.3, -120.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -108.3, -120.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -108.1, -119.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -108.1, -119.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -108, -119.3 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -108, -119.3 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -107.8, -118.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -107.8, -118.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -107.6, -117.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -107.6, -117.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -107.5, -117.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -107.5, -117.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -109.1, -114.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -109.1, -114.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -110.8, -111.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -110.8, -111.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 113.8, 42.7 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 113.8, 42.7 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 112, 44.9 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 112, 44.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 110.2, 47.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 110.2, 47.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 108.3, 49.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 108.3, 49.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 106.5, 51.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 106.5, 51.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 68.2, 3.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 68.2, 3.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 71.5, 15.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 71.5, 15.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 73.8, 20.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 73.8, 20.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 76.1, 25.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 76.1, 25.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 78.4, 30.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 78.4, 30.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -39, 5.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -39, 5.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -30.7, -19.8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -30.7, -19.8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -22.6, -10.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -22.6, -10.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -17.8, -9.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -17.8, -9.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -12.8, -8.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -12.8, -8.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -8, -7.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -8, -7.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -3, -6.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -3, -6.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 1.9, -5.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 1.9, -5.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -98.5, -37.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -98.5, -37.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -93.3, -61.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -93.3, -61.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -88.4, -50.2 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -88.4, -50.2 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -87.9, -48 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -87.9, -48 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -87.3, -45.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -87.3, -45.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -86.7, -43.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -86.7, -43.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -86.1, -41.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -86.1, -41.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -85.5, -39.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -85.5, -39.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -84.9, -37.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -84.9, -37.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -84.3, -35.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -84.3, -35.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -83.7, -33 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -83.7, -33 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -256.9, -119.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -256.9, -119.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -264.3, -152.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -264.3, -152.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -272, -149.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -272, -149.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -286, -156.2 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -286, -156.2 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -299.9, -163.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -299.9, -163.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -313.8, -170.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -313.8, -170.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -327.8, -177.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -327.8, -177.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -341.8, -184.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -341.8, -184.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -355.7, -191.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -355.7, -191.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -15.2, -62.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -15.2, -62.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -55.7, -43.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -55.7, -43.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -96.2, -23.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -96.2, -23.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -164.4, 8.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -164.4, 8.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -103, -34.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -103, -34.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -128.7, 57.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -128.7, 57.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -160.5, -26 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -160.5, -26 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -126.9, 7.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -126.9, 7.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -123.1, -20.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -123.1, -20.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -150.4, 3.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -150.4, 3.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -190.6, -5.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -190.6, -5.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -201.1, -5.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -201.1, -5.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -204.1, -3.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -204.1, -3.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -203.2, -0.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -203.2, -0.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -199.7, 3.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -199.7, 3.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -194.3, 8.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -194.3, 8.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -187.5, 13.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -187.5, 13.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -179.6, 19.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -179.6, 19.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -170.7, 25 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -170.7, 25 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -161.1, 31 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -161.1, 31 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -150.7, 37.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -150.7, 37.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -139.8, 43.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -139.8, 43.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -128.2, 50.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -128.2, 50.2 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.59, 0.59 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 75 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 21, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 155 );
--走っていく
SE003 = playSeVer2( spep_0 + 10, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 63 );
SE005 = playSeVer2( spep_0 + 14, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 158 );
SE006 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 158 );
SE007 = playSeVer2( spep_0 + 32, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE007, 158 );
SE008 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE008, 158 );
SE009 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE009, 158 );
SE010 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE010, 158 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 74;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);


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
--連続斬り
SE011 = playSeVer2( spep_0 + 70, 1278, "",spep_0 + 284, 0, 124, -1);
setSeVolumeByWorkId( spep_0 + 70, SE011, 46 );
SE012 = playSeVer2( spep_0 + 78, 1141, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 78, 1032, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 92, 1031, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 106, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE015, 73 );
SE016 = playSeVer2( spep_0 + 106, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 130, 1031, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 130, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE018, 76 );
--膝蹴り
SE019 = playSeVer2( spep_0 + 150, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE019, 70 );
--敵吹き飛ぶ
SE020 = playSeVer2( spep_0 + 158, 1027, "", 0, 0, 0, -1);
--腕伸ばす１
SE021 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 186, 1012, "", 0, 0, 0, -1);
--腕伸ばす２
SE023 = playSeVer2( spep_0 + 212, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 218, 1012, "", 0, 0, 0, -1);
--気ダメ
SE026 = playSeVer2( spep_0 + 270, 1035, "", 0, 0, 0, 0.6);
SE027 = playSeVer2( spep_0 + 276, 1122, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 276, SE027, 81 );
--オーラ
SE028 = playSeVer2( spep_0 + 282, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 306, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 330, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 378, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 402, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 426, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 450, 1036, "", 0, 0, 0, -1);
--両腕前に
SE032 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE034 = playSeVer2( spep_0 + 382, 1037, "",spep_0 + 472, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE034, 82 );
SE035 = playSeVer2( spep_0 + 382, 1199, "",spep_0 + 472, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE035, 85 );
SE036 = playSeVer2( spep_0 + 382, 1255, "",spep_0 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 382, SE036, 83 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 -1;  -- 472

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_1 + 88, 1133, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 88, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE042, 299 );
SE043 = playSeVer2( spep_1 + 88, 1213, "",spep_2 + 140, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 88, SE043, 54 );
SE044 = playSeVer2( spep_1 + 88, 1145, "", 0, 0, 0, -1);

------------------------------------------------------
-- トランクスが気弾を放っている～敵に当たる
------------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );    -- トランクスが気弾を放っている～敵に当たる	ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- トランクスが気弾を放っている～敵に当たる	ef_002b
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
setDisp( spep_2 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 88 + OFFSET_X, 1, 241.7, -174.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 241.7, -174.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 243.3, -173.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 243.3, -173.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 245, -172.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 245, -172.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 246.6, -171.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 246.6, -171.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 248.3, -169.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 248.3, -169.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 250, -168.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 250, -168.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 251.6, -167.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 251.6, -167.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 253.3, -166.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 253.3, -166.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 254.9, -164.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 254.9, -164.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 256.6, -163.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 256.6, -163.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 258.3, -162.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 258.3, -162.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 266.6, -141.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 266.6, -141.6 , 0 );

setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.71, 0.71 );

setRotateKey( spep_2 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -39.7 );

setBlendColor( spep_2 + 112 + OFFSET_X, 1, 4, 1.0, 1.0, 0.0, 0.2 );
setBlendColor( spep_2 + 115 + OFFSET_X, 1, 4, 1.0, 1.0, 0.0, 0.2 );
setBlendColor( spep_2 + 116 + OFFSET_X, 1, 4, 0, 0, 0, 0 );

-- ** 音 ** --
--地響き
SE045 = playSeVer2( spep_2 + 46, 1044, "", 0, 0, 0, -1);
--爆発
SE046 = playSeVer2( spep_2 + 96, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 100, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 178 - 4

end
