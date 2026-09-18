--1026890：UR_超サイヤ人4孫悟空_必殺技：スピアシュート
--sp_effect_b1_00258
--sp2575

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162008;	--冒頭　ef_001
SP_02 = 162009;	--突進～ラスト・手前　ef_002
SP_02b = 162010;	--突進～ラスト・奥　ef_002b

--エフェクト(てき)
SP_02r = 162011; --敵用：突進～ラスト・手前　ef_002r
SP_02br = 162012; --敵用：突進～ラスト・奥　ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭(100F)
-------------------------------------------------


MAX_FRAME_0 = 100;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 76, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 76, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 76, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気弾ける
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 50, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 0, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
setPitch( spep_0 + 0, SE002, 5 );
setTimeStretch( SE002, 1, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 112 );
SE004 = playSeVer2( spep_0 + 6, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 71 );

--オーラ
SE006 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1036, "",spep_0 + 114, 0, 12, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;

--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--オーラ
SE011 = playSeVer2( spep_c + 86, 1036, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気ダメ突進～ラスト(558F)
-------------------------------------------------


MAX_FRAME_1 = 558;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 42 + OFFSET_X, 1, 1 )
setDisp( spep_1 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 42 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 66 + OFFSET_X, 1, 8 );

setMoveKey( spep_1 + 42 + OFFSET_X, 1, 8.9, -15.4 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 6.9, -14.5 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 4.9, -13.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 2.9, -12.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 0.9, -11.9 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -1.1, -11 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -3.1, -10.1 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, -5.1, -9.2 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, -7.1, -8.3 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, -9.1, -7.4 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -9.1, -7.4 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -136, -17.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -136, -17.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -114, 29.1 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -114, 29.1 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -144.7, 64 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -144.7, 64 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -117.9, 31.8 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -117.9, 31.8 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -127.1, 25.9 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -127.1, 25.9 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, -121.9, 34.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, -121.9, 34.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, -135.9, 11.8 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, -135.9, 11.8 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -125.9, 37.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -125.9, 37.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -139.9, 24.1 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -139.9, 24.1 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, -129.8, 39.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -129.8, 39.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, -148.6, 24.3 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -148.6, 24.3 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -134, 42.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -134, 42.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, -143.4, 33.6 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -143.4, 33.6 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, -138.4, 44.3 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, -138.4, 44.3 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -147.8, 42.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -147.8, 42.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, -142.8, 46.4 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, -142.8, 46.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -157, 59.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -157, 59.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -147.2, 48.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -147.2, 48.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -156.6, 47.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -156.6, 47.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -151.6, 50.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -151.6, 50.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -156.2, 46.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -156.2, 46.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -156, 52.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -156, 52.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -163, 48.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -163, 48.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -160.4, 54.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -160.4, 54.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, -165, 53.4 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -165, 53.4 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -164.7, 56.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -164.7, 56.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -169.3, 57.9 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -169.3, 57.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -169.1, 58.9 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -169.1, 58.9 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -171.3, 57.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -171.3, 57.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -173.5, 61 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -173.5, 61 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -175.7, 62.1 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -175.7, 62.1 , 0 );

setScaleKey( spep_1 + 42 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_1 + 42 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 95 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 96 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 99 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 100 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 103 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 105 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 106 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 107 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, 0.3 );

-- 敵の動き2
setDisp( spep_1 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 446 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 252 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 280 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 342 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 378 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 252 + OFFSET_X, 1, -140.7, -47.6 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -139.7, -48.5 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -138.7, -49.3 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, -137.8, -50.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -136.8, -50.9 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -135.9, -51.7 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -134.9, -52.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, -134, -53.4 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -133, -54.2 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -132.1, -55 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, -131.1, -55.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, -130.2, -56.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -129.2, -57.5 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -128.3, -58.3 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -128.3, -58.3 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, -62, -360.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, -59.7, -357.3 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, -57.4, -354 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -55, -350.7 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, -52.7, -347.5 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, -50.4, -344.2 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, -48, -340.9 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -45.7, -337.7 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, -43.4, -334.4 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, -41, -331.1 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, -38.7, -327.9 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -36.4, -324.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -34.1, -321.3 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, -31.7, -318.1 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -29.4, -314.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -27.1, -311.5 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -24.8, -308.3 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -22.4, -305 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -20.1, -301.7 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -17.8, -298.5 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -15.5, -295.2 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -13.1, -291.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -10.8, -288.7 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -8.5, -285.4 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -6.2, -282.1 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -3.8, -278.9 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -1.5, -275.6 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 0.8, -272.3 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 3.1, -269.1 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 3.1, -269.1 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 114.7, 33.2 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 115.3, 33 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 115.9, 32.7 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 116.4, 32.4 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 117, 32.1 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 117.6, 31.8 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 118.1, 31.5 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 118.7, 31.2 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 119.2, 31 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 119.8, 30.7 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 120.4, 30.4 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 120.9, 30.1 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 121.5, 29.8 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 122.1, 29.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 122.6, 29.2 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 123.2, 29 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 123.8, 28.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 124.3, 28.4 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 152.1, 31.1 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 153.9, 31.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 155.7, 32.2 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 157.5, 32.7 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 159.3, 33.2 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 161.1, 33.7 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 162.8, 34.2 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 164.6, 34.8 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 166.4, 35.3 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 168.2, 35.8 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 170, 36.3 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 171.7, 36.9 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 173.5, 37.4 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 175.3, 37.9 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 177.1, 38.4 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 178.9, 39 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 178.9, 39 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -34.4, -194.3 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -21.1, -157.5 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, -11.2, -129.8 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, -4.6, -111.3 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, -4, -113.9 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, -3.5, -116.5 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -3, -119.1 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, -2.4, -121.7 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, -1.9, -124.3 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, -1.3, -126.9 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, -0.8, -129.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, -0.3, -132 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 0.2, -134.6 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 0.7, -137.2 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 1.3, -139.8 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 1.8, -142.4 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 2.3, -145 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 2.8, -147.6 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 2.8, -147.6 , 0 );

setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 377 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 414 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 252 + OFFSET_X, 1, -60 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 364 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, -43 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 378 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 380 + OFFSET_X, 1, 7 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 15.1 );

-- ** 音 ** --
--向かってくる
SE012 = playSeVer2( spep_1 + 16, 1017, "",spep_1 + 66, 0, 24, -1);
SE013 = playSeVer2( spep_1 + 16, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE013, 136 );
SE014 = playSeVer2( spep_1 + 16, 9, "",spep_1 + 76, 0, 36, -1);
SE015 = playSeVer2( spep_1 + 16, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE015, 52 );
setTimeStretch( SE015, 0.76, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--瞬間移動
SE016 = playSeVer2( spep_1 + 42, 1109, "", 0, 0, 0, -1);

--強腹パン
SE017 = playSeVer2( spep_1 + 54, 1359, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 54, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE018, 63 );

--振り返る
SE019 = playSeVer2( spep_1 + 124, 1278, "",spep_1 + 328, 36, 86, -1);
setSeVolumeByWorkId( spep_1 + 124, SE019, 42 );
setStartTimeMs( SE019,  1167 );

--強腹パン
SE020 = playSeVer2( spep_1 + 58, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 64, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 68, 1190, "", 0, 0, 0, -1);

--振り返る
SE023 = playSeVer2( spep_1 + 122, 1263, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 122, SE023, 126 );
setStartTimeMs( SE023,  433 );
setPitch( spep_1 + 122, SE023, -500 );
setTimeStretch( SE023, 0.95, 30, 4 );

--強腹パン
SE024 = playSeVer2( spep_1 + 86, 1190, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE024, 79 );

--振り返る
SE025 = playSeVer2( spep_1 + 122, 1305, "",spep_1 + 288, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 122, SE025, 71 );
setPitch( spep_1 + 122, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );
SE026 = playSeVer2( spep_1 + 122, 1116, "",spep_1 + 172, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 122, SE026, 56 );
setTimeStretch( SE026, 2, 30, 4 );

--腕前に出す
SE027 = playSeVer2( spep_1 + 260, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 260, SE027, 85 );
SE028 = playSeVer2( spep_1 + 268, 1003, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 268, SE028, 75 );

--画面遷移
SE029 = playSeVer2( spep_1 + 284, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 284, SE029, 72 );

--空気弾放つ
SE030 = playSeVer2( spep_1 + 342, 1182, "",spep_1 + 388, 0, 24, -1);
SE031 = playSeVer2( spep_1 + 342, 1188, "",spep_1 + 398, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 342, SE031, 71 );

--敵ヒット
SE032 = playSeVer2( spep_1 + 366, 1258, "",spep_1 + 468, 0, 26, -1);
SE033 = playSeVer2( spep_1 + 370, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_1 + 406, 1121, "",spep_1 + 468, 10, 20, -1);
setStartTimeMs( SE034,  267 );

--敵吹き飛ぶ
SE035 = playSeVer2( spep_1 + 398, 1027, "", 0, 0, 0, -1);

--地面激突
SE036 = playSeVer2( spep_1 + 442, 1023, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 442, 1159, "", 0, 0, 0, -1);

----風力音
SE038 = playSeVer2( spep_1 + 454, 1259, "",spep_1 + 526, 0, 32, -1);
setPitch( spep_1 + 454, SE038, -600 );
setTimeStretch( SE038, 0.65, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 454); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;



-------------------------------------------------
-- 冒頭(100F)
-------------------------------------------------


MAX_FRAME_0 = 100;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気弾ける
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 50, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 0, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
setPitch( spep_0 + 0, SE002, 5 );
setTimeStretch( SE002, 1, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 112 );
SE004 = playSeVer2( spep_0 + 6, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 71 );

--オーラ
SE006 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1036, "",spep_0 + 114, 0, 12, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--オーラ
SE011 = playSeVer2( spep_c + 86, 1036, "", 0, 0, 0, -1);


-------------------------------------------------
-- 気ダメ突進～ラスト(558F)
-------------------------------------------------


MAX_FRAME_1 = 558;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 42 + OFFSET_X, 1, 1 )
setDisp( spep_1 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 42 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 66 + OFFSET_X, 1, 8 );

setMoveKey( spep_1 + 42 + OFFSET_X, 1, 8.9, -15.4 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 6.9, -14.5 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 4.9, -13.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 2.9, -12.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 0.9, -11.9 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -1.1, -11 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -3.1, -10.1 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, -5.1, -9.2 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, -7.1, -8.3 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, -9.1, -7.4 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -9.1, -7.4 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -136, -17.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -136, -17.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -114, 29.1 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -114, 29.1 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -144.7, 64 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -144.7, 64 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -117.9, 31.8 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -117.9, 31.8 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -127.1, 25.9 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -127.1, 25.9 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, -121.9, 34.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, -121.9, 34.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, -135.9, 11.8 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, -135.9, 11.8 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -125.9, 37.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -125.9, 37.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -139.9, 24.1 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -139.9, 24.1 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, -129.8, 39.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -129.8, 39.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, -148.6, 24.3 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -148.6, 24.3 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -134, 42.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -134, 42.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, -143.4, 33.6 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -143.4, 33.6 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, -138.4, 44.3 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, -138.4, 44.3 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -147.8, 42.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -147.8, 42.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, -142.8, 46.4 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, -142.8, 46.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -157, 59.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -157, 59.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -147.2, 48.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -147.2, 48.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -156.6, 47.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -156.6, 47.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -151.6, 50.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -151.6, 50.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -156.2, 46.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -156.2, 46.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -156, 52.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -156, 52.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -163, 48.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -163, 48.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -160.4, 54.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -160.4, 54.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, -165, 53.4 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -165, 53.4 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -164.7, 56.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -164.7, 56.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -169.3, 57.9 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -169.3, 57.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -169.1, 58.9 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -169.1, 58.9 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -171.3, 57.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -171.3, 57.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -173.5, 61 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -173.5, 61 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -175.7, 62.1 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -175.7, 62.1 , 0 );

setScaleKey( spep_1 + 42 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_1 + 42 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 95 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 96 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 99 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 100 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 103 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 105 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 106 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 107 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, 0.3 );

-- 敵の動き2
setDisp( spep_1 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 446 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 252 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 280 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 342 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 378 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 252 + OFFSET_X, 1, -140.7, -47.6 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -139.7, -48.5 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -138.7, -49.3 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, -137.8, -50.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -136.8, -50.9 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -135.9, -51.7 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -134.9, -52.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, -134, -53.4 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -133, -54.2 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -132.1, -55 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, -131.1, -55.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, -130.2, -56.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -129.2, -57.5 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -128.3, -58.3 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -128.3, -58.3 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, -62, -360.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, -59.7, -357.3 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, -57.4, -354 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -55, -350.7 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, -52.7, -347.5 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, -50.4, -344.2 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, -48, -340.9 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -45.7, -337.7 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, -43.4, -334.4 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, -41, -331.1 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, -38.7, -327.9 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -36.4, -324.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -34.1, -321.3 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, -31.7, -318.1 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -29.4, -314.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -27.1, -311.5 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -24.8, -308.3 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -22.4, -305 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -20.1, -301.7 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -17.8, -298.5 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -15.5, -295.2 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -13.1, -291.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -10.8, -288.7 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -8.5, -285.4 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -6.2, -282.1 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -3.8, -278.9 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -1.5, -275.6 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 0.8, -272.3 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 3.1, -269.1 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 3.1, -269.1 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 114.7, 33.2 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 115.3, 33 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 115.9, 32.7 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 116.4, 32.4 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 117, 32.1 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 117.6, 31.8 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 118.1, 31.5 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 118.7, 31.2 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 119.2, 31 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 119.8, 30.7 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 120.4, 30.4 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 120.9, 30.1 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 121.5, 29.8 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 122.1, 29.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 122.6, 29.2 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 123.2, 29 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 123.8, 28.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 124.3, 28.4 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 152.1, 31.1 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 153.9, 31.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 155.7, 32.2 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 157.5, 32.7 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 159.3, 33.2 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 161.1, 33.7 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 162.8, 34.2 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 164.6, 34.8 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 166.4, 35.3 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 168.2, 35.8 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 170, 36.3 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 171.7, 36.9 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 173.5, 37.4 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 175.3, 37.9 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 177.1, 38.4 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 178.9, 39 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 178.9, 39 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -34.4, -194.3 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -21.1, -157.5 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, -11.2, -129.8 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, -4.6, -111.3 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, -4, -113.9 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, -3.5, -116.5 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -3, -119.1 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, -2.4, -121.7 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, -1.9, -124.3 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, -1.3, -126.9 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, -0.8, -129.4 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, -0.3, -132 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 0.2, -134.6 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 0.7, -137.2 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 1.3, -139.8 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 1.8, -142.4 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 2.3, -145 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 2.8, -147.6 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 2.8, -147.6 , 0 );

setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 377 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 414 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 418 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 420 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 424 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 426 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 252 + OFFSET_X, 1, -60 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 364 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, -43 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 378 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 380 + OFFSET_X, 1, 7 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 15.1 );

-- ** 音 ** --
--向かってくる
SE012 = playSeVer2( spep_1 + 16, 1017, "",spep_1 + 66, 0, 24, -1);
SE013 = playSeVer2( spep_1 + 16, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE013, 136 );
SE014 = playSeVer2( spep_1 + 16, 9, "",spep_1 + 76, 0, 36, -1);
SE015 = playSeVer2( spep_1 + 16, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE015, 52 );
setTimeStretch( SE015, 0.76, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--瞬間移動
SE016 = playSeVer2( spep_1 + 42, 1109, "", 0, 0, 0, -1);

--強腹パン
SE017 = playSeVer2( spep_1 + 54, 1359, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 54, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE018, 63 );

--振り返る
SE019 = playSeVer2( spep_1 + 124, 1278, "",spep_1 + 328, 36, 86, -1);
setSeVolumeByWorkId( spep_1 + 124, SE019, 42 );
setStartTimeMs( SE019,  1167 );

--強腹パン
SE020 = playSeVer2( spep_1 + 58, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 64, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 68, 1190, "", 0, 0, 0, -1);

--振り返る
SE023 = playSeVer2( spep_1 + 122, 1263, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 122, SE023, 126 );
setStartTimeMs( SE023,  433 );
setPitch( spep_1 + 122, SE023, -500 );
setTimeStretch( SE023, 0.95, 30, 4 );

--強腹パン
SE024 = playSeVer2( spep_1 + 86, 1190, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE024, 79 );

--振り返る
SE025 = playSeVer2( spep_1 + 122, 1305, "",spep_1 + 288, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 122, SE025, 71 );
setPitch( spep_1 + 122, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );
SE026 = playSeVer2( spep_1 + 122, 1116, "",spep_1 + 172, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 122, SE026, 56 );
setTimeStretch( SE026, 2, 30, 4 );

--腕前に出す
SE027 = playSeVer2( spep_1 + 260, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 260, SE027, 85 );
SE028 = playSeVer2( spep_1 + 268, 1003, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 268, SE028, 75 );

--画面遷移
SE029 = playSeVer2( spep_1 + 284, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 284, SE029, 72 );

--空気弾放つ
SE030 = playSeVer2( spep_1 + 342, 1182, "",spep_1 + 388, 0, 24, -1);
SE031 = playSeVer2( spep_1 + 342, 1188, "",spep_1 + 398, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 342, SE031, 71 );

--敵ヒット
SE032 = playSeVer2( spep_1 + 366, 1258, "",spep_1 + 468, 0, 26, -1);
SE033 = playSeVer2( spep_1 + 370, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_1 + 406, 1121, "",spep_1 + 468, 10, 20, -1);
setStartTimeMs( SE034,  267 );

--敵吹き飛ぶ
SE035 = playSeVer2( spep_1 + 398, 1027, "", 0, 0, 0, -1);

--地面激突
SE036 = playSeVer2( spep_1 + 442, 1023, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 442, 1159, "", 0, 0, 0, -1);

----風力音
SE038 = playSeVer2( spep_1 + 454, 1259, "",spep_1 + 526, 0, 32, -1);
setPitch( spep_1 + 454, SE038, -600 );
setTimeStretch( SE038, 0.65, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 454); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

end

