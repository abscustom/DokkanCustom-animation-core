-- 9029440:LR_伝説の超サイヤ人ブロリー_アクティブ必殺技+フィールド展開：大地を砕く剛腕_エネミー側
-- sp_effect_b1_00293
-- sp2782

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


--エフェクト(味方)
SP_01  = 163120;  --   ef_001 アクティブ必殺技+フィールド展開 前面
SP_01b = 163121;  --   ef_001_b アクティブ必殺技+フィールド展開 背面

--エフェクト(敵)
SP_01r = 163122;  --   ef_001_r アクティブ必殺技+フィールド展開 前面 敵側

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



else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

------------------------------------------------------
-- アクティブ必殺技+フィールド展開
------------------------------------------------------
MAX_FRAME_0 = 970;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- アクティブ必殺技+フィールド展開 前面(ef_001_r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 106 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 108 + OFFSET_X, 1,7 );
changeAnime( spep_0 + 150 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 258 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 106 + OFFSET_X, 1, -227.3, -374.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -227.3, -374.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -48, -219.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -48, -219.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -45.8, -214.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -45.8, -214.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 441.1, -32.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 441.1, -32.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 24.4, -187.8 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 24.4, -187.8 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 22.2, -201.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 22.2, -201.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -46.7, -211.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -46.7, -211.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -14.4, -261.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -14.4, -261.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 445.6, -23.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 445.6, -23.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -46.7, -222.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -46.7, -222.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -44.4, -211.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -44.4, -211.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 22.2, -201.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 22.2, -201.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -21.1, -245.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -21.1, -245.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -14.4, -261.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -14.4, -261.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -42.2, -213.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -42.2, -213.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -46.7, -222.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -46.7, -222.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -18.9, -245.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -18.9, -245.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -1.5, -248.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -1.5, -248.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -1.5, -267.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -1.5, -267.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -1.5, -248.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -1.5, -248.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -2.5, -273 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -2.5, -273 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -2.5, -247.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -2.5, -247.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -2.5, -274.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -2.5, -274.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -5, -255.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -5, -255.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -5, -268.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -5, -268.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -5, -244.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -5, -244.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -6, -244.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -6, -244.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -6.9, -264.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -6.9, -264.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -6.9, -255.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -6.9, -255.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -6.6, -264.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -6.6, -264.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -6.6, -258.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -6.6, -258.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -6.6, -273.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -6.6, -273.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -10, -257.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -10, -257.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -10, -270.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -10, -270.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -10, -254.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -10, -254.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -11.2, -268.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -11.2, -268.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -11.2, -263.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -11.2, -263.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -8.6, -248.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -8.6, -248.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -8.5, -248.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -8.5, -248.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -13.9, -247.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -13.9, -247.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -19.1, -245.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -19.1, -245.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -23.1, -244.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -23.1, -244.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -27.5, -244.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -27.5, -244.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -32.3, -244.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -32.3, -244.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -38.2, -243.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -38.2, -243.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -44.4, -243 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -44.4, -243 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -47.5, -243.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -47.5, -243.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -14.9, 7.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -14.9, 7.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -14.9, 9.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -14.9, 9.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -14.9, 5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -14.9, 5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -14.9, 8.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -14.9, 8.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -14.9, 4.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -14.9, 4.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -14.9, 8.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -14.9, 8.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -14.9, 4.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -14.9, 4.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -14.9, 8.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -14.9, 8.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -14.9, 4.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -14.9, 4.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -14.9, 8.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -14.9, 8.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -14.9, 4.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -14.9, 4.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -14.9, 8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -14.9, 8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -14.9, 3.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -14.9, 3.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -14.9, 7.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -14.9, 7.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -14.9, 7.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -14.9, 7.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -14.9, 7.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -14.9, 7.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -14.9, 3.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -14.9, 3.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -14.9, 7.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -14.9, 7.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -14.9, 3.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -14.9, 3.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -14.9, 7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -14.9, 7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -14.9, 6.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -14.9, 6.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -14.9, 6.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -14.9, 6.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -14.9, 2.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -14.9, 2.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -14.9, 6.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -14.9, 6.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -14.9, 6.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -14.9, 6.4 , 0 );

setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 106 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -54.7 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -54.7 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -68.3 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -72.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -72.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -86.9 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1304, "",spep_0 + 140, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 61 );
setPitch( spep_0 + 0, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE005 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 65 );
setTimeStretch( SE005, 1.65, 30, 4 );

--セリフカットイン
--SE004 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 2, SE004, 63 );


-- ** ボイス ** --
--「うおおお！！！」
--SE_6_832 = playVoice( spep_0 + 2, 832 );
--setVoiceVolume( spep_0 + 2, 832, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
setVoiceVolume( SP_dodge - 12, SE_6_832, 0 );

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--つかむ
SE006 = playSeVer2( spep_0 + 92, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 100, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 100, 1010, "", 0, 0, 0, -1);

--地面めりこむ
SE009 = playSeVer2( spep_0 + 140, 1023, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 140, 1159, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 158, 1188, "", 0, 0, 0, -1);

--地響き
SE012 = playSeVer2( spep_0 + 238, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE012, 79 );
SE017 = playSeVer2( spep_0 + 294, 1168, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE017, 56 );

--地面割れる
SE013 = playSeVer2( spep_0 + 248, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE013, 138 );
setPitch( spep_0 + 248, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 262, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE014, 145 );
setPitch( spep_0 + 262, SE014, -800 );
setTimeStretch( SE014, 0.47, 30, 4 );
SE015 = playSeVer2( spep_0 + 278, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE015, 148 );
setPitch( spep_0 + 278, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );
SE016 = playSeVer2( spep_0 + 294, 1041, "", 0, 0, 0, -1);
setPitch( spep_0 + 294, SE016, -1200 );
setTimeStretch( SE016, 0.2, 30, 4 );
SE018 = playSeVer2( spep_0 + 314, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 150 );
setPitch( spep_0 + 314, SE018, -1200 );
setTimeStretch( SE018, 0.2, 30, 4 );
SE019 = playSeVer2( spep_0 + 336, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE019, 157 );
setPitch( spep_0 + 336, SE019, -1200 );
setTimeStretch( SE019, 0.2, 30, 4 );

--画面遷移
SE020 = playSeVer2( spep_0 + 366, 1116, "",spep_0 + 432, 0, 28, -1);

--溶岩音
SE021 = playSeVer2( spep_0 + 376, 1165, "",spep_0 + 760, 100, 110, -1);
setSeVolumeByWorkId( spep_0 + 376, SE021, 126 );
SE022 = playSeVer2( spep_0 + 406, 1268, "", 0, 58, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE022, 129 );

--溶岩あふれる
SE023 = playSeVer2( spep_0 + 524, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE023, 327 );
SE024 = playSeVer2( spep_0 + 532, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE024, 141 );
SE025 = playSeVer2( spep_0 + 548, 1068, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「はははははッ！！！」
--playVoice( spep_0 + 784, 833 );
--setVoiceVolume( spep_0 + 784, 833, 100 );

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 848 );
endPhase( spep_0 + MAX_FRAME_0 -2); -- 終了フレーム 970f -2



end
