--1029550:LR_アニラーザ_必殺技：マジェスティックプレス
--sp_effect_b1_00302
--sp2770

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163414;  -- カードカットインまで ef_001
SP_01b = 163415;  -- カードカットインまで ef_001b
SP_02 = 163416;  -- カードカットイン後 ef_002
SP_02b = 163417;  -- カードカットイン後 ef_002b

--エフェクト(敵)
SP_02r = 163418;  -- カードカットイン後 ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カードカットインまで(ef_001b)
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
spep_x = spep_0 + 4;

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
setDisp( spep_0 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 3.7, -162.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 3.7, -162.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 3.7, -188.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--着地
SE001 = playSeVer2( spep_0 + 0, 63, "",spep_0 + 46, 0, 22, -1);
SE002 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 18, 1395, "",spep_0 + 106, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 22, 1011, "",spep_0 + 106, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 22, 1159, "",spep_0 + 104, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --96F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振りかぶる
SE008 = playSeVer2( spep_1 + 88, 1116, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 88, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE009, 68 );
SE010 = playSeVer2( spep_1 + 88, 1278, "",spep_1 + 204, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 88, SE010, 72 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 436;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン後(ef_002b)
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

--敵の動き1
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, 535.2, -608.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 535.2, -608.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 411.1, -461.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 411.1, -461.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 306.1, -337.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 306.1, -337.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 220.2, -236.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 220.2, -236.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 153.4, -157.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 153.4, -157.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 105.7, -101.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 105.7, -101.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 77.1, -67.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 77.1, -67.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 67.6, -56.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 67.6, -56.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 159.8, -117.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 159.8, -117.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 231.7, -193.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 231.7, -193.3 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 37 );

--敵の動き2
setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, 178.2, -124.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 178.2, -124.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 178.2, -77.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 178.2, -77.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 178.2, -31.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 178.2, -31.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 178.3, 14.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 178.3, 14.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 178.3, 29.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 178.3, 29.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 178.3, 43.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 178.3, 43.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 178.3, 58.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 178.3, 58.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 178.3, 72.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 178.3, 72.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 178.3, 87.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 178.3, 87.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 292, 183.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 292, 183.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 449.7, 246.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 449.7, 246.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 457.9, 233.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 457.9, 233.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 595.1, 310.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 595.1, 310.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 642, 382.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 642, 382.8 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -15.8 );

--敵の動き3

setDisp( spep_2 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, 6, -65 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 6, -65 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 28, -43.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 28, -43.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 50.1, -21.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 50.1, -21.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 72.2, 0.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 72.2, 0.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 94.3, 21.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 94.3, 21.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 116.3, 43.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 116.3, 43.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 138.4, 65.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 138.4, 65.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 160.5, 87.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 160.5, 87.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 225.1, 76.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 225.1, 76.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 279.9, 93.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 279.9, 93.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 372.7, -107 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 372.7, -107 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 536.1, -93.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 536.1, -93.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 568.7, -221.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 568.7, -221.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 758.5, -275.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 758.5, -275.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 793.4, -356.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 793.4, -356.8 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.46, 3.46 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 16 );

--敵の動き4
setDisp( spep_2 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 248 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 248 + OFFSET_X, 1, -708.9, 665.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -708.9, 665.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -635, 571.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -635, 571.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -561, 478.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -561, 478.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -487, 385.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -487, 385.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -413, 292.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -413, 292.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -338.9, 199.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -338.9, 199.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -264.8, 106.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -264.8, 106.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -190.6, 13.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -190.6, 13.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -116.4, -80.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -116.4, -80.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -42.2, -173.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -42.2, -173.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1.2, -329.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -1.2, -329.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 3.3, -170.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 3.3, -170.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 17.3, -124.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 17.3, -124.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -41.4, -66.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -41.4, -66.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 49, 20.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 49, 20.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -17.4, 109.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -17.4, 109.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -17.4, 90.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -17.4, 90.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -17.2, 70.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -17.2, 70.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -17.1, 51.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -17.1, 51.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -16.9, 31.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -16.9, 31.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -16.7, 11.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -16.7, 11.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -16.6, -7.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -16.6, -7.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 3.4, -11.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 3.4, -11.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 3.1, -23.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 3.1, -23.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 2.8, -35.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 2.8, -35.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 2.6, -47.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 2.6, -47.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 2.4, -59.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 2.4, -59.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 2.1, -71.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 2.1, -71.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 1.9, -83.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 1.9, -83.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 1.7, -95.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 1.7, -95.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 1.5, -107.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 1.5, -107.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 1.3, -119.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 1.3, -119.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1.1, -131.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 1.1, -131.8 , 0 );

setScaleKey( spep_2 + 248 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 248 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 116.4 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 116.4 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 135.2 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 135.2 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 154 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 154 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 172.9 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 172.9 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 210.6 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 210.6 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 58.2 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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

--パンチ
SE011 = playSeVer2( spep_2 + 68, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 86, 1159, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_2 + 154, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 166, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_2 + 190, 1116, "",spep_2 + 240, 0, 18, -1);

--裏拳
SE018 = playSeVer2( spep_2 + 212, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 212, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 224, 1121, "",spep_2 + 354, 0, 90, -1);

--敵バウンド
SE021 = playSeVer2( spep_2 + 260, 1014, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 266, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE022, 86 );
SE023 = playSeVer2( spep_2 + 270, 1116, "",spep_2 + 340, 0, 36, -1);

--岩激突
SE024 = playSeVer2( spep_2 + 310, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 316, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE025, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 320); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- --436F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カードカットインまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 3.7, -152.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 3.7, -162.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 3.7, -162.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 3.7, -217.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 3.7, -210.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 3.7, -172.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 3.7, -194.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 3.7, -178.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 3.7, -181.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 3.7, -188.4 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 3.7, -188.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--着地
SE001 = playSeVer2( spep_0 + 0, 63, "",spep_0 + 46, 0, 22, -1);
SE002 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 18, 1395, "",spep_0 + 106, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 22, 1011, "",spep_0 + 106, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 22, 1159, "",spep_0 + 104, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --96F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振りかぶる
SE008 = playSeVer2( spep_1 + 88, 1116, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 88, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE009, 68 );
SE010 = playSeVer2( spep_1 + 88, 1278, "",spep_1 + 204, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 88, SE010, 72 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 436;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン後(ef_002b)
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

--敵の動き1
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, 535.2, -608.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 535.2, -608.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 411.1, -461.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 411.1, -461.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 306.1, -337.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 306.1, -337.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 220.2, -236.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 220.2, -236.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 153.4, -157.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 153.4, -157.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 105.7, -101.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 105.7, -101.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 77.1, -67.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 77.1, -67.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 67.6, -56.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 67.6, -56.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 159.8, -117.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 159.8, -117.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 231.7, -193.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 231.7, -193.3 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 37 );

--敵の動き2
setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, 178.2, -124.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 178.2, -124.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 178.2, -77.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 178.2, -77.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 178.2, -31.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 178.2, -31.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 178.3, 14.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 178.3, 14.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 178.3, 29.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 178.3, 29.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 178.3, 43.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 178.3, 43.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 178.3, 58.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 178.3, 58.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 178.3, 72.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 178.3, 72.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 178.3, 87.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 178.3, 87.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 292, 183.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 292, 183.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 449.7, 246.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 449.7, 246.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 457.9, 233.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 457.9, 233.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 595.1, 310.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 595.1, 310.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 642, 382.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 642, 382.8 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -15.8 );

--敵の動き3

setDisp( spep_2 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, 6, -65 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 6, -65 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 28, -43.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 28, -43.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 50.1, -21.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 50.1, -21.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 72.2, 0.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 72.2, 0.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 94.3, 21.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 94.3, 21.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 116.3, 43.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 116.3, 43.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 138.4, 65.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 138.4, 65.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 160.5, 87.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 160.5, 87.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 225.1, 76.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 225.1, 76.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 279.9, 93.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 279.9, 93.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 372.7, -107 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 372.7, -107 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 536.1, -93.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 536.1, -93.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 568.7, -221.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 568.7, -221.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 758.5, -275.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 758.5, -275.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 793.4, -356.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 793.4, -356.8 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.46, 3.46 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 16 );

--敵の動き4
setDisp( spep_2 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 248 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 248 + OFFSET_X, 1, -708.9, 665.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -708.9, 665.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -635, 571.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -635, 571.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -561, 478.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -561, 478.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -487, 385.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -487, 385.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -413, 292.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -413, 292.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -338.9, 199.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -338.9, 199.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -264.8, 106.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -264.8, 106.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -190.6, 13.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -190.6, 13.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -116.4, -80.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -116.4, -80.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -42.2, -173.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -42.2, -173.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1.2, -329.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -1.2, -329.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 3.3, -170.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 3.3, -170.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 17.3, -124.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 17.3, -124.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -41.4, -66.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -41.4, -66.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 49, 20.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 49, 20.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -17.4, 109.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -17.4, 109.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -17.4, 90.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -17.4, 90.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -17.2, 70.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -17.2, 70.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -17.1, 51.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -17.1, 51.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -16.9, 31.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -16.9, 31.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -16.7, 11.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -16.7, 11.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -16.6, -7.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -16.6, -7.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 3.4, -11.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 3.4, -11.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 3.1, -23.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 3.1, -23.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 2.8, -35.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 2.8, -35.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 2.6, -47.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 2.6, -47.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 2.4, -59.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 2.4, -59.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 2.1, -71.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 2.1, -71.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 1.9, -83.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 1.9, -83.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 1.7, -95.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 1.7, -95.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 1.5, -107.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 1.5, -107.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 1.3, -119.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 1.3, -119.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1.1, -131.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 1.1, -131.8 , 0 );

setScaleKey( spep_2 + 248 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 248 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 116.4 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 116.4 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 135.2 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 135.2 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 154 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 154 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 172.9 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 172.9 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 210.6 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 210.6 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 58.2 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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

--パンチ
SE011 = playSeVer2( spep_2 + 68, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 86, 1159, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_2 + 154, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 166, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_2 + 190, 1116, "",spep_2 + 240, 0, 18, -1);

--裏拳
SE018 = playSeVer2( spep_2 + 212, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 212, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 224, 1121, "",spep_2 + 354, 0, 90, -1);

--敵バウンド
SE021 = playSeVer2( spep_2 + 260, 1014, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 266, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE022, 86 );
SE023 = playSeVer2( spep_2 + 270, 1116, "",spep_2 + 340, 0, 36, -1);

--岩激突
SE024 = playSeVer2( spep_2 + 310, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 316, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE025, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 320); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- --436F


end

