-- 4028690: UR_トッポ(破壊神モード)_ジャスティスフラッシュ
-- sp_effect_a2_00239
-- sp2689

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162783;  -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001
--SP_01b = 162784;  -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001b
SP_02 = 162787;  -- カードカットイン～フィニッシュ ef_002
--SP_02b = 162788;  -- カードカットイン～フィニッシュ ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 786;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 ); -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
-- 敵の動き1
setDisp( spep_0 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 180 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, 51.1, -132 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 51.1, -132 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 55.5, -132.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 55.5, -132.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 59.8, -133.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 59.8, -133.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 64.1, -133.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 64.1, -133.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 68.3, -134.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 68.3, -134.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 72.3, -134.7 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 72.3, -134.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 76.3, -135.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 76.3, -135.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 80.3, -135.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 80.3, -135.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 84.1, -136.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 84.1, -136.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 87.9, -136.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 87.9, -136.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 91.5, -137.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 91.5, -137.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 95.1, -137.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 95.1, -137.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 98.7, -138.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 98.7, -138.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 102.1, -138.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 102.1, -138.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 105.4, -139 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 105.4, -139 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 108.7, -139.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 108.7, -139.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 111.9, -139.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 111.9, -139.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 115, -140.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 115, -140.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 118.1, -140.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 118.1, -140.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 111.7, -149.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 111.7, -149.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 134.9, -127.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 134.9, -127.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 136.1, -149.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 136.1, -149.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 119.2, -131.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 119.2, -131.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 127.9, -146.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 127.9, -146.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 138.4, -139.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 138.4, -139.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 139.6, -144.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 139.6, -144.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 138.4, -141.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 138.4, -141.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 139.7, -145.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 139.7, -145.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 145.9, -141.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 145.9, -141.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 148.6, -145.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 148.6, -145.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 146.6, -143 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 146.6, -143 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 148.7, -146.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 148.7, -146.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 153.5, -143.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 153.5, -143.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 155.8, -146.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 155.8, -146.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 154.6, -144.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 154.6, -144.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 156.8, -145.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 156.8, -145.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 158.4, -145.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 158.4, -145.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 160, -146 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 160, -146 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -8.8, -74.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -8.8, -74.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 14.8, -45.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 14.8, -45.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 22.2, -36.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 22.2, -36.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 25.9, -31.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 25.9, -31.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 124.8, 135.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 124.8, 135.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 0.1, -1.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 0.1, -1.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 152.8, 3.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 152.8, 3.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -6.2, 162.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -6.2, 162.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 113.1, 128.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 113.1, 128.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 35, 31.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 35, 31.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 105.4, 57.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 105.4, 57.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 48.6, 108.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 48.6, 108.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 85.2, 95.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 85.2, 95.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 63.6, 80.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 63.6, 80.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 86, 80.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 86, 80.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 74.5, 89.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 74.5, 89.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 130.5, 220.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 130.5, 220.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 173, 301.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 173, 301.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 198.8, 342.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 198.8, 342.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 220.6, 367.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 220.6, 367.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 238.8, 380.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 238.8, 380.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 250.8, 387.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 250.8, 387.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 256.7, 393.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 256.7, 393.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 259.4, 398.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 259.4, 398.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 261.7, 403 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 261.7, 403 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 263.8, 407 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 263.8, 407 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 265.7, 410.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 265.7, 410.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 267.3, 413.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 267.3, 413.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 268.7, 416.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 268.7, 416.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 270, 418.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 270, 418.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 271, 420.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 271, 420.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 271.9, 422.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 271.9, 422.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 272.7, 424 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 272.7, 424 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 273.3, 425.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 273.3, 425.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 273.8, 426 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 273.8, 426 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 274.1, 426.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 274.1, 426.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 274.3, 427.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 274.3, 427.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 274.4, 427.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 274.4, 427.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -481.3, 402.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -481.3, 402.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -437.9, 402.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -437.9, 402.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -420.4, 402.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -420.4, 402.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -407.3, 402.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -407.3, 402.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -396.5, 402.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -396.5, 402.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -387.1, 402.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -387.1, 402.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -378.7, 402.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -378.7, 402.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -371.1, 402 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -371.1, 402 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -363.9, 401.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -363.9, 401.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -357.2, 401.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -357.2, 401.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -350.7, 401.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -350.7, 401.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -344.2, 400.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -344.2, 400.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -337.1, 400.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -337.1, 400.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -325.3, 398.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -325.3, 398.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -317.2, 397 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -317.2, 397 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -309.5, 395.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -309.5, 395.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -302.2, 394.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -302.2, 394.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -295.1, 392.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -295.1, 392.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -288.4, 391.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -288.4, 391.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -282, 389.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -282, 389.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -275.9, 388.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -275.9, 388.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -270, 386.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -270, 386.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -264.5, 385.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -264.5, 385.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -259.2, 383.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -259.2, 383.7 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.10, 0.10 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.10, 0.10 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 486 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 520 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 486 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 486 + OFFSET_X, 1, -416, 228.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -416, 228.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -373.7, 203.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -373.7, 203.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -330.5, 178.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -330.5, 178.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -286.4, 153.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -286.4, 153.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -241.3, 127.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -241.3, 127.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -195.1, 100.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -195.1, 100.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -147.8, 73.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -147.8, 73.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -99, 46.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -99, 46.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -88.4, 40.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -88.4, 40.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -75.8, 33.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -75.8, 33.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -60.3, 25.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -60.3, 25.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -39.4, 15 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -39.4, 15 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 13, -11 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 13, -11 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 20.6, -14.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 20.6, -14.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 25, -16.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 25, -16.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 84.2, -68 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 84.2, -68 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -46.2, 48.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -46.2, 48.9 , 0 );

setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 486 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 46.9 );

-- 敵の動き3
setDisp( spep_0 + 558 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 650 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 558 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 558 + OFFSET_X, 1, -11, 5.4 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -11, 5.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -0.9, 4.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -0.9, 4.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -10.3, -4.3 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -10.3, -4.3 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -2.8, -2.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -2.8, -2.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -10.7, 5.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -10.7, 5.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -0.6, 4.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -0.6, 4.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -10, -4.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -10, -4.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -2.6, -2.3 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -2.6, -2.3 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -10.4, 5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -10.4, 5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -0.3, 4.3 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -0.3, 4.3 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -9.8, -4.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -9.8, -4.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -2.3, -2.5 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -2.3, -2.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -10.2, 4.9 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -10.2, 4.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -0.1, 4.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -0.1, 4.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -9.5, -4.7 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -9.5, -4.7 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -2, -2.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -2, -2.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -9.9, 5.5 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -9.9, 5.5 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 3.2, 7.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 3.2, 7.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -14.2, -7.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -14.2, -7.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 2.3, -6.1 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 2.3, -6.1 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -13.8, 9.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -13.8, 9.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 21.4, 18.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 21.4, 18.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -21.3, -17.5 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -21.3, -17.5 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 10.8, -13.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 10.8, -13.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -35.1, 22.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -35.1, 22.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 114.9, -290.3 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 114.9, -290.3 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 148.4, -312.3 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 148.4, -312.3 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 91.5, -217 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 91.5, -217 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 99.9, -221.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 99.9, -221.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 78.7, -183.4 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 78.7, -183.4 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 83.9, -185.8 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 83.9, -185.8 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 68.1, -157.6 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 68.1, -157.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 71.8, -159.1 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 71.8, -159.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 59.1, -136.6 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 59.1, -136.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 61.8, -137.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 61.8, -137.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 51.1, -119 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 51.1, -119 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 53.2, -119.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 53.2, -119.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 44.3, -104.4 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 44.3, -104.4 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 45.7, -104.8 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 45.7, -104.8 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 38.3, -92.2 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 38.3, -92.2 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 39.3, -92.4 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 39.3, -92.4 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 33.1, -82.3 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 33.1, -82.3 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 33.8, -82.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 33.8, -82.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 28.8, -74.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 28.8, -74.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 29, -74.5 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 29, -74.5 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 25.1, -68.7 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 25.1, -68.7 , 0 );

setScaleKey( spep_0 + 558 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.54, 1.54 );

setRotateKey( spep_0 + 558 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 558 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0.26);
setBlendColor( spep_0 + 564 + OFFSET_X, 1, 3, 0, 0, 0, 0.28);
setBlendColor( spep_0 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0.35);
setBlendColor( spep_0 + 572 + OFFSET_X, 1, 3, 0, 0, 0, 0.38);
setBlendColor( spep_0 + 576 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 580 + OFFSET_X, 1, 3, 0, 0, 0, 0.43);
setBlendColor( spep_0 + 584 + OFFSET_X, 1, 3, 0, 0, 0, 0.45);
setBlendColor( spep_0 + 589 + OFFSET_X, 1, 3, 0, 0, 0, 0.5);
setBlendColor( spep_0 + 593 + OFFSET_X, 1, 3, 0, 0, 0, 0.55);
setBlendColor( spep_0 + 597 + OFFSET_X, 1, 3, 0, 0, 0, 0.6);
setBlendColor( spep_0 + 600 + OFFSET_X, 1, 3, 0, 0, 0, 0.7);
setBlendColor( spep_0 + 604 + OFFSET_X, 1, 3, 0, 0, 0, 0.8);
setBlendColor( spep_0 + 607 + OFFSET_X, 1, 3, 0, 0, 0, 0.8);
setBlendColor( spep_0 + 608 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 650 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- 敵の動き4
setDisp( spep_0 + 702 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 730 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 702 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 714 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 702 + OFFSET_X, 1, -80, 42.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -80, 42.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -40.5, 79.2 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -40.5, 79.2 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -125, -11.4 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -125, -11.4 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -57, 24 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -57, 24 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -96.5, 62.7 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -96.5, 62.7 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -75.3, 46.6 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -75.3, 46.6 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 1.9, -13.4 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 1.9, -13.4 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 5.7, -11.5 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 5.7, -11.5 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 48.9, -26.8 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 48.9, -26.8 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 50.5, -28 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 50.5, -28 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 77.4, -40.3 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 77.4, -40.3 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 85.6, -43.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 85.6, -43.7 , 0 );

setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 702 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, -46.7 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
setStartTimeMs( SE001,  1767 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 114, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 52 );

--地面えぐれる
SE005 = playSeVer2( spep_0 + 88, 1011, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 130, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 141 );
SE007 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 130, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE008, 47 );
setTimeStretch( SE008, 1.24, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 168;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE00X, 0);
    
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
--向かってくる２
SE009 = playSeVer2( spep_0 + 184, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 160 );
setPitch( spep_0 + 184, SE009, -800 );
setTimeStretch( SE009, 0.47, 30, 4 );
SE010 = playSeVer2( spep_0 + 192, 1232, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 192, 1269, "",spep_0 + 272, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 25 );

--殴る
SE012 = playSeVer2( spep_0 + 228, 1116, "",spep_0 + 272, 0, 22, -1);
SE013 = playSeVer2( spep_0 + 248, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE014, 76 );
SE015 = playSeVer2( spep_0 + 252, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 262, 1121, "",spep_0 + 400, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 262, SE016, 63 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 292, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 77 );
SE018 = playSeVer2( spep_0 + 314, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 75 );

--気弾溜め
SE019 = playSeVer2( spep_0 + 398, 1442, "",spep_0 + 458, 4, 14, -1);
setSeVolumeByWorkId( spep_0 + 398, SE019, 204 );
setStartTimeMs( SE019,  833 );
SE020 = playSeVer2( spep_0 + 400, 1443, "",spep_0 + 522, 10, 14, -1);
setSeVolumeByWorkId( spep_0 + 400, SE020, 174 );
setStartTimeMs( SE020,  770 );

--オーラ
SE021 = playSeVer2( spep_0 + 360, 1267, "",spep_0 + 532, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 360, SE021, 61 );
SE022 = playSeVer2( spep_0 + 360, 1176, "",spep_0 + 532, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 360, SE022, 62 );

--腕前に出す
SE023 = playSeVer2( spep_0 + 370, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 400, 1296, "",spep_0 + 462, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 400, SE024, 117 );
SE025 = playSeVer2( spep_0 + 400, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE025, 74 );

--気弾発射
SE026 = playSeVer2( spep_0 + 492, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE026, 56 );
SE027 = playSeVer2( spep_0 + 492, 1405, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 492, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE028, 69 );

--爆発
SE029 = playSeVer2( spep_0 + 514, 1023, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 516, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE031 = playSeVer2( spep_0 + 586, 1027, "", 0, 0, 0, -1);

--追いかける
SE032 = playSeVer2( spep_0 + 602, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 602, SE032, 178 );
SE033 = playSeVer2( spep_0 + 602, 1245, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 602, 1269, "",spep_0 + 718, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 602, SE034, 25 );

--構える
SE035 = playSeVer2( spep_0 + 624, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE035, 65 );
setStartTimeMs( SE035,  67 );

--叩きつける
SE036 = playSeVer2( spep_0 + 670, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 680, 1187, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 680, 1120, "", 0, 0, 0, -1);

--地面激突
SE039 = playSeVer2( spep_0 + 710, 1159, "",spep_0 + 816, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 710, SE039, 77 );

--オーラ
SE040 = playSeVer2( spep_0 + 870, 1371, "",spep_0 + 994, 12, 40, -1);
setSeVolumeByWorkId( spep_0 + 870, SE040, 35 );
setStartTimeMs( SE040,  1767 );
setPitch( spep_0 + 870, SE040, -300 );
setTimeStretch( SE040, 0.8, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 786

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE042 = playSeVer2( spep_1 + 88, 8, "", 0, 0, 0, -1);

--オーラ
SE043 = playSeVer2( spep_1 + 90, 1267, "",spep_2 + 122, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE043, 63 );
SE044 = playSeVer2( spep_1 + 90, 1176, "",spep_2 + 118, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE044, 56 );

------------------------------------------------------
-- カードカットイン～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 ); -- カードカットイン～フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 22.6, -1.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 22.6, -1.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 20.2, 1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 20.2, 1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 24.3, 0.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 24.3, 0.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 20.9, -3.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 20.9, -3.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 25, -3.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 25, -3.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 20.2, 1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 20.2, 1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 24.4, 0.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 24.4, 0.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 21, -3.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 21, -3.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 25.1, -3.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 25.1, -3.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 20.3, 1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 20.3, 1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 24.5, 0.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 24.5, 0.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 21.1, -3.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 21.1, -3.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 25.2, -3.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 25.2, -3.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 20.5, 1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 20.5, 1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 24.6, 0 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 24.6, 0 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 21.3, -3.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 21.3, -3.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 25.4, -3.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 25.4, -3.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 20.7, 1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 20.7, 1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 24.8, 0 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 24.8, 0 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 21.5, -3.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 21.5, -3.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 25.7, -3.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 25.7, -3.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 21, 1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 21, 1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 25.3, 0 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 25.3, 0 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -30.9 );

-- ** 音 ** --
--腕前に出す
SE045 = playSeVer2( spep_2 + 16, 1003, "", 0, 0, 0, -1);

--指弾溜め
SE046 = playSeVer2( spep_2 + 26, 1222, "",spep_2 + 80, 0, 16, -1);
SE047 = playSeVer2( spep_2 + 28, 49, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 28, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE048, 112 );
setPitch( spep_2 + 28, SE048, -600 );
setTimeStretch( SE048, 0.6, 30, 4 );

--指弾発射
SE049 = playSeVer2( spep_2 + 60, 1406, "",spep_2 + 204, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 60, SE049, 112 );
SE050 = playSeVer2( spep_2 + 60, 1409, "",spep_2 + 208, 0, 32, -1);
SE051 = playSeVer2( spep_2 + 62, 1149, "", spep_2 + 208, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 62, SE051, 79 );

--連続爆発
SE052 = playSeVer2( spep_2 + 118, 1023, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 164, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 298

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 786;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 ); -- 開幕→正面ダッシュ～叩きつけ→カードカットインまで ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 180 + OFFSET_X, 1,2 );
changeAnime( spep_0 + 256 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 264 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 332 + OFFSET_X, 1,7 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, -51.1, -132 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -51.1, -132 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -55.5, -132.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -55.5, -132.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -59.8, -133.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -59.8, -133.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -64.1, -133.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -64.1, -133.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -68.3, -134.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -68.3, -134.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -72.3, -134.7 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -72.3, -134.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -76.3, -135.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -76.3, -135.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -80.3, -135.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -80.3, -135.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -84.1, -136.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -84.1, -136.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -87.9, -136.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -87.9, -136.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -91.5, -137.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -91.5, -137.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -95.1, -137.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -95.1, -137.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -98.7, -138.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -98.7, -138.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -102.1, -138.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -102.1, -138.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -105.4, -139 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -105.4, -139 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -108.7, -139.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -108.7, -139.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -111.9, -139.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -111.9, -139.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -115, -140.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -115, -140.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -118.1, -140.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -118.1, -140.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -111.7, -149.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -111.7, -149.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -134.9, -127.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -134.9, -127.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -136.1, -149.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -136.1, -149.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -119.2, -131.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -119.2, -131.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -127.9, -146.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -127.9, -146.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -138.4, -139.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -138.4, -139.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -139.6, -144.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -139.6, -144.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -138.4, -141.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -138.4, -141.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -139.7, -145.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -139.7, -145.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -145.9, -141.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -145.9, -141.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -148.6, -145.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -148.6, -145.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -146.6, -143 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -146.6, -143 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -148.7, -146.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -148.7, -146.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -153.5, -143.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -153.5, -143.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -155.8, -146.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -155.8, -146.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -154.6, -144.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -154.6, -144.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -156.8, -145.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -156.8, -145.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -158.4, -145.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -158.4, -145.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -160, -146 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -160, -146 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 8.8, -74.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 8.8, -74.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -14.8, -45.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -14.8, -45.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -22.2, -36.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -22.2, -36.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -25.9, -31.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -25.9, -31.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -124.8, 135.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -124.8, 135.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -0.1, -1.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -0.1, -1.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -152.8, 3.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -152.8, 3.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 6.2, 162.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 6.2, 162.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -113.1, 128.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -113.1, 128.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -35, 31.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -35, 31.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -105.4, 57.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -105.4, 57.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -48.6, 108.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -48.6, 108.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -85.2, 95.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -85.2, 95.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -63.6, 80.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -63.6, 80.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -86, 80.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -86, 80.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -74.5, 89.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -74.5, 89.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -130.5, 220.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -130.5, 220.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -173, 301.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -173, 301.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -198.8, 342.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -198.8, 342.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -220.6, 367.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -220.6, 367.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -238.8, 380.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -238.8, 380.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -250.8, 387.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -250.8, 387.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -256.7, 393.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -256.7, 393.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -259.4, 398.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -259.4, 398.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -261.7, 403 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -261.7, 403 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -263.8, 407 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -263.8, 407 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -265.7, 410.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -265.7, 410.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -267.3, 413.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -267.3, 413.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -268.7, 416.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -268.7, 416.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -270, 418.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -270, 418.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -271, 420.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -271, 420.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -271.9, 422.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -271.9, 422.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -272.7, 424 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -272.7, 424 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -273.3, 425.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -273.3, 425.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -273.8, 426 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -273.8, 426 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -274.1, 426.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -274.1, 426.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -274.3, 427.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -274.3, 427.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -274.4, 427.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -274.4, 427.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 481.3, 402.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 481.3, 402.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 437.9, 402.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 437.9, 402.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 420.4, 402.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 420.4, 402.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 407.3, 402.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 407.3, 402.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 396.5, 402.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 396.5, 402.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 387.1, 402.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 387.1, 402.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 378.7, 402.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 378.7, 402.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 371.1, 402 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 371.1, 402 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 363.9, 401.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 363.9, 401.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 357.2, 401.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 357.2, 401.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 350.7, 401.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 350.7, 401.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 344.2, 400.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 344.2, 400.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 337.1, 400.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 337.1, 400.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 325.3, 398.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 325.3, 398.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 317.2, 397 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 317.2, 397 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 309.5, 395.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 309.5, 395.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 302.2, 394.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 302.2, 394.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 295.1, 392.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 295.1, 392.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 288.4, 391.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 288.4, 391.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 282, 389.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 282, 389.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 275.9, 388.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 275.9, 388.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 270, 386.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 270, 386.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 264.5, 385.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 264.5, 385.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 259.2, 383.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 259.2, 383.7 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.10, 0.10 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.10, 0.10 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 486 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 520 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 486 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 486 + OFFSET_X, 1, 416, 228.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 416, 228.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 373.7, 203.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 373.7, 203.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 330.5, 178.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 330.5, 178.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 286.4, 153.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 286.4, 153.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 241.3, 127.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 241.3, 127.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 195.1, 100.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 195.1, 100.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 147.8, 73.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 147.8, 73.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 99, 46.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 99, 46.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 88.4, 40.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 88.4, 40.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 75.8, 33.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 75.8, 33.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 60.3, 25.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 60.3, 25.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 39.4, 15 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 39.4, 15 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -13, -11 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -13, -11 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -20.6, -14.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -20.6, -14.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -25, -16.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -25, -16.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -84.2, -68 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -84.2, -68 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 46.2, 48.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 46.2, 48.9 , 0 );

setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 486 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -46.9 );

-- 敵の動き3
setDisp( spep_0 + 558 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 650 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 558 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 558 + OFFSET_X, 1, 11, 5.4 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 11, 5.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 0.9, 4.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 0.9, 4.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 10.3, -4.3 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 10.3, -4.3 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 2.8, -2.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 2.8, -2.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 10.7, 5.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 10.7, 5.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 0.6, 4.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 0.6, 4.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 10, -4.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 10, -4.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 2.6, -2.3 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 2.6, -2.3 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 10.4, 5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 10.4, 5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 0.3, 4.3 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 0.3, 4.3 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 9.8, -4.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 9.8, -4.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 2.3, -2.5 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 2.3, -2.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 10.2, 4.9 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 10.2, 4.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 0.1, 4.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 0.1, 4.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 9.5, -4.7 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 9.5, -4.7 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 2, -2.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 2, -2.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 9.9, 5.5 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 9.9, 5.5 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -3.2, 7.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -3.2, 7.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 14.2, -7.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 14.2, -7.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -2.3, -6.1 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -2.3, -6.1 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 13.8, 9.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 13.8, 9.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -21.4, 18.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -21.4, 18.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 21.3, -17.5 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 21.3, -17.5 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -10.8, -13.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -10.8, -13.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 35.1, 22.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 35.1, 22.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -114.9, -290.3 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -114.9, -290.3 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -148.4, -312.3 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -148.4, -312.3 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -91.5, -217 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -91.5, -217 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -99.9, -221.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -99.9, -221.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -78.7, -183.4 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -78.7, -183.4 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -83.9, -185.8 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -83.9, -185.8 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -68.1, -157.6 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -68.1, -157.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -71.8, -159.1 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -71.8, -159.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -59.1, -136.6 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -59.1, -136.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -61.8, -137.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -61.8, -137.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -51.1, -119 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -51.1, -119 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -53.2, -119.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -53.2, -119.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -44.3, -104.4 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -44.3, -104.4 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -45.7, -104.8 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -45.7, -104.8 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -38.3, -92.2 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -38.3, -92.2 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -39.3, -92.4 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -39.3, -92.4 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -33.1, -82.3 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -33.1, -82.3 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -33.8, -82.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -33.8, -82.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -28.8, -74.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -28.8, -74.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -29, -74.5 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -29, -74.5 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -25.1, -68.7 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -25.1, -68.7 , 0 );

setScaleKey( spep_0 + 558 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.54, 1.54 );

setRotateKey( spep_0 + 558 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 558 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0.26);
setBlendColor( spep_0 + 564 + OFFSET_X, 1, 3, 0, 0, 0, 0.28);
setBlendColor( spep_0 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0.35);
setBlendColor( spep_0 + 572 + OFFSET_X, 1, 3, 0, 0, 0, 0.38);
setBlendColor( spep_0 + 576 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 580 + OFFSET_X, 1, 3, 0, 0, 0, 0.43);
setBlendColor( spep_0 + 584 + OFFSET_X, 1, 3, 0, 0, 0, 0.45);
setBlendColor( spep_0 + 589 + OFFSET_X, 1, 3, 0, 0, 0, 0.5);
setBlendColor( spep_0 + 593 + OFFSET_X, 1, 3, 0, 0, 0, 0.55);
setBlendColor( spep_0 + 597 + OFFSET_X, 1, 3, 0, 0, 0, 0.6);
setBlendColor( spep_0 + 600 + OFFSET_X, 1, 3, 0, 0, 0, 0.7);
setBlendColor( spep_0 + 604 + OFFSET_X, 1, 3, 0, 0, 0, 0.8);
setBlendColor( spep_0 + 607 + OFFSET_X, 1, 3, 0, 0, 0, 0.8);
setBlendColor( spep_0 + 608 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 650 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- 敵の動き4
setDisp( spep_0 + 702 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 730 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 702 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 714 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 702 + OFFSET_X, 1, 80, 42.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 80, 42.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 40.5, 79.2 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 40.5, 79.2 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 125, -11.4 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 125, -11.4 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 57, 24 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 57, 24 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 96.5, 62.7 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 96.5, 62.7 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 75.3, 46.6 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 75.3, 46.6 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -1.9, -13.4 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -1.9, -13.4 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -5.7, -11.5 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -5.7, -11.5 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -48.9, -26.8 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -48.9, -26.8 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -50.5, -28 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -50.5, -28 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -77.4, -40.3 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -77.4, -40.3 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -85.6, -43.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -85.6, -43.7 , 0 );

setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 702 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, 46.7 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
setStartTimeMs( SE001,  1767 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 114, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 52 );

--地面えぐれる
SE005 = playSeVer2( spep_0 + 88, 1011, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 130, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 141 );
SE007 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 130, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE008, 47 );
setTimeStretch( SE008, 1.24, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 168;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE00X, 0);
    
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
--向かってくる２
SE009 = playSeVer2( spep_0 + 184, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 160 );
setPitch( spep_0 + 184, SE009, -800 );
setTimeStretch( SE009, 0.47, 30, 4 );
SE010 = playSeVer2( spep_0 + 192, 1232, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 192, 1269, "",spep_0 + 272, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 25 );

--殴る
SE012 = playSeVer2( spep_0 + 228, 1116, "",spep_0 + 272, 0, 22, -1);
SE013 = playSeVer2( spep_0 + 248, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE014, 76 );
SE015 = playSeVer2( spep_0 + 252, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 262, 1121, "",spep_0 + 400, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 262, SE016, 63 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 292, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 77 );
SE018 = playSeVer2( spep_0 + 314, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 75 );

--気弾溜め
SE019 = playSeVer2( spep_0 + 398, 1442, "",spep_0 + 458, 4, 14, -1);
setSeVolumeByWorkId( spep_0 + 398, SE019, 204 );
setStartTimeMs( SE019,  833 );
SE020 = playSeVer2( spep_0 + 400, 1443, "",spep_0 + 522, 10, 14, -1);
setSeVolumeByWorkId( spep_0 + 400, SE020, 174 );
setStartTimeMs( SE020,  770 );

--オーラ
SE021 = playSeVer2( spep_0 + 360, 1267, "",spep_0 + 532, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 360, SE021, 61 );
SE022 = playSeVer2( spep_0 + 360, 1176, "",spep_0 + 532, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 360, SE022, 62 );

--腕前に出す
SE023 = playSeVer2( spep_0 + 370, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 400, 1296, "",spep_0 + 462, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 400, SE024, 117 );
SE025 = playSeVer2( spep_0 + 400, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE025, 74 );

--気弾発射
SE026 = playSeVer2( spep_0 + 492, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE026, 56 );
SE027 = playSeVer2( spep_0 + 492, 1405, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 492, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE028, 69 );

--爆発
SE029 = playSeVer2( spep_0 + 514, 1023, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 516, 1024, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE031 = playSeVer2( spep_0 + 586, 1027, "", 0, 0, 0, -1);

--追いかける
SE032 = playSeVer2( spep_0 + 602, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 602, SE032, 178 );
SE033 = playSeVer2( spep_0 + 602, 1245, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 602, 1269, "",spep_0 + 718, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 602, SE034, 25 );

--構える
SE035 = playSeVer2( spep_0 + 624, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE035, 65 );
setStartTimeMs( SE035,  67 );

--叩きつける
SE036 = playSeVer2( spep_0 + 670, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 680, 1187, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 680, 1120, "", 0, 0, 0, -1);

--地面激突
SE039 = playSeVer2( spep_0 + 710, 1159, "",spep_0 + 816, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 710, SE039, 77 );

--オーラ
SE040 = playSeVer2( spep_0 + 870, 1371, "",spep_0 + 994, 12, 40, -1);
setSeVolumeByWorkId( spep_0 + 870, SE040, 35 );
setStartTimeMs( SE040,  1767 );
setPitch( spep_0 + 870, SE040, -300 );
setTimeStretch( SE040, 0.8, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 786

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE042 = playSeVer2( spep_1 + 88, 8, "", 0, 0, 0, -1);

--オーラ
SE043 = playSeVer2( spep_1 + 90, 1267, "",spep_2 + 122, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE043, 63 );
SE044 = playSeVer2( spep_1 + 90, 1176, "",spep_2 + 118, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE044, 56 );

------------------------------------------------------
-- カードカットイン～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 ); -- カードカットイン～フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -22.6, -1.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -22.6, -1.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -20.2, 1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -20.2, 1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -24.3, 0.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -24.3, 0.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -20.9, -3.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -20.9, -3.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -25, -3.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -25, -3.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -20.2, 1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -20.2, 1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -24.4, 0.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -24.4, 0.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -21, -3.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -21, -3.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -25.1, -3.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -25.1, -3.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -20.3, 1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -20.3, 1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -24.5, 0.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -24.5, 0.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -21.1, -3.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -21.1, -3.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -25.2, -3.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -25.2, -3.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -20.5, 1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -20.5, 1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -24.6, 0 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -24.6, 0 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -21.3, -3.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -21.3, -3.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -25.4, -3.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -25.4, -3.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -20.7, 1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -20.7, 1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -24.8, 0 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -24.8, 0 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -21.5, -3.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -21.5, -3.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -25.7, -3.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -25.7, -3.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -21, 1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -21, 1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -25.3, 0 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -25.3, 0 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 30.9 );

-- ** 音 ** --
--腕前に出す
SE045 = playSeVer2( spep_2 + 16, 1003, "", 0, 0, 0, -1);

--指弾溜め
SE046 = playSeVer2( spep_2 + 26, 1222, "",spep_2 + 80, 0, 16, -1);
SE047 = playSeVer2( spep_2 + 28, 49, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 28, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE048, 112 );
setPitch( spep_2 + 28, SE048, -600 );
setTimeStretch( SE048, 0.6, 30, 4 );

--指弾発射
SE049 = playSeVer2( spep_2 + 60, 1406, "",spep_2 + 204, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 60, SE049, 112 );
SE050 = playSeVer2( spep_2 + 60, 1409, "",spep_2 + 208, 0, 32, -1);
SE051 = playSeVer2( spep_2 + 62, 1149, "", spep_2 + 208, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 62, SE051, 79 );

--連続爆発
SE052 = playSeVer2( spep_2 + 118, 1023, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 164, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 298

end
