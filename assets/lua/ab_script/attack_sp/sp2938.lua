--1032280:UR_ピッコロ(ミニ)(DAIMA)_必殺技：魔貫光殺砲
--sp_effect_a1_00510
--sp2938

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164236; --冒頭〜気弾ため ef_001
SP_02  = 164238; --セリフカットイン〜魔貫光殺砲 ef_002
SP_02b = 164239; --セリフカットイン〜魔貫光殺砲 ef_002b

--エフェクト(敵)
SP_01r  = 164237; --冒頭〜気弾ため ef_001r
SP_02r  = 164240; --セリフカットイン〜魔貫光殺砲 ef_002r
SP_02br = 164241; --セリフカットイン〜魔貫光殺砲 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭〜気弾ため
-------------------------------------------------
MAX_FRAME_0 = 44;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭〜気弾ため(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--魔貫光殺砲溜め
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 70 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 37 );
--カードカットイン
--SE004 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 44

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- セリフカットイン〜魔貫光殺砲
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- セリフカットイン〜魔貫光殺砲 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- セリフカットイン〜魔貫光殺砲 ef_002b
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --

setDisp( spep_2 + 174 + OFFSET_X, 1, 1);
setDisp( spep_2 + 340 + OFFSET_X, 1, 1);


changeAnime( spep_2 + 174 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 174 + OFFSET_X, 1, 126.2, 197.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 126.2, 197.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 126.1, 197.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 126.1, 197.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 126, 197 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 126, 197 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 125.8, 196.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 125.8, 196.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 125.4, 195.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 125.4, 195.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 124.9, 194.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 124.9, 194.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 124.1, 193.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 124.1, 193.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 123.1, 191.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 123.1, 191.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 121.7, 188.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 121.7, 188.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 120.1, 185.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 120.1, 185.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 118.1, 181.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 118.1, 181.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 115.6, 176.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 115.6, 176.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 112.8, 171.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 112.8, 171.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.4, 164.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.4, 164.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 105.6, 157.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 105.6, 157.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 101.2, 148.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 101.2, 148.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 96.2, 139.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 96.2, 139.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 90.6, 128.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 90.6, 128.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 84.3, 116.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 84.3, 116.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 59.1, -46.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 59.1, -46.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 99.4, -7.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 99.4, -7.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 116.1, 29.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 116.1, 29.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 82.2, -26 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 82.2, -26 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 78.3, -14.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 78.3, -14.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 78.3, -32.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 78.3, -32.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 84.7, -22.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 84.7, -22.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 86.5, -33.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 86.5, -33.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 80.1, -23.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 80.1, -23.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 86.4, -32.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 86.4, -32.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 88.8, -18.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 88.8, -18.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 86.9, -22.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 86.9, -22.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 88.4, -22.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 88.4, -22.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 86.9, -24.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 86.9, -24.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 88.4, -25.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 88.4, -25.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 85.8, -25.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 85.8, -25.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 85.8, -27.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 85.8, -27.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 85.3, -27.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 85.3, -27.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 85, -26.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 85, -26.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 84.1, -27.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 84.1, -27.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 84.3, -27.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 84.3, -27.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 84.5, -27.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 84.5, -27.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 82.6, -29.1 , 0 );

setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.25, 3.25 );

setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -33 );

-- ** 音 ** --
--発射前溜め
SE005 = playSeVer2( spep_2 + 2, 1176, "",spep_2 + 140, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 2, SE005, 32 );
SE006 = playSeVer2( spep_2 + 2, 1513, "",spep_2 + 144, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE006, 70 );
--顔カットイン
--SE007 = playSeVer2( spep_2 + 30, 1018, "", 0, 0, 0, -1);
--魔貫光殺砲発射
SE008 = playSeVer2( spep_2 + 120, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE008, 71 );
SE009 = playSeVer2( spep_2 + 120, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 120, 1249, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 120, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE011, 155 );
SE012 = playSeVer2( spep_2 + 120, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 120, SE012, 41 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 204; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
--つらぬく
SE013 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 216, 1114, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 340-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭〜気弾ため
-------------------------------------------------
MAX_FRAME_0 = 44;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 冒頭〜気弾ため(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--魔貫光殺砲溜め
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 70 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 37 );
--カードカットイン
--SE004 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 44

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- セリフカットイン〜魔貫光殺砲
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- セリフカットイン〜魔貫光殺砲 ef_002r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- セリフカットイン〜魔貫光殺砲 ef_002br
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --

setDisp( spep_2 + 174 + OFFSET_X, 1, 1);
setDisp( spep_2 + 340 + OFFSET_X, 1, 1);


changeAnime( spep_2 + 174 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 174 + OFFSET_X, 1, 126.2, 197.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 126.2, 197.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 126.1, 197.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 126.1, 197.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 126, 197 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 126, 197 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 125.8, 196.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 125.8, 196.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 125.4, 195.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 125.4, 195.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 124.9, 194.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 124.9, 194.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 124.1, 193.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 124.1, 193.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 123.1, 191.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 123.1, 191.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 121.7, 188.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 121.7, 188.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 120.1, 185.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 120.1, 185.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 118.1, 181.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 118.1, 181.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 115.6, 176.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 115.6, 176.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 112.8, 171.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 112.8, 171.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.4, 164.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.4, 164.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 105.6, 157.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 105.6, 157.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 101.2, 148.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 101.2, 148.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 96.2, 139.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 96.2, 139.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 90.6, 128.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 90.6, 128.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 84.3, 116.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 84.3, 116.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 59.1, -46.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 59.1, -46.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 99.4, -7.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 99.4, -7.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 116.1, 29.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 116.1, 29.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 82.2, -26 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 82.2, -26 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 78.3, -14.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 78.3, -14.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 78.3, -32.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 78.3, -32.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 84.7, -22.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 84.7, -22.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 86.5, -33.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 86.5, -33.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 80.1, -23.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 80.1, -23.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 86.4, -32.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 86.4, -32.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 88.8, -18.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 88.8, -18.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 86.9, -22.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 86.9, -22.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 88.4, -22.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 88.4, -22.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 86.9, -24.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 86.9, -24.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 88.4, -25.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 88.4, -25.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 85.8, -25.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 85.8, -25.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 85.8, -27.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 85.8, -27.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 85.3, -27.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 85.3, -27.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 85, -26.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 85, -26.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 84.1, -27.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 84.1, -27.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 84.3, -27.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 84.3, -27.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 84.5, -27.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 84.5, -27.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 82.6, -29.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 84.3, -27.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 82.7, -29.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 84.3, -27.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 82.6, -29.1 , 0 );

setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.25, 3.25 );

setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -33 );

-- ** 音 ** --
--発射前溜め
SE005 = playSeVer2( spep_2 + 2, 1176, "",spep_2 + 140, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 2, SE005, 32 );
SE006 = playSeVer2( spep_2 + 2, 1513, "",spep_2 + 144, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE006, 70 );
--顔カットイン
--SE007 = playSeVer2( spep_2 + 30, 1018, "", 0, 0, 0, -1);
--魔貫光殺砲発射
SE008 = playSeVer2( spep_2 + 120, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE008, 71 );
SE009 = playSeVer2( spep_2 + 120, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 120, 1249, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 120, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE011, 155 );
SE012 = playSeVer2( spep_2 + 120, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 120, SE012, 41 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 204; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
--つらぬく
SE013 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 216, 1114, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 340-2


end