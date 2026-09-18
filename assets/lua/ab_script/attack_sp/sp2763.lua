--1029270:LR_バイオブロリー_超必殺技：イレイザーキャノン
--sp_effect_a2_00246
--sp2763

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163221; --対峙～奥に吹っ飛ぶ ef_001
SP_01b = 163222; --対峙～奥に吹っ飛ぶ ef_001_b
SP_02  = 163225; --ダブル気弾投げ～フィニッシュ ef_002

--エフェクト(敵)
SP_01r  = 163223; --対峙～奥に吹っ飛ぶ ef_001r
SP_01br = 163224; --対峙～奥に吹っ飛ぶ ef_001_br

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙～奥に吹っ飛ぶ
-------------------------------------------------
MAX_FRAME_0 = 640;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙～奥に吹っ飛ぶ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙～奥に吹っ飛ぶ(ef_001_b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -51, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -51, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 196.9, -50.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 196.8, -50.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 196.8, -50.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 196.7, -50.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 196.7, -50.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 196.5, -50.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 196.5, -50.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 196.4, -50.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 196.4, -50.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 196.3, -50.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 196.3, -50.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 196.1, -50.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 196.1, -50.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 196, -50.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 196, -50.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 195.8, -50.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 195.8, -50.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 195.7, -50.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 195.7, -50.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 195.6, -50.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 195.6, -50.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 195.4, -50.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 195.4, -50.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 195.3, -50.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 195.3, -50.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 195.2, -50.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 195.2, -50.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 195, -50.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 195, -50.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 194.9, -50.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 194.9, -50.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 194.7, -50.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 194.7, -50.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 194.6, -50.8 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 194.6, -50.8 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 194.5, -50.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 194.5, -50.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 194.3, -50.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 194.3, -50.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 194.2, -50.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 194.2, -50.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 194.1, -50.8 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 194.1, -50.8 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 193.9, -50.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 193.9, -50.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 193.8, -50.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 193.8, -50.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 193.7, -50.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 193.7, -50.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 193.5, -50.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 193.5, -50.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 193.4, -50.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 193.4, -50.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 193.2, -50.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 193.2, -50.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 556 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, -227, -55.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -227, -55.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -225.9, -55.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -225.9, -55.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -223.8, -54.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -223.8, -54.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -108.6, -37.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -108.6, -37.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -32.5, 14 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -32.5, 14 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -200.2, 18.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -200.2, 18.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -274.9, 110.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -274.9, 110.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -273.4, 46 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -273.4, 46 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -242.8, 77 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -242.8, 77 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -214.7, 48.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -214.7, 48.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -243.8, 77 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -243.8, 77 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -222.2, 99.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -222.2, 99.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -244.7, 77 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -244.7, 77 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -270, 77 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -270, 77 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -245.6, 77 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -245.6, 77 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -246.1, 58.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -246.1, 58.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -246.5, 77 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -246.5, 77 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -227.4, 77 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -227.4, 77 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -247.5, 77 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -247.5, 77 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -261.7, 90.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -261.7, 90.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -248.4, 77 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -248.4, 77 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -248.8, 67.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -248.8, 67.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -249.3, 77 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -249.3, 77 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -250.2, 77 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -250.2, 77 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -245.4, 82.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -245.4, 82.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -251.2, 77.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -251.2, 77.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -251.6, 73.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -251.6, 73.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -252.1, 77.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -252.1, 77.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -252.5, 77.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -252.5, 77.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -253, 77.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -253, 77.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -253.5, 77.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -253.5, 77.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -253.9, 77.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -253.9, 77.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -254.4, 77.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -254.4, 77.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -254.9, 77.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -254.9, 77.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -255.3, 77.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -255.3, 77.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -255.8, 77.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -255.8, 77.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -256.3, 77.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -256.3, 77.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -52.8, -222.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -52.8, -222.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -54.3, -224 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -54.3, -224 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -55.9, -225.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -55.9, -225.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -57.4, -226.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -57.4, -226.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -59.1, -228 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -59.1, -228 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -60.8, -229.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -60.8, -229.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -62.6, -231 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -62.6, -231 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -64.6, -232.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -64.6, -232.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -66.7, -234.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -66.7, -234.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -69, -236.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -69, -236.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -71.4, -238.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -71.4, -238.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -74, -240.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -74, -240.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -76.8, -242.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -76.8, -242.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -79.9, -245.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -79.9, -245.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -83.1, -248.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -83.1, -248.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -86.6, -251 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -86.6, -251 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -90.4, -254.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -90.4, -254.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -94.5, -257.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -94.5, -257.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -98.9, -261.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -98.9, -261.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -103.6, -265.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -103.6, -265.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -108.8, -269.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -108.8, -269.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -114.3, -274.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -114.3, -274.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -120.4, -279.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -120.4, -279.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -126.9, -284.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -126.9, -284.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -134.1, -290.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -134.1, -290.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -142.1, -297.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -142.1, -297.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -150.8, -304.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -150.8, -304.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -160.5, -312.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -160.5, -312.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -171.5, -321.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -171.5, -321.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -183.9, -332.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -183.9, -332.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -198.3, -344.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -198.3, -344.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -215.6, -358.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -215.6, -358.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -237.1, -376.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -237.1, -376.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -266.6, -401.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -266.6, -401.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -326.5, -451.2 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -326.5, -451.2 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -45, 456.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -45, 456.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -66.1, 227 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -66.1, 227 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -72.6, 155.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -72.6, 155.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -75.9, 119.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -75.9, 119.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -76.9, 107.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -76.9, 107.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -76.9, 106.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -76.9, 106.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -76.9, 105.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -76.9, 105.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -76.9, 104.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -76.9, 104.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -76.9, 103.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -76.9, 103.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -76.9, 102.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -76.9, 102.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -76.9, 101.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -76.9, 101.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -76.9, 100.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -76.9, 100.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -76.9, 99.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -76.9, 99.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -76.9, 98.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -76.9, 98.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -76.9, 97.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -76.9, 97.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -76.9, 96.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -76.9, 96.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -76.9, 95.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -76.9, 95.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -76.9, 94.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -76.9, 94.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -76.9, 93.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -76.9, 93.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -76.9, 92.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -76.9, 92.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -76.9, 91.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -76.9, 91.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -76.9, 90.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -76.9, 90.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -76.9, 89.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -76.9, 89.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -76.9, 88.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -76.9, 88.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -76.9, 87.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -76.9, 87.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -76.9, 86.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -76.9, 86.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -76.9, 85.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -76.9, 85.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -76.9, 84.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -76.9, 84.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -76.9, 83.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -76.9, 83.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -76.9, 82.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -76.9, 82.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -76.9, 81.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -76.9, 81.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -76.9, 80.2 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -76.9, 80.2 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -76.9, 79.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -76.9, 79.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -76.9, 78.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -76.9, 78.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -76.9, 77.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -76.9, 77.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -76.9, 76.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -76.9, 76.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -76.9, 75.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -76.9, 75.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -76.9, 74.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -76.9, 74.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -76.9, 73.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -76.9, 73.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -76.9, 72.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -76.9, 72.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -76.9, 71.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -76.9, 71.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -76.9, 70.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -76.9, 70.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -76.9, 69 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -76.9, 69 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -76.9, 68 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -76.9, 68 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -76.9, 67 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -76.9, 67 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -76.9, 66 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -76.9, 66 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -76.9, 65 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -76.9, 65 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -76.9, 64 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -76.9, 64 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -76.9, 63 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -76.9, 63 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -76.9, 61.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -76.9, 61.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -76.9, 60.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -76.9, 60.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -76.9, 59.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -76.9, 59.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -76.9, 58.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -76.9, 58.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -76.9, 56.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -76.9, 56.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -76.9, 55.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -76.9, 55.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -76.9, 54.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -76.9, 54.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -76.9, 53.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -76.9, 53.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -76.9, 52.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -76.9, 52.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -76.9, 51.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -76.9, 51.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -76.9, 50.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -76.9, 50.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 135.5, 146.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 135.5, 146.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 135.5, 135 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 135.5, 135 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 135.5, 123.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 135.5, 123.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 135.5, 111.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 135.5, 111.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 108.5, 71.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 108.5, 71.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 109.1, -20.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 109.1, -20.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 203.9, 82.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 203.9, 82.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 154.8, 40.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 154.8, 40.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 193.7, 6.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 193.7, 6.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 152.6, 53.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 152.6, 53.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 151.5, 59.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 151.5, 59.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 105.2, 59.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 105.2, 59.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 182.6, 140.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 182.6, 140.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 226.7, 172.1 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 226.7, 172.1 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 203.4, 194.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 203.4, 194.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 210.3, 212.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 210.3, 212.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 215.9, 227.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 215.9, 227.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 220.5, 239.1 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 220.5, 239.1 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 224.3, 249.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 224.3, 249.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 227.5, 257.3 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 227.5, 257.3 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 230.1, 264 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 230.1, 264 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 232.2, 269.3 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 232.2, 269.3 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 233.7, 273.4 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 233.7, 273.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 234.8, 276.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 234.8, 276.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 235.5, 277.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 235.5, 277.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 235.7, 278.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 235.7, 278.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -210.7, -355.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -210.7, -355.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -72, -169.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -72, -169.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -9.1, -85.3 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -9.1, -85.3 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 25.4, -39.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 25.4, -39.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 47.2, -9.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 47.2, -9.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 62.1, 10.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 62.1, 10.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 72.8, 24.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 72.8, 24.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 80.8, 35.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 80.8, 35.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 86.7, 43.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 86.7, 43.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 91.3, 49.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 91.3, 49.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 94.8, 53.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 94.8, 53.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 97.4, 57.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 97.4, 57.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 100.4, 61.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 100.4, 61.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 103.2, 65.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 103.2, 65.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 105.7, 68.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 105.7, 68.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 107.9, 71.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 107.9, 71.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 110, 74.1 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 110, 74.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 111.8, 76.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 111.8, 76.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 113.4, 78.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 113.4, 78.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 114.8, 80.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 114.8, 80.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 116.1, 82.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 116.1, 82.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 117.2, 83.8 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 117.2, 83.8 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 118.1, 85 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 118.1, 85 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 118.9, 86.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 118.9, 86.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 119.6, 87 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 119.6, 87 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 120.1, 87.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 120.1, 87.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 120.6, 88.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 120.6, 88.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 120.9, 88.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 120.9, 88.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 121.1, 89.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 121.1, 89.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 121.3, 89.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 121.3, 89.3 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 124.9 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 124.9 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -128.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -128.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -210.5 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -210.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -211.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -211.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -211.6 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -211.6 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -212.1 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -212.1 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -212.7 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -212.7 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -211.5 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -211.5 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -211 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -211 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -210.7 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -210.7 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -210.4 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -210.4 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -210.2 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -210.2 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -209.9 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -209.9 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -209.7 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -209.7 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -209.6 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -209.6 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -209.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -209.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--目光る
SE004 = playSeVer2( spep_0 + 62, 1265, "",spep_0 + 168, 0, 42, -1);
SE005 = playSeVer2( spep_0 + 64, 1291, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 56 );
SE006 = playSeVer2( spep_0 + 68, 33, "",spep_0 + 115, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 68, 1196, "",spep_0 + 140, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 85 );

--振りかぶる
SE008 = playSeVer2( spep_0 + 140, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1116, "",spep_0 + 202, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--壁崩れる
SE010 = playSeVer2( spep_0 + 198, 1168, "", 0, 42, 0, -1);
setStartTimeMs( SE010,  767 );

--壁に叩きつける
SE011 = playSeVer2( spep_0 + 182, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 87 );
SE012 = playSeVer2( spep_0 + 184, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE012, 87 );

--敵落ちていく
SE013 = playSeVer2( spep_0 + 278, 1183, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 310, 1121, "",spep_0 + 498, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 310, SE014, 63 );

--追いつく
SE015 = playSeVer2( spep_0 + 340, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE015, 63 );
setTimeStretch( SE015, 1.4, 30, 4 );
SE016 = playSeVer2( spep_0 + 400, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE017 = playSeVer2( spep_0 + 448, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 448, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE019 = playSeVer2( spep_0 + 494, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 494, 1121, "",spep_0 + 628, 0, 38, -1);
setPitch( spep_0 + 494, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );

--追いかける
SE021 = playSeVer2( spep_0 + 528, 9, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 560, 44, "", 0, 0, 0, -1);

--敵壁激突
SE023 = playSeVer2( spep_0 + 554, 1159, "",spep_0 + 662, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 554, SE023, 68 );

--爆発
SE024 = playSeVer2( spep_0 + 588, 1024, "",spep_0 + 660, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 640f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ダブル気弾投げ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ダブル気弾投げ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--気弾溜め
SE026 = playSeVer2( spep_2 + 6, 1278, "",spep_2 + 198, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 6, SE026, 54 );
SE027 = playSeVer2( spep_2 + 6, 1226, "",spep_2 + 194, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 6, SE027, 71 );
SE028 = playSeVer2( spep_2 + 40, 1191, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 40, SE028, 178 );
SE029 = playSeVer2( spep_2 + 50, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE029, 136 );

--気弾発射
SE030 = playSeVer2( spep_2 + 140, 1021, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 140, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE031, 67 );
SE032 = playSeVer2( spep_2 + 172, 1021, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 172, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE033, 71 );
SE034 = playSeVer2( spep_2 + 172, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE035 = playSeVer2( spep_2 + 194, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE035, 269 );

--爆発
SE036 = playSeVer2( spep_2 + 260, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 274, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 384f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙～奥に吹っ飛ぶ
-------------------------------------------------
MAX_FRAME_0 = 640;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 対峙～奥に吹っ飛ぶ(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 対峙～奥に吹っ飛ぶ(ef_001_br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -51, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -51, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 196.9, -50.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 196.8, -50.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 196.8, -50.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 196.7, -50.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 196.7, -50.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 196.5, -50.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 196.5, -50.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 196.4, -50.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 196.4, -50.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 196.3, -50.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 196.3, -50.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 196.1, -50.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 196.1, -50.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 196, -50.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 196, -50.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 195.8, -50.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 195.8, -50.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 195.7, -50.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 195.7, -50.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 195.6, -50.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 195.6, -50.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 195.4, -50.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 195.4, -50.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 195.3, -50.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 195.3, -50.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 195.2, -50.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 195.2, -50.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 195, -50.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 195, -50.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 194.9, -50.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 194.9, -50.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 194.7, -50.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 194.7, -50.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 194.6, -50.8 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 194.6, -50.8 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 194.5, -50.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 194.5, -50.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 194.3, -50.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 194.3, -50.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 194.2, -50.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 194.2, -50.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 194.1, -50.8 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 194.1, -50.8 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 193.9, -50.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 193.9, -50.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 193.8, -50.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 193.8, -50.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 193.7, -50.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 193.7, -50.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 193.5, -50.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 193.5, -50.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 193.4, -50.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 193.4, -50.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 193.2, -50.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 193.2, -50.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 556 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, -227, -55.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -227, -55.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -225.9, -55.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -225.9, -55.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -223.8, -54.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -223.8, -54.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -108.6, -37.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -108.6, -37.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -32.5, 14 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -32.5, 14 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -200.2, 18.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -200.2, 18.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -274.9, 110.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -274.9, 110.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -273.4, 46 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -273.4, 46 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -242.8, 77 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -242.8, 77 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -214.7, 48.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -214.7, 48.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -243.8, 77 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -243.8, 77 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -222.2, 99.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -222.2, 99.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -244.7, 77 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -244.7, 77 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -270, 77 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -270, 77 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -245.6, 77 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -245.6, 77 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -246.1, 58.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -246.1, 58.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -246.5, 77 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -246.5, 77 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -227.4, 77 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -227.4, 77 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -247.5, 77 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -247.5, 77 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -261.7, 90.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -261.7, 90.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -248.4, 77 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -248.4, 77 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -248.8, 67.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -248.8, 67.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -249.3, 77 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -249.3, 77 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -241.9, 77 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -250.2, 77 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -250.2, 77 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -245.4, 82.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -245.4, 82.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -251.2, 77.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -251.2, 77.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -251.6, 73.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -251.6, 73.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -252.1, 77.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -252.1, 77.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -252.5, 77.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -252.5, 77.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -253, 77.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -253, 77.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -253.5, 77.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -253.5, 77.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -253.9, 77.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -253.9, 77.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -254.4, 77.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -254.4, 77.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -254.9, 77.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -254.9, 77.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -255.3, 77.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -255.3, 77.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -255.8, 77.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -255.8, 77.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -256.3, 77.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -256.3, 77.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -52.8, -222.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -52.8, -222.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -54.3, -224 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -54.3, -224 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -55.9, -225.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -55.9, -225.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -57.4, -226.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -57.4, -226.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -59.1, -228 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -59.1, -228 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -60.8, -229.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -60.8, -229.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -62.6, -231 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -62.6, -231 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -64.6, -232.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -64.6, -232.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -66.7, -234.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -66.7, -234.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -69, -236.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -69, -236.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -71.4, -238.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -71.4, -238.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -74, -240.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -74, -240.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -76.8, -242.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -76.8, -242.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -79.9, -245.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -79.9, -245.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -83.1, -248.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -83.1, -248.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -86.6, -251 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -86.6, -251 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -90.4, -254.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -90.4, -254.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -94.5, -257.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -94.5, -257.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -98.9, -261.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -98.9, -261.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -103.6, -265.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -103.6, -265.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -108.8, -269.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -108.8, -269.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -114.3, -274.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -114.3, -274.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -120.4, -279.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -120.4, -279.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -126.9, -284.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -126.9, -284.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -134.1, -290.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -134.1, -290.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -142.1, -297.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -142.1, -297.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -150.8, -304.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -150.8, -304.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -160.5, -312.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -160.5, -312.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -171.5, -321.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -171.5, -321.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -183.9, -332.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -183.9, -332.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -198.3, -344.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -198.3, -344.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -215.6, -358.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -215.6, -358.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -237.1, -376.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -237.1, -376.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -266.6, -401.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -266.6, -401.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -326.5, -451.2 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -326.5, -451.2 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -45, 456.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -45, 456.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -66.1, 227 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -66.1, 227 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -72.6, 155.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -72.6, 155.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -75.9, 119.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -75.9, 119.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -76.9, 107.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -76.9, 107.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -76.9, 106.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -76.9, 106.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -76.9, 105.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -76.9, 105.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -76.9, 104.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -76.9, 104.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -76.9, 103.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -76.9, 103.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -76.9, 102.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -76.9, 102.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -76.9, 101.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -76.9, 101.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -76.9, 100.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -76.9, 100.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -76.9, 99.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -76.9, 99.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -76.9, 98.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -76.9, 98.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -76.9, 97.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -76.9, 97.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -76.9, 96.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -76.9, 96.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -76.9, 95.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -76.9, 95.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -76.9, 94.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -76.9, 94.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -76.9, 93.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -76.9, 93.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -76.9, 92.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -76.9, 92.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -76.9, 91.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -76.9, 91.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -76.9, 90.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -76.9, 90.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -76.9, 89.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -76.9, 89.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -76.9, 88.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -76.9, 88.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -76.9, 87.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -76.9, 87.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -76.9, 86.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -76.9, 86.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -76.9, 85.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -76.9, 85.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -76.9, 84.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -76.9, 84.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -76.9, 83.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -76.9, 83.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -76.9, 82.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -76.9, 82.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -76.9, 81.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -76.9, 81.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -76.9, 80.2 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -76.9, 80.2 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -76.9, 79.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -76.9, 79.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -76.9, 78.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -76.9, 78.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -76.9, 77.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -76.9, 77.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -76.9, 76.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -76.9, 76.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -76.9, 75.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -76.9, 75.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -76.9, 74.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -76.9, 74.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -76.9, 73.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -76.9, 73.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -76.9, 72.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -76.9, 72.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -76.9, 71.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -76.9, 71.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -76.9, 70.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -76.9, 70.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -76.9, 69 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -76.9, 69 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -76.9, 68 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -76.9, 68 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -76.9, 67 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -76.9, 67 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -76.9, 66 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -76.9, 66 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -76.9, 65 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -76.9, 65 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -76.9, 64 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -76.9, 64 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -76.9, 63 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -76.9, 63 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -76.9, 61.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -76.9, 61.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -76.9, 60.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -76.9, 60.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -76.9, 59.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -76.9, 59.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -76.9, 58.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -76.9, 58.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -76.9, 56.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -76.9, 56.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -76.9, 55.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -76.9, 55.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -76.9, 54.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -76.9, 54.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -76.9, 53.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -76.9, 53.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -76.9, 52.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -76.9, 52.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -76.9, 51.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -76.9, 51.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -76.9, 50.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -76.9, 50.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 135.5, 146.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 135.5, 146.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 135.5, 135 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 135.5, 135 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 135.5, 123.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 135.5, 123.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 135.5, 111.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 135.5, 111.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 108.5, 71.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 108.5, 71.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 109.1, -20.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 109.1, -20.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 203.9, 82.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 203.9, 82.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 154.8, 40.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 154.8, 40.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 193.7, 6.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 193.7, 6.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 152.6, 53.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 152.6, 53.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 151.5, 59.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 151.5, 59.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 105.2, 59.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 105.2, 59.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 182.6, 140.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 182.6, 140.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 226.7, 172.1 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 226.7, 172.1 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 203.4, 194.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 203.4, 194.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 210.3, 212.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 210.3, 212.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 215.9, 227.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 215.9, 227.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 220.5, 239.1 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 220.5, 239.1 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 224.3, 249.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 224.3, 249.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 227.5, 257.3 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 227.5, 257.3 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 230.1, 264 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 230.1, 264 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 232.2, 269.3 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 232.2, 269.3 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 233.7, 273.4 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 233.7, 273.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 234.8, 276.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 234.8, 276.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 235.5, 277.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 235.5, 277.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 235.7, 278.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 235.7, 278.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -210.7, -355.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -210.7, -355.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -72, -169.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -72, -169.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -9.1, -85.3 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -9.1, -85.3 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 25.4, -39.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 25.4, -39.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 47.2, -9.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 47.2, -9.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 62.1, 10.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 62.1, 10.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 72.8, 24.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 72.8, 24.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 80.8, 35.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 80.8, 35.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 86.7, 43.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 86.7, 43.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 91.3, 49.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 91.3, 49.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 94.8, 53.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 94.8, 53.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 97.4, 57.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 97.4, 57.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 100.4, 61.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 100.4, 61.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 103.2, 65.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 103.2, 65.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 105.7, 68.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 105.7, 68.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 107.9, 71.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 107.9, 71.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 110, 74.1 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 110, 74.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 111.8, 76.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 111.8, 76.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 113.4, 78.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 113.4, 78.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 114.8, 80.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 114.8, 80.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 116.1, 82.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 116.1, 82.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 117.2, 83.8 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 117.2, 83.8 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 118.1, 85 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 118.1, 85 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 118.9, 86.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 118.9, 86.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 119.6, 87 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 119.6, 87 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 120.1, 87.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 120.1, 87.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 120.6, 88.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 120.6, 88.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 120.9, 88.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 120.9, 88.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 121.1, 89.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 121.1, 89.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 121.3, 89.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 121.3, 89.3 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 124.9 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 124.9 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -128.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -128.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -210.5 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -210.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -211.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -211.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -211.6 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -211.6 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -212.1 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -212.1 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -212.7 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -212.7 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -211.5 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -211.5 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -211 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -211 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -210.7 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -210.7 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -210.4 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -210.4 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -210.2 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -210.2 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -210 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -209.9 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -209.9 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -209.7 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -209.7 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -209.6 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -209.6 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -209.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -209.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -209.4 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--目光る
SE004 = playSeVer2( spep_0 + 62, 1265, "",spep_0 + 168, 0, 42, -1);
SE005 = playSeVer2( spep_0 + 64, 1291, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 56 );
SE006 = playSeVer2( spep_0 + 68, 33, "",spep_0 + 115, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 68, 1196, "",spep_0 + 140, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 85 );

--振りかぶる
SE008 = playSeVer2( spep_0 + 140, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1116, "",spep_0 + 202, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--壁崩れる
SE010 = playSeVer2( spep_0 + 198, 1168, "", 0, 42, 0, -1);
setStartTimeMs( SE010,  767 );

--壁に叩きつける
SE011 = playSeVer2( spep_0 + 182, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 87 );
SE012 = playSeVer2( spep_0 + 184, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE012, 87 );

--敵落ちていく
SE013 = playSeVer2( spep_0 + 278, 1183, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 310, 1121, "",spep_0 + 498, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 310, SE014, 63 );

--追いつく
SE015 = playSeVer2( spep_0 + 340, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE015, 63 );
setTimeStretch( SE015, 1.4, 30, 4 );
SE016 = playSeVer2( spep_0 + 400, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE017 = playSeVer2( spep_0 + 448, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 448, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE019 = playSeVer2( spep_0 + 494, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 494, 1121, "",spep_0 + 628, 0, 38, -1);
setPitch( spep_0 + 494, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );

--追いかける
SE021 = playSeVer2( spep_0 + 528, 9, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 560, 44, "", 0, 0, 0, -1);

--敵壁激突
SE023 = playSeVer2( spep_0 + 554, 1159, "",spep_0 + 662, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 554, SE023, 68 );

--爆発
SE024 = playSeVer2( spep_0 + 588, 1024, "",spep_0 + 660, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 640f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ダブル気弾投げ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ダブル気弾投げ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--気弾溜め
SE026 = playSeVer2( spep_2 + 6, 1278, "",spep_2 + 198, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 6, SE026, 54 );
SE027 = playSeVer2( spep_2 + 6, 1226, "",spep_2 + 194, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 6, SE027, 71 );
SE028 = playSeVer2( spep_2 + 40, 1191, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 40, SE028, 178 );
SE029 = playSeVer2( spep_2 + 50, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE029, 136 );

--気弾発射
SE030 = playSeVer2( spep_2 + 140, 1021, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 140, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE031, 67 );
SE032 = playSeVer2( spep_2 + 172, 1021, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 172, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE033, 71 );
SE034 = playSeVer2( spep_2 + 172, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE035 = playSeVer2( spep_2 + 194, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE035, 269 );

--爆発
SE036 = playSeVer2( spep_2 + 260, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 274, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 384f -2f

end