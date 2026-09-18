--1030680:UR_ベジータ(ミニ)(DAIMA)_必殺技：スラッシュアロー
--sp_effect_b1_00308
--sp2824

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163718; --登場からジャンプ：前 ef_001
SP_01b = 163719; --登場からジャンプ：後 ef_001b
SP_02  = 163721; --キックから踏みつけ：前 ef_002
SP_02b = 163722; --キックから踏みつけ：後 ef_002b

--エフェクト(敵)
SP_01r  = 163720; --登場からジャンプ：前敵用 ef_001r

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場からジャンプ
-------------------------------------------------
MAX_FRAME_0 = 406;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場からジャンプ：前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場からジャンプ：後(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
--[[
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -146, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -146, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 118.8, -258.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 118.8, -258.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 122, -258.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 122, -258.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 125.1, -258.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 125.1, -258.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 128.3, -258.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 128.3, -258.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 131.4, -258.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 131.4, -258.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 134.6, -258.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 134.6, -258.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 137.7, -258.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 137.7, -258.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 140.9, -258.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.9, -258.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 144.1, -258.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 144.1, -258.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 147.2, -258.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 147.2, -258.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 150.4, -258.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 150.4, -258.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 153.5, -258.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 153.5, -258.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 156.7, -258.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 156.7, -258.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 159.9, -258.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 159.9, -258.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 163, -258.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 163, -258.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 166.2, -258.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 166.2, -258.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 169.3, -258.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 169.3, -258.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 172.5, -258.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 172.5, -258.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 175.6, -258.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 175.6, -258.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 178.8, -258.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 178.8, -258.6 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 98 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -15 );


--敵の動き2
setDisp( spep_0 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 156 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 156 + OFFSET_X, 1, 75, -90 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 75, -90 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -3.9, 51 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -3.9, 51 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 2.1, 79 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 2.1, 79 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -47.9, 51 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -47.9, 51 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -27.9, 73 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -27.9, 73 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -26.9, 69 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -26.9, 69 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -25.9, 65 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -25.9, 65 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -23.9, 71 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -23.9, 71 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -25.9, 67 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -25.9, 67 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -27.9, 68 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -27.9, 68 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -39.7, 73.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -39.7, 73.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -41.7, 73.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -41.7, 73.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -42.7, 74.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -42.7, 74.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -42.7, 74.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -42.7, 74.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -42.6, 74.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -42.6, 74.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -44.1, 75.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -44.1, 75.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -44, 76.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -44, 76.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -45.1, 77 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -45.1, 77 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -45, 77.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -45, 77.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -45, 77.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -45, 77.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -46.5, 78.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -46.5, 78.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -46.4, 78.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -46.4, 78.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -47.3, 79.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -47.3, 79.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -47.3, 79.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -47.3, 79.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -47.2, 79.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -47.2, 79.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -48.8, 81 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -48.8, 81 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -48.8, 81.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -48.8, 81.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -49.7, 82 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -49.7, 82 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -49.6, 82.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -49.6, 82.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -49.5, 82.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -49.5, 82.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -51, 83.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -51, 83.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -51, 83.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -51, 83.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -52, 84.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -52, 84.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -52, 84.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -52, 84.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -51.9, 84.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -51.9, 84.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -53.3, 86.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -53.3, 86.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -53.3, 86.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -53.3, 86.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -54.3, 87 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -54.3, 87 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -54.2, 87.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -54.2, 87.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -54.2, 87.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -54.2, 87.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -55.7, 88.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -55.7, 88.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -55.6, 88.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -55.6, 88.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -56.6, 89.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -56.6, 89.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -56.6, 89.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -56.6, 89.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -56.5, 89.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -56.5, 89.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -58, 91.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -58, 91.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -57.9, 91.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -57.9, 91.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -59, 92.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -59, 92.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -61, 88.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -61, 88.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -59, 88.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -59, 88.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -56, 83.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -56, 83.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -59.7, 86.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -59.7, 86.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -63.3, 89.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -63.3, 89.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -67, 93 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -67, 93 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -70.7, 96.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -70.7, 96.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -74.3, 100.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -74.3, 100.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -78, 103 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -78, 103 , 0 );

setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.85, 2.85 );

setRotateKey( spep_0 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -16 );


-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 58, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 64, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE003, 79 );

--飛び上がる
SE004 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 78, 44, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 122; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り
SE008 = playSeVer2( spep_0 + 140, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1187, "", 0, 0, 0, -1);

--着地
SE010 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 298, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 274, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE011, 151 );
SE012 = playSeVer2( spep_0 + 274, 1192, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 286, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE013, 158 );

--飛び上がる
SE014 = playSeVer2( spep_0 + 326, 1119, "", 0, 10, 0, -1);
setStartTimeMs( SE014,  533 );
SE015 = playSeVer2( spep_0 + 326, 1452, "",spep_0 + 442, 0, 22, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 406f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ライダーキック
SE017 = playSeVer2( spep_1 + 84, 1116, "",spep_2 + 48, 0, 24, -1);
SE018 = playSeVer2( spep_1 + 84, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 84, 1258, "",spep_2 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 71 );
SE020 = playSeVer2( spep_1 + 84, 1304, "",spep_2 + 84, 0, 16, -1);

-------------------------------------------------
-- キックから踏みつけ：前
-------------------------------------------------
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- キックから踏みつけ：前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- キックから踏みつけ：後(ef_002b)
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
setDisp( spep_2 + 26 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 26 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 26 + OFFSET_X, 1, -15.6, 8.7 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -15.6, 8.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -15.7, 8.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -15.7, 8.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -15.8, 7.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -15.8, 7.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -15.9, 7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -15.9, 7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -16.1, 6.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -16.1, 6.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -16.3, 5.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -16.3, 5.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -16.6, 4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -16.6, 4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -16.9, 2.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -16.9, 2.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -17.2, 1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -17.2, 1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -17.6, -0.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -17.6, -0.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -18, -2.8 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -18, -2.8 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -18.5, -5.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -18.5, -5.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -19.1, -7.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -19.1, -7.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -19.7, -10.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -19.7, -10.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -20.5, -14.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -20.5, -14.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -26.6, -109 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -26.6, -109 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -26.6, -120.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -26.6, -120.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -45, -190.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -45, -190.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -44, -210.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -44, -210.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -149.9, -518.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -149.9, -518.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -122.2, -576 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -122.2, -576 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -131.9, -538.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -131.9, -538.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -80.4, -674.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -80.4, -674.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -209.2, -559 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -209.2, -559 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -117.2, -639 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -117.2, -639 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -130.1, -552 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -130.1, -552 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -153.5, -607.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -153.5, -607.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -93.6, -594.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -93.6, -594.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -125.8, -607.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -125.8, -607.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -120, -586.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -120, -586.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -98.8, -592.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -98.8, -592.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -122.3, -601.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -122.3, -601.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -104.6, -590.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -104.6, -590.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -111.4, -598.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -111.4, -598.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -105.2, -607 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -105.2, -607 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 75.7, -220.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 75.7, -220.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 73.3, -217.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 73.3, -217.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 70.9, -215.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 70.9, -215.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 68.5, -212.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 68.5, -212.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 66.2, -210.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 66.2, -210.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 63.8, -207.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 63.8, -207.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 61.4, -205.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 61.4, -205.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 59, -202.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 59, -202.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 56.6, -200 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 56.6, -200 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 55.9, -199.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 55.9, -199.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 55.4, -199.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 55.4, -199.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 54.9, -198.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 54.9, -198.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 54.5, -198.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 54.5, -198.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 54.1, -198.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 54.1, -198.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 53.7, -198 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 53.7, -198 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 53.4, -197.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 53.4, -197.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 53.1, -197.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 53.1, -197.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 52.8, -197.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 52.8, -197.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 52.5, -197.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 52.5, -197.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 52.3, -197 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 52.3, -197 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 52, -196.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 52, -196.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 51.8, -196.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 51.8, -196.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 51.6, -196.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 51.6, -196.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 51.4, -196.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 51.4, -196.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 51.2, -196.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 51.2, -196.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 51, -196 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 51, -196 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 50.8, -195.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 50.8, -195.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 50.6, -195.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 50.6, -195.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 50.4, -195.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 50.4, -195.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 50.2, -195.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 50.2, -195.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 50.1, -195.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 50.1, -195.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 49.9, -195.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 49.9, -195.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 49.8, -195.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 49.8, -195.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 49.6, -195.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 49.6, -195.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 49.5, -195 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 49.5, -195 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 49.3, -194.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 49.3, -194.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 49.2, -194.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 49.2, -194.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 49, -194.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 49, -194.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 48.9, -194.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 48.9, -194.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 48.8, -194.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 48.8, -194.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 48.6, -194.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 48.6, -194.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 48.5, -194.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 48.5, -194.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 48.4, -194.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 48.4, -194.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 48.3, -194.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 48.3, -194.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 48.2, -194.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 48.2, -194.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 48.1, -194 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 48.1, -194 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 48, -193.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 48, -193.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 47.8, -193.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 47.8, -193.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 47.7, -193.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 47.7, -193.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 47.6, -193.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 47.6, -193.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 47.5, -193.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 47.5, -193.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 47.4, -193.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 47.4, -193.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 47.3, -193.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 47.3, -193.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 47.3, -193.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 47.3, -193.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 47.2, -193.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 47.2, -193.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 47.1, -193.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 47.1, -193.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47, -193.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 47, -193.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 46.9, -193.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 46.9, -193.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 46.8, -193.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 46.8, -193.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 46.7, -193.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 46.7, -193.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 46.7, -193 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 46.7, -193 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 46.6, -193 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 46.6, -193 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 46.5, -192.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 46.5, -192.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 46.4, -192.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 46.4, -192.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 46.3, -192.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 46.3, -192.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 46.2, -192.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 46.2, -192.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 46.1, -192.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 46.1, -192.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 46, -192.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 46, -192.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 46, -192.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 46, -192.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 45.9, -192.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 45.9, -192.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 45.8, -192.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 45.8, -192.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 45.7, -192.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 45.7, -192.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 45.7, -192.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 45.7, -192.2 , 0 );

setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 17.85, 17.85 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 17.85, 17.85 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 26 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -1 );


-- ** 音 ** --
--空気音
SE021 = playSeVer2( spep_2 + 100, 1278, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE021, 37 );
setStartTimeMs( SE021,  1167 );

--敵ヒット
SE022 = playSeVer2( spep_2 + 60, 1159, "",spep_2 + 246, 0, 106, -1);
setSeVolumeByWorkId( spep_2 + 60, SE022, 83 );
SE023 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_2 + 90, 8, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 106); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 260f -6f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場からジャンプ
-------------------------------------------------
MAX_FRAME_0 = 406;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場からジャンプ：前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場からジャンプ：後(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
--[[
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -146, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -146, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 118.8, -258.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 118.8, -258.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 122, -258.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 122, -258.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 125.1, -258.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 125.1, -258.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 128.3, -258.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 128.3, -258.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 131.4, -258.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 131.4, -258.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 134.6, -258.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 134.6, -258.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 137.7, -258.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 137.7, -258.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 140.9, -258.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.9, -258.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 144.1, -258.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 144.1, -258.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 147.2, -258.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 147.2, -258.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 150.4, -258.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 150.4, -258.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 153.5, -258.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 153.5, -258.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 156.7, -258.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 156.7, -258.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 159.9, -258.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 159.9, -258.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 163, -258.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 163, -258.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 166.2, -258.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 166.2, -258.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 169.3, -258.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 169.3, -258.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 172.5, -258.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 172.5, -258.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 175.6, -258.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 175.6, -258.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 178.8, -258.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 178.8, -258.6 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 98 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -15 );


--敵の動き2
setDisp( spep_0 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 156 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 156 + OFFSET_X, 1, 75, -90 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 75, -90 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -3.9, 51 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -3.9, 51 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 2.1, 79 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 2.1, 79 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -47.9, 51 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -47.9, 51 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -27.9, 73 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -27.9, 73 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -26.9, 69 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -26.9, 69 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -25.9, 65 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -25.9, 65 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -23.9, 71 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -23.9, 71 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -25.9, 67 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -25.9, 67 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -27.9, 68 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -27.9, 68 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -39.7, 73.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -39.7, 73.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -41.7, 73.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -41.7, 73.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -42.7, 74.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -42.7, 74.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -42.7, 74.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -42.7, 74.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -42.6, 74.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -42.6, 74.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -44.1, 75.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -44.1, 75.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -44, 76.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -44, 76.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -45.1, 77 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -45.1, 77 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -45, 77.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -45, 77.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -45, 77.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -45, 77.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -46.5, 78.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -46.5, 78.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -46.4, 78.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -46.4, 78.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -47.3, 79.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -47.3, 79.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -47.3, 79.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -47.3, 79.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -47.2, 79.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -47.2, 79.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -48.8, 81 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -48.8, 81 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -48.8, 81.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -48.8, 81.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -49.7, 82 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -49.7, 82 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -49.6, 82.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -49.6, 82.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -49.5, 82.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -49.5, 82.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -51, 83.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -51, 83.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -51, 83.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -51, 83.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -52, 84.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -52, 84.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -52, 84.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -52, 84.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -51.9, 84.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -51.9, 84.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -53.3, 86.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -53.3, 86.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -53.3, 86.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -53.3, 86.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -54.3, 87 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -54.3, 87 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -54.2, 87.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -54.2, 87.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -54.2, 87.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -54.2, 87.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -55.7, 88.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -55.7, 88.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -55.6, 88.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -55.6, 88.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -56.6, 89.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -56.6, 89.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -56.6, 89.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -56.6, 89.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -56.5, 89.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -56.5, 89.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -58, 91.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -58, 91.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -57.9, 91.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -57.9, 91.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -59, 92.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -59, 92.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -61, 88.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -61, 88.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -59, 88.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -59, 88.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -56, 83.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -56, 83.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -59.7, 86.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -59.7, 86.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -63.3, 89.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -63.3, 89.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -67, 93 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -67, 93 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -70.7, 96.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -70.7, 96.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -74.3, 100.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -74.3, 100.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -78, 103 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -78, 103 , 0 );

setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.85, 2.85 );

setRotateKey( spep_0 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -16 );


-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 58, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 64, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE003, 79 );

--飛び上がる
SE004 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 78, 44, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 122; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り
SE008 = playSeVer2( spep_0 + 140, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1187, "", 0, 0, 0, -1);

--着地
SE010 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 298, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 274, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE011, 151 );
SE012 = playSeVer2( spep_0 + 274, 1192, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 286, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE013, 158 );

--飛び上がる
SE014 = playSeVer2( spep_0 + 326, 1119, "", 0, 10, 0, -1);
setStartTimeMs( SE014,  533 );
SE015 = playSeVer2( spep_0 + 326, 1452, "",spep_0 + 442, 0, 22, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 406f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ライダーキック
SE017 = playSeVer2( spep_1 + 84, 1116, "",spep_2 + 48, 0, 24, -1);
SE018 = playSeVer2( spep_1 + 84, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 84, 1258, "",spep_2 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 71 );
SE020 = playSeVer2( spep_1 + 84, 1304, "",spep_2 + 84, 0, 16, -1);

-------------------------------------------------
-- キックから踏みつけ：前
-------------------------------------------------
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- キックから踏みつけ：前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- キックから踏みつけ：後(ef_002b)
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
setDisp( spep_2 + 26 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 26 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 26 + OFFSET_X, 1, -15.6, 8.7 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -15.6, 8.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -15.7, 8.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -15.7, 8.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -15.8, 7.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -15.8, 7.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -15.9, 7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -15.9, 7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -16.1, 6.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -16.1, 6.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -16.3, 5.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -16.3, 5.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -16.6, 4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -16.6, 4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -16.9, 2.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -16.9, 2.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -17.2, 1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -17.2, 1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -17.6, -0.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -17.6, -0.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -18, -2.8 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -18, -2.8 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -18.5, -5.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -18.5, -5.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -19.1, -7.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -19.1, -7.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -19.7, -10.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -19.7, -10.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -20.5, -14.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -20.5, -14.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -26.6, -109 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -26.6, -109 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -26.6, -120.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -26.6, -120.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -45, -190.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -45, -190.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -44, -210.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -44, -210.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -149.9, -518.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -149.9, -518.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -122.2, -576 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -122.2, -576 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -131.9, -538.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -131.9, -538.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -80.4, -674.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -80.4, -674.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -209.2, -559 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -209.2, -559 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -117.2, -639 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -117.2, -639 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -130.1, -552 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -130.1, -552 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -153.5, -607.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -153.5, -607.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -93.6, -594.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -93.6, -594.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -125.8, -607.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -125.8, -607.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -120, -586.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -120, -586.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -98.8, -592.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -98.8, -592.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -122.3, -601.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -122.3, -601.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -104.6, -590.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -104.6, -590.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -111.4, -598.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -111.4, -598.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -105.2, -607 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -105.2, -607 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 75.7, -220.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 75.7, -220.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 73.3, -217.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 73.3, -217.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 70.9, -215.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 70.9, -215.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 68.5, -212.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 68.5, -212.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 66.2, -210.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 66.2, -210.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 63.8, -207.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 63.8, -207.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 61.4, -205.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 61.4, -205.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 59, -202.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 59, -202.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 56.6, -200 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 56.6, -200 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 55.9, -199.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 55.9, -199.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 55.4, -199.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 55.4, -199.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 54.9, -198.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 54.9, -198.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 54.5, -198.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 54.5, -198.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 54.1, -198.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 54.1, -198.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 53.7, -198 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 53.7, -198 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 53.4, -197.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 53.4, -197.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 53.1, -197.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 53.1, -197.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 52.8, -197.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 52.8, -197.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 52.5, -197.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 52.5, -197.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 52.3, -197 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 52.3, -197 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 52, -196.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 52, -196.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 51.8, -196.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 51.8, -196.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 51.6, -196.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 51.6, -196.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 51.4, -196.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 51.4, -196.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 51.2, -196.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 51.2, -196.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 51, -196 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 51, -196 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 50.8, -195.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 50.8, -195.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 50.6, -195.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 50.6, -195.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 50.4, -195.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 50.4, -195.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 50.2, -195.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 50.2, -195.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 50.1, -195.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 50.1, -195.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 49.9, -195.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 49.9, -195.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 49.8, -195.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 49.8, -195.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 49.6, -195.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 49.6, -195.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 49.5, -195 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 49.5, -195 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 49.3, -194.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 49.3, -194.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 49.2, -194.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 49.2, -194.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 49, -194.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 49, -194.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 48.9, -194.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 48.9, -194.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 48.8, -194.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 48.8, -194.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 48.6, -194.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 48.6, -194.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 48.5, -194.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 48.5, -194.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 48.4, -194.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 48.4, -194.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 48.3, -194.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 48.3, -194.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 48.2, -194.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 48.2, -194.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 48.1, -194 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 48.1, -194 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 48, -193.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 48, -193.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 47.8, -193.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 47.8, -193.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 47.7, -193.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 47.7, -193.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 47.6, -193.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 47.6, -193.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 47.5, -193.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 47.5, -193.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 47.4, -193.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 47.4, -193.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 47.3, -193.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 47.3, -193.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 47.3, -193.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 47.3, -193.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 47.2, -193.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 47.2, -193.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 47.1, -193.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 47.1, -193.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47, -193.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 47, -193.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 46.9, -193.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 46.9, -193.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 46.8, -193.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 46.8, -193.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 46.7, -193.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 46.7, -193.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 46.7, -193 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 46.7, -193 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 46.6, -193 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 46.6, -193 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 46.5, -192.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 46.5, -192.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 46.4, -192.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 46.4, -192.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 46.3, -192.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 46.3, -192.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 46.2, -192.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 46.2, -192.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 46.1, -192.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 46.1, -192.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 46, -192.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 46, -192.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 46, -192.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 46, -192.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 45.9, -192.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 45.9, -192.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 45.8, -192.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 45.8, -192.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 45.7, -192.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 45.7, -192.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 45.7, -192.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 45.7, -192.2 , 0 );

setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 15.3, 15.3 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 17.85, 17.85 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 17.85, 17.85 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 17, 17 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 26 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -1 );


-- ** 音 ** --
--空気音
SE021 = playSeVer2( spep_2 + 100, 1278, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE021, 37 );
setStartTimeMs( SE021,  1167 );

--敵ヒット
SE022 = playSeVer2( spep_2 + 60, 1159, "",spep_2 + 246, 0, 106, -1);
setSeVolumeByWorkId( spep_2 + 60, SE022, 83 );
SE023 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_2 + 90, 8, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 106); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 260f -6f


end