-- 1029270: LR_バイオブロリー_必殺技：メテオクラッシュ
-- sp_effect_b4_00348
-- sp2762

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163173;  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001
SP_001b = 163174;  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001b
SP_002 = 163177;  -- 力をためて画面側へ突進～フィニッシュまで ef_002
SP_002b = 163178;  -- 力をためて画面側へ突進～フィニッシュまで ef_002b

-- 敵側
SP_001r = 163175;  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001r
SP_001br = 163176;  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001br
SP_002r = 163179;  -- 力をためて画面側へ突進～フィニッシュまで ef_002r
SP_002br = 163180;  -- 力をためて画面側へ突進～フィニッシュまで ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 敵と対峙～正面UPで雄叫びを上げるまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 216;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001b
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
spep_x = spep_0 + 58;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 172.3, -134.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 172.2, -134.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 172.2, -134.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 172.1, -134.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 172.1, -134.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 171.9, -134.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 171.9, -134.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 171.8, -134.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 171.8, -134.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 171.7, -134.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 171.7, -134.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 171.5, -134.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 171.5, -134.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 171.4, -134.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 171.4, -134.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 171.3, -134.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 171.3, -134.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 171.1, -134.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 171.1, -134.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 171, -134.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 171, -134.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 170.9, -134.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 170.9, -134.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 170.7, -134.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 170.7, -134.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 170.6, -134.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 170.6, -134.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 170.5, -134.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 170.5, -134.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 170.3, -134.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 170.3, -134.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 170.2, -134.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 170.2, -134.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 170.1, -134.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 170.1, -134.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 169.9, -134.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 169.9, -134.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 169.8, -134.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 169.8, -134.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 169.6, -134.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 169.6, -134.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 169.5, -134.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 169.5, -134.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 169.4, -134.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 169.4, -134.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.2, -134.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.2, -134.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 169.1, -134.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 169.1, -134.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 169, -134.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 169, -134.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 168.8, -134.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 168.8, -134.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 168.7, -134.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 168.7, -134.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 168.6, -134.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 168.6, -134.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 168.4, -134.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 168.4, -134.6 , 0 );

setScaleKey( spep_0 + 0 , 1, 3.2, 3.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.2, 3.2 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--肩あがる
SE003 = playSeVer2( spep_0 + 74, 1153, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE003, 76 );
SE004 = playSeVer2( spep_0 + 82, 1190, "", 0, 18, 0, -1);

--叫ぶ
SE005 = playSeVer2( spep_0 + 138, 1051, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE005, 83 );
SE006 = playSeVer2( spep_0 + 138, 1179, "",spep_0 + 240, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 71 );
SE007 = playSeVer2( spep_0 + 138, 20, "",spep_0 + 242, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 138, 1160, "",spep_0 + 248, 0, 20, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 216

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 力をためて画面側へ突進～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 力をためて画面側へ突進～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 力をためて画面側へ突進～フィニッシュまで ef_002b
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
-- 敵の動き1
setDisp( spep_2 + 64 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 64 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, 43.1, -56 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 43.1, -56 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 41.9, -92 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 41.9, -92 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 40.8, -74 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 40.8, -74 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 39.7, -72 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 39.7, -72 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 38.6, -70 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 38.6, -70 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 37.5, -68 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 37.5, -68 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 36.4, -66 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 36.4, -66 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 35.3, -64 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 35.3, -64 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 34.2, -62 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 34.2, -62 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 33.1, -60 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 33.1, -60 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 32, -58 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 32, -58 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 30.9, -56 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 30.9, -56 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 29.8, -54 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 29.8, -54 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 28.7, -52 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 28.7, -52 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 27.6, -50 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 27.6, -50 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 26.5, -47.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 26.5, -47.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 25.8, -46.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 25.8, -46.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 25.1, -45.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 25.1, -45.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 24.9, -45.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 24.9, -45.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 183.3, 134 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 183.3, 134 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 61.9, 108.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 61.9, 108.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 71.2, 81.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 71.2, 81.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 44.2, 91.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 44.2, 91.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 107.9, 52.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 107.9, 52.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 106.8, -13 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 106.8, -13 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 110.6, 0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 110.6, 0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 114.1, -13.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 114.1, -13.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 117.5, -11.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 117.5, -11.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 120.7, -7.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 120.7, -7.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 123.8, -19.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 123.8, -19.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 122.6, -21.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 122.6, -21.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 129.3, -15.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 129.3, -15.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 131.8, -25.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 131.8, -25.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 134.1, -22.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 134.1, -22.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 138.3, -27.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 138.3, -27.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 138.1, -26.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 138.1, -26.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 143.8, -28.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 143.8, -28.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 143, -29.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 143, -29.3 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -45 );

-- 敵の動き2
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, -219.1, 2.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -219.1, 2.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -215.9, 2.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -215.9, 2.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -204.6, 2.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -204.6, 2.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -185.3, 2.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -185.3, 2.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -157.8, 2.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -157.8, 2.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -122.3, 2.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -122.3, 2.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -78.7, 2.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -78.7, 2.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -26.9, 2.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -26.9, 2.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 32.9, 2.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 32.9, 2.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 136.9, 2.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 136.9, 2.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 228.6, 2.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 228.6, 2.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 308, 2.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 308, 2.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 375, 2.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 375, 2.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 429.7, 2.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 429.7, 2.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 472, 2.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 472, 2.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 502, 2.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 502, 2.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 519.7, 2.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 519.7, 2.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 525.1, 2.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 525.1, 2.6 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 280 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -132, -38 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -132, -38 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -130.7, -42 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -130.7, -42 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -126.6, -42 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -126.6, -42 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -119.7, -42 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -119.7, -42 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -110.1, -42 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -110.1, -42 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -97.8, -42 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -97.8, -42 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -82.7, -42 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -82.7, -42 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -64.9, -42 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -64.9, -42 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -44.3, -42 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -44.3, -42 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -21, -42 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -21, -42 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 5, -42 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 5, -42 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 33.8, -42 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 33.8, -42 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 65.4, -42 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 65.4, -42 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 31.3, -133.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 31.3, -133.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -0.2, -135.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -0.2, -135.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 33, -140.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 33, -140.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 18.3, -134.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 18.3, -134.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 33.7, -127.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 33.7, -127.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 39.1, -139.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 39.1, -139.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 39.5, -134.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 39.5, -134.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 54.9, -134.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 54.9, -134.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 55.3, -129.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 55.3, -129.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 60.7, -138.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 60.7, -138.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 62.1, -134.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 62.1, -134.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 75.5, -134.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 75.5, -134.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 71.5, -134.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 71.5, -134.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 264.3, -134.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 264.3, -134.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 324.8, -134.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 324.8, -134.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 906.7, -134.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 906.7, -134.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1488.7, -134.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1488.7, -134.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1415.9, -964.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1415.9, -964.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -1280.8, -872.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -1280.8, -872.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -1148.1, -781.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -1148.1, -781.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -1017.7, -692.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -1017.7, -692.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -889.7, -605.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -889.7, -605.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -764, -519.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -764, -519.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -640.7, -435.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -640.7, -435.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -519.6, -352.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -519.6, -352.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -401, -271.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -401, -271.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -284.6, -192.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -284.6, -192.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -170.6, -114.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -170.6, -114.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -59.1, -38.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -59.1, -38.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 50.3, 36 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 50.3, 36 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 157.3, 109 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 157.3, 109 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 17.2, 17.2 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 17.2, 17.2 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 15.79, 15.79 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 15.79, 15.79 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 14.4, 14.4 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 14.4, 14.4 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 11.7, 11.7 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 11.7, 11.7 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -52.4 );

-- ** 音 ** --
--構える
SE010 = playSeVer2( spep_2 + 0, 1153, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 71 );
SE011 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_2 + 36, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE012, 78 );
SE013 = playSeVer2( spep_2 + 36, 9, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 8, SE012, 0);
stopSe( SP_dodge - 8, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--振りかぶる
SE014 = playSeVer2( spep_2 + 64, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE014,  67 );
SE015 = playSeVer2( spep_2 + 64, 1116, "",spep_2 + 106, 0, 16, -1);

--パンチ
SE016 = playSeVer2( spep_2 + 88, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 96, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 96, 1153, "", 0, 0, 0, -1);

--敵とともに飛んでいく
SE019 = playSeVer2( spep_2 + 132, 1422, "",spep_2 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 132, SE019, 63 );
setPitch( spep_2 + 132, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_2 + 132, 1121, "",spep_2 + 372, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 132, SE020, 63 );
setPitch( spep_2 + 132, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_2 + 132, 9, "", 0, 0, 0, -1);

--壁激突
SE022 = playSeVer2( spep_2 + 190, 1159, "",spep_2 + 374, 0, 22, -1);

--つかむ
SE023 = playSeVer2( spep_2 + 256, 1116, "",spep_2 + 298, 0, 16, -1);
SE024 = playSeVer2( spep_2 + 272, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1006, "", 0, 0, 0, -1);

--壁に向かっていく
SE026 = playSeVer2( spep_2 + 306, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 56 );
SE027 = playSeVer2( spep_2 + 306, 1258, "",spep_2 + 374, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 306, SE027, 59 );

--ラスト爆発
SE028 = playSeVer2( spep_2 + 348, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 348, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 370 );
endPhase( spep_2 + MAX_FRAME_2);  -- 478

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 敵と対峙～正面UPで雄叫びを上げるまで ef_001r
------------------------------------------------------
MAX_FRAME_0 = 216;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );  -- 敵と対峙～正面UPで雄叫びを上げるまで ef_001br
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
spep_x = spep_0 + 58;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 172.3, -134.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 172.2, -134.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 172.2, -134.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 172.1, -134.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 172.1, -134.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 171.9, -134.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 171.9, -134.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 171.8, -134.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 171.8, -134.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 171.7, -134.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 171.7, -134.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 171.5, -134.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 171.5, -134.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 171.4, -134.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 171.4, -134.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 171.3, -134.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 171.3, -134.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 171.1, -134.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 171.1, -134.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 171, -134.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 171, -134.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 170.9, -134.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 170.9, -134.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 170.7, -134.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 170.7, -134.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 170.6, -134.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 170.6, -134.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 170.5, -134.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 170.5, -134.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 170.3, -134.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 170.3, -134.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 170.2, -134.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 170.2, -134.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 170.1, -134.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 170.1, -134.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 169.9, -134.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 169.9, -134.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 169.8, -134.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 169.8, -134.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 169.6, -134.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 169.6, -134.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 169.5, -134.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 169.5, -134.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 169.4, -134.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 169.4, -134.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.2, -134.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.2, -134.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 169.1, -134.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 169.1, -134.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 169, -134.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 169, -134.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 168.8, -134.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 168.8, -134.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 168.7, -134.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 168.7, -134.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 168.6, -134.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 168.6, -134.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 168.4, -134.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 168.4, -134.6 , 0 );

setScaleKey( spep_0 + 0 , 1, 3.2, 3.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.2, 3.2 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--肩あがる
SE003 = playSeVer2( spep_0 + 74, 1153, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE003, 76 );
SE004 = playSeVer2( spep_0 + 82, 1190, "", 0, 18, 0, -1);

--叫ぶ
SE005 = playSeVer2( spep_0 + 138, 1051, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE005, 83 );
SE006 = playSeVer2( spep_0 + 138, 1179, "",spep_0 + 240, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 71 );
SE007 = playSeVer2( spep_0 + 138, 20, "",spep_0 + 242, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 138, 1160, "",spep_0 + 248, 0, 20, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 216

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 力をためて画面側へ突進～フィニッシュまで ef_002r
------------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 力をためて画面側へ突進～フィニッシュまで ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 力をためて画面側へ突進～フィニッシュまで ef_002br
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
-- 敵の動き1
setDisp( spep_2 + 64 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 64 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, 43.1, -56 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 43.1, -56 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 41.9, -92 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 41.9, -92 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 40.8, -74 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 40.8, -74 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 39.7, -72 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 39.7, -72 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 38.6, -70 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 38.6, -70 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 37.5, -68 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 37.5, -68 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 36.4, -66 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 36.4, -66 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 35.3, -64 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 35.3, -64 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 34.2, -62 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 34.2, -62 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 33.1, -60 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 33.1, -60 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 32, -58 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 32, -58 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 30.9, -56 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 30.9, -56 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 29.8, -54 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 29.8, -54 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 28.7, -52 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 28.7, -52 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 27.6, -50 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 27.6, -50 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 26.5, -47.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 26.5, -47.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 25.8, -46.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 25.8, -46.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 25.1, -45.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 25.1, -45.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 24.9, -45.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 24.9, -45.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 183.3, 134 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 183.3, 134 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 61.9, 108.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 61.9, 108.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 71.2, 81.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 71.2, 81.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 44.2, 91.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 44.2, 91.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 107.9, 52.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 107.9, 52.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 106.8, -13 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 106.8, -13 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 110.6, 0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 110.6, 0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 114.1, -13.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 114.1, -13.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 117.5, -11.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 117.5, -11.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 120.7, -7.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 120.7, -7.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 123.8, -19.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 123.8, -19.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 122.6, -21.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 122.6, -21.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 129.3, -15.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 129.3, -15.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 131.8, -25.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 131.8, -25.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 134.1, -22.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 134.1, -22.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 138.3, -27.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 138.3, -27.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 138.1, -26.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 138.1, -26.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 143.8, -28.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 143.8, -28.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 143, -29.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 143, -29.3 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -45 );

-- 敵の動き2
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, -219.1, 2.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -219.1, 2.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -215.9, 2.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -215.9, 2.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -204.6, 2.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -204.6, 2.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -185.3, 2.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -185.3, 2.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -157.8, 2.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -157.8, 2.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -122.3, 2.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -122.3, 2.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -78.7, 2.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -78.7, 2.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -26.9, 2.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -26.9, 2.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 32.9, 2.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 32.9, 2.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 136.9, 2.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 136.9, 2.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 228.6, 2.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 228.6, 2.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 308, 2.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 308, 2.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 375, 2.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 375, 2.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 429.7, 2.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 429.7, 2.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 472, 2.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 472, 2.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 502, 2.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 502, 2.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 519.7, 2.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 519.7, 2.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 525.1, 2.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 525.1, 2.6 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 280 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -132, -38 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -132, -38 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -130.7, -42 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -130.7, -42 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -126.6, -42 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -126.6, -42 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -119.7, -42 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -119.7, -42 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -110.1, -42 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -110.1, -42 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -97.8, -42 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -97.8, -42 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -82.7, -42 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -82.7, -42 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -64.9, -42 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -64.9, -42 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -44.3, -42 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -44.3, -42 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -21, -42 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -21, -42 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 5, -42 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 5, -42 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 33.8, -42 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 33.8, -42 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 65.4, -42 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 65.4, -42 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 31.3, -133.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 31.3, -133.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -0.2, -135.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -0.2, -135.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 33, -140.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 33, -140.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 18.3, -134.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 18.3, -134.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 33.7, -127.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 33.7, -127.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 39.1, -139.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 39.1, -139.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 39.5, -134.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 39.5, -134.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 54.9, -134.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 54.9, -134.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 55.3, -129.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 55.3, -129.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 60.7, -138.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 60.7, -138.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 62.1, -134.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 62.1, -134.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 75.5, -134.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 75.5, -134.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 71.5, -134.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 71.5, -134.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 264.3, -134.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 264.3, -134.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 324.8, -134.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 324.8, -134.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 906.7, -134.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 906.7, -134.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1488.7, -134.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1488.7, -134.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1415.9, -964.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1415.9, -964.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -1280.8, -872.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -1280.8, -872.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -1148.1, -781.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -1148.1, -781.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -1017.7, -692.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -1017.7, -692.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -889.7, -605.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -889.7, -605.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -764, -519.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -764, -519.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -640.7, -435.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -640.7, -435.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -519.6, -352.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -519.6, -352.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -401, -271.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -401, -271.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -284.6, -192.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -284.6, -192.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -170.6, -114.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -170.6, -114.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -59.1, -38.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -59.1, -38.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 50.3, 36 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 50.3, 36 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 157.3, 109 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 157.3, 109 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 17.2, 17.2 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 17.2, 17.2 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 15.79, 15.79 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 15.79, 15.79 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 14.4, 14.4 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 14.4, 14.4 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 11.7, 11.7 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 11.7, 11.7 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -52.4 );

-- ** 音 ** --
--構える
SE010 = playSeVer2( spep_2 + 0, 1153, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 71 );
SE011 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_2 + 36, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE012, 78 );
SE013 = playSeVer2( spep_2 + 36, 9, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 8, SE012, 0);
stopSe( SP_dodge - 8, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--振りかぶる
SE014 = playSeVer2( spep_2 + 64, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE014,  67 );
SE015 = playSeVer2( spep_2 + 64, 1116, "",spep_2 + 106, 0, 16, -1);

--パンチ
SE016 = playSeVer2( spep_2 + 88, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 96, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 96, 1153, "", 0, 0, 0, -1);

--敵とともに飛んでいく
SE019 = playSeVer2( spep_2 + 132, 1422, "",spep_2 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 132, SE019, 63 );
setPitch( spep_2 + 132, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_2 + 132, 1121, "",spep_2 + 372, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 132, SE020, 63 );
setPitch( spep_2 + 132, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_2 + 132, 9, "", 0, 0, 0, -1);

--壁激突
SE022 = playSeVer2( spep_2 + 190, 1159, "",spep_2 + 374, 0, 22, -1);

--つかむ
SE023 = playSeVer2( spep_2 + 256, 1116, "",spep_2 + 298, 0, 16, -1);
SE024 = playSeVer2( spep_2 + 272, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1006, "", 0, 0, 0, -1);

--壁に向かっていく
SE026 = playSeVer2( spep_2 + 306, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 56 );
SE027 = playSeVer2( spep_2 + 306, 1258, "",spep_2 + 374, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 306, SE027, 59 );

--ラスト爆発
SE028 = playSeVer2( spep_2 + 348, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 348, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 370 );
endPhase( spep_2 + MAX_FRAME_2);  -- 478

end
