--1032010:LR_超サイヤ人孫悟飯(GT)(寄生)&超サイヤ人孫悟天(GT)(寄生)_超必殺技：兄弟かめはめ波
--sp_effect_a1_00507
--sp2934

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164143;  -- 飛んでくる二人～気をためる二人 ef_001
SP_01b = 164144;  -- 飛んでくる二人～気をためる二人 ef_001b
SP_02 = 164147;  -- かめはめ波発射 ef_002
SP_02b = 164148;  -- かめはめ波発射 ef_002b


--エフェクト(敵)
SP_01r = 164145;  -- 飛んでくる二人～気をためる二人 ef_001r
SP_01br = 164146;  -- 飛んでくる二人～気をためる二人 ef_001br


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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 飛んでくる二人～気をためる二人
-------------------------------------------------
MAX_FRAME_0 = 760;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 飛んでくる二人～気をためる二人(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 飛んでくる二人～気をためる二人(ef_001b)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 142 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 122 + OFFSET_X, 1, -51.1, -16 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -51.1, -16 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 167.4, -33.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 167.4, -33.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 116.4, 41.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 116.4, 41.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 172.4, -28.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 172.4, -28.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 87.4, -30.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 87.4, -30.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 145.4, 12.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 145.4, 12.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 117.4, -12.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 117.4, -12.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 122.4, 13.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 122.4, 13.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 174.5, -5.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 174.5, -5.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 248.8, 26.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 248.8, 26.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 434.4, 61.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 434.4, 61.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 515.5, 54.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 515.5, 54.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 592.7, 50.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 592.7, 50.9 , 0 );

setScaleKey( spep_0 + 122 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.48, 2.48 );

setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -15 );

--敵の動き2

setDisp( spep_0 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 492 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 392 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 196 + OFFSET_X, 1, -740.2, -691.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -740.2, -691.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -642.8, -657 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -642.8, -657 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -551.7, -624.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -551.7, -624.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -466.9, -594 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -466.9, -594 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -388.3, -565.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -388.3, -565.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -316, -540.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -316, -540.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -250, -516.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -250, -516.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -190.3, -495.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -190.3, -495.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -136.9, -476 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -136.9, -476 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -89.8, -459.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -89.8, -459.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -48.9, -444.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -48.9, -444.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -14.3, -432.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -14.3, -432.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 13.9, -422 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 13.9, -422 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -275.8, -225.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -275.8, -225.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -211.3, -171.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -211.3, -171.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -155.4, -124.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -155.4, -124.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -108, -85.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -108, -85.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -69.3, -52.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -69.3, -52.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -39.2, -27.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -39.2, -27.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -17.7, -9.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -17.7, -9.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -4.8, 1.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -4.8, 1.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -0.5, 5.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -0.5, 5.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 179.4, -92 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 179.4, -92 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 87.4, 20 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 87.4, 20 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 199.4, -44 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 199.4, -44 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 87.4, -96 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 87.4, -96 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 151.4, -12 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 151.4, -12 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 119.4, -68 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 119.4, -68 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 111.4, -20 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 111.4, -20 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 155.4, -56 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 155.4, -56 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 131.4, -44 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 131.4, -44 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 119.4, -32 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 119.4, -32 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 131.4, -60 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 131.4, -60 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 139.4, -32 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 139.4, -32 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 132.4, -100 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 132.4, -100 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 155.9, -106.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 155.9, -106.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 176.3, -113 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 176.3, -113 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 193.6, -118.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 193.6, -118.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 207.7, -122.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 207.7, -122.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 218.7, -125.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 218.7, -125.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 226.6, -128 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 226.6, -128 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 231.3, -129.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 231.3, -129.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 232.9, -129.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 232.9, -129.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -640, 457.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -640, 457.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -588.9, 411.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -588.9, 411.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -435.5, 271.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -435.5, 271.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -179.9, 37.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -179.9, 37.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -31.8, -139.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -31.8, -139.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -79.8, -33.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -79.8, -33.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -113.9, -127.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -113.9, -127.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -24.3, -17.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -24.3, -17.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -58.8, -79 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -58.8, -79 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -69.3, -29.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -69.3, -29.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -51.9, -47.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -51.9, -47.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -58.6, -34.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -58.6, -34.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -57.4, -29 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -57.4, -29 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -56.2, -24.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -56.2, -24.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -55.2, -19.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -55.2, -19.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -54.2, -15.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -54.2, -15.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -53.2, -11.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -53.2, -11.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -52.4, -8.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -52.4, -8.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -51.6, -5.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -51.6, -5.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -50.9, -2.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -50.9, -2.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -50.2, 0.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -50.2, 0.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -49.7, 2.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -49.7, 2.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -49.2, 4.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -49.2, 4.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -48.8, 6.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -48.8, 6.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -48.4, 7.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -48.4, 7.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -48.2, 8.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -48.2, 8.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -48, 9.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -48, 9.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -47.9, 10 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -47.9, 10 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -47.8, 10.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -47.8, 10.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -264.1, -134 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -264.1, -134 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -298.1, -510 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -298.1, -510 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -256.1, 54 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -256.1, 54 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -136.1, 172.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -136.1, 172.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -128.4, 174.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -128.4, 174.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -120.8, 177.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -120.8, 177.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -113.2, 180.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -113.2, 180.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -105.6, 183.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -105.6, 183.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -98, 186.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -98, 186.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -94, 188.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -94, 188.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -278, -275.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -278, -275.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -298, -191.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -298, -191.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -281.8, -463.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -281.8, -463.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -325.8, -443.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -325.8, -443.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -210.1, -83.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -210.1, -83.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -209.6, -91.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -209.6, -91.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -204.1, -69.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -204.1, -69.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -197.1, -83.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -197.1, -83.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -210.1, -92.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -210.1, -92.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -197.6, -98.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -197.6, -98.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -204.1, -76.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -204.1, -76.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -216.1, -82.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -216.1, -82.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -206.6, -92.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -206.6, -92.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -208.1, -77.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -208.1, -77.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -197.6, -102.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -197.6, -102.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -214.6, -85.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -214.6, -85.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -203.1, -95.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -203.1, -95.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 101.8, -58.2 , 0 );

setScaleKey( spep_0 + 196 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.12, 2.12 );

setRotateKey( spep_0 + 196 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 118 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 118 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -15 );

--敵の動き3

setDisp( spep_0 + 564 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 564 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 564 + OFFSET_X, 1, 217.7, -1670.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 217.7, -1670.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 225.7, -1706.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 225.7, -1706.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 257.8, -1166.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 257.8, -1166.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 257.8, -1182.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 257.8, -1182.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 211.6, -952.2 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 211.6, -952.2 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 211.6, -935.2 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 211.6, -935.2 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 173, -723.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 173, -723.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 165, -692.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 165, -692.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 114.8, -468.8 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 114.8, -468.8 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 114.8, -475.8 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 114.8, -475.8 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 91.9, -394 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 91.9, -394 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 97.9, -407 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 97.9, -407 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 65.6, -325.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 65.6, -325.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 65.6, -334.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 65.6, -334.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 41.4, -302.8 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 41.4, -302.8 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 28.6, -46.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 28.6, -46.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 22.9, 30.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 22.9, 30.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 18.5, 87.5 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 18.5, 87.5 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 15.7, 124 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 15.7, 124 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 15.2, 135.7 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 15.2, 135.7 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 14.9, 144.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 14.9, 144.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 14.6, 150.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 14.6, 150.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 14.5, 153.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 14.5, 153.1 , 0 );

setScaleKey( spep_0 + 564 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 564 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -12.9 );

-- ** 音 ** --

--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 2, 1019, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1019, "", 0, 0, 0, -1);

--画面前へ
SE006 = playSeVer2( spep_0 + 64, 63, "",spep_0 + 146, 0, 38, -1);
SE007 = playSeVer2( spep_0 + 68, 44, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
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

--飛んでくる
SE009 = playSeVer2( spep_0 + 130, 1019, "",spep_0 + 198, 0, 52, -1);

--蹴る
SE008 = playSeVer2( spep_0 + 126, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE008, 153 );
SE010 = playSeVer2( spep_0 + 134, 1001, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE011, 79 );

--飛び上がる
SE012 = playSeVer2( spep_0 + 172, 1452, "", 0, 0, 0, -1);

--ライダーキック
SE013 = playSeVer2( spep_0 + 224, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE014, 84 );
SE015 = playSeVer2( spep_0 + 232, 1153, "", 0, 0, 0, -1);

--敵落ちていく
SE016 = playSeVer2( spep_0 + 232, 1183, "",spep_0 + 318, 0, 26, -1);
SE017 = playSeVer2( spep_0 + 262, 1277, "", 0, 0, 0, -1);

--地面激突
SE018 = playSeVer2( spep_0 + 284, 1159, "",spep_0 + 450, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 284, SE018, 84 );

--瞬間移動
SE019 = playSeVer2( spep_0 + 294, 1109, "", 0, 0, 0, -1);

--敵掴む
SE020 = playSeVer2( spep_0 + 324, 1116, "",spep_0 + 378, 0, 32, -1);
SE022 = playSeVer2( spep_0 + 344, 1007, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE021, 50 );
SE023 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 50 );
SE025 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE025, 50 );
SE029 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 50 );
stopSeIfDoubleSpeed( spep_0 + 408, SE029 );
SE030 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE030, 50 );
SE032 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE032, 50 );
SE033 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE033, 50 );
SE035 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE035, 50 );
stopSeIfDoubleSpeed( spep_0 + 504, SE035 );
SE036 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE036, 50 );
SE037 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE037, 50 );
SE038 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE038, 50 );
SE042 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE042, 50 );
stopSeIfDoubleSpeed( spep_0 + 600, SE042 );
SE044 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE044, 50 );
SE047 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE047, 50 );
SE051 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE051, 50 );
SE052 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE052, 50 );
stopSeIfDoubleSpeed( spep_0 + 696, SE052 );
SE055 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE055, 50 );
SE058 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE058, 50 );

--地面ひきずる
SE024 = playSeVer2( spep_0 + 382, 1011, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 390, 1044, "",spep_0 + 626, 0, 22, -1);
SE027 = playSeVer2( spep_0 + 390, 1226, "",spep_0 + 656, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 390, SE027, 83 );
SE028 = playSeVer2( spep_0 + 390, 1278, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 638, SE045 );
SE031 = playSeVer2( spep_0 + 434, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 73 );

--画面遷移
SE034 = playSeVer2( spep_0 + 482, 1232, "", 0, 0, 0, -1);

--投げ飛ばす
SE039 = playSeVer2( spep_0 + 590, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 590, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 590, 1121, "",spep_0 + 734, 0, 102, -1);

--かめはめ波溜め
SE043 = playSeVer2( spep_0 + 670, 1210, "",spep_0 + 778, 10, 24, -1);
setStartTimeMs( SE043, 867 );
SE049 = playSeVer2( spep_0 + 670, 1191, "",spep_0 + 776, 0, 22, -1);
SE050 = playSeVer2( spep_0 + 670, 1209, "",spep_0 + 776, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 670, SE050, 68 );
SE057 = playSeVer2( spep_0 + 730, 1209, "",spep_0 + 774, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 730, SE057, 68 );

--構える
SE045 = playSeVer2( spep_0 + 638, 1189, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 638, 1233, "", 0, 0, 0, -1);

--着地する
SE053 = playSeVer2( spep_0 + 696, 63, "",spep_0 + 740, 0, 16, -1);
SE054 = playSeVer2( spep_0 + 714, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 714, SE054, 240 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --760F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE060 = playSeVer2( spep_1 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE060, 50 );

--発射前溜め
SE048 = playSeVer2( spep_1 + 74, 1210, "",spep_1 + 148, 4, 26, -1);
setStartTimeMs( SE048, 2767 );
SE056 = playSeVer2( spep_1 + 74, 1191, "",spep_1 + 148, 2, 26, -1);
setStartTimeMs( SE056, 1867 );
SE061 = playSeVer2( spep_1 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE061, 50 );
SE062 = playSeVer2( spep_1 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 98, SE062, 50 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射(ef_002b)
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

setDisp( spep_2 + 138 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 186 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 138 + OFFSET_X, 1, -39.5, -102.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -39.5, -102.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -31.8, -97 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -31.8, -97 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -24.8, -91.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -24.8, -91.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -18.7, -87.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -18.7, -87.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -13.5, -83.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -13.5, -83.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -9, -79.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -9, -79.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -5.3, -77.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -5.3, -77.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -2.5, -75 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -2.5, -75 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -0.4, -73.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -0.4, -73.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 0.8, -72.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 0.8, -72.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 1.2, -72.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 1.2, -72.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 5, -72 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 5, -72 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 138 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 3, 0.254, 0.98, 0.713, 0.6 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--発射前溜め
SE063 = playSeVer2( spep_2 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE063, 50 );

--かめはめ波発射
SE064 = playSeVer2( spep_2 + 28, 1284, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 28, 1205, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 28, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE066, 60 );

--気弾飛んでいく
SE067 = playSeVer2( spep_2 + 110, 1202, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 116, 1021, "", 0, 0, 0, -1);

--爆発
SE069 = playSeVer2( spep_2 + 156, 1069, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 180, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 322F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 飛んでくる二人～気をためる二人
-------------------------------------------------
MAX_FRAME_0 = 760;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 飛んでくる二人～気をためる二人(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 飛んでくる二人～気をためる二人(ef_001br)
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
spep_x = spep_0 + 2;

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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 142 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 122 + OFFSET_X, 1, -51.1, -16 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -51.1, -16 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 167.4, -33.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 167.4, -33.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 116.4, 41.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 116.4, 41.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 172.4, -28.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 172.4, -28.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 87.4, -30.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 87.4, -30.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 145.4, 12.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 145.4, 12.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 117.4, -12.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 117.4, -12.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 122.4, 13.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 122.4, 13.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 174.5, -5.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 174.5, -5.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 248.8, 26.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 248.8, 26.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 434.4, 61.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 434.4, 61.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 515.5, 54.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 515.5, 54.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 592.7, 50.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 592.7, 50.9 , 0 );

setScaleKey( spep_0 + 122 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.48, 2.48 );

setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -15 );

--敵の動き2

setDisp( spep_0 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 492 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 392 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 196 + OFFSET_X, 1, -740.2, -691.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -740.2, -691.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -642.8, -657 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -642.8, -657 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -551.7, -624.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -551.7, -624.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -466.9, -594 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -466.9, -594 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -388.3, -565.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -388.3, -565.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -316, -540.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -316, -540.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -250, -516.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -250, -516.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -190.3, -495.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -190.3, -495.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -136.9, -476 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -136.9, -476 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -89.8, -459.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -89.8, -459.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -48.9, -444.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -48.9, -444.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -14.3, -432.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -14.3, -432.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 13.9, -422 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 13.9, -422 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -275.8, -225.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -275.8, -225.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -211.3, -171.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -211.3, -171.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -155.4, -124.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -155.4, -124.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -108, -85.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -108, -85.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -69.3, -52.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -69.3, -52.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -39.2, -27.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -39.2, -27.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -17.7, -9.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -17.7, -9.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -4.8, 1.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -4.8, 1.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -0.5, 5.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -0.5, 5.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 179.4, -92 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 179.4, -92 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 87.4, 20 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 87.4, 20 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 199.4, -44 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 199.4, -44 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 87.4, -96 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 87.4, -96 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 151.4, -12 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 151.4, -12 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 119.4, -68 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 119.4, -68 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 111.4, -20 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 111.4, -20 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 155.4, -56 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 155.4, -56 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 131.4, -44 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 131.4, -44 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 119.4, -32 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 119.4, -32 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 131.4, -60 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 131.4, -60 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 139.4, -32 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 139.4, -32 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 132.4, -100 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 132.4, -100 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 155.9, -106.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 155.9, -106.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 176.3, -113 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 176.3, -113 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 193.6, -118.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 193.6, -118.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 207.7, -122.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 207.7, -122.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 218.7, -125.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 218.7, -125.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 226.6, -128 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 226.6, -128 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 231.3, -129.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 231.3, -129.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 232.9, -129.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 232.9, -129.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -640, 457.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -640, 457.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -588.9, 411.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -588.9, 411.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -435.5, 271.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -435.5, 271.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -179.9, 37.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -179.9, 37.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -31.8, -139.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -31.8, -139.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -79.8, -33.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -79.8, -33.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -113.9, -127.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -113.9, -127.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -24.3, -17.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -24.3, -17.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -58.8, -79 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -58.8, -79 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -69.3, -29.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -69.3, -29.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -51.9, -47.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -51.9, -47.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -58.6, -34.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -58.6, -34.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -57.4, -29 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -57.4, -29 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -56.2, -24.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -56.2, -24.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -55.2, -19.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -55.2, -19.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -54.2, -15.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -54.2, -15.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -53.2, -11.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -53.2, -11.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -52.4, -8.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -52.4, -8.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -51.6, -5.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -51.6, -5.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -50.9, -2.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -50.9, -2.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -50.2, 0.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -50.2, 0.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -49.7, 2.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -49.7, 2.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -49.2, 4.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -49.2, 4.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -48.8, 6.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -48.8, 6.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -48.4, 7.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -48.4, 7.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -48.2, 8.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -48.2, 8.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -48, 9.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -48, 9.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -47.9, 10 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -47.9, 10 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -47.8, 10.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -47.8, 10.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -264.1, -134 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -264.1, -134 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -298.1, -510 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -298.1, -510 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -256.1, 54 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -256.1, 54 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -136.1, 172.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -136.1, 172.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -128.4, 174.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -128.4, 174.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -120.8, 177.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -120.8, 177.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -113.2, 180.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -113.2, 180.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -105.6, 183.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -105.6, 183.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -98, 186.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -98, 186.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -94, 188.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -94, 188.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -278, -275.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -278, -275.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -298, -191.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -298, -191.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -281.8, -463.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -281.8, -463.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -325.8, -443.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -325.8, -443.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -210.1, -83.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -210.1, -83.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -209.6, -91.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -209.6, -91.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -204.1, -101.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -204.1, -69.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -204.1, -69.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -197.1, -83.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -197.1, -83.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -210.1, -92.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -210.1, -92.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -210.1, -75.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -197.6, -98.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -197.6, -98.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -204.1, -76.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -204.1, -76.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -216.1, -82.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -216.1, -82.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -206.6, -92.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -206.6, -92.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -208.1, -77.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -208.1, -77.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -197.6, -102.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -197.6, -102.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -210.1, -67.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -214.6, -85.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -214.6, -85.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -203.1, -95.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -203.1, -95.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -204.1, -77.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -202.1, -111.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 99.8, -40.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 93.8, -22.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 99.8, -24.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 93.8, -46.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 107.8, -68.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 93.8, -14.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 93.8, -30.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 99.8, -56.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 99.8, -32.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 101.8, -58.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 101.8, -58.2 , 0 );

setScaleKey( spep_0 + 196 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.12, 2.12 );

setRotateKey( spep_0 + 196 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 118 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 118 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 163 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 165 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -15 );

--敵の動き3

setDisp( spep_0 + 564 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 564 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 564 + OFFSET_X, 1, 217.7, -1670.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 217.7, -1670.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 225.7, -1706.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 225.7, -1706.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 257.8, -1166.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 257.8, -1166.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 257.8, -1182.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 257.8, -1182.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 211.6, -952.2 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 211.6, -952.2 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 211.6, -935.2 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 211.6, -935.2 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 173, -723.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 173, -723.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 165, -692.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 165, -692.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 114.8, -468.8 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 114.8, -468.8 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 114.8, -475.8 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 114.8, -475.8 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 91.9, -394 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 91.9, -394 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 97.9, -407 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 97.9, -407 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 65.6, -325.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 65.6, -325.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 65.6, -334.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 65.6, -334.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 41.4, -302.8 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 41.4, -302.8 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 28.6, -46.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 28.6, -46.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 22.9, 30.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 22.9, 30.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 18.5, 87.5 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 18.5, 87.5 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 15.7, 124 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 15.7, 124 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 15.2, 135.7 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 15.2, 135.7 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 14.9, 144.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 14.9, 144.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 14.6, 150.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 14.6, 150.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 14.5, 153.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 14.5, 153.1 , 0 );

setScaleKey( spep_0 + 564 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 564 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -12.9 );

-- ** 音 ** --

--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 2, 1019, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1019, "", 0, 0, 0, -1);

--画面前へ
SE006 = playSeVer2( spep_0 + 64, 63, "",spep_0 + 146, 0, 38, -1);
SE007 = playSeVer2( spep_0 + 68, 44, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
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

--飛んでくる
SE009 = playSeVer2( spep_0 + 130, 1019, "",spep_0 + 198, 0, 52, -1);

--蹴る
SE008 = playSeVer2( spep_0 + 126, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE008, 153 );
SE010 = playSeVer2( spep_0 + 134, 1001, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE011, 79 );

--飛び上がる
SE012 = playSeVer2( spep_0 + 172, 1452, "", 0, 0, 0, -1);

--ライダーキック
SE013 = playSeVer2( spep_0 + 224, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE014, 84 );
SE015 = playSeVer2( spep_0 + 232, 1153, "", 0, 0, 0, -1);

--敵落ちていく
SE016 = playSeVer2( spep_0 + 232, 1183, "",spep_0 + 318, 0, 26, -1);
SE017 = playSeVer2( spep_0 + 262, 1277, "", 0, 0, 0, -1);

--地面激突
SE018 = playSeVer2( spep_0 + 284, 1159, "",spep_0 + 450, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 284, SE018, 84 );

--瞬間移動
SE019 = playSeVer2( spep_0 + 294, 1109, "", 0, 0, 0, -1);

--敵掴む
SE020 = playSeVer2( spep_0 + 324, 1116, "",spep_0 + 378, 0, 32, -1);
SE022 = playSeVer2( spep_0 + 344, 1007, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE021, 50 );
SE023 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 50 );
SE025 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE025, 50 );
SE029 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 50 );
stopSeIfDoubleSpeed( spep_0 + 408, SE029 );
SE030 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE030, 50 );
SE032 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE032, 50 );
SE033 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE033, 50 );
SE035 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE035, 50 );
stopSeIfDoubleSpeed( spep_0 + 504, SE035 );
SE036 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE036, 50 );
SE037 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE037, 50 );
SE038 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE038, 50 );
SE042 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE042, 50 );
stopSeIfDoubleSpeed( spep_0 + 600, SE042 );
SE044 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE044, 50 );
SE047 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE047, 50 );
SE051 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE051, 50 );
SE052 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE052, 50 );
stopSeIfDoubleSpeed( spep_0 + 696, SE052 );
SE055 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE055, 50 );
SE058 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE058, 50 );

--地面ひきずる
SE024 = playSeVer2( spep_0 + 382, 1011, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 390, 1044, "",spep_0 + 626, 0, 22, -1);
SE027 = playSeVer2( spep_0 + 390, 1226, "",spep_0 + 656, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 390, SE027, 83 );
SE028 = playSeVer2( spep_0 + 390, 1278, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 638, SE045 );
SE031 = playSeVer2( spep_0 + 434, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 73 );

--画面遷移
SE034 = playSeVer2( spep_0 + 482, 1232, "", 0, 0, 0, -1);

--投げ飛ばす
SE039 = playSeVer2( spep_0 + 590, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 590, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 590, 1121, "",spep_0 + 734, 0, 102, -1);

--かめはめ波溜め
SE043 = playSeVer2( spep_0 + 670, 1210, "",spep_0 + 778, 10, 24, -1);
setStartTimeMs( SE043, 867 );
SE049 = playSeVer2( spep_0 + 670, 1191, "",spep_0 + 776, 0, 22, -1);
SE050 = playSeVer2( spep_0 + 670, 1209, "",spep_0 + 776, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 670, SE050, 68 );
SE057 = playSeVer2( spep_0 + 730, 1209, "",spep_0 + 774, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 730, SE057, 68 );

--構える
SE045 = playSeVer2( spep_0 + 638, 1189, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 638, 1233, "", 0, 0, 0, -1);

--着地する
SE053 = playSeVer2( spep_0 + 696, 63, "",spep_0 + 740, 0, 16, -1);
SE054 = playSeVer2( spep_0 + 714, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 714, SE054, 240 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --760F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE060 = playSeVer2( spep_1 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE060, 50 );

--発射前溜め
SE048 = playSeVer2( spep_1 + 74, 1210, "",spep_1 + 148, 4, 26, -1);
setStartTimeMs( SE048, 2767 );
SE056 = playSeVer2( spep_1 + 74, 1191, "",spep_1 + 148, 2, 26, -1);
setStartTimeMs( SE056, 1867 );
SE061 = playSeVer2( spep_1 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE061, 50 );
SE062 = playSeVer2( spep_1 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 98, SE062, 50 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 138 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 186 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 138 + OFFSET_X, 1, 39.5, -102.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 39.5, -102.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 31.8, -97 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 31.8, -97 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 24.8, -91.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 24.8, -91.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 18.7, -87.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 18.7, -87.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 13.5, -83.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 13.5, -83.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 9, -79.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 9, -79.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 5.3, -77.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 5.3, -77.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 2.5, -75 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 2.5, -75 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 0.4, -73.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 0.4, -73.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -0.8, -72.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -0.8, -72.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -1.2, -72.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -1.2, -72.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -5, -72 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -5, -72 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 138 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 3, 0.254, 0.98, 0.713, 0.6 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--発射前溜め
SE063 = playSeVer2( spep_2 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE063, 50 );

--かめはめ波発射
SE064 = playSeVer2( spep_2 + 28, 1284, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 28, 1205, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 28, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE066, 60 );

--気弾飛んでいく
SE067 = playSeVer2( spep_2 + 110, 1202, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 116, 1021, "", 0, 0, 0, -1);

--爆発
SE069 = playSeVer2( spep_2 + 156, 1069, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 180, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 322F

end
