--1028060:LR_超サイヤ人孫悟空&超サイヤ人ベジータ&超サイヤ人トランクス(青年期)_超必殺技：トリプル気功波
--sp_effect_b4_00309
--sp2660

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 162515;  --ef_001  開始～カードカットインまで
SP_02  = 162519;  --ef_002  開始～カードカットインまで

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットインまで
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 116;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001   開始～カードカットインまで
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 38 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, -110.8, -10.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -110.1, -10.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -110.1, -10.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -109.4, -10.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -109.4, -10.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -108.7, -10.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -108.7, -10.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -108, -10.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -108, -10.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -107.3, -10.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -107.3, -10.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -106.6, -10.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -106.6, -10.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -105.9, -10.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -105.9, -10.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -105.2, -10.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -105.2, -10.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -104.5, -10.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -104.5, -10.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -103.8, -10.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -103.8, -10.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -103.1, -10.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -103.1, -10.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -102.3, -10.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -102.3, -10.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -101.6, -10.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -101.6, -10.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -100.9, -10.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -100.9, -10.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -100.2, -10.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -100.2, -10.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -99.5, -10.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -99.5, -10.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -98.8, -10.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -98.8, -10.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -98.1, -10.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -98.1, -10.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.28, 1.28 );

setRotateKey( spep_0 + 0, 1, 21.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, 21.7 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 142, 0, 22, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 40, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 + 2;  --116f + 2f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------
-- ベジータ正面突撃～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 1008;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  ベジータ正面突撃～フィニッシュ
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
--敵の動き１
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 173 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 213.3, -83.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 213.3, -83.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 206.5, -76.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 206.5, -76.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 185.9, -56.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 185.9, -56.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 183.9, -15.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 183.9, -15.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 167.1, -37.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 167.1, -37.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 193.1, -20.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 193.1, -20.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 142.2, -31.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 142.2, -31.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 159.1, -21.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 159.1, -21.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 152.2, -32 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 152.2, -32 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 152.1, -24 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 152.1, -24 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 143.6, -29.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 143.6, -29.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 142.6, -23.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 142.6, -23.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 144.8, -26.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 144.8, -26.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 143.9, -26.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 143.9, -26.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 143.1, -26.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 143.1, -26.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 142.3, -26.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 142.3, -26.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 141.6, -27 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 141.6, -27 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 141, -27.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 141, -27.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 140.5, -27.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 140.5, -27.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 140, -27.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 140, -27.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 139.6, -27.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 139.6, -27.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 139.3, -27.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 139.3, -27.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 139.1, -27.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 139.1, -27.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 138.9, -27.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 138.9, -27.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 138.8, -27.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 138.8, -27.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 138.7, -27.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 138.7, -27.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 138, -13.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 138, -13.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 167.3, -37.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 167.3, -37.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 165, -11.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 165, -11.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 103.3, -37.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 103.3, -37.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 108, -21.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 108, -21.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 128.6, -36.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 128.6, -36.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 118.5, -33.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 118.5, -33.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 139.5, -11.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 139.5, -11.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 138.4, -32.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 138.4, -32.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 149.5, 5.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 149.5, 5.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 137.3, 0.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 137.3, 0.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 116.2, -12.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 116.2, -12.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 136, -29 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 136, -29 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 133.7, -10.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 133.7, -10.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 133.7, -44.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 133.7, -44.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 120.7, -21.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 120.7, -21.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 131.5, -37 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 131.5, -37 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 138.7, -17.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 138.7, -17.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 149.1, -36.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 149.1, -36.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 152.4, -23.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 152.4, -23.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 174.3, -19.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 174.3, -19.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 176.9, -37.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 176.9, -37.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 169.6, -27.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 169.6, -27.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 171.4, -27.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 171.4, -27.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 172.8, -27 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 172.8, -27 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 173.7, -26.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 173.7, -26.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 174.3, -26.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 174.3, -26.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 174.5, -26.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 174.5, -26.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 179.1, -15.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 179.1, -15.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 290.6, -27.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 290.6, -27.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 383.5, -37.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 383.5, -37.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 537.9, -43.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 537.9, -43.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 622.8, -46.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 622.8, -46.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 659.6, -48.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 659.6, -48.4 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 10.7 );

--敵の動き２
setDisp( spep_2 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 220 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 220 + OFFSET_X, 1, 180.3, 3.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 180.3, 3.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 177.1, 3.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 177.1, 3.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 175.5, 3.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 175.5, 3.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 178.5, 4.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 178.5, 4.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 175.4, 3.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 175.4, 3.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 178.4, 4.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 178.4, 4.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 178.4, 1.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 178.4, 1.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 175.2, 1.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 175.2, 1.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 178.3, 4.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 178.3, 4.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 178.2, 1.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 178.2, 1.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 175.1, 5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 175.1, 5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 178.1, 5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 178.1, 5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 175, 1.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 175, 1.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 175, 5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 175, 5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 178, 1.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 178, 1.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 174.9, 5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 174.9, 5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 177.9, 1.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 177.9, 1.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 177.9, 5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 177.9, 5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 174.7, 1.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 174.7, 1.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 174.7, 5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 174.7, 5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 177.7, 2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 177.7, 2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 174.6, 5.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 174.6, 5.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 177.6, 2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 177.6, 2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 174.5, 5.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 174.5, 5.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 177.5, 5.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 177.5, 5.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 174.4, 5.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 174.4, 5.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 174.3, 2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 174.3, 2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 177.4, 5.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 177.4, 5.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 174.2, 2.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 174.2, 2.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 177.3, 5.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 177.3, 5.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 174.2, 2.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 174.2, 2.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 177.2, 5.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 177.2, 5.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 174.1, 5.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 174.1, 5.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 177.1, 2.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 177.1, 2.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 174, 5.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 174, 5.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 177, 2.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 177, 2.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 173.9, 5.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 173.9, 5.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 176.9, 5.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 176.9, 5.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 173.8, 2.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 173.8, 2.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 175.3, 5.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 175.3, 5.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 175.3, 2.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 175.3, 2.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 175.2, 5.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 175.2, 5.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 173.6, 3.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 173.6, 3.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 176.7, 3.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 176.7, 3.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 175.1, 2.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 175.1, 2.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 176.6, 3.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 176.6, 3.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 173.5, 3.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 173.5, 3.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 176.5, 5.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 176.5, 5.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 173.4, 2.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 173.4, 2.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 176.4, 5.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 176.4, 5.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 173.3, 5.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 173.3, 5.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 176.3, 2.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 176.3, 2.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 174.7, 5.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 174.7, 5.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 171.6, 2.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 171.6, 2.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 176.2, 5.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 176.2, 5.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 173.1, 2.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 173.1, 2.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 173, 5.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 173, 5.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 176.1, 2.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 176.1, 2.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 173, 5.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 173, 5.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 176, 5.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 176, 5.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 172.9, 2.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 172.9, 2.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 172.8, 5.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 172.8, 5.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 175.9, 2.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 175.9, 2.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 172.8, 5.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 172.8, 5.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 176, 5.8 , 0 );

setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_2 + 220 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -67.8 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -67.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -64.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -64.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -63.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -63.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -58 );

--敵の動き３
setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 592 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 472 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 532 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, 39.2, 78.8 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 39.2, 78.8 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 34.4, 208.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 34.4, 208.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 19.1, 343.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 19.1, 343.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 22, 460.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 22, 460.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 16.3, 467.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 16.3, 467.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 13.8, 462 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 13.8, 462 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 14.7, 462.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 14.7, 462.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 2.6, 472.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 2.6, 472.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 10.1, 460.5 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 10.1, 460.5 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 1.6, 464.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 1.6, 464.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -3.6, 471.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -3.6, 471.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 4.4, 461.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 4.4, 461.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -6.9, 472 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -6.9, 472 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 1.4, 465.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 1.4, 465.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -9.6, 466.1 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -9.6, 466.1 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -7.5, 476.1 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -7.5, 476.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -1.9, 473.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -1.9, 473.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 473.2, 151.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 473.2, 151.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 142.4, -16.9 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 142.4, -16.9 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -39.8, -145.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -39.8, -145.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -113.5, -180 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -113.5, -180 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -113.5, -196 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -113.5, -196 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -127.2, -197.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -127.2, -197.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -134.9, -196.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -134.9, -196.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -132.5, -212 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -132.5, -212 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -149.3, -207.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -149.3, -207.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -149.4, -220.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -149.4, -220.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -162.1, -219.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -162.1, -219.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -164.4, -228.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -164.4, -228.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -181.7, -224.5 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -181.7, -224.5 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -158.7, -254.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -158.7, -254.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -168.7, -235 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -168.7, -235 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -190.4, -255.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -190.4, -255.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -190.2, -247.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -190.2, -247.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -183.4, -264.2 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -183.4, -264.2 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -200.5, -268.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -200.5, -268.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -195.9, -260.1 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -195.9, -260.1 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -191.1, -284.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -191.1, -284.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -211.1, -310.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -211.1, -310.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -244.5, -386.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -244.5, -386.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -255.4, -458.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -255.4, -458.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -219.6, -493.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -219.6, -493.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -299.1, -599.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -299.1, -599.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -492.6, -963.2 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -492.6, -963.2 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -844.8, -1526.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -844.8, -1526.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -1369.7, -2322.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -1369.7, -2322.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -2060.9, -3281.4 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -2060.9, -3281.4 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -2047.9, 792 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -2047.9, 792 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -1956.2, 588 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -1956.2, 588 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -1833.8, 373.5 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -1833.8, 373.5 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -1441.8, 247.9 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -1441.8, 247.9 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -1032.6, 165.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -1032.6, 165.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -720.9, 156.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -720.9, 156.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -636.3, 39 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -636.3, 39 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -582.9, 80.5 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -582.9, 80.5 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -572.5, 37 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -572.5, 37 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -549.4, 7.2 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -549.4, 7.2 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -523.4, -7.3 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -523.4, -7.3 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -494.3, -28 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -494.3, -28 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -479.9, -43 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -479.9, -43 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -455.7, -58.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -455.7, -58.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -445.7, -69.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -445.7, -69.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -425.3, -72.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -425.3, -72.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -412.8, -83 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -412.8, -83 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -407.9, -92.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -407.9, -92.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -392.3, -95.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -392.3, -95.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -390.2, -100.3 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -390.2, -100.3 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -377.3, -108.1 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -377.3, -108.1 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -371.7, -106.6 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -371.7, -106.6 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -373.4, -114.3 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -373.4, -114.3 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -370.2, -116.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -370.2, -116.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -362, -127.3 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -362, -127.3 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -367.1, -126.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -367.1, -126.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -359.5, -134.3 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -359.5, -134.3 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -364.2, -138.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -364.2, -138.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -356.9, -140.8 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -356.9, -140.8 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 11.02, 11.02 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 11.02, 11.02 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 521 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, 6.5 );

setBlendColor( spep_2 + 438 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7);
setBlendColor( spep_2 + 448 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.72);
setBlendColor( spep_2 + 450 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.74);
setBlendColor( spep_2 + 452 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.76);
setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.78);
setBlendColor( spep_2 + 456 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8);
setBlendColor( spep_2 + 471 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8);
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0);

setBlendColor( spep_2 + 592 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_2 + 593 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_2 + 594 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0);

--敵の動き４
setDisp( spep_2 + 854 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 878 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 854 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 854 + OFFSET_X, 1, 78.3, -5.1 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 78.3, -5.1 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 78.1, -5.1 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 78.1, -5.1 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 77.6, -5.1 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 77.6, -5.1 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 76.7, -5.1 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 76.7, -5.1 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 75.1, -5.1 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 75.1, -5.1 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 72.7, -5.1 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 72.7, -5.1 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 69.5, -5.1 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 69.5, -5.1 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 65.1, -5.1 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 65.1, -5.1 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 59.5, -5.1 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, 59.5, -5.1 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, 52.6, -5.1 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 52.6, -5.1 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 44.1, -5 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, 44.1, -5 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, 33.9, -4.9 , 0 );

setScaleKey( spep_2 + 854 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 857 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 858 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 861 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 862 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 863 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 864 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 865 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 866 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 867 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 868 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 869 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 870 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 871 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 872 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 873 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 874 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 875 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 876 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 877 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 878 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 854 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 859 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 860 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 861 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 862 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 863 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 864 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 865 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 867 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 868 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 869 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 870 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 871 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 872 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 873 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 874 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 875 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 876 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 877 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 878 + OFFSET_X, 1, 5 );

setBlendColor( spep_2 + 854 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_2 + 877 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_2 + 878 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0);

-- ** 音 ** --
--ベジータ突っ込む
SE005 = playSeVer2( spep_2 + 4, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 4, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE006, 71 );
SE007 = playSeVer2( spep_2 + 4, 1117, "",spep_2 + 64, 0, 14, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--初手パンチ
SE008 = playSeVer2( spep_2 + 38, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE009, 73 );
SE010 = playSeVer2( spep_2 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE010, 78 );

--オーラ
SE011 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE011, 56 );
SE012 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE012, 56 );

--ラッシュ
SE013 = playSeVer2( spep_2 + 102, 1425, "",spep_2 + 146, 0, 8, 0.6);
SE014 = playSeVer2( spep_2 + 102, 1009, "",spep_2 + 128, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 102, SE014, 108 );
SE015 = playSeVer2( spep_2 + 110, 1010, "",spep_2 + 138, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 110, SE015, 92 );
SE016 = playSeVer2( spep_2 + 118, 1009, "",spep_2 + 146, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 112 );
SE017 = playSeVer2( spep_2 + 126, 1010, "",spep_2 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 126, SE017, 104 );
SSE018 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, -1);

--殴り飛ばす
SE019 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE021 = playSeVer2( spep_2 + 178, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE021, 47 );
SE022 = playSeVer2( spep_2 + 180, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 182, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE023, 119 );
SE024 = playSeVer2( spep_2 + 210, 8, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 224, 1332, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 246, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 119 );
SE030 = playSeVer2( spep_2 + 314, 1019, "",spep_2 + 370, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 314, SE030, 119 );

--トランクス追い越す
SE027 = playSeVer2( spep_2 + 280, 1117, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 280, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 290, 1277, "", 0, 0, 0, -1);

--構える
SE031 = playSeVer2( spep_2 + 344, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 354, 1007, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE032, 50 );
SE034 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE034, 50 );

--トランクス気弾溜め
SE035 = playSeVer2( spep_2 + 380, 1191, "",spep_2 + 460, 0, 22, -1);
SE036 = playSeVer2( spep_2 + 380, 1282, "",spep_2 + 456, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 380, SE036, 65 );
SE037 = playSeVer2( spep_2 + 380, 1204, "",spep_2 + 456, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 380, SE037, 127 );
SE038 = playSeVer2( spep_2 + 380, 1154, "",spep_2 + 454, 0, 18, -1);

--オーラ
SE039 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE039, 50 );
SE040 = playSeVer2( spep_2 + 418, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 418, SE040, 50 );

--トランクス気弾発射
SE041 = playSeVer2( spep_2 + 430, 1312, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 430, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE042, 79 );
SE043 = playSeVer2( spep_2 + 430, 1109, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 442, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 442, SE044, 50 );
SE046 = playSeVer2( spep_2 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE046, 50 );
--SE048 = playSeVer2( spep_2 + 472, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 472, SE048, 56 );

--画面遷移
SE047 = playSeVer2( spep_2 + 472, 1232, "", 0, 0, 0, -1);

--飛行音
SE049 = playSeVer2( spep_2 + 490, 1019, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_2 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE050, 56 );
SE051 = playSeVer2( spep_2 + 516, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 516, SE051, 56 );

--悟空気弾溜め
SE045 = playSeVer2( spep_2 + 526, 1210, "",spep_2 + 624, 6, 24, -1);
setStartTimeMs( SE045,  1200 );
SE052 = playSeVer2( spep_2 + 528, 1209, "",spep_2 + 620, 0, 22, -1);

--オーラ
SE053 = playSeVer2( spep_2 + 538, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE053, 56 );
SE055 = playSeVer2( spep_2 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE055, 56 );

--飛行音
SE054 = playSeVer2( spep_2 + 554, 1019, "", 0, 0, 0, -1);

--悟空気弾発射
SE056 = playSeVer2( spep_2 + 590, 1133, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 590, 1213, "",spep_2 + 702, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 590, SE057, 79 );
SE058 = playSeVer2( spep_2 + 590, 1022, "", 0, 0, 0, -1);

--オーラ
SE059 = playSeVer2( spep_2 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 646, SE059, 63 );
SE060 = playSeVer2( spep_2 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE060, 63 );
SE063 = playSeVer2( spep_2 + 694, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE063, 63 );

--腕前に出す
SE061 = playSeVer2( spep_2 + 676, 1004, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 684, 1006, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE064 = playSeVer2( spep_2 + 708, 1282, "",spep_2 + 830, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 708, SE064, 77 );
SE065 = playSeVer2( spep_2 + 708, 1296, "",spep_2 + 830, 0, 18, -1);
SE066 = playSeVer2( spep_2 + 708, 1356, "",spep_2 + 830, 0, 18, -1);
SE067 = playSeVer2( spep_2 + 708, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 708, SE067, 76 );
SE068 = playSeVer2( spep_2 + 714, 1147, "",spep_2 + 824, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 714, SE068, 62 );

--オーラ
SE069 = playSeVer2( spep_2 + 718, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 718, SE069, 63 );
SE070 = playSeVer2( spep_2 + 742, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 742, SE070, 63 );
SE071 = playSeVer2( spep_2 + 766, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE071, 63 );
SE072 = playSeVer2( spep_2 + 790, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 790, SE072, 63 );

--ベジータ気弾発射
SE073 = playSeVer2( spep_2 + 790, 1177, "",spep_2 + 904, 0, 8, -1);
SE074 = playSeVer2( spep_2 + 790, 1109, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 790, 1193, "",spep_2 + 904, 0, 36, -1);
SE076 = playSeVer2( spep_2 + 790, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE077 = playSeVer2( spep_2 + 850, 1202, "",spep_2 + 916, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 850, SE077, 232 );
SE078 = playSeVer2( spep_2 + 856, 1335, "",spep_2 + 912, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 856, SE078, 111 );
setPitch( spep_2 + 856, SE078, 600 );
setTimeStretch( SE078, 1.4, 30, 4 );

--爆発
SE079 = playSeVer2( spep_2 + 894, 1159, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_2 + 898, 1024, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_2 + 910, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 910, SE081, 48 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 890 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　1008 -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットインまで
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 116;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001   開始～カードカットインまで
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 38 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, 110.8, -10.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 110.1, -10.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 110.1, -10.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 109.4, -10.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 109.4, -10.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 108.7, -10.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 108.7, -10.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 108, -10.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 108, -10.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 107.3, -10.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 107.3, -10.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 106.6, -10.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 106.6, -10.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 105.9, -10.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 105.9, -10.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 105.2, -10.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 105.2, -10.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 104.5, -10.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 104.5, -10.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 103.8, -10.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 103.8, -10.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 103.1, -10.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 103.1, -10.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 102.3, -10.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 102.3, -10.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 101.6, -10.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 101.6, -10.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 100.9, -10.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 100.9, -10.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 100.2, -10.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 100.2, -10.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 99.5, -10.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 99.5, -10.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 98.8, -10.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 98.8, -10.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 98.1, -10.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 98.1, -10.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.28, 1.28 );

setRotateKey( spep_0 + 0, 1, -21.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, -21.7 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 142, 0, 22, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--顔カットイン
--SE003 = playSeVer2( spep_0 + 40, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 + 2;  --116f + 2f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------
-- ベジータ正面突撃～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 1008;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  ベジータ正面突撃～フィニッシュ
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
--敵の動き１
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 173 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -213.3, -83.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -213.3, -83.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -206.5, -76.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -206.5, -76.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -185.9, -56.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -185.9, -56.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -183.9, -15.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -183.9, -15.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -167.1, -37.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -167.1, -37.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -193.1, -20.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -193.1, -20.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -142.2, -31.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -142.2, -31.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -159.1, -21.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -159.1, -21.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -152.2, -32 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -152.2, -32 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -152.1, -24 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -152.1, -24 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -143.6, -29.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -143.6, -29.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -142.6, -23.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -142.6, -23.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -144.8, -26.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -144.8, -26.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -143.9, -26.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -143.9, -26.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -143.1, -26.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -143.1, -26.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -142.3, -26.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -142.3, -26.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -141.6, -27 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -141.6, -27 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -141, -27.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -141, -27.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -140.5, -27.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -140.5, -27.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -140, -27.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -140, -27.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -139.6, -27.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -139.6, -27.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -139.3, -27.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -139.3, -27.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -139.1, -27.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -139.1, -27.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -138.9, -27.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -138.9, -27.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -138.8, -27.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -138.8, -27.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -138.7, -27.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -138.7, -27.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -138, -13.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -138, -13.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -167.3, -37.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -167.3, -37.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -165, -11.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -165, -11.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -103.3, -37.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -103.3, -37.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -108, -21.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -108, -21.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -128.6, -36.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -128.6, -36.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -118.5, -33.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -118.5, -33.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -139.5, -11.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -139.5, -11.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -138.4, -32.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -138.4, -32.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -149.5, 5.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -149.5, 5.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -137.3, 0.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -137.3, 0.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -116.2, -12.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -116.2, -12.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -136, -29 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -136, -29 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -133.7, -10.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -133.7, -10.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -133.7, -44.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -133.7, -44.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -120.7, -21.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -120.7, -21.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -131.5, -37 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -131.5, -37 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -138.7, -17.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -138.7, -17.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -149.1, -36.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -149.1, -36.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -152.4, -23.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -152.4, -23.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -174.3, -19.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -174.3, -19.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -176.9, -37.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -176.9, -37.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -169.6, -27.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -169.6, -27.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -171.4, -27.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -171.4, -27.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -172.8, -27 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -172.8, -27 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -173.7, -26.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -173.7, -26.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -174.3, -26.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -174.3, -26.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -174.5, -26.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -174.5, -26.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -179.1, -15.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -179.1, -15.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -290.6, -27.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -290.6, -27.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -383.5, -37.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -383.5, -37.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -537.9, -43.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -537.9, -43.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -622.8, -46.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -622.8, -46.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -659.6, -48.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -659.6, -48.4 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -10.7 );

--敵の動き２
setDisp( spep_2 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 220 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 220 + OFFSET_X, 1, -180.3, 3.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -180.3, 3.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -177.1, 3.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -177.1, 3.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -175.5, 3.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -175.5, 3.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -178.5, 4.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -178.5, 4.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -175.4, 3.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -175.4, 3.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -178.4, 4.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -178.4, 4.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -178.4, 1.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -178.4, 1.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -175.2, 1.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -175.2, 1.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -178.3, 4.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -178.3, 4.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -178.2, 1.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -178.2, 1.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -175.1, 5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -175.1, 5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -178.1, 5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -178.1, 5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -175, 1.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -175, 1.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -175, 5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -175, 5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -178, 1.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -178, 1.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -174.9, 5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -174.9, 5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -177.9, 1.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -177.9, 1.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -177.9, 5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -177.9, 5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -174.7, 1.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -174.7, 1.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -174.7, 5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -174.7, 5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -177.7, 2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -177.7, 2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -174.6, 5.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -174.6, 5.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -177.6, 2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -177.6, 2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -174.5, 5.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -174.5, 5.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -177.5, 5.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -177.5, 5.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -174.4, 5.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -174.4, 5.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -174.3, 2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -174.3, 2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -177.4, 5.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -177.4, 5.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -174.2, 2.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -174.2, 2.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -177.3, 5.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -177.3, 5.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -174.2, 2.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -174.2, 2.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -177.2, 5.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -177.2, 5.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -174.1, 5.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -174.1, 5.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -177.1, 2.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -177.1, 2.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -174, 5.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -174, 5.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -177, 2.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -177, 2.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -173.9, 5.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -173.9, 5.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -176.9, 5.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -176.9, 5.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -173.8, 2.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -173.8, 2.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -175.3, 5.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -175.3, 5.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -175.3, 2.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -175.3, 2.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -175.2, 5.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -175.2, 5.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -173.6, 3.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -173.6, 3.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -176.7, 3.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -176.7, 3.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -175.1, 2.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -175.1, 2.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -176.6, 3.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -176.6, 3.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -173.5, 3.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -173.5, 3.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -176.5, 5.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -176.5, 5.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -173.4, 2.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -173.4, 2.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -176.4, 5.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -176.4, 5.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -173.3, 5.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -173.3, 5.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -176.3, 2.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -176.3, 2.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -174.7, 5.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -174.7, 5.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -171.6, 2.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -171.6, 2.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -176.2, 5.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -176.2, 5.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -173.1, 2.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -173.1, 2.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -173, 5.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -173, 5.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -176.1, 2.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -176.1, 2.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -173, 5.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -173, 5.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -176, 5.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -176, 5.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -172.9, 2.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -172.9, 2.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -172.8, 5.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -172.8, 5.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -175.9, 2.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -175.9, 2.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -172.8, 5.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -172.8, 5.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -176, 5.8 , 0 );

setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_2 + 220 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 67.1 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 67.1 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 66.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 66.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 64.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 64.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 63.5 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 63.5 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 62.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 62.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 62.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 62.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 59.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 59.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 59 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 59 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 58 );

--敵の動き３
setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 592 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 472 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 532 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, -39.2, 78.8 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -39.2, 78.8 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -34.4, 208.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -34.4, 208.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -19.1, 343.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -19.1, 343.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -22, 460.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -22, 460.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -16.3, 467.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -16.3, 467.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -13.8, 462 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -13.8, 462 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -14.7, 462.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -14.7, 462.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -2.6, 472.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -2.6, 472.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -10.1, 460.5 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -10.1, 460.5 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -1.6, 464.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -1.6, 464.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 3.6, 471.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 3.6, 471.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -4.4, 461.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -4.4, 461.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 6.9, 472 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 6.9, 472 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -1.4, 465.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -1.4, 465.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 9.6, 466.1 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 9.6, 466.1 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 7.5, 476.1 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 7.5, 476.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 1.9, 473.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 1.9, 473.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -473.2, 151.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -473.2, 151.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -142.4, -16.9 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -142.4, -16.9 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 39.8, -145.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 39.8, -145.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 113.5, -180 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 113.5, -180 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 113.5, -196 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 113.5, -196 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 127.2, -197.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 127.2, -197.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 134.9, -196.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 134.9, -196.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 132.5, -212 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 132.5, -212 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 149.3, -207.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 149.3, -207.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 149.4, -220.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 149.4, -220.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 162.1, -219.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 162.1, -219.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 164.4, -228.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 164.4, -228.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 181.7, -224.5 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 181.7, -224.5 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 158.7, -254.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 158.7, -254.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 168.7, -235 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 168.7, -235 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 190.4, -255.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 190.4, -255.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 190.2, -247.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 190.2, -247.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 183.4, -264.2 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 183.4, -264.2 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 200.5, -268.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 200.5, -268.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 195.9, -260.1 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 195.9, -260.1 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 191.1, -284.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 191.1, -284.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 211.1, -310.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 211.1, -310.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 244.5, -386.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 244.5, -386.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 255.4, -458.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 255.4, -458.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 219.6, -493.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 219.6, -493.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 299.1, -599.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 299.1, -599.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 492.6, -963.2 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 492.6, -963.2 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 844.8, -1526.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 844.8, -1526.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 1369.7, -2322.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 1369.7, -2322.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 2060.9, -3281.4 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 2060.9, -3281.4 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 2047.9, 792 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 2047.9, 792 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 1956.2, 588 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 1956.2, 588 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 1833.8, 373.5 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 1833.8, 373.5 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 1441.8, 247.9 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 1441.8, 247.9 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 1032.6, 165.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 1032.6, 165.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 720.9, 156.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 720.9, 156.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 636.3, 39 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 636.3, 39 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 582.9, 80.5 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 582.9, 80.5 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 572.5, 37 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 572.5, 37 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 549.4, 7.2 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 549.4, 7.2 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 523.4, -7.3 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 523.4, -7.3 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 494.3, -28 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 494.3, -28 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 479.9, -43 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 479.9, -43 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 455.7, -58.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 455.7, -58.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 445.7, -69.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 445.7, -69.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 425.3, -72.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 425.3, -72.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 412.8, -83 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 412.8, -83 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 407.9, -92.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 407.9, -92.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 392.3, -95.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 392.3, -95.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 390.2, -100.3 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 390.2, -100.3 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 377.3, -108.1 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 377.3, -108.1 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 371.7, -106.6 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 371.7, -106.6 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 373.4, -114.3 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 373.4, -114.3 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 370.2, -116.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 370.2, -116.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 362, -127.3 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 362, -127.3 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 367.1, -126.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 367.1, -126.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 359.5, -134.3 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 359.5, -134.3 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 364.2, -138.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 364.2, -138.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 356.9, -140.8 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 356.9, -140.8 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 11.02, 11.02 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 11.02, 11.02 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 521 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -6.5 );

setBlendColor( spep_2 + 438 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7);
setBlendColor( spep_2 + 448 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.72);
setBlendColor( spep_2 + 450 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.74);
setBlendColor( spep_2 + 452 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.76);
setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.78);
setBlendColor( spep_2 + 456 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8);
setBlendColor( spep_2 + 471 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8);
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0);

setBlendColor( spep_2 + 592 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_2 + 593 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_2 + 594 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0);

--敵の動き４
setDisp( spep_2 + 854 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 878 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 854 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 854 + OFFSET_X, 1, -78.3, -5.1 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, -78.3, -5.1 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, -78.1, -5.1 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, -78.1, -5.1 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, -77.6, -5.1 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, -77.6, -5.1 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, -76.7, -5.1 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, -76.7, -5.1 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, -75.1, -5.1 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, -75.1, -5.1 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, -72.7, -5.1 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, -72.7, -5.1 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, -69.5, -5.1 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, -69.5, -5.1 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, -65.1, -5.1 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, -65.1, -5.1 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, -59.5, -5.1 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, -59.5, -5.1 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, -52.6, -5.1 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, -52.6, -5.1 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, -44.1, -5 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, -44.1, -5 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, -33.9, -4.9 , 0 );

setScaleKey( spep_2 + 854 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 857 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 858 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 861 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 862 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 863 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 864 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 865 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 866 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 867 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 868 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 869 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 870 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 871 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 872 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 873 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 874 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 875 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 876 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 877 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 878 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 854 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 859 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 860 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 861 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 862 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 863 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 864 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 865 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 867 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 868 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 869 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 870 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 871 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 872 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 873 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 874 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 875 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 876 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 877 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 878 + OFFSET_X, 1, -5 );

setBlendColor( spep_2 + 854 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_2 + 877 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_2 + 878 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0);

-- ** 音 ** --
--ベジータ突っ込む
SE005 = playSeVer2( spep_2 + 4, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 4, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE006, 71 );
SE007 = playSeVer2( spep_2 + 4, 1117, "",spep_2 + 64, 0, 14, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--初手パンチ
SE008 = playSeVer2( spep_2 + 38, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE009, 73 );
SE010 = playSeVer2( spep_2 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE010, 78 );

--オーラ
SE011 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE011, 56 );
SE012 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE012, 56 );

--ラッシュ
SE013 = playSeVer2( spep_2 + 102, 1425, "",spep_2 + 146, 0, 8, 0.6);
SE014 = playSeVer2( spep_2 + 102, 1009, "",spep_2 + 128, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 102, SE014, 108 );
SE015 = playSeVer2( spep_2 + 110, 1010, "",spep_2 + 138, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 110, SE015, 92 );
SE016 = playSeVer2( spep_2 + 118, 1009, "",spep_2 + 146, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 112 );
SE017 = playSeVer2( spep_2 + 126, 1010, "",spep_2 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 126, SE017, 104 );
SSE018 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, -1);

--殴り飛ばす
SE019 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE021 = playSeVer2( spep_2 + 178, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE021, 47 );
SE022 = playSeVer2( spep_2 + 180, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 182, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE023, 119 );
SE024 = playSeVer2( spep_2 + 210, 8, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 224, 1332, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 246, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 119 );
SE030 = playSeVer2( spep_2 + 314, 1019, "",spep_2 + 370, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 314, SE030, 119 );

--トランクス追い越す
SE027 = playSeVer2( spep_2 + 280, 1117, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 280, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 290, 1277, "", 0, 0, 0, -1);

--構える
SE031 = playSeVer2( spep_2 + 344, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 354, 1007, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE032, 50 );
SE034 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE034, 50 );

--トランクス気弾溜め
SE035 = playSeVer2( spep_2 + 380, 1191, "",spep_2 + 460, 0, 22, -1);
SE036 = playSeVer2( spep_2 + 380, 1282, "",spep_2 + 456, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 380, SE036, 65 );
SE037 = playSeVer2( spep_2 + 380, 1204, "",spep_2 + 456, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 380, SE037, 127 );
SE038 = playSeVer2( spep_2 + 380, 1154, "",spep_2 + 454, 0, 18, -1);

--オーラ
SE039 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE039, 50 );
SE040 = playSeVer2( spep_2 + 418, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 418, SE040, 50 );

--トランクス気弾発射
SE041 = playSeVer2( spep_2 + 430, 1312, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 430, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE042, 79 );
SE043 = playSeVer2( spep_2 + 430, 1109, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 442, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 442, SE044, 50 );
SE046 = playSeVer2( spep_2 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE046, 50 );
--SE048 = playSeVer2( spep_2 + 472, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 472, SE048, 56 );

--画面遷移
SE047 = playSeVer2( spep_2 + 472, 1232, "", 0, 0, 0, -1);

--飛行音
SE049 = playSeVer2( spep_2 + 490, 1019, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_2 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE050, 56 );
SE051 = playSeVer2( spep_2 + 516, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 516, SE051, 56 );

--悟空気弾溜め
SE045 = playSeVer2( spep_2 + 526, 1210, "",spep_2 + 624, 6, 24, -1);
setStartTimeMs( SE045,  1200 );
SE052 = playSeVer2( spep_2 + 528, 1209, "",spep_2 + 620, 0, 22, -1);

--オーラ
SE053 = playSeVer2( spep_2 + 538, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE053, 56 );
SE055 = playSeVer2( spep_2 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE055, 56 );

--飛行音
SE054 = playSeVer2( spep_2 + 554, 1019, "", 0, 0, 0, -1);

--悟空気弾発射
SE056 = playSeVer2( spep_2 + 590, 1133, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 590, 1213, "",spep_2 + 702, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 590, SE057, 79 );
SE058 = playSeVer2( spep_2 + 590, 1022, "", 0, 0, 0, -1);

--オーラ
SE059 = playSeVer2( spep_2 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 646, SE059, 63 );
SE060 = playSeVer2( spep_2 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE060, 63 );
SE063 = playSeVer2( spep_2 + 694, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE063, 63 );

--腕前に出す
SE061 = playSeVer2( spep_2 + 676, 1004, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 684, 1006, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE064 = playSeVer2( spep_2 + 708, 1282, "",spep_2 + 830, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 708, SE064, 77 );
SE065 = playSeVer2( spep_2 + 708, 1296, "",spep_2 + 830, 0, 18, -1);
SE066 = playSeVer2( spep_2 + 708, 1356, "",spep_2 + 830, 0, 18, -1);
SE067 = playSeVer2( spep_2 + 708, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 708, SE067, 76 );
SE068 = playSeVer2( spep_2 + 714, 1147, "",spep_2 + 824, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 714, SE068, 62 );

--オーラ
SE069 = playSeVer2( spep_2 + 718, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 718, SE069, 63 );
SE070 = playSeVer2( spep_2 + 742, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 742, SE070, 63 );
SE071 = playSeVer2( spep_2 + 766, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE071, 63 );
SE072 = playSeVer2( spep_2 + 790, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 790, SE072, 63 );

--ベジータ気弾発射
SE073 = playSeVer2( spep_2 + 790, 1177, "",spep_2 + 904, 0, 8, -1);
SE074 = playSeVer2( spep_2 + 790, 1109, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 790, 1193, "",spep_2 + 904, 0, 36, -1);
SE076 = playSeVer2( spep_2 + 790, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE077 = playSeVer2( spep_2 + 850, 1202, "",spep_2 + 916, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 850, SE077, 232 );
SE078 = playSeVer2( spep_2 + 856, 1335, "",spep_2 + 912, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 856, SE078, 111 );
setPitch( spep_2 + 856, SE078, 600 );
setTimeStretch( SE078, 1.4, 30, 4 );

--爆発
SE079 = playSeVer2( spep_2 + 894, 1159, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_2 + 898, 1024, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_2 + 910, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 910, SE081, 48 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 890 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　1008 -4


end