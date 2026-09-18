--4032130:LR_超サイヤ人トランクス(少年期)(未来)_超必殺技：シャイニングスラッシュ
--sp_effect_b2_00066
--sp2929

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共有)
SP_01  = 164294; --トランクスの手元～切りかかる直前_前面 ef_001
SP_01b = 164295; --トランクスの手元～切りかかる直前_背面 ef_001b
SP_02  = 164296; --トランクスジャンプ～フィニッシュ ef_002

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- トランクスの手元～切りかかる直前
-------------------------------------------------
MAX_FRAME_0 = 656;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- トランクスの手元～切りかかる直前_前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- トランクスの手元～切りかかる直前_背面ト(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 182;

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
setDisp( spep_0 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 358 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 358 + OFFSET_X, 1, -277, -169.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -277, -169.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -266.3, -189.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -266.3, -189.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -286.2, -158.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -286.2, -158.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -289.3, -156 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -289.3, -156 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -290.5, -180.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -290.5, -180.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -219.5, -162.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -219.5, -162.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -206.3, -169.6 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -206.3, -169.6 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -169.1, -169.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -169.1, -169.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -153.2, -169.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -153.2, -169.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -146.7, -169.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -146.7, -169.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -139.2, -169.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -139.2, -169.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -118.6, -169.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -118.6, -169.6 , 0 );

setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 358 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -12.5 );


--敵の動き2
setDisp( spep_0 + 412 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 412 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 412 + OFFSET_X, 1, -186.2, -253.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -186.2, -253.7 , 0 );

setScaleKey( spep_0 + 412 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_0 + 412 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 412 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 448 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_0 + 468 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 500 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 468 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 468 + OFFSET_X, 1, 208.1, -60 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 208.1, -60 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 352, -81.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 352, -81.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 417.6, -106.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 417.6, -106.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 688.9, -165.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 688.9, -165.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 695.1, -155.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 695.1, -155.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 692.9, -160.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 692.9, -160.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 705.3, -163.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 705.3, -163.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 700.6, -159.8 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 700.6, -159.8 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 701.6, -159.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 701.6, -159.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 702.5, -159.5 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 702.5, -159.5 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 701.5, -160.6 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 701.5, -160.6 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 700.5, -161.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 700.5, -161.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 700.9, -160.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 700.9, -160.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 701.3, -159 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 701.3, -159 , 0 );

setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.73, 1.73 );

setRotateKey( spep_0 + 468 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 47.2 );

setBlendColor( spep_0 + 468 + OFFSET_X, 1, 3, 0, 0, 0, 0.18 );
setBlendColor( spep_0 + 500 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 378, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ベルト締める
SE002 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 79 );
SE003 = playSeVer2( spep_0 + 18, 1389, "", 0, 0, 0, -1);

--位置なおす
SE004 = playSeVer2( spep_0 + 60, 1331, "",spep_0 + 118, 0, 16, -1);

--画面遷移１
SE005 = playSeVer2( spep_0 + 94, 1232, "", 0, 0, 0, -1);

--画面遷移２
SE006 = playSeVer2( spep_0 + 142, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 142, 1003, "", 0, 0, 0, -1);

--構える
SE010 = playSeVer2( spep_0 + 244, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 252, 1192, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 256, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE012, 214 );

--走っていく
SE013 = playSeVer2( spep_0 + 284, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE013, 77 );
SE014 = playSeVer2( spep_0 + 284, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE014, 79 );
SE009 = playSeVer2( spep_0 + 298, 1278, "",spep_0 + 514, 16, 120, -1);
setSeVolumeByWorkId( spep_0 + 298, SE009, 52 );
setStartTimeMs( SE009,  1000 );
SE015 = playSeVer2( spep_0 + 318, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE015, 178 );
SE016 = playSeVer2( spep_0 + 332, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE016, 200 );
SE017 = playSeVer2( spep_0 + 346, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE017, 211 );
SE018 = playSeVer2( spep_0 + 362, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE018, 251 );

--飛び込む
SE019 = playSeVer2( spep_0 + 358, 1012, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 358, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 358, 1033, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 378; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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
--斬りつける
SE022 = playSeVer2( spep_0 + 394, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE022, 151 );
SE023 = playSeVer2( spep_0 + 394, 1142, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 402, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE024, 136 );
SE025 = playSeVer2( spep_0 + 408, 1141, "", 0, 0, 0, -1);

--斬りつけ後爆発
SE026 = playSeVer2( spep_0 + 448, 1114, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 448, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE027, 89 );
SE028 = playSeVer2( spep_0 + 448, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE028, 76 );

--地面で減速
SE029 = playSeVer2( spep_0 + 470, 1044, "",spep_0 + 616, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 470, SE029, 86 );
SE030 = playSeVer2( spep_0 + 470, 1476, "",spep_0 + 596, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 470, SE030, 61 );
setPitch( spep_0 + 470, SE030, -1200 );
setTimeStretch( SE030, 0.2, 30, 4 );
SE031 = playSeVer2( spep_0 + 526, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE031, 42 );
setPitch( spep_0 + 526, SE031, -800 );
setTimeStretch( SE031, 0.47, 30, 4 );
SE032 = playSeVer2( spep_0 + 534, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE032, 50 );
setPitch( spep_0 + 534, SE032, -500 );
setTimeStretch( SE032, 0.67, 30, 4 );
SE033 = playSeVer2( spep_0 + 544, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE033, 54 );
setPitch( spep_0 + 544, SE033, -500 );
setTimeStretch( SE033, 0.67, 30, 4 );
SE034 = playSeVer2( spep_0 + 554, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE034, 58 );
setPitch( spep_0 + 554, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_0 + 562, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE035, 68 );
setPitch( spep_0 + 562, SE035, -200 );
setTimeStretch( SE035, 0.87, 30, 4 );
SE036 = playSeVer2( spep_0 + 572, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE036, 76 );

--気ダメ
SE037 = playSeVer2( spep_0 + 598, 1035, "",spep_0 + 670, 0, 10, -1);
SE038 = playSeVer2( spep_0 + 598, 1503, "",spep_0 + 670, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 610, 1504, "",spep_0 + 668, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 656f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--画面遷移
SE041 = playSeVer2( spep_1 + 82, 8, "", 0, 0, 0, -1);

--オーラ
SE042 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE042, 50 );


-------------------------------------------------
-- トランクスジャンプ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- トランクスジャンプ～フィニッシュ(ef_002)
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


-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE043, 50 );
SE045 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE045, 50 );
SE046 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 50 );
SE049 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE049, 50 );
SE051 = playSeVer2( spep_2 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE051, 50 );
SE054 = playSeVer2( spep_2 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE054, 50 );
SE058 = playSeVer2( spep_2 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE058, 50 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 92, 0, 28, -1);
SE047 = playSeVer2( spep_2 + 78, 1117, "",spep_2 + 172, 0, 20, -1);
SE048 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 88, 1061, "",spep_2 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 88, SE050, 87 );
SE052 = playSeVer2( spep_2 + 108, 63, "",spep_2 + 188, 0, 26, -1);

--ラスト斬りつけ
SE053 = playSeVer2( spep_2 + 134, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE053, 68 );
SE055 = playSeVer2( spep_2 + 148, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE055, 135 );
SE056 = playSeVer2( spep_2 + 148, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE056, 155 );
SE057 = playSeVer2( spep_2 + 156, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE057, 135 );
SE059 = playSeVer2( spep_2 + 170, 1319, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE059, 148 );
SE060 = playSeVer2( spep_2 + 174, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE060, 83 );


-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 204); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 322f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- トランクスの手元～切りかかる直前
-------------------------------------------------
MAX_FRAME_0 = 656;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- トランクスの手元～切りかかる直前_前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- トランクスの手元～切りかかる直前_背面ト(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 182;

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
setDisp( spep_0 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 358 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 358 + OFFSET_X, 1, 277, -169.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 277, -169.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 266.3, -189.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 266.3, -189.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 286.2, -158.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 286.2, -158.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 289.3, -156 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 289.3, -156 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 290.5, -180.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 290.5, -180.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 219.5, -162.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 219.5, -162.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 206.3, -169.6 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 206.3, -169.6 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 169.1, -169.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 169.1, -169.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 153.2, -169.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 153.2, -169.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 146.7, -169.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 146.7, -169.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 139.2, -169.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 139.2, -169.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 118.6, -169.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 118.6, -169.6 , 0 );

setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 358 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 12.5 );


--敵の動き2
setDisp( spep_0 + 412 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 412 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 412 + OFFSET_X, 1, 186.2, -253.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 186.2, -253.7 , 0 );

setScaleKey( spep_0 + 412 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_0 + 412 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 412 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 448 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_0 + 468 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 500 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 468 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 468 + OFFSET_X, 1, -208.1, -60 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -208.1, -60 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -352, -81.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -352, -81.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -417.6, -106.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -417.6, -106.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -688.9, -165.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -688.9, -165.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -695.1, -155.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -695.1, -155.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -692.9, -160.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -692.9, -160.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -705.3, -163.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -705.3, -163.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -700.6, -159.8 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -700.6, -159.8 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -701.6, -159.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -701.6, -159.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -702.5, -159.5 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -702.5, -159.5 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -701.5, -160.6 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -701.5, -160.6 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -700.5, -161.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -700.5, -161.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -700.9, -160.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -700.9, -160.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -701.3, -159 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -701.3, -159 , 0 );

setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.73, 1.73 );

setRotateKey( spep_0 + 468 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -47.2 );

setBlendColor( spep_0 + 468 + OFFSET_X, 1, 3, 0, 0, 0, 0.18 );
setBlendColor( spep_0 + 500 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 378, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ベルト締める
SE002 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 79 );
SE003 = playSeVer2( spep_0 + 18, 1389, "", 0, 0, 0, -1);

--位置なおす
SE004 = playSeVer2( spep_0 + 60, 1331, "",spep_0 + 118, 0, 16, -1);

--画面遷移１
SE005 = playSeVer2( spep_0 + 94, 1232, "", 0, 0, 0, -1);

--画面遷移２
SE006 = playSeVer2( spep_0 + 142, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 142, 1003, "", 0, 0, 0, -1);

--構える
SE010 = playSeVer2( spep_0 + 244, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 252, 1192, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 256, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE012, 214 );

--走っていく
SE013 = playSeVer2( spep_0 + 284, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE013, 77 );
SE014 = playSeVer2( spep_0 + 284, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE014, 79 );
SE009 = playSeVer2( spep_0 + 298, 1278, "",spep_0 + 514, 16, 120, -1);
setSeVolumeByWorkId( spep_0 + 298, SE009, 52 );
setStartTimeMs( SE009,  1000 );
SE015 = playSeVer2( spep_0 + 318, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE015, 178 );
SE016 = playSeVer2( spep_0 + 332, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE016, 200 );
SE017 = playSeVer2( spep_0 + 346, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE017, 211 );
SE018 = playSeVer2( spep_0 + 362, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE018, 251 );

--飛び込む
SE019 = playSeVer2( spep_0 + 358, 1012, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 358, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 358, 1033, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 378; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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
--斬りつける
SE022 = playSeVer2( spep_0 + 394, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE022, 151 );
SE023 = playSeVer2( spep_0 + 394, 1142, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 402, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE024, 136 );
SE025 = playSeVer2( spep_0 + 408, 1141, "", 0, 0, 0, -1);

--斬りつけ後爆発
SE026 = playSeVer2( spep_0 + 448, 1114, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 448, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE027, 89 );
SE028 = playSeVer2( spep_0 + 448, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE028, 76 );

--地面で減速
SE029 = playSeVer2( spep_0 + 470, 1044, "",spep_0 + 616, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 470, SE029, 86 );
SE030 = playSeVer2( spep_0 + 470, 1476, "",spep_0 + 596, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 470, SE030, 61 );
setPitch( spep_0 + 470, SE030, -1200 );
setTimeStretch( SE030, 0.2, 30, 4 );
SE031 = playSeVer2( spep_0 + 526, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE031, 42 );
setPitch( spep_0 + 526, SE031, -800 );
setTimeStretch( SE031, 0.47, 30, 4 );
SE032 = playSeVer2( spep_0 + 534, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE032, 50 );
setPitch( spep_0 + 534, SE032, -500 );
setTimeStretch( SE032, 0.67, 30, 4 );
SE033 = playSeVer2( spep_0 + 544, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE033, 54 );
setPitch( spep_0 + 544, SE033, -500 );
setTimeStretch( SE033, 0.67, 30, 4 );
SE034 = playSeVer2( spep_0 + 554, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE034, 58 );
setPitch( spep_0 + 554, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_0 + 562, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE035, 68 );
setPitch( spep_0 + 562, SE035, -200 );
setTimeStretch( SE035, 0.87, 30, 4 );
SE036 = playSeVer2( spep_0 + 572, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE036, 76 );

--気ダメ
SE037 = playSeVer2( spep_0 + 598, 1035, "",spep_0 + 670, 0, 10, -1);
SE038 = playSeVer2( spep_0 + 598, 1503, "",spep_0 + 670, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 610, 1504, "",spep_0 + 668, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 656f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--画面遷移
SE041 = playSeVer2( spep_1 + 82, 8, "", 0, 0, 0, -1);

--オーラ
SE042 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE042, 50 );


-------------------------------------------------
-- トランクスジャンプ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- トランクスジャンプ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE043, 50 );
SE045 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE045, 50 );
SE046 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 50 );
SE049 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE049, 50 );
SE051 = playSeVer2( spep_2 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE051, 50 );
SE054 = playSeVer2( spep_2 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE054, 50 );
SE058 = playSeVer2( spep_2 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE058, 50 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 92, 0, 28, -1);
SE047 = playSeVer2( spep_2 + 78, 1117, "",spep_2 + 172, 0, 20, -1);
SE048 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 88, 1061, "",spep_2 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 88, SE050, 87 );
SE052 = playSeVer2( spep_2 + 108, 63, "",spep_2 + 188, 0, 26, -1);

--ラスト斬りつけ
SE053 = playSeVer2( spep_2 + 134, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE053, 68 );
SE055 = playSeVer2( spep_2 + 148, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE055, 135 );
SE056 = playSeVer2( spep_2 + 148, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE056, 155 );
SE057 = playSeVer2( spep_2 + 156, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE057, 135 );
SE059 = playSeVer2( spep_2 + 170, 1319, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE059, 148 );
SE060 = playSeVer2( spep_2 + 174, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE060, 83 );


-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 204); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 322f -4f

end