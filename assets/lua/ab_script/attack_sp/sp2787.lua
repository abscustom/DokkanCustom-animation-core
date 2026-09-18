--1029980:UR_魔人ブウ(アルティメット悟飯吸収)_必殺技：スーパーゴーストカミカゼアタック
--sp_effect_a9_00139
--sp2787

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163395;  --ef_001 開始〜カットイン
SP_01b = 163396;  --ef_001b 開始〜カットイン
SP_02  = 163399;  --ef_002 開始〜カットイン
SP_02b = 163400;  --ef_002b 開始〜カットイン

--エフェクト(敵)
SP_01r  = 163397;  --ef_001r 腕振り〜フィニッシュ
SP_01br = 163398;  --ef_001br 腕振り〜フィニッシュ
SP_02r = 163401;  --ef_002r 腕振り〜フィニッシュ


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
-- 開始〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 520;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜カットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 346;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -75, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 184.9, -5.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 185.5, -6.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 185.5, -6.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 186.1, -7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 186.1, -7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 186.7, -7.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 186.7, -7.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 187.2, -8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 187.2, -8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 187.8, -8.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 187.8, -8.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 188.4, -8.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 188.4, -8.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 188.9, -9.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 188.9, -9.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 189.5, -9.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 189.5, -9.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 190, -10.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 190, -10.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 190.6, -10.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 190.6, -10.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 191.1, -11 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 191.1, -11 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 191.6, -11.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 191.6, -11.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 192.1, -11.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 192.1, -11.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 192.6, -12.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 192.6, -12.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 193.1, -12.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 193.1, -12.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 193.6, -12.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 193.6, -12.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 194.1, -13.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 194.1, -13.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 194.6, -13.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 194.6, -13.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 195, -13.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 195, -13.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 195.5, -13.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 195.5, -13.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 195.9, -14.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 195.9, -14.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 196.4, -14.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 196.4, -14.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 196.8, -14.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 196.8, -14.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 197.3, -14.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 197.3, -14.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 197.7, -15 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 197.7, -15 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 198.1, -15.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 198.1, -15.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 198.5, -15.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 198.5, -15.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 198.9, -15.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 198.9, -15.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 199.3, -15.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 199.3, -15.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 199.7, -15.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 199.7, -15.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.71, 0.71 );
--setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.72, 0.72 );
--setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.73, 0.73 );
--setScaleKey( spep_0 + 41 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 0.74, 0.74 );
--setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, -1, 56 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -1, 56 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -1, 55.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -1, 55.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -1, 55.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -1, 55.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1, 55.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -1, 55.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -1, 55.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -1, 55.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -1, 55.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -1, 55.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -1, 55.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -1, 55.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -1, 55.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -1, 55.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -1, 55.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -1, 55.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -1, 55.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -1, 55.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -1, 55 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -1, 55 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -1, 54.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -1, 54.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -1, 54.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -1, 54.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -1, 54.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -1, 54.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -1, 54.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -1, 54.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1, 54.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -1, 54.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -1, 54.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -1, 54.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -1, 54.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -1, 54.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -1, 54.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -1, 54.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -1, 54.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -1, 54.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -1, 54 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -1, 54 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -1, 53.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -1, 53.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -1, 53.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -1, 53.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -1, 53.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -1, 53.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -1, 53.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -1, 53.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -1, 53.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -1, 53.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -1, 53.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -1, 53.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -1, 53.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -1, 53.3 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.63, 0.63 );
--setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.61, 0.61 );
--setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 530, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--お化け出す１
SE003 = playSeVer2( spep_0 + 50, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 50, SE003, -900 );
setTimeStretch( SE003, 0.4, 30, 4 );
SE004 = playSeVer2( spep_0 + 54, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE004,  67 );
setBandpassFilter( spep_0 + 54, SE004, 300, 24000 );
SE005 = playSeVer2( spep_0 + 54, 1246, "", 0, 0, 0, -1);

--お化け出す２
SE006 = playSeVer2( spep_0 + 78, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 78, SE006, -900 );
setTimeStretch( SE006, 0.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 80, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE007,  33 );
setBandpassFilter( spep_0 + 80, SE007, 300, 24000 );
SE008 = playSeVer2( spep_0 + 82, 1246, "", 0, 0, 0, -1);

--お化け出す３
SE009 = playSeVer2( spep_0 + 112, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 112, SE009, -900 );
setTimeStretch( SE009, 0.4, 30, 4 );
SE010 = playSeVer2( spep_0 + 114, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE010,  33 );
setBandpassFilter( spep_0 + 114, SE010, 300, 24000 );
SE011 = playSeVer2( spep_0 + 114, 1246, "", 0, 0, 0, -1);

--お化け出す４
SE012 = playSeVer2( spep_0 + 148, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 148, SE012, -900 );
setTimeStretch( SE012, 0.4, 30, 4 );
SE013 = playSeVer2( spep_0 + 152, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  67 );
setBandpassFilter( spep_0 + 152, SE013, 300, 24000 );
SE014 = playSeVer2( spep_0 + 152, 1246, "", 0, 0, 0, -1);

--お化け出す５
SE015 = playSeVer2( spep_0 + 184, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 184, SE015, -900 );
setTimeStretch( SE015, 0.4, 30, 4 );
SE016 = playSeVer2( spep_0 + 186, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE016,  33 );
setBandpassFilter( spep_0 + 186, SE016, 300, 24000 );
SE017 = playSeVer2( spep_0 + 186, 1246, "", 0, 0, 0, -1);

--お化け集まってくる
SE018 = playSeVer2( spep_0 + 196, 1319, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE018, 186 );
SE019 = playSeVer2( spep_0 + 196, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE019, 83 );
SE020 = playSeVer2( spep_0 + 222, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE020, 79 );
SE021 = playSeVer2( spep_0 + 282, 37, "", 0, 0, 0, -1);

--腕クロス
SE023 = playSeVer2( spep_0 + 412, 1004, "", 0, 0, 0, -1);

--集中線
SE024 = playSeVer2( spep_0 + 442, 1237, "",spep_0 + 526, 0, 8, -1);
SE025 = playSeVer2( spep_0 + 442, 20, "",spep_0 + 526, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 442, SE025, 73 );

--構える
SE026 = playSeVer2( spep_0 + 450, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE026, 214 );

--構える２
SE027 = playSeVer2( spep_0 + 478, 1233, "",spep_0 + 526, 0, 8, -1);
SE028 = playSeVer2( spep_0 + 492, 1006, "",spep_0 + 526, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --520f

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

    spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -160 );
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

    spname = entryEffectLife( spep_1 + 0, 3246, 90, 0x100, -1, 0, 0, -160 );
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

    spname = entryEffectLife( spep_1 + 0, 3250, 90, 0x100, -1, 0, 0, -160 );
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
playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

--振りかぶる
SE030 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 100, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- 腕振り〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 380;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 腕振り〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 腕振り〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 242 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 480.7, 64.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 480.7, 64.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 478.4, 64.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 478.4, 64.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 471.7, 64.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 471.7, 64.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 460.5, 64.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 460.5, 64.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 444.8, 64.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 444.8, 64.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 424.6, 64.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 424.6, 64.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 400, 64.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 400, 64.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 370.8, 64.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 370.8, 64.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 337.2, 64.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 337.2, 64.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 299, 64.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 299, 64.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 256.4, 64.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 256.4, 64.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 209.3, 64.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 209.3, 64.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 202.4, 64.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 202.4, 64.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 195.6, 64.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 195.6, 64.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 189.1, 64.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 189.1, 64.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 182.8, 64.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 182.8, 64.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 176.8, 64 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 176.8, 64 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 171, 64 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 171, 64 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 165.4, 64 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 165.4, 64 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 160, 63.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 160, 63.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 154.8, 63.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 154.8, 63.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 149.9, 63.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 149.9, 63.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 145.2, 63.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 145.2, 63.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 140.8, 63.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 140.8, 63.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 136.6, 63.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 136.6, 63.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 132.6, 63.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 132.6, 63.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 128.8, 63.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 128.8, 63.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 125.3, 63.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 125.3, 63.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 121.9, 63.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 121.9, 63.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 118.9, 63.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 118.9, 63.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 116, 63.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 116, 63.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 113.4, 63.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 113.4, 63.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 111, 63.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 111, 63.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 108.9, 63.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 108.9, 63.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 107, 63.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 107, 63.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 105.3, 63.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 105.3, 63.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 104.2, 62.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 104.2, 62.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 103.2, 62.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 103.2, 62.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 102.3, 62.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 102.3, 62.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 101.5, 62 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 101.5, 62 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 101.2, 59.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 101.2, 59.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 101.7, 52.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 101.7, 52.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 102.7, 41.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 102.7, 41.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 104.2, 25.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 104.2, 25.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 106.6, 4.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 106.6, 4.6 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -9 );

setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 225 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 227 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 231 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 + 233 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 241 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--決めポーズ
SE031 = playSeVer2( spep_2 + 18, 1189, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 20, 1179, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 24, 1061, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 24, 1042, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 24, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE035, 66 );

--お化け飛んでいくる
SE036 = playSeVer2( spep_2 + 48, 1247, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE036, 69 );
setTimeStretch( SE036, 1.66, 30, 4 );
SE037 = playSeVer2( spep_2 + 48, 1011, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 48, 1291, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE039, 61 );
setTimeStretch( SE039, 1.4, 30, 4 );
SE040 = playSeVer2( spep_2 + 58, 1314, "",spep_2 + 254, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 58, SE040, 141 );

--お化け向かっていく
SE041 = playSeVer2( spep_2 + 116, 1116, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 116, 1017, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
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
--お化け向かっていく
SE043 = playSeVer2( spep_2 + 168, 1157, "",spep_2 + 260, 0, 32, -1);

--爆発
SE044 = playSeVer2( spep_2 + 238, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 246, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 266, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 306, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 232); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  380f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開始〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 520;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始〜カットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始〜カットイン(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 346;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 184.9, -5.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 185.5, -6.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 185.5, -6.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 186.1, -7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 186.1, -7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 186.7, -7.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 186.7, -7.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 187.2, -8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 187.2, -8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 187.8, -8.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 187.8, -8.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 188.4, -8.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 188.4, -8.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 188.9, -9.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 188.9, -9.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 189.5, -9.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 189.5, -9.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 190, -10.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 190, -10.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 190.6, -10.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 190.6, -10.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 191.1, -11 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 191.1, -11 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 191.6, -11.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 191.6, -11.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 192.1, -11.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 192.1, -11.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 192.6, -12.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 192.6, -12.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 193.1, -12.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 193.1, -12.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 193.6, -12.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 193.6, -12.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 194.1, -13.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 194.1, -13.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 194.6, -13.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 194.6, -13.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 195, -13.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 195, -13.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 195.5, -13.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 195.5, -13.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 195.9, -14.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 195.9, -14.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 196.4, -14.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 196.4, -14.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 196.8, -14.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 196.8, -14.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 197.3, -14.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 197.3, -14.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 197.7, -15 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 197.7, -15 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 198.1, -15.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 198.1, -15.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 198.5, -15.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 198.5, -15.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 198.9, -15.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 198.9, -15.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 199.3, -15.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 199.3, -15.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 199.7, -15.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 199.7, -15.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.71, 0.71 );
--setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.72, 0.72 );
--setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.73, 0.73 );
--setScaleKey( spep_0 + 41 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 0.74, 0.74 );
--setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1, 56 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1, 56 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1, 55.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1, 55.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1, 55.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 1, 55.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1, 55.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 1, 55.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1, 55.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 1, 55.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1, 55.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 1, 55.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1, 55.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 1, 55.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1, 55.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 1, 55.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1, 55.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 1, 55.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 1, 55.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 1, 55.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 1, 55 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 1, 55 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 1, 54.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 1, 54.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 1, 54.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 1, 54.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 1, 54.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 1, 54.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 1, 54.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 1, 54.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 1, 54.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 1, 54.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 1, 54.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 1, 54.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 1, 54.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 1, 54.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 1, 54.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 1, 54.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 1, 54.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 1, 54.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 1, 54 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 1, 54 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 1, 53.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 1, 53.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 1, 53.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 1, 53.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 1, 53.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 1, 53.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 1, 53.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1, 53.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 1, 53.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 1, 53.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 1, 53.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 1, 53.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 1, 53.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 1, 53.3 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.63, 0.63 );
--setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.61, 0.61 );
--setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 530, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--お化け出す１
SE003 = playSeVer2( spep_0 + 50, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 50, SE003, -900 );
setTimeStretch( SE003, 0.4, 30, 4 );
SE004 = playSeVer2( spep_0 + 54, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE004,  67 );
setBandpassFilter( spep_0 + 54, SE004, 300, 24000 );
SE005 = playSeVer2( spep_0 + 54, 1246, "", 0, 0, 0, -1);

--お化け出す２
SE006 = playSeVer2( spep_0 + 78, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 78, SE006, -900 );
setTimeStretch( SE006, 0.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 80, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE007,  33 );
setBandpassFilter( spep_0 + 80, SE007, 300, 24000 );
SE008 = playSeVer2( spep_0 + 82, 1246, "", 0, 0, 0, -1);

--お化け出す３
SE009 = playSeVer2( spep_0 + 112, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 112, SE009, -900 );
setTimeStretch( SE009, 0.4, 30, 4 );
SE010 = playSeVer2( spep_0 + 114, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE010,  33 );
setBandpassFilter( spep_0 + 114, SE010, 300, 24000 );
SE011 = playSeVer2( spep_0 + 114, 1246, "", 0, 0, 0, -1);

--お化け出す４
SE012 = playSeVer2( spep_0 + 148, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 148, SE012, -900 );
setTimeStretch( SE012, 0.4, 30, 4 );
SE013 = playSeVer2( spep_0 + 152, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  67 );
setBandpassFilter( spep_0 + 152, SE013, 300, 24000 );
SE014 = playSeVer2( spep_0 + 152, 1246, "", 0, 0, 0, -1);

--お化け出す５
SE015 = playSeVer2( spep_0 + 184, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 184, SE015, -900 );
setTimeStretch( SE015, 0.4, 30, 4 );
SE016 = playSeVer2( spep_0 + 186, 31, "", 0, 2, 0, -1);
setStartTimeMs( SE016,  33 );
setBandpassFilter( spep_0 + 186, SE016, 300, 24000 );
SE017 = playSeVer2( spep_0 + 186, 1246, "", 0, 0, 0, -1);

--お化け集まってくる
SE018 = playSeVer2( spep_0 + 196, 1319, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE018, 186 );
SE019 = playSeVer2( spep_0 + 196, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE019, 83 );
SE020 = playSeVer2( spep_0 + 222, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE020, 79 );
SE021 = playSeVer2( spep_0 + 282, 37, "", 0, 0, 0, -1);

--腕クロス
SE023 = playSeVer2( spep_0 + 412, 1004, "", 0, 0, 0, -1);

--集中線
SE024 = playSeVer2( spep_0 + 442, 1237, "",spep_0 + 526, 0, 8, -1);
SE025 = playSeVer2( spep_0 + 442, 20, "",spep_0 + 526, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 442, SE025, 73 );

--構える
SE026 = playSeVer2( spep_0 + 450, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE026, 214 );

--構える２
SE027 = playSeVer2( spep_0 + 478, 1233, "",spep_0 + 526, 0, 8, -1);
SE028 = playSeVer2( spep_0 + 492, 1006, "",spep_0 + 526, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --520f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- -- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -160 );
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
playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

--振りかぶる
SE030 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 100, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- 腕振り〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 380;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 腕振り〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 腕振り〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 242 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 480.7, 64.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 480.7, 64.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 478.4, 64.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 478.4, 64.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 471.7, 64.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 471.7, 64.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 460.5, 64.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 460.5, 64.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 444.8, 64.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 444.8, 64.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 424.6, 64.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 424.6, 64.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 400, 64.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 400, 64.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 370.8, 64.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 370.8, 64.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 337.2, 64.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 337.2, 64.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 299, 64.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 299, 64.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 256.4, 64.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 256.4, 64.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 209.3, 64.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 209.3, 64.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 202.4, 64.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 202.4, 64.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 195.6, 64.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 195.6, 64.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 189.1, 64.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 189.1, 64.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 182.8, 64.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 182.8, 64.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 176.8, 64 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 176.8, 64 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 171, 64 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 171, 64 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 165.4, 64 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 165.4, 64 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 160, 63.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 160, 63.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 154.8, 63.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 154.8, 63.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 149.9, 63.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 149.9, 63.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 145.2, 63.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 145.2, 63.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 140.8, 63.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 140.8, 63.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 136.6, 63.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 136.6, 63.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 132.6, 63.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 132.6, 63.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 128.8, 63.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 128.8, 63.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 125.3, 63.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 125.3, 63.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 121.9, 63.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 121.9, 63.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 118.9, 63.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 118.9, 63.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 116, 63.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 116, 63.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 113.4, 63.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 113.4, 63.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 111, 63.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 111, 63.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 108.9, 63.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 108.9, 63.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 107, 63.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 107, 63.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 105.3, 63.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 105.3, 63.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 104.2, 62.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 104.2, 62.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 103.2, 62.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 103.2, 62.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 102.3, 62.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 102.3, 62.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 101.5, 62 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 101.5, 62 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 101.2, 59.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 101.2, 59.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 101.7, 52.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 101.7, 52.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 102.7, 41.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 102.7, 41.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 104.2, 25.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 104.2, 25.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 106.6, 4.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 106.6, 4.6 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -9 );

setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 225 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 227 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 231 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 + 233 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 241 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--決めポーズ
SE031 = playSeVer2( spep_2 + 18, 1189, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 20, 1179, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 24, 1061, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 24, 1042, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 24, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE035, 66 );

--お化け飛んでいくる
SE036 = playSeVer2( spep_2 + 48, 1247, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE036, 69 );
setTimeStretch( SE036, 1.66, 30, 4 );
SE037 = playSeVer2( spep_2 + 48, 1011, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 48, 1291, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE039, 61 );
setTimeStretch( SE039, 1.4, 30, 4 );
SE040 = playSeVer2( spep_2 + 58, 1314, "",spep_2 + 254, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 58, SE040, 141 );

--お化け向かっていく
SE041 = playSeVer2( spep_2 + 116, 1116, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 116, 1017, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
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
--お化け向かっていく
SE043 = playSeVer2( spep_2 + 168, 1157, "",spep_2 + 260, 0, 32, -1);

--爆発
SE044 = playSeVer2( spep_2 + 238, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 246, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 266, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 306, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 232); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  380f -4


end
