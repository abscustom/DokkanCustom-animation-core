--1031220:LR_超サイヤ人2カリフラ+超サイヤ人2ケール_超必殺技：クラッシュキャノン
--sp_effect_a2_00258
--sp2864

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163778;  --ef_001 敵と向かい合う～カードカットイン
SP_01b = 163779;  --ef_001b 敵と向かい合う～カードカットイン
SP_02  = 163782;  --ef_002 気弾を放つ～フィニッシュ
SP_02b = 163783;  --ef_002b 気弾を放つ～フィニッシュ

--エフェクト(敵)
SP_01r  = 163780;  --ef_001r 敵と向かい合う～カードカットイン
SP_01br = 163781;  --ef_001br 敵と向かい合う～カードカットイン



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
ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 敵と向かい合う～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と向かい合う～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;

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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 251.9, -151.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 256.4, -152.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 256.4, -152.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 260.7, -154 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 260.7, -154 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 265, -155.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 265, -155.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 269.1, -156.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 269.1, -156.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 273.2, -157.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 273.2, -157.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 277.1, -158.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 277.1, -158.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 280.9, -159.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 280.9, -159.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 284.7, -160.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 284.7, -160.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 288.3, -161.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 288.3, -161.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 291.8, -162.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 291.8, -162.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 295.3, -163.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 295.3, -163.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 298.6, -164.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 298.6, -164.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 301.8, -165.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 301.8, -165.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 304.9, -166.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 304.9, -166.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 307.9, -167 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 307.9, -167 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 310.8, -167.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 310.8, -167.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 313.7, -168.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 313.7, -168.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 316.4, -169.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 316.4, -169.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 319, -170 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 319, -170 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 321.5, -170.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 321.5, -170.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 323.9, -171.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 323.9, -171.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 326.2, -172 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 326.2, -172 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 328.4, -172.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 328.4, -172.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 330.5, -173.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 330.5, -173.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 332.5, -173.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 332.5, -173.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 334.4, -174.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 334.4, -174.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 336.2, -174.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 336.2, -174.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 337.8, -175.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 337.8, -175.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 339.4, -175.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 339.4, -175.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 340.9, -176 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 340.9, -176 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 342.3, -176.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 342.3, -176.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 343.6, -176.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 343.6, -176.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 344.8, -177.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 344.8, -177.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 345.8, -177.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 345.8, -177.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 346.8, -177.7 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 346.8, -177.7 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 347.7, -177.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 347.7, -177.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 348.4, -178.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 348.4, -178.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 349.1, -178.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 349.1, -178.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 349.7, -178.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 349.7, -178.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 350.1, -178.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 350.1, -178.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 350.5, -178.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 350.5, -178.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 350.7, -178.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 350.7, -178.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 350.9, -178.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 350.9, -178.8 , 0 );

setScaleKey( spep_0 + 0, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 5.41, 5.41 );

setRotateKey( spep_0 + 0, 1, 21 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 21 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 378, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--力む
SE003 = playSeVer2( spep_0 + 82, 1344, "",spep_0 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 82, SE003, 85 );

--目見開く
SE004 = playSeVer2( spep_0 + 110, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 49 );
setPitch( spep_0 + 110, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );
SE005 = playSeVer2( spep_0 + 110, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 69 );

--気弾溜め
SE007 = playSeVer2( spep_0 + 138, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE007, 269 );
SE008 = playSeVer2( spep_0 + 212, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE008, 71 );
SE009 = playSeVer2( spep_0 + 218, 1296, "",spep_0 + 380, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 218, SE009, 69 );
SE010 = playSeVer2( spep_0 + 220, 1443, "",spep_0 + 378, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 220, SE010, 145 );
SE011 = playSeVer2( spep_0 + 220, 1122, "",spep_0 + 372, 32, 16, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 52 );

--振りかぶる
SE012 = playSeVer2( spep_0 + 306, 1003, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 356, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 32, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE014, 200 );
SE015 = playSeVer2( spep_1 + 90, 1296, "",spep_1 + 222, 24, 16, -1);
setStartTimeMs( SE015,  400 );
SE016 = playSeVer2( spep_1 + 88, 1443, "",spep_1 + 240, 0, 22, -1);


-------------------------------------------------
-- 気弾を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 360;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 148 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 148 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 148 + OFFSET_X, 1, 115.2, -143.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 115.2, -143.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 115, -143 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 115, -143 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 114.6, -142.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 114.6, -142.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 113.8, -142.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 113.8, -142.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 112.8, -141.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 112.8, -141.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 111.4, -140.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 111.4, -140.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 109.8, -139.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 109.8, -139.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 107.8, -138.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 107.8, -138.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 105.6, -136.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 105.6, -136.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 103, -135.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 103, -135.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 102.5, -134.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 102.5, -134.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 102.1, -134.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 102.1, -134.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 101.7, -133.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 101.7, -133.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 101.3, -133.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 101.3, -133.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 100.9, -132.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 100.9, -132.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 100.5, -132.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 100.5, -132.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 100.1, -131.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 100.1, -131.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 99.7, -131.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 99.7, -131.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 99.4, -131.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 99.4, -131.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 99.1, -130.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 99.1, -130.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 98.7, -130.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 98.7, -130.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 98.4, -130 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 98.4, -130 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 98.1, -129.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 98.1, -129.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 97.8, -129.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 97.8, -129.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 97.6, -129 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 97.6, -129 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 97.3, -128.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 97.3, -128.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 97.1, -128.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 97.1, -128.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 96.8, -128.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 96.8, -128.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 96.6, -128 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 96.6, -128 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 96.4, -127.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 96.4, -127.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 96.2, -127.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 96.2, -127.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 96, -127.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 96, -127.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 95.9, -127.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 95.9, -127.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 95.7, -127 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 95.7, -127 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 95.6, -126.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 95.6, -126.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 95.5, -126.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 95.5, -126.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 95.4, -126.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 95.4, -126.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 95.3, -126.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 95.3, -126.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 95.2, -126.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 95.2, -126.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 95.1, -126.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 95.1, -126.2 , 0 );

setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 148 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--発射前溜め
SE017 = playSeVer2( spep_2 + 6, 1116, "", 0, 0, 0, -1);

--気弾発射
SE018 = playSeVer2( spep_2 + 98, 1212, "",spep_2 + 246, 0, 46, -1);
SE019 = playSeVer2( spep_2 + 98, 1424, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 98, 1423, "",spep_2 + 252, 0, 24, -1);
SE021 = playSeVer2( spep_2 + 98, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 124, 1216, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 124, SE022, 100 );

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 164, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
SE024 = playSeVer2( spep_2 + 218, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 224, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  360f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- 敵と向かい合う～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と向かい合う～カードカットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;

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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -251.9, -151.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -256.4, -152.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -256.4, -152.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -260.7, -154 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -260.7, -154 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -265, -155.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -265, -155.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -269.1, -156.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -269.1, -156.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -273.2, -157.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -273.2, -157.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -277.1, -158.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -277.1, -158.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -280.9, -159.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -280.9, -159.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -284.7, -160.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -284.7, -160.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -288.3, -161.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -288.3, -161.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -291.8, -162.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -291.8, -162.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -295.3, -163.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -295.3, -163.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -298.6, -164.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -298.6, -164.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -301.8, -165.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -301.8, -165.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -304.9, -166.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -304.9, -166.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -307.9, -167 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -307.9, -167 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -310.8, -167.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -310.8, -167.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -313.7, -168.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -313.7, -168.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -316.4, -169.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -316.4, -169.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -319, -170 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -319, -170 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -321.5, -170.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -321.5, -170.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -323.9, -171.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -323.9, -171.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -326.2, -172 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -326.2, -172 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -328.4, -172.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -328.4, -172.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -330.5, -173.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -330.5, -173.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -332.5, -173.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -332.5, -173.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -334.4, -174.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -334.4, -174.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -336.2, -174.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -336.2, -174.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -337.8, -175.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -337.8, -175.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -339.4, -175.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -339.4, -175.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -340.9, -176 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -340.9, -176 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -342.3, -176.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -342.3, -176.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -343.6, -176.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -343.6, -176.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -344.8, -177.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -344.8, -177.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -345.8, -177.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -345.8, -177.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -346.8, -177.7 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -346.8, -177.7 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -347.7, -177.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -347.7, -177.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -348.4, -178.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -348.4, -178.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -349.1, -178.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -349.1, -178.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -349.7, -178.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -349.7, -178.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -350.1, -178.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -350.1, -178.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -350.5, -178.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -350.5, -178.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -350.7, -178.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -350.7, -178.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -350.9, -178.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -350.9, -178.8 , 0 );

setScaleKey( spep_0 + 0, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 5.41, 5.41 );

setRotateKey( spep_0 + 0, 1, -21 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -21 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 378, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--力む
SE003 = playSeVer2( spep_0 + 82, 1344, "",spep_0 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 82, SE003, 85 );

--目見開く
SE004 = playSeVer2( spep_0 + 110, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 49 );
setPitch( spep_0 + 110, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );
SE005 = playSeVer2( spep_0 + 110, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 69 );

--気弾溜め
SE007 = playSeVer2( spep_0 + 138, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE007, 269 );
SE008 = playSeVer2( spep_0 + 212, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE008, 71 );
SE009 = playSeVer2( spep_0 + 218, 1296, "",spep_0 + 380, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 218, SE009, 69 );
SE010 = playSeVer2( spep_0 + 220, 1443, "",spep_0 + 378, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 220, SE010, 145 );
SE011 = playSeVer2( spep_0 + 220, 1122, "",spep_0 + 372, 32, 16, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 52 );

--振りかぶる
SE012 = playSeVer2( spep_0 + 306, 1003, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 356, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 32, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE014, 200 );
SE015 = playSeVer2( spep_1 + 90, 1296, "",spep_1 + 222, 24, 16, -1);
setStartTimeMs( SE015,  400 );
SE016 = playSeVer2( spep_1 + 88, 1443, "",spep_1 + 240, 0, 22, -1);

-------------------------------------------------
-- 気弾を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 360;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 148 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 148 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 148 + OFFSET_X, 1, -115.2, -143.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -115.2, -143.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -115, -143 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -115, -143 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -114.6, -142.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -114.6, -142.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -113.8, -142.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -113.8, -142.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -112.8, -141.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -112.8, -141.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -111.4, -140.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -111.4, -140.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -109.8, -139.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -109.8, -139.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -107.8, -138.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -107.8, -138.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -105.6, -136.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -105.6, -136.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -103, -135.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -103, -135.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -102.5, -134.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -102.5, -134.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -102.1, -134.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -102.1, -134.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -101.7, -133.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -101.7, -133.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -101.3, -133.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -101.3, -133.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -100.9, -132.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -100.9, -132.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -100.5, -132.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -100.5, -132.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -100.1, -131.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -100.1, -131.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -99.7, -131.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -99.7, -131.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -99.4, -131.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -99.4, -131.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -99.1, -130.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -99.1, -130.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -98.7, -130.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -98.7, -130.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -98.4, -130 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -98.4, -130 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -98.1, -129.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -98.1, -129.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -97.8, -129.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -97.8, -129.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -97.6, -129 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -97.6, -129 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -97.3, -128.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -97.3, -128.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -97.1, -128.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -97.1, -128.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -96.8, -128.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -96.8, -128.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -96.6, -128 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -96.6, -128 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -96.4, -127.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -96.4, -127.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -96.2, -127.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -96.2, -127.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -96, -127.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -96, -127.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -95.9, -127.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -95.9, -127.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -95.7, -127 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -95.7, -127 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -95.6, -126.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -95.6, -126.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -95.5, -126.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -95.5, -126.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -95.4, -126.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -95.4, -126.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -95.3, -126.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -95.3, -126.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -95.2, -126.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -95.2, -126.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -95.1, -126.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -95.1, -126.2 , 0 );

setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 148 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--発射前溜め
SE017 = playSeVer2( spep_2 + 6, 1116, "", 0, 0, 0, -1);

--気弾発射
SE018 = playSeVer2( spep_2 + 98, 1212, "",spep_2 + 246, 0, 46, -1);
SE019 = playSeVer2( spep_2 + 98, 1424, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 98, 1423, "",spep_2 + 252, 0, 24, -1);
SE021 = playSeVer2( spep_2 + 98, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 124, 1216, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 124, SE022, 100 );

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 164, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
SE024 = playSeVer2( spep_2 + 218, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 224, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  360f -4


end
