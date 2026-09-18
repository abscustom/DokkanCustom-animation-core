--1029050:LR_孫悟空(身勝手の極意“兆”)_超必殺技：かめはめ波
--sp_effect_a1_00444
--sp2732

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163025;  --ef_001  冒頭～格闘まで・手前
SP_01b = 163026;  --ef_001b 冒頭～格闘まで・奥
SP_02  = 163027;  --ef_002  かめはめ波～ラスト

--エフェクト(敵)
SP_01r  = 163028;  --ef_001_r  敵用：冒頭～格闘まで・手前
SP_01br = 163029;  --ef_001b_r 敵用：冒頭～格闘まで・奥
SP_02r  = 163030;  --ef_002_r  敵用：かめはめ波～ラスト



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
-- 冒頭～格闘まで
-------------------------------------------------
MAX_FRAME_0 = 734;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～格闘まで・手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭～格闘まで・奥(ef_001b)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 206 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 132 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, 0.6, 47.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 0.6, 47.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 0.8, 44.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 0.8, 44.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 0.8, 44.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 0.8, 44.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1.3, 44.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1.3, 44.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 1.6, 44.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 1.6, 44.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1.7, 51.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 1.7, 51.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 1.8, 58.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 1.8, 58.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 2.8, 54 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 2.8, 54 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 3.3, 43.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 3.3, 43.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 3.9, 33.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 3.9, 33.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 4.5, 23 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 4.5, 23 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 5.7, -0.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 5.7, -0.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 6.2, -0.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 6.2, -0.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 6.7, -0.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 6.7, -0.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 7, 161.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 7, 161.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -0.3, 113.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -0.3, 113.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 11.3, 132.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 11.3, 132.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -14.8, 137.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -14.8, 137.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 5.5, 111.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 5.5, 111.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -6.9, 96.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -6.9, 96.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 3.1, 108.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 3.1, 108.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -9.6, 100.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -9.6, 100.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 1.9, 108.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 1.9, 108.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -9.7, 120.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -9.7, 120.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 1.9, 109 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 1.9, 109 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -2, 105.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -2, 105.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 1.8, 109.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 1.8, 109.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -2.1, 105.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -2.1, 105.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 1.8, 110.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 1.8, 110.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -2.1, 106.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -2.1, 106.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -336.8, -37.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -336.8, -37.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -172.8, -21.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -172.8, -21.7 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -7.5 );

--敵の動き2
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 478 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 450 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 450 + OFFSET_X, 1, 8, 40.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 8, 40.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 6.5, 40.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 6.5, 40.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 14.8, 35.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 14.8, 35.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 21.3, 30.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 21.3, 30.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 21.9, 31.6 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 21.9, 31.6 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 29.8, 28.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 29.8, 28.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 2.5, 338 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 2.5, 338 , 0 );

setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_0 + 450 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 41 );

--敵の動き3
setDisp( spep_0 + 514 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 546 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 514 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 532 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 514 + OFFSET_X, 1, -328.6, 23.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -328.6, 23.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -262.1, 35.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -262.1, 35.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -195.5, 47.1 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -195.5, 47.1 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -129, 58.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -129, 58.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -62.4, 70.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -62.4, 70.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -431.8, -33.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -431.8, -33.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -249.1, -3.2 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -249.1, -3.2 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -124.8, 18.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -124.8, 18.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -123.1, 30.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -123.1, 30.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -152.4, 47.1 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -152.4, 47.1 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -141.5, 20.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -141.5, 20.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -163.1, -0.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -163.1, -0.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -159.9, 9.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -159.9, 9.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -183, -9.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -183, -9.3 , 0 );

setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 2.95, 2.95 );

setRotateKey( spep_0 + 514 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -1 );

--敵の動き4
setDisp( spep_0 + 634 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 704 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 634 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 644 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 666 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 698 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 634 + OFFSET_X, 1, -8.5, 24.5 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -8.5, 24.5 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -13.1, 20.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -13.1, 20.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -17.6, 17.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -17.6, 17.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -22.2, 13.7 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -22.2, 13.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -26.7, 10.1 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -26.7, 10.1 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -42, -9 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -42, -9 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -44.2, 1.7 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -44.2, 1.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -63.4, 15.5 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -63.4, 15.5 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -54.8, 1.5 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -54.8, 1.5 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -64.8, -12.5 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -64.8, -12.5 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -59.4, 1.4 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -59.4, 1.4 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -72.5, -8 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -72.5, -8 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -63.9, 1.3 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -63.9, 1.3 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -66.2, 1.2 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -66.2, 1.2 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -68.5, 1.2 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -68.5, 1.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -70.8, 1.1 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -70.8, 1.1 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -30.4, 39.6 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -30.4, 39.6 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -25.9, 61.5 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -25.9, 61.5 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -50.9, 86.5 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -50.9, 86.5 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -38.6, 77.4 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -38.6, 77.4 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -51.7, 70.6 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -51.7, 70.6 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -43, 79.3 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -43, 79.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -56, 71 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -56, 71 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -47.4, 81.2 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -47.4, 81.2 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -49.6, 82.2 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -49.6, 82.2 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -51.8, 83.2 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -51.8, 83.2 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -54, 84.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -54, 84.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -56.1, 85.1 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -56.1, 85.1 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -58.3, 86.1 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -58.3, 86.1 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -60.5, 87 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -60.5, 87 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -62.7, 88 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -62.7, 88 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -64.9, 89 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -64.9, 89 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -96.3, 21.1 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -96.3, 21.1 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -153.7, -243.3 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -153.7, -243.3 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -217.5, -532.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -217.5, -532.2 , 0 );

setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 659 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_0 + 634 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 671 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 673 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 674 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 675 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 677 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 678 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 679 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 680 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 683 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 687 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 688 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 689 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 690 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 691 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 693 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 695 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 696 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 697 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 698 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 699 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 704 + OFFSET_X, 1, -52.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 234, 2, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
setStartTimeMs( SE001,  633 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 158 );

--かがむ
SE004 = playSeVer2( spep_0 + 80, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1003, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 106, 1121, "",spep_0 + 232, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 106, SE006, 75 );
SE007 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 106, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 106, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--敵ヒット
SE010 = playSeVer2( spep_0 + 162, 1179, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE011, 79 );

--岩貫く
SE012 = playSeVer2( spep_0 + 190, 1424, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 190, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 86 );
SE014 = playSeVer2( spep_0 + 190, 1141, "", 0, 0, 0, -1);

--岩爆発
SE015 = playSeVer2( spep_0 + 224, 1159, "", 0, 0, 0, -1);

--煙から出る
SE016 = playSeVer2( spep_0 + 260, 1188, "", 0, 26, 0, -1);
setStartTimeMs( SE016,  33 );
SE018 = playSeVer2( spep_0 + 276, 1116, "",spep_0 + 328, 0, 22, -1);

--飛んでくる
SE017 = playSeVer2( spep_0 + 284, 1227, "",spep_0 + 506, 14, 50, -1);
setSeVolumeByWorkId( spep_0 + 284, SE017, 79 );
setStartTimeMs( SE017,  433 );
setPitch( spep_0 + 284, SE017, -500 );
setTimeStretch( SE017, 0.67, 30, 4 );
SE019 = playSeVer2( spep_0 + 290, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE019, 63 );
SE020 = playSeVer2( spep_0 + 290, 1181, "",spep_0 + 502, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 290, SE020, 153 );
SE021 = playSeVer2( spep_0 + 354, 1019, "",spep_0 + 388, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 63 );

--翻って足つく
SE022 = playSeVer2( spep_0 + 364, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 378, 1117, "",spep_0 + 440, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 412, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE024, 141 );

--爆発
SE025 = playSeVer2( spep_0 + 416, 1024, "", 0, 0, 0, -1);

--敵吹き飛んでくる
SE026 = playSeVer2( spep_0 + 438, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE026, 81 );

--飛んでくる
SE027 = playSeVer2( spep_0 + 470, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 476, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE028, 56 );
SE029 = playSeVer2( spep_0 + 504, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE029, 122 );

--連打
SE030 = playSeVer2( spep_0 + 524, 1110, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 524, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 544, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE032, 86 );
SE033 = playSeVer2( spep_0 + 546, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 562, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 564, 1110, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 584, 1189, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 590, 1110, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 590, 1009, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 606, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 612, 1359, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 614, 1110, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 636, 1359, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 638, 1010, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 638, 1110, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 662, 1359, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 662, 1001, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 664, 1110, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 692, 1359, "",spep_0 + 748, 0, 8, -1);
SE049 = playSeVer2( spep_0 + 692, 1120, "",spep_0 + 750, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --734f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE051 = playSeVer2( spep_1 + 56, 1266, "",spep_1 + 298, 34, 56, -1);
setSeVolumeByWorkId( spep_1 + 56, SE051, 56 );
setStartTimeMs( SE051,  933 );
SE052 = playSeVer2( spep_1 + 72, 1227, "",spep_1 + 290, 12, 48, -1);
setSeVolumeByWorkId( spep_1 + 72, SE052, 79 );
setStartTimeMs( SE052,  467 );
setPitch( spep_1 + 72, SE052, -55100 );
setTimeStretch( SE052, -35.73, 30, 4 );
SE053 = playSeVer2( spep_1 + 82, 1181, "",spep_1 + 294, 0, 50, -1);
setSeVolumeByWorkId( spep_1 + 82, SE053, 164 );

--構える
SE054 = playSeVer2( spep_1 + 82, 1233, "", 0, 0, 0, -1);

--環境音
SE055 = playSeVer2( spep_1 + 82, 1278, "",spep_1 + 286, 0, 80, -1);
setSeVolumeByWorkId( spep_1 + 82, SE055, 56 );

--構える
SE056 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波～ラスト
-------------------------------------------------
MAX_FRAME_2 = 368;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- かめはめ波～ラスト(ef_002)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--かめはめ波溜め
SE057 = playSeVer2( spep_2 + 104, 1210, "",spep_2 + 220, 10, 22, -1);
setStartTimeMs( SE057,  1267 );
SE058 = playSeVer2( spep_2 + 102, 1209, "",spep_2 + 224, 0, 24, -1);

--かめはめ波発射
SE059 = playSeVer2( spep_2 + 186, 1133, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 186, 1213, "",spep_2 + 362, 0, 92, -1);
setSeVolumeByWorkId( spep_2 + 186, SE060, 71 );
SE061 = playSeVer2( spep_2 + 186, 1146, "",spep_2 + 362, 0, 92, -1);

--光立ち上がる１
SE062 = playSeVer2( spep_2 + 244, 1394, "",spep_2 + 354, 0, 70, -1);
SE063 = playSeVer2( spep_2 + 244, 1302, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 244, 1440, "", 0, 0, 0, -1);

--爆発
SE065 = playSeVer2( spep_2 + 244, 1264, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);

--光立ち上がる２
SE067 = playSeVer2( spep_2 + 286, 1302, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 286, 1440, "", 0, 0, 0, -1);

--光立ち上がる３
SE069 = playSeVer2( spep_2 + 316, 1302, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 316, 1440, "", 0, 0, 0, -1);

--爆発
SE071 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 248); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム　　368f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 冒頭～格闘まで
-------------------------------------------------
MAX_FRAME_0 = 734;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭～格闘まで・手前(ef_001_r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 冒頭～格闘まで・奥(ef_001b_r)
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
spep_x = spep_0 + 0;

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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 206 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 132 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, -0.6, 47.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -0.6, 47.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -0.8, 44.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -0.8, 44.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -0.8, 44.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -0.8, 44.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -1.3, 44.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -1.3, 44.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -1.6, 44.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -1.6, 44.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -1.7, 51.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -1.7, 51.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -1.8, 58.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -1.8, 58.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -2.8, 54 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -2.8, 54 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -3.3, 43.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -3.3, 43.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -3.9, 33.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -3.9, 33.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -4.5, 23 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -4.5, 23 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -5.7, -0.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -5.7, -0.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -6.2, -0.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -6.2, -0.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -6.7, -0.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -6.7, -0.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -7, 161.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -7, 161.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 0.3, 113.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 0.3, 113.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -11.3, 132.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -11.3, 132.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 14.8, 137.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 14.8, 137.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -5.5, 111.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -5.5, 111.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 6.9, 96.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 6.9, 96.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -3.1, 108.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -3.1, 108.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 9.6, 100.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 9.6, 100.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -1.9, 108.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -1.9, 108.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 9.7, 120.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 9.7, 120.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -1.9, 109 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -1.9, 109 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 2, 105.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 2, 105.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -1.8, 109.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -1.8, 109.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 2.1, 105.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 2.1, 105.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -1.8, 110.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -1.8, 110.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -2.1, 106.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -2.1, 106.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -336.8, -37.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -336.8, -37.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -172.8, -21.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -172.8, -21.7 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -7.5 );

--敵の動き2
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 478 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 450 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 450 + OFFSET_X, 1, -8, 40.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -8, 40.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -6.5, 40.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -6.5, 40.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -14.8, 35.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -14.8, 35.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -21.3, 30.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -21.3, 30.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -21.9, 31.6 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -21.9, 31.6 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -29.8, 28.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -29.8, 28.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -2.5, 338 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -2.5, 338 , 0 );

setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_0 + 450 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -41 );

--敵の動き3
setDisp( spep_0 + 514 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 546 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 514 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 532 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 514 + OFFSET_X, 1, -328.6, 23.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -328.6, 23.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -262.1, 35.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -262.1, 35.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -195.5, 47.1 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -195.5, 47.1 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -129, 58.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -129, 58.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -62.4, 70.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -62.4, 70.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -431.8, -33.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -431.8, -33.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -249.1, -3.2 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -249.1, -3.2 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -124.8, 18.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -124.8, 18.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -123.1, 30.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -123.1, 30.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -152.4, 47.1 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -152.4, 47.1 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -141.5, 20.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -141.5, 20.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -163.1, -0.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -163.1, -0.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -159.9, 9.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -159.9, 9.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -183, -9.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -183, -9.3 , 0 );

setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 2.95, 2.95 );

setRotateKey( spep_0 + 514 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -1 );

--敵の動き4
setDisp( spep_0 + 634 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 704 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 634 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 644 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 666 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 698 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 634 + OFFSET_X, 1, -8.5, 24.5 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -8.5, 24.5 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -13.1, 20.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -13.1, 20.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -17.6, 17.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -17.6, 17.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -22.2, 13.7 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -22.2, 13.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -26.7, 10.1 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -26.7, 10.1 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -42, -9 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -42, -9 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -44.2, 1.7 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -44.2, 1.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -63.4, 15.5 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -63.4, 15.5 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -54.8, 1.5 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -54.8, 1.5 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -64.8, -12.5 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -64.8, -12.5 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -59.4, 1.4 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -59.4, 1.4 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -72.5, -8 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -72.5, -8 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -63.9, 1.3 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -63.9, 1.3 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -66.2, 1.2 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -66.2, 1.2 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -68.5, 1.2 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -68.5, 1.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -70.8, 1.1 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -70.8, 1.1 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -30.4, 39.6 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -30.4, 39.6 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -25.9, 61.5 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -25.9, 61.5 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -50.9, 86.5 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -50.9, 86.5 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -38.6, 77.4 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -38.6, 77.4 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -51.7, 70.6 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -51.7, 70.6 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -43, 79.3 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -43, 79.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -56, 71 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -56, 71 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -47.4, 81.2 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -47.4, 81.2 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -49.6, 82.2 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -49.6, 82.2 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -51.8, 83.2 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -51.8, 83.2 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -54, 84.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -54, 84.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -56.1, 85.1 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -56.1, 85.1 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -58.3, 86.1 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -58.3, 86.1 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -60.5, 87 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -60.5, 87 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -62.7, 88 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -62.7, 88 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -64.9, 89 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -64.9, 89 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -96.3, 21.1 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -96.3, 21.1 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -153.7, -243.3 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -153.7, -243.3 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -217.5, -532.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -217.5, -532.2 , 0 );

setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 659 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_0 + 634 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 671 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 673 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 674 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 675 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 677 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 678 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 679 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 680 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 683 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 687 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 688 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 689 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 690 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 691 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 693 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 695 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 696 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 697 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 698 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 699 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 704 + OFFSET_X, 1, -52.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 234, 2, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
setStartTimeMs( SE001,  633 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 158 );

--かがむ
SE004 = playSeVer2( spep_0 + 80, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1003, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 106, 1121, "",spep_0 + 232, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 106, SE006, 75 );
SE007 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 106, 1277, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 106, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--敵ヒット
SE010 = playSeVer2( spep_0 + 162, 1179, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE011, 79 );

--岩貫く
SE012 = playSeVer2( spep_0 + 190, 1424, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 190, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 86 );
SE014 = playSeVer2( spep_0 + 190, 1141, "", 0, 0, 0, -1);

--岩爆発
SE015 = playSeVer2( spep_0 + 224, 1159, "", 0, 0, 0, -1);

--煙から出る
SE016 = playSeVer2( spep_0 + 260, 1188, "", 0, 26, 0, -1);
setStartTimeMs( SE016,  33 );
SE018 = playSeVer2( spep_0 + 276, 1116, "",spep_0 + 328, 0, 22, -1);

--飛んでくる
SE017 = playSeVer2( spep_0 + 284, 1227, "",spep_0 + 506, 14, 50, -1);
setSeVolumeByWorkId( spep_0 + 284, SE017, 79 );
setStartTimeMs( SE017,  433 );
setPitch( spep_0 + 284, SE017, -500 );
setTimeStretch( SE017, 0.67, 30, 4 );
SE019 = playSeVer2( spep_0 + 290, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE019, 63 );
SE020 = playSeVer2( spep_0 + 290, 1181, "",spep_0 + 502, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 290, SE020, 153 );
SE021 = playSeVer2( spep_0 + 354, 1019, "",spep_0 + 388, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 63 );

--翻って足つく
SE022 = playSeVer2( spep_0 + 364, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 378, 1117, "",spep_0 + 440, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 412, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE024, 141 );

--爆発
SE025 = playSeVer2( spep_0 + 416, 1024, "", 0, 0, 0, -1);

--敵吹き飛んでくる
SE026 = playSeVer2( spep_0 + 438, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE026, 81 );

--飛んでくる
SE027 = playSeVer2( spep_0 + 470, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 476, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE028, 56 );
SE029 = playSeVer2( spep_0 + 504, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE029, 122 );

--連打
SE030 = playSeVer2( spep_0 + 524, 1110, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 524, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 544, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE032, 86 );
SE033 = playSeVer2( spep_0 + 546, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 562, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 564, 1110, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 584, 1189, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 590, 1110, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 590, 1009, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 606, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 612, 1359, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 614, 1110, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 636, 1359, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 638, 1010, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 638, 1110, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 662, 1359, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 662, 1001, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 664, 1110, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 692, 1359, "",spep_0 + 748, 0, 8, -1);
SE049 = playSeVer2( spep_0 + 692, 1120, "",spep_0 + 750, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --734f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE051 = playSeVer2( spep_1 + 56, 1266, "",spep_1 + 298, 34, 56, -1);
setSeVolumeByWorkId( spep_1 + 56, SE051, 56 );
setStartTimeMs( SE051,  933 );
SE052 = playSeVer2( spep_1 + 72, 1227, "",spep_1 + 290, 12, 48, -1);
setSeVolumeByWorkId( spep_1 + 72, SE052, 79 );
setStartTimeMs( SE052,  467 );
setPitch( spep_1 + 72, SE052, -55100 );
setTimeStretch( SE052, -35.73, 30, 4 );
SE053 = playSeVer2( spep_1 + 82, 1181, "",spep_1 + 294, 0, 50, -1);
setSeVolumeByWorkId( spep_1 + 82, SE053, 164 );

--構える
SE054 = playSeVer2( spep_1 + 82, 1233, "", 0, 0, 0, -1);

--環境音
SE055 = playSeVer2( spep_1 + 82, 1278, "",spep_1 + 286, 0, 80, -1);
setSeVolumeByWorkId( spep_1 + 82, SE055, 56 );

--構える
SE056 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波～ラスト
-------------------------------------------------
MAX_FRAME_2 = 368;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- かめはめ波～ラスト(ef_002_r)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--かめはめ波溜め
SE057 = playSeVer2( spep_2 + 104, 1210, "",spep_2 + 220, 10, 22, -1);
setStartTimeMs( SE057,  1267 );
SE058 = playSeVer2( spep_2 + 102, 1209, "",spep_2 + 224, 0, 24, -1);

--かめはめ波発射
SE059 = playSeVer2( spep_2 + 186, 1133, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 186, 1213, "",spep_2 + 362, 0, 92, -1);
setSeVolumeByWorkId( spep_2 + 186, SE060, 71 );
SE061 = playSeVer2( spep_2 + 186, 1146, "",spep_2 + 362, 0, 92, -1);

--光立ち上がる１
SE062 = playSeVer2( spep_2 + 244, 1394, "",spep_2 + 354, 0, 70, -1);
SE063 = playSeVer2( spep_2 + 244, 1302, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 244, 1440, "", 0, 0, 0, -1);

--爆発
SE065 = playSeVer2( spep_2 + 244, 1264, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);

--光立ち上がる２
SE067 = playSeVer2( spep_2 + 286, 1302, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 286, 1440, "", 0, 0, 0, -1);

--光立ち上がる３
SE069 = playSeVer2( spep_2 + 316, 1302, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 316, 1440, "", 0, 0, 0, -1);

--爆発
SE071 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 248); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム　　368f


end
