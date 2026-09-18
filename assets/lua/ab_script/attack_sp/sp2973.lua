--1032770:LR_孫悟空_超必殺技：かめはめ波
--sp_effect_b4_00423
--sp2973

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164406; --開幕〜背中向きで奥の敵へ向けて ef_001
SP_02  = 164407; --手の中で気弾を膨らむ～フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜背中向きで奥の敵へ向けて
-------------------------------------------------
MAX_FRAME_0 = 194;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜背中向きで奥の敵へ向けて(ef_001)
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
spep_x = spep_0 + 100;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -57, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -57, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -57, 515.5 , 0 );
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
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 341.2, -141 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 336.4, -141 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 336.4, -141 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 331.7, -141 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 331.7, -141 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 327.1, -141 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 327.1, -141 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 322.6, -141 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 322.6, -141 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 318.2, -141 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 318.2, -141 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 313.9, -141 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 313.9, -141 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 309.7, -141 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 309.7, -141 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 305.6, -141 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 305.6, -141 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 301.7, -141 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 301.7, -141 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 297.8, -141 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 297.8, -141 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 294, -141 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 294, -141 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 290.4, -141 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 290.4, -141 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 286.8, -141 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 286.8, -141 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 283.3, -141 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 283.3, -141 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 280, -141 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 280, -141 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 276.7, -141 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 276.7, -141 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 273.6, -141 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 273.6, -141 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 270.5, -141 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 270.5, -141 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 267.6, -141 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 267.6, -141 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 264.7, -141 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 264.7, -141 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 262, -141 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 262, -141 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 259.4, -141 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 259.4, -141 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 256.8, -141 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 256.8, -141 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 254.4, -141 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 254.4, -141 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 252.1, -141 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 252.1, -141 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 249.9, -141 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 249.9, -141 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 247.8, -141 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 247.8, -141 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 245.7, -141 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 245.7, -141 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 243.8, -141 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 243.8, -141 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 242, -141 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 242, -141 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 240.3, -141 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 240.3, -141 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 238.7, -141 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 238.7, -141 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 237.2, -141 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 237.2, -141 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 235.8, -141 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 235.8, -141 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 234.5, -141 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 234.5, -141 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 233.4, -141 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 233.4, -141 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 232.3, -141 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 232.3, -141 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 231.3, -141 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 231.3, -141 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 230.4, -141 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 230.4, -141 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 229.6, -141 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 229.6, -141 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 229, -141 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 229, -141 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 228.4, -141 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 228.4, -141 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 227.9, -141 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 227.9, -141 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 227.6, -141 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 227.6, -141 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 227.3, -141 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 227.3, -141 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 227.2, -141 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 227.2, -141 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 227.1, -141 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 227.1, -141 , 0 );

setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

--構える
SE003 = playSeVer2( spep_0 + 70, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 59 );
SE005 = playSeVer2( spep_0 + 116, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 194f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--かめはめ波溜め
SE007 = playSeVer2( spep_1 + 82, 1252, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 82, 1391, "",spep_2 + 232, 0, 64, -1);
SE009 = playSeVer2( spep_1 + 82, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 79 );


-------------------------------------------------
-- 手の中で気弾を膨らむ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 手の中で気弾を膨らむ～フィニッシュまで(ef_002)
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
--敵の動き
setDisp( spep_2 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 292 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 292 + OFFSET_X, 1, 326.4, -86.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 326.4, -86.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 346.3, -66.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 346.3, -66.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 305.9, -106.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 305.9, -106.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 323.3, -62.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 323.3, -62.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 330.3, -106.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 330.3, -106.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 342.9, -66.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 342.9, -66.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 301, -106.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 301, -106.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 316.5, -62.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 316.5, -62.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 321, -106.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 321, -106.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 310.4, -86.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 310.4, -86.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 308.2, -82.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 308.2, -82.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 292, -90.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 292, -90.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 284, -78.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 284, -78.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 279.7, -92.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 279.7, -92.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 271.2, -82.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 271.2, -82.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 256.8, -90.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 256.8, -90.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 254, -78.9 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 254, -78.9 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 256.5, -92.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 256.5, -92.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 249.9, -86.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 249.9, -86.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 244, -90.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 244, -90.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 244.6, -78.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 244.6, -78.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 249.6, -92.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 249.6, -92.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 243.9, -86.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 243.9, -86.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 238.4, -90.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 238.4, -90.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 239.1, -78.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 239.1, -78.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 244.1, -92.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 244.1, -92.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 239.1, -86.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 239.1, -86.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 238.4, -86.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 238.4, -86.8 , 0 );

setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.92, 0.92 );

setRotateKey( spep_2 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--かめはめ波溜め
SE010 = playSeVer2( spep_2 + 12, 1275, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.42, 30, 4 );

--画面遷移
SE011 = playSeVer2( spep_2 + 106, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE011, 63 );

--かめはめ波発射
SE012 = playSeVer2( spep_2 + 168, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE012, 1.42, 30, 4 );
SE013 = playSeVer2( spep_2 + 168, 1146, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 168, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE014, 41 );
SE016 = playSeVer2( spep_2 + 192, 1161, "",spep_2 + 372, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 192, SE016, 50 );
SE015 = playSeVer2( spep_2 + 256, 1185, "", spep_2 + 360, 16, 10, -1);
setSeVolumeByWorkId( spep_2 + 256, SE015, 195 );
setStartTimeMs( SE015, 1433 );
setPitch( spep_2 + 256, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 236; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--爆発
SE017 = playSeVer2( spep_2 + 350, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 350, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE018, 60 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 368); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 478f - 2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜背中向きで奥の敵へ向けて
-------------------------------------------------
MAX_FRAME_0 = 194;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜背中向きで奥の敵へ向けて(ef_001)
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
spep_x = spep_0 + 100;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -57, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -57, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -57, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -341.2, -141 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -336.4, -141 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -336.4, -141 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -331.7, -141 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -331.7, -141 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -327.1, -141 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -327.1, -141 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -322.6, -141 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -322.6, -141 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -318.2, -141 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -318.2, -141 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -313.9, -141 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -313.9, -141 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -309.7, -141 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -309.7, -141 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -305.6, -141 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -305.6, -141 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -301.7, -141 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -301.7, -141 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -297.8, -141 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -297.8, -141 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -294, -141 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -294, -141 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -290.4, -141 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -290.4, -141 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -286.8, -141 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -286.8, -141 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -283.3, -141 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -283.3, -141 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -280, -141 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -280, -141 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -276.7, -141 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -276.7, -141 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -273.6, -141 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -273.6, -141 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -270.5, -141 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -270.5, -141 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -267.6, -141 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -267.6, -141 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -264.7, -141 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -264.7, -141 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -262, -141 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -262, -141 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -259.4, -141 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -259.4, -141 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -256.8, -141 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -256.8, -141 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -254.4, -141 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -254.4, -141 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -252.1, -141 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -252.1, -141 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -249.9, -141 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -249.9, -141 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -247.8, -141 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -247.8, -141 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -245.7, -141 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -245.7, -141 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -243.8, -141 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -243.8, -141 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -242, -141 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -242, -141 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -240.3, -141 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -240.3, -141 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -238.7, -141 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -238.7, -141 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -237.2, -141 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -237.2, -141 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -235.8, -141 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -235.8, -141 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -234.5, -141 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -234.5, -141 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -233.4, -141 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -233.4, -141 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -232.3, -141 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -232.3, -141 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -231.3, -141 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -231.3, -141 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -230.4, -141 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -230.4, -141 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -229.6, -141 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -229.6, -141 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -229, -141 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -229, -141 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -228.4, -141 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -228.4, -141 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -227.9, -141 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -227.9, -141 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -227.6, -141 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -227.6, -141 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -227.3, -141 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -227.3, -141 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -227.2, -141 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -227.2, -141 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -227.1, -141 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -227.1, -141 , 0 );

setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

--構える
SE003 = playSeVer2( spep_0 + 70, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 59 );
SE005 = playSeVer2( spep_0 + 116, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 194f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--かめはめ波溜め
SE007 = playSeVer2( spep_1 + 82, 1252, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 82, 1391, "",spep_2 + 232, 0, 64, -1);
SE009 = playSeVer2( spep_1 + 82, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 79 );


-------------------------------------------------
-- 手の中で気弾を膨らむ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 手の中で気弾を膨らむ～フィニッシュまで(ef_002)
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
--敵の動き
setDisp( spep_2 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 292 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 292 + OFFSET_X, 1, -326.4, -86.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -326.4, -86.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -346.3, -66.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -346.3, -66.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -305.9, -106.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -305.9, -106.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -323.3, -62.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -323.3, -62.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -330.3, -106.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -330.3, -106.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -342.9, -66.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -342.9, -66.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -301, -106.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -301, -106.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -316.5, -62.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -316.5, -62.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -321, -106.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -321, -106.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -310.4, -86.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -310.4, -86.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -308.2, -82.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -308.2, -82.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -292, -90.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -292, -90.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -284, -78.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -284, -78.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -279.7, -92.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -279.7, -92.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -271.2, -82.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -271.2, -82.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -256.8, -90.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -256.8, -90.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -254, -78.9 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -254, -78.9 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -256.5, -92.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -256.5, -92.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -249.9, -86.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -249.9, -86.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -244, -90.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -244, -90.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -244.6, -78.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -244.6, -78.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -249.6, -92.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -249.6, -92.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -243.9, -86.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -243.9, -86.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -238.4, -90.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -238.4, -90.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -239.1, -78.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -239.1, -78.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -244.1, -92.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -244.1, -92.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -239.1, -86.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -239.1, -86.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -238.4, -86.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -238.4, -86.8 , 0 );

setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.92, 0.92 );

setRotateKey( spep_2 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--かめはめ波溜め
SE010 = playSeVer2( spep_2 + 12, 1275, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.42, 30, 4 );

--画面遷移
SE011 = playSeVer2( spep_2 + 106, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE011, 63 );

--かめはめ波発射
SE012 = playSeVer2( spep_2 + 168, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE012, 1.42, 30, 4 );
SE013 = playSeVer2( spep_2 + 168, 1146, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 168, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE014, 41 );
SE016 = playSeVer2( spep_2 + 192, 1161, "",spep_2 + 372, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 192, SE016, 50 );
SE015 = playSeVer2( spep_2 + 256, 1185, "", spep_2 + 360, 16, 10, -1);
setSeVolumeByWorkId( spep_2 + 256, SE015, 195 );
setStartTimeMs( SE015, 1433 );
setPitch( spep_2 + 256, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 236; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--爆発
SE017 = playSeVer2( spep_2 + 350, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 350, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE018, 60 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 368); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 478f - 2f

end