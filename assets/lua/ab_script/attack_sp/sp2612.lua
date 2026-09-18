-- 1027320: LR_超サイヤ人孫悟飯(未来)_必殺技：爆裂乱魔(簡易版)
-- sp_effect_b1_00264
-- sp2612

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162217;  -- 【簡易版】開幕構え〜突進 ef_003
SP_02 = 162218;  -- 【簡易版】突進〜飛び蹴りヒット ef_004
SP_02b = 162219;  -- 【簡易版】突進〜飛び蹴りヒット ef_004b
SP_03 = 162220;  -- 【簡易版】フィニッシュ（画面ひび割れとガッ） ef_005

-- 敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

OFFSET_X = -1

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 【簡易版】開幕構え〜突進 ef_003 (88F)
------------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );

spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 【簡易版】突進〜飛び蹴りヒット ef_004 (333F)
------------------------------------------------------
MAX_FRAME_2 = 333;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffectLife( spep_2 + 0, SP_02, 332, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2 - 5, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );
entry_SP_02b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き１
setDisp(spep_2 + 34 + OFFSET_X, 1, 1);
setDisp(spep_2 + 88 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 34 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 535.2, -532.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 508.5, -527.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 428.6, -513.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 295.2, -490.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 259.6, -481.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 220.2, -470.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 177, -459 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 164, -446.7 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 152.7, -436.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 143.1, -427.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 135.3, -419.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 129.2, -414 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 124.8, -409.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 122.2, -407.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 121.4, -406.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 121.4, -406.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 366.8, 118.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 366.8, 118.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 305, 93.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 305, 93.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 209.6, 67.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 209.6, 67.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 459.6, 101.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 459.6, 101.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 413, 84.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 413, 84.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 344, 67.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 344, 67.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 614, 58.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 614, 58.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 857.1, 76.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 857.1, 76.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 1117.9, 58.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 1117.9, 58.9 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -19.8 );

--敵の動き２
setDisp(spep_2 + 116 + OFFSET_X, 1, 1);
setDisp(spep_2 + 178 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 116 + OFFSET_X, 1, -224.5, 221.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -224.5, 221.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -223.2, 221.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -223.2, 221.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -219.2, 218.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -219.2, 218.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -212.6, 214.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -212.6, 214.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -203.3, 209.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -203.3, 209.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -191.4, 202.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -191.4, 202.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -176.7, 193.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -176.7, 193.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -136.9, 170.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -136.9, 170.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -97.1, 146.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -97.1, 146.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -57.3, 123.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -57.3, 123.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -17.5, 99.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -17.5, 99.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 22.2, 76.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 22.2, 76.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 61.9, 53.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 61.9, 53.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 105.4, 27.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 105.4, 27.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 148.9, 2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 148.9, 2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 156, -2.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 156, -2.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 163.2, -6.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 163.2, -6.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 170.4, -10.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 170.4, -10.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 101.4, -393.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 101.4, -393.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 173.3, -491.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 173.3, -491.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 143.5, -295.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 143.5, -295.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 112.2, -516 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 112.2, -516 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 129, -405.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 129, -405.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 154.4, -303.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 154.4, -303.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 137.1, -285.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 137.1, -285.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 137.6, -302.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 137.6, -302.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 156.2, -284.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 156.2, -284.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 451.2, -167 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 451.2, -167 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 593, -190.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 593, -190.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 716.8, -196.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 716.8, -196.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 849.5, -211.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 849.5, -211.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 982.3, -226.5 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 35 );

--敵の動き３
setDisp(spep_2 + 194 + OFFSET_X, 1, 1);

changeAnime( spep_2 + 194 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, -787.9, -133.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -787.9, -133.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -521.8, -125.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -521.8, -125.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -289.6, -90.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -289.6, -90.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -185.2, -99.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -185.2, -99.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -78.6, -81.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -78.6, -81.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 20.9, -81.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 20.9, -81.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 86.4, -54.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 86.4, -54.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 111.1, -63.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 111.1, -63.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 145, -45.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 145, -45.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 169.9, -36.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 169.9, -36.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 185.9, -34.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 185.9, -34.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 201.1, -32.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 201.1, -32.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 215.4, -31.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 215.4, -31.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 228.9, -29.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 228.9, -29.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 241.5, -28 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 241.5, -28 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 253.1, -26.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 253.1, -26.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 267.4, -25.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 267.4, -25.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 276, -24.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 276, -24.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 279, -23.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 279, -23.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 270.2, -23.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 270.2, -23.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 261.3, -23 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 261.3, -23 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 252.4, -22.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 252.4, -22.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 243.5, -22.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 243.5, -22.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 234.6, -22.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 234.6, -22.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 225.7, -22.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 225.7, -22.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 216.7, -22.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 216.7, -22.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 207.7, -22.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 207.7, -22.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 198.7, -22 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 198.7, -22 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 189.7, -21.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 189.7, -21.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 187.6, -21.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 187.6, -21.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 185.6, -21.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 185.6, -21.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 184, -21.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 184, -21.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 182.5, -21.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 182.5, -21.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 181.3, -21.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 181.3, -21.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 180.4, -21.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 180.4, -21.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 179.7, -21.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 179.7, -21.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 179.3, -21.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 179.3, -21.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 179.1, -21.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 179.1, -21.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 179.1, -21 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 179.1, -21 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 243.8, 53.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 243.8, 53.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 193.6, 42.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 193.6, 42.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 142.2, 30.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 142.2, 30.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 215.5, 46 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 215.5, 46 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 181.5, 38.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 181.5, 38.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 146.6, 30.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 146.6, 30.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 157.1, 21.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 157.1, 21.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 140.6, 39.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 140.6, 39.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 141.9, 21.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 141.9, 21.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 161.5, 39.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 161.5, 39.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 154, 30.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 154, 30.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 197, 21.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 197, 21.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 222.2, 30.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 222.2, 30.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 224.1, 30.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 224.1, 30.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 225.8, 30.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 225.8, 30.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 227.4, 30.7 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 227.4, 30.7 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 228.9, 30.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 228.9, 30.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 230.2, 30.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 230.2, 30.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 231.5, 30.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 231.5, 30.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 232.5, 30.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 232.5, 30.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 233.5, 30.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 233.5, 30.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 234.3, 30.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 234.3, 30.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 235.1, 30.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 235.1, 30.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 235.6, 30.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 235.6, 30.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 236.1, 30.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 236.1, 30.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 236.4, 30.7 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 236.4, 30.7 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -34.8 );

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( 88 + 88, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( 94 + 92, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SP_CUTIN, 0);
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
--敵飛んでいく
SE011 = playSeVer2( spep_2 + 82, 1121, "",spep_2 + 162, 26, 12, -1);
setSeVolumeByWorkId( spep_2 + 82, SE011, 67 );
setStartTimeMs( SE011,  567 );

--蹴りとばす
SE013 = playSeVer2( spep_2 + 66, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 66, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_2 + 86, 1183, "",spep_2 + 162, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 86, SE015, 63 );

--瞬間移動
SE016 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 138, 1109, "", 0, 0, 0, -1);

--殴りつける
SE018 = playSeVer2( spep_2 + 148, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 148, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 152, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE020, 72 );
SE021 = playSeVer2( spep_2 + 160, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 180, 1121, "",spep_2 + 294, 32, 20, -1);
setStartTimeMs( SE022,  167 );

--オーラ
SE023 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE023, 50 );
stopSeIfDoubleSpeed( spep_2 + 188, SE022 );

--手地面につく
SE024 = playSeVer2( spep_2 + 198, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE024, 162 );
SE025 = playSeVer2( spep_2 + 206, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE025, 174 );
SE026 = playSeVer2( spep_2 + 206, 1192, "",spep_2 + 228, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 206, SE026, 200 );

--オーラ
SE027 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE027, 50 );
stopSeIfDoubleSpeed( spep_2 + 212, SE026 );

--敵に向かっていく
SE028 = playSeVer2( spep_2 + 224, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 236, 1182, "",spep_2 + 298, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 236, 1117, "",spep_2 + 300, 0, 24, -1);
SE031 = playSeVer2( spep_2 + 236, 9, "",spep_2 + 300, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 236, SE031, 79 );

--蹴り
SE032 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 276, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE034 = playSeVer2( spep_2 + 296, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE034, 71 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 333

------------------------------------------------------
-- 【簡易版】フィニッシュ（画面ひび割れとガッ） ef_005 (112F)
------------------------------------------------------
MAX_FRAME_3 = 112;

-- ** エフェクト等 ** --
entry_SP_03 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, entry_SP_03, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, entry_SP_03, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, entry_SP_03, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, entry_SP_03, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, entry_SP_03, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, entry_SP_03, 0 );
setEffAlphaKey( spep_3 + 0, entry_SP_03, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, entry_SP_03, 255 );

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );
 
-- ** 爆発 ** --
--[[bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );]]
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );
 
-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );
 
changeAnime( spep_3 + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_3 -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_3 -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_3 -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_3 -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_3 -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -1 + 4, 1, -1 );
setRotateKey( spep_3 -1 + 6, 1, 120.7 );
setRotateKey( spep_3 -1 + 8, 1, 242.5 );
setRotateKey( spep_3 -1 + 10, 1, 364.3 );
setRotateKey( spep_3 -1 + 12, 1, 486 );
setRotateKey( spep_3 -1 + 14, 1, 607.8 );
setRotateKey( spep_3 -1 + 16, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );
 
-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_3 + 6 );
endPhase( spep_3 +  MAX_FRAME_3 - 4 );  -- 112

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 【簡易版】開幕構え〜突進 ef_003 (88F)
------------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );

spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 450.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 450.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 【簡易版】突進〜飛び蹴りヒット ef_004 (333F)
------------------------------------------------------
MAX_FRAME_2 = 333;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffectLife( spep_2 + 0, SP_02, 332, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2 - 5, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );
entry_SP_02b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き１
setDisp(spep_2 + 34 + OFFSET_X, 1, 1);
setDisp(spep_2 + 88 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 34 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, -535.2, -532.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -508.5, -527.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -428.6, -513.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -295.2, -490.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -259.6, -481.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -220.2, -470.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -177, -459 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -164, -446.7 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -152.7, -436.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -143.1, -427.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -135.3, -419.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -129.2, -414 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -124.8, -409.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -122.2, -407.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -121.4, -406.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -121.4, -406.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -366.8, 118.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -366.8, 118.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -305, 93.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -305, 93.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -209.6, 67.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -209.6, 67.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -459.6, 101.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -459.6, 101.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -413, 84.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -413, 84.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -344, 67.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -344, 67.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -614, 58.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -614, 58.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -857.1, 76.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -857.1, 76.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -1117.9, 58.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -1117.9, 58.9 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 19.8 );

--敵の動き２
setDisp(spep_2 + 116 + OFFSET_X, 1, 1);
setDisp(spep_2 + 178 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 152 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 116 + OFFSET_X, 1, 224.5, 221.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 224.5, 221.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 223.2, 221.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 223.2, 221.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 219.2, 218.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 219.2, 218.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 212.6, 214.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 212.6, 214.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 203.3, 209.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 203.3, 209.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 191.4, 202.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 191.4, 202.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 176.7, 193.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 176.7, 193.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 136.9, 170.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 136.9, 170.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 97.1, 146.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 97.1, 146.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 57.3, 123.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 57.3, 123.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 17.5, 99.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 17.5, 99.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -22.2, 76.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -22.2, 76.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -61.9, 53.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -61.9, 53.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -105.4, 27.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -105.4, 27.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -148.9, 2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -148.9, 2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -156, -2.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -156, -2.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -163.2, -6.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -163.2, -6.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -170.4, -10.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -170.4, -10.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -101.4, -393.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -101.4, -393.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -173.3, -491.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -173.3, -491.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -143.5, -295.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -143.5, -295.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -112.2, -516 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -112.2, -516 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -129, -405.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -129, -405.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -154.4, -303.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -154.4, -303.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -137.1, -285.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -137.1, -285.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -137.6, -302.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -137.6, -302.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -156.2, -284.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -156.2, -284.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -451.2, -167 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -451.2, -167 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -593, -190.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -593, -190.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -716.8, -196.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -716.8, -196.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -849.5, -211.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -849.5, -211.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -982.3, -226.5 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -35 );

--敵の動き３
setDisp(spep_2 + 194 + OFFSET_X, 1, 1);

changeAnime( spep_2 + 194 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, 787.9, -133.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 787.9, -133.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 521.8, -125.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 521.8, -125.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 289.6, -90.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 289.6, -90.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 185.2, -99.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 185.2, -99.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 78.6, -81.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 78.6, -81.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -20.9, -81.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -20.9, -81.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -86.4, -54.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -86.4, -54.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -111.1, -63.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -111.1, -63.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -145, -45.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -145, -45.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -169.9, -36.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -169.9, -36.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -185.9, -34.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -185.9, -34.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -201.1, -32.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -201.1, -32.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -215.4, -31.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -215.4, -31.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -228.9, -29.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -228.9, -29.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -241.5, -28 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -241.5, -28 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -253.1, -26.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -253.1, -26.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -267.4, -25.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -267.4, -25.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -276, -24.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -276, -24.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -279, -23.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -279, -23.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -270.2, -23.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -270.2, -23.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -261.3, -23 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -261.3, -23 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -252.4, -22.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -252.4, -22.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -243.5, -22.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -243.5, -22.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -234.6, -22.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -234.6, -22.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -225.7, -22.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -225.7, -22.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -216.7, -22.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -216.7, -22.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -207.7, -22.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -207.7, -22.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -198.7, -22 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -198.7, -22 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -189.7, -21.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -189.7, -21.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -187.6, -21.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -187.6, -21.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -185.6, -21.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -185.6, -21.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -184, -21.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -184, -21.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -182.5, -21.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -182.5, -21.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -181.3, -21.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -181.3, -21.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -180.4, -21.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -180.4, -21.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -179.7, -21.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -179.7, -21.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -179.3, -21.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -179.3, -21.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -179.1, -21.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -179.1, -21.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -179.1, -21 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -179.1, -21 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -243.8, 53.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -243.8, 53.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -193.6, 42.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -193.6, 42.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -142.2, 30.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -142.2, 30.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -215.5, 46 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -215.5, 46 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -181.5, 38.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -181.5, 38.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -146.6, 30.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -146.6, 30.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -157.1, 21.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -157.1, 21.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -140.6, 39.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -140.6, 39.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -141.9, 21.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -141.9, 21.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -161.5, 39.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -161.5, 39.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -154, 30.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -154, 30.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -197, 21.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -197, 21.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -222.2, 30.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -222.2, 30.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -224.1, 30.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -224.1, 30.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -225.8, 30.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -225.8, 30.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -227.4, 30.7 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -227.4, 30.7 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -228.9, 30.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -228.9, 30.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -230.2, 30.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -230.2, 30.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -231.5, 30.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -231.5, 30.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -232.5, 30.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -232.5, 30.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -233.5, 30.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -233.5, 30.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -234.3, 30.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -234.3, 30.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -235.1, 30.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -235.1, 30.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -235.6, 30.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -235.6, 30.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -236.1, 30.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -236.1, 30.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -236.4, 30.7 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -236.4, 30.7 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 34.8 );

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( 88 + 88, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( 94 + 92, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SP_CUTIN, 0);
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
--敵飛んでいく
SE011 = playSeVer2( spep_2 + 82, 1121, "",spep_2 + 162, 26, 12, -1);
setSeVolumeByWorkId( spep_2 + 82, SE011, 67 );
setStartTimeMs( SE011,  567 );

--蹴りとばす
SE013 = playSeVer2( spep_2 + 66, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 66, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_2 + 86, 1183, "",spep_2 + 162, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 86, SE015, 63 );

--瞬間移動
SE016 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 138, 1109, "", 0, 0, 0, -1);

--殴りつける
SE018 = playSeVer2( spep_2 + 148, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 148, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 152, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE020, 72 );
SE021 = playSeVer2( spep_2 + 160, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 180, 1121, "",spep_2 + 294, 32, 20, -1);
setStartTimeMs( SE022,  167 );

--オーラ
SE023 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE023, 50 );
stopSeIfDoubleSpeed( spep_2 + 188, SE022 );

--手地面につく
SE024 = playSeVer2( spep_2 + 198, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE024, 162 );
SE025 = playSeVer2( spep_2 + 206, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE025, 174 );
SE026 = playSeVer2( spep_2 + 206, 1192, "",spep_2 + 228, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 206, SE026, 200 );

--オーラ
SE027 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE027, 50 );
stopSeIfDoubleSpeed( spep_2 + 212, SE026 );

--敵に向かっていく
SE028 = playSeVer2( spep_2 + 224, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 236, 1182, "",spep_2 + 298, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 236, 1117, "",spep_2 + 300, 0, 24, -1);
SE031 = playSeVer2( spep_2 + 236, 9, "",spep_2 + 300, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 236, SE031, 79 );

--蹴り
SE032 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 276, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE034 = playSeVer2( spep_2 + 296, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE034, 71 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 333

------------------------------------------------------
-- 【簡易版】フィニッシュ（画面ひび割れとガッ） ef_005 (112F)
------------------------------------------------------
MAX_FRAME_3 = 112;

-- ** エフェクト等 ** --
entry_SP_03 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, entry_SP_03, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, entry_SP_03, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, entry_SP_03, -1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, entry_SP_03, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, entry_SP_03, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, entry_SP_03, 0 );
setEffAlphaKey( spep_3 + 0, entry_SP_03, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, entry_SP_03, 255 );

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );
 
-- ** 爆発 ** --
--[[bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );]]
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );
 
-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );
changeAnime( spep_3 + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_3 + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_3 -1 + 4, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_3 -1 + 6, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_3 -1 + 8, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_3 -1 + 10, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_3 -1 + 12, 1, 28.8, -46 , 0 );
setMoveKey( spep_3 -1 + 14, 1, 32.3, -52 , 0 );
setMoveKey( spep_3 -1 + 16, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 18, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 20, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 22, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 24, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 26, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 28, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 -1 + 30, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 -1 + 32, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_3 -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_3 -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_3 -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_3 -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_3 -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_3 -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_3 -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, 354.8 );
setRotateKey( spep_3 + 2, 1, 122.8 );
setRotateKey( spep_3 -1 + 4, 1, 1 );
setRotateKey( spep_3 -1 + 6, 1, -120.7 );
setRotateKey( spep_3 -1 + 8, 1, -242.5 );
setRotateKey( spep_3 -1 + 10, 1, -364.3 );
setRotateKey( spep_3 -1 + 12, 1, -486 );
setRotateKey( spep_3 -1 + 14, 1, -607.8 );
setRotateKey( spep_3 -1 + 16, 1, -729.5 );
setRotateKey( spep_3 + 112, 1, -729.5 );
 
-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_3 + 6 );
endPhase( spep_3 +  MAX_FRAME_3 - 4 );  -- 112
end
