--1027410:UR_超サイヤ人トランクス (青年期)＆超サイヤ人ブロリー_必殺技：ミラージュウェッジ
--sp_effect_b2_00060
--sp2613

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162332;		--ef_001 共通
SP_02 = 162333;		--ef_002bとセット。敵の手前に配置。
SP_02b = 162334;	--ef_002とセット。敵の奥に配置。

--エフェクト(てき)
SP_01r = 162332;	--ef_001 共通
SP_02r = 162335;	--敵側　ef_002bとセット。敵の手前に配置。
SP_02br = 162336;	--ef_002とセット。敵の奥に配置。


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
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 前面(ef_001)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 784;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02, 0x100, -1, 0, 0, 0); -- 前面(ef_002)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面(ef_002b)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 60 + OFFSET_X, 1, 1);
setDisp( spep_1 + 154 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, 88.2, 36 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 88.2, 36 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 75.7, 92.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 75.7, 92.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 106.7, 61.5 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 106.7, 61.5 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 106.6, 96.5 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 106.6, 96.5 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 71.6, 62.5 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 71.6, 62.5 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 90.2, 80 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 90.2, 80 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 9.7, 60.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 9.7, 60.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 40.7, 29.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 40.7, 29.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 40.6, 64.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 40.6, 64.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 5.6, 30.4 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 5.6, 30.4 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 86.1, 56 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 86.1, 56 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 115.1, 58.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 115.1, 58.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 129.8, 72.8 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 129.8, 72.8 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 189.8, 44 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 189.8, 44 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 374.5, 82.9 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 374.5, 82.9 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 524.2, 52.8 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 524.2, 52.8 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 716.2, 100 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 716.2, 100 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 928.8, 52.3 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 928.8, 52.3 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 919.5, 112.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 919.5, 112.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 904, 49.3 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 904, 49.3 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 912.3, 78.1 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.88, 1.88 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, 14.7 );


-- 敵の動き2
setDisp( spep_1 + 248 + OFFSET_X, 1, 1);
setDisp( spep_1 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 248 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 248 + OFFSET_X, 1, -385.2, 55.3 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -303, 26.8 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, -220.8, -1.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -138.6, -30.3 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -56.5, -58.8 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 25.7, -87.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 26.3, -88.2 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 27, -89.2 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 27.7, -90.1 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 28.4, -91 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 29.1, -91.9 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 29.8, -92.9 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 30.5, -93.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 31.2, -94.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 31.9, -95.6 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 32.6, -96.5 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 33.3, -97.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 34, -98.4 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 34.7, -99.3 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 35.4, -100.2 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 35.4, -100.2 , 0 );

setScaleKey( spep_1 + 248 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_1 + 248 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, 63.4 );

-- 敵の動き3
setDisp( spep_1 + 368 + OFFSET_X, 1, 1);
setDisp( spep_1 + 412 + OFFSET_X, 1, 0);
setDisp( spep_1 + 420 + OFFSET_X, 1, 1);
setDisp( spep_1 + 430 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 420 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 368 + OFFSET_X, 1, -185.7, -121.7 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -164, -137.3 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -142.3, -152.9 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -120.6, -168.5 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -98.9, -184.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -93.2, -188 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -87.5, -191.9 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -81.8, -195.8 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -76, -199.8 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -70.3, -203.7 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -64.6, -207.6 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -58.9, -211.5 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -53.1, -215.4 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -47.4, -219.3 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, -41.7, -223.2 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, -36, -227.1 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, -30.3, -231 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, -24.5, -234.9 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, -18.8, -238.8 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, -13.1, -242.7 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, -13.1, -242.7 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -27.6, -230.2 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -27.6, -230.2 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, 106.7, -24.3 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, 106.7, -24.3 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 179.8, 111.8 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, 179.8, 111.8 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 246.7, 125.3 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 246.7, 125.3 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 337.3, 230.4 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 337.3, 230.4 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 419.6, 306.8 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 419.6, 306.8 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 487.6, 395.6 , 0 );

setScaleKey( spep_1 + 368 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_1 + 368 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, -19.8 );

-- 敵の動き4
setDisp( spep_1 + 432 + OFFSET_X, 1, 1);
setDisp( spep_1 + 524 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 432 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 432 + OFFSET_X, 1, -104.6, -179.6 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, -104.6, -179.6 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, -71, -144.6 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, -71, -144.6 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, -41.9, -114.3 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, -41.9, -114.3 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, -17.3, -88.6 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, -17.3, -88.6 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 2.8, -67.6 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 2.8, -67.6 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 18.5, -51.2 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 18.5, -51.2 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 29.7, -39.5 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 29.7, -39.5 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 36.4, -32.5 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 36.4, -32.5 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 38.6, -30.2 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 38.6, -30.2 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 38.7, -30.1 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 38.7, -30.1 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 38.8, -30 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, 38.8, -30 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 38.9, -29.8 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, 38.9, -29.8 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 39, -29.5 , 0 );
setMoveKey( spep_1 + 459 + OFFSET_X, 1, 39, -29.5 , 0 );
setMoveKey( spep_1 + 460 + OFFSET_X, 1, 39.2, -29.2 , 0 );
setMoveKey( spep_1 + 461 + OFFSET_X, 1, 39.2, -29.2 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, 39.4, -28.9 , 0 );
setMoveKey( spep_1 + 463 + OFFSET_X, 1, 39.4, -28.9 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, 39.7, -28.5 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, 40, -28 , 0 );
setMoveKey( spep_1 + 467 + OFFSET_X, 1, 40, -28 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, 40.3, -27.5 , 0 );
setMoveKey( spep_1 + 469 + OFFSET_X, 1, 40.3, -27.5 , 0 );
setMoveKey( spep_1 + 470 + OFFSET_X, 1, 40.6, -26.9 , 0 );
setMoveKey( spep_1 + 471 + OFFSET_X, 1, 40.6, -26.9 , 0 );
setMoveKey( spep_1 + 472 + OFFSET_X, 1, 41, -26.3 , 0 );
setMoveKey( spep_1 + 473 + OFFSET_X, 1, 41, -26.3 , 0 );
setMoveKey( spep_1 + 474 + OFFSET_X, 1, 41.4, -25.6 , 0 );
setMoveKey( spep_1 + 475 + OFFSET_X, 1, 41.4, -25.6 , 0 );
setMoveKey( spep_1 + 476 + OFFSET_X, 1, 41.9, -24.9 , 0 );
setMoveKey( spep_1 + 477 + OFFSET_X, 1, 41.9, -24.9 , 0 );
setMoveKey( spep_1 + 478 + OFFSET_X, 1, 42.4, -24.1 , 0 );
setMoveKey( spep_1 + 479 + OFFSET_X, 1, 42.4, -24.1 , 0 );
setMoveKey( spep_1 + 480 + OFFSET_X, 1, 67.5, -98.5 , 0 );
setMoveKey( spep_1 + 481 + OFFSET_X, 1, 67.5, -98.5 , 0 );
setMoveKey( spep_1 + 482 + OFFSET_X, 1, 93.8, -170.8 , 0 );
setMoveKey( spep_1 + 483 + OFFSET_X, 1, 93.8, -170.8 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 121.6, -240.8 , 0 );
setMoveKey( spep_1 + 485 + OFFSET_X, 1, 121.6, -240.8 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 150.9, -308.3 , 0 );
setMoveKey( spep_1 + 487 + OFFSET_X, 1, 150.9, -308.3 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 181.9, -373.2 , 0 );
setMoveKey( spep_1 + 489 + OFFSET_X, 1, 181.9, -373.2 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 214.6, -435.3 , 0 );
setMoveKey( spep_1 + 491 + OFFSET_X, 1, 214.6, -435.3 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 249.1, -494.4 , 0 );
setMoveKey( spep_1 + 493 + OFFSET_X, 1, 249.1, -494.4 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, 249.8, -494.7 , 0 );
setMoveKey( spep_1 + 495 + OFFSET_X, 1, 249.8, -494.7 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, 250.5, -494.9 , 0 );
setMoveKey( spep_1 + 497 + OFFSET_X, 1, 250.5, -494.9 , 0 );
setMoveKey( spep_1 + 498 + OFFSET_X, 1, 251.2, -495.3 , 0 );
setMoveKey( spep_1 + 499 + OFFSET_X, 1, 251.2, -495.3 , 0 );
setMoveKey( spep_1 + 500 + OFFSET_X, 1, 251.9, -495.5 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, 251.9, -495.5 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, 252.6, -495.8 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, 252.6, -495.8 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, 253.3, -496.1 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, 253.3, -496.1 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, 254, -496.4 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, 254, -496.4 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, 254.7, -496.7 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, 254.7, -496.7 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, 255.4, -497 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, 255.4, -497 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 256.1, -497.2 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 256.1, -497.2 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 256.8, -497.6 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 256.8, -497.6 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 257.5, -497.8 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 257.5, -497.8 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 258.2, -498.1 , 0 );
setMoveKey( spep_1 + 519 + OFFSET_X, 1, 258.2, -498.1 , 0 );
setMoveKey( spep_1 + 520 + OFFSET_X, 1, 258.9, -498.4 , 0 );
setMoveKey( spep_1 + 521 + OFFSET_X, 1, 258.9, -498.4 , 0 );
setMoveKey( spep_1 + 522 + OFFSET_X, 1, 259.6, -498.7 , 0 );
setMoveKey( spep_1 + 524 + OFFSET_X, 1, 259.6, -498.7 , 0 );

setScaleKey( spep_1 + 432 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_1 + 433 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 439 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 441 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 443 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 445 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 447 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 455 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 457 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 459 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 460 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 461 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 463 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 465 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 467 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 469 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 470 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 471 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 472 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 473 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 474 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 475 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 476 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 477 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 478 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 479 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 480 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 481 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 482 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 483 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_1 + 485 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 487 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_1 + 489 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_1 + 491 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 494 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 495 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 496 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_1 + 497 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_1 + 498 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_1 + 501 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_1 + 502 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 505 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 506 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 507 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 508 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_1 + 511 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_1 + 512 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_1 + 515 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_1 + 516 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_1 + 517 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_1 + 518 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 521 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 522 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_1 + 524 + OFFSET_X, 1, 4.18, 4.18 );

setRotateKey( spep_1 + 432 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 522 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 524 + OFFSET_X, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 518 + OFFSET_X, 5, 9, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade



-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--飛び込んでくる
SE004 = playSeVer2( spep_1, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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

--連続パンチ
SE006 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 88, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 88, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 102, 1000, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 102, 1110, "", 0, 0, 0, -1);
--蹴り飛ばす
SE011 = playSeVer2( spep_1 + 132, 1187, "", 0, 0, 0, -1);
--ブロリー浮く
SE012 = playSeVer2( spep_1 + 186, 44, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 186, SE013, 84 );
--ブロリー向かってくる
SE014 = playSeVer2( spep_1 + 214, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 214, 9, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE016 = playSeVer2( spep_1 + 246, 1027, "", 0, 0, 0, -1);
--気弾溜め
SE017 = playSeVer2( spep_1 + 288, 1154, "",spep_1 + 358, 0, 22, -1);
SE018 = playSeVer2( spep_1 + 288, 1262, "",spep_1 + 352, 0, 18, -1);
SE019 = playSeVer2( spep_1 + 288, 1200, "",spep_1 + 350, 0, 16, -1);
--気弾発射
SE020 = playSeVer2( spep_1 + 324, 1405, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 324, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 326, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 326, SE022, 79 );
SE023 = playSeVer2( spep_1 + 326, 1212, "",spep_1 + 420, 0, 18, 0.6);
setSeVolumeByWorkId( spep_1 + 326, SE023, 74 );
--気弾飛んでいく
SE024 = playSeVer2( spep_1 + 372, 1202, "", 0, 0, 0, -1);
--爆発
SE025 = playSeVer2( spep_1 + 404, 1023, "",spep_1 + 462, 0, 28, -1);
SE026 = playSeVer2( spep_1 + 412, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 412, SE026, 77 );
--トランクス向かっていく
SE027 = playSeVer2( spep_1 + 430, 1121, "",spep_1 + 558, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 430, SE027, 46 );
SE028 = playSeVer2( spep_1 + 436, 1278, "",spep_1 + 624, 0, 84, -1);
setSeVolumeByWorkId( spep_1 + 436, SE028, 32 );
SE029 = playSeVer2( spep_1 + 438, 44, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 438, 1116, "",spep_1 + 492, 0, 32, -1);
--剣を抜く
SE031 = playSeVer2( spep_1 + 484, 1061, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 490, 1042, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 490, 1307, "",spep_1 + 584, 0, 52, -1);
setSeVolumeByWorkId( spep_1 + 490, SE033, 155 );
--構えて振りかぶる	
SE034 = playSeVer2( spep_1 + 532, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 532, 1004, "", 0, 0, 0, -1);
--斬る
SE036 = playSeVer2( spep_1 + 622, 1032, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 622, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE037, 73 );
SE038 = playSeVer2( spep_1 + 622, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE038, 72 );
SE039 = playSeVer2( spep_1 + 622, 1319, "",spep_1 + 782, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 622, SE039, 45 );
setTimeStretch( SE039, 0.83, 30, 4 );
SE040 = playSeVer2( spep_1 + 622, 1010, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 628, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 628, SE041, 117 );
SE042 = playSeVer2( spep_1 + 628, 1141, "", 0, 0, 0, -1);
--画面遷移
SE043 = playSeVer2( spep_1 + 680, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 680, SE043, 76 );
SE044 = playSeVer2( spep_1 + 694, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 694, SE044, 67 );


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 630); 
endPhase( spep_1 + MAX_FRAME_1 -4);-- 784

else


------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 前面(ef_001)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 784;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02r, 0x100, -1, 0, 0, 0); -- 前面(ef_002)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 背面(ef_002b)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 60 + OFFSET_X, 1, 1);
setDisp( spep_1 + 154 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, 88.2, 36 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 88.2, 36 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 75.7, 92.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 75.7, 92.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 106.7, 61.5 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 106.7, 61.5 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 106.6, 96.5 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 106.6, 96.5 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 71.6, 62.5 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 71.6, 62.5 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 90.2, 80 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 90.2, 80 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 9.7, 60.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 9.7, 60.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 40.7, 29.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 40.7, 29.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 40.6, 64.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 40.6, 64.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 5.6, 30.4 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 5.6, 30.4 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 24.2, 47.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 86.1, 56 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 86.1, 56 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 115.1, 58.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 115.1, 58.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 129.8, 72.8 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 129.8, 72.8 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 189.8, 44 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 189.8, 44 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 374.5, 82.9 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 374.5, 82.9 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 524.2, 52.8 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 524.2, 52.8 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 716.2, 100 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 716.2, 100 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 928.8, 52.3 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 928.8, 52.3 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 919.5, 112.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 919.5, 112.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 904, 49.3 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 904, 49.3 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 912.3, 78.1 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.88, 1.88 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, 14.7 );


-- 敵の動き2
setDisp( spep_1 + 248 + OFFSET_X, 1, 1);
setDisp( spep_1 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 248 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 248 + OFFSET_X, 1, -385.2, 55.3 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -303, 26.8 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, -220.8, -1.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -138.6, -30.3 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -56.5, -58.8 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 25.7, -87.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 26.3, -88.2 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 27, -89.2 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 27.7, -90.1 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 28.4, -91 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 29.1, -91.9 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 29.8, -92.9 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 30.5, -93.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 31.2, -94.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 31.9, -95.6 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 32.6, -96.5 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 33.3, -97.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 34, -98.4 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 34.7, -99.3 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 35.4, -100.2 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 35.4, -100.2 , 0 );

setScaleKey( spep_1 + 248 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_1 + 248 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, 63.4 );

-- 敵の動き3
setDisp( spep_1 + 368 + OFFSET_X, 1, 1);
setDisp( spep_1 + 412 + OFFSET_X, 1, 0);
setDisp( spep_1 + 420 + OFFSET_X, 1, 1);
setDisp( spep_1 + 430 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 420 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 368 + OFFSET_X, 1, -185.7, -121.7 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -164, -137.3 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -142.3, -152.9 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -120.6, -168.5 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -98.9, -184.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -93.2, -188 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -87.5, -191.9 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -81.8, -195.8 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -76, -199.8 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -70.3, -203.7 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -64.6, -207.6 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -58.9, -211.5 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -53.1, -215.4 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -47.4, -219.3 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, -41.7, -223.2 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, -36, -227.1 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, -30.3, -231 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, -24.5, -234.9 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, -18.8, -238.8 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, -13.1, -242.7 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, -13.1, -242.7 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -27.6, -230.2 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -27.6, -230.2 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, 106.7, -24.3 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, 106.7, -24.3 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 179.8, 111.8 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, 179.8, 111.8 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 246.7, 125.3 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 246.7, 125.3 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 337.3, 230.4 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 337.3, 230.4 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 419.6, 306.8 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 419.6, 306.8 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 487.6, 395.6 , 0 );

setScaleKey( spep_1 + 368 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_1 + 368 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, -19.8 );

-- 敵の動き4
setDisp( spep_1 + 432 + OFFSET_X, 1, 1);
setDisp( spep_1 + 524 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 432 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 432 + OFFSET_X, 1, -104.6, -179.6 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, -104.6, -179.6 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, -71, -144.6 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, -71, -144.6 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, -41.9, -114.3 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, -41.9, -114.3 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, -17.3, -88.6 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, -17.3, -88.6 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 2.8, -67.6 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 2.8, -67.6 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 18.5, -51.2 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 18.5, -51.2 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 29.7, -39.5 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 29.7, -39.5 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 36.4, -32.5 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 36.4, -32.5 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 38.6, -30.2 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 38.6, -30.2 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 38.7, -30.1 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 38.7, -30.1 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 38.8, -30 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, 38.8, -30 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 38.9, -29.8 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, 38.9, -29.8 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 39, -29.5 , 0 );
setMoveKey( spep_1 + 459 + OFFSET_X, 1, 39, -29.5 , 0 );
setMoveKey( spep_1 + 460 + OFFSET_X, 1, 39.2, -29.2 , 0 );
setMoveKey( spep_1 + 461 + OFFSET_X, 1, 39.2, -29.2 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, 39.4, -28.9 , 0 );
setMoveKey( spep_1 + 463 + OFFSET_X, 1, 39.4, -28.9 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, 39.7, -28.5 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, 40, -28 , 0 );
setMoveKey( spep_1 + 467 + OFFSET_X, 1, 40, -28 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, 40.3, -27.5 , 0 );
setMoveKey( spep_1 + 469 + OFFSET_X, 1, 40.3, -27.5 , 0 );
setMoveKey( spep_1 + 470 + OFFSET_X, 1, 40.6, -26.9 , 0 );
setMoveKey( spep_1 + 471 + OFFSET_X, 1, 40.6, -26.9 , 0 );
setMoveKey( spep_1 + 472 + OFFSET_X, 1, 41, -26.3 , 0 );
setMoveKey( spep_1 + 473 + OFFSET_X, 1, 41, -26.3 , 0 );
setMoveKey( spep_1 + 474 + OFFSET_X, 1, 41.4, -25.6 , 0 );
setMoveKey( spep_1 + 475 + OFFSET_X, 1, 41.4, -25.6 , 0 );
setMoveKey( spep_1 + 476 + OFFSET_X, 1, 41.9, -24.9 , 0 );
setMoveKey( spep_1 + 477 + OFFSET_X, 1, 41.9, -24.9 , 0 );
setMoveKey( spep_1 + 478 + OFFSET_X, 1, 42.4, -24.1 , 0 );
setMoveKey( spep_1 + 479 + OFFSET_X, 1, 42.4, -24.1 , 0 );
setMoveKey( spep_1 + 480 + OFFSET_X, 1, 67.5, -98.5 , 0 );
setMoveKey( spep_1 + 481 + OFFSET_X, 1, 67.5, -98.5 , 0 );
setMoveKey( spep_1 + 482 + OFFSET_X, 1, 93.8, -170.8 , 0 );
setMoveKey( spep_1 + 483 + OFFSET_X, 1, 93.8, -170.8 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 121.6, -240.8 , 0 );
setMoveKey( spep_1 + 485 + OFFSET_X, 1, 121.6, -240.8 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 150.9, -308.3 , 0 );
setMoveKey( spep_1 + 487 + OFFSET_X, 1, 150.9, -308.3 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 181.9, -373.2 , 0 );
setMoveKey( spep_1 + 489 + OFFSET_X, 1, 181.9, -373.2 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 214.6, -435.3 , 0 );
setMoveKey( spep_1 + 491 + OFFSET_X, 1, 214.6, -435.3 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 249.1, -494.4 , 0 );
setMoveKey( spep_1 + 493 + OFFSET_X, 1, 249.1, -494.4 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, 249.8, -494.7 , 0 );
setMoveKey( spep_1 + 495 + OFFSET_X, 1, 249.8, -494.7 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, 250.5, -494.9 , 0 );
setMoveKey( spep_1 + 497 + OFFSET_X, 1, 250.5, -494.9 , 0 );
setMoveKey( spep_1 + 498 + OFFSET_X, 1, 251.2, -495.3 , 0 );
setMoveKey( spep_1 + 499 + OFFSET_X, 1, 251.2, -495.3 , 0 );
setMoveKey( spep_1 + 500 + OFFSET_X, 1, 251.9, -495.5 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, 251.9, -495.5 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, 252.6, -495.8 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, 252.6, -495.8 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, 253.3, -496.1 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, 253.3, -496.1 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, 254, -496.4 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, 254, -496.4 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, 254.7, -496.7 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, 254.7, -496.7 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, 255.4, -497 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, 255.4, -497 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 256.1, -497.2 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 256.1, -497.2 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 256.8, -497.6 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 256.8, -497.6 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 257.5, -497.8 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 257.5, -497.8 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 258.2, -498.1 , 0 );
setMoveKey( spep_1 + 519 + OFFSET_X, 1, 258.2, -498.1 , 0 );
setMoveKey( spep_1 + 520 + OFFSET_X, 1, 258.9, -498.4 , 0 );
setMoveKey( spep_1 + 521 + OFFSET_X, 1, 258.9, -498.4 , 0 );
setMoveKey( spep_1 + 522 + OFFSET_X, 1, 259.6, -498.7 , 0 );
setMoveKey( spep_1 + 524 + OFFSET_X, 1, 259.6, -498.7 , 0 );

setScaleKey( spep_1 + 432 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_1 + 433 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_1 + 435 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 439 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 441 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 443 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 445 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 447 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 455 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 457 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 459 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 460 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 461 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 463 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 465 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 467 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 469 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 470 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 471 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 472 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 473 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 474 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 475 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 476 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 477 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 478 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 479 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 480 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 481 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 482 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 483 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_1 + 485 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 487 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_1 + 489 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_1 + 491 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 494 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 495 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_1 + 496 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_1 + 497 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_1 + 498 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_1 + 501 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_1 + 502 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 505 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 506 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 507 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 508 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_1 + 511 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_1 + 512 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_1 + 515 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_1 + 516 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_1 + 517 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_1 + 518 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 521 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 522 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_1 + 524 + OFFSET_X, 1, 4.18, 4.18 );

setRotateKey( spep_1 + 432 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 522 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 524 + OFFSET_X, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 518 + OFFSET_X, 5, 9, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade



-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--飛び込んでくる
SE004 = playSeVer2( spep_1, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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

--連続パンチ
SE006 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 88, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 88, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 102, 1000, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 102, 1110, "", 0, 0, 0, -1);
--蹴り飛ばす
SE011 = playSeVer2( spep_1 + 132, 1187, "", 0, 0, 0, -1);
--ブロリー浮く
SE012 = playSeVer2( spep_1 + 186, 44, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 186, SE013, 84 );
--ブロリー向かってくる
SE014 = playSeVer2( spep_1 + 214, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 214, 9, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE016 = playSeVer2( spep_1 + 246, 1027, "", 0, 0, 0, -1);
--気弾溜め
SE017 = playSeVer2( spep_1 + 288, 1154, "",spep_1 + 358, 0, 22, -1);
SE018 = playSeVer2( spep_1 + 288, 1262, "",spep_1 + 352, 0, 18, -1);
SE019 = playSeVer2( spep_1 + 288, 1200, "",spep_1 + 350, 0, 16, -1);
--気弾発射
SE020 = playSeVer2( spep_1 + 324, 1405, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 324, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 326, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 326, SE022, 79 );
SE023 = playSeVer2( spep_1 + 326, 1212, "",spep_1 + 420, 0, 18, 0.6);
setSeVolumeByWorkId( spep_1 + 326, SE023, 74 );
--気弾飛んでいく
SE024 = playSeVer2( spep_1 + 372, 1202, "", 0, 0, 0, -1);
--爆発
SE025 = playSeVer2( spep_1 + 404, 1023, "",spep_1 + 462, 0, 28, -1);
SE026 = playSeVer2( spep_1 + 412, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 412, SE026, 77 );
--トランクス向かっていく
SE027 = playSeVer2( spep_1 + 430, 1121, "",spep_1 + 558, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 430, SE027, 46 );
SE028 = playSeVer2( spep_1 + 436, 1278, "",spep_1 + 624, 0, 84, -1);
setSeVolumeByWorkId( spep_1 + 436, SE028, 32 );
SE029 = playSeVer2( spep_1 + 438, 44, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 438, 1116, "",spep_1 + 492, 0, 32, -1);
--剣を抜く
SE031 = playSeVer2( spep_1 + 484, 1061, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 490, 1042, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 490, 1307, "",spep_1 + 584, 0, 52, -1);
setSeVolumeByWorkId( spep_1 + 490, SE033, 155 );
--構えて振りかぶる	
SE034 = playSeVer2( spep_1 + 532, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 532, 1004, "", 0, 0, 0, -1);
--斬る
SE036 = playSeVer2( spep_1 + 622, 1032, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 622, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE037, 73 );
SE038 = playSeVer2( spep_1 + 622, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE038, 72 );
SE039 = playSeVer2( spep_1 + 622, 1319, "",spep_1 + 782, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 622, SE039, 45 );
setTimeStretch( SE039, 0.83, 30, 4 );
SE040 = playSeVer2( spep_1 + 622, 1010, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 628, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 628, SE041, 117 );
SE042 = playSeVer2( spep_1 + 628, 1141, "", 0, 0, 0, -1);
--画面遷移
SE043 = playSeVer2( spep_1 + 680, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 680, SE043, 76 );
SE044 = playSeVer2( spep_1 + 694, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 694, SE044, 67 );


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 630); 
endPhase( spep_1 + MAX_FRAME_1 -4);-- 784

end
