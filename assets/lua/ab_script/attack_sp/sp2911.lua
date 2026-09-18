--4031730:LR_ゴジータ+ゴールデンフリーザ_超必殺技：ギャリック砲
--sp_effect_b4_00397
--sp2911

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164064; --開幕～カットイン ef_001
SP_02  = 164068; --必殺技発射～爆発フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 396;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
setEffAlphaKey( spep_x + 0, speff, 255);
setEffAlphaKey( spep_x + 80 - 1, speff, 255);
setEffAlphaKey( spep_x + 80, speff, 0);

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
setEffAlphaKey( spep_x + 0, speff1, 255);
setEffAlphaKey( spep_x + 80 - 1, speff1, 255);
setEffAlphaKey( spep_x + 80, speff1, 0);

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 62, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 132, 515.5 , 0 );
setEffMoveKey( spep_x + 80, ctgogo, 132, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 72, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 74, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 76, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 78, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 80, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 80, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 82 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 82 + OFFSET_X, 1, 470.7, -59.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 470.7, -59.5 , 0 );

setScaleKey( spep_0 + 82 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 3.35, 3.35 );

setRotateKey( spep_0 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 82 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 142 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 353.1, 461.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 353.1, 461.1 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 11.46, 11.46 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -54.9 );


--敵の動き3
setDisp( spep_0 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 242 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 194 + OFFSET_X, 1, -5.4, 44.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -5.4, 44.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -5.5, 1.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -5.5, 1.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -5.5, 44 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -5.5, 44 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -5.5, 5.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -5.5, 5.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -5.5, 43.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -5.5, 43.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -5.5, 10.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -5.5, 10.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -5.5, 39.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -5.5, 39.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -5.5, 17 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -5.5, 17 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -5.5, 39.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -5.5, 39.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -5.5, 21 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -5.5, 21 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -5.5, 38.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -5.5, 38.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -5.5, 24.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -5.5, 24.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -5.5, 37.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -5.5, 37.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -5.5, 28.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -5.5, 28.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -5.5, 36 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -5.5, 36 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -5.5, 31.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -5.5, 31.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -5.5, 36.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -5.5, 36.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -5.5, 32 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -5.5, 32 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -5.5, 37.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -5.5, 37.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -5.5, 32.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -5.5, 32.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -5.5, 37.5 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -5.5, 37.5 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -5.5, 32.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -5.5, 32.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -5.5, 37.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -5.5, 37.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -5.4, 33 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -5.4, 33 , 0 );

setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 194 + OFFSET_X, 1, -90.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -90.5 );

setBlendColor( spep_0 + 194 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 204 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 242 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 256 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1.9, 379.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -1.9, 379.9 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -67.6 );

setBlendColor( spep_0 + 252 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_0 + 256 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き5
setDisp( spep_0 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 312 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 312 + OFFSET_X, 1, -182.5, -138.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -182.5, -138.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -182.4, -138.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -182.4, -138.4 , 0 );

setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.071, 0.071 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.071, 0.071 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.072, 0.072 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.072, 0.072 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.073, 0.073 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.073, 0.073 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.074, 0.074 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.074, 0.074 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.075, 0.075 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.075, 0.075 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.076, 0.076 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.076, 0.076 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.077, 0.077 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.077, 0.077 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.078, 0.078 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.078, 0.078 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.079, 0.079 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.079, 0.079 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.081, 0.081 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.081, 0.081 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.082, 0.082 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.082, 0.082 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.083, 0.083 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.083, 0.083 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.084, 0.084 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.084, 0.084 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.085, 0.085 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.085, 0.085 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.086, 0.086 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.086, 0.086 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.087, 0.087 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.087, 0.087 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.088, 0.088 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.088, 0.088 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.089, 0.089 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.089, 0.089 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.09, 0.09 );

setRotateKey( spep_0 + 312 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -7.8 );

setBlendColor( spep_0 + 312 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 398 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, 0.5);
SE002 = playSeVer2( spep_0 + 4, 1182, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 4, SE002, 63 );
SE004 = playSeVer2( spep_0 + 10, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 10, SE004, 40 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 20, SE005, 164 );
stopSeIfDoubleSpeed( spep_0 + 20, SE005 );
SE006 = playSeVer2( spep_0 + 20, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 20, SE006, 146 );
SE007 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 30, SE007, 174 );
SE008 = playSeVer2( spep_0 + 30, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 30, SE008, 132 );
SE009 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE009, 153 );
SE010 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE010, 143 );
SE011 = playSeVer2( spep_0 + 52, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE011, 162 );
stopSeIfDoubleSpeed( spep_0 + 52, SE011 );
SE012 = playSeVer2( spep_0 + 52, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE012, 135 );
SE013 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE013, 162 );
SE014 = playSeVer2( spep_0 + 64, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE014, 150 );
SE015 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 76, SE015, 114 );
SE016 = playSeVer2( spep_0 + 76, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 76, SE016, 164 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 82, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 82, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE018, 63 );

--振りかぶる
SE019 = playSeVer2( spep_0 + 142, 1116, "",spep_0 + 200, 0, 26, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 154; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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
--振りかぶる
SE020 = playSeVer2( spep_0 + 156, 1004, "", 0, 0, 0, -1);

--蹴り上げる
SE021 = playSeVer2( spep_0 + 178, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 178, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 184, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 184, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 196, 1159, "",spep_0 + 306, 0, 68, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_0 + 228, 1183, "",spep_0 + 364, 0, 70, -1);
SE027 = playSeVer2( spep_0 + 238, 1179, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 238, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 244, 1422, "", 0, 0, 0, -1);

--空気音
SE031 = playSeVer2( spep_0 + 314, 1427, "",spep_0 + 444, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 314, SE031, 78 );

--瞬間移動
SE032 = playSeVer2( spep_0 + 322, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 322, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE033, 74 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2; -- 396f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--気弾溜め
SE030 = playSeVer2( spep_1 + 90, 1210, "",spep_2 + 108, 6, 26, -1);
setStartTimeMs( SE030,  3100 );
SE036 = playSeVer2( spep_1 + 90, 1489, "", 0, 2, 0, -1);
setStartTimeMs( SE036,  100 );
SE035 = playSeVer2( spep_1 + 92, 1296, "",spep_2 + 110, 2, 22, -1);
setSeVolumeByWorkId( spep_1 + 92, SE035, 78 );
setStartTimeMs( SE035,  433 );
SE037 = playSeVer2( spep_1 + 92, 1144, "",spep_2 + 108, 0, 60, -1);
setPitch( spep_1 + 92, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_1 + 92, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE038, 65 );
setTimeStretch( SE038, 1.32, 30, 4 );


-------------------------------------------------
-- 必殺技発射～爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 304;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, -451.1, -213.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -451.1, -213.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -236.3, -121.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -236.3, -121.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -225.2, -116.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -225.2, -116.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -214.2, -112.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -214.2, -112.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -203.1, -107.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -203.1, -107.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -192.1, -102.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -192.1, -102.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -181, -98.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -181, -98.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -170, -93.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -170, -93.4 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -2.1 );


-- ** 音 ** --
--気弾発射
SE039 = playSeVer2( spep_2 + 74, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE039, 141 );
SE040 = playSeVer2( spep_2 + 74, 1213, "",spep_2 + 196, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 74, SE040, 67 );
SE041 = playSeVer2( spep_2 + 74, 1146, "",spep_2 + 192, 0, 34, -1);
SE042 = playSeVer2( spep_2 + 74, 1446, "",spep_2 + 188, 0, 30, -1);

--爆発
SE043 = playSeVer2( spep_2 + 146, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE043, 122 );
SE044 = playSeVer2( spep_2 + 172, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE044, 118 );
SE045 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE045, 120 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 184); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 304f -2f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 396;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--setEffAlphaKey( spep_x + 0, speff, 255);
--setEffAlphaKey( spep_x + 80 - 1, speff, 255);
--setEffAlphaKey( spep_x + 80, speff, 0);

--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--setEffAlphaKey( spep_x + 0, speff1, 255);
--setEffAlphaKey( spep_x + 80 - 1, speff1, 255);
--setEffAlphaKey( spep_x + 80, speff1, 0);

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 62, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 132, 515.5 , 0 );
setEffMoveKey( spep_x + 80, ctgogo, 132, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 72, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 74, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 76, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 78, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 80, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 80, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 82 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 82 + OFFSET_X, 1, -470.7, -59.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -470.7, -59.5 , 0 );

setScaleKey( spep_0 + 82 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 3.35, 3.35 );

setRotateKey( spep_0 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 82 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 142 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, -353.1, 461.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -353.1, 461.1 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 11.46, 11.46 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 54.9 );


--敵の動き3
setDisp( spep_0 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 242 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 194 + OFFSET_X, 1, 5.4, 44.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 5.4, 44.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 5.5, 1.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 5.5, 1.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 5.5, 44 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 5.5, 44 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 5.5, 5.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 5.5, 5.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 5.5, 43.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 5.5, 43.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 5.5, 10.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 5.5, 10.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 5.5, 39.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 5.5, 39.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 5.5, 17 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 5.5, 17 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 5.5, 39.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 5.5, 39.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 5.5, 21 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 5.5, 21 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 5.5, 38.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 5.5, 38.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 5.5, 24.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 5.5, 24.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 5.5, 37.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 5.5, 37.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 5.5, 28.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 5.5, 28.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 5.5, 36 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 5.5, 36 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 5.5, 31.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 5.5, 31.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 5.5, 36.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 5.5, 36.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 5.5, 32 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 5.5, 32 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 5.5, 37.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 5.5, 37.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 5.5, 32.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 5.5, 32.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 5.5, 37.5 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 5.5, 37.5 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 5.5, 32.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 5.5, 32.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 5.5, 37.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 5.5, 37.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 5.4, 33 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 5.4, 33 , 0 );

setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 194 + OFFSET_X, 1, 90.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 90.5 );

setBlendColor( spep_0 + 194 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 204 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 242 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 256 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, 1.9, 379.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 1.9, 379.9 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 67.6 );

setBlendColor( spep_0 + 252 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_0 + 256 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き5
setDisp( spep_0 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 312 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 312 + OFFSET_X, 1, 182.5, -138.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 182.5, -138.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 182.4, -138.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 182.4, -138.4 , 0 );

setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.071, 0.071 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.071, 0.071 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.072, 0.072 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.072, 0.072 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.073, 0.073 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.073, 0.073 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.074, 0.074 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.074, 0.074 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.075, 0.075 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.075, 0.075 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.076, 0.076 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.076, 0.076 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.077, 0.077 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.077, 0.077 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.078, 0.078 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.078, 0.078 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.079, 0.079 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.079, 0.079 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.081, 0.081 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.081, 0.081 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.082, 0.082 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.082, 0.082 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.083, 0.083 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.083, 0.083 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.084, 0.084 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.084, 0.084 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.085, 0.085 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.085, 0.085 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.086, 0.086 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.086, 0.086 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.087, 0.087 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.087, 0.087 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.088, 0.088 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.088, 0.088 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.089, 0.089 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.089, 0.089 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.09, 0.09 );

setRotateKey( spep_0 + 312 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 7.8 );

setBlendColor( spep_0 + 312 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 398 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, 0.5);
SE002 = playSeVer2( spep_0 + 4, 1182, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 4, SE002, 63 );
SE004 = playSeVer2( spep_0 + 10, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 10, SE004, 40 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 20, SE005, 164 );
stopSeIfDoubleSpeed( spep_0 + 20, SE005 );
SE006 = playSeVer2( spep_0 + 20, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 20, SE006, 146 );
SE007 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 30, SE007, 174 );
SE008 = playSeVer2( spep_0 + 30, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 30, SE008, 132 );
SE009 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE009, 153 );
SE010 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE010, 143 );
SE011 = playSeVer2( spep_0 + 52, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE011, 162 );
stopSeIfDoubleSpeed( spep_0 + 52, SE011 );
SE012 = playSeVer2( spep_0 + 52, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE012, 135 );
SE013 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE013, 162 );
SE014 = playSeVer2( spep_0 + 64, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE014, 150 );
SE015 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 76, SE015, 114 );
SE016 = playSeVer2( spep_0 + 76, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 76, SE016, 164 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 82, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 82, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE018, 63 );

--振りかぶる
SE019 = playSeVer2( spep_0 + 142, 1116, "",spep_0 + 200, 0, 26, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 154; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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
--振りかぶる
SE020 = playSeVer2( spep_0 + 156, 1004, "", 0, 0, 0, -1);

--蹴り上げる
SE021 = playSeVer2( spep_0 + 178, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 178, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 184, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 184, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 196, 1159, "",spep_0 + 306, 0, 68, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_0 + 228, 1183, "",spep_0 + 364, 0, 70, -1);
SE027 = playSeVer2( spep_0 + 238, 1179, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 238, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 244, 1422, "", 0, 0, 0, -1);

--空気音
SE031 = playSeVer2( spep_0 + 314, 1427, "",spep_0 + 444, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 314, SE031, 78 );

--瞬間移動
SE032 = playSeVer2( spep_0 + 322, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 322, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE033, 74 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2; -- 396f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--気弾溜め
SE030 = playSeVer2( spep_1 + 90, 1210, "",spep_2 + 108, 6, 26, -1);
setStartTimeMs( SE030,  3100 );
SE036 = playSeVer2( spep_1 + 90, 1489, "", 0, 2, 0, -1);
setStartTimeMs( SE036,  100 );
SE035 = playSeVer2( spep_1 + 92, 1296, "",spep_2 + 110, 2, 22, -1);
setSeVolumeByWorkId( spep_1 + 92, SE035, 78 );
setStartTimeMs( SE035,  433 );
SE037 = playSeVer2( spep_1 + 92, 1144, "",spep_2 + 108, 0, 60, -1);
setPitch( spep_1 + 92, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_1 + 92, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE038, 65 );
setTimeStretch( SE038, 1.32, 30, 4 );


-------------------------------------------------
-- 必殺技発射～爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 304;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 451.1, -213.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 451.1, -213.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 236.3, -121.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 236.3, -121.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 225.2, -116.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 225.2, -116.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 214.2, -112.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 214.2, -112.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 203.1, -107.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 203.1, -107.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 192.1, -102.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 192.1, -102.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 181, -98.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 181, -98.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 170, -93.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 170, -93.4 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 2.1 );


-- ** 音 ** --
--気弾発射
SE039 = playSeVer2( spep_2 + 74, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE039, 141 );
SE040 = playSeVer2( spep_2 + 74, 1213, "",spep_2 + 196, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 74, SE040, 67 );
SE041 = playSeVer2( spep_2 + 74, 1146, "",spep_2 + 192, 0, 34, -1);
SE042 = playSeVer2( spep_2 + 74, 1446, "",spep_2 + 188, 0, 30, -1);

--爆発
SE043 = playSeVer2( spep_2 + 146, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE043, 122 );
SE044 = playSeVer2( spep_2 + 172, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE044, 118 );
SE045 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE045, 120 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 184); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 304f -2f


end