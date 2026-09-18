-- 4030620: UR_孫悟天(幼年期)+トランクス(幼年期)_アクティブ必殺技：フュージョン
-- sp_effect_b1_00317
-- ut0088

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163635; -- フュージョン→頭突き：前 ef_001
SP_01b = 163636; -- フュージョン→頭突き：奥 ef_001b
SP_02 = 163637; -- ガッ用背景 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 394 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 416 -1);  -- スキップ先フレーム指定

           -- ** 音 ** --
           --走ってくる
           SE018 = playSeVer2( spep_0 + 416, 1117, "", 0, 0, 0, -1);
           setStartTimeMs( SE018,  820 );
           SE024 = playSeVer2( spep_0 + 416, 1019, "", 0, 0, 0, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- フュージョン→頭突き
------------------------------------------------------
MAX_FRAME_0 = 490;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- フュージョン→頭突き：前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- フュージョン→頭突き：奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 452 + OFFSET_X, 1, 1 );
--setDisp( spep_0 + 490 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 452 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 452 + OFFSET_X, 1, 133.6, -25.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 133.6, -25.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 139.4, -23.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 139.4, -23.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 149.7, 9.3 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 149.7, 9.3 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 223.8, 114.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 223.8, 114.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 263.1, 125 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 263.1, 125 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 304, 203.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 304, 203.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 274.5, 253.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 274.5, 253.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 320, 209.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 320, 209.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 361, 287.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 361, 287.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 331.4, 338 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 331.4, 338 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 377, 294.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 377, 294.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 417.9, 372.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 417.9, 372.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 388.3, 422.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 388.3, 422.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 433.9, 378.8 , 0 );

setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_0 + 452 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 25.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 244, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 12, 1003, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 52, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 69 );

--指合わせる
SE004 = playSeVer2( spep_0 + 96, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 104, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE005, 76 );
SE006 = playSeVer2( spep_0 + 104, 1192, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 116, 29, "", 0, 0, 0, -1);

--合体する
SE008 = playSeVer2( spep_0 + 124, 1264, "",spep_0 + 282, 0, 124, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 69 );
SE009 = playSeVer2( spep_0 + 124, 1156, "",spep_0 + 282, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 85 );
SE010 = playSeVer2( spep_0 + 124, 1024, "",spep_0 + 242, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 124, SE010, 56 );

--顔カットイン
SE011 = playSeVer2( spep_0 + 180, 1018, "", 0, 0, 0, -1);

--ゴテンクス登場
SE012 = playSeVer2( spep_0 + 180, 1237, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 180, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE013, 69 );

--構える
SE014 = playSeVer2( spep_0 + 280, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 312, 1012, "", 0, 0, 0, -1);

--走ってくる
SE016 = playSeVer2( spep_0 + 360, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE016, 158 );
SE017 = playSeVer2( spep_0 + 362, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 362, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 368, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE019, 158 );
SE020 = playSeVer2( spep_0 + 376, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE020, 158 );
SE021 = playSeVer2( spep_0 + 386, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE021, 158 );
SE022 = playSeVer2( spep_0 + 386, 8, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 394; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 8, SE021, 0);
stopSe( SP_dodge - 8, SE022, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--走ってくる
SE023 = playSeVer2( spep_0 + 396, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE023, 158 );
SE024 = playSeVer2( spep_0 + 404, 1019, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 406, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE025, 158 );

--タックル
SE026 = playSeVer2( spep_0 + 456, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 466, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 476, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE028, 76 );

-- ** 次の準備 ** --
spep_N = spep_0 + MAX_FRAME_0;  -- 490

------------------------------------------------------
-- 「ガッ」 ef_002
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_02 , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_002)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
shuchusen_wh_3 = entryEffectLife( spep_N + 14,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線白 
setEffMoveKey( spep_N + 14, shuchusen_wh_3, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_wh_3, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh_3, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 112, shuchusen_wh_3, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh_3, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh_3, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh_3, 0 );
setEffRotateKey( spep_N + 112, shuchusen_wh_3, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh_3, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_wh_3, 255 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else end
