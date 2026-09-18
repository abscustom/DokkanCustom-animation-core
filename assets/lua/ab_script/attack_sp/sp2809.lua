--4030440:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空_超必殺技_アストロファイヤーキャノン
--sp_effect_b4_00365
--sp2809

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163449; --開幕～気合いためまで ef_001
SP_01b = 163450; --開幕～気合いためまで ef_001b
SP_02  = 163452; --気弾連射～フィニッシュまで ef_002
SP_02b = 163453; --気弾連射～フィニッシュまでef_002b

--エフェクト(敵)
SP_01r  = 163451; --開幕～気合いためまで ef_001r
SP_02r  = 163454; --気弾連射～フィニッシュまで ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕～気合いためまで
-------------------------------------------------
MAX_FRAME_0 = 568;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

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


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 110 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, 671.3, 263.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 671.3, 263.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 515.9, 195.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 515.9, 195.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 388.7, 139 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 388.7, 139 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 289.8, 95.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 289.8, 95.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 219.1, 64.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 219.1, 64.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 176.8, 45.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 176.8, 45.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 162.6, 39.1 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 162.6, 39.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 157.6, 35.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 157.6, 35.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 156.5, 34.2 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 156.5, 34.2 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 155.4, 33.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 155.4, 33.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 154.3, 32.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 154.3, 32.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 153.2, 31.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 153.2, 31.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 152.3, 30.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 152.3, 30.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 151.5, 30.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 151.5, 30.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 150.8, 29.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 150.8, 29.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 150.1, 29.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 150.1, 29.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 251, -325.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 251, -325.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 226, -325.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 226, -325.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 208.7, -325.1 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 208.7, -325.1 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 198.2, -325.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 198.2, -325.1 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 10.82, 10.82 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -0.6 );


--敵の動き2
setDisp( spep_0 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 142 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 142 + OFFSET_X, 1, 33.8, -441.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 33.8, -441.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 75.2, -488.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 75.2, -488.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 85.5, -496.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 85.5, -496.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 56.7, -519.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 56.7, -519.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 68.8, -465.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 68.8, -465.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 88.5, -510.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 88.5, -510.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 123.5, -467.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 123.5, -467.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 54.9, -500.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 54.9, -500.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 114.6, -510.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 114.6, -510.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 64.9, -487.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 64.9, -487.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 110.4, -479.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 110.4, -479.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 85.4, -499.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 85.4, -499.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 97.2, -489.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 97.2, -489.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 89.3, -495.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 89.3, -495.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 98.7, -491.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 98.7, -491.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 94.2, -493.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 94.2, -493.5 , 0 );

setScaleKey( spep_0 + 142 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 10.81, 10.81 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 10.81, 10.81 );

setRotateKey( spep_0 + 142 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -40.6 );


--敵の動き3
setDisp( spep_0 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 302 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 302 + OFFSET_X, 1, 89.5, -1.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 89.5, -1.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 90.6, -2.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 90.6, -2.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 91.6, -2.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 91.6, -2.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 92.7, -3.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 92.7, -3.4 , 0 );

setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.58, 3.58 );

setRotateKey( spep_0 + 302 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 2.3 );


--敵の動き4
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 366 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, 88.5, -0.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 88.5, -0.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 299.2, 74.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 299.2, 74.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 167.9, 65.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 167.9, 65.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 455.2, 217.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 455.2, 217.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 209.4, 99.8 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 209.4, 99.8 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 426.7, 202.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 426.7, 202.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 211.4, 100 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 211.4, 100 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 397.4, 187.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 397.4, 187.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 213.1, 100.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 213.1, 100.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 310.7, 145.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 310.7, 145.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 214.7, 100.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 214.7, 100.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 298.5, 139.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 298.5, 139.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 216, 100.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 216, 100.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 250.2, 116.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 250.2, 116.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 217.1, 100.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 217.1, 100.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 228.5, 105.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 228.5, 105.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 218, 100.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 218, 100.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 218.4, 100.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 218.4, 100.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 218.7, 100.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 218.7, 100.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 219, 100.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 219, 100.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 219.2, 100.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 219.2, 100.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 219.4, 100.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 219.4, 100.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 219.6, 101 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 219.6, 101 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 219.8, 101 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 219.8, 101 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 219.9, 101 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 219.9, 101 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 54.8 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 54.8 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 54.9 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 178, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 18, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 124 );
SE004 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 76 );

--飛びかかる
SE005 = playSeVer2( spep_0 + 62, 1116, "",spep_0 + 104, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 102; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--パンチヒット
SE007 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 195 );
SE008 = playSeVer2( spep_0 + 132, 1359, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);

--連打
SE010 = playSeVer2( spep_0 + 184, 1425, "", 0, 0, 0, 0.5);
SE011 = playSeVer2( spep_0 + 184, 1187, "",spep_0 + 216, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 196, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 54 );
SE013 = playSeVer2( spep_0 + 210, 1359, "",spep_0 + 242, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 210, SE013, 42 );
SE014 = playSeVer2( spep_0 + 220, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE014, 31 );
SE015 = playSeVer2( spep_0 + 234, 1187, "",spep_0 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 234, SE015, 37 );
SE016 = playSeVer2( spep_0 + 252, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE016, 39 );
SE017 = playSeVer2( spep_0 + 262, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE017, 41 );

--蹴り飛ばす
SE018 = playSeVer2( spep_0 + 294, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 308, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 308, 1183, "",spep_0 + 428, 0, 50, -1);
SE022 = playSeVer2( spep_0 + 330, 1121, "",spep_0 + 416, 0, 40, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE023, 79 );
SE024 = playSeVer2( spep_0 + 386, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE024, 79 );

--気ダメ
SE025 = playSeVer2( spep_0 + 392, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE025, 167 );
SE026 = playSeVer2( spep_0 + 394, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE026, 111 );
SE027 = playSeVer2( spep_0 + 394, 1227, "",spep_0 + 604, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 394, SE027, 194 );
SE028 = playSeVer2( spep_0 + 394, 1226, "",spep_0 + 610, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 394, SE028, 40 );
SE029 = playSeVer2( spep_0 + 394, 1342, "",spep_0 + 616, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 394, SE029, 106 );

--オーラ
SE030 = playSeVer2( spep_0 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 79 );
SE031 = playSeVer2( spep_0 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 79 );

--気ダメ
SE032 = playSeVer2( spep_0 + 448, 1356, "",spep_0 + 624, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 448, SE032, 61 );
setPitch( spep_0 + 448, SE032, 400 );
setTimeStretch( SE032, 1.27, 30, 4 );

--オーラ
SE033 = playSeVer2( spep_0 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE033, 79 );
SE034 = playSeVer2( spep_0 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE034, 79 );
SE035 = playSeVer2( spep_0 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE035, 79 );
SE036 = playSeVer2( spep_0 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE036, 79 );
SE037 = playSeVer2( spep_0 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE037, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 568f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-------------------------------------------------
-- 気弾連射～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 526;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002)
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
--敵の動き1
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, 81, 46.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 81, 46.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 82.1, 46.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 82.1, 46.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 83.1, 46.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 83.1, 46.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 84.2, 46.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 84.2, 46.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 85.3, 46.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 85.3, 46.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 86.4, 46.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 86.4, 46.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 87.4, 46.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 87.4, 46.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 88.5, 46.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 88.5, 46.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 89.6, 46.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 89.6, 46.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 90.7, 46.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 90.7, 46.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 91.7, 46.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 91.7, 46.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 92.8, 46.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 92.8, 46.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 93.9, 46.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 93.9, 46.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 94.9, 46.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 94.9, 46.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 96, 46.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 96, 46.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 97.1, 46.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 97.1, 46.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 98.2, 46.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 98.2, 46.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 99.2, 46.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 99.2, 46.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 100.3, 46.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 100.3, 46.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 101.4, 46.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 101.4, 46.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 102.5, 46.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 102.5, 46.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 103.5, 46.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 103.5, 46.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 104.6, 46.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 104.6, 46.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 105.7, 46.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 105.7, 46.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 106.8, 46.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 106.8, 46.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 107.8, 46.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 107.8, 46.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 108.9, 46.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 108.9, 46.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 110, 46.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 110, 46.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 111.1, 46.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 111.1, 46.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 112.1, 46.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 112.1, 46.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 113.2, 46.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 113.2, 46.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 114.3, 46.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 114.3, 46.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 115.4, 46.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 115.4, 46.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 116.4, 46.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 116.4, 46.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 117.5, 46.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 117.5, 46.4 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -9.2 );

--敵の動き2
setDisp( spep_2 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 356 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, 53.8, -88.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 53.8, -88.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 51.7, -88.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 51.7, -88.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 49.6, -88.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 49.6, -88.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 47.4, -88.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 47.4, -88.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 45.3, -88.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 45.3, -88.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 43.2, -88.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 43.2, -88.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 41.1, -88.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 41.1, -88.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 39, -88.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 39, -88.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 36.9, -88.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 36.9, -88.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 34.8, -88.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 34.8, -88.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 32.7, -88.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 32.7, -88.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 30.5, -88.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 30.5, -88.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 28.4, -88.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 28.4, -88.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 26.3, -88.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 26.3, -88.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 24.2, -88.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 24.2, -88.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 22.1, -88.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 22.1, -88.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 20, -88.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 20, -88.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 17.9, -88.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 17.9, -88.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 15.7, -88.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 15.7, -88.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 13.6, -88.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 13.6, -88.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 57.3, 20.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 57.3, 20.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 53.8, 19.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 53.8, 19.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 50.9, 18 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 50.9, 18 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 48.7, 17.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 48.7, 17.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 47.1, 16.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 47.1, 16.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 46.1, 16.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 46.1, 16.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 45.8, 16 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 45.8, 16 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 45.6, 15.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 45.6, 15.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 45.5, 15.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 45.5, 15.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 45.3, 15.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 45.3, 15.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 45, 15.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 45, 15.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 44.9, 15.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 44.9, 15.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 44.7, 15.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 44.7, 15.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 44.5, 15.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 44.5, 15.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 44.3, 15.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 44.3, 15.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 44.1, 15.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 44.1, 15.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 44, 15.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 44, 15.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 43.8, 15.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 43.8, 15.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 43.7, 15.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 43.7, 15.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 43.5, 15.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 43.5, 15.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -19.3, 18 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -19.3, 18 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -19.4, 18 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -19.4, 18 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -19.4, 17.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -19.4, 17.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -19.4, 17.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -19.4, 17.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -19.5, 17.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -19.5, 17.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -19.5, 17.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -19.5, 17.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -19.5, 17.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -19.5, 17.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -19.4, 17.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -19.4, 17.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -19.4, 17.3 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -19.4, 17.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -19.3, 17.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -19.3, 17.3 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -43.2 );

setBlendColor( spep_2 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.08 );
setBlendColor( spep_2 + 322 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.18 );
setBlendColor( spep_2 + 326 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.20 );
setBlendColor( spep_2 + 330 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.28 );
setBlendColor( spep_2 + 336 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.32 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.34 );
setBlendColor( spep_2 + 340 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.36 );
setBlendColor( spep_2 + 342 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 344 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.38 );
setBlendColor( spep_2 + 348 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.42 );
setBlendColor( spep_2 + 350 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 352 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.65 );
setBlendColor( spep_2 + 360 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.69 );
setBlendColor( spep_2 + 364 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 368 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 376 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 378 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 380 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 384 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 390 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--気弾連射
SE039 = playSeVer2( spep_2 + 2, 1406, "",spep_2 + 132, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 2, SE039, 120 );
SE040 = playSeVer2( spep_2 + 2, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE040, 120 );
SE041 = playSeVer2( spep_2 + 14, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE041, 109 );
SE042 = playSeVer2( spep_2 + 30, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE041, 120 );

--気弾包囲する
SE044 = playSeVer2( spep_2 + 54, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE044, 162 );
setStartTimeMs( SE044,  133 );

--気弾連射
SE045 = playSeVer2( spep_2 + 52, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE045, 120 );
SE046 = playSeVer2( spep_2 + 60, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 150 );

--気弾包囲する
SE047 = playSeVer2( spep_2 + 68, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE047, 157 );
setStartTimeMs( SE047,  133 );
SE048 = playSeVer2( spep_2 + 86, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE048, 150 );
setStartTimeMs( SE048,  133 );

--飛び上がる
SE049 = playSeVer2( spep_2 + 120, 44, "", 0, 0, 0, -1);

--画面遷移
SE050 = playSeVer2( spep_2 + 130, 1232, "", 0, 0, 0, -1);

--オーラ
SE051 = playSeVer2( spep_2 + 130, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE052 = playSeVer2( spep_2 + 130, 1147, "",spep_2 + 238, 0, 22, -1);

--オーラ
SE053 = playSeVer2( spep_2 + 154, 1036, "", 0, 0, 0, -1);

--腕クロス
SE054 = playSeVer2( spep_2 + 172, 1004, "", 0, 0, 0, -1);

--オーラ
SE055 = playSeVer2( spep_2 + 178, 1036, "", 0, 0, 0, -1);

--腕クロス
SE056 = playSeVer2( spep_2 + 178, 1012, "", 0, 0, 0, -1);

--オーラ
SE057 = playSeVer2( spep_2 + 202, 1036, "", 0, 0, 0, -1);

--気弾飛んでくる１
SE058 = playSeVer2( spep_2 + 214, 1178, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 218, 1015, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 218, 1335, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 226, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE061, 69 );

--気弾飛んでくる２
SE062 = playSeVer2( spep_2 + 252, 1178, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 258, 1015, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 258, 1335, "", 0, 0, 0, -1);

--気弾集まる
SE065 = playSeVer2( spep_2 + 284, 1021, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 284, 1005, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 284, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE067, 75 );
SE068 = playSeVer2( spep_2 + 284, 1448, "",spep_2 + 370, 0, 38, -1);

--敵にくっつく
SE069 = playSeVer2( spep_2 + 314, 1154, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 330, 1179, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 332, 1178, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 336, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE072, 71 );

--爆発
SE073 = playSeVer2( spep_2 + 394, 1159, "", 0, 0, 0, -1);
SE074 = playSeVer2( spep_2 + 404, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 526f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕～気合いためまで
-------------------------------------------------
MAX_FRAME_0 = 568;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1,17 );
changeAnime( spep_0 + 110 + OFFSET_X, 1,4 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, -671.3, 263.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -671.3, 263.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -515.9, 195.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -515.9, 195.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -388.7, 139 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -388.7, 139 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -289.8, 95.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -289.8, 95.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -219.1, 64.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -219.1, 64.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -176.8, 45.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -176.8, 45.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -162.6, 39.1 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -162.6, 39.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -157.6, 35.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -157.6, 35.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -156.5, 34.2 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -156.5, 34.2 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -155.4, 33.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -155.4, 33.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -154.3, 32.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -154.3, 32.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -153.2, 31.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -153.2, 31.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -152.3, 30.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -152.3, 30.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -151.5, 30.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -151.5, 30.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -150.8, 29.6 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -150.8, 29.6 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -150.1, 29.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -150.1, 29.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -251, -325.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -251, -325.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -226, -325.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -226, -325.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -208.7, -325.1 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -208.7, -325.1 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -198.2, -325.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -198.2, -325.1 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 10.82, 10.82 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 0.6 );


--敵の動き2
setDisp( spep_0 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 142 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 142 + OFFSET_X, 1, -33.8, -441.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -33.8, -441.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -75.2, -488.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -75.2, -488.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -85.5, -496.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -85.5, -496.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -56.7, -519.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -56.7, -519.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -68.8, -465.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -68.8, -465.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -88.5, -510.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -88.5, -510.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -123.5, -467.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -123.5, -467.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -54.9, -500.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -54.9, -500.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -114.6, -510.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -114.6, -510.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -64.9, -487.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -64.9, -487.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -110.4, -479.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -110.4, -479.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -85.4, -499.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -85.4, -499.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -97.2, -489.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -97.2, -489.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -89.3, -495.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -89.3, -495.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -98.7, -491.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -98.7, -491.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -94.2, -493.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -94.2, -493.5 , 0 );

setScaleKey( spep_0 + 142 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 10.82, 10.82 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 10.81, 10.81 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 10.81, 10.81 );

setRotateKey( spep_0 + 142 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 42 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 42 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 40.6 );


--敵の動き3
setDisp( spep_0 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 302 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 302 + OFFSET_X, 1, -89.5, -1.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -89.5, -1.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -90.6, -2.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -90.6, -2.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -91.6, -2.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -91.6, -2.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -92.7, -3.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -92.7, -3.4 , 0 );

setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.58, 3.58 );

setRotateKey( spep_0 + 302 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -2.3 );


--敵の動き4
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 366 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, -88.5, -0.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -88.5, -0.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -299.2, 74.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -299.2, 74.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -167.9, 65.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -167.9, 65.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -455.2, 217.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -455.2, 217.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -209.4, 99.8 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -209.4, 99.8 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -426.7, 202.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -426.7, 202.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -211.4, 100 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -211.4, 100 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -397.4, 187.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -397.4, 187.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -213.1, 100.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -213.1, 100.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -310.7, 145.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -310.7, 145.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -214.7, 100.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -214.7, 100.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -298.5, 139.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -298.5, 139.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -216, 100.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -216, 100.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -250.2, 116.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -250.2, 116.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -217.1, 100.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -217.1, 100.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -228.5, 105.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -228.5, 105.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -218, 100.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -218, 100.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -218.4, 100.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -218.4, 100.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -218.7, 100.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -218.7, 100.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -219, 100.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -219, 100.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -219.2, 100.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -219.2, 100.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -219.4, 100.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -219.4, 100.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -219.6, 101 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -219.6, 101 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -219.8, 101 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -219.8, 101 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -219.9, 101 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -219.9, 101 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -54.8 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -54.8 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -54.9 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 178, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 18, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 124 );
SE004 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 76 );

--飛びかかる
SE005 = playSeVer2( spep_0 + 62, 1116, "",spep_0 + 104, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 102; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--パンチヒット
SE007 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 195 );
SE008 = playSeVer2( spep_0 + 132, 1359, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);

--連打
SE010 = playSeVer2( spep_0 + 184, 1425, "", 0, 0, 0, 0.5);
SE011 = playSeVer2( spep_0 + 184, 1187, "",spep_0 + 216, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 196, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 54 );
SE013 = playSeVer2( spep_0 + 210, 1359, "",spep_0 + 242, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 210, SE013, 42 );
SE014 = playSeVer2( spep_0 + 220, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE014, 31 );
SE015 = playSeVer2( spep_0 + 234, 1187, "",spep_0 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 234, SE015, 37 );
SE016 = playSeVer2( spep_0 + 252, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE016, 39 );
SE017 = playSeVer2( spep_0 + 262, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE017, 41 );

--蹴り飛ばす
SE018 = playSeVer2( spep_0 + 294, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 308, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 308, 1183, "",spep_0 + 428, 0, 50, -1);
SE022 = playSeVer2( spep_0 + 330, 1121, "",spep_0 + 416, 0, 40, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE023, 79 );
SE024 = playSeVer2( spep_0 + 386, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE024, 79 );

--気ダメ
SE025 = playSeVer2( spep_0 + 392, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE025, 167 );
SE026 = playSeVer2( spep_0 + 394, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE026, 111 );
SE027 = playSeVer2( spep_0 + 394, 1227, "",spep_0 + 604, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 394, SE027, 194 );
SE028 = playSeVer2( spep_0 + 394, 1226, "",spep_0 + 610, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 394, SE028, 40 );
SE029 = playSeVer2( spep_0 + 394, 1342, "",spep_0 + 616, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 394, SE029, 106 );

--オーラ
SE030 = playSeVer2( spep_0 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 79 );
SE031 = playSeVer2( spep_0 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 79 );

--気ダメ
SE032 = playSeVer2( spep_0 + 448, 1356, "",spep_0 + 624, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 448, SE032, 61 );
setPitch( spep_0 + 448, SE032, 400 );
setTimeStretch( SE032, 1.27, 30, 4 );

--オーラ
SE033 = playSeVer2( spep_0 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE033, 79 );
SE034 = playSeVer2( spep_0 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE034, 79 );
SE035 = playSeVer2( spep_0 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE035, 79 );
SE036 = playSeVer2( spep_0 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE036, 79 );
SE037 = playSeVer2( spep_0 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE037, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 568f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-------------------------------------------------
-- 気弾連射～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 526;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002)
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
--敵の動き1
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, -81, 46.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -81, 46.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -82.1, 46.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -82.1, 46.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -83.1, 46.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -83.1, 46.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -84.2, 46.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -84.2, 46.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -85.3, 46.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -85.3, 46.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -86.4, 46.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -86.4, 46.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -87.4, 46.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -87.4, 46.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -88.5, 46.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -88.5, 46.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -89.6, 46.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -89.6, 46.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -90.7, 46.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -90.7, 46.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -91.7, 46.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -91.7, 46.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -92.8, 46.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -92.8, 46.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -93.9, 46.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -93.9, 46.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -94.9, 46.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -94.9, 46.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -96, 46.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -96, 46.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -97.1, 46.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -97.1, 46.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -98.2, 46.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -98.2, 46.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -99.2, 46.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -99.2, 46.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -100.3, 46.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -100.3, 46.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -101.4, 46.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -101.4, 46.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -102.5, 46.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -102.5, 46.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -103.5, 46.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -103.5, 46.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -104.6, 46.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -104.6, 46.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -105.7, 46.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -105.7, 46.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -106.8, 46.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -106.8, 46.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -107.8, 46.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -107.8, 46.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -108.9, 46.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -108.9, 46.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -110, 46.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -110, 46.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -111.1, 46.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -111.1, 46.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -112.1, 46.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -112.1, 46.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -113.2, 46.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -113.2, 46.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -114.3, 46.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -114.3, 46.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -115.4, 46.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -115.4, 46.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -116.4, 46.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -116.4, 46.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -117.5, 46.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -117.5, 46.4 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 9.2 );

--敵の動き2
setDisp( spep_2 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 356 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, -53.8, -88.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -53.8, -88.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -51.7, -88.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -51.7, -88.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -49.6, -88.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -49.6, -88.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -47.4, -88.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -47.4, -88.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -45.3, -88.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -45.3, -88.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -43.2, -88.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -43.2, -88.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -41.1, -88.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -41.1, -88.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -39, -88.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -39, -88.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -36.9, -88.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -36.9, -88.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -34.8, -88.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -34.8, -88.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -32.7, -88.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -32.7, -88.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -30.5, -88.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -30.5, -88.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -28.4, -88.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -28.4, -88.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -26.3, -88.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -26.3, -88.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -24.2, -88.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -24.2, -88.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -22.1, -88.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -22.1, -88.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -20, -88.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -20, -88.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -17.9, -88.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -17.9, -88.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -15.7, -88.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -15.7, -88.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -13.6, -88.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -13.6, -88.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -57.3, 20.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -57.3, 20.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -53.8, 19.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -53.8, 19.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -50.9, 18 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -50.9, 18 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -48.7, 17.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -48.7, 17.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -47.1, 16.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -47.1, 16.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -46.1, 16.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -46.1, 16.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -45.8, 16 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -45.8, 16 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -45.6, 15.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -45.6, 15.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -45.5, 15.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -45.5, 15.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -45.3, 15.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -45.3, 15.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -45, 15.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -45, 15.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -44.9, 15.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -44.9, 15.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -44.7, 15.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -44.7, 15.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -44.5, 15.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -44.5, 15.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -44.3, 15.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -44.3, 15.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -44.1, 15.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -44.1, 15.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -44, 15.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -44, 15.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -43.8, 15.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -43.8, 15.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -43.7, 15.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -43.7, 15.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -43.5, 15.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -43.5, 15.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 19.3, 18 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 19.3, 18 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 19.4, 18 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 19.4, 18 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 19.4, 17.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 19.4, 17.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 19.4, 17.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 19.4, 17.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 19.5, 17.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 19.5, 17.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 19.5, 17.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 19.5, 17.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 19.5, 17.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 19.5, 17.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 19.4, 17.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 19.4, 17.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 19.4, 17.3 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 19.4, 17.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 19.3, 17.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 19.3, 17.3 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 43.2 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 43.2 );

setBlendColor( spep_2 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.08 );
setBlendColor( spep_2 + 322 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.18 );
setBlendColor( spep_2 + 326 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.20 );
setBlendColor( spep_2 + 330 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.28 );
setBlendColor( spep_2 + 336 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.32 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.34 );
setBlendColor( spep_2 + 340 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.36 );
setBlendColor( spep_2 + 342 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 344 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.38 );
setBlendColor( spep_2 + 348 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.42 );
setBlendColor( spep_2 + 350 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 352 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.65 );
setBlendColor( spep_2 + 360 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.69 );
setBlendColor( spep_2 + 364 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 368 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 376 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 378 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 + 380 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 384 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 390 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--気弾連射
SE039 = playSeVer2( spep_2 + 2, 1406, "",spep_2 + 132, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 2, SE039, 120 );
SE040 = playSeVer2( spep_2 + 2, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE040, 120 );
SE041 = playSeVer2( spep_2 + 14, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE041, 109 );
SE042 = playSeVer2( spep_2 + 30, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE041, 120 );

--気弾包囲する
SE044 = playSeVer2( spep_2 + 54, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE044, 162 );
setStartTimeMs( SE044,  133 );

--気弾連射
SE045 = playSeVer2( spep_2 + 52, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE045, 120 );
SE046 = playSeVer2( spep_2 + 60, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 150 );

--気弾包囲する
SE047 = playSeVer2( spep_2 + 68, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE047, 157 );
setStartTimeMs( SE047,  133 );
SE048 = playSeVer2( spep_2 + 86, 1256, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE048, 150 );
setStartTimeMs( SE048,  133 );

--飛び上がる
SE049 = playSeVer2( spep_2 + 120, 44, "", 0, 0, 0, -1);

--画面遷移
SE050 = playSeVer2( spep_2 + 130, 1232, "", 0, 0, 0, -1);

--オーラ
SE051 = playSeVer2( spep_2 + 130, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE052 = playSeVer2( spep_2 + 130, 1147, "",spep_2 + 238, 0, 22, -1);

--オーラ
SE053 = playSeVer2( spep_2 + 154, 1036, "", 0, 0, 0, -1);

--腕クロス
SE054 = playSeVer2( spep_2 + 172, 1004, "", 0, 0, 0, -1);

--オーラ
SE055 = playSeVer2( spep_2 + 178, 1036, "", 0, 0, 0, -1);

--腕クロス
SE056 = playSeVer2( spep_2 + 178, 1012, "", 0, 0, 0, -1);

--オーラ
SE057 = playSeVer2( spep_2 + 202, 1036, "", 0, 0, 0, -1);

--気弾飛んでくる１
SE058 = playSeVer2( spep_2 + 214, 1178, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 218, 1015, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 218, 1335, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 226, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE061, 69 );

--気弾飛んでくる２
SE062 = playSeVer2( spep_2 + 252, 1178, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 258, 1015, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 258, 1335, "", 0, 0, 0, -1);

--気弾集まる
SE065 = playSeVer2( spep_2 + 284, 1021, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 284, 1005, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 284, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE067, 75 );
SE068 = playSeVer2( spep_2 + 284, 1448, "",spep_2 + 370, 0, 38, -1);

--敵にくっつく
SE069 = playSeVer2( spep_2 + 314, 1154, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 330, 1179, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 332, 1178, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 336, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE072, 71 );

--爆発
SE073 = playSeVer2( spep_2 + 394, 1159, "", 0, 0, 0, -1);
SE074 = playSeVer2( spep_2 + 404, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 526f

end