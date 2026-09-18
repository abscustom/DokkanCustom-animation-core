--9030500:LR_超ゴジータ_アクティブ必殺技_エネミー側：
--sp_effect_b4_00369
--sp2843

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方側と共通)
SP_01b = 163632;  --   ef_001b スタート〜フィニッシュ
SP_02  = 163633;  --   ef_002 KOループ用

--エフェクト(敵)
SP_01r = 163634;  --ef_001r スタート〜フィニッシュ_敵用

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

ENABLE_AUTO_TIME_STRETCH(0.68);

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

------------------------------------------------------
-- スタート〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1574;

if ( _IS_DEAD_LAST_ == 1 ) then
    MAX_FRAME_0 = 1776;
end

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- スタート〜フィニッシュ(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

KO = entryEffectLife( spep_0 + 1768, SP_02, 26, 0x100, -1, 0, 0, 0); -- KOループ用(ef_002)
setEffMoveKey( spep_0 + 1768, KO, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0 + 26, KO, 0, 0 , 0);
setEffScaleKey( spep_0 + 1768, KO, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0 + 26, KO, -1.0, 1.0);
setEffRotateKey( spep_0 + 1768, KO, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0 + 26, KO, 0);
setEffAlphaKey( spep_0 + 1768, KO, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 + 26, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 200 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 200 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 200 + OFFSET_X, 1, -589.2, -373 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -589.2, -373 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -546.7, -351.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -546.7, -351.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -498.5, -326.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -498.5, -326.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -444.6, -298.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -444.6, -298.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -385.1, -268.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -385.1, -268.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -319.9, -234.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -319.9, -234.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -249.3, -198.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -249.3, -198.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -230.3, -176.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -230.3, -176.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -227.1, -180.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -227.1, -180.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -224.3, -184.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -224.3, -184.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -221.9, -187.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -221.9, -187.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -219.9, -190 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -219.9, -190 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -218.1, -192.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -218.1, -192.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -216.4, -194.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -216.4, -194.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -215, -196.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -215, -196.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -213.8, -197.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -213.8, -197.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -212.7, -199.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -212.7, -199.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -211.7, -200.5 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -211.7, -200.5 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -210.9, -201.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -210.9, -201.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -210.2, -202.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -210.2, -202.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -209.5, -203.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -209.5, -203.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -209, -204 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -209, -204 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -208.6, -204.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -208.6, -204.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -208.2, -205 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -208.2, -205 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -208, -205.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -208, -205.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -207.9, -205.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -207.9, -205.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -207.8, -205.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -207.8, -205.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -211.6, -284.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -211.6, -284.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -217.7, -414.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -217.7, -414.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -226.2, -594.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -226.2, -594.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -239.6, -828.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -239.6, -828.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -316.1, -1082.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -316.1, -1082.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -303.6, -974.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -303.6, -974.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -303.6, -975.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -303.6, -975.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -302.3, -974.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -302.3, -974.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -302.9, -976.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -302.9, -976.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -305.5, -975.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -305.5, -975.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -303.6, -975.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -303.6, -975.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -303.9, -977.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -303.9, -977.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -270.5, -636.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -270.5, -636.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -270.5, -630.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -270.5, -630.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -220.6, -355.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -220.6, -355.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -212.2, -273 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -212.2, -273 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -209.8, -271.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -209.8, -271.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -212.2, -273 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -212.2, -273 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -212.2, -245.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -212.2, -245.6 , 0 );

setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 470 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 358 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 360 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 358 + OFFSET_X, 1, -24.5, -84.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -24.5, -84.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -173.5, -283.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -173.5, -283.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -133.5, -247.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -133.5, -247.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -62.5, -236.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -62.5, -236.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -61.1, -134.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -61.1, -134.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -56.8, -213.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -56.8, -213.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -66.3, -132.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -66.3, -132.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -53.8, -213.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -53.8, -213.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -66.6, -130.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -66.6, -130.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -57.8, -196.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -57.8, -196.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -70, -153.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -70, -153.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -60.2, -191.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -60.2, -191.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -65.9, -164.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -65.9, -164.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -67.7, -194.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -67.7, -194.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -64.8, -167.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -64.8, -167.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -72.5, -187.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -72.5, -187.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -69.4, -178.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -69.4, -178.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -70.2, -187.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -70.2, -187.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -66.2, -179.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -66.2, -179.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -74.5, -192.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -74.5, -192.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -76.1, -182.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -76.1, -182.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -71.5, -190.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -71.5, -190.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -82.1, -187 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -82.1, -187 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -73.6, -185.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -73.6, -185.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -83.1, -193 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -83.1, -193 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -71.4, -189.8 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -71.4, -189.8 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -84.3, -194.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -84.3, -194.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -76.8, -186.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -76.8, -186.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -80.9, -196.3 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -80.9, -196.3 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -80, -187.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -80, -187.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -80.7, -196 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -80.7, -196 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -77.5, -188.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -77.5, -188.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -83, -191.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -83, -191.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -75.9, -187.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -75.9, -187.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -79.6, -191.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -79.6, -191.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 0, -496.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 0, -496.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 0.9, -499.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 0.9, -499.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -6.3, -510 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -6.3, -510 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -2.3, -502.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -2.3, -502.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -4.6, -511.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -4.6, -511.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -1.5, -507 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -1.5, -507 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -4.2, -509.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -4.2, -509.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -1.7, -510.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -1.7, -510.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -4.2, -512.3 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -4.2, -512.3 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -1.1, -512.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -1.1, -512.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -3.8, -634.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -3.8, -634.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -2.2, -633 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -2.2, -633 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -3.8, -650 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -3.8, -650 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -2.6, -648.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -2.6, -648.4 , 0 );

setScaleKey( spep_0 + 358 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 358 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 19.8 );

--敵の動き3
setDisp( spep_0 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 534 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 494 + OFFSET_X, 1, 16.1, -604.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 16.1, -604.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 13.6, -488.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 13.6, -488.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 12.1, -401.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 12.1, -401.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 16.1, -410.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 16.1, -410.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 13.6, -421.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 13.6, -421.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 16.1, -402 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 16.1, -402 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 8.7, -418.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 8.7, -418.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 16.1, -404 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 16.1, -404 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 16.1, -411.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 16.1, -411.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 11.2, -416.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 11.2, -416.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 18.1, -406 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 18.1, -406 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 16.1, -404 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 16.1, -404 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 16.1, -408 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 16.1, -408 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 16.1, -404 , 0 );

setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 494 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 19.8 );

--敵の動き4
setDisp( spep_0 + 578 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 870 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 578 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 600 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 796 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 578 + OFFSET_X, 1, -186.8, -268.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -186.8, -268.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -173.5, -196.1 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -173.5, -196.1 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -180.5, -193.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -180.5, -193.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -196.9, -247.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -196.9, -247.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -199.4, -232.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -199.4, -232.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -201.3, -217.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -201.3, -217.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -205.7, -195.8 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -205.7, -195.8 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -215.7, -240 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -215.7, -240 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -88.1, 122.2 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -88.1, 122.2 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -124, 120.3 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -124, 120.3 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -88.8, 124.9 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -88.8, 124.9 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -110.4, 119.5 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -110.4, 119.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -105.6, 146.2 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -105.6, 146.2 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -97.3, 101.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -97.3, 101.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -104.1, 142 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -104.1, 142 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -103, 128.2 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -103, 128.2 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -114.4, 143.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -114.4, 143.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -118.4, 141.6 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -118.4, 141.6 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -124.1, 144 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -124.1, 144 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -146.3, 191.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -146.3, 191.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -164.6, 206.8 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -164.6, 206.8 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -201.3, 252.9 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -201.3, 252.9 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -249.2, 313.2 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -249.2, 313.2 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -299.7, 376.8 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -299.7, 376.8 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -350.3, 420.5 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -350.3, 420.5 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -396.1, 498.1 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -396.1, 498.1 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 59.6, -95.7 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 59.6, -95.7 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 2, 31.5 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 2, 31.5 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -34.7, 115.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -34.7, 115.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -60.6, 174.5 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -60.6, 174.5 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -80.3, 219.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -80.3, 219.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -95.7, 254.2 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -95.7, 254.2 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -108.3, 282.2 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -108.3, 282.2 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -118.7, 305 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -118.7, 305 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -127.4, 323.8 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -127.4, 323.8 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -134.8, 339.6 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -134.8, 339.6 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -141.2, 352.8 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -141.2, 352.8 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -146.6, 364.1 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -146.6, 364.1 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -151.3, 373.5 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -151.3, 373.5 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -155.4, 381.7 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -155.4, 381.7 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -158.8, 388.6 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -158.8, 388.6 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -162, 394.7 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -162, 394.7 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -164.6, 399.9 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -164.6, 399.9 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -167.1, 404.4 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -167.1, 404.4 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -169.1, 408.2 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -169.1, 408.2 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -171, 411.7 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -171, 411.7 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -172.6, 414.6 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -172.6, 414.6 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -174, 417.2 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -174, 417.2 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -175.2, 419.3 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -175.2, 419.3 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -176.2, 421.2 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -176.2, 421.2 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -177.1, 422.8 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -177.1, 422.8 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -177.9, 424.3 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -177.9, 424.3 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -178.7, 425.6 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -178.7, 425.6 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -179.3, 426.8 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -179.3, 426.8 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -180, 428 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -180, 428 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -180.4, 431.4 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -180.4, 431.4 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -182, 445.5 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -182, 445.5 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -185.9, 477.5 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -185.9, 477.5 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -193.7, 542.9 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -193.7, 542.9 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -214, 712.9 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -214, 712.9 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -370, 1034.9 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -370, 1034.9 , 0 );

setScaleKey( spep_0 + 578 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 809 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 817 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 818 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 819 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 820 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 821 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 822 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 857 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 859 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 860 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 870 + OFFSET_X, 1, 7, 7 );

setRotateKey( spep_0 + 578 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 870 + OFFSET_X, 1, 45 );

--敵の動き5
setDisp( spep_0 + 1186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1300 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1186 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 1240 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 1186 + OFFSET_X, 1, -214.1, 11.7 , 0 );
setMoveKey( spep_0 + 1187 + OFFSET_X, 1, -214.1, 11.7 , 0 );
setMoveKey( spep_0 + 1188 + OFFSET_X, 1, -291.1, 34.2 , 0 );
setMoveKey( spep_0 + 1189 + OFFSET_X, 1, -291.1, 34.2 , 0 );
setMoveKey( spep_0 + 1190 + OFFSET_X, 1, -134.2, 7 , 0 );
setMoveKey( spep_0 + 1191 + OFFSET_X, 1, -134.2, 7 , 0 );
setMoveKey( spep_0 + 1192 + OFFSET_X, 1, -241.7, 31.2 , 0 );
setMoveKey( spep_0 + 1193 + OFFSET_X, 1, -241.7, 31.2 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, -146.7, -40.1 , 0 );
setMoveKey( spep_0 + 1195 + OFFSET_X, 1, -146.7, -40.1 , 0 );
setMoveKey( spep_0 + 1196 + OFFSET_X, 1, -263.2, 26.9 , 0 );
setMoveKey( spep_0 + 1197 + OFFSET_X, 1, -263.2, 26.9 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, -222.8, -50.3 , 0 );
setMoveKey( spep_0 + 1199 + OFFSET_X, 1, -222.8, -50.3 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, -189.3, 28.3 , 0 );
setMoveKey( spep_0 + 1201 + OFFSET_X, 1, -189.3, 28.3 , 0 );
setMoveKey( spep_0 + 1202 + OFFSET_X, 1, -219.9, 12.1 , 0 );
setMoveKey( spep_0 + 1203 + OFFSET_X, 1, -219.9, 12.1 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, -206.8, 11.5 , 0 );
setMoveKey( spep_0 + 1205 + OFFSET_X, 1, -206.8, 11.5 , 0 );
setMoveKey( spep_0 + 1206 + OFFSET_X, 1, -218.5, 10.3 , 0 );
setMoveKey( spep_0 + 1207 + OFFSET_X, 1, -218.5, 10.3 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, -206.9, 9.8 , 0 );
setMoveKey( spep_0 + 1209 + OFFSET_X, 1, -206.9, 9.8 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, -214, 17.7 , 0 );
setMoveKey( spep_0 + 1211 + OFFSET_X, 1, -214, 17.7 , 0 );
setMoveKey( spep_0 + 1212 + OFFSET_X, 1, -204, 7.6 , 0 );
setMoveKey( spep_0 + 1213 + OFFSET_X, 1, -204, 7.6 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, -216.2, 8.5 , 0 );
setMoveKey( spep_0 + 1215 + OFFSET_X, 1, -216.2, 8.5 , 0 );
setMoveKey( spep_0 + 1216 + OFFSET_X, 1, -204.2, 8.9 , 0 );
setMoveKey( spep_0 + 1217 + OFFSET_X, 1, -204.2, 8.9 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, -211.3, 15.3 , 0 );
setMoveKey( spep_0 + 1219 + OFFSET_X, 1, -211.3, 15.3 , 0 );
setMoveKey( spep_0 + 1220 + OFFSET_X, 1, -209.2, 5.8 , 0 );
setMoveKey( spep_0 + 1221 + OFFSET_X, 1, -209.2, 5.8 , 0 );
setMoveKey( spep_0 + 1222 + OFFSET_X, 1, -201.4, 12 , 0 );
setMoveKey( spep_0 + 1223 + OFFSET_X, 1, -201.4, 12 , 0 );
setMoveKey( spep_0 + 1224 + OFFSET_X, 1, -202.7, 8.2 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, -202.7, 8.2 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, -199.9, 7.3 , 0 );
setMoveKey( spep_0 + 1227 + OFFSET_X, 1, -199.9, 7.3 , 0 );
setMoveKey( spep_0 + 1228 + OFFSET_X, 1, -196.5, 6.3 , 0 );
setMoveKey( spep_0 + 1229 + OFFSET_X, 1, -196.5, 6.3 , 0 );
setMoveKey( spep_0 + 1230 + OFFSET_X, 1, -194, 3.9 , 0 );
setMoveKey( spep_0 + 1231 + OFFSET_X, 1, -194, 3.9 , 0 );
setMoveKey( spep_0 + 1232 + OFFSET_X, 1, -190.4, 1.1 , 0 );
setMoveKey( spep_0 + 1233 + OFFSET_X, 1, -190.4, 1.1 , 0 );
setMoveKey( spep_0 + 1234 + OFFSET_X, 1, -183.7, 5.5 , 0 );
setMoveKey( spep_0 + 1235 + OFFSET_X, 1, -183.7, 5.5 , 0 );
setMoveKey( spep_0 + 1236 + OFFSET_X, 1, -165.9, -9.7 , 0 );
setMoveKey( spep_0 + 1237 + OFFSET_X, 1, -165.9, -9.7 , 0 );
setMoveKey( spep_0 + 1238 + OFFSET_X, 1, -157.3, -5.8 , 0 );
setMoveKey( spep_0 + 1239 + OFFSET_X, 1, -157.3, -5.8 , 0 );
setMoveKey( spep_0 + 1240 + OFFSET_X, 1, -139.3, -14.2 , 0 );
setMoveKey( spep_0 + 1241 + OFFSET_X, 1, -139.3, -14.2 , 0 );
setMoveKey( spep_0 + 1242 + OFFSET_X, 1, -134.5, -13.2 , 0 );
setMoveKey( spep_0 + 1243 + OFFSET_X, 1, -134.5, -13.2 , 0 );
setMoveKey( spep_0 + 1244 + OFFSET_X, 1, -118.1, -12.1 , 0 );
setMoveKey( spep_0 + 1245 + OFFSET_X, 1, -118.1, -12.1 , 0 );
setMoveKey( spep_0 + 1246 + OFFSET_X, 1, -102.8, -22.7 , 0 );
setMoveKey( spep_0 + 1247 + OFFSET_X, 1, -102.8, -22.7 , 0 );
setMoveKey( spep_0 + 1248 + OFFSET_X, 1, -93.1, -23 , 0 );
setMoveKey( spep_0 + 1249 + OFFSET_X, 1, -93.1, -23 , 0 );
setMoveKey( spep_0 + 1250 + OFFSET_X, 1, -85.9, -22.5 , 0 );
setMoveKey( spep_0 + 1251 + OFFSET_X, 1, -85.9, -22.5 , 0 );
setMoveKey( spep_0 + 1252 + OFFSET_X, 1, -78.1, -30.3 , 0 );
setMoveKey( spep_0 + 1253 + OFFSET_X, 1, -78.1, -30.3 , 0 );
setMoveKey( spep_0 + 1254 + OFFSET_X, 1, -75, -33.6 , 0 );
setMoveKey( spep_0 + 1255 + OFFSET_X, 1, -75, -33.6 , 0 );
setMoveKey( spep_0 + 1256 + OFFSET_X, 1, -73.2, -36.4 , 0 );
setMoveKey( spep_0 + 1257 + OFFSET_X, 1, -73.2, -36.4 , 0 );
setMoveKey( spep_0 + 1258 + OFFSET_X, 1, -72.6, -29.7 , 0 );
setMoveKey( spep_0 + 1259 + OFFSET_X, 1, -72.6, -29.7 , 0 );
setMoveKey( spep_0 + 1260 + OFFSET_X, 1, -63.7, -27.8 , 0 );
setMoveKey( spep_0 + 1261 + OFFSET_X, 1, -63.7, -27.8 , 0 );
setMoveKey( spep_0 + 1262 + OFFSET_X, 1, -67.1, -33.7 , 0 );
setMoveKey( spep_0 + 1263 + OFFSET_X, 1, -67.1, -33.7 , 0 );
setMoveKey( spep_0 + 1264 + OFFSET_X, 1, -67.5, -34.9 , 0 );
setMoveKey( spep_0 + 1265 + OFFSET_X, 1, -67.5, -34.9 , 0 );
setMoveKey( spep_0 + 1266 + OFFSET_X, 1, -68.2, -36 , 0 );
setMoveKey( spep_0 + 1267 + OFFSET_X, 1, -68.2, -36 , 0 );
setMoveKey( spep_0 + 1268 + OFFSET_X, 1, -67, -33 , 0 );
setMoveKey( spep_0 + 1269 + OFFSET_X, 1, -67, -33 , 0 );
setMoveKey( spep_0 + 1270 + OFFSET_X, 1, -65.8, -33.9 , 0 );
setMoveKey( spep_0 + 1271 + OFFSET_X, 1, -65.8, -33.9 , 0 );
setMoveKey( spep_0 + 1272 + OFFSET_X, 1, -65.8, -34.9 , 0 );
setMoveKey( spep_0 + 1273 + OFFSET_X, 1, -65.8, -34.9 , 0 );
setMoveKey( spep_0 + 1274 + OFFSET_X, 1, -65.8, -35.9 , 0 );
setMoveKey( spep_0 + 1275 + OFFSET_X, 1, -65.8, -35.9 , 0 );
setMoveKey( spep_0 + 1276 + OFFSET_X, 1, -65.8, -33.9 , 0 );
setMoveKey( spep_0 + 1300 + OFFSET_X, 1, -65.8, -33.9 , 0 );

setScaleKey( spep_0 + 1186 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 1193 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 1194 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 1199 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 1200 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 1203 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 1204 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 1205 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 1206 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 1207 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 1208 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 1209 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 1210 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 1211 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 1212 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 1213 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 1214 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 1215 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 1216 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 1217 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 1218 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 1219 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 1220 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 1221 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 1222 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 1223 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 1224 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 1225 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 1226 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 1227 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 1228 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 1229 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 1230 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 1231 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 1232 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 1233 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 1234 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 1235 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 1236 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 1237 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 1238 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 1239 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 1240 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 1241 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 1242 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 1243 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 1244 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1245 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1246 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 1247 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 1248 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 1249 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 1250 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1251 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1252 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 1253 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 1254 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 1255 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 1256 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1257 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1258 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 1259 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 1260 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1261 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1262 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 1263 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 1264 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 1265 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 1266 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 1300 + OFFSET_X, 1, 1.45, 1.45 );

setRotateKey( spep_0 + 1186 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1239 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1240 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 1300 + OFFSET_X, 1, 55 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 236, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 46 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 236, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 51 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE005 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 63 );
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 63 );
SE007 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 63 );
SE008 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 63 );
SE009 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 63 );
SE011 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE011, 63 );
SE012 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 63 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 63 );

--ズームアウト
SE010 = playSeVer2( spep_0 + 114, 1072, "", 0, 0, 0, -1);

--向かってくる
SE013 = playSeVer2( spep_0 + 174, 1011, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 174, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 174, 1117, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 218, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE016, 71 );
SE017 = playSeVer2( spep_0 + 222, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE017, 74 );
SE018 = playSeVer2( spep_0 + 234, 1354, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 238, 1109, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 238, 1279, "", 0, 0, 0, -1);

--飛び込んでくる
SE021 = playSeVer2( spep_0 + 294, 1427, "",spep_0 + 386, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 294, SE021, 60 );
SE022 = playSeVer2( spep_0 + 320, 1258, "",spep_0 + 386, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 320, SE022, 84 );
SE023 = playSeVer2( spep_0 + 328, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE023, 81 );
SE024 = playSeVer2( spep_0 + 330, 1304, "",spep_0 + 396, 0, 22, -1);
setPitch( spep_0 + 330, SE024, 300 );
setTimeStretch( SE024, 1.2, 30, 4 );

-- ** ボイス ** --
--「これが最強のフュージョンだ！！」
--playVoice( spep_0 + 8, 929 );
--setVoiceVolume( spep_0 + 8, 929, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 348; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);

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
--蹴りヒット
SE025 = playSeVer2( spep_0 + 354, 1123, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 362, 1159, "",spep_0 + 518, 0, 80, -1);

--翻る
SE027 = playSeVer2( spep_0 + 440, 1117, "",spep_0 + 522, 0, 22, -1);

--手つく
SE028 = playSeVer2( spep_0 + 490, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE028, 170 );
SE029 = playSeVer2( spep_0 + 492, 1012, "", 0, 0, 0, -1);

--腕回転
SE030 = playSeVer2( spep_0 + 530, 1208, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 532, 1116, "",spep_0 + 578, 0, 14, -1);
SE032 = playSeVer2( spep_0 + 540, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE033 = playSeVer2( spep_0 + 572, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 572, 1120, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 572, 1414, "", 0, 0, 0, -1);

--敵飛んでいく
SE036 = playSeVer2( spep_0 + 576, 1121, "",spep_0 + 690, 0, 70, -1);

--画面遷移
SE037 = playSeVer2( spep_0 + 626, 8, "", 0, 0, 0, -1);

--歩く
SE038 = playSeVer2( spep_0 + 674, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 674, SE038, 150 );
SE039 = playSeVer2( spep_0 + 720, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE039, 166 );

--風圧音
SE040 = playSeVer2( spep_0 + 724, 1427, "", 0, 64, 0, -1);

--瞬間移動
SE041 = playSeVer2( spep_0 + 764, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 764, SE041, 78 );
SE042 = playSeVer2( spep_0 + 774, 1235, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 780, 1279, "", 0, 0, 0, -1);

--向かっていく
SE044 = playSeVer2( spep_0 + 788, 1314, "",spep_0 + 958, 0, 56, -1);

--瞬間移動
SE045 = playSeVer2( spep_0 + 798, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE045, 126 );

--顔アップ
SE046 = playSeVer2( spep_0 + 850, 1116, "",spep_0 + 900, 0, 24, -1);

--ソウルパニッシャー溜め
SE047 = playSeVer2( spep_0 + 942, 1371, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE047, 68 );
setStartTimeMs( SE047,  1567 );     
SE048 = playSeVer2( spep_0 + 904, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 904, SE048, 282 );
SE049 = playSeVer2( spep_0 + 910, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE049, 146 );
SE050 = playSeVer2( spep_0 + 910, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE050, 65 );
setPitch( spep_0 + 910, SE050, -300 );
setTimeStretch( SE050, 0.8, 30, 4 );
SE051 = playSeVer2( spep_0 + 918, 1240, "",spep_0 + 1120, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 918, SE051, 174 );
SE052 = playSeVer2( spep_0 + 924, 1204, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE052, 123 );

--振りかぶる
SE053 = playSeVer2( spep_0 + 1084, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE053, 63 );
SE054 = playSeVer2( spep_0 + 1090, 1289, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1090, 1282, "", 0, 0, 0, -1);

--押し込む
SE056 = playSeVer2( spep_0 + 1134, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1134, SE056, 79 );
SE057 = playSeVer2( spep_0 + 1136, 1290, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1136, 1335, "", 0, 0, 0, -1);

--光溢れ出す
SE059 = playSeVer2( spep_0 + 1150, 1336, "",spep_0 + 1506, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 1150, SE059, 144 );
setTimeStretch( SE059, 1.25, 30, 4 );

--敵ヒット
SE060 = playSeVer2( spep_0 + 1184, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1184, SE060, 66 );
setTimeStretch( SE060, 0.89, 30, 4 );
SE061 = playSeVer2( spep_0 + 1184, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 1184, SE061, -400 );
setTimeStretch( SE061, 0.73, 30, 4 );
SE062 = playSeVer2( spep_0 + 1188, 1246, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 1188, 1011, "", 0, 0, 0, -1);

--光溢れ出す
SE064 = playSeVer2( spep_0 + 1218, 1305, "",spep_0 + 1418, 0, 136, -1);
SE065 = playSeVer2( spep_0 + 1218, 1334, "",spep_0 + 1320, 0, 38, -1);

--爆発
SE066 = playSeVer2( spep_0 + 1294, 1067, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 1294, 1156, "",spep_0 + 1556, 0, 56, -1);
SE068 = playSeVer2( spep_0 + 1294, 1159, "",spep_0 + 1562, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 1294, SE068, 73 );
SE069 = playSeVer2( spep_0 + 1294, 1264, "",spep_0 + 1560, 0, 70, -1);

--敵ごと消える
SE070 = playSeVer2( spep_0 + 1468, 1437, "",spep_0 + 1604, 8, 102, -1);
setSeVolumeByWorkId( spep_0 + 1468, SE070, 54 );
setStartTimeMs( SE070,  2167 );
SE071 = playSeVer2( spep_0 + 1478, 1225, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_0 + 1478, 1270, "",spep_0 + 1610, 0, 96, -1);
setPitch( spep_0 + 1478, SE072, 100 );
setTimeStretch( SE072, 1.07, 30, 4 );
SE073 = playSeVer2( spep_0 + 1478, 1307, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「地獄へ送り返してやる！！」
--playVoice( spep_0 + 1006, 930 );
--setVoiceVolume( spep_0 + 1006, 930, 120 );


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1570 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1386 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1574f (KO時 1776f)

end
