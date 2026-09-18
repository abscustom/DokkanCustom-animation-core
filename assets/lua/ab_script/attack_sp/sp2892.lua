--1031640:UR_ランファン_必殺技：ウソ泣き作戦
--sp_effect_b1_00337
--sp2892

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164031; --うそ泣き〜パンチ ef_001
SP_01b = 164032; --うそ泣き〜パンチ ef_001b
SP_02  = 164035; --ダッシュ〜腕振り下ろし〜キック ef_002
SP_02b = 164036; --ダッシュ〜腕振り下ろし〜キック ef_002b

--エフェクト(敵)
SP_01r  = 164033; --うそ泣き〜パンチ ef_001r
SP_01br = 164034; --うそ泣き〜パンチ ef_001br
SP_02r  = 164037; --ダッシュ〜腕振り下ろし〜キック ef_002r
SP_02br = 164038; --ダッシュ〜腕振り下ろし〜キック ef_002br

--共通
SP_03  = 164045; --フィニッシュ ef_003b

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

adjustAttackerLabel( 0, 205);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- うそ泣き〜パンチ
-------------------------------------------------
MAX_FRAME_0 = 352;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- うそ泣き〜パンチ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- うそ泣き〜パンチ(ef_001b)
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
spep_x = spep_0 + 2;


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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 81.2, 65.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 81.2, 65.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 85.5, 67.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 85.5, 67.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 87.4, 68 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 87.4, 68 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 88.7, 68.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 88.7, 68.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 89.4, 68.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 89.4, 68.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 89.7, 68.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 89.7, 68.8 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0.5 );


--敵の動き2
setDisp( spep_0 + 316 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 316 + OFFSET_X, 1, -87.9, -150.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -87.9, -150.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 28.1, -85.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 28.1, -85.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 325.2, 24.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 325.2, 24.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 124.3, 7.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 124.3, 7.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 145.2, 25.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 145.2, 25.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 352.5, 72 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 352.5, 72 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 441.2, 75.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 441.2, 75.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 463.5, 51.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 463.5, 51.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 560.8, 54 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 560.8, 54 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 592.9, 40.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 592.9, 40.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 659.2, 34.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 659.2, 34.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 726.5, 28.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 726.5, 28.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 794.8, 23 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 794.8, 23 , 0 );

setScaleKey( spep_0 + 316 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.84, 2.84 );

setRotateKey( spep_0 + 316 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 10 );


-- ** 音 ** --
--嘘泣き
SE001 = playSeVer2( spep_0 + 0, 1280, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1280, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 54, 1280, "", 0, 0, 0, -1);

--敵驚く
SE005 = playSeVer2( spep_0 + 98, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 79 );

--肩動く
SE006 = playSeVer2( spep_0 + 112, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 158, 4, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 214, 4, "", 0, 0, 0, -1);

--チラ
SE009 = playSeVer2( spep_0 + 240, 37, "",spep_0 + 264, 0, 10, -1);

--カットイン
SE010 = playSeVer2( spep_0 + 268, 22, "",spep_0 + 326, 0, 40, -1);
SE011 = playSeVer2( spep_0 + 268, 1042, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 294; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
-- ** 音 ** --
--殴り飛ばす
SE012 = playSeVer2( spep_0 + 290, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE012, 164 );
SE013 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 312, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 352f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--走ってくる
SE016 = playSeVer2( spep_1 + 84, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 84, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE017, 168 );


-------------------------------------------------
-- ダッシュ〜腕振り下ろし〜キック
-------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ダッシュ〜腕振り下ろし〜キック(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ダッシュ〜腕振り下ろし〜キック(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 928.6, -829.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 928.6, -829.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 806.4, -774.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 806.4, -774.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 694, -713.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 694, -713.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 591.5, -647.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 591.5, -647.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 498.9, -576.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 498.9, -576.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 416.2, -500.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 416.2, -500.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 343.5, -419.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 343.5, -419.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 280.6, -333.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 280.6, -333.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 227.6, -241.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 227.6, -241.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 13.6, -184.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 13.6, -184.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 27.4, -202.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 27.4, -202.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 27.4, -180.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 27.4, -180.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 44, -197.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 44, -197.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 41.3, -175.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 41.3, -175.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 54.4, -182.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 54.4, -182.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 55.1, -171.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 55.1, -171.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 62, -169.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 62, -169.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 68.9, -167 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 68.9, -167 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 75.8, -164.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 75.8, -164.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 82.8, -162.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 82.8, -162.7 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 12.91, 12.91 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 12.91, 12.91 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 7.85, 7.85 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 7.85, 7.85 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.81, 3.81 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -14 );


--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 170 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 154 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, 284.8, -594.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 284.8, -594.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 523.3, -910.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 523.3, -910.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 471.6, -777.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 471.6, -777.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 680.8, -1026.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 680.8, -1026.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 658.4, -959.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 658.4, -959.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 828.3, -1148.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 828.3, -1148.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 845.2, -1142.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 845.2, -1142.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 946.1, -1248.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 946.1, -1248.8 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 5.09, 5.09 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -121.1 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -121.1 );


--敵の動き3
setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 320 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 224 + OFFSET_X, 1, -231.4, -263.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -231.4, -263.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -196, -251.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -196, -251.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -178.8, -228.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -178.8, -228.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -144.5, -197.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -144.5, -197.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -126.4, -175.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -126.4, -175.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -92, -161.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -92, -161.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -71.4, -138.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -71.4, -138.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -36.8, -110.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -36.8, -110.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -15.1, -88 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -15.1, -88 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 18.4, -72.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 18.4, -72.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -216.2, -442.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -216.2, -442.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -180.3, -415.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -180.3, -415.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -168.3, -374.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -168.3, -374.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -134, -322.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -134, -322.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -120.1, -282.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -120.1, -282.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -85.8, -252.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -85.8, -252.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -68.1, -211.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -68.1, -211.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -33.7, -163.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -33.7, -163.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -13.9, -123.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -13.9, -123.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 19.1, -90.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 19.1, -90.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 42.8, -44.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 42.8, -44.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -253.4, -639.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -253.4, -639.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -222.7, -626.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -222.7, -626.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -225.4, -596.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -225.4, -596.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -197.6, -548.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -197.6, -548.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -200.3, -519.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -200.3, -519.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -171.8, -504.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -171.8, -504.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -171.3, -473.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -171.3, -473.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -144.1, -429.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -144.1, -429.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -143.5, -399 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -143.5, -399 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -116.9, -382.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -116.9, -382.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -113.4, -351.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -113.4, -351.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -86.9, -309.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -86.9, -309.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -83, -279.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -83, -279.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -58.2, -260.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -58.2, -260.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -51.5, -229.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -51.5, -229.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -26.1, -191 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -26.1, -191 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -18.8, -160.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -18.8, -160.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 4.4, -140 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 4.4, -140 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 14.2, -108.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 14.2, -108.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 38.3, -73 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 38.3, -73 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 31.6, -72.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 31.6, -72.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 37.1, -79.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 37.1, -79.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 31.2, -78.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 31.2, -78.8 , 0 );

setScaleKey( spep_2 + 224 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 11.48, 11.48 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 11.48, 11.48 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 11.1, 11.1 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 11.1, 11.1 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.28, 4.28 );

setRotateKey( spep_2 + 224 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -26.9 );


-- ** 音 ** --
--走ってくる
SE018 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE018, 150 );
SE019 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE019, 172 );
SE020 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE020, 166 );
SE021 = playSeVer2( spep_2 + 34, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE021, 178 );
SE022 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE022, 164 );
SE023 = playSeVer2( spep_2 + 56, 1108, "", 0, 0, 0, -1);

--飛ぶ
SE024 = playSeVer2( spep_2 + 56, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE024, 59 );
SE025 = playSeVer2( spep_2 + 56, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE025, 83 );
SE026 = playSeVer2( spep_2 + 66, 1116, "",spep_2 + 126, 0, 36, -1);

--膝蹴り
SE027 = playSeVer2( spep_2 + 104, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE027, 79 );
SE028 = playSeVer2( spep_2 + 104, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE028, 89 );

--叩き落とす
SE029 = playSeVer2( spep_2 + 138, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE029, 148 );
SE030 = playSeVer2( spep_2 + 146, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--飛んでくる
SE032 = playSeVer2( spep_2 + 184, 1117, "",spep_2 + 252, 0, 26, -1);

--ラスト蹴り
SE033 = playSeVer2( spep_2 + 218, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE033, 78 );
SE034 = playSeVer2( spep_2 + 218, 1424, "",spep_2 + 322, 0, 46, -1);
SE035 = playSeVer2( spep_2 + 244, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE035, 67 );
SE036 = playSeVer2( spep_2 + 266, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE036, 46 );

--敵吹き飛ぶ
SE037 = playSeVer2( spep_2 + 308, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE037, 86 );


-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 320f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_3 + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_3 + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_3 + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_3 + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_3 + 4, finish_1f, 0 );
setEffRotateKey( spep_3 + 112, finish_1f, 0 );
setEffAlphaKey( spep_3 + 4, finish_1f, 255 );
setEffAlphaKey( spep_3 + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_3 + 0, SP_03 , spep_3 + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003b)
setEffMoveKey( spep_3 + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_1b, 0 );
setEffRotateKey( spep_3 + 112, finish_1b, 0 );
setEffAlphaKey( spep_3 + 0, finish_1b, 255 );
setEffAlphaKey( spep_3 + 112, finish_1b, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
--[[
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );
]]
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );  

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

  -- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -354.8 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );
--ここまで


-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- うそ泣き〜パンチ
-------------------------------------------------
MAX_FRAME_0 = 352;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- うそ泣き〜パンチ(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ダッシュ〜腕振り下ろし〜キック(ef_001br)
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
spep_x = spep_0 + 2;


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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 81.2, 65.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 81.2, 65.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 85.5, 67.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 85.5, 67.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 87.4, 68 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 87.4, 68 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 88.7, 68.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 88.7, 68.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 89.4, 68.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 89.4, 68.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 89.7, 68.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 89.7, 68.8 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0.5 );


--敵の動き2
setDisp( spep_0 + 316 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 316 + OFFSET_X, 1, -87.9, -150.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -87.9, -150.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 28.1, -85.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 28.1, -85.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 325.2, 24.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 325.2, 24.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 124.3, 7.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 124.3, 7.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 145.2, 25.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 145.2, 25.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 352.5, 72 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 352.5, 72 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 441.2, 75.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 441.2, 75.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 463.5, 51.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 463.5, 51.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 560.8, 54 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 560.8, 54 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 592.9, 40.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 592.9, 40.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 659.2, 34.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 659.2, 34.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 726.5, 28.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 726.5, 28.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 794.8, 23 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 794.8, 23 , 0 );

setScaleKey( spep_0 + 316 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.84, 2.84 );

setRotateKey( spep_0 + 316 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 10 );


-- ** 音 ** --
--嘘泣き
SE001 = playSeVer2( spep_0 + 0, 1280, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1280, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 54, 1280, "", 0, 0, 0, -1);

--敵驚く
SE005 = playSeVer2( spep_0 + 98, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 79 );

--肩動く
SE006 = playSeVer2( spep_0 + 112, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 158, 4, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 214, 4, "", 0, 0, 0, -1);

--チラ
SE009 = playSeVer2( spep_0 + 240, 37, "",spep_0 + 264, 0, 10, -1);

--カットイン
SE010 = playSeVer2( spep_0 + 268, 22, "",spep_0 + 326, 0, 40, -1);
SE011 = playSeVer2( spep_0 + 268, 1042, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 294; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
-- ** 音 ** --
--殴り飛ばす
SE012 = playSeVer2( spep_0 + 290, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE012, 164 );
SE013 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 312, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 352f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--走ってくる
SE016 = playSeVer2( spep_1 + 84, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 84, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE017, 168 );


-------------------------------------------------
-- ダッシュ〜腕振り下ろし〜キック
-------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ダッシュ〜腕振り下ろし〜キック(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ダッシュ〜腕振り下ろし〜キック(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 928.6, -829.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 928.6, -829.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 806.4, -774.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 806.4, -774.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 694, -713.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 694, -713.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 591.5, -647.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 591.5, -647.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 498.9, -576.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 498.9, -576.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 416.2, -500.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 416.2, -500.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 343.5, -419.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 343.5, -419.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 280.6, -333.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 280.6, -333.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 227.6, -241.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 227.6, -241.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 13.6, -184.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 13.6, -184.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 27.4, -202.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 27.4, -202.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 27.4, -180.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 27.4, -180.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 44, -197.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 44, -197.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 41.3, -175.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 41.3, -175.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 54.4, -182.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 54.4, -182.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 55.1, -171.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 55.1, -171.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 62, -169.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 62, -169.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 68.9, -167 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 68.9, -167 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 75.8, -164.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 75.8, -164.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 82.8, -162.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 82.8, -162.7 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 12.91, 12.91 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 12.91, 12.91 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 7.85, 7.85 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 7.85, 7.85 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.81, 3.81 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -14 );


--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 170 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 154 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, 284.8, -594.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 284.8, -594.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 523.3, -910.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 523.3, -910.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 471.6, -777.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 471.6, -777.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 680.8, -1026.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 680.8, -1026.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 658.4, -959.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 658.4, -959.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 828.3, -1148.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 828.3, -1148.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 845.2, -1142.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 845.2, -1142.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 946.1, -1248.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 946.1, -1248.8 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 5.09, 5.09 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -121.1 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -121.1 );


--敵の動き3
setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 320 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 224 + OFFSET_X, 1, -231.4, -263.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -231.4, -263.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -196, -251.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -196, -251.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -178.8, -228.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -178.8, -228.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -144.5, -197.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -144.5, -197.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -126.4, -175.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -126.4, -175.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -92, -161.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -92, -161.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -71.4, -138.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -71.4, -138.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -36.8, -110.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -36.8, -110.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -15.1, -88 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -15.1, -88 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 18.4, -72.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 18.4, -72.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -216.2, -442.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -216.2, -442.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -180.3, -415.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -180.3, -415.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -168.3, -374.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -168.3, -374.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -134, -322.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -134, -322.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -120.1, -282.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -120.1, -282.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -85.8, -252.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -85.8, -252.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -68.1, -211.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -68.1, -211.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -33.7, -163.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -33.7, -163.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -13.9, -123.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -13.9, -123.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 19.1, -90.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 19.1, -90.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 42.5, -49.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 47.9, -45.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 42.8, -44.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 42.8, -44.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -253.4, -639.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -253.4, -639.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -222.7, -626.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -222.7, -626.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -225.4, -596.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -225.4, -596.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -197.6, -548.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -197.6, -548.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -200.3, -519.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -200.3, -519.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -171.8, -504.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -171.8, -504.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -171.3, -473.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -171.3, -473.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -144.1, -429.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -144.1, -429.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -143.5, -399 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -143.5, -399 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -116.9, -382.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -116.9, -382.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -113.4, -351.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -113.4, -351.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -86.9, -309.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -86.9, -309.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -83, -279.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -83, -279.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -58.2, -260.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -58.2, -260.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -51.5, -229.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -51.5, -229.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -26.1, -191 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -26.1, -191 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -18.8, -160.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -18.8, -160.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 4.4, -140 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 4.4, -140 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 14.2, -108.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 14.2, -108.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 38.3, -73 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 38.3, -73 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 31.6, -72.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 31.6, -72.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 37.1, -79.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 37.1, -79.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 31.2, -78.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 31.2, -78.8 , 0 );

setScaleKey( spep_2 + 224 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 11.48, 11.48 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 11.48, 11.48 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 11.1, 11.1 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 11.1, 11.1 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.28, 4.28 );

setRotateKey( spep_2 + 224 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -26.9 );


-- ** 音 ** --
--走ってくる
SE018 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE018, 150 );
SE019 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE019, 172 );
SE020 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE020, 166 );
SE021 = playSeVer2( spep_2 + 34, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE021, 178 );
SE022 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE022, 164 );
SE023 = playSeVer2( spep_2 + 56, 1108, "", 0, 0, 0, -1);

--飛ぶ
SE024 = playSeVer2( spep_2 + 56, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE024, 59 );
SE025 = playSeVer2( spep_2 + 56, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE025, 83 );
SE026 = playSeVer2( spep_2 + 66, 1116, "",spep_2 + 126, 0, 36, -1);

--膝蹴り
SE027 = playSeVer2( spep_2 + 104, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE027, 79 );
SE028 = playSeVer2( spep_2 + 104, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE028, 89 );

--叩き落とす
SE029 = playSeVer2( spep_2 + 138, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE029, 148 );
SE030 = playSeVer2( spep_2 + 146, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--飛んでくる
SE032 = playSeVer2( spep_2 + 184, 1117, "",spep_2 + 252, 0, 26, -1);

--ラスト蹴り
SE033 = playSeVer2( spep_2 + 218, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE033, 78 );
SE034 = playSeVer2( spep_2 + 218, 1424, "",spep_2 + 322, 0, 46, -1);
SE035 = playSeVer2( spep_2 + 244, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE035, 67 );
SE036 = playSeVer2( spep_2 + 266, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE036, 46 );

--敵吹き飛ぶ
SE037 = playSeVer2( spep_2 + 308, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE037, 86 );


-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 320f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_3 + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_3 + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_3 + 4, finish_1f, -1.3, 1.3 );
setEffScaleKey( spep_3 + 112, finish_1f, -1.3, 1.3 );
setEffRotateKey( spep_3 + 4, finish_1f, 0 );
setEffRotateKey( spep_3 + 112, finish_1f, 0 );
setEffAlphaKey( spep_3 + 4, finish_1f, 255 );
setEffAlphaKey( spep_3 + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_3 + 0, SP_03 , spep_3 + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003b)
setEffMoveKey( spep_3 + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_1b, 0 );
setEffRotateKey( spep_3 + 112, finish_1b, 0 );
setEffAlphaKey( spep_3 + 0, finish_1b, 255 );
setEffAlphaKey( spep_3 + 112, finish_1b, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
--[[
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );
]]
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );  

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

  -- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_3 + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, 354.8 );
setRotateKey( spep_3 + 2, 1, 122.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_3 + 112, 1, -729.5 );
--ここまで


-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム


end