-- 1026820: LR_孫悟空_超必殺技_10倍界王拳
-- sp_effect_a1_00401
-- sp2569

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_05 = 1035;  -- カットイン攻撃

-- 味方側
SP_01 = 161923;  -- 開始、界王拳発動～奥から殴り飛ばし ef_001
SP_01b = 161924;  -- 開始、界王拳発動～奥から殴り飛ばし ef_001b
SP_02 = 161927;  -- 正面気合い～左右気弾 ef_002
SP_03 = 161928;  -- フィニッシュ ef_003
SP_03b = 161929;  -- フィニッシュ ef_003b
SP_04 = 161975;  -- フィニッシュ（全体攻撃繰り返し用） ef_004
SP_04b = 161976;  -- フィニッシュ（全体攻撃繰り返し用） ef_004b

-- 敵側
SP_01r = 161925;  -- 開始、界王拳発動～奥から殴り飛ばし ef_001r
SP_01br = 161926;  -- 開始、界王拳発動～奥から殴り飛ばし ef_001br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

--------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始、界王拳発動～奥から殴り飛ばし ef_001 (516F)
------------------------------------------------------
MAX_FRAME_0 = 516

-- ** エフェクト等 ** --
kaiouken1 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kaiouken1, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, kaiouken1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kaiouken1, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, kaiouken1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kaiouken1, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, kaiouken1, 0 );
setEffAlphaKey( spep_0 + 0, kaiouken1, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, kaiouken1, 255 );
kaiouken2 = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kaiouken2, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, kaiouken2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kaiouken2, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, kaiouken2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kaiouken2, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, kaiouken2, 0 );
setEffAlphaKey( spep_0 + 0, kaiouken2, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, kaiouken2, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
OFFSET_1 = -1

--敵の動き_1
setDisp( spep_0 + 98 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_1, 1, 100 );
changeAnime( spep_0 + 166 + OFFSET_1, 1, 102 );
changeAnime( spep_0 + 210 + OFFSET_1, 1, 107 );

setMoveKey( spep_0 + 98 + OFFSET_1, 1, 635.1, 653.7 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_1, 1, 635.1, 653.7 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_1, 1, 618.7, 639.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_1, 1, 618.7, 639.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_1, 1, 602.4, 625.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_1, 1, 602.4, 625.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_1, 1, 586, 611.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_1, 1, 586, 611.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_1, 1, 569.6, 596.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_1, 1, 569.6, 596.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_1, 1, 553.3, 582.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_1, 1, 553.3, 582.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_1, 1, 537, 568.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_1, 1, 537, 568.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_1, 1, 520.6, 554.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_1, 1, 520.6, 554.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_1, 1, 504.2, 540.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_1, 1, 504.2, 540.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_1, 1, 487.9, 526.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_1, 1, 487.9, 526.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_1, 1, 471.5, 511.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_1, 1, 471.5, 511.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_1, 1, 455.2, 497.7 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_1, 1, 455.2, 497.7 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_1, 1, 438.8, 483.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_1, 1, 438.8, 483.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_1, 1, 422.4, 469.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_1, 1, 422.4, 469.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_1, 1, 406.1, 455.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_1, 1, 406.1, 455.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_1, 1, 389.7, 440.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_1, 1, 389.7, 440.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_1, 1, 373.4, 426.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_1, 1, 373.4, 426.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_1, 1, 357, 412.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_1, 1, 357, 412.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_1, 1, 340.7, 398.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_1, 1, 340.7, 398.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_1, 1, 324.3, 384.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_1, 1, 324.3, 384.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_1, 1, 308, 370 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_1, 1, 308, 370 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_1, 1, 291.6, 355.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_1, 1, 291.6, 355.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_1, 1, 275.2, 341.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_1, 1, 275.2, 341.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_1, 1, 258.9, 327.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_1, 1, 258.9, 327.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_1, 1, 242.5, 313.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_1, 1, 242.5, 313.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_1, 1, 226.2, 299.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_1, 1, 226.2, 299.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_1, 1, 209.8, 284.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_1, 1, 209.8, 284.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_1, 1, 193.5, 270.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_1, 1, 193.5, 270.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_1, 1, 177.1, 256.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_1, 1, 177.1, 256.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_1, 1, 160.8, 242.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_1, 1, 160.8, 242.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_1, 1, 144.4, 228.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_1, 1, 144.4, 228.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_1, 1, 104.5, 17 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_1, 1, 104.5, 17 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_1, 1, 107.6, 17.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_1, 1, 107.6, 17.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_1, 1, 110.8, 17.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_1, 1, 110.8, 17.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_1, 1, 113.9, 17.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_1, 1, 113.9, 17.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_1, 1, 117.1, 17.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_1, 1, 117.1, 17.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_1, 1, 120.3, 17.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_1, 1, 120.3, 17.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_1, 1, 123.4, 18 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_1, 1, 123.4, 18 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_1, 1, 126.6, 18.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_1, 1, 126.6, 18.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_1, 1, 129.7, 18.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_1, 1, 129.7, 18.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_1, 1, 132.9, 18.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_1, 1, 132.9, 18.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_1, 1, 136.1, 18.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_1, 1, 136.1, 18.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_1, 1, 139.2, 18.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_1, 1, 139.2, 18.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_1, 1, 142.4, 18.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_1, 1, 142.4, 18.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_1, 1, 145.6, 19.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_1, 1, 145.6, 19.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_1, 1, 148.7, 19.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_1, 1, 148.7, 19.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_1, 1, 151.8, 19.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_1, 1, 151.8, 19.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_1, 1, 155, 19.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_1, 1, 155, 19.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_1, 1, 158.2, 19.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_1, 1, 158.2, 19.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_1, 1, 161.3, 19.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_1, 1, 161.3, 19.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_1, 1, 164.5, 20 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_1, 1, 164.5, 20 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_1, 1, 90.9, 8.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_1, 1, 90.9, 8.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_1, 1, 17.3, -3.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_1, 1, 17.3, -3.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_1, 1, 84.2, 1.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_1, 1, 84.2, 1.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_1, 1, 65.5, -32.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_1, 1, 65.5, -32.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_1, 1, 31, 6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_1, 1, 31, 6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_1, 1, 89.7, -5.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_1, 1, 89.7, -5.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_1, 1, 93.7, 14.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_1, 1, 93.7, 14.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_1, 1, 74.9, -19 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_1, 1, 74.9, -19 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_1, 1, 621.8, 314.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_1, 1, 621.8, 314.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_1, 1, 621.8, 314.5 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 100 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 101 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 102 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 106 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 107 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 108 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 110 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 111 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 112 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 116 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 117 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 118 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 122 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 123 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 124 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 126 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 127 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 128 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 132 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 133 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 134 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 138 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 139 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 140 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 142 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 143 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 144 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 148 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 149 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 150 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 154 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 155 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 156 + OFFSET_1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 165 + OFFSET_1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 166 + OFFSET_1, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 167 + OFFSET_1, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 168 + OFFSET_1, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 169 + OFFSET_1, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 170 + OFFSET_1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 171 + OFFSET_1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 172 + OFFSET_1, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 173 + OFFSET_1, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 174 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 175 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 176 + OFFSET_1, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 177 + OFFSET_1, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 178 + OFFSET_1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 179 + OFFSET_1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 180 + OFFSET_1, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 181 + OFFSET_1, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 182 + OFFSET_1, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 183 + OFFSET_1, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 184 + OFFSET_1, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 185 + OFFSET_1, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 186 + OFFSET_1, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 187 + OFFSET_1, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 188 + OFFSET_1, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 189 + OFFSET_1, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 190 + OFFSET_1, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 191 + OFFSET_1, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 192 + OFFSET_1, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 193 + OFFSET_1, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 194 + OFFSET_1, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 195 + OFFSET_1, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 196 + OFFSET_1, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 197 + OFFSET_1, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 198 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 199 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 200 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 201 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 202 + OFFSET_1, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 203 + OFFSET_1, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 204 + OFFSET_1, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 205 + OFFSET_1, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 206 + OFFSET_1, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 207 + OFFSET_1, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 208 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 209 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 210 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 211 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 212 + OFFSET_1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 213 + OFFSET_1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 214 + OFFSET_1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 215 + OFFSET_1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 216 + OFFSET_1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 217 + OFFSET_1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 218 + OFFSET_1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 219 + OFFSET_1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 220 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 221 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 222 + OFFSET_1, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 223 + OFFSET_1, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 224 + OFFSET_1, 1, 2.67, 2.67 );

setRotateKey( spep_0 + 98 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 166 + OFFSET_1, 1, -6 );
setRotateKey( spep_0 + 209 + OFFSET_1, 1, -6 );
setRotateKey( spep_0 + 210 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 220 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 221 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 222 + OFFSET_1, 1, -20.8 );
setRotateKey( spep_0 + 223 + OFFSET_1, 1, -20.8 );
setRotateKey( spep_0 + 224 + OFFSET_1, 1, -20.8 );

--敵の動き_2
setDisp( spep_0 + 234 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 234 + OFFSET_1, 1, 105 );

setMoveKey( spep_0 + 234 + OFFSET_1, 1, -323.2, -494.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_1, 1, -323.2, -494.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_1, 1, -181.3, -345.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_1, 1, -181.3, -345.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_1, 1, -61.5, -213.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_1, 1, -61.5, -213.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_1, 1, 35.9, -97.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_1, 1, 35.9, -97.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_1, 1, 111.3, 1.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_1, 1, 111.3, 1.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_1, 1, 164.7, 84.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_1, 1, 164.7, 84.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_1, 1, 195.5, 151.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_1, 1, 195.5, 151.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_1, 1, 204.1, 201.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_1, 1, 204.1, 201.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_1, 1, 190.4, 235 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_1, 1, 190.4, 235 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_1, 1, 154.6, 252.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_1, 1, 154.6, 252.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_1, 1, 154.6, 252.1 , 0 );

setScaleKey( spep_0 + 234 + OFFSET_1, 1, 9.35, 9.35 );
setScaleKey( spep_0 + 235 + OFFSET_1, 1, 9.35, 9.35 );
setScaleKey( spep_0 + 236 + OFFSET_1, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 237 + OFFSET_1, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 238 + OFFSET_1, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 239 + OFFSET_1, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 240 + OFFSET_1, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 241 + OFFSET_1, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 242 + OFFSET_1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 243 + OFFSET_1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 244 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 245 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 246 + OFFSET_1, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 247 + OFFSET_1, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 248 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 249 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 250 + OFFSET_1, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 251 + OFFSET_1, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 252 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 253 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 254 + OFFSET_1, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 234 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 254 + OFFSET_1, 1, 0 );

--敵の動き_3
setDisp( spep_0 + 356 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 414 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_1, 1, 108 );
changeAnime( spep_0 + 382 + OFFSET_1, 1, 106 );

setMoveKey( spep_0 + 356 + OFFSET_1, 1, 23.3, 22.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_1, 1, 23.3, 22.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_1, 1, 31.3, 21.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_1, 1, 31.3, 21.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_1, 1, 39.2, 21.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_1, 1, 39.2, 21.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_1, 1, 47.3, 21 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_1, 1, 47.3, 21 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_1, 1, 55.3, 20.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_1, 1, 55.3, 20.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_1, 1, 63.5, 20.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_1, 1, 63.5, 20.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_1, 1, 71.6, 19.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_1, 1, 71.6, 19.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_1, 1, 79.9, 19.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_1, 1, 79.9, 19.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_1, 1, 88.2, 19.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_1, 1, 88.2, 19.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_1, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_1, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_1, 1, 105, 18.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_1, 1, 105, 18.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_1, 1, 113.4, 18.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_1, 1, 113.4, 18.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_1, 1, 121.9, 17.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_1, 1, 121.9, 17.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_1, 1, 135.1, 148.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_1, 1, 135.1, 148.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_1, 1, 148.1, 96.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_1, 1, 148.1, 96.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_1, 1, 76.5, 91.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_1, 1, 76.5, 91.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_1, 1, 94.1, 175.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_1, 1, 94.1, 175.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_1, 1, 113, 143.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_1, 1, 113, 143.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_1, 1, 126, 92 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_1, 1, 126, 92 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_1, 1, 54.4, 87.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_1, 1, 54.4, 87.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_1, 1, 72, 170.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_1, 1, 72, 170.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_1, 1, 135.9, 80.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_1, 1, 135.9, 80.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_1, 1, 193.9, 158 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_1, 1, 193.9, 158 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_1, 1, 252, 235.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_1, 1, 252, 235.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_1, 1, 310, 313.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_1, 1, 310, 313.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_1, 1, 368, 391.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_1, 1, 368, 391.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_1, 1, 426.1, 469.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_1, 1, 426.1, 469.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_1, 1, 484.1, 547.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_1, 1, 484.1, 547.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_1, 1, 542.2, 625.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_1, 1, 542.2, 625.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_1, 1, 542.2, 625.5 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_1, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 357 + OFFSET_1, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 358 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 360 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 361 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 362 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 364 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 365 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 366 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 368 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 369 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 370 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 372 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 373 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 374 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 376 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 377 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 378 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 381 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 382 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 414 + OFFSET_1, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 356 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 381 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 382 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 396 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 397 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 398 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 414 + OFFSET_1, 1, 0 );

--敵の動き_4
setDisp( spep_0 + 466 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 516 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 466 + OFFSET_1, 1, 107 );
changeAnime( spep_0 + 498 + OFFSET_1, 1, 6 );

setMoveKey( spep_0 + 466 + OFFSET_1, 1, 11.6, 66.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_1, 1, 11.6, 66.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_1, 1, 16, 63.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_1, 1, 16, 63.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_1, 1, 20.5, 60 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_1, 1, 20.5, 60 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_1, 1, 25.1, 56.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_1, 1, 25.1, 56.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_1, 1, 29.8, 53.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_1, 1, 29.8, 53.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_1, 1, 34.6, 49.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_1, 1, 34.6, 49.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_1, 1, 39.5, 45.9 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_1, 1, 39.5, 45.9 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_1, 1, 44.5, 42.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_1, 1, 44.5, 42.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_1, 1, 49.6, 38.5 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_1, 1, 49.6, 38.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_1, 1, 54.8, 34.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_1, 1, 54.8, 34.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_1, 1, 60.1, 30.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_1, 1, 60.1, 30.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_1, 1, 65.5, 26.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_1, 1, 65.5, 26.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_1, 1, 71, 22.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_1, 1, 71, 22.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_1, 1, 76.7, 18.4 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_1, 1, 76.7, 18.4 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_1, 1, 82.5, 14.1 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_1, 1, 82.5, 14.1 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_1, 1, 88.4, 9.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_1, 1, 88.4, 9.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_1, 1, 172.3, -48.3 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_1, 1, 172.3, -48.3 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_1, 1, 250.8, -154.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_1, 1, 250.8, -154.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_1, 1, 354.2, -211 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_1, 1, 354.2, -211 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_1, 1, 477.4, -319.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_1, 1, 477.4, -319.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_1, 1, 581.5, -412.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_1, 1, 581.5, -412.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_1, 1, 667.5, -525.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_1, 1, 667.5, -525.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_1, 1, 778.3, -588.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_1, 1, 778.3, -588.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_1, 1, 908.9, -703.9 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_1, 1, 908.9, -703.9 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_1, 1, 1045.4, -822.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_1, 1, 1045.4, -822.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_1, 1, 1054.5, -829.9 , 0 );

setScaleKey( spep_0 + 466 + OFFSET_1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 467 + OFFSET_1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 468 + OFFSET_1, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 469 + OFFSET_1, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 470 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 471 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 472 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_0 + 473 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_0 + 474 + OFFSET_1, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 475 + OFFSET_1, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 476 + OFFSET_1, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 477 + OFFSET_1, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 478 + OFFSET_1, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 479 + OFFSET_1, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 480 + OFFSET_1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 481 + OFFSET_1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 482 + OFFSET_1, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 483 + OFFSET_1, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 484 + OFFSET_1, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 485 + OFFSET_1, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 486 + OFFSET_1, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 487 + OFFSET_1, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 488 + OFFSET_1, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 489 + OFFSET_1, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 490 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 491 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 492 + OFFSET_1, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 493 + OFFSET_1, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 494 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 495 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 496 + OFFSET_1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 497 + OFFSET_1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 498 + OFFSET_1, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 499 + OFFSET_1, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 500 + OFFSET_1, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 501 + OFFSET_1, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 502 + OFFSET_1, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 503 + OFFSET_1, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 504 + OFFSET_1, 1, 5, 5 );
setScaleKey( spep_0 + 505 + OFFSET_1, 1, 5, 5 );
setScaleKey( spep_0 + 506 + OFFSET_1, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 507 + OFFSET_1, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 508 + OFFSET_1, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 509 + OFFSET_1, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 510 + OFFSET_1, 1, 6.39, 6.39 );
setScaleKey( spep_0 + 511 + OFFSET_1, 1, 6.39, 6.39 );
setScaleKey( spep_0 + 512 + OFFSET_1, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 513 + OFFSET_1, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 514 + OFFSET_1, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 515 + OFFSET_1, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 516 + OFFSET_1, 1, 7.42, 7.42 );

setRotateKey( spep_0 + 466 + OFFSET_1, 1, 8 );
setRotateKey( spep_0 + 467 + OFFSET_1, 1, 8 );
setRotateKey( spep_0 + 468 + OFFSET_1, 1, 7.5 );
setRotateKey( spep_0 + 469 + OFFSET_1, 1, 7.5 );
setRotateKey( spep_0 + 470 + OFFSET_1, 1, 6.9 );
setRotateKey( spep_0 + 471 + OFFSET_1, 1, 6.9 );
setRotateKey( spep_0 + 472 + OFFSET_1, 1, 6.4 );
setRotateKey( spep_0 + 473 + OFFSET_1, 1, 6.4 );
setRotateKey( spep_0 + 474 + OFFSET_1, 1, 5.9 );
setRotateKey( spep_0 + 475 + OFFSET_1, 1, 5.9 );
setRotateKey( spep_0 + 476 + OFFSET_1, 1, 5.3 );
setRotateKey( spep_0 + 477 + OFFSET_1, 1, 5.3 );
setRotateKey( spep_0 + 478 + OFFSET_1, 1, 4.8 );
setRotateKey( spep_0 + 479 + OFFSET_1, 1, 4.8 );
setRotateKey( spep_0 + 480 + OFFSET_1, 1, 4.3 );
setRotateKey( spep_0 + 481 + OFFSET_1, 1, 4.3 );
setRotateKey( spep_0 + 482 + OFFSET_1, 1, 3.7 );
setRotateKey( spep_0 + 483 + OFFSET_1, 1, 3.7 );
setRotateKey( spep_0 + 484 + OFFSET_1, 1, 3.2 );
setRotateKey( spep_0 + 485 + OFFSET_1, 1, 3.2 );
setRotateKey( spep_0 + 486 + OFFSET_1, 1, 2.7 );
setRotateKey( spep_0 + 487 + OFFSET_1, 1, 2.7 );
setRotateKey( spep_0 + 488 + OFFSET_1, 1, 2.1 );
setRotateKey( spep_0 + 489 + OFFSET_1, 1, 2.1 );
setRotateKey( spep_0 + 490 + OFFSET_1, 1, 1.6 );
setRotateKey( spep_0 + 491 + OFFSET_1, 1, 1.6 );
setRotateKey( spep_0 + 492 + OFFSET_1, 1, 1.1 );
setRotateKey( spep_0 + 493 + OFFSET_1, 1, 1.1 );
setRotateKey( spep_0 + 494 + OFFSET_1, 1, 0.5 );
setRotateKey( spep_0 + 495 + OFFSET_1, 1, 0.5 );
setRotateKey( spep_0 + 496 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 497 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 498 + OFFSET_1, 1, 134 );
setRotateKey( spep_0 + 499 + OFFSET_1, 1, 134 );
setRotateKey( spep_0 + 500 + OFFSET_1, 1, 130 );
setRotateKey( spep_0 + 501 + OFFSET_1, 1, 130 );
setRotateKey( spep_0 + 502 + OFFSET_1, 1, 126 );
setRotateKey( spep_0 + 503 + OFFSET_1, 1, 126 );
setRotateKey( spep_0 + 504 + OFFSET_1, 1, 122 );
setRotateKey( spep_0 + 505 + OFFSET_1, 1, 122 );
setRotateKey( spep_0 + 506 + OFFSET_1, 1, 118 );
setRotateKey( spep_0 + 507 + OFFSET_1, 1, 118 );
setRotateKey( spep_0 + 508 + OFFSET_1, 1, 114 );
setRotateKey( spep_0 + 509 + OFFSET_1, 1, 114 );
setRotateKey( spep_0 + 510 + OFFSET_1, 1, 110 );
setRotateKey( spep_0 + 516 + OFFSET_1, 1, 110 );

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--気を溜める
SE002 = playSeVer2( spep_0 + 50, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE002, 155 );
SE003 = playSeVer2( spep_0 + 50, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 56 );
SE004 = playSeVer2( spep_0 + 50, 1024, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 77 );
--飛び立つ
SE005 = playSeVer2( spep_0 + 128, 1011, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 128, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 128, 1277, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2 , 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
     
    kaihi1 = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
     
    do return end
    else end
     
    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_0 + 164, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 50 );
SE009 = playSeVer2( spep_0 + 164, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE009, 89 );
SE010 = playSeVer2( spep_0 + 164, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE010, 78 );
--殴り飛ばす
SE011 = playSeVer2( spep_0 + 212, 1190, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE014 = playSeVer2( spep_0 + 236, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE014, 76 );
--追いかける
SE015 = playSeVer2( spep_0 + 256, 1172, "", 0, 16, 0, 0.6);
setStartTimeMs( SE015,  133 );
setPitch( spep_0 + 256, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
SE016 = playSeVer2( spep_0 + 252, 1011, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 252, 44, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 286, 1245, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 290, 1277, "", 0, 0, 0, -1);
--向かっていく
SE020 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 444, 12, 42, -1);
setSeVolumeByWorkId( spep_0 + 356, SE020, 63 );
setStartTimeMs( SE020,  1000 );
SE021 = playSeVer2( spep_0 + 358, 1019, "",spep_0 + 396, 0, 16, -1);
--パンチ
SE022 = playSeVer2( spep_0 + 386, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 386, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE023, 79 );
--追いかける
SE024 = playSeVer2( spep_0 + 422, 1172, "", MAX_FRAME_0 + 17, 16, 10, 0.6);
setStartTimeMs( SE024,  133 );
setPitch( spep_0 + 422, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE025 = playSeVer2( spep_0 + 428, 1011, "", MAX_FRAME_0 + 17, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 428, SE025, 110 );
SE026 = playSeVer2( spep_0 + 430, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE026, 110 );
SE027 = playSeVer2( spep_0 + 430, 1176, "",spep_0 + 508, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 430, SE027, 110 );
--殴り飛ばす２
SE028 = playSeVer2( spep_0 + 498, 1359, "", MAX_FRAME_0 + 21, 0, 12, -1);
SE029 = playSeVer2( spep_0 + 500, 1187, "", MAX_FRAME_0 + 19, 0, 12, -1);
SE030 = playSeVer2( spep_0 + 500, 1153, "", MAX_FRAME_0 + 17, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 500, SE030, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1);

------------------------------------------------------
-- 正面気合い～左右気弾 ef_002 (164F)
------------------------------------------------------
MAX_FRAME_2 = 163

-- ** エフェクト等 ** --
kiai = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kiai, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, kiai, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kiai, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, kiai, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kiai, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, kiai, 0 );
setEffAlphaKey( spep_2 + 0, kiai, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, kiai, 255 );

-- ** 音 ** --
--オーラ
SE032 = playSeVer2( spep_2 + 1, 1176, "",spep_2 + 127, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 1, SE032, 85 );
SE033 = playSeVer2( spep_2 + 1, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1, SE033, 63 );
SE034 = playSeVer2( spep_2 + 25, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 25, SE034, 63 );
--気弾発射予兆
SE035 = playSeVer2( spep_2 + 29, 1278, "",spep_2 + 111, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 29, SE035, 81 );
SE036 = playSeVer2( spep_2 + 29, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 29, SE036, 79 );
setPitch( spep_2 + 29, SE036, -700 );
setTimeStretch( SE036, 0.53, 30, 4 );
--オーラ
SE037 = playSeVer2( spep_2 + 49, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 49, SE037, 63 );
--気を高める
SE038 = playSeVer2( spep_2 + 61, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 61, SE038, 158 );
SE039 = playSeVer2( spep_2 + 61, 1068, "", 0, 0, 0, -1);
--オーラ
SE040 = playSeVer2( spep_2 + 73, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 73, SE040, 63 );
SE041 = playSeVer2( spep_2 + 97, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 97, SE041, 63 );
--気弾発射
SE042 = playSeVer2( spep_2 + 103, 1145, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 103, 1120, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 103, 1213, "", spep_2 + 164 + 57 + 10, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 103, SE044, 66 );
--敵飛んでいく
SE046 = playSeVer2( spep_2 + 163, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 163, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 163, SE047, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; -- 164

------------------------------------------------------
-- フィニッシュ ef_003 (190F)
------------------------------------------------------
MAX_FRAME_3 = 190

-- ** エフェクト等 ** --
last1 = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, last1, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, last1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last1, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, last1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last1, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, last1, 0 );
setEffAlphaKey( spep_3 + 0, last1, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, last1, 255 );
last2 = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, last2, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, last2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last2, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, last2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last2, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, last2, 0 );
setEffAlphaKey( spep_3 + 0, last2, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, last2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 2 + OFFSET_1, 1, 1 );
setDisp( spep_3 + 20 + OFFSET_1, 1, 0 );

changeAnime( spep_3 + 2 + OFFSET_1, 1, 108 );

setMoveKey( spep_3 + 2 + OFFSET_1, 1, -677.4, -958.3 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_1, 1, -677.4, -958.3 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_1, 1, -451.5, -735.1 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_1, 1, -451.5, -735.1 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_1, 1, -226.8, -513.1 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_1, 1, -226.8, -513.1 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_1, 1, -3.4, -292.3 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_1, 1, -3.4, -292.3 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_1, 1, 45.2, -249.7 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_1, 1, 45.2, -249.7 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_1, 1, 93.6, -207.3 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_1, 1, 93.6, -207.3 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_1, 1, 141.4, -165.3 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_1, 1, 141.4, -165.3 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_1, 1, 189.1, -123.5 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_1, 1, 189.1, -123.5 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_1, 1, 339.8, 13.1 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_1, 1, 339.8, 13.1 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_1, 1, 473, 218.4 , 0 );

setScaleKey( spep_3 + 2 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 3 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 4 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 5 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6 + OFFSET_1, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 7 + OFFSET_1, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 8 + OFFSET_1, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 9 + OFFSET_1, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 10 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 11 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 12 + OFFSET_1, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 13 + OFFSET_1, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 14 + OFFSET_1, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 15 + OFFSET_1, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 16 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 17 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 18 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_3 + 19 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_3 + 20 + OFFSET_1, 1, 0.18, 0.18 );

setRotateKey( spep_3 + 2 + OFFSET_1, 1, 52 );
setRotateKey( spep_3 + 3 + OFFSET_1, 1, 52 );
setRotateKey( spep_3 + 4 + OFFSET_1, 1, 48.6 );
setRotateKey( spep_3 + 5 + OFFSET_1, 1, 48.6 );
setRotateKey( spep_3 + 6 + OFFSET_1, 1, 45.2 );
setRotateKey( spep_3 + 7 + OFFSET_1, 1, 45.2 );
setRotateKey( spep_3 + 8 + OFFSET_1, 1, 41.8 );
setRotateKey( spep_3 + 9 + OFFSET_1, 1, 41.8 );
setRotateKey( spep_3 + 10 + OFFSET_1, 1, 41 );
setRotateKey( spep_3 + 11 + OFFSET_1, 1, 41 );
setRotateKey( spep_3 + 12 + OFFSET_1, 1, 40.1 );
setRotateKey( spep_3 + 13 + OFFSET_1, 1, 40.1 );
setRotateKey( spep_3 + 14 + OFFSET_1, 1, 39.3 );
setRotateKey( spep_3 + 15 + OFFSET_1, 1, 39.3 );
setRotateKey( spep_3 + 16 + OFFSET_1, 1, 38.4 );
setRotateKey( spep_3 + 17 + OFFSET_1, 1, 38.4 );
setRotateKey( spep_3 + 18 + OFFSET_1, 1, 35 );
setRotateKey( spep_3 + 19 + OFFSET_1, 1, 35 );
setRotateKey( spep_3 + 20 + OFFSET_1, 1, 9 );

-- ** 音 ** --
--敵飛んでいく
SE045 = playSeVer2( spep_3 + 3, 1128, "",spep_3 + 109, 16, 50, 0.5);
setSeVolumeByWorkId( spep_3 + 3, SE045, 63 );
setStartTimeMs( SE045,  733 );
setPitch( spep_3 + 3, SE045, -800 );
setTimeStretch( SE045, 0.5, 30, 4 );
--爆発
SE048 = playSeVer2( spep_3 + 57, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 57, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_3 + 57 );
endPhase( spep_3 + MAX_FRAME_3 -4 ); -- 190

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始、界王拳発動～奥から殴り飛ばし ef_001 (516F)
------------------------------------------------------
MAX_FRAME_0 = 516

-- ** エフェクト等 ** --
kaiouken1 = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kaiouken1, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, kaiouken1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kaiouken1, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, kaiouken1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kaiouken1, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, kaiouken1, 0 );
setEffAlphaKey( spep_0 + 0, kaiouken1, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, kaiouken1, 255 );
kaiouken2 = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kaiouken2, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, kaiouken2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kaiouken2, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, kaiouken2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kaiouken2, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, kaiouken2, 0 );
setEffAlphaKey( spep_0 + 0, kaiouken2, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, kaiouken2, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--[[
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
OFFSET_1 = -1

--敵の動き_1
setDisp( spep_0 + 98 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_1, 1, 100 );
changeAnime( spep_0 + 166 + OFFSET_1, 1, 102 );
changeAnime( spep_0 + 210 + OFFSET_1, 1, 107 );

setMoveKey( spep_0 + 98 + OFFSET_1, 1, 635.1, 653.7 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_1, 1, 635.1, 653.7 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_1, 1, 618.7, 639.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_1, 1, 618.7, 639.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_1, 1, 602.4, 625.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_1, 1, 602.4, 625.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_1, 1, 586, 611.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_1, 1, 586, 611.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_1, 1, 569.6, 596.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_1, 1, 569.6, 596.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_1, 1, 553.3, 582.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_1, 1, 553.3, 582.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_1, 1, 537, 568.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_1, 1, 537, 568.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_1, 1, 520.6, 554.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_1, 1, 520.6, 554.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_1, 1, 504.2, 540.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_1, 1, 504.2, 540.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_1, 1, 487.9, 526.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_1, 1, 487.9, 526.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_1, 1, 471.5, 511.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_1, 1, 471.5, 511.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_1, 1, 455.2, 497.7 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_1, 1, 455.2, 497.7 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_1, 1, 438.8, 483.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_1, 1, 438.8, 483.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_1, 1, 422.4, 469.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_1, 1, 422.4, 469.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_1, 1, 406.1, 455.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_1, 1, 406.1, 455.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_1, 1, 389.7, 440.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_1, 1, 389.7, 440.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_1, 1, 373.4, 426.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_1, 1, 373.4, 426.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_1, 1, 357, 412.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_1, 1, 357, 412.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_1, 1, 340.7, 398.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_1, 1, 340.7, 398.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_1, 1, 324.3, 384.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_1, 1, 324.3, 384.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_1, 1, 308, 370 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_1, 1, 308, 370 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_1, 1, 291.6, 355.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_1, 1, 291.6, 355.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_1, 1, 275.2, 341.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_1, 1, 275.2, 341.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_1, 1, 258.9, 327.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_1, 1, 258.9, 327.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_1, 1, 242.5, 313.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_1, 1, 242.5, 313.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_1, 1, 226.2, 299.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_1, 1, 226.2, 299.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_1, 1, 209.8, 284.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_1, 1, 209.8, 284.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_1, 1, 193.5, 270.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_1, 1, 193.5, 270.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_1, 1, 177.1, 256.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_1, 1, 177.1, 256.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_1, 1, 160.8, 242.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_1, 1, 160.8, 242.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_1, 1, 144.4, 228.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_1, 1, 144.4, 228.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_1, 1, 104.5, 17 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_1, 1, 104.5, 17 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_1, 1, 107.6, 17.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_1, 1, 107.6, 17.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_1, 1, 110.8, 17.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_1, 1, 110.8, 17.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_1, 1, 113.9, 17.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_1, 1, 113.9, 17.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_1, 1, 117.1, 17.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_1, 1, 117.1, 17.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_1, 1, 120.3, 17.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_1, 1, 120.3, 17.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_1, 1, 123.4, 18 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_1, 1, 123.4, 18 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_1, 1, 126.6, 18.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_1, 1, 126.6, 18.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_1, 1, 129.7, 18.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_1, 1, 129.7, 18.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_1, 1, 132.9, 18.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_1, 1, 132.9, 18.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_1, 1, 136.1, 18.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_1, 1, 136.1, 18.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_1, 1, 139.2, 18.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_1, 1, 139.2, 18.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_1, 1, 142.4, 18.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_1, 1, 142.4, 18.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_1, 1, 145.6, 19.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_1, 1, 145.6, 19.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_1, 1, 148.7, 19.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_1, 1, 148.7, 19.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_1, 1, 151.8, 19.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_1, 1, 151.8, 19.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_1, 1, 155, 19.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_1, 1, 155, 19.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_1, 1, 158.2, 19.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_1, 1, 158.2, 19.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_1, 1, 161.3, 19.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_1, 1, 161.3, 19.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_1, 1, 164.5, 20 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_1, 1, 164.5, 20 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_1, 1, 90.9, 8.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_1, 1, 90.9, 8.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_1, 1, 17.3, -3.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_1, 1, 17.3, -3.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_1, 1, 84.2, 1.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_1, 1, 84.2, 1.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_1, 1, 65.5, -32.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_1, 1, 65.5, -32.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_1, 1, 31, 6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_1, 1, 31, 6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_1, 1, 89.7, -5.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_1, 1, 89.7, -5.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_1, 1, 93.7, 14.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_1, 1, 93.7, 14.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_1, 1, 74.9, -19 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_1, 1, 74.9, -19 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_1, 1, 621.8, 314.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_1, 1, 621.8, 314.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_1, 1, 621.8, 314.5 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 100 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 101 + OFFSET_1, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 102 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 106 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 107 + OFFSET_1, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 108 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 110 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 111 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 112 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 116 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 117 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 118 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 122 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 123 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 124 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 126 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 127 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 128 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 132 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 133 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 134 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 138 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 139 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 140 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 142 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 143 + OFFSET_1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 144 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 148 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 149 + OFFSET_1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 150 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 154 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 155 + OFFSET_1, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 156 + OFFSET_1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 165 + OFFSET_1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 166 + OFFSET_1, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 167 + OFFSET_1, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 168 + OFFSET_1, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 169 + OFFSET_1, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 170 + OFFSET_1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 171 + OFFSET_1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 172 + OFFSET_1, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 173 + OFFSET_1, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 174 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 175 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 176 + OFFSET_1, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 177 + OFFSET_1, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 178 + OFFSET_1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 179 + OFFSET_1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 180 + OFFSET_1, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 181 + OFFSET_1, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 182 + OFFSET_1, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 183 + OFFSET_1, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 184 + OFFSET_1, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 185 + OFFSET_1, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 186 + OFFSET_1, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 187 + OFFSET_1, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 188 + OFFSET_1, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 189 + OFFSET_1, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 190 + OFFSET_1, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 191 + OFFSET_1, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 192 + OFFSET_1, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 193 + OFFSET_1, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 194 + OFFSET_1, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 195 + OFFSET_1, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 196 + OFFSET_1, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 197 + OFFSET_1, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 198 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 199 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 200 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 201 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 202 + OFFSET_1, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 203 + OFFSET_1, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 204 + OFFSET_1, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 205 + OFFSET_1, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 206 + OFFSET_1, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 207 + OFFSET_1, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 208 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 209 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 210 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 211 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 212 + OFFSET_1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 213 + OFFSET_1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 214 + OFFSET_1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 215 + OFFSET_1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 216 + OFFSET_1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 217 + OFFSET_1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 218 + OFFSET_1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 219 + OFFSET_1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 220 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 221 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 222 + OFFSET_1, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 223 + OFFSET_1, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 224 + OFFSET_1, 1, 2.67, 2.67 );

setRotateKey( spep_0 + 98 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 166 + OFFSET_1, 1, -6 );
setRotateKey( spep_0 + 209 + OFFSET_1, 1, -6 );
setRotateKey( spep_0 + 210 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 220 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 221 + OFFSET_1, 1, -21 );
setRotateKey( spep_0 + 222 + OFFSET_1, 1, -20.8 );
setRotateKey( spep_0 + 223 + OFFSET_1, 1, -20.8 );
setRotateKey( spep_0 + 224 + OFFSET_1, 1, -20.8 );

--敵の動き_2
setDisp( spep_0 + 234 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 234 + OFFSET_1, 1, 105 );

setMoveKey( spep_0 + 234 + OFFSET_1, 1, -323.2, -494.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_1, 1, -323.2, -494.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_1, 1, -181.3, -345.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_1, 1, -181.3, -345.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_1, 1, -61.5, -213.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_1, 1, -61.5, -213.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_1, 1, 35.9, -97.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_1, 1, 35.9, -97.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_1, 1, 111.3, 1.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_1, 1, 111.3, 1.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_1, 1, 164.7, 84.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_1, 1, 164.7, 84.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_1, 1, 195.5, 151.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_1, 1, 195.5, 151.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_1, 1, 204.1, 201.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_1, 1, 204.1, 201.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_1, 1, 190.4, 235 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_1, 1, 190.4, 235 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_1, 1, 154.6, 252.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_1, 1, 154.6, 252.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_1, 1, 154.6, 252.1 , 0 );

setScaleKey( spep_0 + 234 + OFFSET_1, 1, 9.35, 9.35 );
setScaleKey( spep_0 + 235 + OFFSET_1, 1, 9.35, 9.35 );
setScaleKey( spep_0 + 236 + OFFSET_1, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 237 + OFFSET_1, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 238 + OFFSET_1, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 239 + OFFSET_1, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 240 + OFFSET_1, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 241 + OFFSET_1, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 242 + OFFSET_1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 243 + OFFSET_1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 244 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 245 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 246 + OFFSET_1, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 247 + OFFSET_1, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 248 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 249 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 250 + OFFSET_1, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 251 + OFFSET_1, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 252 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 253 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 254 + OFFSET_1, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 234 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 254 + OFFSET_1, 1, 0 );

--敵の動き_3
setDisp( spep_0 + 356 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 414 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_1, 1, 108 );
changeAnime( spep_0 + 382 + OFFSET_1, 1, 106 );

setMoveKey( spep_0 + 356 + OFFSET_1, 1, 23.3, 22.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_1, 1, 23.3, 22.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_1, 1, 31.3, 21.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_1, 1, 31.3, 21.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_1, 1, 39.2, 21.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_1, 1, 39.2, 21.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_1, 1, 47.3, 21 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_1, 1, 47.3, 21 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_1, 1, 55.3, 20.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_1, 1, 55.3, 20.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_1, 1, 63.5, 20.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_1, 1, 63.5, 20.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_1, 1, 71.6, 19.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_1, 1, 71.6, 19.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_1, 1, 79.9, 19.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_1, 1, 79.9, 19.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_1, 1, 88.2, 19.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_1, 1, 88.2, 19.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_1, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_1, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_1, 1, 105, 18.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_1, 1, 105, 18.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_1, 1, 113.4, 18.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_1, 1, 113.4, 18.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_1, 1, 121.9, 17.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_1, 1, 121.9, 17.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_1, 1, 135.1, 148.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_1, 1, 135.1, 148.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_1, 1, 148.1, 96.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_1, 1, 148.1, 96.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_1, 1, 76.5, 91.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_1, 1, 76.5, 91.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_1, 1, 94.1, 175.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_1, 1, 94.1, 175.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_1, 1, 113, 143.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_1, 1, 113, 143.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_1, 1, 126, 92 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_1, 1, 126, 92 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_1, 1, 54.4, 87.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_1, 1, 54.4, 87.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_1, 1, 72, 170.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_1, 1, 72, 170.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_1, 1, 135.9, 80.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_1, 1, 135.9, 80.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_1, 1, 193.9, 158 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_1, 1, 193.9, 158 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_1, 1, 252, 235.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_1, 1, 252, 235.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_1, 1, 310, 313.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_1, 1, 310, 313.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_1, 1, 368, 391.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_1, 1, 368, 391.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_1, 1, 426.1, 469.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_1, 1, 426.1, 469.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_1, 1, 484.1, 547.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_1, 1, 484.1, 547.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_1, 1, 542.2, 625.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_1, 1, 542.2, 625.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_1, 1, 542.2, 625.5 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_1, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 357 + OFFSET_1, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 358 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 360 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 361 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 362 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 364 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 365 + OFFSET_1, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 366 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 368 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 369 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 370 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 372 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 373 + OFFSET_1, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 374 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 376 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 377 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 378 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 381 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 382 + OFFSET_1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 414 + OFFSET_1, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 356 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 381 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 382 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 396 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 397 + OFFSET_1, 1, -24 );
setRotateKey( spep_0 + 398 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 414 + OFFSET_1, 1, 0 );

--敵の動き_4
setDisp( spep_0 + 466 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 516 + OFFSET_1, 1, 0 );

changeAnime( spep_0 + 466 + OFFSET_1, 1, 107 );
changeAnime( spep_0 + 498 + OFFSET_1, 1, 6 );

setMoveKey( spep_0 + 466 + OFFSET_1, 1, 11.6, 66.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_1, 1, 11.6, 66.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_1, 1, 16, 63.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_1, 1, 16, 63.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_1, 1, 20.5, 60 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_1, 1, 20.5, 60 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_1, 1, 25.1, 56.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_1, 1, 25.1, 56.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_1, 1, 29.8, 53.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_1, 1, 29.8, 53.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_1, 1, 34.6, 49.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_1, 1, 34.6, 49.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_1, 1, 39.5, 45.9 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_1, 1, 39.5, 45.9 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_1, 1, 44.5, 42.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_1, 1, 44.5, 42.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_1, 1, 49.6, 38.5 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_1, 1, 49.6, 38.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_1, 1, 54.8, 34.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_1, 1, 54.8, 34.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_1, 1, 60.1, 30.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_1, 1, 60.1, 30.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_1, 1, 65.5, 26.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_1, 1, 65.5, 26.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_1, 1, 71, 22.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_1, 1, 71, 22.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_1, 1, 76.7, 18.4 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_1, 1, 76.7, 18.4 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_1, 1, 82.5, 14.1 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_1, 1, 82.5, 14.1 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_1, 1, 88.4, 9.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_1, 1, 88.4, 9.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_1, 1, 172.3, -48.3 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_1, 1, 172.3, -48.3 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_1, 1, 250.8, -154.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_1, 1, 250.8, -154.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_1, 1, 354.2, -211 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_1, 1, 354.2, -211 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_1, 1, 477.4, -319.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_1, 1, 477.4, -319.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_1, 1, 581.5, -412.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_1, 1, 581.5, -412.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_1, 1, 667.5, -525.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_1, 1, 667.5, -525.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_1, 1, 778.3, -588.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_1, 1, 778.3, -588.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_1, 1, 908.9, -703.9 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_1, 1, 908.9, -703.9 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_1, 1, 1045.4, -822.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_1, 1, 1045.4, -822.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_1, 1, 1054.5, -829.9 , 0 );

setScaleKey( spep_0 + 466 + OFFSET_1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 467 + OFFSET_1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 468 + OFFSET_1, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 469 + OFFSET_1, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 470 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 471 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 472 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_0 + 473 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_0 + 474 + OFFSET_1, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 475 + OFFSET_1, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 476 + OFFSET_1, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 477 + OFFSET_1, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 478 + OFFSET_1, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 479 + OFFSET_1, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 480 + OFFSET_1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 481 + OFFSET_1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 482 + OFFSET_1, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 483 + OFFSET_1, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 484 + OFFSET_1, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 485 + OFFSET_1, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 486 + OFFSET_1, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 487 + OFFSET_1, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 488 + OFFSET_1, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 489 + OFFSET_1, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 490 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 491 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 492 + OFFSET_1, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 493 + OFFSET_1, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 494 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 495 + OFFSET_1, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 496 + OFFSET_1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 497 + OFFSET_1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 498 + OFFSET_1, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 499 + OFFSET_1, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 500 + OFFSET_1, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 501 + OFFSET_1, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 502 + OFFSET_1, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 503 + OFFSET_1, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 504 + OFFSET_1, 1, 5, 5 );
setScaleKey( spep_0 + 505 + OFFSET_1, 1, 5, 5 );
setScaleKey( spep_0 + 506 + OFFSET_1, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 507 + OFFSET_1, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 508 + OFFSET_1, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 509 + OFFSET_1, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 510 + OFFSET_1, 1, 6.39, 6.39 );
setScaleKey( spep_0 + 511 + OFFSET_1, 1, 6.39, 6.39 );
setScaleKey( spep_0 + 512 + OFFSET_1, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 513 + OFFSET_1, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 514 + OFFSET_1, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 515 + OFFSET_1, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 516 + OFFSET_1, 1, 7.42, 7.42 );

setRotateKey( spep_0 + 466 + OFFSET_1, 1, 8 );
setRotateKey( spep_0 + 467 + OFFSET_1, 1, 8 );
setRotateKey( spep_0 + 468 + OFFSET_1, 1, 7.5 );
setRotateKey( spep_0 + 469 + OFFSET_1, 1, 7.5 );
setRotateKey( spep_0 + 470 + OFFSET_1, 1, 6.9 );
setRotateKey( spep_0 + 471 + OFFSET_1, 1, 6.9 );
setRotateKey( spep_0 + 472 + OFFSET_1, 1, 6.4 );
setRotateKey( spep_0 + 473 + OFFSET_1, 1, 6.4 );
setRotateKey( spep_0 + 474 + OFFSET_1, 1, 5.9 );
setRotateKey( spep_0 + 475 + OFFSET_1, 1, 5.9 );
setRotateKey( spep_0 + 476 + OFFSET_1, 1, 5.3 );
setRotateKey( spep_0 + 477 + OFFSET_1, 1, 5.3 );
setRotateKey( spep_0 + 478 + OFFSET_1, 1, 4.8 );
setRotateKey( spep_0 + 479 + OFFSET_1, 1, 4.8 );
setRotateKey( spep_0 + 480 + OFFSET_1, 1, 4.3 );
setRotateKey( spep_0 + 481 + OFFSET_1, 1, 4.3 );
setRotateKey( spep_0 + 482 + OFFSET_1, 1, 3.7 );
setRotateKey( spep_0 + 483 + OFFSET_1, 1, 3.7 );
setRotateKey( spep_0 + 484 + OFFSET_1, 1, 3.2 );
setRotateKey( spep_0 + 485 + OFFSET_1, 1, 3.2 );
setRotateKey( spep_0 + 486 + OFFSET_1, 1, 2.7 );
setRotateKey( spep_0 + 487 + OFFSET_1, 1, 2.7 );
setRotateKey( spep_0 + 488 + OFFSET_1, 1, 2.1 );
setRotateKey( spep_0 + 489 + OFFSET_1, 1, 2.1 );
setRotateKey( spep_0 + 490 + OFFSET_1, 1, 1.6 );
setRotateKey( spep_0 + 491 + OFFSET_1, 1, 1.6 );
setRotateKey( spep_0 + 492 + OFFSET_1, 1, 1.1 );
setRotateKey( spep_0 + 493 + OFFSET_1, 1, 1.1 );
setRotateKey( spep_0 + 494 + OFFSET_1, 1, 0.5 );
setRotateKey( spep_0 + 495 + OFFSET_1, 1, 0.5 );
setRotateKey( spep_0 + 496 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 497 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 498 + OFFSET_1, 1, 134 );
setRotateKey( spep_0 + 499 + OFFSET_1, 1, 134 );
setRotateKey( spep_0 + 500 + OFFSET_1, 1, 130 );
setRotateKey( spep_0 + 501 + OFFSET_1, 1, 130 );
setRotateKey( spep_0 + 502 + OFFSET_1, 1, 126 );
setRotateKey( spep_0 + 503 + OFFSET_1, 1, 126 );
setRotateKey( spep_0 + 504 + OFFSET_1, 1, 122 );
setRotateKey( spep_0 + 505 + OFFSET_1, 1, 122 );
setRotateKey( spep_0 + 506 + OFFSET_1, 1, 118 );
setRotateKey( spep_0 + 507 + OFFSET_1, 1, 118 );
setRotateKey( spep_0 + 508 + OFFSET_1, 1, 114 );
setRotateKey( spep_0 + 509 + OFFSET_1, 1, 114 );
setRotateKey( spep_0 + 510 + OFFSET_1, 1, 110 );
setRotateKey( spep_0 + 516 + OFFSET_1, 1, 110 );

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--気を溜める
SE002 = playSeVer2( spep_0 + 50, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE002, 155 );
SE003 = playSeVer2( spep_0 + 50, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 56 );
SE004 = playSeVer2( spep_0 + 50, 1024, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 77 );
--飛び立つ
SE005 = playSeVer2( spep_0 + 128, 1011, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 128, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 128, 1277, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2 , 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
     
    kaihi1 = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
     
    do return end
    else end
     
    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_0 + 164, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 50 );
SE009 = playSeVer2( spep_0 + 164, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE009, 89 );
SE010 = playSeVer2( spep_0 + 164, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE010, 78 );
--殴り飛ばす
SE011 = playSeVer2( spep_0 + 212, 1190, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE014 = playSeVer2( spep_0 + 236, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE014, 76 );
--追いかける
SE015 = playSeVer2( spep_0 + 256, 1172, "", 0, 16, 0, 0.6);
setStartTimeMs( SE015,  133 );
setPitch( spep_0 + 256, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
SE016 = playSeVer2( spep_0 + 252, 1011, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 252, 44, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 286, 1245, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 290, 1277, "", 0, 0, 0, -1);
--向かっていく
SE020 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 444, 12, 42, -1);
setSeVolumeByWorkId( spep_0 + 356, SE020, 63 );
setStartTimeMs( SE020,  1000 );
SE021 = playSeVer2( spep_0 + 358, 1019, "",spep_0 + 396, 0, 16, -1);
--パンチ
SE022 = playSeVer2( spep_0 + 386, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 386, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE023, 79 );
--追いかける
SE024 = playSeVer2( spep_0 + 422, 1172, "", MAX_FRAME_0 + 17, 16, 10, 0.6);
setStartTimeMs( SE024,  133 );
setPitch( spep_0 + 422, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE025 = playSeVer2( spep_0 + 428, 1011, "", MAX_FRAME_0 + 17, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 428, SE025, 110 );
SE026 = playSeVer2( spep_0 + 430, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE026, 110 );
SE027 = playSeVer2( spep_0 + 430, 1176, "",spep_0 + 508, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 430, SE027, 110 );
--殴り飛ばす２
SE028 = playSeVer2( spep_0 + 498, 1359, "", MAX_FRAME_0 + 21, 0, 12, -1);
SE029 = playSeVer2( spep_0 + 500, 1187, "", MAX_FRAME_0 + 19, 0, 12, -1);
SE030 = playSeVer2( spep_0 + 500, 1153, "", MAX_FRAME_0 + 17, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 500, SE030, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1);

------------------------------------------------------
-- 正面気合い～左右気弾 ef_002 (164F)
------------------------------------------------------
MAX_FRAME_2 = 163

-- ** エフェクト等 ** --
kiai = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kiai, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, kiai, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kiai, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, kiai, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kiai, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, kiai, 0 );
setEffAlphaKey( spep_2 + 0, kiai, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, kiai, 255 );

-- ** 音 ** --
--オーラ
SE032 = playSeVer2( spep_2 + 1, 1176, "",spep_2 + 127, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 1, SE032, 85 );
SE033 = playSeVer2( spep_2 + 1, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1, SE033, 63 );
SE034 = playSeVer2( spep_2 + 25, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 25, SE034, 63 );
--気弾発射予兆
SE035 = playSeVer2( spep_2 + 29, 1278, "",spep_2 + 111, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 29, SE035, 81 );
SE036 = playSeVer2( spep_2 + 29, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 29, SE036, 79 );
setPitch( spep_2 + 29, SE036, -700 );
setTimeStretch( SE036, 0.53, 30, 4 );
--オーラ
SE037 = playSeVer2( spep_2 + 49, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 49, SE037, 63 );
--気を高める
SE038 = playSeVer2( spep_2 + 61, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 61, SE038, 158 );
SE039 = playSeVer2( spep_2 + 61, 1068, "", 0, 0, 0, -1);
--オーラ
SE040 = playSeVer2( spep_2 + 73, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 73, SE040, 63 );
SE041 = playSeVer2( spep_2 + 97, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 97, SE041, 63 );
--気弾発射
SE042 = playSeVer2( spep_2 + 103, 1145, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 103, 1120, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 103, 1213, "", spep_2 + 164 + 57 + 10, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 103, SE044, 66 );
--敵飛んでいく
SE046 = playSeVer2( spep_2 + 163, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 163, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 163, SE047, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; -- 164

------------------------------------------------------
-- フィニッシュ ef_003 (190F)
------------------------------------------------------
MAX_FRAME_3 = 190

-- ** エフェクト等 ** --
last1 = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, last1, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, last1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last1, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, last1, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last1, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, last1, 0 );
setEffAlphaKey( spep_3 + 0, last1, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, last1, 255 );
last2 = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, last2, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, last2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last2, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, last2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last2, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, last2, 0 );
setEffAlphaKey( spep_3 + 0, last2, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, last2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 2 + OFFSET_1, 1, 1 );
setDisp( spep_3 + 20 + OFFSET_1, 1, 0 );

changeAnime( spep_3 + 2 + OFFSET_1, 1, 108 );

setMoveKey( spep_3 + 2 + OFFSET_1, 1, -662.9, -956.9 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_1, 1, -662.9, -956.9 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_1, 1, -423, -732.9 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_1, 1, -423, -732.9 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_1, 1, -185.2, -510.9 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_1, 1, -185.2, -510.9 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_1, 1, 50.7, -290.7 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_1, 1, 50.7, -290.7 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_1, 1, 112.5, -248 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_1, 1, 112.5, -248 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_1, 1, 173.8, -205.8 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_1, 1, 173.8, -205.8 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_1, 1, 234.6, -164 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_1, 1, 234.6, -164 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_1, 1, 295, -122.5 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_1, 1, 295, -122.5 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_1, 1, 456.7, 12.2 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_1, 1, 456.7, 12.2 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_1, 1, 582.7, 214.2 , 0 );

setScaleKey( spep_3 + 2 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 3 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 4 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 5 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 7 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 8 + OFFSET_1, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 9 + OFFSET_1, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 10 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 11 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 12 + OFFSET_1, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 13 + OFFSET_1, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 14 + OFFSET_1, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 15 + OFFSET_1, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 16 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 17 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 18 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 19 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 20 + OFFSET_1, 1, 0.18, 0.18 );

setRotateKey( spep_3 + 2 + OFFSET_1, 1, 52 );
setRotateKey( spep_3 + 3 + OFFSET_1, 1, 52 );
setRotateKey( spep_3 + 4 + OFFSET_1, 1, 48.6 );
setRotateKey( spep_3 + 5 + OFFSET_1, 1, 48.6 );
setRotateKey( spep_3 + 6 + OFFSET_1, 1, 45.2 );
setRotateKey( spep_3 + 7 + OFFSET_1, 1, 45.2 );
setRotateKey( spep_3 + 8 + OFFSET_1, 1, 41.8 );
setRotateKey( spep_3 + 9 + OFFSET_1, 1, 41.8 );
setRotateKey( spep_3 + 10 + OFFSET_1, 1, 41 );
setRotateKey( spep_3 + 11 + OFFSET_1, 1, 41 );
setRotateKey( spep_3 + 12 + OFFSET_1, 1, 40.1 );
setRotateKey( spep_3 + 13 + OFFSET_1, 1, 40.1 );
setRotateKey( spep_3 + 14 + OFFSET_1, 1, 39.3 );
setRotateKey( spep_3 + 15 + OFFSET_1, 1, 39.3 );
setRotateKey( spep_3 + 16 + OFFSET_1, 1, 38.4 );
setRotateKey( spep_3 + 17 + OFFSET_1, 1, 38.4 );
setRotateKey( spep_3 + 18 + OFFSET_1, 1, 35 );
setRotateKey( spep_3 + 19 + OFFSET_1, 1, 35 );
setRotateKey( spep_3 + 20 + OFFSET_1, 1, 9 );

-- ** 音 ** --
--敵飛んでいく
SE045 = playSeVer2( spep_3 + 3, 1128, "",spep_3 + 109, 16, 50, 0.5);
setSeVolumeByWorkId( spep_3 + 3, SE045, 63 );
setStartTimeMs( SE045,  733 );
setPitch( spep_3 + 3, SE045, -800 );
setTimeStretch( SE045, 0.5, 30, 4 );
--爆発
SE048 = playSeVer2( spep_3 + 57, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 57, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_3 + 57 );
endPhase( spep_3 + MAX_FRAME_3 -4 ); -- 190
end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ ef_003 (190F)
------------------------------------------------------
MAX_FRAME_3 = 190

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
last1 = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, last1, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, last1, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, last1, 1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, last1, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, last1, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, last1, 0 );
setEffAlphaKey( spep_z + 0, last1, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, last1, 255 );
last2 = entryEffect( spep_z + 0, SP_04b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, last2, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, last2, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, last2, 1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, last2, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, last2, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, last2, 0 );
setEffAlphaKey( spep_z + 0, last2, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, last2, 255 );

-- ** 敵キャラクター ** --
OFFSET_1 = -1

setDisp( spep_z + 1 + OFFSET_1, 1, 1 );
setDisp( spep_z + 20 + OFFSET_1, 1, 0 );

changeAnime( spep_z + 0 , 1, 8 );

setMoveKey( spep_z + 0, 1,  0, -5000,  0 );
setMoveKey( spep_z + 2 + OFFSET_1, 1, 662.9, -956.9 , 0 );
setMoveKey( spep_z + 3 + OFFSET_1, 1, 662.9, -956.9 , 0 );
setMoveKey( spep_z + 4 + OFFSET_1, 1, 423, -732.9 , 0 );
setMoveKey( spep_z + 5 + OFFSET_1, 1, 423, -732.9 , 0 );
setMoveKey( spep_z + 6 + OFFSET_1, 1, 185.2, -510.9 , 0 );
setMoveKey( spep_z + 7 + OFFSET_1, 1, 185.2, -510.9 , 0 );
setMoveKey( spep_z + 8 + OFFSET_1, 1, -50.7, -290.7 , 0 );
setMoveKey( spep_z + 9 + OFFSET_1, 1, -50.7, -290.7 , 0 );
setMoveKey( spep_z + 10 + OFFSET_1, 1, -112.5, -248 , 0 );
setMoveKey( spep_z + 11 + OFFSET_1, 1, -112.5, -248 , 0 );
setMoveKey( spep_z + 12 + OFFSET_1, 1, -173.8, -205.8 , 0 );
setMoveKey( spep_z + 13 + OFFSET_1, 1, -173.8, -205.8 , 0 );
setMoveKey( spep_z + 14 + OFFSET_1, 1, -234.6, -164 , 0 );
setMoveKey( spep_z + 15 + OFFSET_1, 1, -234.6, -164 , 0 );
setMoveKey( spep_z + 16 + OFFSET_1, 1, -295, -122.5 , 0 );
setMoveKey( spep_z + 17 + OFFSET_1, 1, -295, -122.5 , 0 );
setMoveKey( spep_z + 18 + OFFSET_1, 1, -456.7, 12.2 , 0 );
setMoveKey( spep_z + 19 + OFFSET_1, 1, -456.7, 12.2 , 0 );
setMoveKey( spep_z + 20 + OFFSET_1, 1, -582.7, 214.2 , 0 );

setScaleKey( spep_z + 0, 1, 1.6, 1.6 );
setScaleKey( spep_z + 2 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_z + 3 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_z + 4 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_z + 5 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_z + 6 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_z + 7 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_z + 8 + OFFSET_1, 1, 1.49, 1.49 );
setScaleKey( spep_z + 9 + OFFSET_1, 1, 1.49, 1.49 );
setScaleKey( spep_z + 10 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_z + 11 + OFFSET_1, 1, 1.42, 1.42 );
setScaleKey( spep_z + 12 + OFFSET_1, 1, 1.36, 1.36 );
setScaleKey( spep_z + 13 + OFFSET_1, 1, 1.36, 1.36 );
setScaleKey( spep_z + 14 + OFFSET_1, 1, 1.29, 1.29 );
setScaleKey( spep_z + 15 + OFFSET_1, 1, 1.29, 1.29 );
setScaleKey( spep_z + 16 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_z + 17 + OFFSET_1, 1, 1.23, 1.23 );
setScaleKey( spep_z + 18 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_z + 19 + OFFSET_1, 1, 0.99, 0.99 );
setScaleKey( spep_z + 20 + OFFSET_1, 1, 0.18, 0.18 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_1, 1, -52 );
setRotateKey( spep_z + 3 + OFFSET_1, 1, -52 );
setRotateKey( spep_z + 4 + OFFSET_1, 1, -48.6 );
setRotateKey( spep_z + 5 + OFFSET_1, 1, -48.6 );
setRotateKey( spep_z + 6 + OFFSET_1, 1, -45.2 );
setRotateKey( spep_z + 7 + OFFSET_1, 1, -45.2 );
setRotateKey( spep_z + 8 + OFFSET_1, 1, -41.8 );
setRotateKey( spep_z + 9 + OFFSET_1, 1, -41.8 );
setRotateKey( spep_z + 10 + OFFSET_1, 1, -41 );
setRotateKey( spep_z + 11 + OFFSET_1, 1, -41 );
setRotateKey( spep_z + 12 + OFFSET_1, 1, -40.1 );
setRotateKey( spep_z + 13 + OFFSET_1, 1, -40.1 );
setRotateKey( spep_z + 14 + OFFSET_1, 1, -39.3 );
setRotateKey( spep_z + 15 + OFFSET_1, 1, -39.3 );
setRotateKey( spep_z + 16 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_z + 17 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_z + 18 + OFFSET_1, 1, -35 );
setRotateKey( spep_z + 19 + OFFSET_1, 1, -35 );
setRotateKey( spep_z + 20 + OFFSET_1, 1, -9 );

-- ** 音 ** --
--【全体】敵飛んでいく
SE050 = playSeVer2( spep_z + 3, 1128, "",spep_z + 109, 16, 50, 0.5);
setSeVolumeByWorkId( spep_z + 3, SE050, 63 );
setStartTimeMs( SE050,  733 );
setPitch( spep_z + 3, SE050, -800 );
setTimeStretch( SE050, 0.5, 30, 4 );
SE051 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_z + 0, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE052, 126 );
--【全体】爆発
SE053 = playSeVer2( spep_z + 57, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_z + 57, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_z + 57 );
endPhase( spep_z + MAX_FRAME_3 -4 ); -- 190
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ ef_003 (190F)
------------------------------------------------------
MAX_FRAME_3 = 190

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
last1 = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, last1, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, last1, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, last1, -1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, last1, -1.0, 1.0 );
setEffRotateKey( spep_z + 0, last1, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, last1, 0 );
setEffAlphaKey( spep_z + 0, last1, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, last1, 255 );
last2 = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, last2, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, last2, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, last2, -1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, last2, -1.0, 1.0 );
setEffRotateKey( spep_z + 0, last2, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, last2, 0 );
setEffAlphaKey( spep_z + 0, last2, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, last2, 255 );

-- ** 敵キャラクター ** --
OFFSET_1 = -1

setDisp( spep_z + 1 + OFFSET_1, 1, 1 );
setDisp( spep_z + 20 + OFFSET_1, 1, 0 );

changeAnime( spep_z + 0 , 1, 8 );

setMoveKey( spep_z + 0, 1,  0, -5000,  0 );
setMoveKey( spep_z + 2 + OFFSET_1, 1, 677.4, -958.3 , 0 );
setMoveKey( spep_z + 3 + OFFSET_1, 1, 677.4, -958.3 , 0 );
setMoveKey( spep_z + 4 + OFFSET_1, 1, 451.5, -735.1 , 0 );
setMoveKey( spep_z + 5 + OFFSET_1, 1, 451.5, -735.1 , 0 );
setMoveKey( spep_z + 6 + OFFSET_1, 1, 226.8, -513.1 , 0 );
setMoveKey( spep_z + 7 + OFFSET_1, 1, 226.8, -513.1 , 0 );
setMoveKey( spep_z + 8 + OFFSET_1, 1, 3.4, -292.3 , 0 );
setMoveKey( spep_z + 9 + OFFSET_1, 1, 3.4, -292.3 , 0 );
setMoveKey( spep_z + 10 + OFFSET_1, 1, -45.2, -249.7 , 0 );
setMoveKey( spep_z + 11 + OFFSET_1, 1, -45.2, -249.7 , 0 );
setMoveKey( spep_z + 12 + OFFSET_1, 1, -93.6, -207.3 , 0 );
setMoveKey( spep_z + 13 + OFFSET_1, 1, -93.6, -207.3 , 0 );
setMoveKey( spep_z + 14 + OFFSET_1, 1, -141.4, -165.3 , 0 );
setMoveKey( spep_z + 15 + OFFSET_1, 1, -141.4, -165.3 , 0 );
setMoveKey( spep_z + 16 + OFFSET_1, 1, -189.1, -123.5 , 0 );
setMoveKey( spep_z + 17 + OFFSET_1, 1, -189.1, -123.5 , 0 );
setMoveKey( spep_z + 18 + OFFSET_1, 1, -339.8, 13.1 , 0 );
setMoveKey( spep_z + 19 + OFFSET_1, 1, -339.8, 13.1 , 0 );
setMoveKey( spep_z + 20 + OFFSET_1, 1, -473, 218.4 , 0 );

setScaleKey( spep_z + 0, 1, 1.6, 1.6 );
setScaleKey( spep_z + 2 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_z + 3 + OFFSET_1, 1, 2.24, 2.24 );
setScaleKey( spep_z + 4 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_z + 5 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_z + 6 + OFFSET_1, 1, 1.75, 1.75 );
setScaleKey( spep_z + 7 + OFFSET_1, 1, 1.75, 1.75 );
setScaleKey( spep_z + 8 + OFFSET_1, 1, 1.5, 1.5 );
setScaleKey( spep_z + 9 + OFFSET_1, 1, 1.5, 1.5 );
setScaleKey( spep_z + 10 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_z + 11 + OFFSET_1, 1, 1.44, 1.44 );
setScaleKey( spep_z + 12 + OFFSET_1, 1, 1.37, 1.37 );
setScaleKey( spep_z + 13 + OFFSET_1, 1, 1.37, 1.37 );
setScaleKey( spep_z + 14 + OFFSET_1, 1, 1.31, 1.31 );
setScaleKey( spep_z + 15 + OFFSET_1, 1, 1.31, 1.31 );
setScaleKey( spep_z + 16 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_z + 17 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_z + 18 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_z + 19 + OFFSET_1, 1, 1, 1 );
setScaleKey( spep_z + 20 + OFFSET_1, 1, 0.18, 0.18 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_1, 1, -52 );
setRotateKey( spep_z + 3 + OFFSET_1, 1, -52 );
setRotateKey( spep_z + 4 + OFFSET_1, 1, -48.6 );
setRotateKey( spep_z + 5 + OFFSET_1, 1, -48.6 );
setRotateKey( spep_z + 6 + OFFSET_1, 1, -45.2 );
setRotateKey( spep_z + 7 + OFFSET_1, 1, -45.2 );
setRotateKey( spep_z + 8 + OFFSET_1, 1, -41.8 );
setRotateKey( spep_z + 9 + OFFSET_1, 1, -41.8 );
setRotateKey( spep_z + 10 + OFFSET_1, 1, -41 );
setRotateKey( spep_z + 11 + OFFSET_1, 1, -41 );
setRotateKey( spep_z + 12 + OFFSET_1, 1, -40.1 );
setRotateKey( spep_z + 13 + OFFSET_1, 1, -40.1 );
setRotateKey( spep_z + 14 + OFFSET_1, 1, -39.3 );
setRotateKey( spep_z + 15 + OFFSET_1, 1, -39.3 );
setRotateKey( spep_z + 16 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_z + 17 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_z + 18 + OFFSET_1, 1, -35 );
setRotateKey( spep_z + 19 + OFFSET_1, 1, -35 );
setRotateKey( spep_z + 20 + OFFSET_1, 1, -9 );

-- ** 音 ** --
--【全体】敵飛んでいく
SE050 = playSeVer2( spep_z + 3, 1128, "",spep_z + 109, 16, 50, 0.5);
setSeVolumeByWorkId( spep_z + 3, SE050, 63 );
setStartTimeMs( SE050,  733 );
setPitch( spep_z + 3, SE050, -800 );
setTimeStretch( SE050, 0.5, 30, 4 );
SE051 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_z + 0, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE052, 126 );
--【全体】爆発
SE053 = playSeVer2( spep_z + 57, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_z + 57, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_z + 57 );
endPhase( spep_z + MAX_FRAME_3 -4 ); -- 190

end
end
