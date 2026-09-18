--1033060:LR_魔人ベジータ+超サイヤ人2孫悟空(天使)_超必殺技：ファイナルフラッシュ
--sp_effect_a9_00169
--sp3003

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164451; --カード前 ef_001
SP_02  = 164452; --カード後 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 488;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
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
spep_x = spep_0 + 384;

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
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 92 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 28.4, 3.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 28.4, 3.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 42.5, 3.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 42.5, 3.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 114.8, -11 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 114.8, -11 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 90.7, 11.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 90.7, 11.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 130.8, -49.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 130.8, -49.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 136.9, 29.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 136.9, 29.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 140.9, 7.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 140.9, 7.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 100.7, -6.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 100.7, -6.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 122.8, -51 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 122.8, -51 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 134.9, -6.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 134.9, -6.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 128.8, -42.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 128.8, -42.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 151.2, -51.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 151.2, -51.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 169.4, -101.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 169.4, -101.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 201.5, -137.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 201.5, -137.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 189.5, -109.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 189.5, -109.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 215.6, -101 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 215.6, -101 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 201.6, -80.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 201.6, -80.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 235.7, -125.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 235.7, -125.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 219.7, -76.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 219.7, -76.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 215.6, -117 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 215.6, -117 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 219.6, -93 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 219.6, -93 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 57, -131.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 57, -131.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 50.5, -183.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 50.5, -183.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 60.5, -217.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 60.5, -217.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 70.5, -195.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 70.5, -195.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 56.5, -209.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 56.5, -209.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 65, -109.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 65, -109.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 55, -91.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 55, -91.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 87.2, -173 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 87.2, -173 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 97.2, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 97.2, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 83.2, -165 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 83.2, -165 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 87.2, -157 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 87.2, -157 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 32.2 );


--敵の動き2
setDisp( spep_0 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 198 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -124.8, -371.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -124.8, -371.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 102.3, -102.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 102.3, -102.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 66, -138 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 66, -138 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 319.7, -258.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 319.7, -258.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -26.7, -432.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -26.7, -432.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 14.6, -403.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 14.6, -403.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 127.9, -63.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 127.9, -63.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 86.4, -117.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 86.4, -117.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 167, -103 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 167, -103 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 6.9, -610 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 6.9, -610 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 5.7, -614.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 5.7, -614.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 4.5, -618.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 4.5, -618.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 3.3, -622.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 3.3, -622.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 224.7, -537.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 224.7, -537.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 308.9, -662 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 308.9, -662 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 308.9, -561.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 308.9, -561.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 303.4, -646 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 303.4, -646 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 408.3, -703.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 408.3, -703.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 469.2, -749.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 469.2, -749.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 542.1, -790.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 542.1, -790.7 , 0 );

setScaleKey( spep_0 + 198 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 198 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -21.5 );


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 6, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--ラッシュ
SE004 = playSeVer2( spep_0 + 60, 1049, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 64, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1414, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1009, "",spep_0 + 126, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 90, 1110, "",spep_0 + 126, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 100, 1010, "",spep_0 + 132, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 100, 1110, "",spep_0 + 132, 0, 8, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 114, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 120 );
SE013 = playSeVer2( spep_0 + 114, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE013, 130 );

--ラッシュ
SE014 = playSeVer2( spep_0 + 120, 1009, "", spep_0 + 150, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 130, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 130, 1110, "", 0 + 148, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 136, 1414, "", 0, 0, 0, -1);
--SE018 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_0 + 172, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 172, 1116, "",spep_0 + 220, 0, 18, -1);

--膝蹴り
SE024 = playSeVer2( spep_0 + 194, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 198, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 212, 1190, "", 0, 0, 0, -1);

--蹴り飛ばす
SE027 = playSeVer2( spep_0 + 268, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 158 );
SE028 = playSeVer2( spep_0 + 278, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 140 );

--オーラ
SE029 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 50 );
SE030 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE030, 50 );
SE031 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE031, 50 );
SE036 = playSeVer2( spep_0 + 364, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE036, 50 );

--腕広げる
SE032 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--気ダメ
SE033 = playSeVer2( spep_0 + 350, 1122, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 350, 1035, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 350, 1503, "", 0, 0, 0, -1);

--気弾溜め
SE037 = playSeVer2( spep_0 + 384, 1018, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 384, 1489, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 396, 1252, "",spep_0 + 510, 0, 12, -1);
SE041 = playSeVer2( spep_0 + 408, 1341, "",spep_0 + 510, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 408, SE041, 158 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 488f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前気弾溜め
SE043 = playSeVer2( spep_1 + 84, 1356, "",spep_2 + 120, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 84, SE043, 71 );
setPitch( spep_1 + 84, SE043, 500 );
setTimeStretch( SE043, 1.33, 30, 4 );
SE044 = playSeVer2( spep_1 + 84, 1513, "",spep_2 + 118, 0, 14, -1);
SE045 = playSeVer2( spep_1 + 86, 1252, "",spep_2 + 118, 0, 14, -1);
SE046 = playSeVer2( spep_1 + 88, 1341, "",spep_2 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 88, SE046, 119 );


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 348;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
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
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 164 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 57.3, 43.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 57.3, 43.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 60.5, 41.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 60.5, 41.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 63.7, 40.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 63.7, 40.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 70, 37 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 70, 37 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 73.2, 35.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 73.2, 35.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 76.4, 33.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 76.4, 33.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 79.6, 32.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 79.6, 32.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 82.8, 30.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 82.8, 30.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 85.9, 29.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 85.9, 29.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 89.1, 27.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 89.1, 27.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 92.3, 25.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 92.3, 25.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 87.9 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 87.9 );


-- ** 音 ** --
--発射前気弾溜め2
SE047 = playSeVer2( spep_2 + 64, 1224, "", 0, 0, 0, -1);
setPitch( spep_2 + 64, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );
SE048 = playSeVer2( spep_2 + 66, 1262, "",spep_2 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 66, SE048, 122 );
setPitch( spep_2 + 66, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );

--気弾発射
SE049 = playSeVer2( spep_2 + 94, 1258, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 102, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE050, 148 );
SE051 = playSeVer2( spep_2 + 102, 1338, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 120, 1304, "", 0, 0, 0, -1);

--地面激突
SE053 = playSeVer2( spep_2 + 160, 1126, "", 0, 0, 0, -1);
setPitch( spep_2 + 160, SE053, -600 );
setTimeStretch( SE053, 0.6, 30, 4 );
SE054 = playSeVer2( spep_2 + 160, 1188, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 160, 1168, "",spep_2 + 282, 0, 44, -1);

--爆発
SE056 = playSeVer2( spep_2 + 220, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 230); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 348f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 488;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
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
--spep_x = spep_0 + 384;

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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 66 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 92 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, -28.4, 3.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -28.4, 3.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -42.5, 3.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -42.5, 3.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -114.8, -11 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -114.8, -11 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -90.7, 11.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -90.7, 11.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -130.8, -49.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -130.8, -49.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -136.9, 29.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -136.9, 29.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -140.9, 7.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -140.9, 7.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -100.7, -6.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -100.7, -6.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -122.8, -51 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -122.8, -51 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -134.9, -6.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -134.9, -6.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -128.8, -42.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -128.8, -42.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -151.2, -51.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -151.2, -51.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -169.4, -101.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -169.4, -101.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -201.5, -137.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -201.5, -137.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -189.5, -109.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -189.5, -109.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -215.6, -101 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -215.6, -101 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -201.6, -80.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -201.6, -80.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -235.7, -125.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -235.7, -125.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -219.7, -76.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -219.7, -76.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -215.6, -117 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -215.6, -117 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -219.6, -93 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -219.6, -93 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -57, -131.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -57, -131.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -50.5, -183.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -50.5, -183.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -60.5, -217.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -60.5, -217.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -70.5, -195.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -70.5, -195.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -56.5, -209.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -56.5, -209.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -65, -109.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -65, -109.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -55, -91.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -55, -91.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -87.2, -173 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -87.2, -173 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -97.2, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -97.2, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -83.2, -165 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -83.2, -165 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -87.2, -157 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -87.2, -157 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -32.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -32.2 );


--敵の動き2
setDisp( spep_0 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 198 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 198 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 124.8, -371.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 124.8, -371.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -102.3, -102.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -102.3, -102.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -66, -138 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -66, -138 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -319.7, -258.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -319.7, -258.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 26.7, -432.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 26.7, -432.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -14.6, -403.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -14.6, -403.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -127.9, -63.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -127.9, -63.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -86.4, -117.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -86.4, -117.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -167, -103 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -167, -103 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -6.9, -610 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -6.9, -610 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -5.7, -614.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -5.7, -614.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -4.5, -618.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -4.5, -618.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -3.3, -622.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -3.3, -622.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -224.7, -537.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -224.7, -537.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -308.9, -662 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -308.9, -662 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -308.9, -561.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -308.9, -561.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -303.4, -646 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -303.4, -646 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -408.3, -703.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -408.3, -703.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -469.2, -749.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -469.2, -749.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -542.1, -790.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -542.1, -790.7 , 0 );

setScaleKey( spep_0 + 198 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 198 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 21.5 );


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 6, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--ラッシュ
SE004 = playSeVer2( spep_0 + 60, 1049, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 64, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1414, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1009, "",spep_0 + 126, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 90, 1110, "",spep_0 + 126, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 100, 1010, "",spep_0 + 132, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 100, 1110, "",spep_0 + 132, 0, 8, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 114, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 120 );
SE013 = playSeVer2( spep_0 + 114, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE013, 130 );

--ラッシュ
SE014 = playSeVer2( spep_0 + 120, 1009, "", spep_0 + 150, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 130, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 130, 1110, "", 0 + 148, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 136, 1414, "", 0, 0, 0, -1);
--SE018 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_0 + 172, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 172, 1116, "",spep_0 + 220, 0, 18, -1);

--膝蹴り
SE024 = playSeVer2( spep_0 + 194, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 198, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 212, 1190, "", 0, 0, 0, -1);

--蹴り飛ばす
SE027 = playSeVer2( spep_0 + 268, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 158 );
SE028 = playSeVer2( spep_0 + 278, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 140 );

--オーラ
SE029 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 50 );
SE030 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE030, 50 );
SE031 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE031, 50 );
SE036 = playSeVer2( spep_0 + 364, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE036, 50 );

--腕広げる
SE032 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--気ダメ
SE033 = playSeVer2( spep_0 + 350, 1122, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 350, 1035, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 350, 1503, "", 0, 0, 0, -1);

--気弾溜め
SE037 = playSeVer2( spep_0 + 384, 1018, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 384, 1489, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 396, 1252, "",spep_0 + 510, 0, 12, -1);
SE041 = playSeVer2( spep_0 + 408, 1341, "",spep_0 + 510, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 408, SE041, 158 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 488f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前気弾溜め
SE043 = playSeVer2( spep_1 + 84, 1356, "",spep_2 + 120, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 84, SE043, 71 );
setPitch( spep_1 + 84, SE043, 500 );
setTimeStretch( SE043, 1.33, 30, 4 );
SE044 = playSeVer2( spep_1 + 84, 1513, "",spep_2 + 118, 0, 14, -1);
SE045 = playSeVer2( spep_1 + 86, 1252, "",spep_2 + 118, 0, 14, -1);
SE046 = playSeVer2( spep_1 + 88, 1341, "",spep_2 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 88, SE046, 119 );


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 348;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
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
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 164 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, -57.3, 43.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -57.3, 43.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -60.5, 41.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -60.5, 41.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -63.7, 40.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -63.7, 40.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -66.8, 38.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -66.8, 38.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -70, 37 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -70, 37 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -73.2, 35.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -73.2, 35.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -76.4, 33.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -76.4, 33.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -79.6, 32.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -79.6, 32.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -82.8, 30.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -82.8, 30.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -85.9, 29.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -85.9, 29.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -89.1, 27.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -89.1, 27.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -92.3, 25.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -92.3, 25.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, -87.9 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -87.9 );


-- ** 音 ** --
--発射前気弾溜め2
SE047 = playSeVer2( spep_2 + 64, 1224, "", 0, 0, 0, -1);
setPitch( spep_2 + 64, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );
SE048 = playSeVer2( spep_2 + 66, 1262, "",spep_2 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 66, SE048, 122 );
setPitch( spep_2 + 66, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );

--気弾発射
SE049 = playSeVer2( spep_2 + 94, 1258, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 102, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE050, 148 );
SE051 = playSeVer2( spep_2 + 102, 1338, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 120, 1304, "", 0, 0, 0, -1);

--地面激突
SE053 = playSeVer2( spep_2 + 160, 1126, "", 0, 0, 0, -1);
setPitch( spep_2 + 160, SE053, -600 );
setTimeStretch( SE053, 0.6, 30, 4 );
SE054 = playSeVer2( spep_2 + 160, 1188, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 160, 1168, "",spep_2 + 282, 0, 44, -1);

--爆発
SE056 = playSeVer2( spep_2 + 220, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 230); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 348f -2f

end