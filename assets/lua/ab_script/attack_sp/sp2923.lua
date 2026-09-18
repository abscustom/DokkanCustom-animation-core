--1032060:SSR_人造人間16号_必殺技：ロケットパンチ
--sp_effect_a9_00156
--sp2923

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164170;  --ef_001 カード前まで 前面
SP_01b = 164171;  --ef_001b カード前まで 背面
SP_02  = 164173;  --ef_002 カード後 前面
SP_02b = 164174;  --ef_002b カード後 背面

--エフェクト(敵)
SP_01r = 164172;  --ef_001r カード前まで 前面 敵側
SP_02r = 164175;  --ef_002r カード後 前面 敵側


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
-- カード前まで
-------------------------------------------------
MAX_FRAME_0 = 312;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前まで 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前まで 背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 36;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -185, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -185, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -185, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 174 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 106 );

--敵Y座標調整用
b = -50;

setMoveKey( spep_0 + 162 + OFFSET_X, 1, 82.3, -5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 82.3, -5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 82.5, -6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 82.5, -6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 82.4, -6.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 82.4, -6.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 81.8, -6.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 81.8, -6.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 80.9, -6.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 80.9, -6.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 79.6, -7.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 79.6, -7.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 94.3, 61.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 94.3, 61.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 45.2, 1.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 45.2, 1.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 67.4, 29.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 67.4, 29.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 115.2, 9.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 115.2, 9.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 102.7, 28.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 102.7, 28.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 119.2, 13.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 119.2, 13.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 138.1, 44.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 138.1, 44.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 148.2, 23 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 148.2, 23 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 155.3, 35.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 155.3, 35.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 158.2, 36.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 158.2, 36.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 156.4, 35.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 156.4, 35.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 151.9, 34.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 151.9, 34.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 145.8, 32.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 145.8, 32.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 138.3, 30.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 138.3, 30.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 129.9, 28.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 129.9, 28.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 120.5, 25.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 120.5, 25.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 110.5, 22.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 110.5, 22.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 99.7, 19.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 99.7, 19.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 88.1, 16.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 88.1, 16.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 96.9, 40 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 96.9, 40 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 109, 10.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 109, 10.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 131.8, 68.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 131.8, 68.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 138.3, 5.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 138.3, 5.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 116.1, 40.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 116.1, 40.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 151.1, 35.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 151.1, 35.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 157.6, 35.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 157.6, 35.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 170.4, 35.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 170.4, 35.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 176.9, 35.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 176.9, 35.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 172.6, 35.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 172.6, 35.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 168.3, 35.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 168.3, 35.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 159.8, 35.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 159.8, 35.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 155.5, 35.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 155.5, 35.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 151.2, 35.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 151.2, 35.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 146.9, 35.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 146.9, 35.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 144, 31.2 + b, 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 144, 31.2 + b, 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 171.8, 24.7 + b, 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 171.8, 24.7 + b, 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 111.1, 1.1 + b, 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 111.1, 1.1 + b, 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 137.5, 59 + b, 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 137.5, 59 + b, 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 137.5, -14.6 + b, 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 137.5, -14.6 + b, 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 108.9, 50.4 + b, 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 108.9, 50.4 + b, 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 137.5, 16.1 + b, 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 137.5, 16.1 + b, 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 219.5, 16.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 219.5, 16.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 301.6, 16.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 301.6, 16.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 383.6, 16.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 383.6, 16.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 465.6, 16 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 465.6, 16 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 547.6, 16 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 547.6, 16 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -35.7 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 82 );
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 2, 9, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 86, 1019, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 150, 1019, "",spep_0 + 190, 0, 14, -1);

--ズーム
SE008 = playSeVer2( spep_0 + 112, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--タックル
SE010 = playSeVer2( spep_0 + 164, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 170, 1009, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_0 + 200, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE013, 141 );
SE014 = playSeVer2( spep_0 + 206, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE016, 75 );
SE017 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);

--構える
SE018 = playSeVer2( spep_0 + 284, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE018,  400 );
SE019 = playSeVer2( spep_0 + 282, 1208, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 294, 1389, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --312f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ロケットパンチ溜め
SE022 = playSeVer2( spep_1 + 84, 1136, "",spep_1 + 174, 10, 18, -1);
setStartTimeMs( SE022,  967 );
SE023 = playSeVer2( spep_1 + 84, 1158, "",spep_1 + 172, 0, 18, -1);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 430;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

--敵Y座標調整用
c = -40;

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 51.5, 16.7 + c, 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 51.5, 16.7 + c, 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );

--敵サイズ調整
a = 1.0;

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2 + a, 2 + a );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 13.3 );

setBlendColor( spep_2 + 180 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 273 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 274 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--ロケットパンチ発射
SE024 = playSeVer2( spep_2 + 54, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 54, 1027, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 54, 1145, "", 0, 0, 0, -1);

--パンチ飛んでいく
SE027 = playSeVer2( spep_2 + 98, 1116, "",spep_2 + 158, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 110, 1314, "",spep_2 + 312, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 110, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 110, 1121, "",spep_2 + 320, 0, 58, -1);

--敵ヒット
SE031 = playSeVer2( spep_2 + 178, 1009, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 178, 1011, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE033 = playSeVer2( spep_2 + 254, 1052, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 254, 1027, "", 0, 0, 0, -1);

--岩激突
SE035 = playSeVer2( spep_2 + 288, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 308 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  430f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カード前まで
-------------------------------------------------
MAX_FRAME_0 = 312;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カード前まで 前面(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前まで 背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 185, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 185, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 185, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 174 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 106 );

--敵Y座標調整用
b = -50;

setMoveKey( spep_0 + 162 + OFFSET_X, 1, 82.3, -5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 82.3, -5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 82.5, -6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 82.5, -6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 82.4, -6.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 82.4, -6.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 81.8, -6.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 81.8, -6.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 80.9, -6.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 80.9, -6.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 79.6, -7.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 79.6, -7.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 94.3, 61.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 94.3, 61.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 45.2, 1.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 45.2, 1.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 67.4, 29.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 67.4, 29.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 115.2, 9.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 115.2, 9.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 102.7, 28.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 102.7, 28.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 119.2, 13.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 119.2, 13.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 138.1, 44.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 138.1, 44.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 148.2, 23 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 148.2, 23 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 155.3, 35.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 155.3, 35.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 158.2, 36.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 158.2, 36.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 156.4, 35.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 156.4, 35.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 151.9, 34.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 151.9, 34.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 145.8, 32.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 145.8, 32.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 138.3, 30.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 138.3, 30.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 129.9, 28.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 129.9, 28.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 120.5, 25.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 120.5, 25.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 110.5, 22.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 110.5, 22.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 99.7, 19.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 99.7, 19.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 88.1, 16.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 88.1, 16.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 96.9, 40 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 96.9, 40 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 109, 10.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 109, 10.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 131.8, 68.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 131.8, 68.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 138.3, 5.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 138.3, 5.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 116.1, 40.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 116.1, 40.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 151.1, 35.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 151.1, 35.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 157.6, 35.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 157.6, 35.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 170.4, 35.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 170.4, 35.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 176.9, 35.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 176.9, 35.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 172.6, 35.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 172.6, 35.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 168.3, 35.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 168.3, 35.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 164, 35.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 159.8, 35.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 159.8, 35.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 155.5, 35.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 155.5, 35.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 151.2, 35.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 151.2, 35.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 146.9, 35.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 146.9, 35.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 144, 31.2 + b, 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 144, 31.2 + b, 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 171.8, 24.7 + b, 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 171.8, 24.7 + b, 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 111.1, 1.1 + b, 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 111.1, 1.1 + b, 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 137.5, 59 + b, 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 137.5, 59 + b, 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 137.5, -14.6 + b, 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 137.5, -14.6 + b, 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 108.9, 50.4 + b, 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 108.9, 50.4 + b, 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 137.5, 16.1 + b, 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 137.5, 16.1 + b, 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 219.5, 16.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 219.5, 16.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 301.6, 16.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 301.6, 16.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 383.6, 16.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 383.6, 16.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 465.6, 16 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 465.6, 16 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 547.6, 16 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 547.6, 16 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -35.7 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 82 );
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 2, 9, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 86, 1019, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 150, 1019, "",spep_0 + 190, 0, 14, -1);

--ズーム
SE008 = playSeVer2( spep_0 + 112, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--タックル
SE010 = playSeVer2( spep_0 + 164, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 170, 1009, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_0 + 200, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE013, 141 );
SE014 = playSeVer2( spep_0 + 206, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE016, 75 );
SE017 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);

--構える
SE018 = playSeVer2( spep_0 + 284, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE018,  400 );
SE019 = playSeVer2( spep_0 + 282, 1208, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 294, 1389, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --312f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ロケットパンチ溜め
SE022 = playSeVer2( spep_1 + 84, 1136, "",spep_1 + 174, 10, 18, -1);
setStartTimeMs( SE022,  967 );
SE023 = playSeVer2( spep_1 + 84, 1158, "",spep_1 + 172, 0, 18, -1);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 430;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後 前面(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

--敵Y座標調整用
c = -40;

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 51.5, 16.7 + c, 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 51.5, 16.7 + c, 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );

--敵サイズ調整
a = 1.0;

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2 + a, 2 + a );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 13.3 );

setBlendColor( spep_2 + 180 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 273 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 274 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--ロケットパンチ発射
SE024 = playSeVer2( spep_2 + 54, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 54, 1027, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 54, 1145, "", 0, 0, 0, -1);

--パンチ飛んでいく
SE027 = playSeVer2( spep_2 + 98, 1116, "",spep_2 + 158, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 110, 1314, "",spep_2 + 312, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 110, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 110, 1121, "",spep_2 + 320, 0, 58, -1);

--敵ヒット
SE031 = playSeVer2( spep_2 + 178, 1009, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 178, 1011, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE033 = playSeVer2( spep_2 + 254, 1052, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 254, 1027, "", 0, 0, 0, -1);

--岩激突
SE035 = playSeVer2( spep_2 + 288, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 308 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  430f -4


end
