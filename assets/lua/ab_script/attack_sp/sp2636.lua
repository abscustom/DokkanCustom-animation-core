--4027760：UR_紅き仮面のサイヤ人(超サイヤ人ロゼフルパワー)_必殺技：神滅光破
--sp_effect_a1_00413
--sp2636

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162415; --敵味方共通 ef_001
SP_02 = 162416; --味方側 手前 ef_002
SP_03 = 162417; --味方側 裏側 ef_002b

--エフェクト(てき)
SP_01r = 162415; --敵味方共通
SP_02r = 162418; --敵側 裏側 ef_002br
SP_03r = 162419; --敵側 手前 ef_002r

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
-- 登場〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 敵味方共通 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, MAX_FRAME_0, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, MAX_FRAME_0, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
--]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 102 );
SE002_01 = playSeVer2( spep_0 + 0, 9, "",spep_0 + 106, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002_01, 60 );
--setTimeStretch( SE002, 2, 30, 4 );
SE002_02 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 106, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 120, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 124 );
SE004 = playSeVer2( spep_0 + 6, 1167, "",spep_0 + 110, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 40 );
setTimeStretch( SE004, 2, 35, 10 );
--腕クロス
SE005 = playSeVer2( spep_0 + 26, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 158 );
SE006 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 104F

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 614;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 味方側 手前 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 味方側 裏側 ef_002b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 200 + OFFSET_X, 1, 1);
setDisp( spep_1 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 200 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 258 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 200 + OFFSET_X, 1, -6.8, 27.7 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -6.8, 27.7 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 0.3, 23.9 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 0.3, 23.9 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 7.4, 20 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 7.4, 20 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 14.7, 16.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 14.7, 16.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, -40.1, -24.7 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, -40.1, -24.7 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 24.8, -21.5 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 24.8, -21.5 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, -27.7, 24.7 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, -27.7, 24.7 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 21.6, 12.3 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 21.6, 12.3 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -45.2, -20.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -45.2, -20.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 14.5, -12.7 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 14.5, -12.7 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, -43.1, 38 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, -43.1, 38 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 1.1, 29.9 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 1.1, 29.9 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -41.1, -15 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -41.1, -15 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, -70.9, 1.7 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, -70.9, 1.7 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, -11.2, 9.3 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -11.2, 9.3 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -68.7, 59.9 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -68.7, 59.9 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -11.9, 41.1 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -11.9, 41.1 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -41.4, -14.7 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -41.4, -14.7 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -58.6, -8.8 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -58.6, -8.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 13.8, -12.1 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 13.8, -12.1 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -31.2, 27.7 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -31.2, 27.7 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 25.6, 8.8 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 25.6, 8.8 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -3.9, -47 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -3.9, -47 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -21, -41.1 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, -21, -41.1 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 51.3, -44.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 51.3, -44.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 63.2, -23.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 63.2, -23.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 4, -27.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 4, -27.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -18.1, -12.9 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -18.1, -12.9 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 49.3, -7.7 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 49.3, -7.7 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -0.6, 40.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -0.6, 40.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 51.3, 30.2 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 51.3, 30.2 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 16.9, -17.1 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 16.9, -17.1 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -5.2, -2.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -5.2, -2.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 29.8, 1 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 29.8, 1 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 64.8, 4.6 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 64.8, 4.6 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 49.9, 22.1 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 49.9, 22.1 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 35, 39.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 35, 39.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 20.1, 57.1 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 20.1, 57.1 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 31.9, 50.9 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 31.9, 50.9 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 43.7, 44.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 43.7, 44.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 55.5, 38.5 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 55.5, 38.5 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 58.1, 40.5 , 0 );

setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 1.76, 1.76 );

setRotateKey( spep_1 + 200 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 239 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 240 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_1 + 241 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_1 + 242 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_1 + 243 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_1 + 244 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 245 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 246 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_1 + 249 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_1 + 251 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_1 + 252 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_1 + 253 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 255 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, 4.2 );

setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_1 + 288 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2
OFFSET_Y = 0.2;

setDisp( spep_1 + 330 + OFFSET_X, 1, 1);
setDisp( spep_1 + 390 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 330 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 330 + OFFSET_X, 1, -192.4, -182.9 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -192.4, -182.9 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -56.5, -105.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -56.5, -105.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -33.6, -67.4 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -33.6, -67.4 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 73.8, -42.7 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 73.8, -42.7 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 92.9, 5.1 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 92.9, 5.1 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 221.3, 76.2 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 221.3, 76.2 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 199.5, 88.2 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 199.5, 88.2 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 238.6, 68 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 238.6, 68 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 191.4, 72.4 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 191.4, 72.4 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 255.3, 101.5 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 255.3, 101.5 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 208.1, 93.6 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 208.1, 93.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 231.8, 95 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 231.8, 95 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 233.9, 96.3 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 233.9, 96.3 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 236, 97.7 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 236, 97.7 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 238.1, 99 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 238.1, 99 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 240.2, 100.4 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 240.2, 100.4 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 242.4, 101.7 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 242.4, 101.7 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 244.5, 103.1 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 244.5, 103.1 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 246.6, 104.5 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 246.6, 104.5 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 248.7, 105.8 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 248.7, 105.8 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 250.8, 107.1 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 250.8, 107.1 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 252.9, 108.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 252.9, 108.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 254.9, 109.7 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 254.9, 109.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 257.1, 111.1 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 257.1, 111.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 259.2, 112.4 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 259.2, 112.4 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 261.2, 113.8 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 261.2, 113.8 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 263.4, 115 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 263.4, 115 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 265.4, 116.4 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 265.4, 116.4 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 267.5, 117.7 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 267.5, 117.7 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 269.6, 119 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 269.6, 119 , 0 );

setScaleKey( spep_1 + 330 + OFFSET_X, 1, 2.37 + OFFSET_Y, 2.37 + OFFSET_Y );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 2.37 + OFFSET_Y, 2.37 + OFFSET_Y );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 2.18 + OFFSET_Y, 2.18 + OFFSET_Y );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 2.18 + OFFSET_Y, 2.18 + OFFSET_Y );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 2 + OFFSET_Y, 2 + OFFSET_Y );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 2 + OFFSET_Y, 2 + OFFSET_Y );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 1.83 + OFFSET_Y, 1.83 + OFFSET_Y );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 1.83 + OFFSET_Y, 1.83 + OFFSET_Y );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 1.66 + OFFSET_Y, 1.66 + OFFSET_Y );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 1.66 + OFFSET_Y, 1.66 + OFFSET_Y );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 1.5 + OFFSET_Y, 1.5 + OFFSET_Y );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 1.5 + OFFSET_Y, 1.5 + OFFSET_Y );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 1.39 + OFFSET_Y, 1.39 + OFFSET_Y );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 1.39 + OFFSET_Y, 1.39 + OFFSET_Y );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 1.38 + OFFSET_Y, 1.38 + OFFSET_Y );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 1.38 + OFFSET_Y, 1.38 + OFFSET_Y );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 1.37 + OFFSET_Y, 1.37 + OFFSET_Y );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 1.37 + OFFSET_Y, 1.37 + OFFSET_Y );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 1.36 + OFFSET_Y, 1.36 + OFFSET_Y );
setScaleKey( spep_1 + 365 + OFFSET_X, 1, 1.36 + OFFSET_Y, 1.36 + OFFSET_Y );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 1.35 + OFFSET_Y, 1.35 + OFFSET_Y );
setScaleKey( spep_1 + 369 + OFFSET_X, 1, 1.35 + OFFSET_Y, 1.35 + OFFSET_Y );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 1.34 + OFFSET_Y, 1.34 + OFFSET_Y );
setScaleKey( spep_1 + 375 + OFFSET_X, 1, 1.34 + OFFSET_Y, 1.34 + OFFSET_Y );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 1.33 + OFFSET_Y, 1.33 + OFFSET_Y );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 1.33 + OFFSET_Y, 1.33 + OFFSET_Y );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 1.32 + OFFSET_Y, 1.32 + OFFSET_Y );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 1.32 + OFFSET_Y, 1.32 + OFFSET_Y );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.31 + OFFSET_Y, 1.31 + OFFSET_Y );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.31 + OFFSET_Y, 1.31 + OFFSET_Y );

setRotateKey( spep_1 + 330 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_1 + 500 + OFFSET_X, 1, 1);
setDisp( spep_1 + 578 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 500 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 500 + OFFSET_X, 1, -59.6, 30.7 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, -59.6, 30.7 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, -59.2, 45.7 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, -59.2, 45.7 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, -32.7, 49.7 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, -32.7, 49.7 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, -36.3, 48.6 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, -36.3, 48.6 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, -16.7, 58.7 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, -16.7, 58.7 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, -21.3, 77.7 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, -21.3, 77.7 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 5.2, 81.7 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 5.2, 81.7 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 1.6, 80.6 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 1.6, 80.6 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 21.1, 90.7 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 21.1, 90.7 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 16.5, 109.7 , 0 );
setMoveKey( spep_1 + 519 + OFFSET_X, 1, 16.5, 109.7 , 0 );
setMoveKey( spep_1 + 520 + OFFSET_X, 1, 43, 113.7 , 0 );
setMoveKey( spep_1 + 521 + OFFSET_X, 1, 43, 113.7 , 0 );
setMoveKey( spep_1 + 522 + OFFSET_X, 1, 39.4, 112.7 , 0 );
setMoveKey( spep_1 + 523 + OFFSET_X, 1, 39.4, 112.7 , 0 );
setMoveKey( spep_1 + 524 + OFFSET_X, 1, 59, 122.7 , 0 );
setMoveKey( spep_1 + 525 + OFFSET_X, 1, 59, 122.7 , 0 );
setMoveKey( spep_1 + 526 + OFFSET_X, 1, 54.4, 141.7 , 0 );
setMoveKey( spep_1 + 527 + OFFSET_X, 1, 54.4, 141.7 , 0 );
setMoveKey( spep_1 + 528 + OFFSET_X, 1, 80.9, 145.7 , 0 );
setMoveKey( spep_1 + 529 + OFFSET_X, 1, 80.9, 145.7 , 0 );
setMoveKey( spep_1 + 530 + OFFSET_X, 1, 77.3, 144.7 , 0 );
setMoveKey( spep_1 + 531 + OFFSET_X, 1, 77.3, 144.7 , 0 );
setMoveKey( spep_1 + 532 + OFFSET_X, 1, 96.8, 154.7 , 0 );
setMoveKey( spep_1 + 533 + OFFSET_X, 1, 96.8, 154.7 , 0 );
setMoveKey( spep_1 + 534 + OFFSET_X, 1, 92.2, 173.7 , 0 );
setMoveKey( spep_1 + 535 + OFFSET_X, 1, 92.2, 173.7 , 0 );
setMoveKey( spep_1 + 536 + OFFSET_X, 1, 118.7, 177.7 , 0 );
setMoveKey( spep_1 + 537 + OFFSET_X, 1, 118.7, 177.7 , 0 );
setMoveKey( spep_1 + 538 + OFFSET_X, 1, 115.1, 176.7 , 0 );
setMoveKey( spep_1 + 539 + OFFSET_X, 1, 115.1, 176.7 , 0 );
setMoveKey( spep_1 + 540 + OFFSET_X, 1, 134.7, 186.8 , 0 );
setMoveKey( spep_1 + 541 + OFFSET_X, 1, 134.7, 186.8 , 0 );
setMoveKey( spep_1 + 542 + OFFSET_X, 1, 130.1, 205.8 , 0 );
setMoveKey( spep_1 + 543 + OFFSET_X, 1, 130.1, 205.8 , 0 );
setMoveKey( spep_1 + 544 + OFFSET_X, 1, 156.6, 209.8 , 0 );
setMoveKey( spep_1 + 545 + OFFSET_X, 1, 156.6, 209.8 , 0 );
setMoveKey( spep_1 + 546 + OFFSET_X, 1, 153, 208.7 , 0 );
setMoveKey( spep_1 + 547 + OFFSET_X, 1, 153, 208.7 , 0 );
setMoveKey( spep_1 + 548 + OFFSET_X, 1, 172.5, 218.8 , 0 );
setMoveKey( spep_1 + 549 + OFFSET_X, 1, 172.5, 218.8 , 0 );
setMoveKey( spep_1 + 550 + OFFSET_X, 1, 167.9, 237.8 , 0 );
setMoveKey( spep_1 + 551 + OFFSET_X, 1, 167.9, 237.8 , 0 );
setMoveKey( spep_1 + 552 + OFFSET_X, 1, 194.4, 241.8 , 0 );
setMoveKey( spep_1 + 553 + OFFSET_X, 1, 194.4, 241.8 , 0 );
setMoveKey( spep_1 + 554 + OFFSET_X, 1, 190.8, 240.7 , 0 );
setMoveKey( spep_1 + 555 + OFFSET_X, 1, 190.8, 240.7 , 0 );
setMoveKey( spep_1 + 556 + OFFSET_X, 1, 210.4, 250.8 , 0 );
setMoveKey( spep_1 + 557 + OFFSET_X, 1, 210.4, 250.8 , 0 );
setMoveKey( spep_1 + 558 + OFFSET_X, 1, 205.8, 269.8 , 0 );
setMoveKey( spep_1 + 559 + OFFSET_X, 1, 205.8, 269.8 , 0 );
setMoveKey( spep_1 + 560 + OFFSET_X, 1, 232.3, 273.8 , 0 );
setMoveKey( spep_1 + 561 + OFFSET_X, 1, 232.3, 273.8 , 0 );
setMoveKey( spep_1 + 562 + OFFSET_X, 1, 228.7, 272.8 , 0 );
setMoveKey( spep_1 + 563 + OFFSET_X, 1, 228.7, 272.8 , 0 );
setMoveKey( spep_1 + 564 + OFFSET_X, 1, 248.3, 282.8 , 0 );
setMoveKey( spep_1 + 565 + OFFSET_X, 1, 248.3, 282.8 , 0 );
setMoveKey( spep_1 + 566 + OFFSET_X, 1, 243.9, 301.8 , 0 );
setMoveKey( spep_1 + 567 + OFFSET_X, 1, 243.9, 301.8 , 0 );
setMoveKey( spep_1 + 568 + OFFSET_X, 1, 270.5, 305.8 , 0 );
setMoveKey( spep_1 + 569 + OFFSET_X, 1, 270.5, 305.8 , 0 );
setMoveKey( spep_1 + 570 + OFFSET_X, 1, 267, 304.7 , 0 );
setMoveKey( spep_1 + 571 + OFFSET_X, 1, 267, 304.7 , 0 );
setMoveKey( spep_1 + 572 + OFFSET_X, 1, 286.7, 314.7 , 0 );
setMoveKey( spep_1 + 573 + OFFSET_X, 1, 286.7, 314.7 , 0 );
setMoveKey( spep_1 + 574 + OFFSET_X, 1, 282.2, 333.7 , 0 );
setMoveKey( spep_1 + 575 + OFFSET_X, 1, 282.2, 333.7 , 0 );
setMoveKey( spep_1 + 576 + OFFSET_X, 1, 308.9, 337.7 , 0 );
setMoveKey( spep_1 + 577 + OFFSET_X, 1, 308.9, 337.7 , 0 );
setMoveKey( spep_1 + 578 + OFFSET_X, 1, 305.4, 336.6 , 0 );

setScaleKey( spep_1 + 500 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 501 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 502 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 503 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 504 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 505 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 506 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 507 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 508 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 509 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 510 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 511 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 512 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 513 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 514 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 515 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 516 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 517 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 518 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 519 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 520 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 521 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 522 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 523 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 524 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 525 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 526 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 527 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 528 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 529 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 530 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 531 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 532 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 533 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 534 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 535 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 536 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 537 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 538 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 539 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 540 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 541 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 542 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 543 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 544 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 545 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 546 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 547 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 548 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 549 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 550 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 551 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 552 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 553 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 554 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 555 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 556 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 557 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 558 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 559 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 560 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 561 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 562 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 578 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_1 + 500 + OFFSET_X, 1, -78 );
setRotateKey( spep_1 + 578 + OFFSET_X, 1, -78 );

setBlendColor( spep_1 + 516 + OFFSET_X, 1, 3, 0, 0, 0, 0.12 );
setBlendColor( spep_1 + 518 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_1 + 520 + OFFSET_X, 1, 3, 0, 0, 0, 0.37 );
setBlendColor( spep_1 + 522 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_1 + 524 + OFFSET_X, 1, 3, 0, 0, 0, 0.62 );
setBlendColor( spep_1 + 526 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_1 + 528 + OFFSET_X, 1, 3, 0, 0, 0, 0.87 );
setBlendColor( spep_1 + 530 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_1 + 578 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--刃の陣出現
SE009 = playSeVer2( spep_1 + 0, 49, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 0, 1222, "",spep_1 + 80, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 0, SE010, 112 );
SE011 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 166, 0, 12, -1);
setPitch( spep_1 + 0, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );
SE012 = playSeVer2( spep_1 + 0, 1371, "",spep_1 + 166, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 71 );
SE013 = playSeVer2( spep_1 + 0, 1374, "",spep_1 + 92, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 71 );
SE014 = playSeVer2( spep_1 + 6, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--魔法陣音
SE015 = playSeVer2( spep_1 + 50, 1240, "",spep_1 + 166, 0, 36, -1);
--飛んでくる音
SE016 = playSeVer2( spep_1 + 50, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE016, 130 );
SE018 = playSeVer2( spep_1 + 114, 1019, "",spep_1 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 114, SE018, 130 );
--腕構える
SE017 = playSeVer2( spep_1 + 112, 1004, "", 0, 0, 0, -1);
--刃発射
SE019 = playSeVer2( spep_1 + 140, 1406, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 140, 1177, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 140, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE021, 86 );
--爆発
SE022 = playSeVer2( spep_1 + 202, 1023, "", 0, 0, 0, 0.65);
SE023 = playSeVer2( spep_1 + 228, 1024, "", 0, 0, 0, 0.65);
SE024 = playSeVer2( spep_1 + 254, 1067, "", 0, 0, 0, 0.65);
--向かってくる
SE025 = playSeVer2( spep_1 + 302, 1182, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 302, 1117, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 310, 1277, "", 0, 0, 0, -1);
--突き刺す
SE028 = playSeVer2( spep_1 + 324, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 324, 1172, "",spep_1 + 420, 0, 44, -1);
SE030 = playSeVer2( spep_1 + 330, 1032, "", 0, 0, 0, -1);
--岩駆け上がる
SE031 = playSeVer2( spep_1 + 384, 1159, "",spep_1 + 484, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 384, SE031, 87 );
SE032 = playSeVer2( spep_1 + 384, 1168, "",spep_1 + 516, 0, 72, -1);
setSeVolumeByWorkId( spep_1 + 384, SE032, 87 );
SE033 = playSeVer2( spep_1 + 396, 1044, "",spep_1 + 480, 0, 44, -1);
--気弾溜め
SE034 = playSeVer2( spep_1 + 450, 1265, "",spep_1 + 516, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 450, SE034, 83 );
SE035 = playSeVer2( spep_1 + 450, 1282, "",spep_1 + 514, 0, 18, 0.6);
setSeVolumeByWorkId( spep_1 + 450, SE035, 88 );
--気弾発射
SE036 = playSeVer2( spep_1 + 488, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 488, SE036, 60 );
SE037 = playSeVer2( spep_1 + 492, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 492, SE037, 135 );
SE038 = playSeVer2( spep_1 + 494, 1145, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 500, 1161, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 504); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 614F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 敵味方共通 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, MAX_FRAME_0, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, MAX_FRAME_0, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
--]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 102 );
SE002_01 = playSeVer2( spep_0 + 0, 9, "",spep_0 + 106, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002_01, 60 );
--setTimeStretch( SE002, 2, 30, 4 );
SE002_02 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 106, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 120, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 124 );
SE004 = playSeVer2( spep_0 + 6, 1167, "",spep_0 + 110, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 40 );
setTimeStretch( SE004, 2, 35, 10 );
--腕クロス
SE005 = playSeVer2( spep_0 + 26, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 158 );
SE006 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 104F

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 614;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 味方側 手前 ef_002r
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 味方側 裏側 ef_002br
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 200 + OFFSET_X, 1, 1);
setDisp( spep_1 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 200 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 258 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 200 + OFFSET_X, 1, -6.8, 27.7 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -6.8, 27.7 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 0.3, 23.9 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 0.3, 23.9 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 7.4, 20 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 7.4, 20 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 14.7, 16.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 14.7, 16.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, -40.1, -24.7 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, -40.1, -24.7 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 24.8, -21.5 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 24.8, -21.5 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, -27.7, 24.7 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, -27.7, 24.7 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 21.6, 12.3 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 21.6, 12.3 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, -15.4, -37 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -45.2, -20.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -45.2, -20.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 14.5, -12.7 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 14.5, -12.7 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, -43.1, 38 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, -43.1, 38 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 1.1, 29.9 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 1.1, 29.9 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -41.1, -15 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -41.1, -15 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, -70.9, 1.7 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, -70.9, 1.7 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, -11.2, 9.3 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -11.2, 9.3 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -68.7, 59.9 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -68.7, 59.9 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -11.9, 41.1 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -11.9, 41.1 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -41.4, -14.7 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -41.4, -14.7 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -58.6, -8.8 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -58.6, -8.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 13.8, -12.1 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 13.8, -12.1 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -31.2, 27.7 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -31.2, 27.7 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 25.6, 8.8 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 25.6, 8.8 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -3.9, -47 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -3.9, -47 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -21, -41.1 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, -21, -41.1 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 51.3, -44.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 51.3, -44.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 63.2, -23.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 63.2, -23.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 4, -27.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 4, -27.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -18.1, -12.9 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -18.1, -12.9 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 49.3, -7.7 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 49.3, -7.7 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -0.6, 40.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -0.6, 40.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 51.3, 30.2 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 51.3, 30.2 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 16.9, -17.1 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 16.9, -17.1 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -5.2, -2.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -5.2, -2.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 29.8, 1 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 29.8, 1 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 64.8, 4.6 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 64.8, 4.6 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 49.9, 22.1 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 49.9, 22.1 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 35, 39.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 35, 39.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 20.1, 57.1 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 20.1, 57.1 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 31.9, 50.9 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 31.9, 50.9 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 43.7, 44.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 43.7, 44.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 55.5, 38.5 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 55.5, 38.5 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 58.1, 40.5 , 0 );

setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 1.76, 1.76 );

setRotateKey( spep_1 + 200 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 239 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 240 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_1 + 241 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_1 + 242 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_1 + 243 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_1 + 244 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 245 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 246 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_1 + 249 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_1 + 251 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_1 + 252 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_1 + 253 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 255 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, 4.2 );

setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_1 + 288 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き2
OFFSET_Y = 0.2;

setDisp( spep_1 + 330 + OFFSET_X, 1, 1);
setDisp( spep_1 + 390 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 330 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 330 + OFFSET_X, 1, -192.4, -182.9 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -192.4, -182.9 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -56.5, -105.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -56.5, -105.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -33.6, -67.4 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -33.6, -67.4 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 73.8, -42.7 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 73.8, -42.7 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 92.9, 5.1 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 92.9, 5.1 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 221.3, 76.2 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 221.3, 76.2 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 199.5, 88.2 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 199.5, 88.2 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 238.6, 68 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 238.6, 68 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 191.4, 72.4 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 191.4, 72.4 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 255.3, 101.5 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 255.3, 101.5 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 208.1, 93.6 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 208.1, 93.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 231.8, 95 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 231.8, 95 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 233.9, 96.3 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 233.9, 96.3 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 236, 97.7 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 236, 97.7 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 238.1, 99 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 238.1, 99 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 240.2, 100.4 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 240.2, 100.4 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 242.4, 101.7 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 242.4, 101.7 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 244.5, 103.1 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 244.5, 103.1 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 246.6, 104.5 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 246.6, 104.5 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 248.7, 105.8 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 248.7, 105.8 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 250.8, 107.1 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 250.8, 107.1 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 252.9, 108.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 252.9, 108.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 254.9, 109.7 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 254.9, 109.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 257.1, 111.1 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 257.1, 111.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 259.2, 112.4 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 259.2, 112.4 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 261.2, 113.8 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 261.2, 113.8 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 263.4, 115 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 263.4, 115 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 265.4, 116.4 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 265.4, 116.4 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 267.5, 117.7 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 267.5, 117.7 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 269.6, 119 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 269.6, 119 , 0 );

setScaleKey( spep_1 + 330 + OFFSET_X, 1, 2.37 + OFFSET_Y, 2.37 + OFFSET_Y );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 2.37 + OFFSET_Y, 2.37 + OFFSET_Y );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 2.18 + OFFSET_Y, 2.18 + OFFSET_Y );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 2.18 + OFFSET_Y, 2.18 + OFFSET_Y );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 2 + OFFSET_Y, 2 + OFFSET_Y );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 2 + OFFSET_Y, 2 + OFFSET_Y );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 1.83 + OFFSET_Y, 1.83 + OFFSET_Y );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 1.83 + OFFSET_Y, 1.83 + OFFSET_Y );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 1.66 + OFFSET_Y, 1.66 + OFFSET_Y );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 1.66 + OFFSET_Y, 1.66 + OFFSET_Y );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 1.5 + OFFSET_Y, 1.5 + OFFSET_Y );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 1.5 + OFFSET_Y, 1.5 + OFFSET_Y );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 1.39 + OFFSET_Y, 1.39 + OFFSET_Y );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 1.39 + OFFSET_Y, 1.39 + OFFSET_Y );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 1.38 + OFFSET_Y, 1.38 + OFFSET_Y );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 1.38 + OFFSET_Y, 1.38 + OFFSET_Y );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 1.37 + OFFSET_Y, 1.37 + OFFSET_Y );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 1.37 + OFFSET_Y, 1.37 + OFFSET_Y );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 1.36 + OFFSET_Y, 1.36 + OFFSET_Y );
setScaleKey( spep_1 + 365 + OFFSET_X, 1, 1.36 + OFFSET_Y, 1.36 + OFFSET_Y );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 1.35 + OFFSET_Y, 1.35 + OFFSET_Y );
setScaleKey( spep_1 + 369 + OFFSET_X, 1, 1.35 + OFFSET_Y, 1.35 + OFFSET_Y );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 1.34 + OFFSET_Y, 1.34 + OFFSET_Y );
setScaleKey( spep_1 + 375 + OFFSET_X, 1, 1.34 + OFFSET_Y, 1.34 + OFFSET_Y );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 1.33 + OFFSET_Y, 1.33 + OFFSET_Y );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 1.33 + OFFSET_Y, 1.33 + OFFSET_Y );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 1.32 + OFFSET_Y, 1.32 + OFFSET_Y );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 1.32 + OFFSET_Y, 1.32 + OFFSET_Y );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.31 + OFFSET_Y, 1.31 + OFFSET_Y );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.31 + OFFSET_Y, 1.31 + OFFSET_Y );

setRotateKey( spep_1 + 330 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_1 + 500 + OFFSET_X, 1, 1);
setDisp( spep_1 + 578 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 500 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 500 + OFFSET_X, 1, -59.6, 30.7 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, -59.6, 30.7 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, -59.2, 45.7 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, -59.2, 45.7 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, -32.7, 49.7 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, -32.7, 49.7 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, -36.3, 48.6 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, -36.3, 48.6 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, -16.7, 58.7 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, -16.7, 58.7 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, -21.3, 77.7 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, -21.3, 77.7 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 5.2, 81.7 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 5.2, 81.7 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 1.6, 80.6 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 1.6, 80.6 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 21.1, 90.7 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 21.1, 90.7 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 16.5, 109.7 , 0 );
setMoveKey( spep_1 + 519 + OFFSET_X, 1, 16.5, 109.7 , 0 );
setMoveKey( spep_1 + 520 + OFFSET_X, 1, 43, 113.7 , 0 );
setMoveKey( spep_1 + 521 + OFFSET_X, 1, 43, 113.7 , 0 );
setMoveKey( spep_1 + 522 + OFFSET_X, 1, 39.4, 112.7 , 0 );
setMoveKey( spep_1 + 523 + OFFSET_X, 1, 39.4, 112.7 , 0 );
setMoveKey( spep_1 + 524 + OFFSET_X, 1, 59, 122.7 , 0 );
setMoveKey( spep_1 + 525 + OFFSET_X, 1, 59, 122.7 , 0 );
setMoveKey( spep_1 + 526 + OFFSET_X, 1, 54.4, 141.7 , 0 );
setMoveKey( spep_1 + 527 + OFFSET_X, 1, 54.4, 141.7 , 0 );
setMoveKey( spep_1 + 528 + OFFSET_X, 1, 80.9, 145.7 , 0 );
setMoveKey( spep_1 + 529 + OFFSET_X, 1, 80.9, 145.7 , 0 );
setMoveKey( spep_1 + 530 + OFFSET_X, 1, 77.3, 144.7 , 0 );
setMoveKey( spep_1 + 531 + OFFSET_X, 1, 77.3, 144.7 , 0 );
setMoveKey( spep_1 + 532 + OFFSET_X, 1, 96.8, 154.7 , 0 );
setMoveKey( spep_1 + 533 + OFFSET_X, 1, 96.8, 154.7 , 0 );
setMoveKey( spep_1 + 534 + OFFSET_X, 1, 92.2, 173.7 , 0 );
setMoveKey( spep_1 + 535 + OFFSET_X, 1, 92.2, 173.7 , 0 );
setMoveKey( spep_1 + 536 + OFFSET_X, 1, 118.7, 177.7 , 0 );
setMoveKey( spep_1 + 537 + OFFSET_X, 1, 118.7, 177.7 , 0 );
setMoveKey( spep_1 + 538 + OFFSET_X, 1, 115.1, 176.7 , 0 );
setMoveKey( spep_1 + 539 + OFFSET_X, 1, 115.1, 176.7 , 0 );
setMoveKey( spep_1 + 540 + OFFSET_X, 1, 134.7, 186.8 , 0 );
setMoveKey( spep_1 + 541 + OFFSET_X, 1, 134.7, 186.8 , 0 );
setMoveKey( spep_1 + 542 + OFFSET_X, 1, 130.1, 205.8 , 0 );
setMoveKey( spep_1 + 543 + OFFSET_X, 1, 130.1, 205.8 , 0 );
setMoveKey( spep_1 + 544 + OFFSET_X, 1, 156.6, 209.8 , 0 );
setMoveKey( spep_1 + 545 + OFFSET_X, 1, 156.6, 209.8 , 0 );
setMoveKey( spep_1 + 546 + OFFSET_X, 1, 153, 208.7 , 0 );
setMoveKey( spep_1 + 547 + OFFSET_X, 1, 153, 208.7 , 0 );
setMoveKey( spep_1 + 548 + OFFSET_X, 1, 172.5, 218.8 , 0 );
setMoveKey( spep_1 + 549 + OFFSET_X, 1, 172.5, 218.8 , 0 );
setMoveKey( spep_1 + 550 + OFFSET_X, 1, 167.9, 237.8 , 0 );
setMoveKey( spep_1 + 551 + OFFSET_X, 1, 167.9, 237.8 , 0 );
setMoveKey( spep_1 + 552 + OFFSET_X, 1, 194.4, 241.8 , 0 );
setMoveKey( spep_1 + 553 + OFFSET_X, 1, 194.4, 241.8 , 0 );
setMoveKey( spep_1 + 554 + OFFSET_X, 1, 190.8, 240.7 , 0 );
setMoveKey( spep_1 + 555 + OFFSET_X, 1, 190.8, 240.7 , 0 );
setMoveKey( spep_1 + 556 + OFFSET_X, 1, 210.4, 250.8 , 0 );
setMoveKey( spep_1 + 557 + OFFSET_X, 1, 210.4, 250.8 , 0 );
setMoveKey( spep_1 + 558 + OFFSET_X, 1, 205.8, 269.8 , 0 );
setMoveKey( spep_1 + 559 + OFFSET_X, 1, 205.8, 269.8 , 0 );
setMoveKey( spep_1 + 560 + OFFSET_X, 1, 232.3, 273.8 , 0 );
setMoveKey( spep_1 + 561 + OFFSET_X, 1, 232.3, 273.8 , 0 );
setMoveKey( spep_1 + 562 + OFFSET_X, 1, 228.7, 272.8 , 0 );
setMoveKey( spep_1 + 563 + OFFSET_X, 1, 228.7, 272.8 , 0 );
setMoveKey( spep_1 + 564 + OFFSET_X, 1, 248.3, 282.8 , 0 );
setMoveKey( spep_1 + 565 + OFFSET_X, 1, 248.3, 282.8 , 0 );
setMoveKey( spep_1 + 566 + OFFSET_X, 1, 243.9, 301.8 , 0 );
setMoveKey( spep_1 + 567 + OFFSET_X, 1, 243.9, 301.8 , 0 );
setMoveKey( spep_1 + 568 + OFFSET_X, 1, 270.5, 305.8 , 0 );
setMoveKey( spep_1 + 569 + OFFSET_X, 1, 270.5, 305.8 , 0 );
setMoveKey( spep_1 + 570 + OFFSET_X, 1, 267, 304.7 , 0 );
setMoveKey( spep_1 + 571 + OFFSET_X, 1, 267, 304.7 , 0 );
setMoveKey( spep_1 + 572 + OFFSET_X, 1, 286.7, 314.7 , 0 );
setMoveKey( spep_1 + 573 + OFFSET_X, 1, 286.7, 314.7 , 0 );
setMoveKey( spep_1 + 574 + OFFSET_X, 1, 282.2, 333.7 , 0 );
setMoveKey( spep_1 + 575 + OFFSET_X, 1, 282.2, 333.7 , 0 );
setMoveKey( spep_1 + 576 + OFFSET_X, 1, 308.9, 337.7 , 0 );
setMoveKey( spep_1 + 577 + OFFSET_X, 1, 308.9, 337.7 , 0 );
setMoveKey( spep_1 + 578 + OFFSET_X, 1, 305.4, 336.6 , 0 );

setScaleKey( spep_1 + 500 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 501 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 502 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 503 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 504 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 505 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 506 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 507 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 508 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 509 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 510 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 511 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 512 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 513 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 514 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 515 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 516 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 517 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 518 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 519 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 520 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 521 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 522 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 523 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 524 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 525 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 526 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 527 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 528 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 529 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 530 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 531 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 532 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 533 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 534 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 535 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 536 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 537 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 538 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 539 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 540 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 541 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 542 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 543 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 544 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 545 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 546 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 547 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 548 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 549 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 550 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 551 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 552 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 553 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 554 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 555 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 556 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 557 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 558 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 559 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 560 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 561 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 562 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 578 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_1 + 500 + OFFSET_X, 1, -78 );
setRotateKey( spep_1 + 578 + OFFSET_X, 1, -78 );

setBlendColor( spep_1 + 516 + OFFSET_X, 1, 3, 0, 0, 0, 0.12 );
setBlendColor( spep_1 + 518 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_1 + 520 + OFFSET_X, 1, 3, 0, 0, 0, 0.37 );
setBlendColor( spep_1 + 522 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_1 + 524 + OFFSET_X, 1, 3, 0, 0, 0, 0.62 );
setBlendColor( spep_1 + 526 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_1 + 528 + OFFSET_X, 1, 3, 0, 0, 0, 0.87 );
setBlendColor( spep_1 + 530 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_1 + 578 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--刃の陣出現
SE009 = playSeVer2( spep_1 + 0, 49, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 0, 1222, "",spep_1 + 80, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 0, SE010, 112 );
SE011 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 166, 0, 12, -1);
setPitch( spep_1 + 0, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );
SE012 = playSeVer2( spep_1 + 0, 1371, "",spep_1 + 166, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 71 );
SE013 = playSeVer2( spep_1 + 0, 1374, "",spep_1 + 92, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 71 );
SE014 = playSeVer2( spep_1 + 6, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--魔法陣音
SE015 = playSeVer2( spep_1 + 50, 1240, "",spep_1 + 166, 0, 36, -1);
--飛んでくる音
SE016 = playSeVer2( spep_1 + 50, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE016, 130 );
SE018 = playSeVer2( spep_1 + 114, 1019, "",spep_1 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 114, SE018, 130 );
--腕構える
SE017 = playSeVer2( spep_1 + 112, 1004, "", 0, 0, 0, -1);
--刃発射
SE019 = playSeVer2( spep_1 + 140, 1406, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 140, 1177, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 140, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE021, 86 );
--爆発
SE022 = playSeVer2( spep_1 + 202, 1023, "", 0, 0, 0, 0.65);
SE023 = playSeVer2( spep_1 + 228, 1024, "", 0, 0, 0, 0.65);
SE024 = playSeVer2( spep_1 + 254, 1067, "", 0, 0, 0, 0.65);
--向かってくる
SE025 = playSeVer2( spep_1 + 302, 1182, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 302, 1117, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 310, 1277, "", 0, 0, 0, -1);
--突き刺す
SE028 = playSeVer2( spep_1 + 324, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 324, 1172, "",spep_1 + 420, 0, 44, -1);
SE030 = playSeVer2( spep_1 + 330, 1032, "", 0, 0, 0, -1);
--岩駆け上がる
SE031 = playSeVer2( spep_1 + 384, 1159, "",spep_1 + 484, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 384, SE031, 87 );
SE032 = playSeVer2( spep_1 + 384, 1168, "",spep_1 + 516, 0, 72, -1);
setSeVolumeByWorkId( spep_1 + 384, SE032, 87 );
SE033 = playSeVer2( spep_1 + 396, 1044, "",spep_1 + 480, 0, 44, -1);
--気弾溜め
SE034 = playSeVer2( spep_1 + 450, 1265, "",spep_1 + 516, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 450, SE034, 83 );
SE035 = playSeVer2( spep_1 + 450, 1282, "",spep_1 + 514, 0, 18, 0.6);
setSeVolumeByWorkId( spep_1 + 450, SE035, 88 );
--気弾発射
SE036 = playSeVer2( spep_1 + 488, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 488, SE036, 60 );
SE037 = playSeVer2( spep_1 + 492, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 492, SE037, 135 );
SE038 = playSeVer2( spep_1 + 494, 1145, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 500, 1161, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 504); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 614F

end