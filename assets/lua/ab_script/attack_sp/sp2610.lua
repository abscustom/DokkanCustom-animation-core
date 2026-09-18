--1027290:LR_超サイヤ人トランクス(未来)_必殺技：フラッシュブレード
--sp_effect_a9_00109
--sp2610

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162237; --ef_001 登場、攻撃
SP_01b = 162238; --ef_001_back 登場、攻撃　裏側
SP_02 = 162241; --ef_002 フィニッシュ
SP_02b = 162242; --ef_002_back フィニッシュ

--エフェクト(てき)
SP_01r = 162239; --ef_001_r 登場、攻撃　敵側
SP_01rb = 162240; --ef_001_r_back 登場、攻撃　敵側裏側
SP_02r = 162243; --ef_002_r フィニッシュ　敵側
SP_02rb = 162244; --ef_002_r_back フィニッシュ 敵側裏側


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
-- 登場、攻撃(328f)
-------------------------------------------------
MAX_FRAME_0 = 328;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -115, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -115, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -115, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);

--剣構える
SE002 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE003, 89 );
setTimeStretch( SE003, 0.75, 30, 4 );
SE004 = playSeVer2( spep_0 + 50, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 89 );
setTimeStretch( SE004, 0.77, 30, 4 );
SE005 = playSeVer2( spep_0 + 50, 1061, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 52, 1252, "",spep_0 + 176, 0, 22, -1);

--飛び込んでいく
SE008 = playSeVer2( spep_0 + 154, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 154, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 154, 1314, "",spep_0 + 248, 0, 36, -1);
SE011 = playSeVer2( spep_0 + 154, 1011, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 172; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

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

-- ** 敵キャラクター ** --
setDisp(spep_0 + 200 + OFFSET_X, 1, 1);
setDisp(spep_0 + 329 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 200 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 200 + OFFSET_X, 1, 332.2, 5.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 297.3, 5.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 266.8, 6.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 240.2, 7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 217.1, 7.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 197.2, 8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 180.2, 8.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 165.7, 8.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 153.5, 8.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 143.5, 9.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 135.2, 9.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 128.7, 1.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 123.5, -5.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 119.7, -13.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 116.9, -21 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 115.1, -28.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 113.9, -36.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 113.4, -44 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 113.2, -51.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 113.1, -59.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 113.1, -67.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 113.1, -74.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 113.1, -74.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 161.2, -1.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 161.2, -1.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 161.3, 44.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 161.3, 44.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 185.2, 24.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 185.2, 24.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 154.9, -4.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 154.9, -4.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 174.4, 32.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 174.4, 32.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 148.3, 22.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 148.3, 22.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 165.8, 24.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 165.8, 24.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 155.9, 32.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 155.9, 32.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 161.4, 29.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 161.4, 29.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 124, 32.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 124, 32.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 71.6, 27 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 71.6, 27 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 89.2, 62.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 89.2, 62.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 89.7, 45.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 89.7, 45.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 58.3, 67.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 58.3, 67.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 80.5, 51.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 80.5, 51.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 83.2, 68.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 83.2, 68.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 73.8, 53.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 73.8, 53.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 82.4, 61.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 82.4, 61.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 87.6, 56.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 87.6, 56.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 84, 65.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 84, 65.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 84.1, 61.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 84.1, 61.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -81, 8.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -81, 8.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 41.3, 30.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 41.3, 30.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 67.3, 14.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 67.3, 14.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 97, 40.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 97, 40.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 102.7, 8.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 102.7, 8.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 85.5, 24 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 85.5, 24 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 119.4, 26.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 119.4, 26.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 100.4, -0.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 100.4, -0.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 99.5, 2.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 99.5, 2.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 95.1, -2.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 95.1, -2.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 91, -6.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 91, -6.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 87.2, -9.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 87.2, -9.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 83.6, -12.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 83.6, -12.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 75.7, -16.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 75.7, -16.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 71.2, -17.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 66, -18.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 60, -18.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 53.3, -17.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 45.9, -16.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 45.9, -16.2 , 0 );

setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.73, 1.73 )
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.76, 1.76 );

setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 29.7 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);

--連続斬り１
SE013 = playSeVer2( spep_0 + 244, 1032, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 246, 1141, "",spep_0 + 344, 0, 12, -1);
SE015 = playSeVer2( spep_0 + 250, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE015, 82 );

--連続斬り２
SE016 = playSeVer2( spep_0 + 262, 1031, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 264, 1141, "",spep_0 + 340, 0, 10, -1);
SE018 = playSeVer2( spep_0 + 268, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE018, 82 );

--連続斬り３
SE019 = playSeVer2( spep_0 + 282, 1032, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 286, 1141, "",spep_0 + 338, 0, 8, -1);
SE021 = playSeVer2( spep_0 + 290, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE021, 80 );

--敵吹き飛ぶ
SE022 = playSeVer2( spep_0 + 302, 1027, "",spep_0 + 338, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 302, SE022, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --328f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE024 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 92, 1167, "",spep_2 + 58, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 92, SE026, 46 );

-------------------------------------------------
-- フィニッシュ(338f)
-------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp(spep_2 + 64 + OFFSET_X, 1, 1);
setDisp(spep_2 + 90 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 64 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, 6.6, 116.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 6.6, 116.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -32.2, 175 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -32.2, 175 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -18.2, 110.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -18.2, 110.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 44.9, 151.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 44.9, 151.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 21.3, 140.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 21.3, 140.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 34.4, 117 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 34.4, 117 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 11.3, 149.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 11.3, 149.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 49.3, 151.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 49.3, 151.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 28, 121.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 28, 121.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 27.1, 141 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 27.1, 141 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 49.5, 147.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 49.5, 147.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 41.2, 141 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 41.2, 141 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.21, 1.21 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -5.8 );

--敵の動き２
setDisp(spep_2 + 114 + OFFSET_X, 1, 1);
setDisp(spep_2 + 138 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 114 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 72.7, 144.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 72.7, 144.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 73.9, 186.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 73.9, 186.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 69.2, 148.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 69.2, 148.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 22.3, 168.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 22.3, 168.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 30.6, 140.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 30.6, 140.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 28.4, 166.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 28.4, 166.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 25.9, 137.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 25.9, 137.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 5.4, 157.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 5.4, 157.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 7.3, 144.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 7.3, 144.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 7.9, 148.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 7.9, 148.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 6.9, 148.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 6.9, 148.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 6.4, 148.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 6.4, 148.3 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -5.8 );

--敵の動き３
setDisp(spep_2 + 178 + OFFSET_X, 1, 1);
setDisp(spep_2 + 214 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 178 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 178 + OFFSET_X, 1, 648.2, -426.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 648.2, -426.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 521.4, -359.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 521.4, -359.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 445.8, -320.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 445.8, -320.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 397.4, -294.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 397.4, -294.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 364.9, -277.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 364.9, -277.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 341.8, -265.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 341.8, -265.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 324.5, -256.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 324.5, -256.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 310.7, -249.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 310.7, -249.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 298.8, -243.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 298.8, -243.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 287.9, -237.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 287.9, -237.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 277.1, -231.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 277.1, -231.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 266, -226.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 266, -226.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 223.8, -240.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 223.8, -240.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 273.9, -197.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 273.9, -197.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 423.7, -475 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 423.7, -475 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 494.3, -562.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 494.3, -562.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 547.2, -664.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 547.2, -664.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 617.7, -688.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 584.9, -668.8 , 0 );

setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--袈裟斬り１
SE027 = playSeVer2( spep_2 + 40, 1061, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 40, 1032, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 40, 1143, "", 0, 0, 0, -1);
setPitch( spep_2 + 40, SE029, 300 );
setTimeStretch( SE029, 1.2, 30, 4 );
SE030 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE030, 59 );

--袈裟斬り２
SE031 = playSeVer2( spep_2 + 88, 1061, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE033, 63 );
SE035 = playSeVer2( spep_2 + 92, 1141, "", 0, 0, 0, -1);
setPitch( spep_2 + 92, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );

--環境音
SE034 = playSeVer2( spep_2 + 92, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE034, 25 );

--画面遷移
SE036 = playSeVer2( spep_2 + 132, 1072, "", 0, 0, 0, 0.6);

--ラスト水平斬り
SE037 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 202, 1061, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 202, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE039, 81 );
SE040 = playSeVer2( spep_2 + 206, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE040, 83 );
SE041 = playSeVer2( spep_2 + 208, 1143, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 220); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　338f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場、攻撃(328f)
-------------------------------------------------
MAX_FRAME_0 = 328;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01rb, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 115, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 115, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 115, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);

--剣構える
SE002 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE003, 89 );
setTimeStretch( SE003, 0.75, 30, 4 );
SE004 = playSeVer2( spep_0 + 50, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 89 );
setTimeStretch( SE004, 0.77, 30, 4 );
SE005 = playSeVer2( spep_0 + 50, 1061, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 52, 1252, "",spep_0 + 176, 0, 22, -1);

--飛び込んでいく
SE008 = playSeVer2( spep_0 + 154, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 154, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 154, 1314, "",spep_0 + 248, 0, 36, -1);
SE011 = playSeVer2( spep_0 + 154, 1011, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 172; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

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

-- ** 敵キャラクター ** --
setDisp(spep_0 + 200 + OFFSET_X, 1, 1);
setDisp(spep_0 + 329 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 200 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 200 + OFFSET_X, 1, 332.2, 5.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 297.3, 5.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 266.8, 6.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 240.2, 7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 217.1, 7.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 197.2, 8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 180.2, 8.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 165.7, 8.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 153.5, 8.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 143.5, 9.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 135.2, 9.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 128.7, 1.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 123.5, -5.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 119.7, -13.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 116.9, -21 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 115.1, -28.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 113.9, -36.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 113.4, -44 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 113.2, -51.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 113.1, -59.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 113.1, -67.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 113.1, -74.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 113.1, -74.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 161.2, -1.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 161.2, -1.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 161.3, 44.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 161.3, 44.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 185.2, 24.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 185.2, 24.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 154.9, -4.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 154.9, -4.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 174.4, 32.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 174.4, 32.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 148.3, 22.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 148.3, 22.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 165.8, 24.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 165.8, 24.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 155.9, 32.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 155.9, 32.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 161.4, 29.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 161.4, 29.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 124, 32.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 124, 32.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 71.6, 27 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 71.6, 27 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 89.2, 62.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 89.2, 62.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 89.7, 45.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 89.7, 45.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 58.3, 67.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 58.3, 67.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 80.5, 51.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 80.5, 51.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 83.2, 68.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 83.2, 68.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 73.8, 53.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 73.8, 53.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 82.4, 61.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 82.4, 61.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 87.6, 56.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 87.6, 56.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 84, 65.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 84, 65.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 84.1, 61.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 84.1, 61.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -81, 8.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -81, 8.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 41.3, 30.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 41.3, 30.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 67.3, 14.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 67.3, 14.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 97, 40.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 97, 40.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 102.7, 8.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 102.7, 8.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 85.5, 24 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 85.5, 24 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 119.4, 26.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 119.4, 26.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 100.4, -0.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 100.4, -0.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 99.5, 2.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 99.5, 2.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 95.1, -2.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 95.1, -2.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 91, -6.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 91, -6.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 87.2, -9.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 87.2, -9.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 83.6, -12.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 83.6, -12.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 75.7, -16.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 75.7, -16.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 71.2, -17.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 66, -18.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 60, -18.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 53.3, -17.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 45.9, -16.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 45.9, -16.2 , 0 );

setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.73, 1.73 )
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.76, 1.76 );

setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 29.7 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);

--連続斬り１
SE013 = playSeVer2( spep_0 + 244, 1032, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 246, 1141, "",spep_0 + 344, 0, 12, -1);
SE015 = playSeVer2( spep_0 + 250, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE015, 82 );

--連続斬り２
SE016 = playSeVer2( spep_0 + 262, 1031, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 264, 1141, "",spep_0 + 340, 0, 10, -1);
SE018 = playSeVer2( spep_0 + 268, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE018, 82 );

--連続斬り３
SE019 = playSeVer2( spep_0 + 282, 1032, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 286, 1141, "",spep_0 + 338, 0, 8, -1);
SE021 = playSeVer2( spep_0 + 290, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE021, 80 );

--敵吹き飛ぶ
SE022 = playSeVer2( spep_0 + 302, 1027, "",spep_0 + 338, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 302, SE022, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --328f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE024 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 92, 1167, "",spep_2 + 58, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 92, SE026, 46 );

-------------------------------------------------
-- フィニッシュ(338f)
-------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02rb, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp(spep_2 + 64 + OFFSET_X, 1, 1);
setDisp(spep_2 + 90 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 64 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 64 + OFFSET_X, 1, 6.6, 116.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 6.6, 116.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -32.2, 175 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -32.2, 175 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -18.2, 110.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -18.2, 110.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 44.9, 151.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 44.9, 151.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 21.3, 140.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 21.3, 140.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 34.4, 117 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 34.4, 117 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 11.3, 149.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 11.3, 149.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 49.3, 151.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 49.3, 151.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 28, 121.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 28, 121.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 27.1, 141 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 27.1, 141 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 49.5, 147.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 49.5, 147.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 41.2, 141 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 41.2, 141 , 0 );

setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.21, 1.21 );

setRotateKey( spep_2 + 64 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -5.8 );

--敵の動き２
setDisp(spep_2 + 114 + OFFSET_X, 1, 1);
setDisp(spep_2 + 138 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 114 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 72.7, 144.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 72.7, 144.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 73.9, 186.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 73.9, 186.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 69.2, 148.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 69.2, 148.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 22.3, 168.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 22.3, 168.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 30.6, 140.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 30.6, 140.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 28.4, 166.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 28.4, 166.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 25.9, 137.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 25.9, 137.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 5.4, 157.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 5.4, 157.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 7.3, 144.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 7.3, 144.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 7.9, 148.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 7.9, 148.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 6.9, 148.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 6.9, 148.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 6.4, 148.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 6.4, 148.3 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -5.8 );

--敵の動き３
setDisp(spep_2 + 178 + OFFSET_X, 1, 1);
setDisp(spep_2 + 214 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 178 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 178 + OFFSET_X, 1, 648.2, -426.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 648.2, -426.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 521.4, -359.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 521.4, -359.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 445.8, -320.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 445.8, -320.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 397.4, -294.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 397.4, -294.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 364.9, -277.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 364.9, -277.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 341.8, -265.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 341.8, -265.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 324.5, -256.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 324.5, -256.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 310.7, -249.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 310.7, -249.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 298.8, -243.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 298.8, -243.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 287.9, -237.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 287.9, -237.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 277.1, -231.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 277.1, -231.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 266, -226.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 266, -226.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 223.8, -240.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 223.8, -240.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 273.9, -197.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 273.9, -197.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 423.7, -475 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 423.7, -475 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 494.3, -562.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 494.3, -562.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 547.2, -664.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 547.2, -664.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 617.7, -688.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 584.9, -668.8 , 0 );

setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--袈裟斬り１
SE027 = playSeVer2( spep_2 + 40, 1061, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 40, 1032, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 40, 1143, "", 0, 0, 0, -1);
setPitch( spep_2 + 40, SE029, 300 );
setTimeStretch( SE029, 1.2, 30, 4 );
SE030 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE030, 59 );

--袈裟斬り２
SE031 = playSeVer2( spep_2 + 88, 1061, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE033, 63 );
SE035 = playSeVer2( spep_2 + 92, 1141, "", 0, 0, 0, -1);
setPitch( spep_2 + 92, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );

--環境音
SE034 = playSeVer2( spep_2 + 92, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE034, 25 );

--画面遷移
SE036 = playSeVer2( spep_2 + 132, 1072, "", 0, 0, 0, 0.6);

--ラスト水平斬り
SE037 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 202, 1061, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 202, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE039, 81 );
SE040 = playSeVer2( spep_2 + 206, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE040, 83 );
SE041 = playSeVer2( spep_2 + 208, 1143, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 220); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　338f -4

end
