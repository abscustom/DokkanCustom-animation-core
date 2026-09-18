--1027950:UR_トランクス(ゼノ)_必殺技：ヒートドームアタック
--sp_effect_a9_00117
--sp2634

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162365; --登場 ef_001
SP_02 = 162367; --フィニッシュ ef_002
SP_03 = 162369; --フィニッシュ 裏側	ef_002_back

--エフェクト(てき)
SP_01r = 162366; --登場 ef_001_r
SP_02r = 162368; --フィニッシュ ef_002_r
SP_03r = 162370; --フィニッシュ 裏側	ef_002_back_r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 178;

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
spep_x = spep_0 + 80;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 38, 1035, "", 0, 0, 0, -1);
--気弾溜め
SE002 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 56 );
SE003 = playSeVer2( spep_0 + 80, 1037, "",spep_0 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 89 );
--気弾溜め
SE005 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE005, 56 );
SE006 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 56 );
SE007 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE007, 56 );
SE008 = playSeVer2( spep_0 + 168, 1036, "", spep_0 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 56 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 178F

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

entryFade( spep_c + 90, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 308;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- フィニッシュ ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- フィニッシュ 裏側 ef_002_back
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, spep_1 + 100, 0, 0, 0, 0, 125);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 160 + OFFSET_X, 1, 1);
setDisp( spep_1 + 290 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 160 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 204 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 160 + OFFSET_X, 1, -19.8, -85 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -17.1, -81.9 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -14.4, -78.8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -11.7, -75.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -9.1, -72.7 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -7, -63.6 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 0, -66.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 1.7, -56.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -2.9, -60.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 1, -53.8 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 5.1, -59.9 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 11, -48.5 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 10.2, -45.5 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 18.5, -48.3 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 13.2, -44.6 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 21.6, -43.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 20.3, -31 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 29.6, -34.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 25.3, -27.3 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 33.1, -22.9 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 31.2, -21.4 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 36.6, -22.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 36.6, -22.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 83, 45.4 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 83, 45.4 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 90.7, 45.8 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 90.7, 45.8 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 90.3, 53.9 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 90.3, 53.9 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 89.9, 52.3 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 89.9, 52.3 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 90.4, 52.2 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 90.4, 52.2 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 97.7, 57.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 97.7, 57.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 99.8, 56 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 99.8, 56 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 96, 60.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 96, 60.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 103.4, 65.6 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 103.4, 65.6 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 100, 68.9 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 100, 68.9 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 103.2, 65.2 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 103.2, 65.2 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 109.5, 67.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 109.5, 67.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 106, 75.8 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 106, 75.8 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 114.9, 77.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 114.9, 77.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 112, 80.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 112, 80.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 121.7, 84 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 121.7, 84 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 118.9, 81.1 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 118.9, 81.1 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 118.3, 87.1 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 118.3, 87.1 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 121, 91.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 121, 91.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 129.6, 92.6 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 129.6, 92.6 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 128.4, 89.5 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 128.4, 89.5 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 122.6, 92.7 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 122.6, 92.7 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 127.9, 90 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 127.9, 90 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 124.2, 90.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 124.2, 90.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 128.5, 91.3 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 128.5, 91.3 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 125.3, 93.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 125.3, 93.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 128.8, 92.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 128.8, 92.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 127.8, 88.7 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 127.8, 88.7 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 122.7, 90.4 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 122.7, 90.4 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 128.1, 91 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 128.1, 91 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 128.7, 92.3 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 128.7, 92.3 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 123.9, 89.6 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 123.9, 89.6 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 129.1, 89.6 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 129.1, 89.6 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 123.9, 91 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 123.9, 91 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 126.8, 92.7 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 126.8, 92.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 128, 89.4 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 128, 89.4 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 123.7, 90.5 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 123.7, 90.5 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 128.6, 92.2 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 128.6, 92.2 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 125.5, 92.9 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 125.5, 92.9 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 127.2, 89.1 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 127.2, 89.1 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 123.5, 91.9 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 123.5, 91.9 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 126, 90.2 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 126, 90.2 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 126, 91.3 , 0 );

setScaleKey( spep_1 + 160 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 1.74, 1.74 );

setRotateKey( spep_1 + 160 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -35.5 );

setBlendColor( spep_1 + 160 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 203 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 206 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1);
setBlendColor( spep_1 + 210 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2);
setBlendColor( spep_1 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3);
setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4);
setBlendColor( spep_1 + 222 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_1 + 226 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6);
setBlendColor( spep_1 + 230 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_1 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8);
setBlendColor( spep_1 + 238 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9);
setBlendColor( spep_1 + 244 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0);
setBlendColor( spep_1 + 290 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0); 

-- ** 音 ** --
--ズームアウト
SE010 = playSeVer2( spep_1 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE010, 1.52, 30, 4 );
SE015 = playSeVer2( spep_1 + 32, 8, "", 0, 0, 0, -1);
--気弾溜め
SE011 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 128, 0, 16, -1);
SE012 = playSeVer2( spep_1 + 0, 1295, "",spep_1 + 136, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 141 );
SE013 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 71 );
SE014 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE014, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 45; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
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
--気弾溜め
SE016 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE016, 71 );
SE017 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE017, 71 );
SE018 = playSeVer2( spep_1 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE018, 71 );
--気弾発射
SE019 = playSeVer2( spep_1 + 108, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 108, SE019, 77 );
SE020 = playSeVer2( spep_1 + 108, 1145, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 108, 1236, "", 0, 0, 0, -1);
--気弾飛んでいく
SE022 = playSeVer2( spep_1 + 132, 1215, "", 0, 0, 0, 0.6);
SE023 = playSeVer2( spep_1 + 132, 1161, "", 0, 0, 0, -1);
--気弾飛んでいく
SE024 = playSeVer2( spep_1 + 160, 1021, "", 0, 0, 0, -1);
--敵呑まれる
SE025 = playSeVer2( spep_1 + 190, 1258, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_1 + 190, SE025, 68 );
setStartTimeMs( SE025,  133 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 204); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 308F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 178;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 登場 ef_001
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
spep_x = spep_0 + 80;

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
--]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 38, 1035, "", 0, 0, 0, -1);
--気弾溜め
SE002 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 56 );
SE003 = playSeVer2( spep_0 + 80, 1037, "",spep_0 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 89 );
--気弾溜め
SE005 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE005, 56 );
SE006 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 56 );
SE007 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE007, 56 );
SE008 = playSeVer2( spep_0 + 168, 1036, "", spep_0 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 56 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 178F

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

entryFade( spep_c + 90, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 308;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- フィニッシュ ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- フィニッシュ 裏側 ef_002_back
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, spep_1 + 100, 0, 0, 0, 0, 125); --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 160 + OFFSET_X, 1, 1);
setDisp( spep_1 + 290 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 160 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 204 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 160 + OFFSET_X, 1, -19.8, -85 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -17.1, -81.9 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -14.4, -78.8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -11.7, -75.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -9.1, -72.7 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -7, -63.6 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 0, -66.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 1.7, -56.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -2.9, -60.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 1, -53.8 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 5.1, -59.9 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 11, -48.5 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 10.2, -45.5 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 18.5, -48.3 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 13.2, -44.6 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 21.6, -43.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 20.3, -31 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 29.6, -34.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 25.3, -27.3 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 33.1, -22.9 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 31.2, -21.4 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 36.6, -22.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 36.6, -22.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 83, 45.4 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 83, 45.4 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 90.7, 45.8 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 90.7, 45.8 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 90.3, 53.9 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 90.3, 53.9 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 89.9, 52.3 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 89.9, 52.3 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 90.4, 52.2 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 90.4, 52.2 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 97.7, 57.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 97.7, 57.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 99.8, 56 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 99.8, 56 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 96, 60.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 96, 60.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 103.4, 65.6 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 103.4, 65.6 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 100, 68.9 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 100, 68.9 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 103.2, 65.2 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 103.2, 65.2 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 109.5, 67.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 109.5, 67.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 106, 75.8 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 106, 75.8 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 114.9, 77.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 114.9, 77.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 112, 80.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 112, 80.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 121.7, 84 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 121.7, 84 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 118.9, 81.1 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 118.9, 81.1 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 118.3, 87.1 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 118.3, 87.1 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 121, 91.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 121, 91.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 129.6, 92.6 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 129.6, 92.6 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 128.4, 89.5 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 128.4, 89.5 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 122.6, 92.7 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 122.6, 92.7 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 127.9, 90 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 127.9, 90 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 124.2, 90.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 124.2, 90.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 128.5, 91.3 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 128.5, 91.3 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 125.3, 93.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 125.3, 93.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 128.8, 92.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 128.8, 92.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 127.8, 88.7 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 127.8, 88.7 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 122.7, 90.4 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 122.7, 90.4 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 128.1, 91 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 128.1, 91 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 128.7, 92.3 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 128.7, 92.3 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 123.9, 89.6 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 123.9, 89.6 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 129.1, 89.6 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 129.1, 89.6 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 123.9, 91 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 123.9, 91 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 126.8, 92.7 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 126.8, 92.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 128, 89.4 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 128, 89.4 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 123.7, 90.5 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 123.7, 90.5 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 128.6, 92.2 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 128.6, 92.2 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 125.5, 92.9 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 125.5, 92.9 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 127.2, 89.1 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 127.2, 89.1 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 123.5, 91.9 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 123.5, 91.9 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 126, 90.2 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 126, 90.2 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 126, 91.3 , 0 );

setScaleKey( spep_1 + 160 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 1.74, 1.74 );

setRotateKey( spep_1 + 160 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -35.5 );

setBlendColor( spep_1 + 160 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 203 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 206 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1);
setBlendColor( spep_1 + 210 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2);
setBlendColor( spep_1 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3);
setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4);
setBlendColor( spep_1 + 222 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5);
setBlendColor( spep_1 + 226 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6);
setBlendColor( spep_1 + 230 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7);
setBlendColor( spep_1 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8);
setBlendColor( spep_1 + 238 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9);
setBlendColor( spep_1 + 244 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0);
setBlendColor( spep_1 + 290 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--ズームアウト
SE010 = playSeVer2( spep_1 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE010, 1.52, 30, 4 );
SE015 = playSeVer2( spep_1 + 32, 8, "", 0, 0, 0, -1);
--気弾溜め
SE011 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 128, 0, 16, -1);
SE012 = playSeVer2( spep_1 + 0, 1295, "",spep_1 + 136, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 141 );
SE013 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 71 );
SE014 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE014, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 45; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
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
--気弾溜め
SE016 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE016, 71 );
SE017 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE017, 71 );
SE018 = playSeVer2( spep_1 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE018, 71 );
--気弾発射
SE019 = playSeVer2( spep_1 + 108, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 108, SE019, 77 );
SE020 = playSeVer2( spep_1 + 108, 1145, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 108, 1236, "", 0, 0, 0, -1);
--気弾飛んでいく
SE022 = playSeVer2( spep_1 + 132, 1215, "", 0, 0, 0, 0.6);
SE023 = playSeVer2( spep_1 + 132, 1161, "", 0, 0, 0, -1);
--気弾飛んでいく
SE024 = playSeVer2( spep_1 + 160, 1021, "", 0, 0, 0, -1);
--敵呑まれる
SE025 = playSeVer2( spep_1 + 190, 1258, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_1 + 190, SE025, 68 );
setStartTimeMs( SE025, 133 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 204); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 308F

end