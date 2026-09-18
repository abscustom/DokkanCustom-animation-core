-- 1027330: UR_超サイヤ人孫悟飯(未来)_必殺技：爆裂乱魔
-- sp_effect_b1_00264
-- sp2604

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162213;  -- 開幕構え〜飛び蹴りヒット ef_001
SP_01b = 162214;  -- 開幕構え〜飛び蹴りヒット ef_001b
SP_02 = 162215;  -- 気弾を押しつける〜フィニッシュ ef_002
SP_02b = 162216;  -- 気弾を押しつける〜フィニッシュ ef_002b

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
-- 開幕構え〜飛び蹴りヒット ef_001 (428F)
------------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 520.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 520.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き１
setDisp(spep_0 + 126 + OFFSET_X, 1, 1);
setDisp(spep_0 + 180 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 126 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, 535.2, -532.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 508.5, -527.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 428.6, -513.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 295.2, -490.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 259.6, -481.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 220.2, -470.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 177, -459 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 164, -446.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 152.7, -436.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 143.1, -427.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 135.3, -419.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 129.2, -414 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 124.8, -409.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 122.2, -407.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 121.4, -406.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 121.4, -406.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 366.8, 118.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 366.8, 118.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 305, 93.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 305, 93.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 209.6, 67.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 209.6, 67.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 459.6, 101.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 459.6, 101.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 413, 84.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 413, 84.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 344, 67.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 344, 67.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 614, 58.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 614, 58.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 857.1, 76.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 857.1, 76.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 1117.9, 58.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 1117.9, 58.9 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -19.8 );

--敵の動き２
setDisp(spep_0 + 208 + OFFSET_X, 1, 1);
setDisp(spep_0 + 270 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 244 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, -224.5, 221.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -224.5, 221.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -223.2, 221.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -223.2, 221.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -219.2, 218.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -219.2, 218.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -212.6, 214.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -212.6, 214.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -203.3, 209.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -203.3, 209.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -191.4, 202.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -191.4, 202.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -176.7, 193.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -176.7, 193.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -136.9, 170.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -136.9, 170.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -97.1, 146.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -97.1, 146.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -57.3, 123.3 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -57.3, 123.3 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -17.5, 99.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -17.5, 99.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 22.2, 76.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 22.2, 76.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 61.9, 53.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 61.9, 53.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 105.4, 27.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 105.4, 27.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 148.9, 2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 148.9, 2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 156, -2.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 156, -2.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 163.2, -6.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 163.2, -6.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 170.4, -10.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 170.4, -10.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 101.4, -393.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 101.4, -393.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 173.3, -491.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 173.3, -491.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 143.5, -295.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 143.5, -295.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 112.2, -516 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 112.2, -516 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 129, -405.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 129, -405.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 154.4, -303.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 154.4, -303.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 137.1, -285.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 137.1, -285.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 137.6, -302.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 137.6, -302.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 156.2, -284.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 156.2, -284.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 451.2, -167 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 451.2, -167 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 593, -190.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 593, -190.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 716.8, -196.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 716.8, -196.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 849.5, -211.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 849.5, -211.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 982.3, -226.5 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 35 );

--敵の動き３
setDisp(spep_0 + 286 + OFFSET_X, 1, 1);
setDisp(spep_0 + 429 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 286 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 286 + OFFSET_X, 1, -787.9, -133.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -787.9, -133.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -521.8, -125.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -521.8, -125.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -289.6, -90.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -289.6, -90.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -185.2, -99.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -185.2, -99.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -78.6, -81.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -78.6, -81.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 20.9, -81.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 20.9, -81.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 86.4, -54.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 86.4, -54.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 111.1, -63.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 111.1, -63.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 145, -45.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 145, -45.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 169.9, -36.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 169.9, -36.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 185.9, -34.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 185.9, -34.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 201.1, -32.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 201.1, -32.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 215.4, -31.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 215.4, -31.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 228.9, -29.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 228.9, -29.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 241.5, -28 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 241.5, -28 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 253.1, -26.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 253.1, -26.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 267.4, -25.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 267.4, -25.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 276, -24.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 276, -24.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 279, -23.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 279, -23.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 270.2, -23.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 270.2, -23.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 261.3, -23 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 261.3, -23 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 252.4, -22.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 252.4, -22.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 243.5, -22.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 243.5, -22.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 234.6, -22.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 234.6, -22.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 225.7, -22.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 225.7, -22.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 216.7, -22.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 216.7, -22.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 207.7, -22.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 207.7, -22.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 198.7, -22 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 198.7, -22 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 189.7, -21.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 189.7, -21.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 187.6, -21.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 187.6, -21.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 185.6, -21.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 185.6, -21.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 184, -21.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 184, -21.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 182.5, -21.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 182.5, -21.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 181.3, -21.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 181.3, -21.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 180.4, -21.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 180.4, -21.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 179.7, -21.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 179.7, -21.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 179.3, -21.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 179.3, -21.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 179.1, -21.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 179.1, -21.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 179.1, -21 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 179.1, -21 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 243.8, 53.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 243.8, 53.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 193.6, 42.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 193.6, 42.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 142.2, 30.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 142.2, 30.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 215.5, 46 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 215.5, 46 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 181.5, 38.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 181.5, 38.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 146.6, 30.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 146.6, 30.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 157.1, 21.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 157.1, 21.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 140.6, 39.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 140.6, 39.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 141.9, 21.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 141.9, 21.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 161.5, 39.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 161.5, 39.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 154, 30.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 154, 30.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 197, 21.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 197, 21.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 222.2, 30.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 222.2, 30.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 224.1, 30.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 224.1, 30.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 225.8, 30.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 225.8, 30.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 227.4, 30.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 227.4, 30.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 228.9, 30.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 228.9, 30.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 230.2, 30.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 230.2, 30.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 231.5, 30.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 231.5, 30.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 232.5, 30.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 232.5, 30.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 233.5, 30.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 233.5, 30.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 234.3, 30.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 234.3, 30.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 235.1, 30.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 235.1, 30.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 235.6, 30.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 235.6, 30.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 236.1, 30.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 236.1, 30.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 236.4, 30.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 236.4, 30.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 236.6, 30.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 236.6, 30.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 236.7, 30.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 236.7, 30.7 , 0 );

setScaleKey( spep_0 + 286 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_0 + 286 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -34.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
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

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 178, 1121, "",spep_0 + 258, 24, 14, -1);
setSeVolumeByWorkId( spep_0 + 178, SE010, 67 );
setStartTimeMs( SE010,  600 );

--振りかぶる
SE011 = playSeVer2( spep_0 + 142, 1004, "", 0, 0, 0, -1);

--蹴りとばす
SE012 = playSeVer2( spep_0 + 160, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 160, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 182, 1183, "",spep_0 + 256, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 63 );

--瞬間移動
SE015 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 234, 1109, "", 0, 0, 0, -1);

--殴りつける
SE017 = playSeVer2( spep_0 + 244, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 244, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 246, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE019, 72 );
SE020 = playSeVer2( spep_0 + 256, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 276, 1121, "",spep_0 + 388, 30, 18, -1);
setStartTimeMs( SE021,  200 );

--オーラ
SE022 = playSeVer2( spep_0 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE022, 50 );
stopSeIfDoubleSpeed( spep_0 + 284, SE022 );

--手地面につく
SE023 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE023, 162 );
SE024 = playSeVer2( spep_0 + 300, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE024, 174 );
SE025 = playSeVer2( spep_0 + 300, 1192, "",spep_0 + 324, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 300, SE025, 200 );

--オーラ
SE026 = playSeVer2( spep_0 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE026, 50 );
stopSeIfDoubleSpeed( spep_0 + 308, SE026 );

--的に向かっていく
SE027 = playSeVer2( spep_0 + 320, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 330, 1182, "",spep_0 + 392, 0, 20, -1);
SE029 = playSeVer2( spep_0 + 330, 1117, "",spep_0 + 394, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 330, 9, "",spep_0 + 394, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 330, SE030, 79 );

--蹴り
SE031 = playSeVer2( spep_0 + 370, 1187, "",428 + 12, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 370, 1120, "",428 + 12, 0, 12, -1);

--敵吹き飛ぶ
SE033 = playSeVer2( spep_0 + 390, 1027, "",428 + 10, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 390, SE033, 71 );

--瞬間移動
SE034 = playSeVer2( spep_0 + 410, 1109, "",428 + 12, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾を押しつける〜フィニッシュ ef_002 (348F)
------------------------------------------------------
MAX_FRAME_2 = 348;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_2 + 52 + OFFSET_X, 1, 1);
setDisp(spep_2 + 66 + OFFSET_X, 1, 0);
setDisp(spep_2 + 72 + OFFSET_X, 1, 1);
setDisp(spep_2 + 222 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 52 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 52 + OFFSET_X, 1, -510.6, -635.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -510.6, -635.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -405.8, -471.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -405.8, -471.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -301, -308.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -301, -308.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -196.2, -144.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -196.2, -144.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -168.1, -109.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -168.1, -109.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -140, -74 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -140, -74 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -112, -38.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -112, -38.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 156.4, 82.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 156.4, 82.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 47.1, 59.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 47.1, 59.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 224.2, 105.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 224.2, 105.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 87.1, 70.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 87.1, 70.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 95.5, 65.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 95.5, 65.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 85.8, 78.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 85.8, 78.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 88.2, 66.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 88.2, 66.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 96.5, 73.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 96.5, 73.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 104.9, 68.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 104.9, 68.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 95.3, 80.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 95.3, 80.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 97.6, 69.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 97.6, 69.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -286.8, 809.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -286.8, 809.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -136.8, 694.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -136.8, 694.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -286.8, 809.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -286.8, 809.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -12.1, 713.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -12.1, 713.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -136.8, 694.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -136.8, 694.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 105.4, 662.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 105.4, 662.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 77.1, 670.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 77.1, 670.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -7.6, 695.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -7.6, 695.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 121.6, 566 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 121.6, 566 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 121.7, 663 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 121.7, 663 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 267.2, 517.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 267.2, 517.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 121.9, 566.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 121.9, 566.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 154.4, 555.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 154.4, 555.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 251.2, 517.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 251.2, 517.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 284.9, 527.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 284.9, 527.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 286.2, 518.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 286.2, 518.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 313.2, 412.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 313.2, 412.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 339.4, 294.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 339.4, 294.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 317.1, 238 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 317.1, 238 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 309.6, 229 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 309.6, 229 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 302.1, 220.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 302.1, 220.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 294.6, 211.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 294.6, 211.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 287.1, 202.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 287.1, 202.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 204.8, 103.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 204.8, 103.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 189.7, 98.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 189.7, 98.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 174.6, 93.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 174.6, 93.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 159.5, 88.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 159.5, 88.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 144.4, 83 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 144.4, 83 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 144, 82.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 144, 82.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 143.7, 82.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 143.7, 82.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 143.4, 82.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 143.4, 82.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 143, 82.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 143, 82.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 142.7, 82.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 142.7, 82.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 142.4, 82.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 142.4, 82.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 142.1, 82.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 142.1, 82.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 141.9, 82.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 141.9, 82.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 141.6, 82 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 141.6, 82 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 141.4, 81.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 141.4, 81.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 141.1, 81.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 141.1, 81.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 140.9, 81.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 140.9, 81.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 140.7, 81.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 140.7, 81.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 140.5, 81.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 140.5, 81.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 140.3, 81.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 140.3, 81.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 140.1, 81.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 140.1, 81.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 140, 81.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 140, 81.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 139.8, 81.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 139.8, 81.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 139.7, 81.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 139.7, 81.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 139.5, 81.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 139.5, 81.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 139.4, 81.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 139.4, 81.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 139.3, 81.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 139.3, 81.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 139.2, 81.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 139.2, 81.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 139.2, 81.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 139.2, 81.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 138.6, 81.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 138.6, 81.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 138.1, 81.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 138.1, 81.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 137.6, 81.6 , 0 );

setScaleKey( spep_2 + 52 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 38.91, 38.9 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 38.91, 38.9 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 37.37, 37.37 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 37.37, 37.37 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 38.91, 38.91 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 38.91, 38.91 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 31.22, 31.22 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 31.22, 31.22 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 25.47, 25.47 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 25.47, 25.47 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 25.16, 25.16 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 25.16, 25.16 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 21.73, 21.73 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 21.73, 21.73 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 18, 18 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 18, 18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 52 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -68.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -68.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -70 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( 428 + 88, 1109, "", 0, 0, 0, -1);

--オーラ
SE037 = playSeVer2( spep_2 + 4, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 28, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_2 + 30, 1296, "",spep_2 + 96, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 30, SE039, 119 );
SE040 = playSeVer2( spep_2 + 30, 1393, "",spep_2 + 166, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 30, SE040, 138 );

--オーラ
SE041 = playSeVer2( spep_2 + 52, 1036, "", 0, 0, 0, -1);

--気弾敵にぶつける
SE042 = playSeVer2( spep_2 + 56, 1021, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 60, 1178, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 60, 1402, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_2 + 76, 1036, "", 0, 0, 0, -1);

--気弾発射前溜め
SE046 = playSeVer2( spep_2 + 90, 1274, "", 0, 0, 0, 0.6);
SE047 = playSeVer2( spep_2 + 90, 1130, "", 0, 0, 0, 0.6);
setTimeStretch( SE047, 1.42, 30, 4 );

--オーラ
SE048 = playSeVer2( spep_2 + 100, 1036, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 124, 1036, "", 0, 0, 0, -1);

--気弾発射
SE050 = playSeVer2( spep_2 + 146, 1145, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 146, 1133, "",spep_2 + 224, 0, 36, -1);

--オーラ
SE052 = playSeVer2( spep_2 + 168, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 192, 1036, "", 0, 0, 0, -1);

--爆発
SE054 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 216, 1159, "", 0, 0, 0, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 216, 1036, "", 0, 0, 0, -1);

--風圧
SE057 = playSeVer2( spep_2 + 216, 1259, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 216, SE057, 56 );

--爆発
SE058 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);

--オーラ
SE059 = playSeVer2( spep_2 + 240, 1036, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 264, 1036, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 288, 1036, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 312, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 228 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 348

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕構え〜飛び蹴りヒット ef_001 (428F)
------------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 450.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 450.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き１
setDisp(spep_0 + 126 + OFFSET_X, 1, 1);
setDisp(spep_0 + 180 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 126 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, -535.2, -532.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -508.5, -527.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -428.6, -513.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -295.2, -490.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -259.6, -481.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -220.2, -470.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -177, -459 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -164, -446.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -152.7, -436.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -143.1, -427.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -135.3, -419.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -129.2, -414 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -124.8, -409.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -122.2, -407.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -121.4, -406.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -121.4, -406.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -366.8, 118.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -366.8, 118.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -305, 93.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -305, 93.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -209.6, 67.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -209.6, 67.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -459.6, 101.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -459.6, 101.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -413, 84.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -413, 84.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -344, 67.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -344, 67.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -614, 58.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -614, 58.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -857.1, 76.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -857.1, 76.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -1117.9, 58.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -1117.9, 58.9 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 19.8 );

--敵の動き２
setDisp(spep_0 + 208 + OFFSET_X, 1, 1);
setDisp(spep_0 + 270 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 244 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 224.5, 221.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 224.5, 221.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 223.2, 221.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 223.2, 221.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 219.2, 218.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 219.2, 218.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 212.6, 214.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 212.6, 214.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 203.3, 209.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 203.3, 209.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 191.4, 202.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 191.4, 202.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 176.7, 193.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 176.7, 193.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 136.9, 170.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 136.9, 170.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 97.1, 146.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 97.1, 146.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 57.3, 123.3 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 57.3, 123.3 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 17.5, 99.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 17.5, 99.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -22.2, 76.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -22.2, 76.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -61.9, 53.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -61.9, 53.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -105.4, 27.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -105.4, 27.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -148.9, 2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -148.9, 2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -156, -2.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -156, -2.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -163.2, -6.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -163.2, -6.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -170.4, -10.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -170.4, -10.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -101.4, -393.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -101.4, -393.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -173.3, -491.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -173.3, -491.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -143.5, -295.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -143.5, -295.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -112.2, -516 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -112.2, -516 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -129, -405.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -129, -405.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -154.4, -303.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -154.4, -303.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -137.1, -285.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -137.1, -285.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -137.6, -302.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -137.6, -302.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -156.2, -284.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -156.2, -284.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -451.2, -167 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -451.2, -167 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -593, -190.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -593, -190.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -716.8, -196.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -716.8, -196.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -849.5, -211.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -849.5, -211.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -982.3, -226.5 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -35 );

--敵の動き３
setDisp(spep_0 + 286 + OFFSET_X, 1, 1);
setDisp(spep_0 + 429 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 286 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 286 + OFFSET_X, 1, 787.9, -133.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 787.9, -133.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 521.8, -125.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 521.8, -125.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 289.6, -90.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 289.6, -90.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 185.2, -99.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 185.2, -99.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 78.6, -81.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 78.6, -81.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -20.9, -81.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -20.9, -81.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -86.4, -54.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -86.4, -54.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -111.1, -63.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -111.1, -63.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -145, -45.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -145, -45.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -169.9, -36.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -169.9, -36.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -185.9, -34.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -185.9, -34.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -201.1, -32.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -201.1, -32.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -215.4, -31.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -215.4, -31.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -228.9, -29.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -228.9, -29.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -241.5, -28 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -241.5, -28 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -253.1, -26.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -253.1, -26.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -267.4, -25.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -267.4, -25.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -276, -24.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -276, -24.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -279, -23.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -279, -23.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -270.2, -23.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -270.2, -23.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -261.3, -23 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -261.3, -23 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -252.4, -22.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -252.4, -22.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -243.5, -22.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -243.5, -22.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -234.6, -22.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -234.6, -22.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -225.7, -22.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -225.7, -22.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -216.7, -22.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -216.7, -22.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -207.7, -22.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -207.7, -22.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -198.7, -22 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -198.7, -22 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -189.7, -21.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -189.7, -21.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -187.6, -21.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -187.6, -21.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -185.6, -21.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -185.6, -21.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -184, -21.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -184, -21.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -182.5, -21.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -182.5, -21.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -181.3, -21.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -181.3, -21.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -180.4, -21.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -180.4, -21.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -179.7, -21.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -179.7, -21.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -179.3, -21.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -179.3, -21.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -179.1, -21.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -179.1, -21.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -179.1, -21 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -179.1, -21 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -243.8, 53.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -243.8, 53.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -193.6, 42.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -193.6, 42.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -142.2, 30.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -142.2, 30.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -215.5, 46 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -215.5, 46 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -181.5, 38.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -181.5, 38.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -146.6, 30.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -146.6, 30.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -157.1, 21.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -157.1, 21.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -140.6, 39.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -140.6, 39.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -141.9, 21.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -141.9, 21.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -161.5, 39.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -161.5, 39.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -154, 30.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -154, 30.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -197, 21.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -197, 21.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -222.2, 30.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -222.2, 30.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -224.1, 30.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -224.1, 30.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -225.8, 30.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -225.8, 30.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -227.4, 30.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -227.4, 30.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -228.9, 30.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -228.9, 30.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -230.2, 30.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -230.2, 30.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -231.5, 30.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -231.5, 30.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -232.5, 30.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -232.5, 30.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -233.5, 30.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -233.5, 30.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -234.3, 30.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -234.3, 30.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -235.1, 30.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -235.1, 30.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -235.6, 30.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -235.6, 30.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -236.1, 30.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -236.1, 30.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -236.4, 30.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -236.4, 30.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -236.6, 30.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -236.6, 30.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -236.7, 30.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -236.7, 30.7 , 0 );

setScaleKey( spep_0 + 286 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_0 + 286 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 34.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
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

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 178, 1121, "",spep_0 + 258, 24, 14, -1);
setSeVolumeByWorkId( spep_0 + 178, SE010, 67 );
setStartTimeMs( SE010,  600 );

--振りかぶる
SE011 = playSeVer2( spep_0 + 142, 1004, "", 0, 0, 0, -1);

--蹴りとばす
SE012 = playSeVer2( spep_0 + 160, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 160, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 182, 1183, "",spep_0 + 256, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 63 );

--瞬間移動
SE015 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 234, 1109, "", 0, 0, 0, -1);

--殴りつける
SE017 = playSeVer2( spep_0 + 244, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 244, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 246, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE019, 72 );
SE020 = playSeVer2( spep_0 + 256, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 276, 1121, "",spep_0 + 388, 30, 18, -1);
setStartTimeMs( SE021,  200 );

--オーラ
SE022 = playSeVer2( spep_0 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE022, 50 );
stopSeIfDoubleSpeed( spep_0 + 284, SE022 );

--手地面につく
SE023 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE023, 162 );
SE024 = playSeVer2( spep_0 + 300, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE024, 174 );
SE025 = playSeVer2( spep_0 + 300, 1192, "",spep_0 + 324, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 300, SE025, 200 );

--オーラ
SE026 = playSeVer2( spep_0 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE026, 50 );
stopSeIfDoubleSpeed( spep_0 + 308, SE026 );

--的に向かっていく
SE027 = playSeVer2( spep_0 + 320, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 330, 1182, "",spep_0 + 392, 0, 20, -1);
SE029 = playSeVer2( spep_0 + 330, 1117, "",spep_0 + 394, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 330, 9, "",spep_0 + 394, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 330, SE030, 79 );

--蹴り
SE031 = playSeVer2( spep_0 + 370, 1187, "",428 + 12, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 370, 1120, "",428 + 12, 0, 12, -1);

--敵吹き飛ぶ
SE033 = playSeVer2( spep_0 + 390, 1027, "",428 + 10, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 390, SE033, 71 );

--瞬間移動
SE034 = playSeVer2( spep_0 + 410, 1109, "",428 + 12, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾を押しつける〜フィニッシュ ef_002 (348F)
------------------------------------------------------
MAX_FRAME_2 = 348;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_2 + 52 + OFFSET_X, 1, 1);
setDisp(spep_2 + 66 + OFFSET_X, 1, 0);
setDisp(spep_2 + 72 + OFFSET_X, 1, 1);
setDisp(spep_2 + 222 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 52 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 52 + OFFSET_X, 1, 510.6, -635.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 510.6, -635.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 405.8, -471.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 405.8, -471.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 301, -308.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 301, -308.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 196.2, -144.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 196.2, -144.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 168.1, -109.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 168.1, -109.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 140, -74 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 140, -74 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 112, -38.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 112, -38.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -156.4, 82.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -156.4, 82.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -47.1, 59.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -47.1, 59.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -224.2, 105.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -224.2, 105.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -87.1, 70.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -87.1, 70.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -95.5, 65.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -95.5, 65.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -85.8, 78.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -85.8, 78.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -88.2, 66.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -88.2, 66.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -96.5, 73.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -96.5, 73.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -104.9, 68.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -104.9, 68.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -95.3, 80.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -95.3, 80.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -97.6, 69.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -97.6, 69.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 286.8, 809.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 286.8, 809.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 136.8, 694.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 136.8, 694.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 286.8, 809.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 286.8, 809.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 12.1, 713.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 12.1, 713.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 136.8, 694.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 136.8, 694.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -105.4, 662.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -105.4, 662.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -77.1, 670.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -77.1, 670.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 7.6, 695.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 7.6, 695.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -121.6, 566 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -121.6, 566 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -121.7, 663 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -121.7, 663 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -267.2, 517.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -267.2, 517.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -121.9, 566.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -121.9, 566.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -154.4, 555.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -154.4, 555.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -251.2, 517.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -251.2, 517.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -284.9, 527.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -284.9, 527.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -286.2, 518.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -286.2, 518.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -313.2, 412.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -313.2, 412.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -339.4, 294.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -339.4, 294.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -317.1, 238 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -317.1, 238 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -309.6, 229 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -309.6, 229 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -302.1, 220.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -302.1, 220.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -294.6, 211.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -294.6, 211.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -287.1, 202.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -287.1, 202.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -204.8, 103.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -204.8, 103.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -189.7, 98.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -189.7, 98.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -174.6, 93.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -174.6, 93.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -159.5, 88.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -159.5, 88.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -144.4, 83 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -144.4, 83 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -144, 82.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -144, 82.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -143.7, 82.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -143.7, 82.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -143.4, 82.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -143.4, 82.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -143, 82.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -143, 82.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -142.7, 82.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -142.7, 82.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -142.4, 82.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -142.4, 82.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -142.1, 82.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -142.1, 82.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -141.9, 82.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -141.9, 82.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -141.6, 82 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -141.6, 82 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -141.4, 81.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -141.4, 81.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -141.1, 81.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -141.1, 81.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -140.9, 81.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -140.9, 81.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -140.7, 81.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -140.7, 81.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -140.5, 81.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -140.5, 81.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -140.3, 81.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -140.3, 81.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -140.1, 81.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -140.1, 81.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -140, 81.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -140, 81.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -139.8, 81.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -139.8, 81.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -139.7, 81.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -139.7, 81.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -139.5, 81.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -139.5, 81.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -139.4, 81.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -139.4, 81.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -139.3, 81.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -139.3, 81.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -139.2, 81.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -139.2, 81.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -139.2, 81.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -139.2, 81.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -138.6, 81.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -138.6, 81.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -138.1, 81.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -138.1, 81.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -137.6, 81.6 , 0 );

setScaleKey( spep_2 + 52 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 45.05, 45.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 38.91, 38.9 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 38.91, 38.9 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 40.96, 40.96 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 37.37, 37.37 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 37.37, 37.37 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 38.91, 38.91 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 38.91, 38.91 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 36.86, 36.86 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 31.95, 31.94 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 31.22, 31.22 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 31.22, 31.22 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 29.08, 29.08 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 25.47, 25.47 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 25.47, 25.47 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 25.16, 25.16 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 25.16, 25.16 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 21.73, 21.73 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 21.73, 21.73 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 18, 18 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 18, 18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 52 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 70 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( 428 + 88, 1109, "", 0, 0, 0, -1);

--オーラ
SE037 = playSeVer2( spep_2 + 4, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 28, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_2 + 30, 1296, "",spep_2 + 96, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 30, SE039, 119 );
SE040 = playSeVer2( spep_2 + 30, 1393, "",spep_2 + 166, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 30, SE040, 138 );

--オーラ
SE041 = playSeVer2( spep_2 + 52, 1036, "", 0, 0, 0, -1);

--気弾敵にぶつける
SE042 = playSeVer2( spep_2 + 56, 1021, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 60, 1178, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 60, 1402, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_2 + 76, 1036, "", 0, 0, 0, -1);

--気弾発射前溜め
SE046 = playSeVer2( spep_2 + 90, 1274, "", 0, 0, 0, 0.6);
SE047 = playSeVer2( spep_2 + 90, 1130, "", 0, 0, 0, 0.6);
setTimeStretch( SE047, 1.42, 30, 4 );

--オーラ
SE048 = playSeVer2( spep_2 + 100, 1036, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 124, 1036, "", 0, 0, 0, -1);

--気弾発射
SE050 = playSeVer2( spep_2 + 146, 1145, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 146, 1133, "",spep_2 + 224, 0, 36, -1);

--オーラ
SE052 = playSeVer2( spep_2 + 168, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 192, 1036, "", 0, 0, 0, -1);

--爆発
SE054 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 216, 1159, "", 0, 0, 0, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 216, 1036, "", 0, 0, 0, -1);

--風圧
SE057 = playSeVer2( spep_2 + 216, 1259, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 216, SE057, 56 );

--爆発
SE058 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);

--オーラ
SE059 = playSeVer2( spep_2 + 240, 1036, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 264, 1036, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 288, 1036, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 312, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 228 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 348

end
