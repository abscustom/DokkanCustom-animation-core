--1028110:UR_ベジータ＆ナッパ_必殺技：サイヤ人の侵略
--sp_effect_a1_00414
--sp2640

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162426; --登場 ef_001
SP_02 = 162428; --突撃〜攻撃 ef_002
SP_03 = 162429; --突撃〜攻撃 ef_002_back

--エフェクト(てき)
SP_01r = 162427; --登場 ef_001_r
SP_02r = 162430; --突撃〜攻撃 ef_002_r
SP_03r = 162431; --突撃〜攻撃 ef_002_back_r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 135;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 30;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 153, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --135F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 突撃〜攻撃
-------------------------------------------------
MAX_FRAME_1 = 922;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突撃〜攻撃 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 突撃〜攻撃 ef_002_back
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_1 + 192 + OFFSET_X, 1, 1)
setDisp(spep_1 + 282 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 192 + OFFSET_X, 1, 100 );
changeAnime( spep_1 + 238 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 192 + OFFSET_X, 1, 264.1, 403.5 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 264.1, 403.5 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 262.7, 403.1 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 262.7, 403.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 261.1, 402.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 261.1, 402.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 259.1, 402 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 259.1, 402 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 256.8, 401.2 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 256.8, 401.2 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 253.9, 400.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 253.9, 400.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 250.5, 399.1 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 250.5, 399.1 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 246.3, 397.7 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 246.3, 397.7 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 241.2, 396 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 241.2, 396 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 234.9, 393.8 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 234.9, 393.8 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 227.2, 390.9 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 227.2, 390.9 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 218.3, 387.6 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 218.3, 387.6 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 209.1, 384 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 209.1, 384 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 200.7, 380.6 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 200.7, 380.6 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 193.7, 377.6 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 193.7, 377.6 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 188.1, 375.2 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 188.1, 375.2 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 183.6, 373.3 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 183.6, 373.3 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 180, 371.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 180, 371.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 177, 370.4 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 177, 370.4 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 174.6, 369.2 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 174.6, 369.2 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 172.6, 368.3 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 172.6, 368.3 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 171, 367.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 171, 367.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 169.6, 366.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 169.6, 366.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -23.7, -5.9 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -23.7, -5.9 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -19.5, -5.9 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -19.5, -5.9 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -15.4, -5.9 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -15.4, -5.9 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -11.2, -5.9 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -11.2, -5.9 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, -7, -5.9 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, -7, -5.9 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -2.9, -5.9 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -2.9, -5.9 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 1.3, -5.9 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 1.3, -5.9 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 71.8, -13.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 71.8, -13.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 56.2, 10.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 56.2, 10.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 142.5, 21.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 142.5, 21.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 118.5, -21.8 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 118.5, -21.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 163.9, 4.6 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 163.9, 4.6 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 126.6, 19.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 126.6, 19.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 170.4, 13.5 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 170.4, 13.5 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 189.3, -9.1 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 189.3, -9.1 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 278, -3.7 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 278, -3.7 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 305.3, -3 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 305.3, -3 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 375.6, 2.4 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 375.6, 2.4 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 427.1, -4.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 427.1, -4.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 481.7, -5.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 481.7, -5.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 536, -7.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 536, -7.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 590.2, -9.4 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 590.2, -9.4 , 0 );

setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_1 + 192 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, 4 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, 4 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp(spep_1 + 288 + OFFSET_X, 1, 1)
setDisp(spep_1 + 328 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 252 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 288 + OFFSET_X, 1, 5.7, -1.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 5.7, -1.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 58, 19.3 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 58, 19.3 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 86.2, 30.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 86.2, 30.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 101.4, 36.5 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 101.4, 36.5 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 110.8, 39.9 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 110.8, 39.9 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 117.5, 42 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 117.5, 42 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 245.8, 76,  0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 245.8, 76,  0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 201.5, 37.7,  0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 201.5, 37.7,  0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 190, 73.2,  0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 190, 73.2,  0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 224.8, 32.2,  0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 224.8, 32.2,  0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 226.7, 69.7,  0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 226.7, 69.7,  0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 249.5, 63.7,  0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 249.5, 63.7,  0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 331.9, 91.3,  0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 331.9, 91.3,  0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 361.1, 142.1,  0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 361.1, 142.1,  0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 438.7, 161.9,  0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 438.7, 161.9,  0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 475.8, 174.9,  0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 475.8, 174.9,  0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 542.8, 207.6,  0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 542.8, 207.6,  0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 587.5, 241.5,  0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 587.5, 241.5,  0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 647.5, 267.1,  0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 647.5, 267.1,  0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 702.8, 295.7,  0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 702.8, 295.7,  0 );

setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 2.65, 2.65 );

setRotateKey( spep_1 + 288 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, 3 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, 3 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, 5.8 );

--敵の動き3
setDisp(spep_1 + 344 + OFFSET_X, 1, 1)
setDisp(spep_1 + 394 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 372 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 344 + OFFSET_X, 1, -178.6, -194.1 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -178.6, -194.1 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -151, -154.9 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, -151, -154.9 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -128.1, -122.2 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, -128.1, -122.2 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -110.2, -96.6 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -110.2, -96.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -96.6, -77 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, -96.6, -77 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -86.1, -61.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -86.1, -61.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -77.7, -49.7 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -77.7, -49.7 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -70.9, -40 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -70.9, -40 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -65.2, -31.9 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, -65.2, -31.9 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -60.3, -25.1 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, -60.3, -25.1 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -56, -19.2 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, -56, -19.2 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -52.1, -14 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, -52.1, -14 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -48.5, -9.3 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, -48.5, -9.3 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -45.2, -4.9 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, -45.2, -4.9 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -58, -62.3 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, -58, -62.3 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -20.2, 12.2 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, -20.2, 12.2 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -89.7, 13.6 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, -89.7, 13.6 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -17.6, -116.8 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, -17.6, -116.8 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -42.2, -126.8 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, -42.2, -126.8 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -106.8, -301.3 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, -106.8, -301.3 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -69.2, -393.8 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, -69.2, -393.8 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -142.1, -430 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, -142.1, -430 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -114.2, -537.9 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, -114.2, -537.9 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -171.2, -684 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, -171.2, -684 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -191.5, -727.4 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -191.5, -727.4 , 0 );

setScaleKey( spep_1 + 344 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_1 + 344 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 62.9 );

--敵の動き4
setDisp(spep_1 + 416 + OFFSET_X, 1, 1)
setDisp(spep_1 + 456 + OFFSET_X, 1, 0)

setMoveKey( spep_1 + 416 + OFFSET_X, 1, -143.3, 226.5 , 0 );
setMoveKey( spep_1 + 417 + OFFSET_X, 1, -143.3, 226.5 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, -92.4, 169.5 , 0 );
setMoveKey( spep_1 + 419 + OFFSET_X, 1, -92.4, 169.5 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, -46.8, 118 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, -46.8, 118 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -7.3, 73.2 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, -7.3, 73.2 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 25.7, 35.3 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 25.7, 35.3 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 52.9, 3.8 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 52.9, 3.8 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 75.3, -22.4 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 75.3, -22.4 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 93.7, -44.4 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, 93.7, -44.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 108.9, -62.8 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, 108.9, -62.8 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 121.6, -78.7 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, 121.6, -78.7 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 132.3, -92.5 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 132.3, -92.5 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 141.4, -104.5 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 141.4, -104.5 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 149.1, -115.3 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 149.1, -115.3 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 155.6, -124.8 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 155.6, -124.8 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 161, -133.6 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 161, -133.6 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 165.4, -141.6 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 165.4, -141.6 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 168.9, -148.9 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, 168.9, -148.9 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 171.6, -155.7 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 171.6, -155.7 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 173.3, -161.9 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 173.3, -161.9 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 174.3, -167.7 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 174.3, -167.7 , 0 );

setScaleKey( spep_1 + 416 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 417 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 419 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 423 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 425 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 427 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 429 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 431 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 433 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 439 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 441 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 443 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 445 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 447 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 449 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 451 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_1 + 416 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_1 + 417 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_1 + 419 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 421 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_1 + 423 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 425 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_1 + 427 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 429 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 79 );
setRotateKey( spep_1 + 431 + OFFSET_X, 1, 79 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_1 + 433 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_1 + 435 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 84 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, 84 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_1 + 439 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_1 + 441 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_1 + 443 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 88.9 );
setRotateKey( spep_1 + 445 + OFFSET_X, 1, 88.9 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 90 );
setRotateKey( spep_1 + 447 + OFFSET_X, 1, 90 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, 91 );
setRotateKey( spep_1 + 449 + OFFSET_X, 1, 91 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, 92.1 );
setRotateKey( spep_1 + 451 + OFFSET_X, 1, 92.1 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_1 + 453 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, 94.4 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, 94.4 );

-- ** 音 ** --
--二人並ぶ
SE006 = playSeVer2( spep_1 + 0, 44, "",spep_1 + 50, 0, 30, -1);
--ナッパ飛び上がる
SE007 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE007, 82 );
--向かってくる
SE008 = playSeVer2( spep_1 + 56, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 56, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 72; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
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
--画面手前まで飛んでくる
SE010 = playSeVer2( spep_1 + 108, 1019, "", 0, 18, 0, -1);
SE011 = playSeVer2( spep_1 + 108, 1183, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 120, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE012, 51 );
SE013 = playSeVer2( spep_1 + 152, 1232, "", 0, 0, 0, -1);
--敵に向かっていく
SE014 = playSeVer2( spep_1 + 190, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 190, 44, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 190, 1117, "",spep_1 + 260, 0, 10, -1);
SE017 = playSeVer2( spep_1 + 190, 1116, "",spep_1 + 260, 0, 14, -1);
--パンチ
SE018 = playSeVer2( spep_1 + 244, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);
--殴り飛ばす
SE020 = playSeVer2( spep_1 + 298, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 298, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 298, SE021, 79 );
SE022 = playSeVer2( spep_1 + 298, 1009, "", 0, 0, 0, -1);
--回り込む
SE023 = playSeVer2( spep_1 + 348, 1109, "",spep_1 + 378, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 348, SE023, 77 );
SE024 = playSeVer2( spep_1 + 348, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE024, 166 );
--叩き落とす
SE025 = playSeVer2( spep_1 + 372, 1123, "", 0, 0, 0, -1);
--敵飛んでいく
SE026 = playSeVer2( spep_1 + 414, 1183, "",spep_1 + 486, 0, 24, -1);
SE027 = playSeVer2( spep_1 + 414, 1121, "",spep_1 + 486, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 414, SE027, 74 );
--水に落下
SE028 = playSeVer2( spep_1 + 430, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 430, SE028, 282 );
SE029 = playSeVer2( spep_1 + 448, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 448, SE029, 68 );
SE030 = playSeVer2( spep_1 + 452, 1395, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 452, 1166, "",spep_1 + 534, 0, 44, -1);
--画面遷移
SE032 = playSeVer2( spep_1 + 514, 8, "", 0, 0, 0, -1);
--腕前に出す
SE033 = playSeVer2( spep_1 + 558, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 558, SE033, 69 );
--気弾溜め
SE034 = playSeVer2( spep_1 + 572, 1265, "",spep_1 + 688, 0, 12, -1);
SE035 = playSeVer2( spep_1 + 572, 1362, "",spep_1 + 688, 0, 12, -1);
SE036 = playSeVer2( spep_1 + 578, 1243, "",spep_1 + 686, 0, 10, -1);
--気弾溜め2
SE037 = playSeVer2( spep_1 + 610, 1296, "",spep_1 + 688, 0, 12, -1);
SE038 = playSeVer2( spep_1 + 612, 1328, "", 0, 0, 0, -1);
--気弾発射
SE039 = playSeVer2( spep_1 + 672, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 672, 1177, "",spep_1 + 792, 0, 24, -1);
SE041 = playSeVer2( spep_1 + 672, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 672, 1236, "",spep_1 + 802, 0, 34, -1);
SE043 = playSeVer2( spep_1 + 682, 1146, "",spep_1 + 826, 0, 46, -1);
--気弾飛んでいく
SE044 = playSeVer2( spep_1 + 682, 1215, "",spep_1 + 824, 0, 58, -1);
--爆発
SE045 = playSeVer2( spep_1 + 806, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 806, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 806, 1166, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 822); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 922F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 135;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 登場 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 153, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --135F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 突撃〜攻撃
-------------------------------------------------
MAX_FRAME_1 = 922;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 突撃〜攻撃 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- 突撃〜攻撃 ef_002_back
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_1 + 192 + OFFSET_X, 1, 1)
setDisp(spep_1 + 282 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 192 + OFFSET_X, 1, 100 );
changeAnime( spep_1 + 238 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 192 + OFFSET_X, 1, 264.1, 403.5 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 264.1, 403.5 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 262.7, 403.1 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 262.7, 403.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 261.1, 402.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 261.1, 402.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 259.1, 402 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 259.1, 402 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 256.8, 401.2 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 256.8, 401.2 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 253.9, 400.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 253.9, 400.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 250.5, 399.1 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 250.5, 399.1 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 246.3, 397.7 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 246.3, 397.7 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 241.2, 396 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 241.2, 396 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 234.9, 393.8 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 234.9, 393.8 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 227.2, 390.9 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 227.2, 390.9 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 218.3, 387.6 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 218.3, 387.6 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 209.1, 384 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 209.1, 384 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 200.7, 380.6 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 200.7, 380.6 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 193.7, 377.6 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 193.7, 377.6 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 188.1, 375.2 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 188.1, 375.2 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 183.6, 373.3 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 183.6, 373.3 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 180, 371.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 180, 371.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 177, 370.4 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 177, 370.4 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 174.6, 369.2 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 174.6, 369.2 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 172.6, 368.3 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 172.6, 368.3 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 171, 367.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 171, 367.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 169.6, 366.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 169.6, 366.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -23.7, -5.9 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -23.7, -5.9 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -19.5, -5.9 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -19.5, -5.9 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -15.4, -5.9 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -15.4, -5.9 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -11.2, -5.9 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -11.2, -5.9 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, -7, -5.9 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, -7, -5.9 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -2.9, -5.9 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -2.9, -5.9 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 1.3, -5.9 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 1.3, -5.9 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 71.8, -13.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 71.8, -13.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 56.2, 10.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 56.2, 10.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 142.5, 21.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 142.5, 21.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 118.5, -21.8 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 118.5, -21.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 163.9, 4.6 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 163.9, 4.6 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 126.6, 19.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 126.6, 19.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 170.4, 13.5 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 170.4, 13.5 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 189.3, -9.1 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 189.3, -9.1 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 278, -3.7 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 278, -3.7 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 305.3, -3 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 305.3, -3 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 375.6, 2.4 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 375.6, 2.4 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 427.1, -4.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 427.1, -4.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 481.7, -5.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 481.7, -5.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 536, -7.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 536, -7.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 590.2, -9.4 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 590.2, -9.4 , 0 );

setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_1 + 192 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, 4 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, 4 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp(spep_1 + 288 + OFFSET_X, 1, 1)
setDisp(spep_1 + 328 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 252 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 288 + OFFSET_X, 1, 5.7, -1.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 5.7, -1.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 58, 19.3 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 58, 19.3 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 86.2, 30.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 86.2, 30.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 101.4, 36.5 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 101.4, 36.5 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 110.8, 39.9 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 110.8, 39.9 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 117.5, 42 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 117.5, 42 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 245.8, 76,  0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 245.8, 76,  0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 201.5, 37.7,  0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 201.5, 37.7,  0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 190, 73.2,  0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 190, 73.2,  0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 224.8, 32.2,  0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 224.8, 32.2,  0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 226.7, 69.7,  0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 226.7, 69.7,  0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 249.5, 63.7,  0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 249.5, 63.7,  0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 331.9, 91.3,  0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 331.9, 91.3,  0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 361.1, 142.1,  0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 361.1, 142.1,  0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 438.7, 161.9,  0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 438.7, 161.9,  0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 475.8, 174.9,  0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 475.8, 174.9,  0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 542.8, 207.6,  0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 542.8, 207.6,  0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 587.5, 241.5,  0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 587.5, 241.5,  0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 647.5, 267.1,  0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 647.5, 267.1,  0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 702.8, 295.7,  0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 702.8, 295.7,  0 );

setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 2.65, 2.65 );

setRotateKey( spep_1 + 288 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, 3 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, 3 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, 5.8 );

--敵の動き3
setDisp(spep_1 + 344 + OFFSET_X, 1, 1)
setDisp(spep_1 + 394 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 372 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 344 + OFFSET_X, 1, -178.6, -194.1 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -178.6, -194.1 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -151, -154.9 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, -151, -154.9 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -128.1, -122.2 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, -128.1, -122.2 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -110.2, -96.6 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -110.2, -96.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -96.6, -77 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, -96.6, -77 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -86.1, -61.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -86.1, -61.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -77.7, -49.7 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -77.7, -49.7 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -70.9, -40 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -70.9, -40 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -65.2, -31.9 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, -65.2, -31.9 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -60.3, -25.1 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, -60.3, -25.1 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -56, -19.2 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, -56, -19.2 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -52.1, -14 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, -52.1, -14 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -48.5, -9.3 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, -48.5, -9.3 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -45.2, -4.9 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, -45.2, -4.9 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -58, -62.3 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, -58, -62.3 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -20.2, 12.2 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, -20.2, 12.2 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -89.7, 13.6 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, -89.7, 13.6 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -17.6, -116.8 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, -17.6, -116.8 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -42.2, -126.8 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, -42.2, -126.8 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -106.8, -301.3 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, -106.8, -301.3 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -69.2, -393.8 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, -69.2, -393.8 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -142.1, -430 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, -142.1, -430 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -114.2, -537.9 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, -114.2, -537.9 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -171.2, -684 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, -171.2, -684 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -191.5, -727.4 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -191.5, -727.4 , 0 );

setScaleKey( spep_1 + 344 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_1 + 344 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 62.9 );

--敵の動き4
setDisp(spep_1 + 416 + OFFSET_X, 1, 1)
setDisp(spep_1 + 456 + OFFSET_X, 1, 0)

setMoveKey( spep_1 + 416 + OFFSET_X, 1, -143.3, 226.5 , 0 );
setMoveKey( spep_1 + 417 + OFFSET_X, 1, -143.3, 226.5 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, -92.4, 169.5 , 0 );
setMoveKey( spep_1 + 419 + OFFSET_X, 1, -92.4, 169.5 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, -46.8, 118 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, -46.8, 118 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -7.3, 73.2 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, -7.3, 73.2 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 25.7, 35.3 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 25.7, 35.3 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 52.9, 3.8 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 52.9, 3.8 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 75.3, -22.4 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 75.3, -22.4 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 93.7, -44.4 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, 93.7, -44.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 108.9, -62.8 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, 108.9, -62.8 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 121.6, -78.7 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, 121.6, -78.7 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 132.3, -92.5 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 132.3, -92.5 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 141.4, -104.5 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 141.4, -104.5 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 149.1, -115.3 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 149.1, -115.3 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 155.6, -124.8 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 155.6, -124.8 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 161, -133.6 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 161, -133.6 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 165.4, -141.6 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 165.4, -141.6 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 168.9, -148.9 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, 168.9, -148.9 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 171.6, -155.7 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 171.6, -155.7 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 173.3, -161.9 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 173.3, -161.9 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 174.3, -167.7 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 174.3, -167.7 , 0 );

setScaleKey( spep_1 + 416 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 417 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 419 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 423 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 425 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 427 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 429 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 431 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 433 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 439 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 441 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 443 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 445 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 447 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 449 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 451 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_1 + 416 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_1 + 417 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_1 + 419 + OFFSET_X, 1, 58.5 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 421 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_1 + 423 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 425 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_1 + 427 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 429 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 79 );
setRotateKey( spep_1 + 431 + OFFSET_X, 1, 79 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_1 + 433 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_1 + 435 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 84 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, 84 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_1 + 439 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_1 + 441 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_1 + 443 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 88.9 );
setRotateKey( spep_1 + 445 + OFFSET_X, 1, 88.9 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 90 );
setRotateKey( spep_1 + 447 + OFFSET_X, 1, 90 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, 91 );
setRotateKey( spep_1 + 449 + OFFSET_X, 1, 91 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, 92.1 );
setRotateKey( spep_1 + 451 + OFFSET_X, 1, 92.1 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_1 + 453 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, 94.4 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, 94.4 );

-- ** 音 ** --
--二人並ぶ
SE006 = playSeVer2( spep_1 + 0, 44, "",spep_1 + 50, 0, 30, -1);
--ナッパ飛び上がる
SE007 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE007, 82 );
--向かってくる
SE008 = playSeVer2( spep_1 + 56, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 56, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 72; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
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
--画面手前まで飛んでくる
SE010 = playSeVer2( spep_1 + 108, 1019, "", 0, 18, 0, -1);
SE011 = playSeVer2( spep_1 + 108, 1183, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 120, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE012, 51 );
SE013 = playSeVer2( spep_1 + 152, 1232, "", 0, 0, 0, -1);
--敵に向かっていく
SE014 = playSeVer2( spep_1 + 190, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 190, 44, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 190, 1117, "",spep_1 + 260, 0, 10, -1);
SE017 = playSeVer2( spep_1 + 190, 1116, "",spep_1 + 260, 0, 14, -1);
--パンチ
SE018 = playSeVer2( spep_1 + 244, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);
--殴り飛ばす
SE020 = playSeVer2( spep_1 + 298, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 298, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 298, SE021, 79 );
SE022 = playSeVer2( spep_1 + 298, 1009, "", 0, 0, 0, -1);
--回り込む
SE023 = playSeVer2( spep_1 + 348, 1109, "",spep_1 + 378, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 348, SE023, 77 );
SE024 = playSeVer2( spep_1 + 348, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE024, 166 );
--叩き落とす
SE025 = playSeVer2( spep_1 + 372, 1123, "", 0, 0, 0, -1);
--敵飛んでいく
SE026 = playSeVer2( spep_1 + 414, 1183, "",spep_1 + 486, 0, 24, -1);
SE027 = playSeVer2( spep_1 + 414, 1121, "",spep_1 + 486, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 414, SE027, 74 );
--水に落下
SE028 = playSeVer2( spep_1 + 430, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 430, SE028, 282 );
SE029 = playSeVer2( spep_1 + 448, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 448, SE029, 68 );
SE030 = playSeVer2( spep_1 + 452, 1395, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 452, 1166, "",spep_1 + 534, 0, 44, -1);
--画面遷移
SE032 = playSeVer2( spep_1 + 514, 8, "", 0, 0, 0, -1);
--腕前に出す
SE033 = playSeVer2( spep_1 + 558, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 558, SE033, 69 );
--気弾溜め
SE034 = playSeVer2( spep_1 + 572, 1265, "",spep_1 + 688, 0, 12, -1);
SE035 = playSeVer2( spep_1 + 572, 1362, "",spep_1 + 688, 0, 12, -1);
SE036 = playSeVer2( spep_1 + 578, 1243, "",spep_1 + 686, 0, 10, -1);
--気弾溜め2
SE037 = playSeVer2( spep_1 + 610, 1296, "",spep_1 + 688, 0, 12, -1);
SE038 = playSeVer2( spep_1 + 612, 1328, "", 0, 0, 0, -1);
--気弾発射
SE039 = playSeVer2( spep_1 + 672, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 672, 1177, "",spep_1 + 792, 0, 24, -1);
SE041 = playSeVer2( spep_1 + 672, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 672, 1236, "",spep_1 + 802, 0, 34, -1);
SE043 = playSeVer2( spep_1 + 682, 1146, "",spep_1 + 826, 0, 46, -1);
--気弾飛んでいく
SE044 = playSeVer2( spep_1 + 682, 1215, "",spep_1 + 824, 0, 58, -1);
--爆発
SE045 = playSeVer2( spep_1 + 806, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 806, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 806, 1166, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 822); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 922F

end