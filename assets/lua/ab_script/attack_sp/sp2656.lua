--1028020:LR_超サイヤ人ブロリー_超必殺技：マッシブブラスター
--sp_effect_b1_00272
--sp2656

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162603;  --ef_001 冒頭～バンザイ：手前
SP_01b = 162604;  --ef_001b 冒頭～バンザイ：奥
SP_02  = 162605;  --ef_002  気タメ～ラスト：手前
SP_02b = 162606;  --ef_002b  気タメ～ラスト：奥

--エフェクト(てき)
SP_01r  = 162607;  --ef_001r 敵用：冒頭～バンザイ：手前
SP_01br = 162608;  --ef_001r_b 敵用：冒頭～バンザイ：奥
SP_02r  = 162609;  --ef_002r 敵用：気タメ～ラスト：手前


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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～バンザイ
-------------------------------------------------
MAX_FRAME_0 = 714;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～バンザイ：手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭～バンザイ：奥(ef_001b)
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
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 242 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 188 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 286.6, 20.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 286.6, 20.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 246.6, 60.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 246.6, 60.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 234, 37.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 234, 37.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 185.1, 63.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 185.1, 63.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 90.4, 97.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 90.4, 97.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 115.9, 86.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 115.9, 86.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 110.4, 73 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 110.4, 73 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 127, 103.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 127, 103.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 124.3, 129.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 124.3, 129.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 137.6, 133.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 137.6, 133.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 143.1, 133.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 143.1, 133.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 141, 153.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 141, 153.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.4, 159.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.4, 159.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 142.7, 148.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 142.7, 148.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 143, 159.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 143, 159.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 143.7, 151.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 143.7, 151.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 144, 150.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 144, 150.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 144.3, 151.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 144.3, 151.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 144.7, 151.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 144.7, 151.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 145, 152.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 145, 152.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 145.3, 152.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 145.3, 152.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 145.6, 153.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 145.6, 153.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 146, 154 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 146, 154 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 146.3, 154.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 146.3, 154.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 146.6, 155 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 146.6, 155 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 146.9, 155.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 146.9, 155.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 147.3, 156.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 147.3, 156.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 147.6, 156.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 147.6, 156.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 147.9, 157.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 147.9, 157.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 148.2, 157.7 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 14.4 );

--敵の動き2
setDisp( spep_0 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 276 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 276 + OFFSET_X, 1, -232.4, -206.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -232.4, -206.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -268.1, -169.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -268.1, -169.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -292.5, -193.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -292.5, -193.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -498.4, -439.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -498.4, -439.8 , 0 );

setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 4.14, 4.14 );

setRotateKey( spep_0 + 276 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 23.1 );

--敵の動き3
setDisp( spep_0 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 334 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 408 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 424 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 334 + OFFSET_X, 1, 27, -7.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 27, -7.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -19.3, 43.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -19.3, 43.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -32.9, 56.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -32.9, 56.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -40.2, 62 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -40.2, 62 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -48.9, 63.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -48.9, 63.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -45.8, 68.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -45.8, 68.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -46.8, 68.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -46.8, 68.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -41.8, 67.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -41.8, 67.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -39.7, 76.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -39.7, 76.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -39, 74.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -39, 74.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -38.4, 74.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -38.4, 74.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -42, 74.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -42, 74.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -41.4, 74.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -41.4, 74.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -41.9, 69.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -41.9, 69.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -44.4, 74.7 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -44.4, 74.7 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -38.6, 72.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -38.6, 72.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -36.9, 72.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -36.9, 72.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -40.5, 67.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -40.5, 67.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -38.9, 68 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -38.9, 68 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -39.3, 70.7 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -39.3, 70.7 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -40.8, 70.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -40.8, 70.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -40.2, 70 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -40.2, 70 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -33.2, 70.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -33.2, 70.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -32.5, 69.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -32.5, 69.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -33.9, 64 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -33.9, 64 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -37.4, 66.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -37.4, 66.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -37.7, 63.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -37.7, 63.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -37, 63.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -37, 63.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -30, 60.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -30, 60.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -32.4, 61.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -32.4, 61.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -33.8, 62.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -33.8, 62.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -30, 62 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -30, 62 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -24.7, 64.6 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -24.7, 64.6 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -24.7, 65.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -24.7, 65.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -23, 59.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -23, 59.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -19.8, 62.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -19.8, 62.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -23, 62.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -23, 62.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 22.9, 60.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 22.9, 60.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 206.3, 36.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 206.3, 36.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 206.3, 32.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 206.3, 32.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 30.8, -324 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 30.8, -324 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 123.8, -137.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 123.8, -137.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 121.8, -145.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 121.8, -145.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 137.6, -106.3 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 137.6, -106.3 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 154.7, -88.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 154.7, -88.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 154.7, -84 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 154.7, -84 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 152.7, -77.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 152.7, -77.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 154.1, -86.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 154.1, -86.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 156.1, -74.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 156.1, -74.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 160.9, -79.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 160.9, -79.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 158.9, -77.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 158.9, -77.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 156.8, -63.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 156.8, -63.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 158.9, -81.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 158.9, -81.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 158.9, -71.7 , 0 );

setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 11.5, 11.5 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 11.5, 11.5 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 334 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 18.5 );

--敵の動き4
setDisp( spep_0 + 492 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 648 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 492 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 618 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 492 + OFFSET_X, 1, -9.1, -148.6 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -9.1, -148.6 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -5.4, -115 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -5.4, -115 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -1.8, -82.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -1.8, -82.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 1.7, -51.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 1.7, -51.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 5, -20.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 5, -20.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 8.2, 8.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 8.2, 8.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 11.3, 36.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 11.3, 36.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 14.2, 63.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 14.2, 63.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 17.1, 88.8 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 17.1, 88.8 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 18.9, 100.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 18.9, 100.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 20.3, 111.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 20.3, 111.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 21.4, 119.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 21.4, 119.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 22.4, 126.2 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 22.4, 126.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 23, 131.1 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 23, 131.1 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 23, 132.9 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 23, 132.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 23, 134.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 23, 134.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 23, 136.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 23, 136.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 23, 138.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 23, 138.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 23, 140.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 23, 140.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 23, 142.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 23, 142.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 23, 144 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 23, 144 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 23, 145.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 23, 145.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 23, 147.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 23, 147.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 23, 149.5 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 23, 149.5 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -142.3, 215.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -142.3, 215.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -95.5, 199.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -95.5, 199.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -53.7, 179.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -53.7, 179.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -8.5, 163.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -8.5, 163.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 31.7, 150.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 31.7, 150.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 75.3, 134.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 75.3, 134.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 118.8, 118.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 118.8, 118.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 162.3, 102.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 162.3, 102.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 207.5, 86 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 207.5, 86 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 205.2, 91.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 205.2, 91.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 209.4, 85 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 209.4, 85 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 208.8, 88.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 208.8, 88.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 213, 87.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 213, 87.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 219, 77.6 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 219, 77.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 219.9, 81.3 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 219.9, 81.3 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 224.2, 75 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 224.2, 75 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 230.1, 76.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 230.1, 76.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 229.5, 73.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 229.5, 73.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 232.1, 72.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 232.1, 72.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 236.4, 77.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 236.4, 77.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 239, 73.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 239, 73.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 240, 68.6 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 240, 68.6 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 242.6, 67.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 242.6, 67.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 246.9, 74.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 246.9, 74.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 247.8, 72.8 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 247.8, 72.8 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 250.5, 73.1 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 250.5, 73.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 249.8, 75.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 249.8, 75.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 252.4, 70.4 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 252.4, 70.4 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 253.4, 72.4 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 253.4, 72.4 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 275.8, 74.3 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 275.8, 74.3 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 273.5, 69.7 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 273.5, 69.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 266.2, 55.2 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 266.2, 55.2 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 270.5, 62.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 270.5, 62.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 273.1, 57.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 273.1, 57.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 275.7, 61 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 275.7, 61 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 278.3, 56.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 278.3, 56.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 281, 63.3 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 281, 63.3 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 281.9, 60.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 281.9, 60.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 287.9, 55.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 287.9, 55.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -152.9, 255.9 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -152.9, 255.9 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -97.1, 206.9 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -97.1, 206.9 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -51.2, 164.1 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -51.2, 164.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -3.4, 122.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -3.4, 122.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 38, 83.8 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 38, 83.8 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 79.5, 49.5 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 79.5, 49.5 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 114.6, 14.8 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 114.6, 14.8 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 148.1, -15.5 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 148.1, -15.5 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 178.6, -42.9 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 178.6, -42.9 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 205.9, -67.5 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 205.9, -67.5 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 230, -89.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 230, -89.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 251, -108.2 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 251, -108.2 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 262.3, -118.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 262.3, -118.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 272.4, -127.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 272.4, -127.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 281.4, -135.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 281.4, -135.7 , 0 );

setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_0 + 492 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 58 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 58 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 60 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 60 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 60.5 );

-- ** 音 ** --
--炎あふれる
SE001 = playSeVer2( spep_0 + 0, 1173, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
setPitch( spep_0 + 0, SE001, -200 );
setTimeStretch( SE001, 0.87, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 168, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 14, 1268, "",spep_0 + 174, 68, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 207 );
SE005 = playSeVer2( spep_0 + 38, 1281, "",spep_0 + 146, 32, 16, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 35 );
setPitch( spep_0 + 38, SE005, 400 );
setTimeStretch( SE005, 1.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 43 );

--オーラ
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 22 );
setPitch( spep_0 + 42, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE008 = playSeVer2( spep_0 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 35 );
setPitch( spep_0 + 56, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 56, SE008 );
SE009 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 45 );
setPitch( spep_0 + 72, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 50 );
setPitch( spep_0 + 86, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 86, SE010 );
SE011 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE011, 50 );
setPitch( spep_0 + 98, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE012 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 50 );
setPitch( spep_0 + 114, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 114, SE012 );
SE013 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 50 );
setPitch( spep_0 + 128, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE014, 50 );
setPitch( spep_0 + 140, SE014, 200 );
setTimeStretch( SE014, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 140, SE014 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
--向かってくる
SE015 = playSeVer2( spep_0 + 142, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 142, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE016, 65 );
SE017 = playSeVer2( spep_0 + 142, 1117, "",spep_0 + 204, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 148, 1277, "",spep_0 + 208, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 148, SE018, 150 );

--殴る
SE019 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 178, 1414, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 178, 1187, "",spep_0 + 270, 0, 10, -1);

--瞬間移動
SE022 = playSeVer2( spep_0 + 196, 1245, "",spep_0 + 228, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 196, SE022, 77 );
SE023 = playSeVer2( spep_0 + 210, 1245, "",spep_0 + 282, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 210, SE023, 58 );

--気弾溜め
SE024 = playSeVer2( spep_0 + 234, 1393, "",spep_0 + 288, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 234, SE024, 251 );
setPitch( spep_0 + 234, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE025 = playSeVer2( spep_0 + 234, 1020, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 234, 1282, "",spep_0 + 306, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 234, SE026, 100 );
setPitch( spep_0 + 234, SE026, -800 );
setTimeStretch( SE026, 0.47, 30, 4 );

--気弾発射
SE027 = playSeVer2( spep_0 + 268, 1047, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 76 );
SE028 = playSeVer2( spep_0 + 268, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 152 );
SE029 = playSeVer2( spep_0 + 268, 1424, "",spep_0 + 336, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 268, SE029, 120 );

--爆発
SE030 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE030, 76 );

--画面遷移
SE031 = playSeVer2( spep_0 + 308, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE031, 66 );

--気弾包囲網発射する
SE032 = playSeVer2( spep_0 + 326, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 326, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE033, 91 );
SE034 = playSeVer2( spep_0 + 326, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE034, 81 );
SE035 = playSeVer2( spep_0 + 334, 1312, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 334, 1409, "",spep_0 + 596, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 334, SE036, 260 );

--敵吹き飛ぶ
SE038 = playSeVer2( spep_0 + 404, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE038, 72 );
SE039 = playSeVer2( spep_0 + 404, 1121, "",spep_0 + 536, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 404, SE039, 65 );

--追い気弾発射
SE040 = playSeVer2( spep_0 + 460, 1117, "",spep_0 + 504, 0, 18, -1);
SE041 = playSeVer2( spep_0 + 460, 1402, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 472, 1405, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 472, 1402, "", 0, 0, 0, -1);

--敵飛んでいく２
SE037 = playSeVer2( spep_0 + 468, 1278, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE037, 80 );
setStartTimeMs( SE037,  1133 );
setPitch( spep_0 + 468, SE037, 100 );
setTimeStretch( SE037, 1.07, 30, 4 );
SE044 = playSeVer2( spep_0 + 474, 1183, "", 0, 0, 0, -1);

--連続爆発
SE045 = playSeVer2( spep_0 + 512, 1002, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 528, 1025, "", 0, 0, 0, -1);

--ブロリー翻る
SE048 = playSeVer2( spep_0 + 540, 1011, "",spep_0 + 600, 12, 14, -1);
setStartTimeMs( SE048,  133 );
SE049 = playSeVer2( spep_0 + 542, 1004, "", 0, 0, 0, -1);

--追い気弾発射２
SE050 = playSeVer2( spep_0 + 576, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE050, 133 );
SE051 = playSeVer2( spep_0 + 578, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE051, 72 );
SE052 = playSeVer2( spep_0 + 596, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE052, 87 );

--敵飛んでいく３
SE046 = playSeVer2( spep_0 + 602, 1121, "",spep_0 + 676, 12, 12, -1);
setSeVolumeByWorkId( spep_0 + 602, SE046, 58 );
setStartTimeMs( SE046,  1300 );
SE053 = playSeVer2( spep_0 + 608, 1182, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 608, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE054, 135 );
SE055 = playSeVer2( spep_0 + 608, 63, "",spep_0 + 686, 0, 22, -1);

--爆発
SE056 = playSeVer2( spep_0 + 650, 1159, "",spep_0 + 728, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 650, SE056, 63 );

--ブロリー向かってくる
SE057 = playSeVer2( spep_0 + 678, 1167, "",spep_0 + 726, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 678, SE057, 52 );
setPitch( spep_0 + 678, SE057, -500 );
setTimeStretch( SE057, 0.67, 30, 4 );
SE058 = playSeVer2( spep_0 + 678, 1182, "",spep_0 + 724, 0, 8, -1);
SE059 = playSeVer2( spep_0 + 678, 9, "",spep_0 + 728, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --714f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--両手気弾溜める
SE061 = playSeVer2( spep_1 + 84, 1278, "",spep_1 + 186, 0, 42, -1);
SE062 = playSeVer2( spep_1 + 84, 1019, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気タメ～ラスト
-------------------------------------------------
MAX_FRAME_2 = 352;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気タメ～ラスト：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気タメ～ラスト：奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 179 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, -87.4, 17.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -87.4, 17.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -68.8, 14.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -68.8, 14.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -39.4, 9.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -39.4, 9.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -22.3, 5.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -22.3, 5.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -4.3, 0.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -4.3, 0.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 11.4, -3.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 11.4, -3.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 31.2, -9.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 31.2, -9.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 48.7, -8.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 48.7, -8.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 62.1, -10.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 62.1, -10.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 68.2, -11 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 68.2, -11 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 78.5, -12.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 78.5, -12.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 91.4, -14.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 91.4, -14.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 105.2, -14.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 105.2, -14.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 111.6, -18.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 111.6, -18.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 120.6, -19.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 120.6, -19.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 128.8, -20.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 128.8, -20.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 143.1, -23.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 143.1, -23.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 40.6, -7.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 40.6, -7.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 38.4, -10.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 38.4, -10.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 19.6, 3.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 19.6, 3.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 19, -24.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 19, -24.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 26.7, 5.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 26.7, 5.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 36, -6.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 36, -6.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 33.7, -4.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 33.7, -4.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 15, -4.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 15, -4.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 1.2, -20.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 1.2, -20.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 31.9, -4.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 31.9, -4.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 3.3, 7.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 3.3, 7.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 14.2, -7.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 14.2, -7.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 13.6, 11.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 13.6, 11.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -1.8, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -1.8, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 10.7, 5.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 10.7, 5.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 10.1, 9.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 10.1, 9.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -3, 12.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -3, 12.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -1.5, 5.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -1.5, 5.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -10.3, 5.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -10.3, 5.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -0.7, 16.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -0.7, 16.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 0.8, 2.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 0.8, 2.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -18.3, 5.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -18.3, 5.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 41.7, 3.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 41.7, 3.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 180.3, -48.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 180.3, -48.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 174.1, -55 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 174.1, -55 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 22.5 );

-- ** 音 ** --
--両手気弾溜める
SE063 = playSeVer2( spep_2 + 2, 1191, "",spep_2 + 62, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 2, SE063, 152 );
SE064 = playSeVer2( spep_2 + 2, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE064, 69 );
SE065 = playSeVer2( spep_2 + 2, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE065, 155 );
SE066 = playSeVer2( spep_2 + 2, 1334, "",spep_2 + 66, 0, 14, -1);

--向かっていく
SE067 = playSeVer2( spep_2 + 48, 1182, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 48, 1277, "", 0, 0, 0, -1);
setPitch( spep_2 + 48, SE068, -200 );
setTimeStretch( SE068, 0.87, 30, 4 );
SE069 = playSeVer2( spep_2 + 48, 1183, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 48, 1314, "",spep_2 + 240, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE070, 77 );

--振りかぶる
SE071 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 136, 0, 18, -1);

--敵ヒット
SE072 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 122, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE073, 92 );
SE074 = playSeVer2( spep_2 + 122, 1359, "", 0, 0, 0, -1);

--ブロリー飛び去る
SE075 = playSeVer2( spep_2 + 166, 1182, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_2 + 166, 1117, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 172, 1277, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 184, 1121, "",spep_2 + 262, 0, 40, -1);

--爆発
SE079 = playSeVer2( spep_2 + 224, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE079, 295 );
setStartTimeMs( SE079,  300 );
SE080 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE080, 69 );
SE081 = playSeVer2( spep_2 + 236, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE081, 81 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 236); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 352f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 冒頭～バンザイ
-------------------------------------------------
MAX_FRAME_0 = 714;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 敵用：冒頭～バンザイ：手前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 敵用：冒頭～バンザイ：奥(ef_001r_b)
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
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 242 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 188 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 286.6, 20.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 286.6, 20.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 246.6, 60.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 246.6, 60.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 234, 37.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 234, 37.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 185.1, 63.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 185.1, 63.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 90.4, 97.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 90.4, 97.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 115.9, 86.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 115.9, 86.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 110.4, 73 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 110.4, 73 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 127, 103.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 127, 103.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 124.3, 129.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 124.3, 129.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 137.6, 133.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 137.6, 133.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 143.1, 133.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 143.1, 133.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 141, 153.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 141, 153.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.4, 159.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.4, 159.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 142.7, 148.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 142.7, 148.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 143, 159.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 143, 159.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 143.7, 151.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 143.7, 151.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 144, 150.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 144, 150.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 144.3, 151.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 144.3, 151.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 144.7, 151.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 144.7, 151.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 145, 152.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 145, 152.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 145.3, 152.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 145.3, 152.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 145.6, 153.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 145.6, 153.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 146, 154 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 146, 154 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 146.3, 154.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 146.3, 154.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 146.6, 155 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 146.6, 155 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 146.9, 155.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 146.9, 155.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 147.3, 156.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 147.3, 156.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 147.6, 156.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 147.6, 156.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 147.9, 157.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 147.9, 157.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 148.2, 157.7 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 14.4 );

--敵の動き2
setDisp( spep_0 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 276 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 276 + OFFSET_X, 1, 232.4, -206.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 232.4, -206.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 268.1, -169.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 268.1, -169.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 292.5, -193.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 292.5, -193.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 498.4, -439.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 498.4, -439.8 , 0 );

setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 4.14, 4.14 );

setRotateKey( spep_0 + 276 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -23.1 );

--敵の動き3
setDisp( spep_0 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 334 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 408 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 424 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 334 + OFFSET_X, 1, -27, -7.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -27, -7.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 19.3, 43.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 19.3, 43.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 32.9, 56.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 32.9, 56.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 40.2, 62 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 40.2, 62 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 48.9, 63.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 48.9, 63.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 45.8, 68.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 45.8, 68.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 46.8, 68.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 46.8, 68.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 41.8, 67.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 41.8, 67.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 39.7, 76.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 39.7, 76.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 39, 74.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 39, 74.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 38.4, 74.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 38.4, 74.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 42, 74.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 42, 74.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 41.4, 74.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 41.4, 74.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 41.9, 69.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 41.9, 69.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 44.4, 74.7 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 44.4, 74.7 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 38.6, 72.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 38.6, 72.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 36.9, 72.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 36.9, 72.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 40.5, 67.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 40.5, 67.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 38.9, 68 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 38.9, 68 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 39.3, 70.7 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 39.3, 70.7 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 40.8, 70.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 40.8, 70.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 40.2, 70 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 40.2, 70 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 33.2, 70.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 33.2, 70.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 32.5, 69.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 32.5, 69.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 33.9, 64 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 33.9, 64 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 37.4, 66.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 37.4, 66.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 37.7, 63.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 37.7, 63.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 37, 63.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 37, 63.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 30, 60.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 30, 60.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 32.4, 61.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 32.4, 61.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 33.8, 62.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 33.8, 62.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 30, 62 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 30, 62 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 24.7, 64.6 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 24.7, 64.6 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 24.7, 65.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 24.7, 65.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 23, 59.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 23, 59.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 19.8, 62.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 19.8, 62.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 23, 62.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 23, 62.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -22.9, 60.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -22.9, 60.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -206.3, 36.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -206.3, 36.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -206.3, 32.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -206.3, 32.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -30.8, -324 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -30.8, -324 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -123.8, -137.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -123.8, -137.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -121.8, -145.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -121.8, -145.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -137.6, -106.3 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -137.6, -106.3 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -154.7, -88.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -154.7, -88.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -154.7, -84 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -154.7, -84 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -152.7, -77.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -152.7, -77.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -154.1, -86.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -154.1, -86.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -156.1, -74.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -156.1, -74.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -160.9, -79.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -160.9, -79.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -158.9, -77.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -158.9, -77.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -156.8, -63.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -156.8, -63.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -158.9, -81.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -158.9, -81.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -158.9, -71.7 , 0 );

setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 11.5, 11.5 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 11.5, 11.5 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 334 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -18.5 );

--敵の動き4
setDisp( spep_0 + 492 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 648 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 492 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 540 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 618 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 492 + OFFSET_X, 1, 9.1, -148.6 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 9.1, -148.6 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 5.4, -115 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 5.4, -115 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 1.8, -82.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 1.8, -82.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -1.7, -51.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -1.7, -51.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -5, -20.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -5, -20.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -8.2, 8.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -8.2, 8.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -11.3, 36.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -11.3, 36.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -14.2, 63.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -14.2, 63.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -17.1, 88.8 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -17.1, 88.8 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -18.9, 100.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -18.9, 100.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -20.3, 111.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -20.3, 111.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -21.4, 119.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -21.4, 119.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -22.4, 126.2 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -22.4, 126.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -23, 131.1 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -23, 131.1 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -23, 132.9 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -23, 132.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -23, 134.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -23, 134.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -23, 136.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -23, 136.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -23, 138.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -23, 138.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -23, 140.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -23, 140.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -23, 142.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -23, 142.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -23, 144 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -23, 144 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -23, 145.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -23, 145.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -23, 147.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -23, 147.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -23, 149.5 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -23, 149.5 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -142.3, 215.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -142.3, 215.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -95.5, 199.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -95.5, 199.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -53.7, 179.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -53.7, 179.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -8.5, 163.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -8.5, 163.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 31.7, 150.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 31.7, 150.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 75.3, 134.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 75.3, 134.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 118.8, 118.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 118.8, 118.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 162.3, 102.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 162.3, 102.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 207.5, 86 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 207.5, 86 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 205.2, 91.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 205.2, 91.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 209.4, 85 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 209.4, 85 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 208.8, 88.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 208.8, 88.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 213, 87.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 213, 87.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 219, 77.6 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 219, 77.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 219.9, 81.3 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 219.9, 81.3 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 224.2, 75 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 224.2, 75 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 230.1, 76.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 230.1, 76.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 229.5, 73.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 229.5, 73.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 232.1, 72.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 232.1, 72.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 236.4, 77.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 236.4, 77.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 239, 73.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 239, 73.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 240, 68.6 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 240, 68.6 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 242.6, 67.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 242.6, 67.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 246.9, 74.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 246.9, 74.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 247.8, 72.8 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 247.8, 72.8 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 250.5, 73.1 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 250.5, 73.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 249.8, 75.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 249.8, 75.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 252.4, 70.4 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 252.4, 70.4 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 253.4, 72.4 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 253.4, 72.4 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 275.8, 74.3 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 275.8, 74.3 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 273.5, 69.7 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 273.5, 69.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 266.2, 55.2 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 266.2, 55.2 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 270.5, 62.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 270.5, 62.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 273.1, 57.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 273.1, 57.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 275.7, 61 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 275.7, 61 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 278.3, 56.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 278.3, 56.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 281, 63.3 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 281, 63.3 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 281.9, 60.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 281.9, 60.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 287.9, 55.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 287.9, 55.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -152.9, 255.9 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -152.9, 255.9 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -97.1, 206.9 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -97.1, 206.9 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -51.2, 164.1 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -51.2, 164.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -3.4, 122.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -3.4, 122.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 38, 83.8 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 38, 83.8 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 79.5, 49.5 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 79.5, 49.5 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 114.6, 14.8 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 114.6, 14.8 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 148.1, -15.5 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 148.1, -15.5 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 178.6, -42.9 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 178.6, -42.9 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 205.9, -67.5 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 205.9, -67.5 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 230, -89.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 230, -89.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 251, -108.2 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 251, -108.2 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 262.3, -118.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 262.3, -118.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 272.4, -127.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 272.4, -127.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 281.4, -135.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 281.4, -135.7 , 0 );

setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_0 + 492 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 58 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 58 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 60 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 60 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 60.5 );

-- ** 音 ** --
--炎あふれる
SE001 = playSeVer2( spep_0 + 0, 1173, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
setPitch( spep_0 + 0, SE001, -200 );
setTimeStretch( SE001, 0.87, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 168, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 14, 1268, "",spep_0 + 174, 68, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 207 );
SE005 = playSeVer2( spep_0 + 38, 1281, "",spep_0 + 146, 32, 16, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 35 );
setPitch( spep_0 + 38, SE005, 400 );
setTimeStretch( SE005, 1.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 43 );

--オーラ
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 22 );
setPitch( spep_0 + 42, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE008 = playSeVer2( spep_0 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 35 );
setPitch( spep_0 + 56, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 56, SE008 );
SE009 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 45 );
setPitch( spep_0 + 72, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 50 );
setPitch( spep_0 + 86, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 86, SE010 );
SE011 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE011, 50 );
setPitch( spep_0 + 98, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE012 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 50 );
setPitch( spep_0 + 114, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 114, SE012 );
SE013 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 50 );
setPitch( spep_0 + 128, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE014, 50 );
setPitch( spep_0 + 140, SE014, 200 );
setTimeStretch( SE014, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 140, SE014 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
--向かってくる
SE015 = playSeVer2( spep_0 + 142, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 142, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE016, 65 );
SE017 = playSeVer2( spep_0 + 142, 1117, "",spep_0 + 204, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 148, 1277, "",spep_0 + 208, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 148, SE018, 150 );

--殴る
SE019 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 178, 1414, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 178, 1187, "",spep_0 + 270, 0, 10, -1);

--瞬間移動
SE022 = playSeVer2( spep_0 + 196, 1245, "",spep_0 + 228, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 196, SE022, 77 );
SE023 = playSeVer2( spep_0 + 210, 1245, "",spep_0 + 282, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 210, SE023, 58 );

--気弾溜め
SE024 = playSeVer2( spep_0 + 234, 1393, "",spep_0 + 288, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 234, SE024, 251 );
setPitch( spep_0 + 234, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE025 = playSeVer2( spep_0 + 234, 1020, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 234, 1282, "",spep_0 + 306, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 234, SE026, 100 );
setPitch( spep_0 + 234, SE026, -800 );
setTimeStretch( SE026, 0.47, 30, 4 );

--気弾発射
SE027 = playSeVer2( spep_0 + 268, 1047, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 76 );
SE028 = playSeVer2( spep_0 + 268, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 152 );
SE029 = playSeVer2( spep_0 + 268, 1424, "",spep_0 + 336, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 268, SE029, 120 );

--爆発
SE030 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE030, 76 );

--画面遷移
SE031 = playSeVer2( spep_0 + 308, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE031, 66 );

--気弾包囲網発射する
SE032 = playSeVer2( spep_0 + 326, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 326, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE033, 91 );
SE034 = playSeVer2( spep_0 + 326, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE034, 81 );
SE035 = playSeVer2( spep_0 + 334, 1312, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 334, 1409, "",spep_0 + 596, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 334, SE036, 260 );

--敵吹き飛ぶ
SE038 = playSeVer2( spep_0 + 404, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE038, 72 );
SE039 = playSeVer2( spep_0 + 404, 1121, "",spep_0 + 536, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 404, SE039, 65 );

--追い気弾発射
SE040 = playSeVer2( spep_0 + 460, 1117, "",spep_0 + 504, 0, 18, -1);
SE041 = playSeVer2( spep_0 + 460, 1402, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 472, 1405, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 472, 1402, "", 0, 0, 0, -1);

--敵飛んでいく２
SE037 = playSeVer2( spep_0 + 468, 1278, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE037, 80 );
setStartTimeMs( SE037,  1133 );
setPitch( spep_0 + 468, SE037, 100 );
setTimeStretch( SE037, 1.07, 30, 4 );
SE044 = playSeVer2( spep_0 + 474, 1183, "", 0, 0, 0, -1);

--連続爆発
SE045 = playSeVer2( spep_0 + 512, 1002, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 528, 1025, "", 0, 0, 0, -1);

--ブロリー翻る
SE048 = playSeVer2( spep_0 + 540, 1011, "",spep_0 + 600, 12, 14, -1);
setStartTimeMs( SE048,  133 );
SE049 = playSeVer2( spep_0 + 542, 1004, "", 0, 0, 0, -1);

--追い気弾発射２
SE050 = playSeVer2( spep_0 + 576, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE050, 133 );
SE051 = playSeVer2( spep_0 + 578, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE051, 72 );
SE052 = playSeVer2( spep_0 + 596, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE052, 87 );

--敵飛んでいく３
SE046 = playSeVer2( spep_0 + 602, 1121, "",spep_0 + 676, 12, 12, -1);
setSeVolumeByWorkId( spep_0 + 602, SE046, 58 );
setStartTimeMs( SE046,  1300 );
SE053 = playSeVer2( spep_0 + 608, 1182, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 608, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE054, 135 );
SE055 = playSeVer2( spep_0 + 608, 63, "",spep_0 + 686, 0, 22, -1);

--爆発
SE056 = playSeVer2( spep_0 + 650, 1159, "",spep_0 + 728, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 650, SE056, 63 );

--ブロリー向かってくる
SE057 = playSeVer2( spep_0 + 678, 1167, "",spep_0 + 726, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 678, SE057, 52 );
setPitch( spep_0 + 678, SE057, -500 );
setTimeStretch( SE057, 0.67, 30, 4 );
SE058 = playSeVer2( spep_0 + 678, 1182, "",spep_0 + 724, 0, 8, -1);
SE059 = playSeVer2( spep_0 + 678, 9, "",spep_0 + 728, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --714f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--両手気弾溜める
SE061 = playSeVer2( spep_1 + 84, 1278, "",spep_1 + 186, 0, 42, -1);
SE062 = playSeVer2( spep_1 + 84, 1019, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気タメ～ラスト
-------------------------------------------------
MAX_FRAME_2 = 352;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気タメ～ラスト：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気タメ～ラスト：奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 179 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, -87.4, 17.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -87.4, 17.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -68.8, 14.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -68.8, 14.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -39.4, 9.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -39.4, 9.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -22.3, 5.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -22.3, 5.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -4.3, 0.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -4.3, 0.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 11.4, -3.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 11.4, -3.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 31.2, -9.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 31.2, -9.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 48.7, -8.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 48.7, -8.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 62.1, -10.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 62.1, -10.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 68.2, -11 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 68.2, -11 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 78.5, -12.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 78.5, -12.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 91.4, -14.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 91.4, -14.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 105.2, -14.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 105.2, -14.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 111.6, -18.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 111.6, -18.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 120.6, -19.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 120.6, -19.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 128.8, -20.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 128.8, -20.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 136.3, -22.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 143.1, -23.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 143.1, -23.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 40.6, -7.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 40.6, -7.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 38.4, -10.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 38.4, -10.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 19.6, 3.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 19.6, 3.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 19, -24.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 19, -24.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 26.7, 5.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 26.7, 5.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 36, -6.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 36, -6.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 33.7, -4.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 33.7, -4.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 15, -4.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 15, -4.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 1.2, -20.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 1.2, -20.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 31.9, -4.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 31.9, -4.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 3.3, 7.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 3.3, 7.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 14.2, -7.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 14.2, -7.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 13.6, 11.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 13.6, 11.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -1.8, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -1.8, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 10.7, 5.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 10.7, 5.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 10.1, 9.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 10.1, 9.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -3, 12.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -3, 12.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -1.5, 5.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -1.5, 5.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -10.3, 5.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -10.3, 5.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -0.7, 16.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -0.7, 16.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 0.8, 2.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 0.8, 2.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -18.3, 5.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -18.3, 5.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 41.7, 3.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 41.7, 3.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 180.3, -48.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 180.3, -48.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 174.1, -55 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 174.1, -55 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 22.5 );

-- ** 音 ** --
--両手気弾溜める
SE063 = playSeVer2( spep_2 + 2, 1191, "",spep_2 + 62, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 2, SE063, 152 );
SE064 = playSeVer2( spep_2 + 2, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE064, 69 );
SE065 = playSeVer2( spep_2 + 2, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE065, 155 );
SE066 = playSeVer2( spep_2 + 2, 1334, "",spep_2 + 66, 0, 14, -1);

--向かっていく
SE067 = playSeVer2( spep_2 + 48, 1182, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 48, 1277, "", 0, 0, 0, -1);
setPitch( spep_2 + 48, SE068, -200 );
setTimeStretch( SE068, 0.87, 30, 4 );
SE069 = playSeVer2( spep_2 + 48, 1183, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 48, 1314, "",spep_2 + 240, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE070, 77 );

--振りかぶる
SE071 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 136, 0, 18, -1);

--敵ヒット
SE072 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 122, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE073, 92 );
SE074 = playSeVer2( spep_2 + 122, 1359, "", 0, 0, 0, -1);

--ブロリー飛び去る
SE075 = playSeVer2( spep_2 + 166, 1182, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_2 + 166, 1117, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 172, 1277, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 184, 1121, "",spep_2 + 262, 0, 40, -1);

--爆発
SE079 = playSeVer2( spep_2 + 224, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE079, 295 );
setStartTimeMs( SE079,  300 );
SE080 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE080, 69 );
SE081 = playSeVer2( spep_2 + 236, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE081, 81 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 236); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 352f


end
