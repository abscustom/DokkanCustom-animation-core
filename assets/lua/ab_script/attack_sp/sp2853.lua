--1030970:LR_パイクーハン_超必殺技：ハイパートルネード
--sp_effect_b4_00379
--sp2853

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163710;  --ef_001 開幕～笑うまで
--SP_01b = 163711;  --ef_001b 開幕～笑うまで
SP_02  = 163712;  --ef_002 顔アップ～最後まで
--SP_02b = 163713;  --ef_002b 顔アップ～最後まで

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.7);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕～笑うまで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～笑うまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～笑うまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 186.5, 154.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 185.7, 153.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 185.7, 153.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 184.9, 152.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 184.9, 152.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 184, 152.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 184, 152.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 183.2, 151.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 183.2, 151.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 182.4, 151.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 182.4, 151.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 181.6, 150.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 181.6, 150.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 180.8, 149.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 180.8, 149.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 180, 149.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 180, 149.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 179.2, 148.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 179.2, 148.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 178.3, 148 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 178.3, 148 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 177.5, 147.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 177.5, 147.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 176.7, 146.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 176.7, 146.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 175.9, 146.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 175.9, 146.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 175.1, 145.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 175.1, 145.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 174.3, 144.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 174.3, 144.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 173.4, 144.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 173.4, 144.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 172.6, 143.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 172.6, 143.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 171.8, 143.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 171.8, 143.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 171, 142.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 171, 142.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 170.2, 141.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 170.2, 141.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 169.4, 141.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 169.4, 141.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 168.6, 140.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 168.6, 140.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 167.7, 140 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 167.7, 140 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 166.9, 139.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 166.9, 139.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 166.1, 138.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 166.1, 138.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 165.3, 138.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 165.3, 138.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 164.5, 137.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 164.5, 137.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 163.7, 137 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 163.7, 137 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 162.8, 136.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 162.8, 136.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_0 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--服なびく
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1331, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 71 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 204, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 172f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 顔アップ～最後まで
-------------------------------------------------
MAX_FRAME_2 = 796;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 顔アップ～最後まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 顔アップ～最後まで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 368 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 250 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 250 + OFFSET_X, 1, 137.9, -90.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 137.9, -90.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 139.9, -95.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 139.9, -95.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 136.1, -93.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 136.1, -93.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 136.2, -91.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 136.2, -91.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 140.2, -94.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 140.2, -94.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 140.3, -90.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 140.3, -90.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 138.4, -92.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 138.4, -92.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 136.6, -90 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 136.6, -90 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 138.6, -93.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 138.6, -93.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 140.7, -91.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 140.7, -91.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 136.9, -89.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 136.9, -89.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 138.9, -86.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 138.9, -86.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 140.9, -92.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 140.9, -92.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 137.1, -88.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 137.1, -88.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 139.2, -89.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 139.2, -89.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 141.2, -91.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 141.2, -91.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 141.3, -87.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 141.3, -87.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 137.5, -87.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 137.5, -87.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 141.5, -90.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 141.5, -90.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 139.7, -86.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 139.7, -86.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 137.8, -90.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 137.8, -90.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 141.8, -89.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 141.8, -89.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 140, -87.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 140, -87.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 140.1, -87.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 140.1, -87.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 140.2, -87 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 140.2, -87 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 140.3, -86.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 140.3, -86.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 140.4, -86.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 140.4, -86.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 140.5, -90.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 140.5, -90.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 138.7, -83.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 138.7, -83.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 142.7, -83.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 142.7, -83.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 138.9, -87.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 138.9, -87.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 139, -81.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 139, -81.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 143, -82.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 143, -82.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 139.2, -84.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 139.2, -84.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 143.2, -86.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 143.2, -86.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 139.4, -81.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 139.4, -81.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 137.6, -83.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 137.6, -83.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 143.5, -85.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 143.5, -85.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 137.8, -83 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 137.8, -83 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 139.9, -80.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 139.9, -80.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 140, -80.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 140, -80.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 144, -84.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 144, -84.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 140.2, -79.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 140.2, -79.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 140.3, -81.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 140.3, -81.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 140.4, -79.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 140.4, -79.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 144.4, -82.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 144.4, -82.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 142.6, -80.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 142.6, -80.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 142.7, -78.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 142.7, -78.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 140.9, -80.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 140.9, -80.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 144.9, -81.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 144.9, -81.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 212.2, -834.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 212.2, -834.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 210.3, -811.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 210.3, -811.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 212.2, -742.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 212.2, -742.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 214.2, -634.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 214.2, -634.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 210.3, -474.3 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 210.3, -474.3 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 214.2, -478.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 214.2, -478.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 214.2, -474.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 214.2, -474.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 210.3, -474.3 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 210.3, -474.3 , 0 );

setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.45, 1.45 );

setRotateKey( spep_2 + 250 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 372 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, -146.7, -174.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -146.7, -174.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -322.8, -75.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -322.8, -75.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -463.3, -2.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -463.3, -2.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -564.2, 53.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -564.2, 53.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -621.7, 84.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -621.7, 84.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -641.5, 95.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -641.5, 95.1 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.86, 1.86 );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -5.2 );


--敵の動き3
setDisp( spep_2 + 528 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 528 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 528 + OFFSET_X, 1, -22.5, -180.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -22.5, -180.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -11.3, -168.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -11.3, -168.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -2, -162.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -2, -162.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 11.2, -154.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 11.2, -154.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 18.6, -147.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 18.6, -147.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 31.8, -139.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 31.8, -139.4 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 45, -133.5 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 45, -133.5 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 56.3, -121.9 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 56.3, -121.9 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 63.7, -116 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 63.7, -116 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 78.8, -110.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 78.8, -110.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 86.2, -100.5 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 86.2, -100.5 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 101.4, -94.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 101.4, -94.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 114.6, -82.9 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 114.6, -82.9 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 122, -81 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 122, -81 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 131.4, -69.3 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 131.4, -69.3 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 142.7, -59.6 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 142.7, -59.6 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 157.1, -56.3 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 157.1, -56.3 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 182.5, -99.4 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 182.5, -99.4 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 180.6, -199.4 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 180.6, -199.4 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 479.8, -461.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 479.8, -461.2 , 0 );

setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_2 + 528 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -12.5 );

setBlendColor( spep_2 + 554 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 556 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 558 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 670 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 590 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 594 + OFFSET_X, 1, 2 );
changeAnime( spep_2 + 598 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 614 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 618 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 622 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 626 + OFFSET_X, 1, 2 );
changeAnime( spep_2 + 630 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 642 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 646 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 650 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 654 + OFFSET_X, 1, 2 );
changeAnime( spep_2 + 658 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, -133.5, -303.3 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -133.5, -303.3 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -137.4, -305.8 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -137.4, -305.8 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -25.3, -241.3 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -25.3, -241.3 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -27.3, -241.9 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -27.3, -241.9 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 144.2, -248.7 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 144.2, -248.7 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 140.3, -243.3 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 140.3, -243.3 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 161.7, -228.4 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 161.7, -228.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 159.8, -225.1 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 159.8, -225.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 140.1, -182.6 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 140.1, -182.6 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 138.2, -177.3 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 138.2, -177.3 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 15.5, -152.7 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 15.5, -152.7 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 11.6, -151.3 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 11.6, -151.3 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -121.9, -181.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -121.9, -181.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -121.9, -176.1 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -121.9, -176.1 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -197, -121.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -197, -121.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -191.1, -121.7 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -191.1, -121.7 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -139.6, -55.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -139.6, -55.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -135.7, -58.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -135.7, -58.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 23.9, -23.6 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 23.9, -23.6 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 25.8, -20.2 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 25.8, -20.2 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 177.3, 17.5 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 177.3, 17.5 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 177.3, 18.9 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 177.3, 18.9 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 198.5, 24.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 198.5, 24.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 198.5, 26.2 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 198.5, 26.2 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 157.8, 129.9 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 157.8, 129.9 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 155.8, 133.2 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 155.8, 133.2 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 20.4, 116.3 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 20.4, 116.3 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 16.5, 117.7 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 16.5, 117.7 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -189.4, 155.4 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -189.4, 155.4 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -191.3, 162.7 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -191.3, 162.7 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -134.7, 296.6 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -134.7, 296.6 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -136.7, 301.9 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -136.7, 301.9 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 33.7, 317.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 33.7, 317.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 31.7, 322.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 31.7, 322.5 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 138.1, 425.2 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 138.1, 425.2 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 142, 422.7 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 142, 422.7 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 240.1, 440.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 240.1, 440.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 244, 438.3 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 244, 438.3 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 157.8, 559.6 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 157.8, 559.6 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 155.8, 561 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 155.8, 561 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 23.8, 581.3 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 23.8, 581.3 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 25.8, 578.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 25.8, 578.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -172.3, 583.7 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -172.3, 583.7 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -174.2, 587 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -174.2, 587 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 2.05, 2.05 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 613 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, 57.9 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, 57.9 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 57.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 57.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 665 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 666 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 670 + OFFSET_X, 1, -9.1 );

-- ** 音 ** --
--回転始める
SE007 = playSeVer2( spep_2 + 10, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE007, 69 );
SE008 = playSeVer2( spep_2 + 12, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE008, 68 );
SE009 = playSeVer2( spep_2 + 14, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE009, 81 );
SE010 = playSeVer2( spep_2 + 14, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 58 );
SE011 = playSeVer2( spep_2 + 34, 1203, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE011, 84 );

--竜巻になる
SE012 = playSeVer2( spep_2 + 124, 1124, "",spep_2 + 384, 52, 20, -1);
SE013 = playSeVer2( spep_2 + 114, 1356, "", 0, 54, 0, -1);
SE014 = playSeVer2( spep_2 + 126, 1388, "", 0, 0, 0, -1);
setPitch( spep_2 + 126, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--竜巻向かっていく
SE015 = playSeVer2( spep_2 + 236, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE015, 87 );
SE016 = playSeVer2( spep_2 + 236, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 236, 1326, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE017, 76 );
SE018 = playSeVer2( spep_2 + 236, 1002, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 332; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
--敵ヒット
SE019 = playSeVer2( spep_2 + 332, 1258, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 354, 1188, "", 0, 0, 0, -1);

--巻き上がる
SE021 = playSeVer2( spep_2 + 438, 1067, "", 0, 0, 0, -1);

--向かってくる
SE022 = playSeVer2( spep_2 + 508, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE022, 73 );
SE023 = playSeVer2( spep_2 + 508, 1116, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 508, 1258, "",spep_2 + 652, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 508, SE024, 71 );

--切り付けられる
SE025 = playSeVer2( spep_2 + 570, 1178, "",spep_2 + 620, 0, 16, -1);
SE027 = playSeVer2( spep_2 + 578, 1032, "",spep_2 + 612, 0, 6, -1);
SE029 = playSeVer2( spep_2 + 594, 1178, "",spep_2 + 640, 0, 10, -1);
SE030 = playSeVer2( spep_2 + 614, 1032, "",spep_2 + 648, 0, 6, -1);
SE031 = playSeVer2( spep_2 + 630, 1178, "",spep_2 + 676, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 644, 1032, "",spep_2 + 678, 0, 6, -1);

--地響き
SE026 = playSeVer2( spep_2 + 576, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE026, 86 );

--回転する
SE028 = playSeVer2( spep_2 + 586, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 586, SE028, 71 );

--遠景になる
SE033 = playSeVer2( spep_2 + 662, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 662, SE033, 117 );
SE034 = playSeVer2( spep_2 + 662, 1124, "",spep_2 + 932, 0, 20, -1);
SE035 = playSeVer2( spep_2 + 664, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 676); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 796f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕～笑うまで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～笑うまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～笑うまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -186.5, 154.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -185.7, 153.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -185.7, 153.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -184.9, 152.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -184.9, 152.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -184, 152.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -184, 152.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -183.2, 151.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -183.2, 151.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -182.4, 151.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -182.4, 151.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -181.6, 150.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -181.6, 150.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -180.8, 149.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -180.8, 149.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -180, 149.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -180, 149.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -179.2, 148.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -179.2, 148.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -178.3, 148 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -178.3, 148 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -177.5, 147.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -177.5, 147.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -176.7, 146.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -176.7, 146.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -175.9, 146.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -175.9, 146.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -175.1, 145.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -175.1, 145.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -174.3, 144.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -174.3, 144.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -173.4, 144.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -173.4, 144.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -172.6, 143.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -172.6, 143.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -171.8, 143.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -171.8, 143.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -171, 142.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -171, 142.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -170.2, 141.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -170.2, 141.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -169.4, 141.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -169.4, 141.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -168.6, 140.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -168.6, 140.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -167.7, 140 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -167.7, 140 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -166.9, 139.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -166.9, 139.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -166.1, 138.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -166.1, 138.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -165.3, 138.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -165.3, 138.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -164.5, 137.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -164.5, 137.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -163.7, 137 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -163.7, 137 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -162.8, 136.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -162.8, 136.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_0 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--服なびく
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1331, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 71 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 204, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 172f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 顔アップ～最後まで
-------------------------------------------------
MAX_FRAME_2 = 796;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 顔アップ～最後まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 顔アップ～最後まで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 368 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 250 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 18 );

setMoveKey( spep_2 + 250 + OFFSET_X, 1, -137.9, -90.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -137.9, -90.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -139.9, -95.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -139.9, -95.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -136.1, -93.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -136.1, -93.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -136.2, -91.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -136.2, -91.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -140.2, -94.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -140.2, -94.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -140.3, -90.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -140.3, -90.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -138.4, -92.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -138.4, -92.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -136.6, -90 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -136.6, -90 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -138.6, -93.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -138.6, -93.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -140.7, -91.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -140.7, -91.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -136.9, -89.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -136.9, -89.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -138.9, -86.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -138.9, -86.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -140.9, -92.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -140.9, -92.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -137.1, -88.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -137.1, -88.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -139.2, -89.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -139.2, -89.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -141.2, -91.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -141.2, -91.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -141.3, -87.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -141.3, -87.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -137.5, -87.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -137.5, -87.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -141.5, -90.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -141.5, -90.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -139.7, -86.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -139.7, -86.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -137.8, -90.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -137.8, -90.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -141.8, -89.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -141.8, -89.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -140, -87.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -140, -87.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -140.1, -87.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -140.1, -87.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -140.2, -87 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -140.2, -87 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -140.3, -86.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -140.3, -86.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -140.4, -86.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -140.4, -86.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -140.5, -90.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -140.5, -90.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -138.7, -83.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -138.7, -83.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -142.7, -83.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -142.7, -83.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -138.9, -87.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -138.9, -87.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -139, -81.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -139, -81.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -143, -82.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -143, -82.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -139.2, -84.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -139.2, -84.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -143.2, -86.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -143.2, -86.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -139.4, -81.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -139.4, -81.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -137.6, -83.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -137.6, -83.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -143.5, -85.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -143.5, -85.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -137.8, -83 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -137.8, -83 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -139.9, -80.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -139.9, -80.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -140, -80.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -140, -80.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -144, -84.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -144, -84.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -140.2, -79.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -140.2, -79.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -140.3, -81.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -140.3, -81.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -140.4, -79.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -140.4, -79.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -144.4, -82.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -144.4, -82.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -142.6, -80.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -142.6, -80.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -142.7, -78.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -142.7, -78.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -140.9, -80.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -140.9, -80.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -144.9, -81.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -144.9, -81.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -212.2, -834.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -212.2, -834.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -210.3, -811.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -210.3, -811.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -212.2, -742.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -212.2, -742.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -214.2, -634.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -214.2, -634.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -210.3, -474.3 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -210.3, -474.3 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -214.2, -478.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -214.2, -478.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -214.2, -474.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -214.2, -474.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -210.3, -474.3 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -210.3, -474.3 , 0 );

setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.45, 1.45 );

setRotateKey( spep_2 + 250 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 372 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, 146.7, -174.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 146.7, -174.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 322.8, -75.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 322.8, -75.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 463.3, -2.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 463.3, -2.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 564.2, 53.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 564.2, 53.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 621.7, 84.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 621.7, 84.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 641.5, 95.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 641.5, 95.1 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.86, 1.86 );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 5.2 );


--敵の動き3
setDisp( spep_2 + 528 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 528 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 528 + OFFSET_X, 1, 22.5, -180.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 22.5, -180.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 11.3, -168.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 11.3, -168.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 2, -162.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 2, -162.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -11.2, -154.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -11.2, -154.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -18.6, -147.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -18.6, -147.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -31.8, -139.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -31.8, -139.4 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -45, -133.5 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -45, -133.5 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -56.3, -121.9 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -56.3, -121.9 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -63.7, -116 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -63.7, -116 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -78.8, -110.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -78.8, -110.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -86.2, -100.5 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -86.2, -100.5 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -101.4, -94.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -101.4, -94.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -114.6, -82.9 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -114.6, -82.9 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -122, -81 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -122, -81 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -131.4, -69.3 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -131.4, -69.3 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -142.7, -59.6 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -142.7, -59.6 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -157.1, -56.3 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -157.1, -56.3 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -182.5, -99.4 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -182.5, -99.4 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -180.6, -199.4 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -180.6, -199.4 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -479.8, -461.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -479.8, -461.2 , 0 );

setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_2 + 528 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, 12.5 );

setBlendColor( spep_2 + 554 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 556 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 558 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 670 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 590 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 594 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 598 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 614 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 618 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 622 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 626 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 630 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 642 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 646 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 650 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 654 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 658 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, 133.5, -303.3 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 133.5, -303.3 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 137.4, -305.8 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 137.4, -305.8 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 25.3, -241.3 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 25.3, -241.3 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 27.3, -241.9 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 27.3, -241.9 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -144.2, -248.7 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -144.2, -248.7 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -140.3, -243.3 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -140.3, -243.3 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -161.7, -228.4 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -161.7, -228.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -159.8, -225.1 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -159.8, -225.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -140.1, -182.6 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -140.1, -182.6 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -138.2, -177.3 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -138.2, -177.3 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -15.5, -152.7 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -15.5, -152.7 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -11.6, -151.3 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -11.6, -151.3 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 121.9, -181.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 121.9, -181.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 121.9, -176.1 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 121.9, -176.1 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 197, -121.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 197, -121.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 191.1, -121.7 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 191.1, -121.7 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 139.6, -55.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 139.6, -55.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 135.7, -58.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 135.7, -58.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -23.9, -23.6 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -23.9, -23.6 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -25.8, -20.2 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -25.8, -20.2 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -177.3, 17.5 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -177.3, 17.5 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -177.3, 18.9 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -177.3, 18.9 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -198.5, 24.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -198.5, 24.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -198.5, 26.2 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -198.5, 26.2 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -157.8, 129.9 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -157.8, 129.9 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -155.8, 133.2 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -155.8, 133.2 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -20.4, 116.3 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -20.4, 116.3 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -16.5, 117.7 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -16.5, 117.7 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 189.4, 155.4 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 189.4, 155.4 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 191.3, 162.7 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 191.3, 162.7 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 134.7, 296.6 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 134.7, 296.6 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 136.7, 301.9 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 136.7, 301.9 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -33.7, 317.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -33.7, 317.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -31.7, 322.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -31.7, 322.5 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -138.1, 425.2 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -138.1, 425.2 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -142, 422.7 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -142, 422.7 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -240.1, 440.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -240.1, 440.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -244, 438.3 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -244, 438.3 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -157.8, 559.6 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -157.8, 559.6 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -155.8, 561 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -155.8, 561 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -23.8, 581.3 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -23.8, 581.3 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -25.8, 578.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -25.8, 578.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 172.3, 583.7 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 172.3, 583.7 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 174.2, 587 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 174.2, 587 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 2.05, 2.05 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 613 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 665 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 666 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 670 + OFFSET_X, 1, 9.1 );

-- ** 音 ** --
--回転始める
SE007 = playSeVer2( spep_2 + 10, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE007, 69 );
SE008 = playSeVer2( spep_2 + 12, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE008, 68 );
SE009 = playSeVer2( spep_2 + 14, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE009, 81 );
SE010 = playSeVer2( spep_2 + 14, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 58 );
SE011 = playSeVer2( spep_2 + 34, 1203, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE011, 84 );

--竜巻になる
SE012 = playSeVer2( spep_2 + 124, 1124, "",spep_2 + 384, 52, 20, -1);
SE013 = playSeVer2( spep_2 + 114, 1356, "", 0, 54, 0, -1);
SE014 = playSeVer2( spep_2 + 126, 1388, "", 0, 0, 0, -1);
setPitch( spep_2 + 126, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--竜巻向かっていく
SE015 = playSeVer2( spep_2 + 236, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE015, 87 );
SE016 = playSeVer2( spep_2 + 236, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 236, 1326, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE017, 76 );
SE018 = playSeVer2( spep_2 + 236, 1002, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 332; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
--敵ヒット
SE019 = playSeVer2( spep_2 + 332, 1258, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 354, 1188, "", 0, 0, 0, -1);

--巻き上がる
SE021 = playSeVer2( spep_2 + 438, 1067, "", 0, 0, 0, -1);

--向かってくる
SE022 = playSeVer2( spep_2 + 508, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE022, 73 );
SE023 = playSeVer2( spep_2 + 508, 1116, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 508, 1258, "",spep_2 + 652, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 508, SE024, 71 );

--切り付けられる
SE025 = playSeVer2( spep_2 + 570, 1178, "",spep_2 + 620, 0, 16, -1);
SE027 = playSeVer2( spep_2 + 578, 1032, "",spep_2 + 612, 0, 6, -1);
SE029 = playSeVer2( spep_2 + 594, 1178, "",spep_2 + 640, 0, 10, -1);
SE030 = playSeVer2( spep_2 + 614, 1032, "",spep_2 + 648, 0, 6, -1);
SE031 = playSeVer2( spep_2 + 630, 1178, "",spep_2 + 676, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 644, 1032, "",spep_2 + 678, 0, 6, -1);

--地響き
SE026 = playSeVer2( spep_2 + 576, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE026, 86 );

--回転する
SE028 = playSeVer2( spep_2 + 586, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 586, SE028, 71 );

--遠景になる
SE033 = playSeVer2( spep_2 + 662, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 662, SE033, 117 );
SE034 = playSeVer2( spep_2 + 662, 1124, "",spep_2 + 932, 0, 20, -1);
SE035 = playSeVer2( spep_2 + 664, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 676); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 796f -4


end
