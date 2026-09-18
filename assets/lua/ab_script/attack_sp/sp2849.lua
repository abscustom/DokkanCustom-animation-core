--1031080:UR_孫悟空(少年期)_必殺技：ジャン拳
--sp_effect_b1_00321
--sp2849

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163677;  -- カード前 ef_001
SP_01b = 163679;  -- カード前 背面 ef_001b
SP_02 = 163680;  -- カード後 ef_002
SP_02b = 163682;  -- カード前 背面 ef_002b

--エフェクト(敵)
SP_01r = 163678;  -- カード前 敵側 ef_001r
SP_02r = 163681;  -- カード前 敵側ef_002r


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
ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 220;

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

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前・背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 124;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 195.7, -27.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 244, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 12, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1007, "",spep_0 + 34, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 71 );

--構える２
SE004 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE005, 62 );
SE006 = playSeVer2( spep_0 + 76, 1013, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 104, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --220F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 316;

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

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後・背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 186 + OFFSET_X, 1, -415.4, -439.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -415.4, -439.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -332.6, -406.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -332.6, -406.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -249.7, -374.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -249.7, -374.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -193.3, -354.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -193.3, -354.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -136.8, -334.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -136.8, -334.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -80.4, -314.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -80.4, -314.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -62.6, -306.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -62.6, -306.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -44.8, -298.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -44.8, -298.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -27.1, -290.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -27.1, -290.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -9.3, -282.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -9.3, -282.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 8.4, -274.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 8.4, -274.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 26.1, -266.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 26.1, -266.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 43.8, -258.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 43.8, -258.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 61.4, -250 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 61.4, -250 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 79, -241.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 79, -241.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 96.6, -233.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 96.6, -233.8 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 57 );

-- ** 音 ** --

--ぐー
SE011 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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

--ぐー
SE013 = playSeVer2( spep_2 + 34, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  167 );
SE014 = playSeVer2( spep_2 + 34, 1187, "", 0, 0, 0, -1);

--ちょき
SE015 = playSeVer2( spep_2 + 60, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 96, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 96, 1153, "", 0, 0, 0, -1);

--ぱー
SE018 = playSeVer2( spep_2 + 116, 1116, "",spep_2 + 152, 0, 14, -1);
SE019 = playSeVer2( spep_2 + 152, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 152, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 232, 0, 22, -1);

--岩激突
SE022 = playSeVer2( spep_2 + 208, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); --316F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 220;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カード前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前・背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 124;

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

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 195.7, -27.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 195.7, -27.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 244, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 12, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1007, "",spep_0 + 34, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 71 );

--構える２
SE004 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE005, 62 );
SE006 = playSeVer2( spep_0 + 76, 1013, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 104, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --220F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 316;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後・背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 186 + OFFSET_X, 1, -415.4, -439.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -415.4, -439.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -332.6, -406.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -332.6, -406.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -249.7, -374.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -249.7, -374.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -193.3, -354.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -193.3, -354.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -136.8, -334.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -136.8, -334.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -80.4, -314.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -80.4, -314.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -62.6, -306.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -62.6, -306.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -44.8, -298.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -44.8, -298.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -27.1, -290.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -27.1, -290.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -9.3, -282.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -9.3, -282.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 8.4, -274.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 8.4, -274.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 26.1, -266.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 26.1, -266.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 43.8, -258.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 43.8, -258.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 61.4, -250 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 61.4, -250 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 79, -241.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 79, -241.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 96.6, -233.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 96.6, -233.8 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 57 );

-- ** 音 ** --

--ぐー
SE011 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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

--ぐー
SE013 = playSeVer2( spep_2 + 34, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  167 );
SE014 = playSeVer2( spep_2 + 34, 1187, "", 0, 0, 0, -1);

--ちょき
SE015 = playSeVer2( spep_2 + 60, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 96, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 96, 1153, "", 0, 0, 0, -1);

--ぱー
SE018 = playSeVer2( spep_2 + 116, 1116, "",spep_2 + 152, 0, 14, -1);
SE019 = playSeVer2( spep_2 + 152, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 152, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 232, 0, 22, -1);

--岩激突
SE022 = playSeVer2( spep_2 + 208, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); --316F


end
