--1029570:UR_ベジータ_必殺技：ファイナルギャリックキャノン
--sp_effect_b1_00297
--sp2760

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163181; --開始～敵はたき落とし（手前） ef_001
SP_01b = 163182; --開始～敵はたき落とし（奥） ef_001b
SP_02  = 163183; --裏へ回り込み～フィニッシュ（手前） ef_002
SP_02b = 163184; --裏へ回り込み～フィニッシュ（奥） ef_002b

--エフェクト(敵)
SP_01r  = 163185; --開始～敵はたき落とし（手前） ef_001r
SP_01br = 163186; --開始～敵はたき落とし（奥） ef_001br
SP_02r  = 163187; --裏へ回り込み～フィニッシュ（手前） ef_002r
SP_02br = 163188; --裏へ回り込み～フィニッシュ（奥） ef_002br

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
-- 開始～敵はたき落とし
-------------------------------------------------
MAX_FRAME_0 = 290;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～敵はたき落とし（手前）(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- -開始～敵はたき落とし（奥）(ef_001b)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 0, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 145.9, -153.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 145.9, -153.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 147, -153.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 147, -153.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 148, -153.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 148, -153.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 149.1, -153.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 149.1, -153.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 150.2, -153.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 150.2, -153.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 151.3, -153.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 151.3, -153.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 152.3, -153.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 152.3, -153.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 153.4, -153.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 153.4, -153.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 154.5, -153.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 154.5, -153.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 155.6, -153.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 155.6, -153.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 156.6, -153.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 156.6, -153.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 157.7, -153.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 157.7, -153.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 158.8, -153.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 158.8, -153.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 159.9, -153.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 159.9, -153.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 161, -153.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 161, -153.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 162, -153.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 162, -153.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 163.1, -153.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 163.1, -153.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 164.2, -153.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 164.2, -153.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 165.3, -153.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 165.3, -153.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 166.3, -153.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 166.3, -153.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 167.4, -153.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 167.4, -153.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 168.5, -153.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 168.5, -153.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 169.6, -153.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 169.6, -153.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 170.6, -153.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 170.6, -153.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 171.7, -153.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 171.7, -153.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 172.8, -153.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 172.8, -153.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 173.9, -153.1 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 173.9, -153.1 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 174.9, -153.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 174.9, -153.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 176.1, -153 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 176.1, -153 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 16.9, -39.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 16.9, -39.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 19.4, -36.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 19.4, -36.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 22.7, -32.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 22.7, -32.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 26.7, -27.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 26.7, -27.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 31.5, -21.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 31.5, -21.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 37.2, -14.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 37.2, -14.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 43.8, -6.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 43.8, -6.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 51.5, 2.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 51.5, 2.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 60.2, 13.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 60.2, 13.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 51.1, 17.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 51.1, 17.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 15.4, -14.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 15.4, -14.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 58.2, -2.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 58.2, -2.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 33.2, 23.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 33.2, 23.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 50.5, 23.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 50.5, 23.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 39.8, 12.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 39.8, 12.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 50.8, 16.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 50.8, 16.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 45.8, 24.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 45.8, 24.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 51.6, 25 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 51.6, 25 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 47.3, 20.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 47.3, 20.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 59, 25.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 59, 25.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 55.1, 34.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 55.1, 34.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 62.3, 36 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 62.3, 36 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 65.9, 39.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 65.9, 39.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 50.7, 56.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 50.7, 56.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 73.2, 112.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 73.2, 112.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 98.9, 170.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 98.9, 170.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 136.1, 236.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 136.1, 236.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 185.1, 311.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 185.1, 311.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 245.6, 395.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 245.6, 395.7 , 0 );

setScaleKey( spep_0 + 0, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.02, 3.02 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -40.9 );


--敵の動き２
setDisp( spep_0 + 182 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 182 + OFFSET_X, 1, -1241, -1435.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -1241, -1435.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -1148.4, -1349.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -1148.4, -1349.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -1057.7, -1265.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -1057.7, -1265.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -969, -1182.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -969, -1182.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -882.1, -1102 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -882.1, -1102 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -797.2, -1023.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -797.2, -1023.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -714.1, -946 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -714.1, -946 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -633, -870.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -633, -870.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -553.8, -797 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -553.8, -797 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -476.5, -725.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -476.5, -725.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -401.1, -655.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -401.1, -655.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -327.6, -586.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -327.6, -586.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -256.1, -520.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -256.1, -520.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -186.4, -455.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -186.4, -455.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -118.7, -392.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -118.7, -392.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -52.8, -331.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -52.8, -331.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 11.1, -271.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 11.1, -271.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 105.4, -134.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 105.4, -134.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 138.5, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 138.5, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 100.2, -165.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 100.2, -165.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 122.5, -151.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 122.5, -151.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 96.6, -122.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 96.6, -122.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 109.8, -115.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 109.8, -115.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 83, -131.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 83, -131.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 93, -122.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 93, -122.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 73.5, -100.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 73.5, -100.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 77.3, -95 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 77.3, -95 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 63, -94.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 63, -94.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 57.2, -84.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 57.2, -84.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 47.5, -75.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 47.5, -75.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 56.3, -76.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 56.3, -76.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 49.8, -86.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 49.8, -86.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 110.6, -104.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 110.6, -104.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 169.2, -140.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 169.2, -140.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 212.7, -163.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 212.7, -163.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 240.4, -173.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 240.4, -173.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 248.1, -165.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 248.1, -165.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 238.7, -142.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 238.7, -142.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 205.3, -102.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 205.3, -102.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 151.2, -41.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 151.2, -41.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 155.1, -43.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 155.1, -43.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 161.9, -47.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 161.9, -47.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 164.4, -51.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 164.4, -51.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 168.4, -54.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 168.4, -54.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 169.1, -54.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 169.1, -54.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 172.1, -56.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 172.1, -56.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 172.2, -58.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 172.2, -58.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 174.6, -59.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 174.6, -59.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 174.2, -58.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 174.2, -58.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 176.3, -59.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 176.3, -59.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 175.8, -61.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 175.8, -61.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 177.6, -62 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 177.6, -62 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 176.8, -61 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 176.8, -61 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 178.6, -61.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 178.6, -61.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 177.7, -62.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 177.7, -62.9 , 0 );

setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.52, 1.52 );

setRotateKey( spep_0 + 182 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 49.9 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 316, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 192, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 88, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 126; --エンドフェイズのフレーム数を置き換える
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 14, SE004, 0);
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
SE005 = playSeVer2( spep_0 + 130, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1153, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 136, 1110, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE008 = playSeVer2( spep_0 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 60 );

--瞬間移動
SE009 = playSeVer2( spep_0 + 176, 1109, "", 0, 0, 0, -1);

--蹴り落とす
SE010 = playSeVer2( spep_0 + 206, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 210, 1123, "",spep_0 + 260, 0, 32, -1);
SE012 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 312, 0, 14, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 232, 1121, "",spep_0 + 316, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 232, SE013, 52 );
SE014 = playSeVer2( spep_0 + 232, 1183, "",spep_0 + 314, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 232, SE014, 73 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 290f

-- ** 音 ** --
--敵飛んでくる
SE016 = playSeVer2( spep_1 + 74, 1183, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE016, 71 );
setStartTimeMs( SE016,  800 );

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 裏へ回り込み～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 516;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 裏へ回り込み～フィニッシュ（手前）(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 裏へ回り込み～フィニッシュ（奥）(ef_002b)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, -635, -805.4 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, -635, -805.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -547.6, -707.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -547.6, -707.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -481.1, -633.7 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -481.1, -633.7 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -431.8, -578.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -431.8, -578.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -394.5, -536.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -394.5, -536.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -365.4, -504.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -365.4, -504.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -342.1, -477.8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -342.1, -477.8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -323, -456.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -323, -456.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -307.1, -438.3 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -307.1, -438.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -293.5, -422.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -293.5, -422.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -281.9, -409.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -281.9, -409.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -271.9, -398.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -271.9, -398.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -263.1, -388.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -263.1, -388.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -255.3, -379.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -255.3, -379.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -248.4, -371.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -248.4, -371.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -242.3, -364.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -242.3, -364.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -236.9, -357.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -236.9, -357.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -231.9, -352.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -231.9, -352.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -227.5, -346.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -227.5, -346.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -223.5, -342.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -223.5, -342.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -219.9, -337.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -219.9, -337.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -216.7, -333.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -216.7, -333.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -213.7, -330.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -213.7, -330.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -211, -327 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -211, -327 , 0 );

setScaleKey( spep_2 + 0, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 6.98, 6.98 );

setRotateKey( spep_2 + 0, 1, 75.3 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 75.3 );


--敵の動２
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -127.5, -17.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -127.5, -17.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -158.6, 12.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -158.6, 12.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -82.8, -59 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -82.8, -59 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -98.7, 18.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -98.7, 18.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -158, -44.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -158, -44.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -152.4, 5.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -152.4, 5.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -113.1, -31.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -113.1, -31.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -116.5, 3.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -116.5, 3.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -144.8, -28.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -144.8, -28.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -144, -1.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -144, -1.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -119.8, -24.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -119.8, -24.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -125.2, -0.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -125.2, -0.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -141.2, -19.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -141.2, -19.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -141.7, -4.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -141.7, -4.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -128.2, -18.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -128.2, -18.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -131.3, -5.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -131.3, -5.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -139, -13.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -139, -13.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -139, -6.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -139, -6.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -134.4, -11.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -134.4, -11.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -135.7, -7.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -135.7, -7.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -138.1, -9.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -138.1, -9.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -138.4, -7.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -138.4, -7.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -137.2, -8.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -137.2, -8.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -137.5, -7.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -137.5, -7.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -138.9, -8.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -138.9, -8.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -139, -7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -139, -7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -137.7, -8.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -137.7, -8.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -137.9, -6.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -137.9, -6.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -139.2, -8.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -139.2, -8.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -139.2, -6.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -139.2, -6.8 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 15.5 );


--敵の動き３
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 296 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, -5, -201.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -5, -201.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -4.8, -191.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -4.8, -191.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -4.8, -188.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -4.8, -188.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -4.9, -186.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -4.9, -186.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -5.1, -185.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -5.1, -185.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -33.7, -159 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -33.7, -159 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 23.5, -218.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 23.5, -218.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 17.8, -159 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 17.8, -159 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -22.2, -206.7 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -22.2, -206.7 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -45.8, -141.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -45.8, -141.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 29.5, -218.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 29.5, -218.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 28.8, -140.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 28.8, -140.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -28.2, -210.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -28.2, -210.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -6, -188.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -6, -188.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1.4, -186.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1.4, -186.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -2.3, -179.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -2.3, -179.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -8.2, -184.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -8.2, -184.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -7.8, -180.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -7.8, -180.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -4, -183.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -4, -183.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -3.5, -179.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -3.5, -179.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -7.1, -183.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -7.1, -183.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -7.3, -180.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -7.3, -180.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -3.8, -183.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -3.8, -183.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -4.3, -180 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -4.3, -180 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -6.8, -183.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -6.8, -183.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -7, -180.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -7, -180.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -4.5, -182.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -4.5, -182.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -4.2, -180.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -4.2, -180.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -6.5, -182.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -6.5, -182.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -7.4, -179.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -7.4, -179.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -4.4, -182.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -4.4, -182.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -4.4, -179.6 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -4.4, -179.6 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -7.1, -182.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -7.1, -182.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -7.4, -179.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -7.4, -179.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -4.4, -182.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -4.4, -182.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -4.4, -179.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -4.4, -179.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -7.1, -182.3 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -7.1, -182.3 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -7.5, -179 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -7.5, -179 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -4.4, -182.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -4.4, -182.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -4.4, -179.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -4.4, -179.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -7.2, -182.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -7.2, -182.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -7.5, -179 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -7.5, -179 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -4.5, -182 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -4.5, -182 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -4.5, -179.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -4.5, -179.3 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 14.5 );


-- ** 音 ** --
--瞬間移動
SE017 = playSeVer2( spep_2 + 8, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 36, 1278, "",spep_2 + 200, 0, 100, -1);
SE019 = playSeVer2( spep_2 + 58, 1314, "",spep_2 + 172, 0, 44, -1);
SE020 = playSeVer2( spep_2 + 58, 1116, "",spep_2 + 100, 0, 16, -1);

--腹パン
SE021 = playSeVer2( spep_2 + 140, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 158, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 158, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE023, 84 );
SE024 = playSeVer2( spep_2 + 158, 1120, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_2 + 214, 1232, "", 0, 0, 0, -1);

--気弾溜め
SE026 = playSeVer2( spep_2 + 232, 1334, "",spep_2 + 352, 0, 34, -1);
SE027 = playSeVer2( spep_2 + 232, 1356, "",spep_2 + 352, 0, 36, -1);
SE028 = playSeVer2( spep_2 + 232, 1281, "",spep_2 + 350, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 232, SE028, 89 );
SE029 = playSeVer2( spep_2 + 232, 1282, "",spep_2 + 350, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 232, SE029, 82 );

--気弾爆発
SE030 = playSeVer2( spep_2 + 304, 1145, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);

--環境音
SE032 = playSeVer2( spep_2 + 350, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE032, 25 );

--画面遷移
SE033 = playSeVer2( spep_2 + 376, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 412); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 516f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～敵はたき落とし
-------------------------------------------------
MAX_FRAME_0 = 290;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始～敵はたき落とし（手前）(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- -開始～敵はたき落とし（奥）(ef_001br)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 0, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 143.8, -153 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 144.8, -153.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 145.9, -153.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 145.9, -153.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 147, -153.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 147, -153.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 148, -153.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 148, -153.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 149.1, -153.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 149.1, -153.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 150.2, -153.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 150.2, -153.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 151.3, -153.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 151.3, -153.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 152.3, -153.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 152.3, -153.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 153.4, -153.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 153.4, -153.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 154.5, -153.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 154.5, -153.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 155.6, -153.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 155.6, -153.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 156.6, -153.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 156.6, -153.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 157.7, -153.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 157.7, -153.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 158.8, -153.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 158.8, -153.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 159.9, -153.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 159.9, -153.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 161, -153.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 161, -153.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 162, -153.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 162, -153.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 163.1, -153.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 163.1, -153.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 164.2, -153.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 164.2, -153.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 165.3, -153.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 165.3, -153.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 166.3, -153.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 166.3, -153.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 167.4, -153.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 167.4, -153.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 168.5, -153.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 168.5, -153.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 169.6, -153.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 169.6, -153.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 170.6, -153.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 170.6, -153.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 171.7, -153.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 171.7, -153.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 172.8, -153.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 172.8, -153.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 173.9, -153.1 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 173.9, -153.1 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 174.9, -153.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 174.9, -153.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 176.1, -153 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 176.1, -153 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 16.9, -39.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 16.9, -39.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 19.4, -36.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 19.4, -36.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 22.7, -32.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 22.7, -32.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 26.7, -27.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 26.7, -27.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 31.5, -21.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 31.5, -21.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 37.2, -14.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 37.2, -14.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 43.8, -6.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 43.8, -6.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 51.5, 2.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 51.5, 2.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 60.2, 13.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 60.2, 13.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 51.1, 17.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 51.1, 17.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 15.4, -14.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 15.4, -14.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 58.2, -2.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 58.2, -2.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 33.2, 23.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 33.2, 23.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 50.5, 23.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 50.5, 23.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 39.8, 12.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 39.8, 12.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 50.8, 16.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 50.8, 16.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 45.8, 24.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 45.8, 24.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 51.6, 25 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 51.6, 25 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 47.3, 20.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 47.3, 20.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 59, 25.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 59, 25.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 55.1, 34.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 55.1, 34.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 62.3, 36 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 62.3, 36 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 65.9, 39.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 65.9, 39.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 50.7, 56.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 50.7, 56.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 73.2, 112.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 73.2, 112.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 98.9, 170.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 98.9, 170.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 136.1, 236.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 136.1, 236.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 185.1, 311.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 185.1, 311.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 245.6, 395.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 245.6, 395.7 , 0 );

setScaleKey( spep_0 + 0, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.02, 3.02 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -40.9 );


--敵の動き２
setDisp( spep_0 + 182 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 182 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 182 + OFFSET_X, 1, 1241, -1435.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 1241, -1435.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 1148.4, -1349.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 1148.4, -1349.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 1057.7, -1265.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 1057.7, -1265.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 969, -1182.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 969, -1182.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 882.1, -1102 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 882.1, -1102 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 797.2, -1023.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 797.2, -1023.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 714.1, -946 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 714.1, -946 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 633, -870.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 633, -870.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 553.8, -797 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 553.8, -797 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 476.5, -725.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 476.5, -725.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 401.1, -655.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 401.1, -655.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 327.6, -586.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 327.6, -586.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 256.1, -520.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 256.1, -520.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 186.4, -455.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 186.4, -455.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 118.7, -392.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 118.7, -392.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 52.8, -331.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 52.8, -331.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -11.1, -271.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -11.1, -271.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -105.4, -134.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -105.4, -134.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -138.5, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -138.5, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -100.2, -165.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -100.2, -165.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -122.5, -151.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -122.5, -151.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -96.6, -122.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -96.6, -122.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -109.8, -115.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -109.8, -115.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -83, -131.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -83, -131.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -93, -122.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -93, -122.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -73.5, -100.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -73.5, -100.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -77.3, -95 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -77.3, -95 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -63, -94.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -63, -94.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -57.2, -84.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -57.2, -84.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -47.5, -75.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -47.5, -75.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -56.3, -76.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -56.3, -76.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -49.8, -86.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -49.8, -86.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -110.6, -104.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -110.6, -104.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -169.2, -140.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -169.2, -140.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -212.7, -163.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -212.7, -163.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -240.4, -173.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -240.4, -173.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -248.1, -165.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -248.1, -165.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -238.7, -142.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -238.7, -142.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -205.3, -102.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -205.3, -102.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -151.2, -41.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -151.2, -41.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -155.1, -43.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -155.1, -43.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -161.9, -47.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -161.9, -47.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -164.4, -51.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -164.4, -51.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -168.4, -54.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -168.4, -54.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -169.1, -54.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -169.1, -54.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -172.1, -56.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -172.1, -56.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -172.2, -58.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -172.2, -58.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -174.6, -59.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -174.6, -59.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -174.2, -58.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -174.2, -58.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -176.3, -59.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -176.3, -59.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -175.8, -61.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -175.8, -61.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -177.6, -62 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -177.6, -62 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -176.8, -61 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -176.8, -61 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -178.6, -61.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -178.6, -61.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -177.7, -62.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -177.7, -62.9 , 0 );

setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.52, 1.52 );

setRotateKey( spep_0 + 182 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -49.9 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 316, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 192, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 88, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 126; --エンドフェイズのフレーム数を置き換える
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 14, SE004, 0);
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
SE005 = playSeVer2( spep_0 + 130, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1153, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 136, 1110, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE008 = playSeVer2( spep_0 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 60 );

--瞬間移動
SE009 = playSeVer2( spep_0 + 176, 1109, "", 0, 0, 0, -1);

--蹴り落とす
SE010 = playSeVer2( spep_0 + 206, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 210, 1123, "",spep_0 + 260, 0, 32, -1);
SE012 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 312, 0, 14, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 232, 1121, "",spep_0 + 316, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 232, SE013, 52 );
SE014 = playSeVer2( spep_0 + 232, 1183, "",spep_0 + 314, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 232, SE014, 73 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 290f

-- ** 音 ** --
--敵飛んでくる
SE016 = playSeVer2( spep_1 + 74, 1183, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE016, 71 );
setStartTimeMs( SE016,  800 );

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 裏へ回り込み～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 516;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 裏へ回り込み～フィニッシュ（手前）(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 裏へ回り込み～フィニッシュ（奥）(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 635, -805.4 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, 635, -805.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 547.6, -707.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 547.6, -707.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 481.1, -633.7 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 481.1, -633.7 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 431.8, -578.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 431.8, -578.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 394.5, -536.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 394.5, -536.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 365.4, -504.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 365.4, -504.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 342.1, -477.8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 342.1, -477.8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 323, -456.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 323, -456.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 307.1, -438.3 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 307.1, -438.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 293.5, -422.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 293.5, -422.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 281.9, -409.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 281.9, -409.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 271.9, -398.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 271.9, -398.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 263.1, -388.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 263.1, -388.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 255.3, -379.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 255.3, -379.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 248.4, -371.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 248.4, -371.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 242.3, -364.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 242.3, -364.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 236.9, -357.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 236.9, -357.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 231.9, -352.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 231.9, -352.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 227.5, -346.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 227.5, -346.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 223.5, -342.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 223.5, -342.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 219.9, -337.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 219.9, -337.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 216.7, -333.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 216.7, -333.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 213.7, -330.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 213.7, -330.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 211, -327 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 211, -327 , 0 );

setScaleKey( spep_2 + 0, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 6.98, 6.98 );

setRotateKey( spep_2 + 0, 1, -75.3 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -75.3 );


--敵の動２
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, 127.5, -17.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 127.5, -17.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 158.6, 12.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 158.6, 12.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 82.8, -59 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 82.8, -59 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 98.7, 18.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 98.7, 18.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 158, -44.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 158, -44.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 152.4, 5.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 152.4, 5.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 113.1, -31.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 113.1, -31.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 116.5, 3.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 116.5, 3.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 144.8, -28.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 144.8, -28.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 144, -1.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 144, -1.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 119.8, -24.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 119.8, -24.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 125.2, -0.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 125.2, -0.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 141.2, -19.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 141.2, -19.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 141.7, -4.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 141.7, -4.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 128.2, -18.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 128.2, -18.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 131.3, -5.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 131.3, -5.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 139, -13.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 139, -13.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 139, -6.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 139, -6.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 134.4, -11.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 134.4, -11.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 135.7, -7.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 135.7, -7.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 138.1, -9.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 138.1, -9.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 138.4, -7.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 138.4, -7.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 137.2, -8.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 137.2, -8.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 137.5, -7.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 137.5, -7.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 138.9, -8.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 138.9, -8.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 139, -7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 139, -7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 137.7, -8.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 137.7, -8.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 137.9, -6.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 137.9, -6.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 139.2, -8.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 139.2, -8.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 139.2, -6.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 139.2, -6.8 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -15.5 );


--敵の動き３
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, 5, -201.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 5, -201.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 4.8, -191.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 4.8, -191.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 4.8, -188.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 4.8, -188.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 4.9, -186.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 4.9, -186.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 5.1, -185.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 5.1, -185.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 33.7, -159 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 33.7, -159 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -23.5, -218.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -23.5, -218.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -17.8, -159 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -17.8, -159 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 22.2, -206.7 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 22.2, -206.7 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 45.8, -141.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 45.8, -141.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -29.5, -218.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -29.5, -218.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -28.8, -140.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -28.8, -140.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 28.2, -210.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 28.2, -210.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 6, -188.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 6, -188.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 1.4, -186.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 1.4, -186.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 2.3, -179.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 2.3, -179.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 8.2, -184.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 8.2, -184.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 7.8, -180.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 7.8, -180.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 4, -183.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 4, -183.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 3.5, -179.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 3.5, -179.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 7.1, -183.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 7.1, -183.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 7.3, -180.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 7.3, -180.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 3.8, -183.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 3.8, -183.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 4.3, -180 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 4.3, -180 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 6.8, -183.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 6.8, -183.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 7, -180.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 7, -180.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 4.5, -182.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 4.5, -182.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 4.2, -180.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 4.2, -180.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 6.5, -182.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 6.5, -182.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 7.4, -179.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 7.4, -179.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 4.4, -182.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 4.4, -182.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 4.4, -179.6 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 4.4, -179.6 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 7.1, -182.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 7.1, -182.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.4, -179.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.4, -179.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 4.4, -182.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 4.4, -182.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 4.4, -179.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 4.4, -179.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 7.1, -182.3 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 7.1, -182.3 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 7.5, -179 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 7.5, -179 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 4.4, -182.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 4.4, -182.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 4.4, -179.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 4.4, -179.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 7.2, -182.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 7.2, -182.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 7.5, -179 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 7.5, -179 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 4.5, -182 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 4.5, -182 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 4.5, -179.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 4.5, -179.3 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -14.5 );


-- ** 音 ** --
--瞬間移動
SE017 = playSeVer2( spep_2 + 8, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 36, 1278, "",spep_2 + 200, 0, 100, -1);
SE019 = playSeVer2( spep_2 + 58, 1314, "",spep_2 + 172, 0, 44, -1);
SE020 = playSeVer2( spep_2 + 58, 1116, "",spep_2 + 100, 0, 16, -1);

--腹パン
SE021 = playSeVer2( spep_2 + 140, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 158, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 158, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE023, 84 );
SE024 = playSeVer2( spep_2 + 158, 1120, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_2 + 214, 1232, "", 0, 0, 0, -1);

--気弾溜め
SE026 = playSeVer2( spep_2 + 232, 1334, "",spep_2 + 352, 0, 34, -1);
SE027 = playSeVer2( spep_2 + 232, 1356, "",spep_2 + 352, 0, 36, -1);
SE028 = playSeVer2( spep_2 + 232, 1281, "",spep_2 + 350, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 232, SE028, 89 );
SE029 = playSeVer2( spep_2 + 232, 1282, "",spep_2 + 350, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 232, SE029, 82 );

--気弾爆発
SE030 = playSeVer2( spep_2 + 304, 1145, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);

--環境音
SE032 = playSeVer2( spep_2 + 350, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE032, 25 );

--画面遷移
SE033 = playSeVer2( spep_2 + 376, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 412); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 516f -4f

end