--4027990:LR_超サイヤ人ゴッドSSゴジータ_気弾系必殺技カウンター
--sp_effect_a9_00120
--c0022

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162627; --気弾カウンター〜回転蹴り ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------


spep_0 = 28; --冒頭顔カットイン入るため28F固定


-------------------------------------------------
-- 気弾カウンター〜回転蹴り
-------------------------------------------------

MAX_FRAME_0 = 278;

setupMovie(spep_0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 - 2, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 - 2, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 - 2, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 - 2, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 - 2, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 56 + OFFSET_X, 1, 119 , 4);
changeAnime( spep_0 + 80 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 84 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 56 + OFFSET_X, 1, 103.4, -34.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 103.4, -34.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 103.4, -34.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 84.4, -17.2 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 84.4, -17.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 116.4, -55.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 116.4, -55.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 117.4, -23.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 117.4, -23.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 94.4, -43.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 94.4, -43.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 93.4, -26.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 93.4, -26.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 125.4, -51.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 125.4, -51.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 119.4, -31.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 119.4, -31.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 109.4, -45.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 109.4, -45.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 110.4, -32.3 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 110.4, -32.3 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 115.4, -47.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 115.4, -47.3 , 0 );

setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 56 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 92.7, -117.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 92.7, -117.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 92.9, -116.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 92.9, -116.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 93.1, -116.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 93.1, -116.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 93.3, -115.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 93.3, -115.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 82.3, -95.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 82.3, -95.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 82.5, -95.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 82.5, -95.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 113.3, -130.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 113.3, -130.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 115.2, -100.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 115.2, -100.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 115.5, -99.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 115.5, -99.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 115.8, -99 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 115.8, -99 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 81.8, -122.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 81.8, -122.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 82, -121.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 82, -121.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 87.4, -92 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 87.4, -92 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 87.5, -91.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 87.5, -91.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 117.2, -116.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 117.2, -116.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 117.4, -115.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 117.4, -115.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 116.7, -94.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 116.7, -94.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 101, -113.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 101, -113.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 101.2, -113 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 101.2, -113 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 101.4, -97.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 101.4, -97.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 101.6, -96.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 101.6, -96.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 101.9, -96.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 101.9, -96.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 117.2, -106.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 117.2, -106.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 121.8, -96.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 121.8, -96.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 122.1, -95.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 122.1, -95.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 113.7, -105 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 113.7, -105 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 113.9, -104.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 113.9, -104.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 116.3, -95.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 116.3, -95.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 116.6, -94.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 116.6, -94.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 127.9, -102.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 127.9, -102.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 128.2, -102.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 128.2, -102.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 126.3, -96.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 126.3, -96.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 126.6, -95.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 126.6, -95.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 126.9, -95.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 126.9, -95.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 121.5, -92.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 121.5, -92.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 121.8, -91.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 121.8, -91.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 122.1, -91.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 122.1, -91.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 122.4, -90.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 122.4, -90.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 122.6, -90.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 122.6, -90.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 122.9, -89.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 122.9, -89.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 123.2, -89.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 123.2, -89.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 123.4, -88.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 123.4, -88.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 123.7, -88 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 123.7, -88 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 124, -87.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 124, -87.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 124.3, -86.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 124.3, -86.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 124.5, -86.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 124.5, -86.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 124.8, -85.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 124.8, -85.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 125.1, -85.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 125.1, -85.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 125.4, -84.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 125.4, -84.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 125.6, -84.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 125.6, -84.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 125.9, -83.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 125.9, -83.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 126.2, -83 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 126.2, -83 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 126.5, -82.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 126.5, -82.5 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -22.3 );

-- ** 音 ** --
--シールド張る
SE001 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 178 );
SE004 = playSeVer2( spep_0 + 4, 1312, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 136 );
SE002 = playSeVer2( spep_0 + 4, 1423, "",spep_0 + 100, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 129 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--気弾跳ね返す
SE005 = playSeVer2( spep_0 + 54, 1256, "", 0, 0, 0, -1);
setPitch( spep_0 + 54, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 54, SE005, 130 );
SE006 = playSeVer2( spep_0 + 54, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 94 );
SE007 = playSeVer2( spep_0 + 58, 1306, "",spep_0 + 92, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 58, 1177, "",spep_0 + 92, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 58, SE008, 71 );
SE009 = playSeVer2( spep_0 + 60, 1402, "",spep_0 + 94, 0, 16, -1);
--爆発
SE010 = playSeVer2( spep_0 + 74, 1023, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 78, 1011, "", 0, 0, 0, -1);
--瞬間移動
SE012 = playSeVer2( spep_0 + 88, 1109, "", 0, 0, 0, -1);
--回転しながらジャンプ
SE013 = playSeVer2( spep_0 + 104, 1117, "",spep_0 + 168, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 104, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE014, 76 );
SE015 = playSeVer2( spep_0 + 104, 1116, "",spep_0 + 170, 0, 32, -1);
SE016 = playSeVer2( spep_0 + 104, 1388, "",spep_0 + 168, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 104, SE016, 146 );
--ラスト蹴り
SE017 = playSeVer2( spep_0 + 154, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE018, 79 );
SE019 = playSeVer2( spep_0 + 158, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE019, 64 );

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 170, SE017, 0 );
    stopSe( spep_0 + 170, SE018, 0 );
    stopSe( spep_0 + 170, SE019, 0 );

    stopMovie( spep_0 + 171 );   -- 停止

    setDisp( spep_0 + 170, 1, 1 );
    setMoveKey( spep_0 + 170, 1, 3000, 0 , 0 );
    setScaleKey( spep_0 + 170, 1, 0.4, 0.4 );
    setRotateKey( spep_0 + 170, 1, 0 );

    endPhase( spep_0 + 172 );
    
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

--終わり
dealDamage( spep_0 + 174 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 278F

end