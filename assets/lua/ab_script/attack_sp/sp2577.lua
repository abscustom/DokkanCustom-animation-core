-- 1027040: LR_超一星龍_必殺技_ドラゴンサンダー
-- sp_effect_a1_00403
-- sp2577

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162028;  -- 突進 ef_001
SP_002 = 162030;  -- 叩きつけ ef_002
SP_003 = 162032;  -- 追いかける ef_003
SP_004 = 162034;  -- 後ろから殴る ef_004
SP_005 = 162036;  -- 地上に瞬間移動 ef_005
SP_006 = 162038;  -- 棘が伸びる ef_006
SP_007 = 162040;  -- 敵に突き刺さる（前） ef_007
SP_009 = 162044;  -- 敵に突き刺さる（後） ef_009
SP_008 = 162042;  -- ビリビリ攻撃（前） ef_008
SP_010 = 162045;  -- ビリビリ攻撃（後） ef_010

-- 敵側
SP_001r = 162029;  -- 突進 ef_001r
SP_002r = 162031;  -- 叩きつけ ef_002r
SP_003r = 162033;  -- 追いかける ef_003r
SP_004r = 162035;  -- 後ろから殴る ef_004r
SP_005r = 162037;  -- 地上に瞬間移動 ef_005r
SP_006r = 162039;  -- 棘が伸びる ef_006r
SP_007r = 162041;  -- 敵に突き刺さる（前） ef_007r
SP_008r = 162043;  -- ビリビリ攻撃（前） ef_008r

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
SE003 = playSeVer2( spep_0 + 66, 1004, "", 0, 0, 0, -1);
--向かっていく
SE004 = playSeVer2( spep_0 + 82, 9, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 82, 1182, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

------------------------------------------------------
-- 叩きつけ ef_002 (98F)
------------------------------------------------------
MAX_FRAME_1 = 98;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_1 , SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, SP_02, 0 );
setEffAlphaKey( spep_1 + 0, SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, SP_02, 255 );

-- ** 音 ** --
--向かってくる
SE006 = playSeVer2( spep_1 + 2, 1314, "",spep_1 + 88, 0, 16, -1);
SE007 = playSeVer2( spep_1 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE007, 56 );
setTimeStretch( SE007, 1.11, 30, 4 );
SE008 = playSeVer2( spep_1 + 2, 1258, "",spep_1 + 92, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 2, SE008, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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

-- ** 敵キャラクター ** --

setDisp( spep_1 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 62 + OFFSET_X, 1, 0 );
setDisp( spep_1 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 40 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 72 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 40 + OFFSET_X, 1, 167.3, -879.6 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 156.5, -830 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 145.6, -780 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 134.6, -729.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 123.6, -679.1 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 112.5, -628.2 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 101.3, -576.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 90.1, -525.4 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 78.8, -473.6 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 67.4, -421.4 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 56, -368.9 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 56, -368.9 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 316.7, -236.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 346.6, -254.3 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 402.6, -303.8 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 487.2, -363.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 595.6, -453.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 714.8, -539.7 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 827.8, -631.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 921.3, -700.1 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 988.5, -755.5 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 1029, -784.2 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 1045, -799.4 , 0 );

setScaleKey( spep_1 + 40 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.28, 2.28 );

setRotateKey( spep_1 + 40 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, 44 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, 45.3 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, 47 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, 47.5 );

-- ** 音 ** --
--叩きつける
SE009 = playSeVer2( spep_1 + 60, 1123, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 98

------------------------------------------------------
-- 追いかける ef_003 (148F)
------------------------------------------------------
MAX_FRAME_2 = 148;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 音 ** --
--ビル激突１
SE010 = playSeVer2( spep_2 + 6, 1061, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 8, 1023, "", 0, 0, 0, -1);
--敵飛んでいく
SE011 = playSeVer2( spep_2 + 6, 1121, "",spep_2 + 182, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 71 );
--ビル激突２
SE013 = playSeVer2( spep_2 + 22, 1061, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 24, 1011, "", 0, 0, 0, -1);
--超一星龍飛んでいく
SE015 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 98, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE015, 79 );
SE016 = playSeVer2( spep_2 + 40, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 54, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE017, 120 );
SE018 = playSeVer2( spep_2 + 60, 1278, "",spep_2 + 182, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 60, SE018, 71 );
SE019 = playSeVer2( spep_2 + 104, 1019, "",spep_2 + 164, 0, 26, -1);
--加速する
SE020 = playSeVer2( spep_2 + 130, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE020, 151 );
setPitch( spep_2 + 138, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );
SE021 = playSeVer2( spep_2 + 130, 1182, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + MAX_FRAME_2 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 148

------------------------------------------------------
-- 後ろから殴る ef_004 (76F)
------------------------------------------------------
MAX_FRAME_3 = 76;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 , SP_004, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 + 32 + OFFSET_X, 1, 106 );

setMoveKey( spep_3 + 0, 1, -1492, -1040.4 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -1089.1, -756.6 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -890.4, -617.7 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -749.2, -519.4 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -639.2, -443 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -549.6, -381 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -474.9, -329.4 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -411.7, -285.7 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -357.7, -248.5 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -311.5, -216.8 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -272, -189.5 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -238.3, -166.4 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -210, -147 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -186.5, -130.9 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -167.7, -117.9 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -152.6, -113.9 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -76, -178.1 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, -82.2, -186.6 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, -121.2, -199.5 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, -193.9, -258.7 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, -294.6, -320.3 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_X, 1, -402.3, -401 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_X, 1, -495.5, -459.8 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_X, 1, -566.1, -512.7 , 0 );
setMoveKey( spep_3 + 48 + OFFSET_X, 1, -615.2, -542.8 , 0 );
setMoveKey( spep_3 + 50 + OFFSET_X, 1, -646.3, -567.5 , 0 );
setMoveKey( spep_3 + 52 + OFFSET_X, 1, -663, -576.2 , 0 );
setMoveKey( spep_3 + 54 + OFFSET_X, 1, -668, -582.3 , 0 );

setScaleKey( spep_3 + 0, 1, 5.49, 5.49 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_3 + 42 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_3 + 44 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_3 + 46 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_3 + 48 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_3 + 50 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_3 + 52 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_3 + 54 + OFFSET_X, 1, 4.49, 4.49 );

setRotateKey( spep_3 + 0, 1, 29.3 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 39 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, 46 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, -98.7 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, -99 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_3 + 42 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_3 + 44 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_3 + 46 + OFFSET_X, 1, -100.6 );
setRotateKey( spep_3 + 48 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_3 + 50 + OFFSET_X, 1, -100.9 );
setRotateKey( spep_3 + 52 + OFFSET_X, 1, -101 );
setRotateKey( spep_3 + 54 + OFFSET_X, 1, -101 );

-- ** 音 ** --
--瞬間移動
SE022 = playSeVer2( spep_3 + 8, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE022, 58 );
SE023 = playSeVer2( spep_3 + 10, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE023, 114 );
--殴り飛ばす
SE024 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 34, 1187, "", 0, 0, 0, 0.6);
--瞬間移動２
SE026 = playSeVer2( spep_3 + 58, 1245, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 58, SE026, 71 );
SE027 = playSeVer2( spep_3 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE027, 122 );
--敵飛んでくる
SE028 = playSeVer2( spep_3 + 68, 1121, "",spep_3 + 258, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 68, SE028, 71 );
SE029 = playSeVer2( spep_3 + 68, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE029, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 78

------------------------------------------------------
-- 地上に瞬間移動 ef_005 (36F)
------------------------------------------------------
MAX_FRAME_4 = 36;

-- ** エフェクト等 ** --
SP_05 = entryEffect( spep_4 + 1, SP_005, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_05, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_05, 0 );
setEffAlphaKey( spep_4 + 0, SP_05, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_05, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 37 + OFFSET_X, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 768.5, 802.8 , 0 );
setMoveKey( spep_4 + 2 + OFFSET_X, 1, 594.5, 611.2 , 0 );
setMoveKey( spep_4 + 4 + OFFSET_X, 1, 498.9, 506.1 , 0 );
setMoveKey( spep_4 + 6 + OFFSET_X, 1, 428.4, 428.6 , 0 );
setMoveKey( spep_4 + 8 + OFFSET_X, 1, 371.6, 366.4 , 0 );
setMoveKey( spep_4 + 10 + OFFSET_X, 1, 323.8, 314.1 , 0 );
setMoveKey( spep_4 + 12 + OFFSET_X, 1, 282.6, 269 , 0 );
setMoveKey( spep_4 + 14 + OFFSET_X, 1, 246.4, 229.5 , 0 );
setMoveKey( spep_4 + 16 + OFFSET_X, 1, 214.3, 194.5 , 0 );
setMoveKey( spep_4 + 18 + OFFSET_X, 1, 185.6, 163.2 , 0 );
setMoveKey( spep_4 + 20 + OFFSET_X, 1, 159.7, 135.1 , 0 );
setMoveKey( spep_4 + 22 + OFFSET_X, 1, 136.4, 109.7 , 0 );
setMoveKey( spep_4 + 24 + OFFSET_X, 1, 115.3, 86.9 , 0 );
setMoveKey( spep_4 + 26 + OFFSET_X, 1, 96.3, 66.3 , 0 );
setMoveKey( spep_4 + 28 + OFFSET_X, 1, 79.1, 47.7 , 0 );
setMoveKey( spep_4 + 30 + OFFSET_X, 1, 63.7, 31.1 , 0 );
setMoveKey( spep_4 + 32 + OFFSET_X, 1, 88.2, 74.9 , 0 );
setMoveKey( spep_4 + 34 + OFFSET_X, 1, 109.2, 114.7 , 0 );
setMoveKey( spep_4 + 36 + OFFSET_X, 1, 127.8, 151.9 , 0 );
setMoveKey( spep_4 + 37 + OFFSET_X, 1, 127.8, 151.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.72, 5.72 );
setScaleKey( spep_4 + 2 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_4 + 4 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_4 + 6 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_4 + 8 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_4 + 10 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_4 + 12 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_4 + 14 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_4 + 16 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 18 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 20 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_4 + 22 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 24 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 26 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 28 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 30 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 34 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 36 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 37 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_4 + 0, 1, -145 );
setRotateKey( spep_4 + 18 + OFFSET_X, 1, -145 );
setRotateKey( spep_4 + 20 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_4 + 36 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_4 + 37 + OFFSET_X, 1, -144.9 );

-- ** 音 ** --
--瞬間移動３
SE030 = playSeVer2( spep_4 + 4, 1245, "", spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 4, SE030, 71 );
SE031 = playSeVer2( spep_4 + 4, 1109, "", spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 4, SE031, 76 );
stopSeIfDoubleSpeed( spep_4 + 4, SE031 );
--ズーム
SE032 = playSeVer2( spep_4 + 10, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_5 = spep_4 + MAX_FRAME_4;  -- 38

------------------------------------------------------
-- 棘が伸びる ef_006 (78F)
------------------------------------------------------
MAX_FRAME_5 = 78;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_5 + 0, SP_006, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_5 + MAX_FRAME_5, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_5 + MAX_FRAME_5, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, SP_06, 0 );
setEffRotateKey( spep_5 + MAX_FRAME_5, SP_06, 0 );
setEffAlphaKey( spep_5 + 0, SP_06, 255 );
setEffAlphaKey( spep_5 + MAX_FRAME_5, SP_06, 255 );

-- ** 音 ** --
--ツノ伸びる
SE033 = playSeVer2( spep_5 + 32, 1293, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_5 + 32, SE033 );
SE034 = playSeVer2( spep_5 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 36, SE034, 77 );
SE035 = playSeVer2( spep_5 + 36, 1326, "",spep_5 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 36, SE035, 126 );
SE036 = playSeVer2( spep_5 + 36, 1320, "",spep_5 + 124, 0, 12, -1);
setSeVolumeByWorkId( spep_5 + 36, SE036, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, MAX_FRAME_5 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + MAX_FRAME_5 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + MAX_FRAME_5;  -- 78

------------------------------------------------------
-- 敵に突き刺さる（前） ef_007 (68F)
------------------------------------------------------
MAX_FRAME_6 = 68;

-- ** エフェクト等 ** --
SP_07 = entryEffect( spep_6 + 0, SP_007, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_07, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_07, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_07, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_07, 0 );
setEffAlphaKey( spep_6 + 0, SP_07, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_07, 255 );
SP_09 = entryEffect( spep_6 + 0, SP_009, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_09, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_09, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_09, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_09, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_09, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_09, 0 );
setEffAlphaKey( spep_6 + 0, SP_09, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_09, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0 , 1, 1 );
setDisp( spep_6 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_6 + 0 , 1, 107 );
changeAnime( spep_6 + 26 + OFFSET_X, 1, 106 );

setMoveKey( spep_6 + 0, 1, 294.3, 454 , 0 );
setMoveKey( spep_6 + 2 + OFFSET_X, 1, 261.6, 370.9 , 0 );
setMoveKey( spep_6 + 4 + OFFSET_X, 1, 236.6, 307.5 , 0 );
setMoveKey( spep_6 + 6 + OFFSET_X, 1, 214.1, 250.2 , 0 );
setMoveKey( spep_6 + 8 + OFFSET_X, 1, 193.1, 196.8 , 0 );
setMoveKey( spep_6 + 10 + OFFSET_X, 1, 173.2, 146.3 , 0 );
setMoveKey( spep_6 + 12 + OFFSET_X, 1, 154.4, 98.6 , 0 );
setMoveKey( spep_6 + 14 + OFFSET_X, 1, 136.8, 53.8 , 0 );
setMoveKey( spep_6 + 16 + OFFSET_X, 1, 120.6, 12.9 , 0 );
setMoveKey( spep_6 + 18 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_6 + 25 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_6 + 26 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 27 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 28 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 29 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 30 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 31 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 32 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 34 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 35 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 36 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_6 + 37 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_6 + 38 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_6 + 39 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_6 + 40 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_6 + 41 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_6 + 42 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_6 + 43 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_6 + 44 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_6 + 45 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_6 + 46 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 47 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 48 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_6 + 49 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_6 + 50 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_6 + 51 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_6 + 52 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_6 + 53 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_6 + 54 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_6 + 55 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_6 + 56 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_6 + 57 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_6 + 58 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 59 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 60 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_6 + 61 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_6 + 62 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 63 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 64 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_6 + 65 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_6 + 66 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 67 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 68 + OFFSET_X, 1, 37.4, 73.3 , 0 );

setScaleKey( spep_6 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_6 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 6 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 8 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 10 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_6 + 12 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 14 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_6 + 16 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_6 + 18 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 25 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 26 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 68 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_6 + 0, 1, 116 );
setRotateKey( spep_6 + 25 + OFFSET_X, 1, 116 );
setRotateKey( spep_6 + 26 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 27 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 28 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 29 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 30 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 31 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 32 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 34 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 35 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 36 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 37 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 38 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 40 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 41 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 42 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 46 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 47 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 48 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 50 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 51 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 52 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 56 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 57 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 58 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 59 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 60 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 61 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 62 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 64 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 65 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 66 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 67 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 68 + OFFSET_X, 1, -128.6 );

-- ** 音 ** --
--ツノ突き刺さる
SE037 = playSeVer2( spep_6 + 26, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 28, 1153, "",spep_6 + 96, 0, 8, -1);
SE039 = playSeVer2( spep_6 + 28, 1169, "",spep_6 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_6 + 28, SE039, 71 );
SE040 = playSeVer2( spep_6 + 28, 1011, "",spep_6 + 102, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, MAX_FRAME_6 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + MAX_FRAME_6 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + MAX_FRAME_6;  -- 68

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_8 = showCardCutin(spep_7, 0);

------------------------------------------------------
-- ビリビリ攻撃（前） ef_008 (160F)
------------------------------------------------------
MAX_FRAME_8 = 160;

-- ** エフェクト等 ** --
SP_08 = entryEffect( spep_8 + 0, SP_008, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, SP_08, 0, 0 , 0 );
setEffMoveKey( spep_8 + MAX_FRAME_8, SP_08, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, SP_08, 1.0, 1.0 );
setEffScaleKey( spep_8 + MAX_FRAME_8, SP_08, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, SP_08, 0 );
setEffRotateKey( spep_8 + MAX_FRAME_8, SP_08, 0 );
setEffAlphaKey( spep_8 + 0, SP_08, 255 );
setEffAlphaKey( spep_8 + MAX_FRAME_8, SP_08, 255 );
SP_10 = entryEffect( spep_8 + 0, SP_010, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, SP_10, 0, 0 , 0 );
setEffMoveKey( spep_8 + MAX_FRAME_8, SP_10, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, SP_10, 1.0, 1.0 );
setEffScaleKey( spep_8 + MAX_FRAME_8, SP_10, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, SP_10, 0 );
setEffRotateKey( spep_8 + MAX_FRAME_8, SP_10, 0 );
setEffAlphaKey( spep_8 + 0, SP_10, 255 );
setEffAlphaKey( spep_8 + MAX_FRAME_8, SP_10, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, 54.9, 587.6 , 0 );
setMoveKey( spep_8 + 2 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 3 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 4 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 5 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 6 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 7 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 8 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 9 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 10 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 11 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 12 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 13 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 14 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 15 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 16 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 17 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 18 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_8 + 29 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_8 + 30 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 31 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 32 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_8 + 33 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_8 + 34 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 35 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 36 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_8 + 37 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_8 + 38 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_8 + 39 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_8 + 40 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_8 + 41 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_8 + 42 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_8 + 43 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_8 + 44 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_8 + 45 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_8 + 46 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_8 + 47 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_8 + 48 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_8 + 49 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_8 + 50 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_8 + 51 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_8 + 52 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_8 + 53 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_8 + 54 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_8 + 55 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_8 + 56 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_8 + 57 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_8 + 58 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_8 + 59 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_8 + 60 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_8 + 61 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_8 + 62 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_8 + 63 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_8 + 64 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_8 + 65 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_8 + 66 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_8 + 67 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_8 + 68 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_8 + 69 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_8 + 70 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_8 + 71 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_8 + 72 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_8 + 73 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_8 + 74 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_8 + 75 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_8 + 76 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_8 + 77 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_8 + 78 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_8 + 79 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_8 + 80 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_8 + 81 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_8 + 82 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_8 + 83 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_8 + 84 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_8 + 85 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_8 + 86 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_8 + 87 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_8 + 88 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_8 + 89 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_8 + 90 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_8 + 91 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_8 + 92 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_8 + 93 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_8 + 94 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_8 + 95 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_8 + 96 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_8 + 97 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_8 + 98 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_8 + 99 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_8 + 100 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_8 + 101 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_8 + 102 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_8 + 103 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_8 + 104 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_8 + 105 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_8 + 106 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_8 + 107 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_8 + 108 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_8 + 109 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_8 + 110 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_8 + 111 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_8 + 112 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_8 + 113 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_8 + 114 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_8 + 115 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_8 + 116 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_8 + 117 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_8 + 118 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_8 + 119 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_8 + 120 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_8 + 121 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_8 + 122 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_8 + 123 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_8 + 124 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_8 + 125 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_8 + 126 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_8 + 127 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_8 + 128 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_8 + 129 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_8 + 130 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_8 + 131 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_8 + 132 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_8 + 133 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_8 + 134 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_8 + 135 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_8 + 136 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_8 + 137 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_8 + 138 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_8 + 139 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_8 + 140 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_8 + 141 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_8 + 142 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_8 + 143 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_8 + 144 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_8 + 145 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_8 + 146 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_8 + 147 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_8 + 148 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_8 + 149 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_8 + 150 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_8 + 151 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_8 + 152 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_8 + 153 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_8 + 154 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_8 + 155 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_8 + 156 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_8 + 157 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_8 + 158 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_8 + 159 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_8 + 160 + OFFSET_X, 1, -10.6, 84.9 , 0 );

setScaleKey( spep_8 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 30 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 42 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 43 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 44 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_8 + 45 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_8 + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 47 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 48 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_8 + 49 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_8 + 50 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 51 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 52 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 53 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 54 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_8 + 55 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_8 + 56 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_8 + 57 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_8 + 58 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 59 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 60 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 61 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 62 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 63 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 64 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 65 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 66 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 67 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_8 + 69 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_8 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 71 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 72 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 76 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 84 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 85 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 86 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 96 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 97 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 98 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 106 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 107 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 108 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 116 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 117 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 118 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 128 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 129 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 130 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 138 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 139 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 140 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 148 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 149 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 150 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 158 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 159 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 160 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_8 + 0, 1, -115.8 );
setRotateKey( spep_8 + 2 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 3 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 4 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 5 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 6 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 7 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 8 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 9 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 10 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 11 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 12 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 13 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 14 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 15 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 16 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 17 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 18 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 29 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 30 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 31 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 32 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 33 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 34 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 40 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 41 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 42 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 43 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 44 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 45 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 46 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 48 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 49 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 50 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 51 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 52 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 53 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 54 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 55 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 56 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 60 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 61 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 62 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 63 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 64 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 65 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 66 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 67 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 68 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 69 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 70 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 76 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 77 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 78 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 79 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 80 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 81 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 82 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 84 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 85 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 86 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 87 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 88 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 89 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 90 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 91 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 92 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 96 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 97 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 98 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 99 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 100 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 101 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 102 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 103 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 104 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 105 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 106 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 112 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 113 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 114 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 115 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 116 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 117 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 118 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 120 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 121 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 122 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 123 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 124 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 125 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 126 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 127 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 128 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 132 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 133 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 134 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 135 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 136 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 137 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 138 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 139 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 140 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 141 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 142 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 148 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 149 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 150 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 151 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 152 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 153 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 154 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 156 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 157 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 158 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 159 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 160 + OFFSET_X, 1, -114.5 );

-- ** 音 ** --
--電撃走る
SE042 = playSeVer2( spep_8 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE042, 137 );
SE043 = playSeVer2( spep_8 + 20, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE043, 122 );
SE044 = playSeVer2( spep_8 + 20, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE044, 120 );
SE045 = playSeVer2( spep_8 + 24, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 24, SE045, 120 );
SE046 = playSeVer2( spep_8 + 24, 1243, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 24, SE046, 85 );

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, MAX_FRAME_8 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_8 + 58 );
endPhase( spep_8 +  MAX_FRAME_8 - 2);  -- 160

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
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
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
SE003 = playSeVer2( spep_0 + 66, 1004, "", 0, 0, 0, -1);
--向かっていく
SE004 = playSeVer2( spep_0 + 82, 9, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 82, 1182, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

------------------------------------------------------
-- 叩きつけ ef_002 (98F)
------------------------------------------------------
MAX_FRAME_1 = 98;

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

-- ** 音 ** --
--向かってくる
SE006 = playSeVer2( spep_1 + 2, 1314, "",spep_1 + 88, 0, 16, -1);
SE007 = playSeVer2( spep_1 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE007, 56 );
setTimeStretch( SE007, 1.11, 30, 4 );
SE008 = playSeVer2( spep_1 + 2, 1258, "",spep_1 + 92, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 2, SE008, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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

-- ** 敵キャラクター ** --

setDisp( spep_1 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 62 + OFFSET_X, 1, 0 );
setDisp( spep_1 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 40 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 72 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 40 + OFFSET_X, 1, 167.3, -879.6 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 156.5, -830 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 145.6, -780 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 134.6, -729.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 123.6, -679.1 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 112.5, -628.2 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 101.3, -576.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 90.1, -525.4 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 78.8, -473.6 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 67.4, -421.4 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 56, -368.9 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 56, -368.9 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 316.7, -236.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 346.6, -254.3 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 402.6, -303.8 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 487.2, -363.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 595.6, -453.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 714.8, -539.7 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 827.8, -631.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 921.3, -700.1 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 988.5, -755.5 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 1029, -784.2 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 1045, -799.4 , 0 );

setScaleKey( spep_1 + 40 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.28, 2.28 );

setRotateKey( spep_1 + 40 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, 44 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, 45.3 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, 47 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, 47.5 );

-- ** 音 ** --
--叩きつける
SE009 = playSeVer2( spep_1 + 60, 1123, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 98

------------------------------------------------------
-- 追いかける ef_003 (148F)
------------------------------------------------------
MAX_FRAME_2 = 148;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 音 ** --
--ビル激突１
SE010 = playSeVer2( spep_2 + 6, 1061, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 8, 1023, "", 0, 0, 0, -1);
--敵飛んでいく
SE011 = playSeVer2( spep_2 + 6, 1121, "",spep_2 + 182, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 71 );
--ビル激突２
SE013 = playSeVer2( spep_2 + 22, 1061, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 24, 1011, "", 0, 0, 0, -1);
--超一星龍飛んでいく
SE015 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 98, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE015, 79 );
SE016 = playSeVer2( spep_2 + 40, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 54, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE017, 120 );
SE018 = playSeVer2( spep_2 + 60, 1278, "",spep_2 + 182, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 60, SE018, 71 );
SE019 = playSeVer2( spep_2 + 104, 1019, "",spep_2 + 164, 0, 26, -1);
--加速する
SE020 = playSeVer2( spep_2 + 130, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE020, 151 );
setPitch( spep_2 + 138, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );
SE021 = playSeVer2( spep_2 + 130, 1182, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + MAX_FRAME_2 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 148

------------------------------------------------------
-- 後ろから殴る ef_004 (76F)
------------------------------------------------------
MAX_FRAME_3 = 76;

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 + 32 + OFFSET_X, 1, 106 );

setMoveKey( spep_3 + 0, 1, -1492, -1040.4 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -1089.1, -756.6 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -890.4, -617.7 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -749.2, -519.4 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -639.2, -443 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -549.6, -381 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -474.9, -329.4 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -411.7, -285.7 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -357.7, -248.5 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -311.5, -216.8 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -272, -189.5 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -238.3, -166.4 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -210, -147 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -186.5, -130.9 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -167.7, -117.9 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -152.6, -113.9 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -76, -178.1 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, -82.2, -186.6 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, -121.2, -199.5 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, -193.9, -258.7 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, -294.6, -320.3 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_X, 1, -402.3, -401 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_X, 1, -495.5, -459.8 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_X, 1, -566.1, -512.7 , 0 );
setMoveKey( spep_3 + 48 + OFFSET_X, 1, -615.2, -542.8 , 0 );
setMoveKey( spep_3 + 50 + OFFSET_X, 1, -646.3, -567.5 , 0 );
setMoveKey( spep_3 + 52 + OFFSET_X, 1, -663, -576.2 , 0 );
setMoveKey( spep_3 + 54 + OFFSET_X, 1, -668, -582.3 , 0 );

setScaleKey( spep_3 + 0, 1, 5.49, 5.49 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_3 + 42 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_3 + 44 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_3 + 46 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_3 + 48 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_3 + 50 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_3 + 52 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_3 + 54 + OFFSET_X, 1, 4.49, 4.49 );

setRotateKey( spep_3 + 0, 1, 29.3 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 39 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, 46 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, -98.5 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, -98.7 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, -99 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_3 + 42 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_3 + 44 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_3 + 46 + OFFSET_X, 1, -100.6 );
setRotateKey( spep_3 + 48 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_3 + 50 + OFFSET_X, 1, -100.9 );
setRotateKey( spep_3 + 52 + OFFSET_X, 1, -101 );
setRotateKey( spep_3 + 54 + OFFSET_X, 1, -101 );

-- ** 音 ** --
--瞬間移動
SE022 = playSeVer2( spep_3 + 8, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE022, 58 );
SE023 = playSeVer2( spep_3 + 10, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE023, 114 );
--殴り飛ばす
SE024 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 34, 1187, "", 0, 0, 0, 0.6);
--瞬間移動２
SE026 = playSeVer2( spep_3 + 58, 1245, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 58, SE026, 71 );
SE027 = playSeVer2( spep_3 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE027, 122 );
--敵飛んでくる
SE028 = playSeVer2( spep_3 + 68, 1121, "",spep_3 + 258, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 68, SE028, 71 );
SE029 = playSeVer2( spep_3 + 68, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE029, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 78

------------------------------------------------------
-- 地上に瞬間移動 ef_005 (36F)
------------------------------------------------------
MAX_FRAME_4 = 36;

-- ** エフェクト等 ** --
SP_05 = entryEffect( spep_4 + 1, SP_005r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_05, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_05, 0 );
setEffAlphaKey( spep_4 + 0, SP_05, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_05, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 37 + OFFSET_X, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 768.5, 802.8 , 0 );
setMoveKey( spep_4 + 2 + OFFSET_X, 1, 594.5, 611.2 , 0 );
setMoveKey( spep_4 + 4 + OFFSET_X, 1, 498.9, 506.1 , 0 );
setMoveKey( spep_4 + 6 + OFFSET_X, 1, 428.4, 428.6 , 0 );
setMoveKey( spep_4 + 8 + OFFSET_X, 1, 371.6, 366.4 , 0 );
setMoveKey( spep_4 + 10 + OFFSET_X, 1, 323.8, 314.1 , 0 );
setMoveKey( spep_4 + 12 + OFFSET_X, 1, 282.6, 269 , 0 );
setMoveKey( spep_4 + 14 + OFFSET_X, 1, 246.4, 229.5 , 0 );
setMoveKey( spep_4 + 16 + OFFSET_X, 1, 214.3, 194.5 , 0 );
setMoveKey( spep_4 + 18 + OFFSET_X, 1, 185.6, 163.2 , 0 );
setMoveKey( spep_4 + 20 + OFFSET_X, 1, 159.7, 135.1 , 0 );
setMoveKey( spep_4 + 22 + OFFSET_X, 1, 136.4, 109.7 , 0 );
setMoveKey( spep_4 + 24 + OFFSET_X, 1, 115.3, 86.9 , 0 );
setMoveKey( spep_4 + 26 + OFFSET_X, 1, 96.3, 66.3 , 0 );
setMoveKey( spep_4 + 28 + OFFSET_X, 1, 79.1, 47.7 , 0 );
setMoveKey( spep_4 + 30 + OFFSET_X, 1, 63.7, 31.1 , 0 );
setMoveKey( spep_4 + 32 + OFFSET_X, 1, 88.2, 74.9 , 0 );
setMoveKey( spep_4 + 34 + OFFSET_X, 1, 109.2, 114.7 , 0 );
setMoveKey( spep_4 + 36 + OFFSET_X, 1, 127.8, 151.9 , 0 );
setMoveKey( spep_4 + 37 + OFFSET_X, 1, 127.8, 151.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.72, 5.72 );
setScaleKey( spep_4 + 2 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_4 + 4 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_4 + 6 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_4 + 8 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_4 + 10 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_4 + 12 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_4 + 14 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_4 + 16 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 18 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 20 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_4 + 22 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 24 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 26 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 28 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 30 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 34 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 36 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 37 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_4 + 0, 1, -145 );
setRotateKey( spep_4 + 18 + OFFSET_X, 1, -145 );
setRotateKey( spep_4 + 20 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_4 + 36 + OFFSET_X, 1, -144.9 );
setRotateKey( spep_4 + 37 + OFFSET_X, 1, -144.9 );

-- ** 音 ** --
--瞬間移動３
SE030 = playSeVer2( spep_4 + 4, 1245, "", spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 4, SE030, 71 );
SE031 = playSeVer2( spep_4 + 4, 1109, "", spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 4, SE031, 76 );
stopSeIfDoubleSpeed( spep_4 + 4, SE031 );
--ズーム
SE032 = playSeVer2( spep_4 + 10, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_5 = spep_4 + MAX_FRAME_4;  -- 38

------------------------------------------------------
-- 棘が伸びる ef_006 (78F)
------------------------------------------------------
MAX_FRAME_5 = 78;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_5 + 0, SP_006r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_5 + MAX_FRAME_5, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_5 + MAX_FRAME_5, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, SP_06, 0 );
setEffRotateKey( spep_5 + MAX_FRAME_5, SP_06, 0 );
setEffAlphaKey( spep_5 + 0, SP_06, 255 );
setEffAlphaKey( spep_5 + MAX_FRAME_5, SP_06, 255 );

-- ** 音 ** --
--ツノ伸びる
SE033 = playSeVer2( spep_5 + 32, 1293, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_5 + 32, SE033 );
SE034 = playSeVer2( spep_5 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 36, SE034, 77 );
SE035 = playSeVer2( spep_5 + 36, 1326, "",spep_5 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 36, SE035, 126 );
SE036 = playSeVer2( spep_5 + 36, 1320, "",spep_5 + 124, 0, 12, -1);
setSeVolumeByWorkId( spep_5 + 36, SE036, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, MAX_FRAME_5 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
--entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + MAX_FRAME_5 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + MAX_FRAME_5;  -- 78

------------------------------------------------------
-- 敵に突き刺さる（前） ef_007 (68F)
------------------------------------------------------
MAX_FRAME_6 = 68;

-- ** エフェクト等 ** --
SP_07 = entryEffect( spep_6 + 0, SP_007r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_07, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_07, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_07, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_07, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_07, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_07, 0 );
setEffAlphaKey( spep_6 + 0, SP_07, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_07, 255 );
SP_09 = entryEffect( spep_6 + 0, SP_009, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, SP_09, 0, 0 , 0 );
setEffMoveKey( spep_6 + MAX_FRAME_6, SP_09, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, SP_09, 1.0, 1.0 );
setEffScaleKey( spep_6 + MAX_FRAME_6, SP_09, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, SP_09, 0 );
setEffRotateKey( spep_6 + MAX_FRAME_6, SP_09, 0 );
setEffAlphaKey( spep_6 + 0, SP_09, 255 );
setEffAlphaKey( spep_6 + MAX_FRAME_6, SP_09, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0 , 1, 1 );
setDisp( spep_6 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_6 + 0 , 1, 107 );
changeAnime( spep_6 + 26 + OFFSET_X, 1, 106 );

setMoveKey( spep_6 + 0, 1, 294.3, 454 , 0 );
setMoveKey( spep_6 + 2 + OFFSET_X, 1, 261.6, 370.9 , 0 );
setMoveKey( spep_6 + 4 + OFFSET_X, 1, 236.6, 307.5 , 0 );
setMoveKey( spep_6 + 6 + OFFSET_X, 1, 214.1, 250.2 , 0 );
setMoveKey( spep_6 + 8 + OFFSET_X, 1, 193.1, 196.8 , 0 );
setMoveKey( spep_6 + 10 + OFFSET_X, 1, 173.2, 146.3 , 0 );
setMoveKey( spep_6 + 12 + OFFSET_X, 1, 154.4, 98.6 , 0 );
setMoveKey( spep_6 + 14 + OFFSET_X, 1, 136.8, 53.8 , 0 );
setMoveKey( spep_6 + 16 + OFFSET_X, 1, 120.6, 12.9 , 0 );
setMoveKey( spep_6 + 18 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_6 + 25 + OFFSET_X, 1, 107.3, -21 , 0 );
setMoveKey( spep_6 + 26 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 27 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 28 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 29 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 30 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 31 + OFFSET_X, 1, 38.9, 68.6 , 0 );
setMoveKey( spep_6 + 32 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 34 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 35 + OFFSET_X, 1, 37.7, 72.2 , 0 );
setMoveKey( spep_6 + 36 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_6 + 37 + OFFSET_X, 1, 36.7, 73 , 0 );
setMoveKey( spep_6 + 38 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_6 + 39 + OFFSET_X, 1, 39.5, 69.5 , 0 );
setMoveKey( spep_6 + 40 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_6 + 41 + OFFSET_X, 1, 35.4, 75.6 , 0 );
setMoveKey( spep_6 + 42 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_6 + 43 + OFFSET_X, 1, 40.3, 66.7 , 0 );
setMoveKey( spep_6 + 44 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_6 + 45 + OFFSET_X, 1, 36.6, 70.5 , 0 );
setMoveKey( spep_6 + 46 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 47 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 48 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_6 + 49 + OFFSET_X, 1, 35.1, 73.5 , 0 );
setMoveKey( spep_6 + 50 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_6 + 51 + OFFSET_X, 1, 39, 71 , 0 );
setMoveKey( spep_6 + 52 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_6 + 53 + OFFSET_X, 1, 36.5, 69.7 , 0 );
setMoveKey( spep_6 + 54 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_6 + 55 + OFFSET_X, 1, 40.3, 67.4 , 0 );
setMoveKey( spep_6 + 56 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_6 + 57 + OFFSET_X, 1, 36.5, 69.9 , 0 );
setMoveKey( spep_6 + 58 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 59 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 60 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_6 + 61 + OFFSET_X, 1, 36.7, 69.9 , 0 );
setMoveKey( spep_6 + 62 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 63 + OFFSET_X, 1, 39.1, 71 , 0 );
setMoveKey( spep_6 + 64 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_6 + 65 + OFFSET_X, 1, 35.9, 73.3 , 0 );
setMoveKey( spep_6 + 66 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 67 + OFFSET_X, 1, 40.2, 67.4 , 0 );
setMoveKey( spep_6 + 68 + OFFSET_X, 1, 37.4, 73.3 , 0 );

setScaleKey( spep_6 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_6 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 6 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 8 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 10 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_6 + 12 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 14 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_6 + 16 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_6 + 18 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 25 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 26 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_6 + 68 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_6 + 0, 1, 116 );
setRotateKey( spep_6 + 25 + OFFSET_X, 1, 116 );
setRotateKey( spep_6 + 26 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 27 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 28 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 29 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 30 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 31 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 32 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 34 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 35 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 36 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 37 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 38 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 40 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 41 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 42 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 46 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 47 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 48 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 50 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 51 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 52 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 56 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 57 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 58 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 59 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 60 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 61 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 62 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 64 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 65 + OFFSET_X, 1, -128.6 );
setRotateKey( spep_6 + 66 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 67 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_6 + 68 + OFFSET_X, 1, -128.6 );

-- ** 音 ** --
--ツノ突き刺さる
SE037 = playSeVer2( spep_6 + 26, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 28, 1153, "",spep_6 + 96, 0, 8, -1);
SE039 = playSeVer2( spep_6 + 28, 1169, "",spep_6 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_6 + 28, SE039, 71 );
SE040 = playSeVer2( spep_6 + 28, 1011, "",spep_6 + 102, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, MAX_FRAME_6 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + MAX_FRAME_6 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + MAX_FRAME_6;  -- 68

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_8 = showCardCutin(spep_7, 0);

------------------------------------------------------
-- ビリビリ攻撃（前） ef_008 (160F)
------------------------------------------------------
MAX_FRAME_8 = 160;

-- ** エフェクト等 ** --
SP_08 = entryEffect( spep_8 + 0, SP_008r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, SP_08, 0, 0 , 0 );
setEffMoveKey( spep_8 + MAX_FRAME_8, SP_08, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, SP_08, 1.0, 1.0 );
setEffScaleKey( spep_8 + MAX_FRAME_8, SP_08, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, SP_08, 0 );
setEffRotateKey( spep_8 + MAX_FRAME_8, SP_08, 0 );
setEffAlphaKey( spep_8 + 0, SP_08, 255 );
setEffAlphaKey( spep_8 + MAX_FRAME_8, SP_08, 255 );
SP_10 = entryEffect( spep_8 + 0, SP_010, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, SP_10, 0, 0 , 0 );
setEffMoveKey( spep_8 + MAX_FRAME_8, SP_10, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, SP_10, 1.0, 1.0 );
setEffScaleKey( spep_8 + MAX_FRAME_8, SP_10, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, SP_10, 0 );
setEffRotateKey( spep_8 + MAX_FRAME_8, SP_10, 0 );
setEffAlphaKey( spep_8 + 0, SP_10, 255 );
setEffAlphaKey( spep_8 + MAX_FRAME_8, SP_10, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, 54.9, 587.6 , 0 );
setMoveKey( spep_8 + 2 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 3 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 4 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 5 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 6 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 7 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 8 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 9 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 10 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 11 + OFFSET_X, 1, 53.4, 582.7 , 0 );
setMoveKey( spep_8 + 12 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 13 + OFFSET_X, 1, 56.6, 592 , 0 );
setMoveKey( spep_8 + 14 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 15 + OFFSET_X, 1, 54, 584.7 , 0 );
setMoveKey( spep_8 + 16 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 17 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 18 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_8 + 29 + OFFSET_X, 1, 54.7, 588.5 , 0 );
setMoveKey( spep_8 + 30 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 31 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 32 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_8 + 33 + OFFSET_X, 1, 55.1, 588.5 , 0 );
setMoveKey( spep_8 + 34 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 35 + OFFSET_X, 1, 54.9, 588.6 , 0 );
setMoveKey( spep_8 + 36 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_8 + 37 + OFFSET_X, 1, 54.9, 584.7 , 0 );
setMoveKey( spep_8 + 38 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_8 + 39 + OFFSET_X, 1, 54.9, 590.8 , 0 );
setMoveKey( spep_8 + 40 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_8 + 41 + OFFSET_X, 1, 54.9, 585.9 , 0 );
setMoveKey( spep_8 + 42 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_8 + 43 + OFFSET_X, 1, 55.1, 590.6 , 0 );
setMoveKey( spep_8 + 44 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_8 + 45 + OFFSET_X, 1, 46.9, 524.5 , 0 );
setMoveKey( spep_8 + 46 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_8 + 47 + OFFSET_X, 1, 41.2, 483.8 , 0 );
setMoveKey( spep_8 + 48 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_8 + 49 + OFFSET_X, 1, 35.9, 439.6 , 0 );
setMoveKey( spep_8 + 50 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_8 + 51 + OFFSET_X, 1, 30.7, 405.1 , 0 );
setMoveKey( spep_8 + 52 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_8 + 53 + OFFSET_X, 1, 26.3, 367 , 0 );
setMoveKey( spep_8 + 54 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_8 + 55 + OFFSET_X, 1, 21.7, 335.4 , 0 );
setMoveKey( spep_8 + 56 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_8 + 57 + OFFSET_X, 1, 17.7, 301.1 , 0 );
setMoveKey( spep_8 + 58 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_8 + 59 + OFFSET_X, 1, 13.7, 272.6 , 0 );
setMoveKey( spep_8 + 60 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_8 + 61 + OFFSET_X, 1, 9.9, 241.6 , 0 );
setMoveKey( spep_8 + 62 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_8 + 63 + OFFSET_X, 1, 6.2, 216.7 , 0 );
setMoveKey( spep_8 + 64 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_8 + 65 + OFFSET_X, 1, 3, 189.6 , 0 );
setMoveKey( spep_8 + 66 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_8 + 67 + OFFSET_X, 1, 0, 169 , 0 );
setMoveKey( spep_8 + 68 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_8 + 69 + OFFSET_X, 1, -2.4, 149.7 , 0 );
setMoveKey( spep_8 + 70 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_8 + 71 + OFFSET_X, 1, -4.5, 133.1 , 0 );
setMoveKey( spep_8 + 72 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_8 + 73 + OFFSET_X, 1, -5.3, 128.7 , 0 );
setMoveKey( spep_8 + 74 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_8 + 75 + OFFSET_X, 1, -5.5, 125.6 , 0 );
setMoveKey( spep_8 + 76 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_8 + 77 + OFFSET_X, 1, -5.6, 126.8 , 0 );
setMoveKey( spep_8 + 78 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_8 + 79 + OFFSET_X, 1, -5.5, 123.8 , 0 );
setMoveKey( spep_8 + 80 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_8 + 81 + OFFSET_X, 1, -5.8, 122.8 , 0 );
setMoveKey( spep_8 + 82 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_8 + 83 + OFFSET_X, 1, -5.8, 123.2 , 0 );
setMoveKey( spep_8 + 84 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_8 + 85 + OFFSET_X, 1, -5.9, 120.9 , 0 );
setMoveKey( spep_8 + 86 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_8 + 87 + OFFSET_X, 1, -6.2, 121.5 , 0 );
setMoveKey( spep_8 + 88 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_8 + 89 + OFFSET_X, 1, -6.2, 118.9 , 0 );
setMoveKey( spep_8 + 90 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_8 + 91 + OFFSET_X, 1, -6.4, 119.5 , 0 );
setMoveKey( spep_8 + 92 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_8 + 93 + OFFSET_X, 1, -6.4, 117.1 , 0 );
setMoveKey( spep_8 + 94 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_8 + 95 + OFFSET_X, 1, -6.5, 117.5 , 0 );
setMoveKey( spep_8 + 96 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_8 + 97 + OFFSET_X, 1, -6.7, 115.3 , 0 );
setMoveKey( spep_8 + 98 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_8 + 99 + OFFSET_X, 1, -6.9, 115.8 , 0 );
setMoveKey( spep_8 + 100 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_8 + 101 + OFFSET_X, 1, -6.9, 113.3 , 0 );
setMoveKey( spep_8 + 102 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_8 + 103 + OFFSET_X, 1, -7.2, 113.8 , 0 );
setMoveKey( spep_8 + 104 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_8 + 105 + OFFSET_X, 1, -7.2, 111.5 , 0 );
setMoveKey( spep_8 + 106 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_8 + 107 + OFFSET_X, 1, -7.4, 112 , 0 );
setMoveKey( spep_8 + 108 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_8 + 109 + OFFSET_X, 1, -7.6, 109.6 , 0 );
setMoveKey( spep_8 + 110 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_8 + 111 + OFFSET_X, 1, -7.7, 108.7 , 0 );
setMoveKey( spep_8 + 112 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_8 + 113 + OFFSET_X, 1, -7.8, 109.2 , 0 );
setMoveKey( spep_8 + 114 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_8 + 115 + OFFSET_X, 1, -7.8, 106.7 , 0 );
setMoveKey( spep_8 + 116 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_8 + 117 + OFFSET_X, 1, -8, 107.2 , 0 );
setMoveKey( spep_8 + 118 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_8 + 119 + OFFSET_X, 1, -8, 104.9 , 0 );
setMoveKey( spep_8 + 120 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_8 + 121 + OFFSET_X, 1, -8.1, 105.3 , 0 );
setMoveKey( spep_8 + 122 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_8 + 123 + OFFSET_X, 1, -8.4, 103.1 , 0 );
setMoveKey( spep_8 + 124 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_8 + 125 + OFFSET_X, 1, -8.4, 103.4 , 0 );
setMoveKey( spep_8 + 126 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_8 + 127 + OFFSET_X, 1, -8.7, 101.1 , 0 );
setMoveKey( spep_8 + 128 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_8 + 129 + OFFSET_X, 1, -8.6, 101.4 , 0 );
setMoveKey( spep_8 + 130 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_8 + 131 + OFFSET_X, 1, -8.8, 99.2 , 0 );
setMoveKey( spep_8 + 132 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_8 + 133 + OFFSET_X, 1, -8.9, 99.7 , 0 );
setMoveKey( spep_8 + 134 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_8 + 135 + OFFSET_X, 1, -9.2, 97.4 , 0 );
setMoveKey( spep_8 + 136 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_8 + 137 + OFFSET_X, 1, -9.1, 97.8 , 0 );
setMoveKey( spep_8 + 138 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_8 + 139 + OFFSET_X, 1, -9.4, 95.4 , 0 );
setMoveKey( spep_8 + 140 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_8 + 141 + OFFSET_X, 1, -9.4, 95.8 , 0 );
setMoveKey( spep_8 + 142 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_8 + 143 + OFFSET_X, 1, -9.7, 93.6 , 0 );
setMoveKey( spep_8 + 144 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_8 + 145 + OFFSET_X, 1, -9.8, 94 , 0 );
setMoveKey( spep_8 + 146 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_8 + 147 + OFFSET_X, 1, -9.9, 91.7 , 0 );
setMoveKey( spep_8 + 148 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_8 + 149 + OFFSET_X, 1, -10, 92.2 , 0 );
setMoveKey( spep_8 + 150 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_8 + 151 + OFFSET_X, 1, -10, 89.7 , 0 );
setMoveKey( spep_8 + 152 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_8 + 153 + OFFSET_X, 1, -10.3, 90.2 , 0 );
setMoveKey( spep_8 + 154 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_8 + 155 + OFFSET_X, 1, -10.2, 87.9 , 0 );
setMoveKey( spep_8 + 156 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_8 + 157 + OFFSET_X, 1, -10.4, 86.9 , 0 );
setMoveKey( spep_8 + 158 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_8 + 159 + OFFSET_X, 1, -10.6, 87.5 , 0 );
setMoveKey( spep_8 + 160 + OFFSET_X, 1, -10.6, 84.9 , 0 );

setScaleKey( spep_8 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 30 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 42 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 43 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 44 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_8 + 45 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_8 + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 47 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 48 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_8 + 49 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_8 + 50 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 51 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 52 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 53 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 54 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_8 + 55 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_8 + 56 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_8 + 57 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_8 + 58 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 59 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 60 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 61 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 62 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 63 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 64 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 65 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 66 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 67 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_8 + 69 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_8 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 71 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 72 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 76 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 84 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 85 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 86 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 96 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 97 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_8 + 98 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 106 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 107 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 108 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 116 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 117 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_8 + 118 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 128 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 129 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_8 + 130 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 138 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 139 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 140 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 148 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 149 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 150 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 158 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 159 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 160 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_8 + 0, 1, -115.8 );
setRotateKey( spep_8 + 2 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 3 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 4 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 5 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 6 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 7 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 8 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 9 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 10 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 11 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 12 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 13 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 14 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 15 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 16 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 17 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 18 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 29 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_8 + 30 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 31 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 32 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 33 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 34 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 40 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 41 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 42 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 43 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 44 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 45 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 46 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 48 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 49 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 50 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 51 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 52 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 53 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 54 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 55 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 56 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 60 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 61 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 62 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 63 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 64 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 65 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 66 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 67 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 68 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 69 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 70 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 76 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 77 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 78 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 79 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 80 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 81 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 82 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 84 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 85 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 86 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 87 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 88 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 89 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 90 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 91 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 92 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 96 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 97 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 98 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 99 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 100 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 101 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 102 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 103 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 104 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 105 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 106 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 112 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 113 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 114 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 115 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 116 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 117 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 118 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 120 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 121 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 122 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 123 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 124 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 125 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 126 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 127 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 128 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 132 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 133 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 134 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 135 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 136 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 137 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 138 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 139 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 140 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 141 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 142 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 148 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 149 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 150 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 151 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 152 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 153 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 154 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 156 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 157 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_8 + 158 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 159 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_8 + 160 + OFFSET_X, 1, -114.5 );

-- ** 音 ** --
--電撃走る
SE042 = playSeVer2( spep_8 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE042, 137 );
SE043 = playSeVer2( spep_8 + 20, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE043, 122 );
SE044 = playSeVer2( spep_8 + 20, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 20, SE044, 120 );
SE045 = playSeVer2( spep_8 + 24, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 24, SE045, 120 );
SE046 = playSeVer2( spep_8 + 24, 1243, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 24, SE046, 85 );

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, MAX_FRAME_8 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_8 + 58 );
endPhase( spep_8 +  MAX_FRAME_8 - 2);  -- 160

end
