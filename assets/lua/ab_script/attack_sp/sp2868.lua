--1031280:LR_天津飯_必殺技：どどん波
--sp_effect_a1_00488
--sp2868

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163830;  -- 開幕～カードカットイン ef_001
SP_02 = 163834;  -- カードカットイン～フィニッシュ手前 ef_002
SP_03 = 163838;  -- フィニッシュ ef_003

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
ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 340;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カードカットイン(ef_001)
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
spep_x = spep_0 + 80;

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

--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 88 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 225.8, -190 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, 226.7, -190 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, 226.7, -190 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, 227.7, -190 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, 227.7, -190 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, 228.6, -190 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, 228.6, -190 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X , 1, 229.5, -190 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X , 1, 229.5, -190 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X , 1, 230.5, -190 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X , 1, 230.5, -190 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X , 1, 231.4, -190 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X , 1, 231.4, -190 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X , 1, 232.4, -190 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X , 1, 232.4, -190 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X , 1, 233.3, -190 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X , 1, 233.3, -190 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X , 1, 234.2, -190 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X , 1, 234.2, -190 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X , 1, 235.2, -190 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X , 1, 235.2, -190 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X , 1, 236.1, -190 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X , 1, 236.1, -190 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X , 1, 237, -190 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X , 1, 237, -190 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X , 1, 238, -190 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X , 1, 238, -190 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X , 1, 238.9, -190 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X , 1, 238.9, -190 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X , 1, 239.9, -190 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X , 1, 239.9, -190 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X , 1, 240.8, -190 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X , 1, 240.8, -190 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X , 1, 241.7, -190 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, 241.7, -190 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, 242.7, -190 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X , 1, 242.7, -190 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X , 1, 243.6, -190 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, 243.6, -190 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, 244.5, -190 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X , 1, 244.5, -190 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X , 1, 245.5, -190 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, 245.5, -190 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, 246.4, -190 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, 246.4, -190 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, 247.3, -190 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X , 1, 247.3, -190 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X , 1, 248.3, -190 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, 248.3, -190 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, 249.2, -190 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, 249.2, -190 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, 250.2, -190 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X , 1, 250.2, -190 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X , 1, 251.1, -190 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, 251.1, -190 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, 252, -190 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X , 1, 252, -190 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X , 1, 253, -190 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, 253, -190 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, 253.9, -190 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, 253.9, -190 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, 254.8, -190 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, 254.8, -190 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, 255.8, -190 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, 255.8, -190 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, 256.7, -190 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X , 1, 256.7, -190 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, 257.7, -190 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X , 1, 257.7, -190 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X , 1, 258.6, -190 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X , 1, 258.6, -190 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X , 1, 259.5, -190 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X , 1, 259.5, -190 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X , 1, 260.5, -190 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X , 1, 260.5, -190 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X , 1, 261.4, -190 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X , 1, 261.4, -190 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X , 1, 262.3, -190 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X , 1, 262.3, -190 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X , 1, 263.3, -190 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X , 1, 263.3, -190 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X , 1, 264.2, -190 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X , 1, 264.2, -190 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X , 1, 265.2, -190 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X , 1, 265.2, -190 , 0 );

setScaleKey( spep_0 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 88 + OFFSET_X , 1, 1.01, 1.01 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X , 1, 0 );

--敵の動き2

setDisp( spep_0 + 174 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X , 1, 1 );

changeAnime( spep_0 + 174 + OFFSET_X , 1, 104 );
changeAnime( spep_0 + 192 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 226 + OFFSET_X , 1, 108 );

setMoveKey( spep_0 + 174 + OFFSET_X , 1, 903.6, 128.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, 903.6, 128.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, 825.2, 126.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, 825.2, 126.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, 746.8, 124.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, 746.8, 124.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, 668.4, 123.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, 668.4, 123.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, 590, 121.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, 590, 121.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, 511.6, 120.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, 511.6, 120.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, 433.2, 118.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, 433.2, 118.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, 354.8, 116.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, 354.8, 116.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, 276.4, 115.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, 276.4, 115.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, 198.1, 190.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, 198.1, 190.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, 182.7, 189.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, 182.7, 189.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, 254.1, 142.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, 254.1, 142.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, 265.3, 162.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, 265.3, 162.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, 230.6, 119.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, 230.6, 119.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, 268, 117.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, 268, 117.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, 231.5, 158.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, 231.5, 158.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, 236.3, 110.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, 236.3, 110.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, 261.8, 149.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X , 1, 261.8, 149.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X , 1, 239.9, 124.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X , 1, 239.9, 124.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X , 1, 238.7, 120.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, 238.7, 120.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, 237.5, 117.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, 237.5, 117.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, 236.3, 113.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X , 1, 236.3, 113.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X , 1, 235.1, 109.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, 235.1, 109.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, 233.8, 106 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X , 1, 233.8, 106 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X , 1, 232.6, 102.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, 232.6, 102.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, 231.4, 98.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, 231.4, 98.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, 251.2, 16 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, 251.2, 16 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, 287.2, 37.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, 287.2, 37.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, 410, 14.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, 410, 14.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, 478.1, 53.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, 478.1, 53.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, 517.9, 19.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, 517.9, 19.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, 629.8, 25.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, 629.8, 25.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, 667.9, 74.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, 667.9, 74.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, 747.2, 33.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, 747.2, 33.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, 847.1, 81.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, 847.1, 81.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, 899.8, 64 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, 899.8, 64 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, 973.1, 68.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, 973.1, 68.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, 1046.4, 72.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 1046.4, 72.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 1119.7, 77 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 1119.7, 77 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 225 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 226 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 227 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 228 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 229 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 230 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 231 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 232 + OFFSET_X , 1, 1.74, 1.74 );
setScaleKey( spep_0 + 233 + OFFSET_X , 1, 1.74, 1.74 );
setScaleKey( spep_0 + 234 + OFFSET_X , 1, 1.75, 1.75 );
setScaleKey( spep_0 + 235 + OFFSET_X , 1, 1.75, 1.75 );
setScaleKey( spep_0 + 236 + OFFSET_X , 1, 1.76, 1.76 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 1.76, 1.76 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 1.81, 1.81 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 1.81, 1.81 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.83, 1.83 );

setRotateKey( spep_0 + 174 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 191 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 192 + OFFSET_X , 1, -45 );
setRotateKey( spep_0 + 193 + OFFSET_X , 1, -45 );
setRotateKey( spep_0 + 194 + OFFSET_X , 1, -43.3 );
setRotateKey( spep_0 + 195 + OFFSET_X , 1, -43.3 );
setRotateKey( spep_0 + 196 + OFFSET_X , 1, -41.7 );
setRotateKey( spep_0 + 197 + OFFSET_X , 1, -41.7 );
setRotateKey( spep_0 + 198 + OFFSET_X , 1, -40 );
setRotateKey( spep_0 + 199 + OFFSET_X , 1, -40 );
setRotateKey( spep_0 + 200 + OFFSET_X , 1, -39.6 );
setRotateKey( spep_0 + 201 + OFFSET_X , 1, -39.6 );
setRotateKey( spep_0 + 202 + OFFSET_X , 1, -39.2 );
setRotateKey( spep_0 + 203 + OFFSET_X , 1, -39.2 );
setRotateKey( spep_0 + 204 + OFFSET_X , 1, -38.8 );
setRotateKey( spep_0 + 205 + OFFSET_X , 1, -38.8 );
setRotateKey( spep_0 + 206 + OFFSET_X , 1, -38.5 );
setRotateKey( spep_0 + 207 + OFFSET_X , 1, -38.5 );
setRotateKey( spep_0 + 208 + OFFSET_X , 1, -38.1 );
setRotateKey( spep_0 + 209 + OFFSET_X , 1, -38.1 );
setRotateKey( spep_0 + 210 + OFFSET_X , 1, -37.7 );
setRotateKey( spep_0 + 211 + OFFSET_X , 1, -37.7 );
setRotateKey( spep_0 + 212 + OFFSET_X , 1, -37.3 );
setRotateKey( spep_0 + 213 + OFFSET_X , 1, -37.3 );
setRotateKey( spep_0 + 214 + OFFSET_X , 1, -36.9 );
setRotateKey( spep_0 + 215 + OFFSET_X , 1, -36.9 );
setRotateKey( spep_0 + 216 + OFFSET_X , 1, -36.5 );
setRotateKey( spep_0 + 217 + OFFSET_X , 1, -36.5 );
setRotateKey( spep_0 + 218 + OFFSET_X , 1, -36.2 );
setRotateKey( spep_0 + 219 + OFFSET_X , 1, -36.2 );
setRotateKey( spep_0 + 220 + OFFSET_X , 1, -35.8 );
setRotateKey( spep_0 + 221 + OFFSET_X , 1, -35.8 );
setRotateKey( spep_0 + 222 + OFFSET_X , 1, -35.4 );
setRotateKey( spep_0 + 223 + OFFSET_X , 1, -35.4 );
setRotateKey( spep_0 + 224 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 225 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 226 + OFFSET_X , 1, 45.9 );
setRotateKey( spep_0 + 227 + OFFSET_X , 1, 45.9 );
setRotateKey( spep_0 + 228 + OFFSET_X , 1, 46 );
setRotateKey( spep_0 + 231 + OFFSET_X , 1, 46 );
setRotateKey( spep_0 + 232 + OFFSET_X , 1, 47.5 );
setRotateKey( spep_0 + 233 + OFFSET_X , 1, 47.5 );
setRotateKey( spep_0 + 234 + OFFSET_X , 1, 49 );
setRotateKey( spep_0 + 235 + OFFSET_X , 1, 49 );
setRotateKey( spep_0 + 236 + OFFSET_X , 1, 50.5 );
setRotateKey( spep_0 + 237 + OFFSET_X , 1, 50.5 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, 52 );
setRotateKey( spep_0 + 239 + OFFSET_X , 1, 52 );
setRotateKey( spep_0 + 240 + OFFSET_X , 1, 53.5 );
setRotateKey( spep_0 + 241 + OFFSET_X , 1, 53.5 );
setRotateKey( spep_0 + 242 + OFFSET_X , 1, 55 );
setRotateKey( spep_0 + 243 + OFFSET_X , 1, 55 );
setRotateKey( spep_0 + 244 + OFFSET_X , 1, 56.5 );
setRotateKey( spep_0 + 245 + OFFSET_X , 1, 56.5 );
setRotateKey( spep_0 + 246 + OFFSET_X , 1, 58 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, 58 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, 59.5 );
setRotateKey( spep_0 + 249 + OFFSET_X , 1, 59.5 );
setRotateKey( spep_0 + 250 + OFFSET_X , 1, 61 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, 61 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 80, 1000, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 92, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1183, "",spep_0 + 218, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 174; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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

--キック
SE007 = playSeVer2( spep_0 + 172, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 186, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 214, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 220, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 82 );

--着地
SE012 = playSeVer2( spep_0 + 248, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE012, 146 );
SE013 = playSeVer2( spep_0 + 252, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE013, 240 );

--飛び上がる
SE014 = playSeVer2( spep_0 + 258, 1207, "",spep_0 + 346, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 258, SE014, 68 );
SE015 = playSeVer2( spep_0 + 258, 1117, "",spep_0 + 346, 0, 14, -1);

--腕ふりおろす
SE016 = playSeVer2( spep_0 + 292, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --340F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- -- ** カードカットイン ** --

if (_SPECIAL_SKILL_LEVEL_ == 0) then
  print ("_SPECIAL_SKILL_LEVEL_ == 0");

  speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
  setEffReplaceTexture( speff2, 1, 1 );
  setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
  setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

  spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -95 );
  setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

  -- ** 放射線(黄) ** --
  housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
  setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
  setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
  setEffRotateKey( spep_1 + 0, housha, 0 );
  setEffRotateKey( spep_1 + 90, housha, 0 );
  setEffAlphaKey( spep_1 + 0, housha, 255 );
  setEffAlphaKey( spep_1 + 90, housha, 255 );

  -- ** 集中線 ** --
  shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
  setEffShake( spep_1 + 0, shuchusen, 90, 20 );
  setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
  setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
  setEffRotateKey( spep_1 + 0, shuchusen, 0 );
  setEffRotateKey( spep_1 + 90, shuchusen, 0 );
  setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
  setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
  print ("_SPECIAL_SKILL_LEVEL_ == 1");
  -- ** カードカットイン ** --
  speff2 = entryEffectLife( spep_1 + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
  setEffReplaceTexture( speff2, 1, 1 );
  setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
  setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

  -- ** 雷エフェクト ** --
  kaminari = entryEffectLife( spep_1 + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
  setEffMoveKey( spep_1 + 0, kaminari, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, kaminari, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, kaminari, 1.0, 1.0 );
  setEffScaleKey( spep_1 + 90, kaminari, 1.0, 1.0 );
  setEffRotateKey( spep_1 + 0, kaminari, 0 );
  setEffRotateKey( spep_1 + 90, kaminari, 0 );
  setEffAlphaKey( spep_1 + 0, kaminari, 255 );
  setEffAlphaKey( spep_1 + 90, kaminari, 255 );

  spname = entryEffectLife( spep_1 + 0, 3246, 90, 0x100, -1, 0, 0, -95 );
  setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

  -- ** 極限背景 ** --
  haikei = entryEffectLife( spep_1 + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
  setEffMoveKey( spep_1 + 0, haikei, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, haikei, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, haikei, 1.0, 1.0 );
  setEffScaleKey( spep_1 + 90, haikei, 1.0, 1.0 );
  setEffRotateKey( spep_1 + 0, haikei, 0 );
  setEffRotateKey( spep_1 + 90, haikei, 0 );
  setEffAlphaKey( spep_1 + 0, haikei, 255 );
  setEffAlphaKey( spep_1 + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
  print ("_SPECIAL_SKILL_LEVEL_ == 2");
  -- ** カードカットイン ** --
  speff2 = entryEffectLife( spep_1 + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
  setEffReplaceTexture( speff2, 1, 1 );
  setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
  setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

  -- ** 雷エフェクト ** --
  kaminari = entryEffectLife( spep_1 + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
  setEffMoveKey( spep_1 + 0, kaminari, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, kaminari, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, kaminari, 1.0, 1.0 );
  setEffScaleKey( spep_1 + 90, kaminari, 1.0, 1.0 );
  setEffRotateKey( spep_1 + 0, kaminari, 0 );
  setEffRotateKey( spep_1 + 90, kaminari, 0 );
  setEffAlphaKey( spep_1 + 0, kaminari, 255 );
  setEffAlphaKey( spep_1 + 90, kaminari, 255 );

  spname = entryEffectLife( spep_1 + 0, 3250, 90, 0x100, -1, 0, 0, -95 );
  setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

  -- ** 極限背景 ** --
  haikei = entryEffectLife( spep_1 + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
  setEffMoveKey( spep_1 + 0, haikei, 0, 0 , 0 );
  setEffMoveKey( spep_1 + 90, haikei, 0, 0 , 0 );
  setEffScaleKey( spep_1 + 0, haikei, 1.0, 1.0 );
  setEffScaleKey( spep_1 + 90, haikei, 1.0, 1.0 );
  setEffRotateKey( spep_1 + 0, haikei, 0 );
  setEffRotateKey( spep_1 + 90, haikei, 0 );
  setEffAlphaKey( spep_1 + 0, haikei, 255 );
  setEffAlphaKey( spep_1 + 90, haikei, 255 );
end

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --

--発射前溜め
SE018 = playSeVer2( spep_1 + 84, 1243, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE018, 84 );
SE019 = playSeVer2( spep_1 + 84, 1396, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 81 );
SE020 = playSeVer2( spep_1 + 84, 1296, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE020, 60 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ手前(ef_002)
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

--敵の動き1

setDisp( spep_2 + 60 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 124 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X , 1, 106 );

setMoveKey( spep_2 + 60 + OFFSET_X , 1, 637.5, -61.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X , 1, 637.5, -61.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X , 1, 591.7, -56.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X , 1, 591.7, -56.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X , 1, 545.8, -51.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X , 1, 545.8, -51.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X , 1, 495.7, -53 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X , 1, 495.7, -53 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X , 1, 456.8, -45.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X , 1, 456.8, -45.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X , 1, 405.4, -33.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, 405.4, -33.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, 361.2, -38.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, 361.2, -38.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, 323.1, -23.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, 323.1, -23.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, 267.6, -31.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, 267.6, -31.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, 263.3, -9.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, 263.3, -9.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, 270.7, -26.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, 270.7, -26.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, 263.3, -27.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X , 1, 263.3, -27.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, 268.6, -15.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X , 1, 268.6, -15.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X , 1, 256.2, -23.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X , 1, 256.2, -23.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X , 1, 251.6, -13.8 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X , 1, 251.6, -13.8 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X , 1, 253.6, -14.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X , 1, 253.6, -14.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X , 1, 251.1, -14 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X , 1, 251.1, -14 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X , 1, 243.6, -18.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X , 1, 243.6, -18.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X , 1, 253.1, -17.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X , 1, 253.1, -17.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X , 1, 251.7, -8.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X , 1, 251.7, -8.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X , 1, 248.2, -15.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X , 1, 248.2, -15.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X , 1, 233.7, -14.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X , 1, 233.7, -14.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X , 1, 243.3, -13.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X , 1, 243.3, -13.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X , 1, 241.8, -4.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X , 1, 241.8, -4.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X , 1, 238.3, -11.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X , 1, 238.3, -11.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X , 1, 223.9, -10.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X , 1, 223.9, -10.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X , 1, 233.4, -9.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X , 1, 233.4, -9.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X , 1, 231.9, -0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X , 1, 231.9, -0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X , 1, 228.5, -7.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X , 1, 228.5, -7.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X , 1, 214, -6.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X , 1, 214, -6.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X , 1, 224.5, 2.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X , 1, 224.5, 2.3 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 61 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 62 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 63 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 64 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 65 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 66 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 67 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 68 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 69 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 70 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_2 + 71 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_2 + 72 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 73 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 74 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 75 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 76 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_2 + 77 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_2 + 78 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 85 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 86 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_2 + 93 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_2 + 94 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 101 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 102 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_2 + 111 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_2 + 112 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_2 + 119 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_2 + 120 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 124 + OFFSET_X , 1, 0.31, 0.31 );

setRotateKey( spep_2 + 60 + OFFSET_X , 1, -28 );
setRotateKey( spep_2 + 124 + OFFSET_X , 1, -28 );

--敵の動き2

setDisp( spep_2 + 138 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 242 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X , 1, 108 );

setMoveKey( spep_2 + 138 + OFFSET_X , 1, 18.8, -4.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X , 1, 18.8, -4.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X , 1, 28.7, 2.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X , 1, 28.7, 2.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X , 1, 18.7, -4.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X , 1, 18.7, -4.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X , 1, 28.7, 2.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X , 1, 28.7, 2.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X , 1, 15.7, -5.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X , 1, 15.7, -5.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, 15.7, -5.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, 20.7, -0.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, 20.7, -0.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, 9.7, 8.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, 9.7, 8.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, 38.7, -17.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, 38.7, -17.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, 4.7, -14.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, 4.7, -14.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, 34.7, 13.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, 34.7, 13.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, 30.7, -20.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, 30.7, -20.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, 1.7, -14.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, 1.7, -14.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, 37.7, 10.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, 37.7, 10.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 28.7, 1.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 15.7, 1.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, 28.7, -7.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -0.3, 12.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 18.7, -4.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -0.2, 12.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -0.2, 12.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 20.8, -0.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 20.8, -0.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -0.2, 12.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -0.2, 12.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 20.8, -0.8 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_2 + 139 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_2 + 140 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_2 + 141 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_2 + 142 + OFFSET_X , 1, 1.62, 1.62 );
setScaleKey( spep_2 + 143 + OFFSET_X , 1, 1.62, 1.62 );
setScaleKey( spep_2 + 144 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 145 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 146 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 147 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 148 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 149 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 150 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 151 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 152 + OFFSET_X , 1, 1.27, 1.27 );
setScaleKey( spep_2 + 153 + OFFSET_X , 1, 1.27, 1.27 );
setScaleKey( spep_2 + 154 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 155 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 156 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 157 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 158 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_2 + 159 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_2 + 160 + OFFSET_X , 1, 1.21, 1.21 );
setScaleKey( spep_2 + 161 + OFFSET_X , 1, 1.21, 1.21 );
setScaleKey( spep_2 + 162 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_2 + 163 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_2 + 164 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 165 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 166 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 167 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 168 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 169 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 170 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 171 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 172 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 173 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 174 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 175 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 176 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 177 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 178 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 179 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 180 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 181 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 182 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 183 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 184 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 185 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 187 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 188 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 189 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 197 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 198 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.86, 0.86 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.86, 0.86 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 0.8, 0.8 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 0.8, 0.8 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 223 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 224 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 0.63, 0.63 );

setRotateKey( spep_2 + 138 + OFFSET_X , 1, 13.8 );
setRotateKey( spep_2 + 242 + OFFSET_X , 1, 13.8 );

setBlendColor( spep_2 + 138 + OFFSET_X , 1, 3, 0.847, 0.768, 0.58, 1 );
setBlendColor( spep_2 + 242 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--どどんぱ発射
SE021 = playSeVer2( spep_2 + 46, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 116 );
SE022 = playSeVer2( spep_2 + 46, 1312, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE022, 122 );
SE023 = playSeVer2( spep_2 + 46, 1177, "",spep_2 + 148, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 46, SE023, 81 );
SE024 = playSeVer2( spep_2 + 46, 1409, "",spep_2 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 46, SE024, 129 );
SE025 = playSeVer2( spep_2 + 48, 1145, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 114, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 118, 1067, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; --248F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 ); --フィニッシュ(画面割れ)
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
finish_1b = entryEffectLife( spep_N + 0, SP_03b , spep_N + 108, 0x80, -1, 0, 0, 0 ); --フィニッシュ 背景のみ(ef003b)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
]]
 
--[[-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
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
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
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

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景
 
  -- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X , 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X , 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X , 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X , 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X , 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X , 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X , 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X , 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X , 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X , 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X , 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X , 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X , 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X , 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X , 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X , 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X , 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X , 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X , 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X , 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X , 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X , 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X , 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X , 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X , 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X , 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X , 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 340;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カードカットイン(ef_001)
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
spep_x = spep_0 + 80;

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

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 88 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -225.8, -190 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, -226.7, -190 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, -226.7, -190 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, -227.7, -190 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, -227.7, -190 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, -228.6, -190 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, -228.6, -190 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X , 1, -229.5, -190 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X , 1, -229.5, -190 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X , 1, -230.5, -190 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X , 1, -230.5, -190 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X , 1, -231.4, -190 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X , 1, -231.4, -190 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X , 1, -232.4, -190 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X , 1, -232.4, -190 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X , 1, -233.3, -190 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X , 1, -233.3, -190 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X , 1, -234.2, -190 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X , 1, -234.2, -190 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X , 1, -235.2, -190 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X , 1, -235.2, -190 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X , 1, -236.1, -190 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X , 1, -236.1, -190 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X , 1, -237, -190 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X , 1, -237, -190 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X , 1, -238, -190 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X , 1, -238, -190 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X , 1, -238.9, -190 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X , 1, -238.9, -190 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X , 1, -239.9, -190 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X , 1, -239.9, -190 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X , 1, -240.8, -190 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X , 1, -240.8, -190 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X , 1, -241.7, -190 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, -241.7, -190 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, -242.7, -190 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X , 1, -242.7, -190 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X , 1, -243.6, -190 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, -243.6, -190 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, -244.5, -190 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X , 1, -244.5, -190 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X , 1, -245.5, -190 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, -245.5, -190 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, -246.4, -190 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, -246.4, -190 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, -247.3, -190 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X , 1, -247.3, -190 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X , 1, -248.3, -190 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, -248.3, -190 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, -249.2, -190 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, -249.2, -190 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, -250.2, -190 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X , 1, -250.2, -190 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X , 1, -251.1, -190 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, -251.1, -190 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, -252, -190 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X , 1, -252, -190 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X , 1, -253, -190 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, -253, -190 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, -253.9, -190 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, -253.9, -190 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, -254.8, -190 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, -254.8, -190 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, -255.8, -190 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, -255.8, -190 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, -256.7, -190 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X , 1, -256.7, -190 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, -257.7, -190 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X , 1, -257.7, -190 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X , 1, -258.6, -190 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X , 1, -258.6, -190 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X , 1, -259.5, -190 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X , 1, -259.5, -190 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X , 1, -260.5, -190 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X , 1, -260.5, -190 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X , 1, -261.4, -190 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X , 1, -261.4, -190 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X , 1, -262.3, -190 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X , 1, -262.3, -190 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X , 1, -263.3, -190 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X , 1, -263.3, -190 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X , 1, -264.2, -190 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X , 1, -264.2, -190 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X , 1, -265.2, -190 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X , 1, -265.2, -190 , 0 );

setScaleKey( spep_0 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 88 + OFFSET_X , 1, 1.01, 1.01 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X , 1, 0 );

--敵の動き2

setDisp( spep_0 + 174 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X , 1, 1 );

changeAnime( spep_0 + 174 + OFFSET_X , 1, 4 );
changeAnime( spep_0 + 192 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 226 + OFFSET_X , 1, 8 );

setMoveKey( spep_0 + 174 + OFFSET_X , 1, -903.6, 128.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, -903.6, 128.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, -825.2, 126.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, -825.2, 126.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, -746.8, 124.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, -746.8, 124.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, -668.4, 123.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, -668.4, 123.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, -590, 121.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, -590, 121.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, -511.6, 120.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, -511.6, 120.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, -433.2, 118.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, -433.2, 118.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, -354.8, 116.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, -354.8, 116.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, -276.4, 115.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, -276.4, 115.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, -198.1, 190.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, -198.1, 190.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, -182.7, 189.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, -182.7, 189.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, -254.1, 142.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, -254.1, 142.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, -265.3, 162.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, -265.3, 162.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, -230.6, 119.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, -230.6, 119.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, -268, 117.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, -268, 117.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, -231.5, 158.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, -231.5, 158.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, -236.3, 110.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, -236.3, 110.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, -261.8, 149.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X , 1, -261.8, 149.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X , 1, -239.9, 124.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X , 1, -239.9, 124.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X , 1, -238.7, 120.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, -238.7, 120.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, -237.5, 117.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, -237.5, 117.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, -236.3, 113.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X , 1, -236.3, 113.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X , 1, -235.1, 109.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, -235.1, 109.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, -233.8, 106 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X , 1, -233.8, 106 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X , 1, -232.6, 102.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, -232.6, 102.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, -231.4, 98.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, -231.4, 98.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, -251.2, 16 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, -251.2, 16 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, -287.2, 37.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, -287.2, 37.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, -410, 14.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, -410, 14.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, -478.1, 53.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, -478.1, 53.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, -517.9, 19.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, -517.9, 19.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, -629.8, 25.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, -629.8, 25.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, -667.9, 74.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, -667.9, 74.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, -747.2, 33.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, -747.2, 33.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, -847.1, 81.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, -847.1, 81.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, -899.8, 64 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, -899.8, 64 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, -973.1, 68.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, -973.1, 68.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, -1046.4, 72.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -1046.4, 72.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -1119.7, 77 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -1119.7, 77 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 225 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 226 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 227 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 228 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 229 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 230 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 231 + OFFSET_X , 1, 1.73, 1.73 );
setScaleKey( spep_0 + 232 + OFFSET_X , 1, 1.74, 1.74 );
setScaleKey( spep_0 + 233 + OFFSET_X , 1, 1.74, 1.74 );
setScaleKey( spep_0 + 234 + OFFSET_X , 1, 1.75, 1.75 );
setScaleKey( spep_0 + 235 + OFFSET_X , 1, 1.75, 1.75 );
setScaleKey( spep_0 + 236 + OFFSET_X , 1, 1.76, 1.76 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 1.76, 1.76 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 1.81, 1.81 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 1.81, 1.81 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 1.82, 1.82 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.83, 1.83 );

setRotateKey( spep_0 + 174 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 191 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 192 + OFFSET_X , 1, 45 );
setRotateKey( spep_0 + 193 + OFFSET_X , 1, 45 );
setRotateKey( spep_0 + 194 + OFFSET_X , 1, 43.3 );
setRotateKey( spep_0 + 195 + OFFSET_X , 1, 43.3 );
setRotateKey( spep_0 + 196 + OFFSET_X , 1, 41.7 );
setRotateKey( spep_0 + 197 + OFFSET_X , 1, 41.7 );
setRotateKey( spep_0 + 198 + OFFSET_X , 1, 40 );
setRotateKey( spep_0 + 199 + OFFSET_X , 1, 40 );
setRotateKey( spep_0 + 200 + OFFSET_X , 1, 39.6 );
setRotateKey( spep_0 + 201 + OFFSET_X , 1, 39.6 );
setRotateKey( spep_0 + 202 + OFFSET_X , 1, 39.2 );
setRotateKey( spep_0 + 203 + OFFSET_X , 1, 39.2 );
setRotateKey( spep_0 + 204 + OFFSET_X , 1, 38.8 );
setRotateKey( spep_0 + 205 + OFFSET_X , 1, 38.8 );
setRotateKey( spep_0 + 206 + OFFSET_X , 1, 38.5 );
setRotateKey( spep_0 + 207 + OFFSET_X , 1, 38.5 );
setRotateKey( spep_0 + 208 + OFFSET_X , 1, 38.1 );
setRotateKey( spep_0 + 209 + OFFSET_X , 1, 38.1 );
setRotateKey( spep_0 + 210 + OFFSET_X , 1, 37.7 );
setRotateKey( spep_0 + 211 + OFFSET_X , 1, 37.7 );
setRotateKey( spep_0 + 212 + OFFSET_X , 1, 37.3 );
setRotateKey( spep_0 + 213 + OFFSET_X , 1, 37.3 );
setRotateKey( spep_0 + 214 + OFFSET_X , 1, 36.9 );
setRotateKey( spep_0 + 215 + OFFSET_X , 1, 36.9 );
setRotateKey( spep_0 + 216 + OFFSET_X , 1, 36.5 );
setRotateKey( spep_0 + 217 + OFFSET_X , 1, 36.5 );
setRotateKey( spep_0 + 218 + OFFSET_X , 1, 36.2 );
setRotateKey( spep_0 + 219 + OFFSET_X , 1, 36.2 );
setRotateKey( spep_0 + 220 + OFFSET_X , 1, 35.8 );
setRotateKey( spep_0 + 221 + OFFSET_X , 1, 35.8 );
setRotateKey( spep_0 + 222 + OFFSET_X , 1, 35.4 );
setRotateKey( spep_0 + 223 + OFFSET_X , 1, 35.4 );
setRotateKey( spep_0 + 224 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 225 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 226 + OFFSET_X , 1, -45.9 );
setRotateKey( spep_0 + 227 + OFFSET_X , 1, -45.9 );
setRotateKey( spep_0 + 228 + OFFSET_X , 1, -46 );
setRotateKey( spep_0 + 231 + OFFSET_X , 1, -46 );
setRotateKey( spep_0 + 232 + OFFSET_X , 1, -47.5 );
setRotateKey( spep_0 + 233 + OFFSET_X , 1, -47.5 );
setRotateKey( spep_0 + 234 + OFFSET_X , 1, -49 );
setRotateKey( spep_0 + 235 + OFFSET_X , 1, -49 );
setRotateKey( spep_0 + 236 + OFFSET_X , 1, -50.5 );
setRotateKey( spep_0 + 237 + OFFSET_X , 1, -50.5 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, -52 );
setRotateKey( spep_0 + 239 + OFFSET_X , 1, -52 );
setRotateKey( spep_0 + 240 + OFFSET_X , 1, -53.5 );
setRotateKey( spep_0 + 241 + OFFSET_X , 1, -53.5 );
setRotateKey( spep_0 + 242 + OFFSET_X , 1, -55 );
setRotateKey( spep_0 + 243 + OFFSET_X , 1, -55 );
setRotateKey( spep_0 + 244 + OFFSET_X , 1, -56.5 );
setRotateKey( spep_0 + 245 + OFFSET_X , 1, -56.5 );
setRotateKey( spep_0 + 246 + OFFSET_X , 1, -58 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, -58 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, -59.5 );
setRotateKey( spep_0 + 249 + OFFSET_X , 1, -59.5 );
setRotateKey( spep_0 + 250 + OFFSET_X , 1, -61 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, -61 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 80, 1000, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 92, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1183, "",spep_0 + 218, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 174; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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

--キック
SE007 = playSeVer2( spep_0 + 172, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 186, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 214, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 220, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 82 );

--着地
SE012 = playSeVer2( spep_0 + 248, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE012, 146 );
SE013 = playSeVer2( spep_0 + 252, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE013, 240 );

--飛び上がる
SE014 = playSeVer2( spep_0 + 258, 1207, "",spep_0 + 346, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 258, SE014, 68 );
SE015 = playSeVer2( spep_0 + 258, 1117, "",spep_0 + 346, 0, 14, -1);

--腕ふりおろす
SE016 = playSeVer2( spep_0 + 292, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --340F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -95 ); -- 
setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --

--発射前溜め
SE018 = playSeVer2( spep_1 + 84, 1243, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE018, 84 );
SE019 = playSeVer2( spep_1 + 84, 1396, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 81 );
SE020 = playSeVer2( spep_1 + 84, 1296, "",spep_1 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 84, SE020, 60 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ手前(ef_002)
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

--敵の動き1

setDisp( spep_2 + 60 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 124 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 60 + OFFSET_X , 1, -637.5, -61.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X , 1, -637.5, -61.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X , 1, -591.7, -56.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X , 1, -591.7, -56.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X , 1, -545.8, -51.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X , 1, -545.8, -51.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X , 1, -495.7, -53 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X , 1, -495.7, -53 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X , 1, -456.8, -45.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X , 1, -456.8, -45.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X , 1, -405.4, -33.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, -405.4, -33.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, -361.2, -38.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, -361.2, -38.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, -323.1, -23.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, -323.1, -23.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, -267.6, -31.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, -267.6, -31.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, -263.3, -9.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, -263.3, -9.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, -270.7, -26.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, -270.7, -26.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, -263.3, -27.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X , 1, -263.3, -27.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, -268.6, -15.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X , 1, -268.6, -15.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X , 1, -256.2, -23.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X , 1, -256.2, -23.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X , 1, -251.6, -13.8 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X , 1, -251.6, -13.8 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X , 1, -253.6, -14.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X , 1, -253.6, -14.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X , 1, -251.1, -14 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X , 1, -251.1, -14 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X , 1, -243.6, -18.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X , 1, -243.6, -18.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X , 1, -253.1, -17.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X , 1, -253.1, -17.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X , 1, -251.7, -8.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X , 1, -251.7, -8.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X , 1, -248.2, -15.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X , 1, -248.2, -15.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X , 1, -233.7, -14.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X , 1, -233.7, -14.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X , 1, -243.3, -13.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X , 1, -243.3, -13.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X , 1, -241.8, -4.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X , 1, -241.8, -4.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X , 1, -238.3, -11.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X , 1, -238.3, -11.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X , 1, -223.9, -10.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X , 1, -223.9, -10.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X , 1, -233.4, -9.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X , 1, -233.4, -9.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X , 1, -231.9, -0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X , 1, -231.9, -0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X , 1, -228.5, -7.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X , 1, -228.5, -7.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X , 1, -214, -6.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X , 1, -214, -6.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X , 1, -224.5, 2.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X , 1, -224.5, 2.3 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 61 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 62 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 63 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 64 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 65 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 66 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 67 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 68 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 69 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 70 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_2 + 71 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_2 + 72 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 73 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 74 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 75 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 76 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_2 + 77 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_2 + 78 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 85 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 86 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_2 + 93 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_2 + 94 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 101 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 102 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_2 + 111 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_2 + 112 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_2 + 119 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_2 + 120 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 124 + OFFSET_X , 1, 0.31, 0.31 );

setRotateKey( spep_2 + 60 + OFFSET_X , 1, 28 );
setRotateKey( spep_2 + 124 + OFFSET_X , 1, 28 );

--敵の動き2

setDisp( spep_2 + 138 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 242 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X , 1, 8 );

setMoveKey( spep_2 + 138 + OFFSET_X , 1, -18.8, -4.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X , 1, -18.8, -4.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X , 1, -28.7, 2.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X , 1, -28.7, 2.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X , 1, -18.7, -4.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X , 1, -18.7, -4.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X , 1, -28.7, 2.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X , 1, -28.7, 2.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X , 1, -15.7, -5.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X , 1, -15.7, -5.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, -15.7, -5.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, -20.7, -0.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, -20.7, -0.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, -9.7, 8.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, -9.7, 8.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, -38.7, -17.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, -38.7, -17.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, -4.7, -14.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, -4.7, -14.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, -34.7, 13.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, -34.7, 13.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, -30.7, -20.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, -30.7, -20.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, -1.7, -14.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, -1.7, -14.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, -37.7, 10.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, -37.7, 10.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -28.7, 1.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -15.7, 1.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, -28.7, -7.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 0.3, 12.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -18.7, -4.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 0.2, 12.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 0.2, 12.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -20.8, -0.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -20.8, -0.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 0.2, 12.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 0.2, 12.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -20.8, -0.8 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_2 + 139 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_2 + 140 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_2 + 141 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_2 + 142 + OFFSET_X , 1, 1.62, 1.62 );
setScaleKey( spep_2 + 143 + OFFSET_X , 1, 1.62, 1.62 );
setScaleKey( spep_2 + 144 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 145 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 146 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 147 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 148 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 149 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 150 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 151 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 152 + OFFSET_X , 1, 1.27, 1.27 );
setScaleKey( spep_2 + 153 + OFFSET_X , 1, 1.27, 1.27 );
setScaleKey( spep_2 + 154 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 155 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 156 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 157 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 158 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_2 + 159 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_2 + 160 + OFFSET_X , 1, 1.21, 1.21 );
setScaleKey( spep_2 + 161 + OFFSET_X , 1, 1.21, 1.21 );
setScaleKey( spep_2 + 162 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_2 + 163 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_2 + 164 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 165 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 166 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 167 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 168 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 169 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 170 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 171 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 172 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 173 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 174 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 175 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 176 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 177 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 178 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 179 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 180 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 181 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 182 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 183 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 184 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 185 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 187 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 188 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 189 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 197 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 198 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.86, 0.86 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.86, 0.86 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 0.8, 0.8 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 0.8, 0.8 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 223 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 224 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 0.63, 0.63 );

setRotateKey( spep_2 + 138 + OFFSET_X , 1, -13.8 );
setRotateKey( spep_2 + 242 + OFFSET_X , 1, -13.8 );

setBlendColor( spep_2 + 138 + OFFSET_X , 1, 3, 0.847, 0.768, 0.58, 1 );
setBlendColor( spep_2 + 242 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--どどんぱ発射
SE021 = playSeVer2( spep_2 + 46, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 116 );
SE022 = playSeVer2( spep_2 + 46, 1312, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE022, 122 );
SE023 = playSeVer2( spep_2 + 46, 1177, "",spep_2 + 148, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 46, SE023, 81 );
SE024 = playSeVer2( spep_2 + 46, 1409, "",spep_2 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 46, SE024, 129 );
SE025 = playSeVer2( spep_2 + 48, 1145, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 114, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 118, 1067, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; --248F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 ); --フィニッシュ(画面割れ)
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
finish_1b = entryEffectLife( spep_N + 0, SP_03b , spep_N + 108, 0x80, -1, 0, 0, 0 ); --フィニッシュ 背景のみ(ef003b)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
]]
--[[-- ** 爆発 ** --
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

shuchusen_bl = entryEffectLife( spep_N + 14, 1657, 98, 0x80, -1, 0, 0, 0 ); --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

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
setMoveKey( spep_N + 4 + OFFSET_X , 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X , 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X , 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X , 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X , 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X , 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X , 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X , 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X , 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X , 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X , 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X , 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X , 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X , 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X , 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X , 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X , 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X , 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X , 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X , 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X , 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X , 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X , 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X , 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X , 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X , 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X , 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X , 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X , 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108F

end