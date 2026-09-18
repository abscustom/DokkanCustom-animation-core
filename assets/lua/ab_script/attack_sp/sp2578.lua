-- 1027020: SSR_超一星龍_必殺技_(↓簡易版)
-- sp_effect_a1_00402
-- sp2578

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162014;  -- 突進 ef_001
SP_002 = 162016;  -- 後ろから殴る ef_002
SP_003 = 162018;  -- 地上に瞬間移動 ef_003
SP_004 = 162020;  -- 棘が伸びる ef_004
SP_005 = 162022;  -- 敵に突き刺さる（前） ef_005
SP_007 = 162026;  -- 敵に突き刺さる（後） ef_007
SP_006 = 162024;  -- ビリビリ攻撃（前） ef_006
SP_008 = 162027;  -- ビリビリ攻撃（後） ef_008

-- 敵側
SP_001r = 162015;  -- 突進 ef_001r
SP_002r = 162017;  -- 後ろから殴る ef_002r
SP_003r = 162019;  -- 地上に瞬間移動 ef_003r
SP_004r = 162021;  -- 棘が伸びる ef_004r
SP_005r = 162023;  -- 敵に突き刺さる（前） ef_005r
SP_006r = 162025;  -- ビリビリ攻撃（前） ef_006r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 突進 ef_001 (108F)
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--かがむ
SE003 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かっていく
SE004 = playSeVer2( spep_0 + 90, 9, "",spep_0 + 136, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 136, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

------------------------------------------------------
-- 後ろから殴る ef_002 (76F)
------------------------------------------------------
MAX_FRAME_1 = 76;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_1 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_02, 0 );
setEffAlphaKey( spep_1 + 0, SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_02, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 + 32 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, -36.4, -106 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, -36.4, -106 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, -36.4, -105.9 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, -36.4, -105.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, -36.4, -105.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, -36.4, -105.8 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, -36.4, -112 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, -36.4, -112 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, -76, -178.1 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, -82.2, -186.6 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, -121.2, -199.5 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, -193.9, -258.7 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, -294.6, -320.3 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, -402.3, -401 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, -495.5, -459.8 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, -566.1, -512.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, -615.2, -542.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, -646.3, -567.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -663, -576.2 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -668, -582.3 , 0 );

setScaleKey( spep_1 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 4.49, 4.49 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, -98.7 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, -99 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_1 + 42 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_1 + 46 + OFFSET_X, 1, -100.6 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_1 + 50 + OFFSET_X, 1, -100.9 );
setRotateKey( spep_1 + 52 + OFFSET_X, 1, -101 );
setRotateKey( spep_1 + 54 + OFFSET_X, 1, -101 );

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_1 + 8, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE006, 58 );
SE007 = playSeVer2( spep_1 + 10, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE007, 114 );
--殴り飛ばす
SE008 = playSeVer2( spep_1 + 34, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 34, 1187, "", 0, 0, 0, 0.6);
--瞬間移動２
SE010 = playSeVer2( spep_1 + 58, 1245, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 58, SE010, 71 );
SE011 = playSeVer2( spep_1 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE011, 122 );
--敵飛んでくる
SE012 = playSeVer2( spep_1 + 68, 1121, "",spep_1 + 258, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 68, SE012, 71 );
SE013 = playSeVer2( spep_1 + 68, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE013, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 78

------------------------------------------------------
-- 地上に瞬間移動 ef_003 (36F)
------------------------------------------------------
MAX_FRAME_2 = 36;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 1, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 37 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 768.5, 802.8 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 594.5, 611.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 498.9, 506.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 428.4, 428.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 371.6, 366.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 323.8, 314.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 282.6, 269 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 246.4, 229.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 214.3, 194.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 185.6, 163.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 159.7, 135.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 136.4, 109.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 115.3, 86.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 96.3, 66.3 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 79.1, 47.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 63.7, 31.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 88.2, 74.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 109.2, 114.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 127.8, 151.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 127.8, 151.9 , 0 );

setScaleKey( spep_2 + 0, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0, 1, -145 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -145 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -144.9 );

-- ** 音 ** --
--瞬間移動３
SE014 = playSeVer2( spep_2 + 4, 1245, "", spep_2 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE014, 71 );
SE015 = playSeVer2( spep_2 + 4, 1109, "", spep_2 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 76 );
stopSeIfDoubleSpeed( spep_2 + 4, SE015 );
--ズーム
SE016 = playSeVer2( spep_2 + 10, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 38

------------------------------------------------------
-- 棘が伸びる ef_004 (78F)
------------------------------------------------------
MAX_FRAME_3 = 78;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );

-- ** 音 ** --
--ツノ伸びる
SE017 = playSeVer2( spep_3 + 32, 1293, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_3 + 32, SE017 );
SE018 = playSeVer2( spep_3 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 77 );
SE019 = playSeVer2( spep_3 + 36, 1326, "",spep_3 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 36, SE019, 126 );
SE020 = playSeVer2( spep_3 + 36, 1320, "",spep_3 + 124, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 36, SE020, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + MAX_FRAME_3 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 78

------------------------------------------------------
-- 敵に突き刺さる（前） ef_005 (68F)
------------------------------------------------------
MAX_FRAME_4 = 68;

-- ** エフェクト等 ** --
SP_05 = entryEffect( spep_4 + 0, SP_005, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_05, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_05, 0 );
setEffAlphaKey( spep_4 + 0, SP_05, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_05, 255 );
SP_07 = entryEffect( spep_4 + 0, SP_007, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_07, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_07, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_07, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_07, 0 );
setEffAlphaKey( spep_4 + 0, SP_07, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_07, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0 , 1, 1 );
setDisp( spep_4 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_4 + 0 , 1, 107 );
changeAnime( spep_4 + 26 + OFFSET_X, 1, 106 );

setMoveKey( spep_4 + 0, 1, 294.3, 454 , 0 );
setMoveKey( spep_4 + 2 + OFFSET_X, 1, 261.6, 370.9 , 0 );
setMoveKey( spep_4 + 4 + OFFSET_X, 1, 236.6, 307.5 , 0 );
setMoveKey( spep_4 + 6 + OFFSET_X, 1, 214.1, 250.2 , 0 );
setMoveKey( spep_4 + 8 + OFFSET_X, 1, 193.1, 196.8 , 0 );
setMoveKey( spep_4 + 10 + OFFSET_X, 1, 173.2, 146.3 , 0 );
setMoveKey( spep_4 + 12 + OFFSET_X, 1, 154.4, 98.6 , 0 );
setMoveKey( spep_4 + 14 + OFFSET_X, 1, 136.8, 53.8 , 0 );
setMoveKey( spep_4 + 16 + OFFSET_X, 1, 120.6, 12.9 , 0 );
setMoveKey( spep_4 + 18 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_4 + 25 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_4 + 26 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 27 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 28 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 29 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 30 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 31 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 32 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 34 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 35 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 36 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_4 + 37 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_4 + 38 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_4 + 39 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_4 + 40 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_4 + 41 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_4 + 42 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_4 + 43 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_4 + 44 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_4 + 45 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_4 + 46 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 47 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 48 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_4 + 49 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_4 + 50 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_4 + 51 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_4 + 52 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_4 + 53 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_4 + 54 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_4 + 55 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_4 + 56 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_4 + 57 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_4 + 58 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 59 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 60 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_4 + 61 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_4 + 62 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 63 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 64 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_4 + 65 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_4 + 66 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 67 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 68 + OFFSET_X, 1, 37.4, 73.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 6 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 8 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 10 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 12 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 14 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 16 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 18 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 25 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 26 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 68 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_4 + 0, 1, 116 );
setRotateKey( spep_4 + 25 + OFFSET_X, 1, 116 );
setRotateKey( spep_4 + 26 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 27 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 28 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 29 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 30 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 31 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 32 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 34 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 35 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 36 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 37 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 38 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 40 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 41 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 42 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 46 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 47 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 48 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 50 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 51 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 52 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 56 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 57 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 58 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 59 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 60 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 61 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 62 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 64 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 65 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 66 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 67 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 68 + OFFSET_X, 1, -128.6 );

-- ** 音 ** --
--ツノ突き刺さる
SE021 = playSeVer2( spep_4 + 26, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 28, 1153, "",spep_4 + 96, 0, 8, -1);
SE023 = playSeVer2( spep_4 + 28, 1169, "",spep_4 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 28, SE023, 71 );
SE024 = playSeVer2( spep_4 + 28, 1011, "",spep_4 + 102, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + MAX_FRAME_4 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + MAX_FRAME_4;  -- 68

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_6 = showCardCutin(spep_5, 0);

------------------------------------------------------
-- ビリビリ攻撃（前） ef_006 (160F)
------------------------------------------------------
MAX_FRAME_6 = 160;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_6 + 0, SP_006, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_06, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_06, 0 );
setEffAlphaKey( spep_6 + 0, SP_06, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_06, 255 );
SP_08 = entryEffect( spep_6 + 0, SP_008, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_08, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_08, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_08, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_08, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_08, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_08, 0 );
setEffAlphaKey( spep_6 + 0, SP_08, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_08, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 54.9, 587.6 , 0 );
setMoveKey( spep_6 + 2 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 3 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 4 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 5 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 6 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 7 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 8 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 9 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 10 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 11 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 12 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 13 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 14 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 15 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 16 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 17 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 18 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_6 + 29 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_6 + 30 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 31 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 32 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_6 + 33 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_6 + 34 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 35 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 36 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_6 + 37 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_6 + 38 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_6 + 39 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_6 + 40 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_6 + 41 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_6 + 42 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_6 + 43 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_6 + 44 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_6 + 45 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_6 + 46 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_6 + 47 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_6 + 48 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_6 + 49 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_6 + 50 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_6 + 51 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_6 + 52 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_6 + 53 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_6 + 54 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_6 + 55 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_6 + 56 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_6 + 57 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_6 + 58 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_6 + 59 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_6 + 60 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_6 + 61 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_6 + 62 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_6 + 63 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_6 + 64 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_6 + 65 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_6 + 66 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_6 + 67 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_6 + 68 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_6 + 69 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_6 + 70 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_6 + 71 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_6 + 72 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_6 + 73 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_6 + 74 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_6 + 75 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_6 + 76 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_6 + 77 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_6 + 78 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_6 + 79 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_6 + 80 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_6 + 81 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_6 + 82 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_6 + 83 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_6 + 84 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_6 + 85 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_6 + 86 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_6 + 87 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_6 + 88 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_6 + 89 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_6 + 90 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_6 + 91 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_6 + 92 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_6 + 93 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_6 + 94 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_6 + 95 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_6 + 96 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_6 + 97 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_6 + 98 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_6 + 99 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_6 + 100 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_6 + 101 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_6 + 102 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_6 + 103 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_6 + 104 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_6 + 105 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_6 + 106 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_6 + 107 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_6 + 108 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_6 + 109 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_6 + 110 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_6 + 111 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_6 + 112 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_6 + 113 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_6 + 114 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_6 + 115 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_6 + 116 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_6 + 117 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_6 + 118 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_6 + 119 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_6 + 120 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_6 + 121 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_6 + 122 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_6 + 123 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_6 + 124 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_6 + 125 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_6 + 126 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_6 + 127 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_6 + 128 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_6 + 129 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_6 + 130 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_6 + 131 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_6 + 132 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_6 + 133 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_6 + 134 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_6 + 135 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_6 + 136 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_6 + 137 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_6 + 138 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_6 + 139 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_6 + 140 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_6 + 141 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_6 + 142 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_6 + 143 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_6 + 144 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_6 + 145 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_6 + 146 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_6 + 147 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_6 + 148 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_6 + 149 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_6 + 150 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_6 + 151 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_6 + 152 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_6 + 153 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_6 + 154 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_6 + 155 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_6 + 156 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_6 + 157 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_6 + 158 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_6 + 159 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_6 + 160 + OFFSET_X, 1, -10.6, 84.9 , 0 );

setScaleKey( spep_6 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 30 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 42 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 43 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 44 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_6 + 45 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_6 + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 47 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 48 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 49 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 50 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_6 + 51 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_6 + 52 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 53 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 54 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 55 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 56 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 57 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 58 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 59 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 60 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 61 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 62 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 63 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 64 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_6 + 65 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_6 + 66 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 67 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 69 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 71 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 72 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 76 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 84 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 85 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 86 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 96 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 97 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 98 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 106 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 107 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 108 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 116 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 117 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 118 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 128 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 129 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 130 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 138 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 139 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 140 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 148 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 149 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 150 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 158 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 159 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 160 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_6 + 0, 1, -115.8 );
setRotateKey( spep_6 + 2 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 3 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 4 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 5 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 6 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 7 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 8 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 9 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 10 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 11 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 12 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 13 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 14 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 15 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 16 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 17 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 18 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 29 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 30 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 31 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 32 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 33 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 34 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 40 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 41 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 42 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 43 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 44 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 45 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 46 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 48 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 49 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 50 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 51 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 52 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 53 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 54 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 55 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 56 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 60 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 61 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 62 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 63 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 64 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 65 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 66 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 67 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 68 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 69 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 70 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 76 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 77 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 78 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 79 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 80 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 81 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 82 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 84 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 85 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 86 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 87 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 88 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 89 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 90 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 91 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 92 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 96 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 97 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 98 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 99 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 100 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 101 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 102 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 103 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 104 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 105 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 106 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 112 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 113 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 114 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 115 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 116 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 117 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 118 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 120 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 121 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 122 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 123 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 124 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 125 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 126 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 127 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 128 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 132 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 133 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 134 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 135 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 136 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 137 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 138 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 139 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 140 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 141 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 142 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 148 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 149 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 150 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 151 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 152 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 153 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 154 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 156 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 157 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 158 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 159 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 160 + OFFSET_X, 1, -114.5 );

-- ** 音 ** --
--電撃走る
SE026 = playSeVer2( spep_6 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE026, 137 );
SE027 = playSeVer2( spep_6 + 20, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE027, 122 );
SE028 = playSeVer2( spep_6 + 20, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE028, 120 );
SE029 = playSeVer2( spep_6 + 24, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE029, 120 );
SE030 = playSeVer2( spep_6 + 24, 1243, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE030, 85 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, MAX_FRAME_6 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_6 + 56 );
endPhase( spep_6 + MAX_FRAME_6 - 4 );  -- 158

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 突進 ef_001 (108F)
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--かがむ
SE003 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かっていく
SE004 = playSeVer2( spep_0 + 90, 9, "",spep_0 + 136, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 136, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

------------------------------------------------------
-- 後ろから殴る ef_002 (76F)
------------------------------------------------------
MAX_FRAME_1 = 76;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_1 + 0, SP_002r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_02, 0 );
setEffAlphaKey( spep_1 + 0, SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_02, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 + 32 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, -36.4, -106 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, -36.4, -106 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, -36.4, -105.9 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, -36.4, -105.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, -36.4, -105.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, -36.4, -105.8 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, -36.4, -112 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, -36.4, -112 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, -76, -178.1 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, -82.2, -186.6 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, -121.2, -199.5 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, -193.9, -258.7 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, -294.6, -320.3 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, -402.3, -401 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, -495.5, -459.8 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, -566.1, -512.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, -615.2, -542.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, -646.3, -567.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -663, -576.2 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -668, -582.3 , 0 );

setScaleKey( spep_1 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 4.49, 4.49 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, -98.7 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, -99 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_1 + 42 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_1 + 46 + OFFSET_X, 1, -100.6 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_1 + 50 + OFFSET_X, 1, -100.9 );
setRotateKey( spep_1 + 52 + OFFSET_X, 1, -101 );
setRotateKey( spep_1 + 54 + OFFSET_X, 1, -101 );

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_1 + 8, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE006, 58 );
SE007 = playSeVer2( spep_1 + 10, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE007, 114 );
--殴り飛ばす
SE008 = playSeVer2( spep_1 + 34, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 34, 1187, "", 0, 0, 0, 0.6);
--瞬間移動２
SE010 = playSeVer2( spep_1 + 58, 1245, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 58, SE010, 71 );
SE011 = playSeVer2( spep_1 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE011, 122 );
--敵飛んでくる
SE012 = playSeVer2( spep_1 + 68, 1121, "",spep_1 + 258, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 68, SE012, 71 );
SE013 = playSeVer2( spep_1 + 68, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE013, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 78

------------------------------------------------------
-- 地上に瞬間移動 ef_003 (36F)
------------------------------------------------------
MAX_FRAME_2 = 36;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 1, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 37 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 768.5, 802.8 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 594.5, 611.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 498.9, 506.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 428.4, 428.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 371.6, 366.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 323.8, 314.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 282.6, 269 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 246.4, 229.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 214.3, 194.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 185.6, 163.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 159.7, 135.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 136.4, 109.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 115.3, 86.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 96.3, 66.3 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 79.1, 47.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 63.7, 31.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 88.2, 74.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 109.2, 114.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 127.8, 151.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 127.8, 151.9 , 0 );

setScaleKey( spep_2 + 0, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0, 1, -145 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -145 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -144.9 );

-- ** 音 ** --
--瞬間移動３
SE014 = playSeVer2( spep_2 + 4, 1245, "", spep_2 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE014, 71 );
SE015 = playSeVer2( spep_2 + 4, 1109, "", spep_2 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 76 );
stopSeIfDoubleSpeed( spep_2 + 4, SE015 );
--ズーム
SE016 = playSeVer2( spep_2 + 10, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 38

------------------------------------------------------
-- 棘が伸びる ef_004 (78F)
------------------------------------------------------
MAX_FRAME_3 = 78;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );

-- ** 音 ** --
--ツノ伸びる
SE017 = playSeVer2( spep_3 + 32, 1293, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_3 + 32, SE017 );
SE018 = playSeVer2( spep_3 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 77 );
SE019 = playSeVer2( spep_3 + 36, 1326, "",spep_3 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 36, SE019, 126 );
SE020 = playSeVer2( spep_3 + 36, 1320, "",spep_3 + 124, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 36, SE020, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + MAX_FRAME_3 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 78

------------------------------------------------------
-- 敵に突き刺さる（前） ef_005 (68F)
------------------------------------------------------
MAX_FRAME_4 = 68;

-- ** エフェクト等 ** --
SP_05 = entryEffect( spep_4 + 0, SP_005r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_05, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_05, 0 );
setEffAlphaKey( spep_4 + 0, SP_05, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_05, 255 );
SP_07 = entryEffect( spep_4 + 0, SP_007, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_07, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_07, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_07, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_07, 0 );
setEffAlphaKey( spep_4 + 0, SP_07, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_07, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0 , 1, 1 );
setDisp( spep_4 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_4 + 0 , 1, 107 );
changeAnime( spep_4 + 26 + OFFSET_X, 1, 106 );

setMoveKey( spep_4 + 0, 1, 294.3, 454 , 0 );
setMoveKey( spep_4 + 2 + OFFSET_X, 1, 261.6, 370.9 , 0 );
setMoveKey( spep_4 + 4 + OFFSET_X, 1, 236.6, 307.5 , 0 );
setMoveKey( spep_4 + 6 + OFFSET_X, 1, 214.1, 250.2 , 0 );
setMoveKey( spep_4 + 8 + OFFSET_X, 1, 193.1, 196.8 , 0 );
setMoveKey( spep_4 + 10 + OFFSET_X, 1, 173.2, 146.3 , 0 );
setMoveKey( spep_4 + 12 + OFFSET_X, 1, 154.4, 98.6 , 0 );
setMoveKey( spep_4 + 14 + OFFSET_X, 1, 136.8, 53.8 , 0 );
setMoveKey( spep_4 + 16 + OFFSET_X, 1, 120.6, 12.9 , 0 );
setMoveKey( spep_4 + 18 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_4 + 25 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_4 + 26 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 27 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 28 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 29 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 30 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 31 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_4 + 32 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 34 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 35 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_4 + 36 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_4 + 37 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_4 + 38 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_4 + 39 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_4 + 40 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_4 + 41 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_4 + 42 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_4 + 43 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_4 + 44 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_4 + 45 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_4 + 46 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 47 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 48 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_4 + 49 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_4 + 50 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_4 + 51 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_4 + 52 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_4 + 53 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_4 + 54 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_4 + 55 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_4 + 56 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_4 + 57 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_4 + 58 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 59 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 60 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_4 + 61 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_4 + 62 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 63 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_4 + 64 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_4 + 65 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_4 + 66 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 67 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_4 + 68 + OFFSET_X, 1, 37.4, 73.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 6 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 8 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 10 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 12 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 14 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 16 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 18 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 25 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 26 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 68 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_4 + 0, 1, 116 );
setRotateKey( spep_4 + 25 + OFFSET_X, 1, 116 );
setRotateKey( spep_4 + 26 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 27 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 28 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 29 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 30 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 31 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 32 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 34 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 35 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 36 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 37 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 38 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 40 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 41 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 42 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 46 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 47 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 48 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 50 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 51 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 52 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 56 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 57 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 58 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 59 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 60 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 61 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 62 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 64 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 65 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_4 + 66 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 67 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_4 + 68 + OFFSET_X, 1, -128.6 );

-- ** 音 ** --
--ツノ突き刺さる
SE021 = playSeVer2( spep_4 + 26, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 28, 1153, "",spep_4 + 96, 0, 8, -1);
SE023 = playSeVer2( spep_4 + 28, 1169, "",spep_4 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 28, SE023, 71 );
SE024 = playSeVer2( spep_4 + 28, 1011, "",spep_4 + 102, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + MAX_FRAME_4 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + MAX_FRAME_4;  -- 68

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_6 = showCardCutin(spep_5, 0);

------------------------------------------------------
-- ビリビリ攻撃（前） ef_006 (160F)
------------------------------------------------------
MAX_FRAME_6 = 160;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_6 + 0, SP_006r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_06, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_06, 0 );
setEffAlphaKey( spep_6 + 0, SP_06, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_06, 255 );
SP_08 = entryEffect( spep_6 + 0, SP_008, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_08, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_08, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_08, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_08, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_08, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_08, 0 );
setEffAlphaKey( spep_6 + 0, SP_08, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_08, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 54.9, 587.6 , 0 );
setMoveKey( spep_6 + 2 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 3 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 4 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 5 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 6 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 7 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 8 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 9 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 10 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 11 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_6 + 12 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 13 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_6 + 14 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 15 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_6 + 16 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 17 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 18 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_6 + 29 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_6 + 30 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 31 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 32 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_6 + 33 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_6 + 34 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 35 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_6 + 36 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_6 + 37 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_6 + 38 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_6 + 39 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_6 + 40 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_6 + 41 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_6 + 42 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_6 + 43 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_6 + 44 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_6 + 45 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_6 + 46 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_6 + 47 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_6 + 48 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_6 + 49 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_6 + 50 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_6 + 51 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_6 + 52 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_6 + 53 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_6 + 54 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_6 + 55 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_6 + 56 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_6 + 57 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_6 + 58 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_6 + 59 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_6 + 60 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_6 + 61 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_6 + 62 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_6 + 63 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_6 + 64 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_6 + 65 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_6 + 66 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_6 + 67 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_6 + 68 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_6 + 69 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_6 + 70 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_6 + 71 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_6 + 72 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_6 + 73 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_6 + 74 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_6 + 75 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_6 + 76 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_6 + 77 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_6 + 78 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_6 + 79 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_6 + 80 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_6 + 81 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_6 + 82 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_6 + 83 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_6 + 84 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_6 + 85 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_6 + 86 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_6 + 87 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_6 + 88 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_6 + 89 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_6 + 90 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_6 + 91 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_6 + 92 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_6 + 93 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_6 + 94 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_6 + 95 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_6 + 96 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_6 + 97 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_6 + 98 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_6 + 99 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_6 + 100 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_6 + 101 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_6 + 102 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_6 + 103 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_6 + 104 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_6 + 105 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_6 + 106 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_6 + 107 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_6 + 108 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_6 + 109 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_6 + 110 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_6 + 111 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_6 + 112 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_6 + 113 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_6 + 114 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_6 + 115 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_6 + 116 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_6 + 117 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_6 + 118 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_6 + 119 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_6 + 120 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_6 + 121 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_6 + 122 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_6 + 123 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_6 + 124 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_6 + 125 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_6 + 126 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_6 + 127 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_6 + 128 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_6 + 129 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_6 + 130 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_6 + 131 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_6 + 132 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_6 + 133 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_6 + 134 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_6 + 135 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_6 + 136 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_6 + 137 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_6 + 138 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_6 + 139 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_6 + 140 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_6 + 141 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_6 + 142 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_6 + 143 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_6 + 144 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_6 + 145 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_6 + 146 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_6 + 147 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_6 + 148 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_6 + 149 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_6 + 150 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_6 + 151 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_6 + 152 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_6 + 153 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_6 + 154 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_6 + 155 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_6 + 156 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_6 + 157 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_6 + 158 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_6 + 159 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_6 + 160 + OFFSET_X, 1, -10.6, 84.9 , 0 );

setScaleKey( spep_6 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 30 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 42 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 43 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 44 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_6 + 45 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_6 + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 47 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 48 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 49 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 50 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_6 + 51 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_6 + 52 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 53 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 54 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 55 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 56 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 57 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 58 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 59 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 60 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 61 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 62 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 63 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 64 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_6 + 65 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_6 + 66 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 67 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 69 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 71 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 72 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 76 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 84 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 85 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 86 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 96 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 97 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 98 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 106 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 107 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 108 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 116 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 117 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 118 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 128 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 129 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 130 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 138 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 139 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 140 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 148 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 149 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 150 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 158 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 159 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 160 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_6 + 0, 1, -115.8 );
setRotateKey( spep_6 + 2 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 3 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 4 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 5 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 6 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 7 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 8 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 9 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 10 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 11 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 12 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 13 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 14 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 15 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 16 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 17 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 18 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 29 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_6 + 30 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 31 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 32 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 33 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 34 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 40 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 41 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 42 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 43 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 44 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 45 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 46 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 48 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 49 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 50 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 51 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 52 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 53 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 54 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 55 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 56 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 60 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 61 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 62 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 63 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 64 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 65 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 66 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 67 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 68 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 69 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 70 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 76 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 77 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 78 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 79 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 80 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 81 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 82 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 84 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 85 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 86 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 87 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 88 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 89 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 90 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 91 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 92 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 96 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 97 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 98 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 99 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 100 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 101 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 102 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 103 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 104 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 105 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 106 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 112 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 113 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 114 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 115 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 116 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 117 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 118 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 120 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 121 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 122 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 123 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 124 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 125 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 126 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 127 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 128 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 132 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 133 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 134 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 135 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 136 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 137 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 138 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 139 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 140 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 141 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 142 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 148 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 149 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 150 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 151 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 152 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 153 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 154 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 156 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 157 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_6 + 158 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 159 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_6 + 160 + OFFSET_X, 1, -114.5 );

-- ** 音 ** --
--電撃走る
SE026 = playSeVer2( spep_6 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE026, 137 );
SE027 = playSeVer2( spep_6 + 20, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE027, 122 );
SE028 = playSeVer2( spep_6 + 20, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 20, SE028, 120 );
SE029 = playSeVer2( spep_6 + 24, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE029, 120 );
SE030 = playSeVer2( spep_6 + 24, 1243, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE030, 85 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, MAX_FRAME_6 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_6 + 56 );
endPhase( spep_6 +  MAX_FRAME_6 - 4 );  -- 158

end
