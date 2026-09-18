--1029670:UR_超サイヤ人トランクス(幼年期)_必殺技：バーニングブレイカー
--sp_effect_b1_00290
--sp2757

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163123; --対峙→ストンピング→気弾溜め ef_001
SP_01b = 163124; --対峙→ストンピング→気弾溜め ef_001b
SP_02  = 163127; --着弾発射→爆発 ef_002
SP_02b = 163128; --着弾発射→爆発 ef_002b

--エフェクト(敵)
SP_01r  = 163125; --対峙→ストンピング→気弾溜め ef_001r
SP_01br = 163126; --対峙→ストンピング→気弾溜め ef_001br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙→ストンピング→気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 454;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙→ストンピング→気弾溜め(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙→ストンピング→気弾溜め(ef_001b)
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
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 113.5, -119.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 112.7, -119.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 112.7, -119.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 112, -119.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 112, -119.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 111.2, -119.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 111.2, -119.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 109.8, -119.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 109.8, -119.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 109, -119.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 109, -119.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 108.3, -119.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 108.3, -119.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 107.6, -119.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 107.6, -119.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 106.8, -119.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 106.8, -119.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 106.1, -119.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 106.1, -119.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 105.4, -119.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 105.4, -119.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 104.6, -119.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 104.6, -119.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 103.9, -119.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 103.9, -119.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 103.2, -119.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 103.2, -119.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 102.4, -119.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 102.4, -119.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 101.7, -119.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 101.7, -119.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 101, -119.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 101, -119.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 100.2, -119.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 100.2, -119.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 99.5, -119.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 99.5, -119.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 98.7, -119.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 98.7, -119.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 98, -119.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 98, -119.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 97.3, -119.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 97.3, -119.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 96.5, -119.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 96.5, -119.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 95.8, -119.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 95.8, -119.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 95.1, -119.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 95.1, -119.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 94.3, -119.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 94.3, -119.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 93.6, -119.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 93.6, -119.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 92.9, -119.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 92.9, -119.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 92.1, -119.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 92.1, -119.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 91.4, -119.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 91.4, -119.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 90.7, -119.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 90.7, -119.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 89.9, -119.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 89.9, -119.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 89.2, -119.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 89.2, -119.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 88.5, -119.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 88.5, -119.4 , 0 );

setScaleKey( spep_0 + 0, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2.98, 2.98 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 190 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 190 + OFFSET_X, 1, 6.4, 0.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 6.4, 0.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 69.8, -82.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 69.8, -82.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 69.9, -82.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 69.9, -82.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 79.9, -95.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 79.9, -95.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 63.3, -93.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 63.3, -93.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 57.9, -84.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 57.9, -84.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 66.1, -98.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 66.1, -98.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 176.6, -31.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 176.6, -31.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 198.1, -35.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 198.1, -35.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 184.3, -32.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 184.3, -32.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 206.6, -36.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 206.6, -36.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 188.1, -32.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 188.1, -32.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 203.6, -44.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 203.6, -44.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -12.2, -173.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -12.2, -173.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -15.1, -180.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -15.1, -180.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -17.2, -173.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -17.2, -173.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -12.9, -178.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -12.9, -178.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -9.4, -168.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -9.4, -168.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -12.7, -179 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -12.7, -179 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -17.5, -172.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -17.5, -172.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -13.8, -178.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -13.8, -178.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -19.1, -168.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -19.1, -168.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -12.5, -184.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -12.5, -184.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -6.6, -185.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -6.6, -185.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -12.5, -193.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -12.5, -193.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -19.1, -186.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -19.1, -186.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -16.1, -187.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -16.1, -187.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -22, -173 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -22, -173 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -17.5, -179.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -17.5, -179.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -13.8, -171.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -13.8, -171.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -17.5, -177.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -17.5, -177.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -22, -168.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -22, -168.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -14.6, -179 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -14.6, -179 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -17.5, -173.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -17.5, -173.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -14.5, -178.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -14.5, -178.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -12.2, -168.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -12.2, -168.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -16.9, -176 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -16.9, -176 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -22, -217.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -22, -217.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -36.5, -255.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -36.5, -255.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -33.9, -193 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -33.9, -193 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -25.6, -187 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -25.6, -187 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -24, -172.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -24, -172.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -18.7, -177.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -18.7, -177.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -21.2, -229 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -21.2, -229 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -33.4, -235.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -33.4, -235.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -43.7, -193 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -43.7, -193 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -42.3, -192.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -42.3, -192.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -40.9, -191.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -40.9, -191.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -39.5, -190.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -39.5, -190.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -38.1, -189.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -38.1, -189.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -36.7, -188.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -36.7, -188.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -35.3, -188.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -35.3, -188.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -33.9, -187.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -33.9, -187.3 , 0 );

setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_0 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -49.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 166, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 202, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 218; --エンドフェイズのフレーム数を置き換える --要確認
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り上げ
SE005 = playSeVer2( spep_0 + 230, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 238, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 266, 1000, "", 0, 0, 0, -1);

--連続蹴り
SE010 = playSeVer2( spep_0 + 284, 1009, "",spep_0 + 304, 0, 4, -1);
SE011 = playSeVer2( spep_0 + 284, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE011, 60 );
SE012 = playSeVer2( spep_0 + 292, 1010, "",spep_0 + 314, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 292, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE013, 56 );
SE014 = playSeVer2( spep_0 + 300, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE014, 67 );
SE015 = playSeVer2( spep_0 + 302, 1009, "",spep_0 + 324, 0, 6, -1);
SE016 = playSeVer2( spep_0 + 310, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE016, 71 );
SE017 = playSeVer2( spep_0 + 312, 1010, "",spep_0 + 334, 0, 6, -1);

--両足ふみつけ
SE018 = playSeVer2( spep_0 + 336, 1153, "",spep_0 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 336, SE018, 68 );
SE019 = playSeVer2( spep_0 + 336, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 356, 1153, "",spep_0 + 394, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 356, SE020, 77 );
SE021 = playSeVer2( spep_0 + 356, 1110, "", 0, 0, 0, -1);

--飛び上がる
SE022 = playSeVer2( spep_0 + 356, 1207, "",spep_0 + 444, 16, 28, -1);
SE023 = playSeVer2( spep_0 + 378, 63, "",spep_0 + 430, 0, 18, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 422, 1204, "",spep_0 + 472, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 422, SE024, 115 );
SE025 = playSeVer2( spep_0 + 424, 1012, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 424, 1296, "",spep_0 + 472, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 424, SE026, 117 );
setPitch( spep_0 + 424, SE026, 200 );
setTimeStretch( SE026, 1.13, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --454f

-- ** 音 ** --
--気弾発射
SE028 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE028, 77 );
SE029 = playSeVer2( spep_1 + 90, 1021, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 90, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 90, 1201, "", 0, 0, 0, -1);

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 着弾発射→爆発
-------------------------------------------------
MAX_FRAME_2 = 234;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 着弾発射→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 着弾発射→爆発(ef_002b)
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
--敵の動き１
setDisp( spep_2 + 64 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 64 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 27.7, -71.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -1, -77 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 16.4, -56.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 17.9, -84.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -1, -63.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -1, -63.7 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.01, 2.01 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -52.4 );

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_2 + 22, 1401, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 22, 1201, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 42, 1401, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 42, 1201, "", 0, 0, 0, -1);

--気弾飛んでいく
SE036 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE036, 200 );

--爆発
SE037 = playSeVer2( spep_2 + 84, 1023, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 102, 1011, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 114); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 234f -6

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙→ストンピング→気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 454;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 対峙→ストンピング→気弾溜め(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 対峙→ストンピング→気弾溜め(ef_001br)
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
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 113.5, -119.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 112.7, -119.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 112.7, -119.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 112, -119.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 112, -119.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 111.2, -119.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 111.2, -119.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 109.8, -119.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 109.8, -119.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 109, -119.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 109, -119.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 108.3, -119.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 108.3, -119.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 107.6, -119.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 107.6, -119.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 106.8, -119.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 106.8, -119.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 106.1, -119.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 106.1, -119.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 105.4, -119.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 105.4, -119.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 104.6, -119.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 104.6, -119.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 103.9, -119.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 103.9, -119.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 103.2, -119.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 103.2, -119.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 102.4, -119.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 102.4, -119.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 101.7, -119.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 101.7, -119.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 101, -119.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 101, -119.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 100.2, -119.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 100.2, -119.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 99.5, -119.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 99.5, -119.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 98.7, -119.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 98.7, -119.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 98, -119.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 98, -119.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 97.3, -119.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 97.3, -119.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 96.5, -119.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 96.5, -119.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 95.8, -119.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 95.8, -119.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 95.1, -119.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 95.1, -119.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 94.3, -119.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 94.3, -119.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 93.6, -119.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 93.6, -119.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 92.9, -119.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 92.9, -119.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 92.1, -119.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 92.1, -119.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 91.4, -119.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 91.4, -119.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 90.7, -119.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 90.7, -119.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 89.9, -119.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 89.9, -119.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 89.2, -119.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 89.2, -119.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 88.5, -119.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 88.5, -119.4 , 0 );

setScaleKey( spep_0 + 0, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2.98, 2.98 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 190 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 190 + OFFSET_X, 1, 6.4, 0.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 6.4, 0.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 69.8, -82.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 69.8, -82.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 69.9, -82.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 69.9, -82.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 79.9, -95.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 79.9, -95.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 63.3, -93.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 63.3, -93.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 57.8, -84.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 57.9, -84.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 57.9, -84.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 66.1, -98.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 66.1, -98.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 176.6, -31.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 176.6, -31.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 198.1, -35.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 198.1, -35.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 184.3, -32.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 184.3, -32.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 206.6, -36.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 206.6, -36.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 188.1, -32.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 188.1, -32.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 203.6, -44.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 203.6, -44.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -12.2, -173.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -12.2, -173.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -15.1, -180.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -15.1, -180.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -17.2, -173.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -17.2, -173.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -12.9, -178.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -12.9, -178.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -9.4, -168.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -9.4, -168.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -12.7, -179 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -12.7, -179 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -17.5, -172.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -17.5, -172.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -13.8, -178.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -13.8, -178.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -19.1, -168.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -19.1, -168.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -12.5, -184.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -12.5, -184.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -6.6, -185.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -6.6, -185.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -12.5, -193.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -12.5, -193.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -19.1, -186.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -19.1, -186.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -16.1, -187.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -16.1, -187.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -22, -173 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -22, -173 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -17.5, -179.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -17.5, -179.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -13.8, -171.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -13.8, -171.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -17.5, -177.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -17.5, -177.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -22, -168.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -22, -168.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -14.6, -179 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -14.6, -179 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -17.5, -173.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -17.5, -173.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -14.5, -178.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -14.5, -178.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -12.2, -168.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -12.2, -168.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -16.9, -176 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -16.9, -176 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -22, -217.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -22, -217.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -36.5, -255.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -36.5, -255.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -33.9, -193 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -33.9, -193 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -25.6, -187 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -25.6, -187 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -24, -172.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -24, -172.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -18.7, -177.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -18.7, -177.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -22.4, -168.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -21.2, -229 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -21.2, -229 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -33.4, -235.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -33.4, -235.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 1, -226.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -43.7, -193 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -43.7, -193 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -42.3, -192.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -42.3, -192.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -40.9, -191.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -40.9, -191.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -39.5, -190.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -39.5, -190.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -38.1, -189.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -38.1, -189.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -36.7, -188.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -36.7, -188.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -35.3, -188.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -35.3, -188.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -33.9, -187.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -33.9, -187.3 , 0 );

setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_0 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -49.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 166, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 202, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 218; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り上げ
SE005 = playSeVer2( spep_0 + 230, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 238, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 266, 1000, "", 0, 0, 0, -1);

--連続蹴り
SE010 = playSeVer2( spep_0 + 284, 1009, "",spep_0 + 304, 0, 4, -1);
SE011 = playSeVer2( spep_0 + 284, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE011, 60 );
SE012 = playSeVer2( spep_0 + 292, 1010, "",spep_0 + 314, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 292, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE013, 56 );
SE014 = playSeVer2( spep_0 + 300, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE014, 67 );
SE015 = playSeVer2( spep_0 + 302, 1009, "",spep_0 + 324, 0, 6, -1);
SE016 = playSeVer2( spep_0 + 310, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE016, 71 );
SE017 = playSeVer2( spep_0 + 312, 1010, "",spep_0 + 334, 0, 6, -1);

--両足ふみつけ
SE018 = playSeVer2( spep_0 + 336, 1153, "",spep_0 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 336, SE018, 68 );
SE019 = playSeVer2( spep_0 + 336, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 356, 1153, "",spep_0 + 394, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 356, SE020, 77 );
SE021 = playSeVer2( spep_0 + 356, 1110, "", 0, 0, 0, -1);

--飛び上がる
SE022 = playSeVer2( spep_0 + 356, 1207, "",spep_0 + 444, 16, 28, -1);
SE023 = playSeVer2( spep_0 + 378, 63, "",spep_0 + 430, 0, 18, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 422, 1204, "",spep_0 + 472, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 422, SE024, 115 );
SE025 = playSeVer2( spep_0 + 424, 1012, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 424, 1296, "",spep_0 + 472, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 424, SE026, 117 );
setPitch( spep_0 + 424, SE026, 200 );
setTimeStretch( SE026, 1.13, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --454f

-- ** 音 ** --
--気弾発射
SE028 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE028, 77 );
SE029 = playSeVer2( spep_1 + 90, 1021, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 90, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 90, 1201, "", 0, 0, 0, -1);

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 着弾発射→爆発
-------------------------------------------------
MAX_FRAME_2 = 234;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 着弾発射→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 着弾発射→爆発(ef_002b)
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
--敵の動き１
setDisp( spep_2 + 64 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 64 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -27.7, -71.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 1, -77 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -16.4, -56.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -17.9, -84.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 1, -63.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 1, -63.7 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.01, 2.01 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 52.4 );

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_2 + 22, 1401, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 22, 1201, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 42, 1401, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 42, 1201, "", 0, 0, 0, -1);

--気弾飛んでいく
SE036 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE036, 200 );

--爆発
SE037 = playSeVer2( spep_2 + 84, 1023, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 102, 1011, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 114); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 234f -6

end