--4029710:LR_ピッコロ_超必殺技：ナメック星人の怒りをおもいしれ！！！
--sp_effect_a9_00137
--sp2769

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163307;  -- 開幕　衝撃波を放つピッコロ ef_001
SP_02 = 163308;  -- 敵へ接近〜フィニッシュ　KO演出まで ef_002
SP_02b = 163309;  -- 敵へ接近〜フィニッシュ　KO演出まで ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕　衝撃波を放つピッコロ
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕　衝撃波を放つピッコロ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 25, 515.5 , 0 );
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

-- ** 音 ** --

--気が飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 138, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 237 );
setTimeStretch( SE002, 0.66, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--気が更に飛んでくる
SE005 = playSeVer2( spep_0 + 68, 1258, "",spep_0 + 138, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 69 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --128F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--瞬間移動
SE007 = playSeVer2( spep_1 + 80, 1109, "", 0, 0, 0, -1);

-------------------------------------------------
-- 敵へ接近〜フィニッシュ　KO演出まで
-------------------------------------------------
MAX_FRAME_2 = 838;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵へ接近〜フィニッシュ　KO演出まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵へ接近〜フィニッシュ　KO演出まで(ef_002b)
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

--敵の動き1--

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, -2.6, -224.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -2.7, -225.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -2.7, -225.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -2.7, -225.3 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -2.7, -225.3 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -2.7, -225.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -2.7, -225.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -2.7, -225.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -2.7, -225.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -2.7, -225.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -2.7, -225.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -2.7, -226.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -2.7, -226.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -2.7, -226.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -2.7, -226.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -2.7, -226.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -2.7, -226.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -2.7, -226.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -2.7, -226.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -2.7, -226.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -2.7, -226.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -2.7, -227 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -2.7, -227 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -2.7, -227.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -2.7, -227.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -2.7, -227.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -2.7, -227.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -2.7, -227.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -2.7, -227.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -2.7, -227.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -2.7, -227.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -3.1, -263.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -3.1, -263.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -3.4, -302.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -3.4, -302.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -3.9, -343.7 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -3.9, -343.7 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -4.3, -387.5 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -4.3, -387.5 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -4.3, -394.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -4.3, -394.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -4.4, -401.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -4.4, -401.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -4.3, -407.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -4.3, -407.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -4.3, -413.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -4.3, -413.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -4.4, -419.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -4.4, -419.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -4.4, -424.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -4.4, -424.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -4.4, -430 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -4.4, -430 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 169.4, 81.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 169.4, 81.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 103.9, 64.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 103.9, 64.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 109.9, 70.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 109.9, 70.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 223.5, 119.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 223.5, 119.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 223.5, 131.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 223.5, 131.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 235.5, 119.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 235.5, 119.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 129.9, 99.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 129.9, 99.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 235.5, 131.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 235.5, 131.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 223.5, 119.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 223.5, 119.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 129.9, 99.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 129.9, 99.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 185.9, 140.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 185.9, 140.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 160.9, 123.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 160.9, 123.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 117.9, 87.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 117.9, 99.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 129.9, 87.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 160.9, 123.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 160.9, 123.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 133.9, 99.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 133.9, 99.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 124.8, 103.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 124.8, 103.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 137.4, 91.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 137.4, 91.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 138.1, 103.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 138.1, 103.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 126.9, 91.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 126.9, 91.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 127.8, 103.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 127.8, 103.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 140.7, 91.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 140.7, 91.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 141.7, 103.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 141.7, 103.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 130.7, 91.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 130.7, 91.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 131.8, 103.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 131.8, 103.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 139, 98.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 139, 98.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 143.3, 101.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 143.3, 101.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 138.6, 96 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 138.6, 96 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 140.1, 102.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 140.1, 102.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 147.6, 96.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 147.6, 96.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 149.2, 103.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 149.2, 103.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.93, 2.93 );

setRotateKey( spep_2 + 0, 1, 7 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -35 );

setBlendColor( spep_2 + 78 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 82 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 102 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 110 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2--

setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, 587.3, 776.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 587.3, 776.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 581.8, 768.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 581.8, 768.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 565.4, 746.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 565.4, 746.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 538.1, 708.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 538.1, 708.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 499.8, 655.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 499.8, 655.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 471.6, 616.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 471.6, 616.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 441.7, 575.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 441.7, 575.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 409.9, 531.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 409.9, 531.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 376.4, 485.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 376.4, 485.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 341, 436.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 341, 436.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 333.5, 426.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 333.5, 426.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 326.3, 416.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 326.3, 416.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 319.5, 406.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 319.5, 406.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 313, 397.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 313, 397.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 306.9, 389.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 306.9, 389.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 301.2, 381.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 301.2, 381.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 295.9, 374.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 295.9, 374.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 290.9, 367.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 290.9, 367.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 286.3, 361 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 286.3, 361 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 282.1, 355.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 282.1, 355.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 278.2, 349.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 278.2, 349.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 274.7, 344.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 274.7, 344.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 271.6, 340.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 271.6, 340.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 268.9, 336.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 268.9, 336.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 44.8, 494.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 44.8, 494.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 147.4, 456.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 147.4, 456.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 96.1, 482.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 96.1, 482.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 44.8, 505.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 44.8, 505.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 113.2, 493.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 113.2, 493.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 44.8, 601.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 44.8, 601.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 50.8, 590 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 50.8, 590 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 38.9, 1050.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 38.9, 1050.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 38.9, 1534.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 38.9, 1534.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 51, 1919.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 51, 1919.5 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 7.39, 7.39 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 7.39, 7.39 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 8.08, 8.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 8.08, 8.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.62, 4.62 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -72 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -72 );

--敵の動き3--

setDisp( spep_2 + 308 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 308 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 308 + OFFSET_X, 1, -12.2, -123.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -12.2, -123.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 1.1, -113.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 1.1, -113.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -3.7, -86.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -3.7, -86.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 3.6, -59.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 3.6, -59.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -7.3, -52 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -7.3, -52 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -6.1, -20.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -6.1, -20.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 7, -14.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 7, -14.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 1, -7.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1, -7.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 1, -7.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 1, -7.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 1.1, -6.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 1.1, -6.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 1.1, -6.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 1.1, -6.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 1.1, -5.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 1.1, -5.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 1.1, -5.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 1.1, -5.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 1.1, -4.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 1.1, -4.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 1.2, -4.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 1.2, -4.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 1.2, -4.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 1.2, -4.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 1.2, -3.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 1.2, -3.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 1.2, -3.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 1.2, -3.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 1.2, -3.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 1.2, -3.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 1.2, -3.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 1.2, -3.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 1.2, -2.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 1.2, -2.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 1.2, -2.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 1.2, -2.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 1.2, -2.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 1.2, -2.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 1.3, -2.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 1.3, -2.6 , 0 );

setScaleKey( spep_2 + 308 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 308 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 22.6 );

--敵の動き4--

setDisp( spep_2 + 388 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 500 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 388 + OFFSET_X, 1, 167.5, 315.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 167.5, 315.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 173.4, 322 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 173.4, 322 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 179.2, 327.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 179.2, 327.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 185, 333.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 185, 333.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 190.7, 339.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 190.7, 339.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 196.4, 345.6 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 196.4, 345.6 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 202, 351.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 202, 351.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 207.6, 357 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 207.6, 357 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 208.6, 358 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 208.6, 358 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 209.6, 358.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 209.6, 358.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 210.5, 359.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 210.5, 359.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 211.4, 360.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 211.4, 360.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 212.3, 361.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 212.3, 361.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 213, 362.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 213, 362.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 213.8, 362.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 213.8, 362.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 214.5, 363.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 214.5, 363.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 215.1, 364.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 215.1, 364.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 215.8, 364.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 215.8, 364.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 216.3, 365.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 216.3, 365.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 216.8, 365.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 216.8, 365.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 217.3, 366.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 217.3, 366.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 217.8, 366.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 217.8, 366.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 218.2, 367 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 218.2, 367 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 218.6, 367.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 218.6, 367.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 218.9, 367.6 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 218.9, 367.6 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 219.2, 367.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 219.2, 367.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 219.4, 368.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 219.4, 368.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 219.6, 368.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 219.6, 368.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 219.8, 368.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 219.8, 368.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 220, 368.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 220, 368.6 , 0 );

setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 388 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, 4.7 );

--敵の動き5--

setDisp( spep_2 + 554 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 554 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 554 + OFFSET_X, 1, 12.5, 7.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 12.5, 7.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 18.3, 10.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 18.3, 10.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 23.6, 13.2 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 23.6, 13.2 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 28.6, 15.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 28.6, 15.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 33.1, 17.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 33.1, 17.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 37.2, 19.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 37.2, 19.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 38.6, 20.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 38.6, 20.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 39.9, 21 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 39.9, 21 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 41.2, 21.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 41.2, 21.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 42.4, 22.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 42.4, 22.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 43.6, 22.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 43.6, 22.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 44.7, 23.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 44.7, 23.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 45.7, 23.7 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 45.7, 23.7 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 46.8, 24.2 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 46.8, 24.2 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 47.7, 24.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 47.7, 24.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 48.6, 25.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 48.6, 25.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 49.5, 25.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 49.5, 25.5 , 0 );

setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 2.46, 2.46 );

setRotateKey( spep_2 + 554 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -28.9 );

--敵の動き6--

setDisp( spep_2 + 592 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 598 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 592 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 592 + OFFSET_X, 1, 22, 31.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 22, 31.1 , 0 );

setScaleKey( spep_2 + 592 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 592 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 592 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 + 598 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );

--敵の動き7--

setDisp( spep_2 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 644 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 600 + OFFSET_X, 1, 30, 39.3 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 30, 39.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 20.1, 29.4 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 20.1, 29.4 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 22.1, 43.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 22.1, 43.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 36.2, 33.7 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 36.2, 33.7 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 38.2, 47.8 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 38.2, 47.8 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 28.2, 37.9 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 28.2, 37.9 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 30.3, 52.1 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 30.3, 52.1 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 44.3, 42.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 44.3, 42.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 46.4, 56.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 46.4, 56.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 36.4, 46.5 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 36.4, 46.5 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 38.5, 60.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 38.5, 60.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 52.5, 50.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 52.5, 50.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 54.5, 64.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 54.5, 64.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 44.6, 55 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 44.6, 55 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 46.6, 69.1 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 46.6, 69.1 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 60.7, 59.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 60.7, 59.3 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 62.7, 73.4 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 62.7, 73.4 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 52.8, 63.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 52.8, 63.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 54.8, 77.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 54.8, 77.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 68.8, 67.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 68.8, 67.8 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 70.9, 81.9 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 70.9, 81.9 , 0 );

setRotateKey( spep_2 + 600 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 600 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 604 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 606 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 644 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );

--敵の動き8--

setDisp( spep_2 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 690 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 690 + OFFSET_X, 1, 743.1, 368.6 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 743.1, 368.6 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 683.4, 340.8 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 683.4, 340.8 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 623.8, 313.1 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 623.8, 313.1 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 564.1, 285.3 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 564.1, 285.3 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 504.4, 257.6 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 504.4, 257.6 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 444.7, 229.8 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 444.7, 229.8 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 385.1, 202.1 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 385.1, 202.1 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 325.4, 174.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 325.4, 174.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 265.7, 146.6 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 265.7, 146.6 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 206, 118.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 206, 118.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 146.4, 91.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 146.4, 91.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 86.7, 63.3 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 86.7, 63.3 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 27, 35.6 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 27, 35.6 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 33, 41.6 , 0 );

setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_2 + 690 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, -11 );

setBlendColor( spep_2 + 690 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 724 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--向かってくる
SE008 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--エルボー
SE010 = playSeVer2( spep_2 + 46, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 56, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 56, 1187, "", 0, 0, 0, -1);

--力込める
SE013 = playSeVer2( spep_2 + 130, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE013, 76 );
SE014 = playSeVer2( spep_2 + 146, 1004, "", 0, 0, 0, -1);

--気を溜める
SE015 = playSeVer2( spep_2 + 212, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE015, 63 );
SE016 = playSeVer2( spep_2 + 212, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE016, 133 );

--アッパー
SE017 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 284, 0, 18, -1);
SE018 = playSeVer2( spep_2 + 262, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 262, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 292, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 292, 1121, "",spep_2 + 576, 0, 218, -1);

--着地
SE022 = playSeVer2( spep_2 + 342, 1168, "", spep_2 + 342 + 47, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 342, SE022, 71 );
SE023 = playSeVer2( spep_2 + 342, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 342, SE023, 52 );
SE024 = playSeVer2( spep_2 + 352, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE024, 47 );

--マントなびく
SE025 = playSeVer2( spep_2 + 380, 1332, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_2 + 432, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE026, 65 );

--気弾発射
SE027 = playSeVer2( spep_2 + 494, 1146, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 494, 1177, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 494, 1122, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 494, 1249, "", 0, 0, 0, -1);

--気弾ヒット
SE031 = playSeVer2( spep_2 + 576, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE031, 178 );
SE032 = playSeVer2( spep_2 + 576, 1211, "",spep_2 + 732, 0, 22, -1);

--爆発
SE033 = playSeVer2( spep_2 + 708, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 708, 1067, "", 0, 0, 0, -1);

--画面遷移
SE035 = playSeVer2( spep_2 + 818, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 726 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 838F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕　衝撃波を放つピッコロ
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕　衝撃波を放つピッコロ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 25, 515.5 , 0 );
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

-- ** 音 ** --

--気が飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 138, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 237 );
setTimeStretch( SE002, 0.66, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--気が更に飛んでくる
SE005 = playSeVer2( spep_0 + 68, 1258, "",spep_0 + 138, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 69 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --128F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--瞬間移動
SE007 = playSeVer2( spep_1 + 80, 1109, "", 0, 0, 0, -1);

-------------------------------------------------
-- 敵へ接近〜フィニッシュ　KO演出まで
-------------------------------------------------
MAX_FRAME_2 = 838;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵へ接近〜フィニッシュ　KO演出まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵へ接近〜フィニッシュ　KO演出まで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 2 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 0, 1, 2.6, -224.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 2.7, -225.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 2.7, -225.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 2.7, -225.3 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 2.7, -225.3 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 2.7, -225.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 2.7, -225.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 2.7, -225.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 2.7, -225.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 2.7, -225.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 2.7, -225.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 2.7, -226.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 2.7, -226.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 2.7, -226.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 2.7, -226.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 2.7, -226.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 2.7, -226.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 2.7, -226.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 2.7, -226.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 2.7, -226.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 2.7, -226.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 2.7, -227 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 2.7, -227 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 2.7, -227.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 2.7, -227.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 2.7, -227.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 2.7, -227.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 2.7, -227.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 2.7, -227.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 2.7, -227.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 2.7, -227.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 3.1, -263.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 3.1, -263.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 3.4, -302.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 3.4, -302.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 3.9, -343.7 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 3.9, -343.7 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 4.3, -387.5 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 4.3, -387.5 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 4.3, -394.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 4.3, -394.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 4.4, -401.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 4.4, -401.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 4.3, -407.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 4.3, -407.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 4.3, -413.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 4.3, -413.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 4.4, -419.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 4.4, -419.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 4.4, -424.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 4.4, -424.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 4.4, -430 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 4.4, -430 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -169.4, 81.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -169.4, 81.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -103.9, 64.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -103.9, 64.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -109.9, 70.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -109.9, 70.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -223.5, 119.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -223.5, 119.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -223.5, 131.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -223.5, 131.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -235.5, 119.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -235.5, 119.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -129.9, 99.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -129.9, 99.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -235.5, 131.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -235.5, 131.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -223.5, 119.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -223.5, 119.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -129.9, 99.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -129.9, 99.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -185.9, 140.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -185.9, 140.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -160.9, 123.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -160.9, 123.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -117.9, 87.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -117.9, 99.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -129.9, 87.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -160.9, 123.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -160.9, 123.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -133.9, 99.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -133.9, 99.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -124.8, 103.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -124.8, 103.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -137.4, 91.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -137.4, 91.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -138.1, 103.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -138.1, 103.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -126.9, 91.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -126.9, 91.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -127.8, 103.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -127.8, 103.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -140.7, 91.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -140.7, 91.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -141.7, 103.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -141.7, 103.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -130.7, 91.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -130.7, 91.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -131.8, 103.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -131.8, 103.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -139, 98.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -139, 98.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -143.3, 101.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -143.3, 101.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -138.6, 96 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -138.6, 96 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -140.1, 102.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -140.1, 102.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -147.6, 96.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -147.6, 96.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -149.2, 103.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -149.2, 103.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.93, 2.93 );

setRotateKey( spep_2 + 0, 1, -7 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 35 );

setBlendColor( spep_2 + 78 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 82 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 102 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 255, 255, 255, 1 );
setBlendColor( spep_2 + 110 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2--

setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, -587.3, 776.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -587.3, 776.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -581.8, 768.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -581.8, 768.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -565.4, 746.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -565.4, 746.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -538.1, 708.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -538.1, 708.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -499.8, 655.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -499.8, 655.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -471.6, 616.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -471.6, 616.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -441.7, 575.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -441.7, 575.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -409.9, 531.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -409.9, 531.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -376.4, 485.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -376.4, 485.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -341, 436.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -341, 436.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -333.5, 426.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -333.5, 426.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -326.3, 416.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -326.3, 416.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -319.5, 406.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -319.5, 406.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -313, 397.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -313, 397.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -306.9, 389.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -306.9, 389.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -301.2, 381.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -301.2, 381.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -295.9, 374.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -295.9, 374.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -290.9, 367.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -290.9, 367.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -286.3, 361 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -286.3, 361 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -282.1, 355.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -282.1, 355.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -278.2, 349.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -278.2, 349.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -274.7, 344.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -274.7, 344.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -271.6, 340.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -271.6, 340.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -268.9, 336.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -268.9, 336.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -44.8, 494.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -44.8, 494.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -147.4, 456.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -147.4, 456.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -96.1, 482.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -96.1, 482.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -44.8, 505.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -44.8, 505.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -113.2, 493.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -113.2, 493.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -44.8, 601.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -44.8, 601.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -50.8, 590 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -50.8, 590 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -38.9, 1050.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -38.9, 1050.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -38.9, 1534.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -38.9, 1534.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -51, 1919.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -51, 1919.5 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 7.39, 7.39 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 7.39, 7.39 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 8.08, 8.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 8.08, 8.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.62, 4.62 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 72 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 72 );

--敵の動き3--

setDisp( spep_2 + 308 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 308 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 308 + OFFSET_X, 1, 12.2, -123.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 12.2, -123.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -1.1, -113.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -1.1, -113.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 3.7, -86.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 3.7, -86.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -3.6, -59.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -3.6, -59.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 7.3, -52 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 7.3, -52 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 6.1, -20.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 6.1, -20.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -7, -14.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -7, -14.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -1, -7.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -1, -7.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1, -7.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1, -7.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -1.1, -6.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -1.1, -6.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -1.1, -6.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -1.1, -6.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -1.1, -5.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -1.1, -5.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -1.1, -5.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -1.1, -5.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -1.1, -4.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -1.1, -4.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -1.2, -4.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -1.2, -4.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -1.2, -4.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -1.2, -4.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -1.2, -3.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -1.2, -3.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -1.2, -3.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -1.2, -3.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -1.2, -3.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -1.2, -3.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -1.2, -3.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -1.2, -3.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -1.2, -2.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -1.2, -2.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -1.2, -2.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -1.2, -2.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -1.2, -2.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -1.2, -2.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -1.3, -2.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -1.3, -2.6 , 0 );

setScaleKey( spep_2 + 308 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 308 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -22.6 );

--敵の動き4--

setDisp( spep_2 + 388 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 500 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 388 + OFFSET_X, 1, -167.5, 315.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -167.5, 315.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -173.4, 322 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -173.4, 322 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -179.2, 327.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -179.2, 327.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -185, 333.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -185, 333.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -190.7, 339.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -190.7, 339.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -196.4, 345.6 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -196.4, 345.6 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -202, 351.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -202, 351.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -207.6, 357 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -207.6, 357 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -208.6, 358 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -208.6, 358 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -209.6, 358.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -209.6, 358.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -210.5, 359.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -210.5, 359.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -211.4, 360.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -211.4, 360.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -212.3, 361.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -212.3, 361.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -213, 362.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -213, 362.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -213.8, 362.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -213.8, 362.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -214.5, 363.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -214.5, 363.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -215.1, 364.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -215.1, 364.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -215.8, 364.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -215.8, 364.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -216.3, 365.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -216.3, 365.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -216.8, 365.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -216.8, 365.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -217.3, 366.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -217.3, 366.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -217.8, 366.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -217.8, 366.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -218.2, 367 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -218.2, 367 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -218.6, 367.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -218.6, 367.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -218.9, 367.6 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -218.9, 367.6 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -219.2, 367.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -219.2, 367.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -219.4, 368.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -219.4, 368.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -219.6, 368.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -219.6, 368.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -219.8, 368.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -219.8, 368.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -220, 368.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -220, 368.6 , 0 );

setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 388 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -4.7 );

--敵の動き5--

setDisp( spep_2 + 554 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 554 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 554 + OFFSET_X, 1, -12.5, 7.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -12.5, 7.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -18.3, 10.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -18.3, 10.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -23.6, 13.2 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -23.6, 13.2 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -28.6, 15.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -28.6, 15.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -33.1, 17.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -33.1, 17.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -37.2, 19.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -37.2, 19.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -38.6, 20.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -38.6, 20.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -39.9, 21 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -39.9, 21 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -41.2, 21.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -41.2, 21.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -42.4, 22.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -42.4, 22.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -43.6, 22.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -43.6, 22.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -44.7, 23.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -44.7, 23.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -45.7, 23.7 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -45.7, 23.7 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -46.8, 24.2 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -46.8, 24.2 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -47.7, 24.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -47.7, 24.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -48.6, 25.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -48.6, 25.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -49.5, 25.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -49.5, 25.5 , 0 );

setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 2.46, 2.46 );

setRotateKey( spep_2 + 554 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, 28.9 );

--敵の動き6--

setDisp( spep_2 + 592 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 598 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 592 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 592 + OFFSET_X, 1, -22, 31.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -22, 31.1 , 0 );

setScaleKey( spep_2 + 592 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 592 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 30 );

setBlendColor( spep_2 + 592 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 + 598 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );

--敵の動き7--

setDisp( spep_2 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 644 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 600 + OFFSET_X, 1, -30, 39.3 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -30, 39.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -20.1, 29.4 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -20.1, 29.4 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -22.1, 43.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -22.1, 43.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -36.2, 33.7 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -36.2, 33.7 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -38.2, 47.8 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -38.2, 47.8 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -28.2, 37.9 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -28.2, 37.9 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -30.3, 52.1 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -30.3, 52.1 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -44.3, 42.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -44.3, 42.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -46.4, 56.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -46.4, 56.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -36.4, 46.5 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -36.4, 46.5 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -38.5, 60.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -38.5, 60.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -52.5, 50.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -52.5, 50.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -54.5, 64.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -54.5, 64.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -44.6, 55 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -44.6, 55 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -46.6, 69.1 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -46.6, 69.1 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -60.7, 59.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -60.7, 59.3 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -62.7, 73.4 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -62.7, 73.4 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -52.8, 63.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -52.8, 63.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -54.8, 77.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -54.8, 77.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -68.8, 67.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -68.8, 67.8 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -70.9, 81.9 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -70.9, 81.9 , 0 );

setRotateKey( spep_2 + 600 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 30 );

setBlendColor( spep_2 + 600 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 604 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 606 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 644 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );

--敵の動き8--

setDisp( spep_2 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 690 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 690 + OFFSET_X, 1, -743.1, 368.6 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -743.1, 368.6 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -683.4, 340.8 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -683.4, 340.8 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -623.8, 313.1 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -623.8, 313.1 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -564.1, 285.3 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, -564.1, 285.3 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -504.4, 257.6 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, -504.4, 257.6 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -444.7, 229.8 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, -444.7, 229.8 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, -385.1, 202.1 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -385.1, 202.1 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -325.4, 174.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -325.4, 174.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -265.7, 146.6 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -265.7, 146.6 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -206, 118.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -206, 118.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -146.4, 91.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -146.4, 91.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -86.7, 63.3 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -86.7, 63.3 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -27, 35.6 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -27, 35.6 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -33, 41.6 , 0 );

setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_2 + 690 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, 11 );

setBlendColor( spep_2 + 690 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 724 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--向かってくる
SE008 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--エルボー
SE010 = playSeVer2( spep_2 + 46, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 56, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 56, 1187, "", 0, 0, 0, -1);

--力込める
SE013 = playSeVer2( spep_2 + 130, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE013, 76 );
SE014 = playSeVer2( spep_2 + 146, 1004, "", 0, 0, 0, -1);

--気を溜める
SE015 = playSeVer2( spep_2 + 212, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE015, 63 );
SE016 = playSeVer2( spep_2 + 212, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE016, 133 );

--アッパー
SE017 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 284, 0, 18, -1);
SE018 = playSeVer2( spep_2 + 262, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 262, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 292, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 292, 1121, "",spep_2 + 576, 0, 218, -1);

--着地
SE022 = playSeVer2( spep_2 + 342, 1168, "", spep_2 + 342 + 47, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 342, SE022, 71 );
SE023 = playSeVer2( spep_2 + 342, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 342, SE023, 52 );
SE024 = playSeVer2( spep_2 + 352, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE024, 47 );

--マントなびく
SE025 = playSeVer2( spep_2 + 380, 1332, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_2 + 432, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE026, 65 );

--気弾発射
SE027 = playSeVer2( spep_2 + 494, 1146, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 494, 1177, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 494, 1122, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 494, 1249, "", 0, 0, 0, -1);

--気弾ヒット
SE031 = playSeVer2( spep_2 + 576, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE031, 178 );
SE032 = playSeVer2( spep_2 + 576, 1211, "",spep_2 + 732, 0, 22, -1);

--爆発
SE033 = playSeVer2( spep_2 + 708, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 708, 1067, "", 0, 0, 0, -1);

--画面遷移
SE035 = playSeVer2( spep_2 + 818, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 726 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 838F

end
