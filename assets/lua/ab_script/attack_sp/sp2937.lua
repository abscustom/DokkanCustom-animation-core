--1032260:UR_超サイヤ人4孫悟空(ミニ)(DAIMA)_爆砕龍撃砲
--sp_effect_a2_00272
--sp2937

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164229; --構え ef_001
SP_02  = 164230; --オーラ→フィニッシュ ef_002
SP_02b = 164231; --オーラ→フィニッシュ ef_002b

--エフェクト(敵)
SP_02r  = 164232; --オーラ→フィニッシュ ef_002r
SP_02br = 164233; --オーラ→フィニッシュ ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 148, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 50, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 67 );
SE004 = playSeVer2( spep_0 + 72, 1233, "", 0, 0, 0, -1);
--カードカットイン
--SE005 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 124

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- オーラ→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 886;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- オーラ→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- オーラ→フィニッシュ(ef_002b)
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
--敵の動き1
setDisp( spep_2 + 372 + OFFSET_X, 1, 1);
setDisp( spep_2 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 372 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, 316.8, 351.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 316.8, 351.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 149, 185 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 149, 185 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 53.8, 84 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 53.8, 84 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 51.1, 79.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 51.1, 79.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 50.8, 79.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 50.8, 79.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 50.4, 78.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 50.4, 78.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 50.1, 77.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 50.1, 77.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 49.8, 77.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 49.8, 77.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 49.4, 76.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 49.4, 76.6 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.68, 1.68 );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 708 + OFFSET_X, 1, 1);
setDisp( spep_2 + 760 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 708 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 708 + OFFSET_X, 1, 272.3, -170.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 272.3, -170.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 258.5, -163.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 258.5, -163.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 247.7, -157.1 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 247.7, -157.1 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 240, -152.8 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 240, -152.8 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 235.3, -150.3 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 235.3, -150.3 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 233.8, -149.4 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 233.8, -149.4 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 232.7, -148.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 232.7, -148.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 231.6, -147.9 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 231.6, -147.9 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 230.5, -147.2 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 230.5, -147.2 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 229.4, -146.4 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 229.4, -146.4 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 228.3, -145.7 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 228.3, -145.7 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 227.2, -144.9 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 227.2, -144.9 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 226.1, -144.2 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 226.1, -144.2 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 225, -143.4 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 225, -143.4 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 224, -142.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 224, -142.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 222.9, -141.9 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 222.9, -141.9 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 221.8, -141.1 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 221.8, -141.1 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 220.7, -140.4 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 220.7, -140.4 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 219.6, -139.6 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 219.6, -139.6 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 218.5, -138.9 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 218.5, -138.9 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 217.4, -138.1 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 217.4, -138.1 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 216.3, -137.4 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 216.3, -137.4 , 0 );

setScaleKey( spep_2 + 708 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 760 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 708 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, 17.9 );

-- ** 音 ** --

--気ダメ
SE006 = playSeVer2( spep_2 + 14, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 20, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 20, 1503, "", 0, 0, 0, -1);
--ズーム
SE009 = playSeVer2( spep_2 + 36, 1072, "", 0, 0, 0, -1);
--気ダメ
SE010 = playSeVer2( spep_2 + 50, 1504, "", 0, 0, 0, -1);
--電気帯びる
SE011 = playSeVer2( spep_2 + 72, 1513, "",spep_2 + 132, 0, 18, -1);
--顔アップ
SE012 = playSeVer2( spep_2 + 114, 1008, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 114, 1026, "", 0, 0, 0, -1);
--走り出す
SE014 = playSeVer2( spep_2 + 152, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE014, 79 );
SE015 = playSeVer2( spep_2 + 152, 1472, "",spep_2 + 168, 0, 6, -1);
SE016 = playSeVer2( spep_2 + 158, 1414, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 158, SE016, 45 );
SE017 = playSeVer2( spep_2 + 174, 1472, "",spep_2 + 190, 0, 6, -1);
SE018 = playSeVer2( spep_2 + 180, 1414, "",spep_2 + 192, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 180, SE018, 45 );
--ジャンプ
SE019 = playSeVer2( spep_2 + 188, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE019, 146 );
SE020 = playSeVer2( spep_2 + 194, 1278, "",spep_2 + 392, 0, 86, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 40 );
--着地
SE021 = playSeVer2( spep_2 + 240, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE021, 219 );
SE022 = playSeVer2( spep_2 + 252, 1476, "",spep_2 + 382, 0, 82, -1);
setSeVolumeByWorkId( spep_2 + 252, SE022, 79 );
setPitch( spep_2 + 252, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );
--気弾溜め
SE023 = playSeVer2( spep_2 + 292, 1328, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE023, 123 );
setStartTimeMs( SE023, 67 );
setPitch( spep_2 + 292, SE023, -200 );
setTimeStretch( SE023, 0.87, 30, 4 );
SE024 = playSeVer2( spep_2 + 296, 1191, "",spep_2 + 358, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 296, SE024, 133 );
setPitch( spep_2 + 296, SE024, 600 );
setTimeStretch( SE024, 1.4, 30, 4 );
SE025 = playSeVer2( spep_2 + 302, 1296, "",spep_2 + 362, 0, 34, -1);
setPitch( spep_2 + 302, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_2 + 306, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 170 );
--画面遷移
SE027 = playSeVer2( spep_2 + 332, 63, "",spep_2 + 400, 0, 20, -1);
SE028 = playSeVer2( spep_2 + 332, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE028, 42 );
--画面外から飛びかかる
SE029 = playSeVer2( spep_2 + 394, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE029, 58 );
SE030 = playSeVer2( spep_2 + 394, 1116, "",spep_2 + 436, 0, 22, -1);
SE031 = playSeVer2( spep_2 + 394, 1117, "", 0, 0, 0, -1);
--気弾溜め音
SE032 = playSeVer2( spep_2 + 402, 1181, "",spep_2 + 712, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 402, SE032, 126 );
SE033 = playSeVer2( spep_2 + 428, 1296, "",spep_2 + 594, 38, 16, -1);
setSeVolumeByWorkId( spep_2 + 428, SE033, 45 );
setStartTimeMs( SE033, 433 );
setPitch( spep_2 + 428, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );
--気弾大きくなる
SE034 = playSeVer2( spep_2 + 472, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 472, SE034, 123 );
SE035 = playSeVer2( spep_2 + 482, 1475, "", 0, 0, 0, -1);
--気弾溜め音
SE036 = playSeVer2( spep_2 + 546, 1296, "",spep_2 + 704, 38, 20, -1);
setSeVolumeByWorkId( spep_2 + 546, SE036, 60 );
setStartTimeMs( SE036, 433 );
setPitch( spep_2 + 546, SE036, -200 );
setTimeStretch( SE036, 0.87, 30, 4 );
--回転する
SE037 = playSeVer2( spep_2 + 592, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 592, SE037, 71 );
SE038 = playSeVer2( spep_2 + 592, 1151, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 592, 1388, "",spep_2 + 658, 0, 20, -1);
SE040 = playSeVer2( spep_2 + 600, 1151, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 612, 1151, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 620, 1151, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 628, 1151, "", 0, 0, 0, -1);
--振りかぶる
SE044 = playSeVer2( spep_2 + 642, 1116, "",spep_2 + 688, 0, 20, -1);
--気弾発射
SE045 = playSeVer2( spep_2 + 684, 1479, "",spep_2 + 776, 0, 38, -1);
SE046 = playSeVer2( spep_2 + 684, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 684, 1423, "",spep_2 + 768, 0, 48, -1);
SE048 = playSeVer2( spep_2 + 694, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE048, 83 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 730; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE045, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE047, 0);
stopSe( SP_dodge - 12, SE048, 0);
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

--爆発
SE049 = playSeVer2( spep_2 + 774, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 774, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 820, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 774); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 886-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 148, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 50, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 67 );
SE004 = playSeVer2( spep_0 + 72, 1233, "", 0, 0, 0, -1);
--カードカットイン
--SE005 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 124

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- オーラ→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 886;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- オーラ→フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- オーラ→フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 372 + OFFSET_X, 1, 1);
setDisp( spep_2 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 372 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, 316.8, 351.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 316.8, 351.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 149, 185 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 149, 185 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 53.8, 84 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 53.8, 84 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 51.1, 79.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 51.1, 79.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 50.8, 79.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 50.8, 79.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 50.4, 78.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 50.4, 78.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 50.1, 77.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 50.1, 77.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 49.8, 77.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 49.8, 77.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 49.4, 76.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 49.4, 76.6 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.68, 1.68 );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 708 + OFFSET_X, 1, 1);
setDisp( spep_2 + 760 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 708 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 708 + OFFSET_X, 1, 272.3, -170.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 272.3, -170.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 258.5, -163.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 258.5, -163.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 247.7, -157.1 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 247.7, -157.1 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 240, -152.8 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 240, -152.8 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 235.3, -150.3 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 235.3, -150.3 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 233.8, -149.4 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 233.8, -149.4 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 232.7, -148.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 232.7, -148.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 231.6, -147.9 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 231.6, -147.9 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 230.5, -147.2 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 230.5, -147.2 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 229.4, -146.4 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 229.4, -146.4 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 228.3, -145.7 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 228.3, -145.7 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 227.2, -144.9 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 227.2, -144.9 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 226.1, -144.2 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 226.1, -144.2 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 225, -143.4 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 225, -143.4 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 224, -142.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 224, -142.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 222.9, -141.9 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 222.9, -141.9 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 221.8, -141.1 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 221.8, -141.1 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 220.7, -140.4 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 220.7, -140.4 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 219.6, -139.6 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 219.6, -139.6 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 218.5, -138.9 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 218.5, -138.9 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 217.4, -138.1 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 217.4, -138.1 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 216.3, -137.4 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 216.3, -137.4 , 0 );

setScaleKey( spep_2 + 708 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 760 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 708 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, 17.9 );



-- ** 音 ** --

--気ダメ
SE006 = playSeVer2( spep_2 + 14, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 20, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 20, 1503, "", 0, 0, 0, -1);
--ズーム
SE009 = playSeVer2( spep_2 + 36, 1072, "", 0, 0, 0, -1);
--気ダメ
SE010 = playSeVer2( spep_2 + 50, 1504, "", 0, 0, 0, -1);
--電気帯びる
SE011 = playSeVer2( spep_2 + 72, 1513, "",spep_2 + 132, 0, 18, -1);
--顔アップ
SE012 = playSeVer2( spep_2 + 114, 1008, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 114, 1026, "", 0, 0, 0, -1);
--走り出す
SE014 = playSeVer2( spep_2 + 152, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE014, 79 );
SE015 = playSeVer2( spep_2 + 152, 1472, "",spep_2 + 168, 0, 6, -1);
SE016 = playSeVer2( spep_2 + 158, 1414, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 158, SE016, 45 );
SE017 = playSeVer2( spep_2 + 174, 1472, "",spep_2 + 190, 0, 6, -1);
SE018 = playSeVer2( spep_2 + 180, 1414, "",spep_2 + 192, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 180, SE018, 45 );
--ジャンプ
SE019 = playSeVer2( spep_2 + 188, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE019, 146 );
SE020 = playSeVer2( spep_2 + 194, 1278, "",spep_2 + 392, 0, 86, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 40 );
--着地
SE021 = playSeVer2( spep_2 + 240, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE021, 219 );
SE022 = playSeVer2( spep_2 + 252, 1476, "",spep_2 + 382, 0, 82, -1);
setSeVolumeByWorkId( spep_2 + 252, SE022, 79 );
setPitch( spep_2 + 252, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );
--気弾溜め
SE023 = playSeVer2( spep_2 + 292, 1328, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE023, 123 );
setStartTimeMs( SE023, 67 );
setPitch( spep_2 + 292, SE023, -200 );
setTimeStretch( SE023, 0.87, 30, 4 );
SE024 = playSeVer2( spep_2 + 296, 1191, "",spep_2 + 358, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 296, SE024, 133 );
setPitch( spep_2 + 296, SE024, 600 );
setTimeStretch( SE024, 1.4, 30, 4 );
SE025 = playSeVer2( spep_2 + 302, 1296, "",spep_2 + 362, 0, 34, -1);
setPitch( spep_2 + 302, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_2 + 306, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 170 );
--画面遷移
SE027 = playSeVer2( spep_2 + 332, 63, "",spep_2 + 400, 0, 20, -1);
SE028 = playSeVer2( spep_2 + 332, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE028, 42 );
--画面外から飛びかかる
SE029 = playSeVer2( spep_2 + 394, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE029, 58 );
SE030 = playSeVer2( spep_2 + 394, 1116, "",spep_2 + 436, 0, 22, -1);
SE031 = playSeVer2( spep_2 + 394, 1117, "", 0, 0, 0, -1);
--気弾溜め音
SE032 = playSeVer2( spep_2 + 402, 1181, "",spep_2 + 712, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 402, SE032, 126 );
SE033 = playSeVer2( spep_2 + 428, 1296, "",spep_2 + 594, 38, 16, -1);
setSeVolumeByWorkId( spep_2 + 428, SE033, 45 );
setStartTimeMs( SE033, 433 );
setPitch( spep_2 + 428, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );
--気弾大きくなる
SE034 = playSeVer2( spep_2 + 472, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 472, SE034, 123 );
SE035 = playSeVer2( spep_2 + 482, 1475, "", 0, 0, 0, -1);
--気弾溜め音
SE036 = playSeVer2( spep_2 + 546, 1296, "",spep_2 + 704, 38, 20, -1);
setSeVolumeByWorkId( spep_2 + 546, SE036, 60 );
setStartTimeMs( SE036, 433 );
setPitch( spep_2 + 546, SE036, -200 );
setTimeStretch( SE036, 0.87, 30, 4 );
--回転する
SE037 = playSeVer2( spep_2 + 592, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 592, SE037, 71 );
SE038 = playSeVer2( spep_2 + 592, 1151, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 592, 1388, "",spep_2 + 658, 0, 20, -1);
SE040 = playSeVer2( spep_2 + 600, 1151, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 612, 1151, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 620, 1151, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 628, 1151, "", 0, 0, 0, -1);
--振りかぶる
SE044 = playSeVer2( spep_2 + 642, 1116, "",spep_2 + 688, 0, 20, -1);
--気弾発射
SE045 = playSeVer2( spep_2 + 684, 1479, "",spep_2 + 776, 0, 38, -1);
SE046 = playSeVer2( spep_2 + 684, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 684, 1423, "",spep_2 + 768, 0, 48, -1);
SE048 = playSeVer2( spep_2 + 694, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE048, 83 );
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 730; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE045, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE047, 0);
stopSe( SP_dodge - 12, SE048, 0);
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

--爆発
SE049 = playSeVer2( spep_2 + 774, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 774, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 820, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 774); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 886-4


end