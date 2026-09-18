-- 1029980:UR_魔人ブウ(アルティメット悟飯吸収)_アクティブフィールド展開：体内吸収
-- sp_effect_b4_00357
-- bs0050

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163427; -- 開幕〜最後まで（敵側なし） ef_001
SP_01b = 163428; -- 開幕〜最後まで（敵側なし） ef_001b

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

--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜最後まで
-------------------------------------------------

MAX_FRAME_0 = 976;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜最後まで ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜最後まで ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 133, 240.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 129.4, 235.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 129.4, 235.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 125.5, 230.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 125.5, 230.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 120.9, 223.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 120.9, 223.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 115.9, 216 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 115.9, 216 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 110.2, 207.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 110.2, 207.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 103.8, 197.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 103.8, 197.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 96.8, 187.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 96.8, 187.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 89, 175.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 89, 175.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 80.2, 162 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 80.2, 162 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 70.7, 147.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 70.7, 147.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 60, 131.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 60, 131.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 48.2, 113.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 48.2, 113.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 35.2, 94.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 35.2, 94.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 20.9, 73.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 20.9, 73.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 5.1, 50.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 5.1, 50.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -12.3, 25.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -12.3, 25.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -31.3, -2.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -31.3, -2.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -52.2, -31.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -52.2, -31.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -75.2, -64 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -75.2, -64 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -100.4, -98.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -100.4, -98.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -127.9, -136.8 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -127.9, -136.8 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -158.2, -177.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -158.2, -177.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -191.3, -222.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -191.3, -222.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -227.4, -270.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -227.4, -270.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -267.1, -323 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -267.1, -323 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -310.4, -379.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -310.4, -379.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -357.7, -440.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -357.7, -440.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -409.3, -506.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -409.3, -506.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -465.8, -578.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -465.8, -578.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -527.3, -656.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -527.3, -656.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -594.4, -739.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -594.4, -739.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -667.5, -830.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -667.5, -830.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -747.1, -928.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -747.1, -928.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -833.9, -1033.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -833.9, -1033.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -928.1, -1148.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -928.1, -1148.1 , 0 );

setScaleKey( spep_0 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 3.98, 3.98 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 272 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 190 + OFFSET_X, 1, 106.6, 235.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 106.6, 235.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 106.5, 235.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 106.5, 235.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 106.4, 235.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 106.4, 235.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 106.3, 235.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 106.3, 235.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 106.2, 235.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 106.2, 235.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 106, 235.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 106, 235.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 19.5, -104.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 19.5, -104.9 , 0 );

setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.87, 3.87 );

setRotateKey( spep_0 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--敵後に浮かび上がる
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 4, 1453, "",spep_0 + 82, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 74 );

--集中線
SE003 = playSeVer2( spep_0 + 38, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 65 );
SE004 = playSeVer2( spep_0 + 38, 1051, "", 0, 0, 0, -1);

--変形する
SE005 = playSeVer2( spep_0 + 48, 1455, "",spep_0 + 252, 0, 42, -1);
SE006 = playSeVer2( spep_0 + 48, 1292, "",spep_0 + 258, 0, 22, -1);

--敵にとびかかる
SE007 = playSeVer2( spep_0 + 178, 1336, "",spep_0 + 356, 38, 56, -1);
setStartTimeMs( SE007,  867 );
SE008 = playSeVer2( spep_0 + 180, 1116, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 180, 1166, "",spep_0 + 350, 0, 56, -1);
SE010 = playSeVer2( spep_0 + 190, 1326, "",spep_0 + 340, 0, 48, -1);
SE011 = playSeVer2( spep_0 + 228, 1241, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 272, 1134, "", 0, 0, 0, -1);

--吸収中
SE013 = playSeVer2( spep_0 + 288, 1455, "",spep_0 + 420, 0, 46, -1);
SE014 = playSeVer2( spep_0 + 288, 1292, "",spep_0 + 504, 0, 24, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 314, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE015, 63 );

--体にとびつく
SE016 = playSeVer2( spep_0 + 362, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE016, 129 );
SE017 = playSeVer2( spep_0 + 362, 1246, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 362, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE018, 140 );

--環境音
SE019 = playSeVer2( spep_0 + 368, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE019, 25 );

--服破る
SE020 = playSeVer2( spep_0 + 564, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE020,  400 );
SE021 = playSeVer2( spep_0 + 554, 1332, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 568, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE022, 71 );

--顔アップ
SE023 = playSeVer2( spep_0 + 658, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE023, 74 );

--口の中へ
SE024 = playSeVer2( spep_0 + 706, 63, "",spep_0 + 782, 0, 32, -1);
SE025 = playSeVer2( spep_0 + 706, 8, "", 0, 0, 0, -1);

--体内世界
SE026 = playSeVer2( spep_0 + 722, 1271, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE026, 153 );
SE027 = playSeVer2( spep_0 + 730, 1455, "", 0, 52, 0, -1);
setStartTimeMs( SE027,  133 );

-- ** ボイス ** --
--「はあーーーーーっ！！！！」
SE_6_886 = playVoice( spep_0 + 316, 886 );
setVoiceVolume( spep_0 + 316, 886, 124 );

--「ふは……ふはははは…… うひひひひひひひ……！」
SE_7_887 = playVoice( spep_0 + 602, 887 );
setVoiceVolume( spep_0 + 602, 887, 124 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 976

else end