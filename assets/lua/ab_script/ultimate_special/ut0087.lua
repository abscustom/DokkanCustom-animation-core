-- 1030610: UR_トランクス(幼年期)+孫悟天(幼年期)_アクティブ必殺技：フュージョン
-- sp_effect_b1_00319
-- ut0087

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163648 --開始フュージョンポーズ～蹴り ef_001
SP_02 = 163649 --開始フュージョンポーズ～蹴り ef_001b
SP_03 = 163650 --フィニッシュ ef_002
SP_04 = 163651 --フィニッシュ ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 250 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 468 -1);  -- スキップ先フレーム指定

           --改めて向かっていく
           SE022 = playSeVer2( spep_0 + 468, 1019, "", 0, 0, 0, -1);
       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始フュージョンポーズ～蹴り
------------------------------------------------------
MAX_FRAME_0 = 552;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始フュージョンポーズ～蹴り(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0-1, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 開始フュージョンポーズ～蹴り(ef_001b)
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
setDisp( spep_0 + 508 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 508 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 518 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 508 + OFFSET_X, 1, 120, 0.7 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 120, 0.7 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 152, -2.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 152, -2.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 264.1, 106 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 264.1, 106 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 238.9, 171.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 238.9, 171.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 225.7, 149.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 225.7, 149.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 298.6, 222.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 298.6, 222.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 321.4, 170.1 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 321.4, 170.1 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 278.2, 209.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 278.2, 209.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 345.1, 275.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 345.1, 275.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 303.9, 292.7 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 303.9, 292.7 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 338.7, 298.1 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 338.7, 298.1 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 349.6, 319.6 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 349.6, 319.6 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 360.4, 341.1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 360.4, 341.1 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 371.2, 362.6 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 371.2, 362.6 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 382.1, 384.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 382.1, 384.1 , 0 );

setScaleKey( spep_0 + 508 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.08, 1.08 );

setRotateKey( spep_0 + 508 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 27 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 210, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--指合わせる
SE002 = playSeVer2( spep_0 + 6, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 69 );
SE003 = playSeVer2( spep_0 + 34, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 40, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 76 );
SE005 = playSeVer2( spep_0 + 50, 29, "", 0, 0, 0, -1);

--合体する
SE006 = playSeVer2( spep_0 + 70, 1264, "",spep_0 + 226, 0, 124, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 69 );
SE007 = playSeVer2( spep_0 + 70, 1156, "",spep_0 + 226, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 70, SE007, 85 );
SE008 = playSeVer2( spep_0 + 70, 1024, "",spep_0 + 186, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 56 );

--顔カットイン
SE009 = playSeVer2( spep_0 + 130, 1018, "", 0, 0, 0, -1);

--ゴテンクス登場
SE010 = playSeVer2( spep_0 + 130, 1237, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 130, 20, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_0 + 216, 1117, "",spep_0 + 282, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);

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
--着地
SE013 = playSeVer2( spep_0 + 266, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 170 );
SE014 = playSeVer2( spep_0 + 274, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE014, 138 );

--咳する
SE015 = playSeVer2( spep_0 + 346, 4, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 346, 38, "",spep_0 + 376, 0, 16, -1);
setPitch( spep_0 + 346, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE017 = playSeVer2( spep_0 + 376, 4, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 376, 38, "",spep_0 + 406, 0, 16, -1);
setPitch( spep_0 + 376, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );

--改めて向かっていく
SE019 = playSeVer2( spep_0 + 410, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 410, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 426, 8, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 444, 1019, "", 0, 0, 0, -1);

--蹴り飛ばす
SE023 = playSeVer2( spep_0 + 496, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 506, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 516, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE025, 76 );

spep_N = spep_0 + MAX_FRAME_0;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 40, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 40, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_04 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.6, 3.6 );
setEffScaleKey( spep_N + 112, ctga, 3.6, 3.6 );

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

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

-- setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
-- setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
-- setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
-- setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
-- setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
-- setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
-- setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
-- setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
-- setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
-- setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
-- setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

  -- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
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
--ここまで

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else end
