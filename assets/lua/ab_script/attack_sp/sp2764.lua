-- 1029750:UR_アンギラ&メダマッチャ_必殺技：エビルコンビネーション
-- sp_effect_b4_00358
-- sp2764

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
SP_01 = 163293 --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001
SP_02 = 163294 --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001b
SP_03 = 163295 --腕を上に掲げたアンギラ〜点滅発光 ef_002
SP_04 = 163296 --腕を上に掲げたアンギラ〜点滅発光 ef_002b
SP_05 = 163297 --地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003
SP_06 = 163298 --地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003b

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
--]]
ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜アンギラ・メダマッチャと対峙している敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0);  --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 89 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

xx = 250
yy = -100

setMoveKey( spep_0 + 0, 1, xx + 195.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, xx + 196.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, xx + 196.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, xx + 198.2, -39.4+ yy , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, xx + 198.2, -39.4+ yy , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, xx + 199.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, xx + 199.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, xx + 200.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, xx + 200.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, xx + 201.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, xx + 201.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, xx + 202.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, xx + 202.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, xx + 203.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, xx + 203.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, xx + 204.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, xx + 204.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, xx + 206, -39.4+ yy , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, xx + 206, -39.4+ yy , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, xx + 207, -39.4+ yy , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, xx + 207, -39.4+ yy , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, xx + 207.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, xx + 207.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, xx + 208.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, xx + 208.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, xx + 209.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, xx + 209.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, xx + 210.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, xx + 210.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, xx + 211.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, xx + 211.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, xx + 212.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, xx + 212.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, xx + 213.1, -39.4+ yy , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, xx + 213.1, -39.4+ yy , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, xx + 213.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, xx + 213.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, xx + 214.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, xx + 214.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, xx + 215.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, xx + 215.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, xx + 216, -39.4+ yy , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, xx + 216, -39.4+ yy , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, xx + 216.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, xx + 216.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, xx + 217.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, xx + 217.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, xx + 217.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, xx + 217.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, xx + 218.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, xx + 218.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, xx + 219, -39.4+ yy , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, xx + 219, -39.4+ yy , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, xx + 219.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, xx + 219.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, xx + 220, -39.4+ yy , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, xx + 220, -39.4+ yy , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, xx + 220.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, xx + 220.4, -39.4+ yy , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, xx + 220.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, xx + 220.9, -39.4+ yy , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, xx + 221.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, xx + 221.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, xx + 221.6, -39.4+ yy , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, xx + 221.6, -39.4+ yy , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, xx + 222, -39.4+ yy , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, xx + 222, -39.4+ yy , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, xx + 222.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, xx + 222.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, xx + 222.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, xx + 222.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, xx + 222.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, xx + 222.8, -39.4+ yy , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, xx + 223, -39.4+ yy , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, xx + 223, -39.4+ yy , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, xx + 223.2, -39.4+ yy , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, xx + 223.2, -39.4+ yy , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, xx + 223.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, xx + 223.3, -39.4+ yy , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, xx + 223.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, xx + 223.5, -39.4+ yy , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, xx + 223.6, -39.4+ yy , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, xx + 223.6, -39.4+ yy , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, xx + 223.7, -39.4+ yy , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, xx + 223.7, -39.4+ yy , 0 );

setScaleKey( spep_0 + 0, 1,5.23, 5.23 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 5.23, 5.23 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕あげる
SE004 = playSeVer2( spep_0 + 70, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

------------------------------------------------------
-- 腕を上に掲げたアンギラ〜点滅発光 ef_002
------------------------------------------------------
MAX_FRAME_1 = 442;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0);  --腕を上に掲げたアンギラ〜点滅発光 ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255); 
base_1b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); --腕を上に掲げたアンギラ〜点滅発光 ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 148 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 86 + OFFSET_X, 1, 118 );

setMoveKey( spep_1 + 86 + OFFSET_X, 1, 107.3, 77 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 107.3, 77 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 104.2, 92.1 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 104.2, 92.1 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 101.3, 106.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 101.3, 106.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 98.6, 119.1 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 98.6, 119.1 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 96.1, 131.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 96.1, 131.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 93.9, 142.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 93.9, 142.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 91.8, 152.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 91.8, 152.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 89.8, 162 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 89.8, 162 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 88.1, 170.5 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 88.1, 170.5 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 86.5, 178.3 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 86.5, 178.3 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 85, 185.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 85, 185.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 83.7, 191.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 83.7, 191.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 82.6, 197.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 82.6, 197.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 81.6, 202.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 81.6, 202.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 80.6, 206.9 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 80.6, 206.9 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 79.8, 210.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 79.8, 210.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 79.2, 214.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 79.2, 214.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 78.6, 217.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 78.6, 217.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 78.1, 219.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 78.1, 219.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 77.6, 221.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 77.6, 221.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 77.3, 223.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 77.3, 223.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 77, 224.6 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 77, 224.6 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 76.8, 225.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 76.8, 225.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 76.7, 226.5 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 76.7, 226.5 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 76.5, 227 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 76.5, 227 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 76.5, 227.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 76.5, 227.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 76.4, 227.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 76.4, 227.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 76.4, 227.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 76.4, 227.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 76.4, 227.8 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 76.4, 227.8 , 0 );

setScaleKey( spep_1 + 86 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 4.98, 4.98 );

setRotateKey( spep_1 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_1 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 444 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 326 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 390 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 326 + OFFSET_X, 1, 13.1, -267.8 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, 13.1, -267.8 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 6.8, -274.4 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, 6.8, -274.4 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 0.2, -281 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 0.2, -281 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, 0.5, -273.3 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, 0.5, -273.3 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 0.5, -265.5 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, 0.5, -265.5 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 3.4, -270.4 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 3.4, -270.4 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 6, -275.2 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 6, -275.2 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 6.5, -261.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 6.5, -261.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, -7.3, -274.3 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, -7.3, -274.3 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -7.2, -258.6 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -7.2, -258.6 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -1.2, -268.8 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, -1.2, -268.8 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -1.4, -254.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, -1.4, -254.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -15.7, -266.8 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -15.7, -266.8 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -16.1, -250.7 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, -16.1, -250.7 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -10.5, -260.5 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -10.5, -260.5 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -11, -246.3 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -11, -246.3 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -25.4, -258 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -25.4, -258 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -26, -241.9 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, -26, -241.9 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -20.4, -251.7 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, -20.4, -251.7 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -20.8, -237.5 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, -20.8, -237.5 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -29.2, -242.4 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, -29.2, -242.4 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -37.5, -247.3 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, -37.5, -247.3 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -38.7, -238.4 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, -38.7, -238.4 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -39.8, -229.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, -39.8, -229.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -37.9, -233.6 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, -37.9, -233.6 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -35.8, -237.9 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, -35.8, -237.9 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -39.1, -234.2 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, -39.1, -234.2 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -42.3, -230.6 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, -42.3, -230.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -45.3, -227 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, -45.3, -227 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -46.9, -225.6 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, -46.9, -225.6 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -48.4, -224.2 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, -48.4, -224.2 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -49.9, -222.9 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, -49.9, -222.9 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 13.9, -112.1 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 13.9, -112.1 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 12.2, -111.5 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 12.2, -111.5 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 10.7, -110.9 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 10.7, -110.9 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 9.3, -110.4 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, 9.3, -110.4 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 7.9, -109.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, 7.9, -109.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 6.6, -109.4 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, 6.6, -109.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 5.4, -108.9 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, 5.4, -108.9 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 4.3, -108.5 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, 4.3, -108.5 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 3.3, -108.1 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, 3.3, -108.1 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 2.3, -107.8 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 2.3, -107.8 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 1.4, -107.4 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, 1.4, -107.4 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 0.6, -107.1 , 0 );
setMoveKey( spep_1 + 413 + OFFSET_X, 1, 0.6, -107.1 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, -0.2, -106.8 , 0 );
setMoveKey( spep_1 + 415 + OFFSET_X, 1, -0.2, -106.8 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, -0.8, -106.6 , 0 );
setMoveKey( spep_1 + 417 + OFFSET_X, 1, -0.8, -106.6 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, -1.4, -106.3 , 0 );
setMoveKey( spep_1 + 419 + OFFSET_X, 1, -1.4, -106.3 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, -2, -106.1 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, -2, -106.1 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -2.5, -105.9 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, -2.5, -105.9 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, -2.9, -105.7 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, -2.9, -105.7 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, -3.3, -105.6 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, -3.3, -105.6 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, -3.7, -105.5 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, -3.7, -105.5 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, -4, -105.4 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, -4, -105.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, -4.2, -105.3 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, -4.2, -105.3 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, -4.4, -105.2 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, -4.4, -105.2 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, -4.6, -105.2 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, -4.6, -105.2 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, -4.7, -105.1 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, -4.7, -105.1 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, -4.8, -105.1 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, -4.8, -105.1 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, -4.6, -105.1 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, -4.6, -105.1 , 0 );

setScaleKey( spep_1 + 326 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_1 + 345 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 6.63, 6.63 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 6.63, 6.63 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_1 + 355 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_1 + 361 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_1 + 363 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 365 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_1 + 367 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_1 + 368 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 369 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_1 + 373 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 375 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_1 + 377 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_1 + 379 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 383 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 385 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 389 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_1 + 393 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_1 + 395 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 397 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_1 + 399 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_1 + 401 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_1 + 403 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 405 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 407 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_1 + 411 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_1 + 413 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_1 + 414 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_1 + 415 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 417 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 419 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 423 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 425 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_1 + 429 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_1 + 326 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 389 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, -44.2 );

-- ** 音 ** --
--腕おろす
SE003 = playSeVer2( spep_1 + 26, 1168, "", 0, 8, 0, -1);
setStartTimeMs( SE003,  1200 );
SE005 = playSeVer2( spep_1 + 26, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 26, 1116, "",spep_1 + 120, 0, 62, -1);
SE007 = playSeVer2( spep_1 + 26, 1117, "", 0, 0, 0, -1);

--地響き
SE008 = playSeVer2( spep_1 + 74, 1044, "",spep_1 + 188, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 74, SE008, 133 );

--地面から手がでる
SE009 = playSeVer2( spep_1 + 92, 1232, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 100;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 10, SE003, 0);
    stopSe( SP_dodge - 10, SE005, 0);
    stopSe( SP_dodge - 10, SE006, 0);
    stopSe( SP_dodge - 10, SE007, 0);
    stopSe( SP_dodge - 10, SE008, 0);
    stopSe( SP_dodge - 10, SE009, 0);

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
    --回避しなかった場合
    -----------------------------
    
-- ** 音 ** --
--足つかむ
SE010 = playSeVer2( spep_1 + 106, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 118, 1006, "", 0, 0, 0, -1);

--構える
SE012 = playSeVer2( spep_1 + 168, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 176, 1013, "", 0, 0, 0, -1);

--力む
SE014 = playSeVer2( spep_1 + 192, 1292, "",spep_1 + 300, 0, 22, -1);
SE015 = playSeVer2( spep_1 + 192, 1330, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 192, 1456, "",spep_1 + 308, 0, 24, -1);

--分身飛んでいく
SE017 = playSeVer2( spep_1 + 254, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 272, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 272, 1207, "", 0, 0, 0, -1);

--分身へばりつく
SE020 = playSeVer2( spep_1 + 328, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 328, SE020, 178 );
SE021 = playSeVer2( spep_1 + 328, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 328, SE021, 79 );
SE022 = playSeVer2( spep_1 + 348, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE022, 178 );
SE023 = playSeVer2( spep_1 + 348, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE023, 79 );
SE024 = playSeVer2( spep_1 + 356, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE024, 174 );
SE025 = playSeVer2( spep_1 + 356, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE025, 79 );
SE026 = playSeVer2( spep_1 + 368, 1113, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 368, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 368, SE027, 79 );

--自爆予兆
SE028 = playSeVer2( spep_1 + 376, 1240, "",spep_1 + 452, 0, 18, -1);
SE029 = playSeVer2( spep_1 + 376, 1157, "",spep_1 + 450, 0, 16, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 442

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_2 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_2 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_2 + 0, 1512, 90, 0x100, -1, 0, 0, -40 );
--setEffScaleKey( spep_2 + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_2 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_2 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_2 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, housha, 0 );
setEffRotateKey( spep_2 + 90, housha, 0 );
setEffAlphaKey( spep_2 + 0, housha, 255 );
setEffAlphaKey( spep_2 + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_2 + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003
------------------------------------------------------
MAX_FRAME_3 = 416;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  -- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003
setEffMoveKey( spep_3 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_0f, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_0f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_0f, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_0f, 0 );
setEffAlphaKey( spep_3 + 0, finish_0f, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_0f, 255 );
finish_0b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  -- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003b
setEffMoveKey( spep_3 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_0b, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_0b, 0 );
setEffAlphaKey( spep_3 + 0, finish_0b, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 180 + OFFSET_X, 1, 118 );

setMoveKey( spep_3 + 180 + OFFSET_X, 1, 358.2, -125.7 , 0 );
setMoveKey( spep_3 + 189 + OFFSET_X, 1, 358.2, -125.7 , 0 );
setMoveKey( spep_3 + 190 + OFFSET_X, 1, 358.1, -125.7 , 0 );
setMoveKey( spep_3 + 195 + OFFSET_X, 1, 358.1, -125.7 , 0 );
setMoveKey( spep_3 + 196 + OFFSET_X, 1, 358, -125.8 , 0 );
setMoveKey( spep_3 + 197 + OFFSET_X, 1, 358, -125.8 , 0 );
setMoveKey( spep_3 + 198 + OFFSET_X, 1, 357.8, -125.8 , 0 );
setMoveKey( spep_3 + 199 + OFFSET_X, 1, 357.8, -125.8 , 0 );
setMoveKey( spep_3 + 200 + OFFSET_X, 1, 357.6, -125.9 , 0 );
setMoveKey( spep_3 + 201 + OFFSET_X, 1, 357.6, -125.9 , 0 );
setMoveKey( spep_3 + 202 + OFFSET_X, 1, 357.4, -126 , 0 );
setMoveKey( spep_3 + 203 + OFFSET_X, 1, 357.4, -126 , 0 );
setMoveKey( spep_3 + 204 + OFFSET_X, 1, 357.1, -126.1 , 0 );
setMoveKey( spep_3 + 205 + OFFSET_X, 1, 357.1, -126.1 , 0 );
setMoveKey( spep_3 + 206 + OFFSET_X, 1, 356.6, -126.3 , 0 );
setMoveKey( spep_3 + 207 + OFFSET_X, 1, 356.6, -126.3 , 0 );
setMoveKey( spep_3 + 208 + OFFSET_X, 1, 356.1, -126.5 , 0 );
setMoveKey( spep_3 + 209 + OFFSET_X, 1, 356.1, -126.5 , 0 );
setMoveKey( spep_3 + 210 + OFFSET_X, 1, 360.5, -116.7 , 0 );
setMoveKey( spep_3 + 211 + OFFSET_X, 1, 360.5, -116.7 , 0 );
setMoveKey( spep_3 + 212 + OFFSET_X, 1, 357.7, -119 , 0 );
setMoveKey( spep_3 + 213 + OFFSET_X, 1, 357.7, -119 , 0 );
setMoveKey( spep_3 + 214 + OFFSET_X, 1, 356.7, -113.4 , 0 );
setMoveKey( spep_3 + 215 + OFFSET_X, 1, 356.7, -113.4 , 0 );
setMoveKey( spep_3 + 216 + OFFSET_X, 1, 359.6, -121.8 , 0 );
setMoveKey( spep_3 + 217 + OFFSET_X, 1, 359.6, -121.8 , 0 );
setMoveKey( spep_3 + 218 + OFFSET_X, 1, 356.2, -118.3 , 0 );
setMoveKey( spep_3 + 219 + OFFSET_X, 1, 356.2, -118.3 , 0 );
setMoveKey( spep_3 + 220 + OFFSET_X, 1, 352.6, -120.9 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, 352.6, -120.9 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, 350.8, -115.6 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, 350.8, -115.6 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, 350.6, -120.3 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, 350.6, -120.3 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 333.2, -136.2 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, 333.2, -136.2 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 335.4, -122.3 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, 335.4, -122.3 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 347.2, -149.4 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, 347.2, -149.4 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 343.7, -129.8 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, 343.7, -129.8 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 314.7, -146.2 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, 314.7, -146.2 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 320.2, -127.9 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, 320.2, -127.9 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 325.3, -149.7 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 325.3, -149.7 , 0 );

setScaleKey( spep_3 + 180 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 6.05, 6.05 );

setRotateKey( spep_3 + 180 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_3 + 240 + OFFSET_X, 1, -16.1 );

setBlendColor( spep_3 + 228 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_3 + 230 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_3 + 232 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_3 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_3 + 236 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_3 + 238 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );

-- ** 音 ** --
--のけぞる
SE031 = playSeVer2( spep_3 + 4, 1190, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 10, 1004, "", 0, 0, 0, -1);

--気弾発射
SE033 = playSeVer2( spep_3 + 86, 1213, "",spep_3 + 260, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 86, SE033, 52 );
SE034 = playSeVer2( spep_3 + 86, 1133, "",spep_3 + 140, 0, 26, 0.9);
SE035 = playSeVer2( spep_3 + 90, 1177, "", 0, 0, 0, -1);

--自爆予兆
SE036 = playSeVer2( spep_3 + 166, 1240, "",spep_3 + 256, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 166, SE036, 126 );
SE037 = playSeVer2( spep_3 + 166, 1157, "",spep_3 + 276, 0, 52, -1);

--爆発
SE038 = playSeVer2( spep_3 + 228, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_3 + 228, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 240, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_3 + 280 );
endPhase( spep_3 + MAX_FRAME_3);  -- 416F

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜アンギラ・メダマッチャと対峙している敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0);  --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕〜アンギラ・メダマッチャと対峙している敵 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 89 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

xx = -250
yy = -100

setMoveKey( spep_0 + 0, 1,xx+-195.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, xx+-196.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, xx+-196.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, xx+-198.2, -39.4+yy , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, xx+-198.2, -39.4+yy , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, xx+-199.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, xx+-199.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, xx+-200.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, xx+-200.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, xx+-201.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, xx+-201.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, xx+-202.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, xx+-202.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, xx+-203.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, xx+-203.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, xx+-204.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, xx+-204.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, xx+-206, -39.4+yy , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, xx+-206, -39.4+yy , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, xx+-207, -39.4+yy , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, xx+-207, -39.4+yy , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, xx+-207.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, xx+-207.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, xx+-208.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, xx+-208.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, xx+-209.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, xx+-209.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, xx+-210.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, xx+-210.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, xx+-211.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, xx+-211.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, xx+-212.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, xx+-212.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, xx+-213.1, -39.4+yy , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, xx+-213.1, -39.4+yy , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, xx+-213.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, xx+-213.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, xx+-214.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, xx+-214.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, xx+-215.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, xx+-215.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, xx+-216, -39.4+yy , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, xx+-216, -39.4+yy , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, xx+-216.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, xx+-216.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, xx+-217.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, xx+-217.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, xx+-217.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, xx+-217.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, xx+-218.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, xx+-218.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, xx+-219, -39.4+yy , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, xx+-219, -39.4+yy , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, xx+-219.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, xx+-219.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, xx+-220, -39.4+yy , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, xx+-220, -39.4+yy , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, xx+-220.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, xx+-220.4, -39.4+yy , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, xx+-220.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, xx+-220.9, -39.4+yy , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, xx+-221.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, xx+-221.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, xx+-221.6, -39.4+yy , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, xx+-221.6, -39.4+yy , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, xx+-222, -39.4+yy , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, xx+-222, -39.4+yy , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, xx+-222.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, xx+-222.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, xx+-222.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, xx+-222.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, xx+-222.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, xx+-222.8, -39.4+yy , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, xx+-223, -39.4+yy , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, xx+-223, -39.4+yy , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, xx+-223.2, -39.4+yy , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, xx+-223.2, -39.4+yy , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, xx+-223.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, xx+-223.3, -39.4+yy , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, xx+-223.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, xx+-223.5, -39.4+yy , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, xx+-223.6, -39.4+yy , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, xx+-223.6, -39.4+yy , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, xx+-223.7, -39.4+yy , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, xx+-223.7, -39.4+yy , 0 );

setScaleKey( spep_0 + 0, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 5.23, 5.23 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕あげる
SE004 = playSeVer2( spep_0 + 70, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

------------------------------------------------------
-- 腕を上に掲げたアンギラ〜点滅発光 ef_002
------------------------------------------------------
MAX_FRAME_1 = 442;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0);  --腕を上に掲げたアンギラ〜点滅発光 ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255); 
base_1b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); --腕を上に掲げたアンギラ〜点滅発光 ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 148 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 86 + OFFSET_X, 1, 18 );

setMoveKey( spep_1 + 86 + OFFSET_X, 1, -107.3, 77 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -107.3, 77 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -104.2, 92.1 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -104.2, 92.1 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, -101.3, 106.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -101.3, 106.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, -98.6, 119.1 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, -98.6, 119.1 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -96.1, 131.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -96.1, 131.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, -93.9, 142.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, -93.9, 142.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -91.8, 152.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -91.8, 152.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -89.8, 162 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -89.8, 162 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -88.1, 170.5 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -88.1, 170.5 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -86.5, 178.3 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -86.5, 178.3 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -85, 185.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -85, 185.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -83.7, 191.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -83.7, 191.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -82.6, 197.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -82.6, 197.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -81.6, 202.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -81.6, 202.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, -80.6, 206.9 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -80.6, 206.9 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -79.8, 210.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -79.8, 210.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -79.2, 214.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -79.2, 214.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -78.6, 217.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -78.6, 217.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -78.1, 219.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -78.1, 219.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -77.6, 221.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -77.6, 221.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -77.3, 223.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, -77.3, 223.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -77, 224.6 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -77, 224.6 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, -76.8, 225.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, -76.8, 225.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -76.7, 226.5 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -76.7, 226.5 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, -76.5, 227 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -76.5, 227 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -76.5, 227.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -76.5, 227.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -76.4, 227.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -76.4, 227.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -76.4, 227.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -76.4, 227.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -76.4, 227.8 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -76.4, 227.8 , 0 );

setScaleKey( spep_1 + 86 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 4.98, 4.98 );

setRotateKey( spep_1 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_1 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 444 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 326 + OFFSET_X, 1, 17 );
changeAnime( spep_1 + 390 + OFFSET_X, 1, 6 );

setMoveKey( spep_1 + 326 + OFFSET_X, 1, -13.1, -267.8 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, -13.1, -267.8 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -6.8, -274.4 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -6.8, -274.4 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -0.2, -281 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -0.2, -281 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -0.5, -273.3 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -0.5, -273.3 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -0.5, -265.5 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -0.5, -265.5 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -3.4, -270.4 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, -3.4, -270.4 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, -6, -275.2 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, -6, -275.2 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -6.5, -261.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, -6.5, -261.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 7.3, -274.3 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 7.3, -274.3 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 7.2, -258.6 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 7.2, -258.6 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 1.2, -268.8 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 1.2, -268.8 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 1.4, -254.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 1.4, -254.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 15.7, -266.8 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 15.7, -266.8 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 16.1, -250.7 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 16.1, -250.7 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 10.5, -260.5 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 10.5, -260.5 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 11, -246.3 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 11, -246.3 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 25.4, -258 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 25.4, -258 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 26, -241.9 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 26, -241.9 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 20.4, -251.7 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 20.4, -251.7 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 20.8, -237.5 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 20.8, -237.5 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 29.2, -242.4 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 29.2, -242.4 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 37.5, -247.3 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 37.5, -247.3 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 38.7, -238.4 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 38.7, -238.4 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 39.8, -229.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 39.8, -229.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 37.9, -233.6 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 37.9, -233.6 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 35.8, -237.9 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 35.8, -237.9 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 39.1, -234.2 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 39.1, -234.2 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 42.3, -230.6 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 42.3, -230.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 45.3, -227 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 45.3, -227 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 46.9, -225.6 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 46.9, -225.6 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 48.4, -224.2 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 48.4, -224.2 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 49.9, -222.9 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 49.9, -222.9 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -13.9, -112.1 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, -13.9, -112.1 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -12.2, -111.5 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, -12.2, -111.5 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -10.7, -110.9 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, -10.7, -110.9 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, -9.3, -110.4 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, -9.3, -110.4 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, -7.9, -109.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, -7.9, -109.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, -6.6, -109.4 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, -6.6, -109.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, -5.4, -108.9 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, -5.4, -108.9 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, -4.3, -108.5 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, -4.3, -108.5 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, -3.3, -108.1 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, -3.3, -108.1 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, -2.3, -107.8 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, -2.3, -107.8 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -1.4, -107.4 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, -1.4, -107.4 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -0.6, -107.1 , 0 );
setMoveKey( spep_1 + 413 + OFFSET_X, 1, -0.6, -107.1 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, 0.2, -106.8 , 0 );
setMoveKey( spep_1 + 415 + OFFSET_X, 1, 0.2, -106.8 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, 0.8, -106.6 , 0 );
setMoveKey( spep_1 + 417 + OFFSET_X, 1, 0.8, -106.6 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, 1.4, -106.3 , 0 );
setMoveKey( spep_1 + 419 + OFFSET_X, 1, 1.4, -106.3 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, 2, -106.1 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, 2, -106.1 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 2.5, -105.9 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, 2.5, -105.9 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 2.9, -105.7 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 2.9, -105.7 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 3.3, -105.6 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 3.3, -105.6 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 3.7, -105.5 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 3.7, -105.5 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 4, -105.4 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, 4, -105.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 4.2, -105.3 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, 4.2, -105.3 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 4.4, -105.2 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, 4.4, -105.2 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 4.6, -105.2 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 4.6, -105.2 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 4.7, -105.1 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 4.7, -105.1 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 4.8, -105.1 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 4.8, -105.1 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 4.6, -105.1 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 4.6, -105.1 , 0 );

setScaleKey( spep_1 + 326 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_1 + 345 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 6.63, 6.63 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 6.63, 6.63 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_1 + 355 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_1 + 361 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_1 + 363 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 365 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_1 + 367 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_1 + 368 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 369 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_1 + 373 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 375 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_1 + 377 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_1 + 379 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 383 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 385 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 389 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_1 + 393 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_1 + 395 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 397 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_1 + 399 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_1 + 401 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_1 + 403 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 405 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 407 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_1 + 411 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_1 + 413 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_1 + 414 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_1 + 415 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 417 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 419 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 423 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 425 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_1 + 429 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_1 + 326 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 389 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 44.2 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 44.2 );

-- ** 音 ** --
--腕おろす
SE003 = playSeVer2( spep_1 + 26, 1168, "", 0, 8, 0, -1);
setStartTimeMs( SE003,  1200 );
SE005 = playSeVer2( spep_1 + 26, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 26, 1116, "",spep_1 + 120, 0, 62, -1);
SE007 = playSeVer2( spep_1 + 26, 1117, "", 0, 0, 0, -1);

--地響き
SE008 = playSeVer2( spep_1 + 74, 1044, "",spep_1 + 188, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 74, SE008, 133 );

--地面から手がでる
SE009 = playSeVer2( spep_1 + 92, 1232, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 100;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 10, SE003, 0);
    stopSe( SP_dodge - 10, SE005, 0);
    stopSe( SP_dodge - 10, SE006, 0);
    stopSe( SP_dodge - 10, SE007, 0);
    stopSe( SP_dodge - 10, SE008, 0);
    stopSe( SP_dodge - 10, SE009, 0);

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
    --回避しなかった場合
    -----------------------------
    
-- ** 音 ** --
--足つかむ
SE010 = playSeVer2( spep_1 + 106, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 118, 1006, "", 0, 0, 0, -1);

--構える
SE012 = playSeVer2( spep_1 + 168, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 176, 1013, "", 0, 0, 0, -1);

--力む
SE014 = playSeVer2( spep_1 + 192, 1292, "",spep_1 + 300, 0, 22, -1);
SE015 = playSeVer2( spep_1 + 192, 1330, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 192, 1456, "",spep_1 + 308, 0, 24, -1);

--分身飛んでいく
SE017 = playSeVer2( spep_1 + 254, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 272, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 272, 1207, "", 0, 0, 0, -1);

--分身へばりつく
SE020 = playSeVer2( spep_1 + 328, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 328, SE020, 178 );
SE021 = playSeVer2( spep_1 + 328, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 328, SE021, 79 );
SE022 = playSeVer2( spep_1 + 348, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE022, 178 );
SE023 = playSeVer2( spep_1 + 348, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE023, 79 );
SE024 = playSeVer2( spep_1 + 356, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE024, 174 );
SE025 = playSeVer2( spep_1 + 356, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE025, 79 );
SE026 = playSeVer2( spep_1 + 368, 1113, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 368, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 368, SE027, 79 );

--自爆予兆
SE028 = playSeVer2( spep_1 + 376, 1240, "",spep_1 + 452, 0, 18, -1);
SE029 = playSeVer2( spep_1 + 376, 1157, "",spep_1 + 450, 0, 16, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 442

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_2 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_2 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_2 + 0, 1512, 90, 0x100, -1, 0, 0, -40 );
setEffScaleKey( spep_2 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_2 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_2 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_2 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, housha, 0 );
setEffRotateKey( spep_2 + 90, housha, 0 );
setEffAlphaKey( spep_2 + 0, housha, 255 );
setEffAlphaKey( spep_2 + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_2 + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003
------------------------------------------------------
MAX_FRAME_3 = 416;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  -- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003
setEffMoveKey( spep_3 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_0f, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_0f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_0f, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_0f, 0 );
setEffAlphaKey( spep_3 + 0, finish_0f, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_0f, 255 );
finish_0b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  -- 地面に腕埋めた状態のアンギラ〜フィニッシュ ef_003b
setEffMoveKey( spep_3 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_0b, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_0b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_0b, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_0b, 0 );
setEffAlphaKey( spep_3 + 0, finish_0b, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 180 + OFFSET_X, 1, 18 );

setMoveKey( spep_3 + 180 + OFFSET_X, 1, -358.2, -125.7 , 0 );
setMoveKey( spep_3 + 189 + OFFSET_X, 1, -358.2, -125.7 , 0 );
setMoveKey( spep_3 + 190 + OFFSET_X, 1, -358.1, -125.7 , 0 );
setMoveKey( spep_3 + 195 + OFFSET_X, 1, -358.1, -125.7 , 0 );
setMoveKey( spep_3 + 196 + OFFSET_X, 1, -358, -125.8 , 0 );
setMoveKey( spep_3 + 197 + OFFSET_X, 1, -358, -125.8 , 0 );
setMoveKey( spep_3 + 198 + OFFSET_X, 1, -357.8, -125.8 , 0 );
setMoveKey( spep_3 + 199 + OFFSET_X, 1, -357.8, -125.8 , 0 );
setMoveKey( spep_3 + 200 + OFFSET_X, 1, -357.6, -125.9 , 0 );
setMoveKey( spep_3 + 201 + OFFSET_X, 1, -357.6, -125.9 , 0 );
setMoveKey( spep_3 + 202 + OFFSET_X, 1, -357.4, -126 , 0 );
setMoveKey( spep_3 + 203 + OFFSET_X, 1, -357.4, -126 , 0 );
setMoveKey( spep_3 + 204 + OFFSET_X, 1, -357.1, -126.1 , 0 );
setMoveKey( spep_3 + 205 + OFFSET_X, 1, -357.1, -126.1 , 0 );
setMoveKey( spep_3 + 206 + OFFSET_X, 1, -356.6, -126.3 , 0 );
setMoveKey( spep_3 + 207 + OFFSET_X, 1, -356.6, -126.3 , 0 );
setMoveKey( spep_3 + 208 + OFFSET_X, 1, -356.1, -126.5 , 0 );
setMoveKey( spep_3 + 209 + OFFSET_X, 1, -356.1, -126.5 , 0 );
setMoveKey( spep_3 + 210 + OFFSET_X, 1, -360.5, -116.7 , 0 );
setMoveKey( spep_3 + 211 + OFFSET_X, 1, -360.5, -116.7 , 0 );
setMoveKey( spep_3 + 212 + OFFSET_X, 1, -357.7, -119 , 0 );
setMoveKey( spep_3 + 213 + OFFSET_X, 1, -357.7, -119 , 0 );
setMoveKey( spep_3 + 214 + OFFSET_X, 1, -356.7, -113.4 , 0 );
setMoveKey( spep_3 + 215 + OFFSET_X, 1, -356.7, -113.4 , 0 );
setMoveKey( spep_3 + 216 + OFFSET_X, 1, -359.6, -121.8 , 0 );
setMoveKey( spep_3 + 217 + OFFSET_X, 1, -359.6, -121.8 , 0 );
setMoveKey( spep_3 + 218 + OFFSET_X, 1, -356.2, -118.3 , 0 );
setMoveKey( spep_3 + 219 + OFFSET_X, 1, -356.2, -118.3 , 0 );
setMoveKey( spep_3 + 220 + OFFSET_X, 1, -352.6, -120.9 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, -352.6, -120.9 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, -350.8, -115.6 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, -350.8, -115.6 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, -350.6, -120.3 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, -350.6, -120.3 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, -333.2, -136.2 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, -333.2, -136.2 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, -335.4, -122.3 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, -335.4, -122.3 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, -347.2, -149.4 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, -347.2, -149.4 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, -343.7, -129.8 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, -343.7, -129.8 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, -314.7, -146.2 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, -314.7, -146.2 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, -320.2, -127.9 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, -320.2, -127.9 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, -325.3, -149.7 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, -325.3, -149.7 , 0 );

setScaleKey( spep_3 + 180 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 6.05, 6.05 );

setRotateKey( spep_3 + 180 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_3 + 240 + OFFSET_X, 1, 16.1 );

setBlendColor( spep_3 + 180 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_3 + 228 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_3 + 230 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_3 + 232 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_3 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_3 + 236 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_3 + 238 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_3 + 240 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--のけぞる
SE031 = playSeVer2( spep_3 + 4, 1190, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 10, 1004, "", 0, 0, 0, -1);

--気弾発射
SE033 = playSeVer2( spep_3 + 86, 1213, "",spep_3 + 260, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 86, SE033, 52 );
SE034 = playSeVer2( spep_3 + 86, 1133, "",spep_3 + 140, 0, 26, 0.9);
SE035 = playSeVer2( spep_3 + 90, 1177, "", 0, 0, 0, -1);

--自爆予兆
SE036 = playSeVer2( spep_3 + 166, 1240, "",spep_3 + 256, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 166, SE036, 126 );
SE037 = playSeVer2( spep_3 + 166, 1157, "",spep_3 + 276, 0, 52, -1);

--爆発
SE038 = playSeVer2( spep_3 + 228, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_3 + 228, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 240, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_3 + 280 );
endPhase( spep_3 + MAX_FRAME_3);  -- 416F

end
