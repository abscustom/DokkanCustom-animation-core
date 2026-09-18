--1030830：UR_ビルス_必殺技：破壊神の猛攻
--sp_effect_b1_00313
--sp2829

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163594; --開始、セリフカットイン→カードカットイン ef_001

--エフェクト(味方)
SP_02  = 163595; --敵が迫る～プリンを食べる（フィニッシュ） ef_002
SP_02b = 163596; --敵が迫る～プリンを食べる（フィニッシュ） ef_002b

--エフェクト(敵)
SP_02r  = 163597; --敵が迫る～プリンを食べる（フィニッシュ）ef_002r
SP_02br = 163598; --敵が迫る～プリンを食べる（フィニッシュ） ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始、セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始、セリフカットイン→カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1228, "",spep_0 + 130, 0, 36, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 128, 0, 34, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 128, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE006 = playSeVer2( spep_1 + 88, 1228, "",spep_2 + 172, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 88, SE006, 63 );
setPitch( spep_1 + 88, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--敵向かってくる
SE007 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE007, 68 );
SE008 = playSeVer2( spep_1 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 42 );

--オーラ
SE009 = playSeVer2( spep_1 + 88, 1227, "",spep_2 + 168, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 88, SE009, 79 );


-------------------------------------------------
-- 素材が前後、２つあるシーン
-------------------------------------------------
MAX_FRAME_2 = 552;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵が迫る～プリンを食べる（フィニッシュ）(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵が迫る～プリンを食べる（フィニッシュ）(ef_002b)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 116 );

setMoveKey( spep_2 + 0, 1, -140.7, 99.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -139.9, 99.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -139.9, 99.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -139.1, 99.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -139.1, 99.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -138.4, 99.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -138.4, 99.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -137.6, 99.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -137.6, 99.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -136.8, 99.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -136.8, 99.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -136, 99.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -136, 99.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -135.3, 99.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -135.3, 99.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -134.5, 99.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -134.5, 99.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -133.8, 99.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -133.8, 99.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -133.1, 99.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -133.1, 99.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -132.3, 99.1 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -132.3, 99.1 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -131.6, 99.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -131.6, 99.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -130.9, 99.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -130.9, 99.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -130.2, 99.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -130.2, 99.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -129.5, 99.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -129.5, 99.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -128.8, 99.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -128.8, 99.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -128.1, 99.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -128.1, 99.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -127.4, 99.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -127.4, 99.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -126.7, 99 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -126.7, 99 , 0 );

setScaleKey( spep_2 + 0, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 0, 1, -16.3 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -16.3 );

setBlendColor( spep_1 + 92 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 0, 1, 2, 0.507, 0.133, 0.529, 0.22 );
setBlendColor( spep_2 + 40 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -44.2, 60.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -44.2, 60.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -40.7, 60 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -40.7, 60 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -37.5, 59.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -37.5, 59.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -34.5, 59.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -34.5, 59.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -31.8, 59.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -31.8, 59.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -29.2, 58.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -29.2, 58.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -26.9, 58.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -26.9, 58.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -24.8, 58.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -24.8, 58.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -22.9, 58.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -22.9, 58.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -21.2, 58 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -21.2, 58 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -19.8, 57.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -19.8, 57.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -18.6, 57.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -18.6, 57.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -17.6, 57.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -17.6, 57.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -16.8, 57.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -16.8, 57.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -16.2, 57.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -16.2, 57.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -15.9, 57.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -15.9, 57.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -15.8, 57.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -15.8, 57.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 21.1, 48.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 21.1, 48.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 0.4, 59.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 0.4, 59.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 21.4, 29.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 21.4, 29.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 26.7, 51.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 26.7, 51.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 44.2, 31.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 44.2, 31.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 31.6, 28.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 31.6, 28.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 50.6, 32.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 50.6, 32.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 60.9, 3.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 60.9, 3.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 53.7, 10.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 53.7, 10.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 81.4, 3.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 81.4, 3.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 79.9, 8.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 79.9, 8.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 83.6, -20.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 83.6, -20.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 86.2, -15.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 86.2, -15.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.51, 2.51 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 69.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 69.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 67.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 66.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 66.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 62.5 );

setBlendColor( spep_2 + 88 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.17 );
setBlendColor( spep_2 + 124 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.19 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, -14.2, 70.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -14.2, 70.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -14.2, 79.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -14.2, 79.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -14.2, 49.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -14.2, 49.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -32.6, 68.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -32.6, 68.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 4.2, 68.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 4.2, 68.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -7.3, 77.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -7.3, 77.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -23.4, 58.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -23.4, 58.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -5, 58.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -5, 58.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 41.7, 100.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 41.7, 100.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 58.1, 129.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 58.1, 129.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 54.9, 53.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 54.9, 53.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 42.6, 130.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 42.6, 130.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 112.8, 111.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 112.8, 111.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 43.8, 93.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 43.8, 93.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 136.6, 151.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 136.6, 151.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 52.1, 152.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 52.1, 152.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 140.4, 112.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 140.4, 112.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 90.3, 177.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 90.3, 177.7 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.23, 0.95 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.23, 0.95 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.41, 1.09 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.41, 1.09 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.58, 1.22 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.58, 1.22 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.75, 1.36 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.75, 1.36 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.92, 1.49 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.92, 1.49 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.1, 1.62 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.1, 1.62 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.27, 1.76 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.27, 1.76 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.44, 1.89 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.44, 1.89 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.6, 2.01 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.6, 2.01 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.76, 2.14 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.76, 2.14 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 11.7 );

setBlendColor( spep_2 + 192 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.19 );
setBlendColor( spep_2 + 210 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.21 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, 43.1, 227 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 43.1, 227 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 67.4, 212.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 67.4, 212.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 97.2, 192.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 97.2, 192.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 125.3, 173 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 125.3, 173 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 150.1, 154.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 150.1, 154.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 171, 137.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 171, 137.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 188.2, 117.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 188.2, 117.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 187.2, 44.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 187.2, 44.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 193.3, 30.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 193.3, 30.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 200.7, 9.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 200.7, 9.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 208.4, -21.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 208.4, -21.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 214.9, -67.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 214.9, -67.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 215.2, -145 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 215.2, -145 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 71.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 71.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 76.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 76.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 113.7 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 113.7 );

setBlendColor( spep_2 + 252 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 2, 0.188, 0.137, 0, 0.2 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


-- ** 音 ** --
--箸持つ
SE010 = playSeVer2( spep_2 + 48, 411, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE010, 115 );
SE011 = playSeVer2( spep_2 + 52, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE011, 204 );
SE012 = playSeVer2( spep_2 + 58, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE012, 126 );

--瞬間移動
SE013 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 92, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE014, 50 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 8, 1, 2, 0, 0, 0, 0 );

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
--肘打ち
SE015 = playSeVer2( spep_2 + 114, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 62 );
SE016 = playSeVer2( spep_2 + 114, 1110, "", 0, 0, 0, -1);

--箸アタック
SE017 = playSeVer2( spep_2 + 150, 1016, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 150, 1114, "",spep_2 + 192, 0, 28, -1);
SE019 = playSeVer2( spep_2 + 172, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 172, 1114, "",spep_2 + 216, 0, 28, -1);

--敵吹き飛ぶ
SE021 = playSeVer2( spep_2 + 196, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE021, 65 );
SE022 = playSeVer2( spep_2 + 202, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 222, 1121, "",spep_2 + 332, 0, 62, -1);

--水柱上がる
SE024 = playSeVer2( spep_2 + 258, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE024, 224 );
SE025 = playSeVer2( spep_2 + 278, 1159, "",spep_2 + 390, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 278, SE025, 62 );

--画面遷移
SE026 = playSeVer2( spep_2 + 326, 8, "", 0, 0, 0, -1);

--環境音
SE027 = playSeVer2( spep_2 + 338, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 338, SE027, 25 );

--キラキラ音
SE028 = playSeVer2( spep_2 + 366, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 366, SE028, 56 );

--プリン食べる
SE029 = playSeVer2( spep_2 + 396, 1071, "",spep_2 + 430, 0, 14, -1);
SE030 = playSeVer2( spep_2 + 424, 1071, "",spep_2 + 454, 2, 8, -1);
setStartTimeMs( SE030,  300 );
SE031 = playSeVer2( spep_2 + 452, 1071, "",spep_2 + 480, 4, 6, -1);
setStartTimeMs( SE031,  633 );
SE032 = playSeVer2( spep_2 + 486, 1071, "", 0, 2, 0, -1);
setStartTimeMs( SE032,  1000 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 280); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 552f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始、セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始、セリフカットイン→カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1228, "",spep_0 + 130, 0, 36, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 128, 0, 34, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 128, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE006 = playSeVer2( spep_1 + 88, 1228, "",spep_2 + 172, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 88, SE006, 63 );
setPitch( spep_1 + 88, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--敵向かってくる
SE007 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE007, 68 );
SE008 = playSeVer2( spep_1 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 42 );

--オーラ
SE009 = playSeVer2( spep_1 + 88, 1227, "",spep_2 + 168, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 88, SE009, 79 );


-------------------------------------------------
-- 素材が前後、２つあるシーン
-------------------------------------------------
MAX_FRAME_2 = 552;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 敵が迫る～プリンを食べる（フィニッシュ）(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 敵が迫る～プリンを食べる（フィニッシュ）(ef_002br)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 16 );

setMoveKey( spep_2 + 0, 1, 140.7, 99.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 139.9, 99.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 139.9, 99.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 139.1, 99.1 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 139.1, 99.1 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 138.4, 99.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 138.4, 99.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 137.6, 99.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 137.6, 99.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 136.8, 99.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 136.8, 99.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 136, 99.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 136, 99.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 135.3, 99.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 135.3, 99.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 134.5, 99.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 134.5, 99.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 133.8, 99.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 133.8, 99.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 133.1, 99.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 133.1, 99.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 132.3, 99.1 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 132.3, 99.1 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 131.6, 99.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 131.6, 99.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 130.9, 99.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 130.9, 99.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 130.2, 99.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 130.2, 99.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 129.5, 99.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 129.5, 99.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 128.8, 99.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 128.8, 99.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 128.1, 99.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 128.1, 99.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 127.4, 99.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 127.4, 99.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 126.7, 99 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 126.7, 99 , 0 );

setScaleKey( spep_2 + 0, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 0, 1, 16.3 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 16.3 );

setBlendColor( spep_1 + 92 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 0, 1, 2, 0.507, 0.133, 0.529, 0.22 );
setBlendColor( spep_2 + 40 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 44.2, 60.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 44.2, 60.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 40.7, 60 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 40.7, 60 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 37.5, 59.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 37.5, 59.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 34.5, 59.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 34.5, 59.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 31.8, 59.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 31.8, 59.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 29.2, 58.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 29.2, 58.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 26.9, 58.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 26.9, 58.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 24.8, 58.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 24.8, 58.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 22.9, 58.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 22.9, 58.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 21.2, 58 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 21.2, 58 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 19.8, 57.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 19.8, 57.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 18.6, 57.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 18.6, 57.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 17.6, 57.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 17.6, 57.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 16.8, 57.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 16.8, 57.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 16.2, 57.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 16.2, 57.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 15.9, 57.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 15.9, 57.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 15.8, 57.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 15.8, 57.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -21.1, 48.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -21.1, 48.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -0.4, 59.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -0.4, 59.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -21.4, 29.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -21.4, 29.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -26.7, 51.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -26.7, 51.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -44.2, 31.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -44.2, 31.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -31.6, 28.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -31.6, 28.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -50.6, 32.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -50.6, 32.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -60.9, 3.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -60.9, 3.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -53.7, 10.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -53.7, 10.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -81.4, 3.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -81.4, 3.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -79.9, 8.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -79.9, 8.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -83.6, -20.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -83.6, -20.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -86.2, -15.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -86.2, -15.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.51, 2.51 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -69.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -69.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -68.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -68.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -66.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -66.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -65.4 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -62.5 );

setBlendColor( spep_2 + 88 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.17 );
setBlendColor( spep_2 + 124 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.19 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, 14.2, 70.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 14.2, 70.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 14.2, 79.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 14.2, 79.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 14.2, 49.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 14.2, 49.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 32.6, 68.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 32.6, 68.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -4.2, 68.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -4.2, 68.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 7.3, 77.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 7.3, 77.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 23.4, 58.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 23.4, 58.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 5, 58.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 5, 58.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -41.7, 100.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -41.7, 100.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -58.1, 129.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -58.1, 129.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -54.9, 53.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -54.9, 53.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -42.6, 130.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -42.6, 130.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -112.8, 111.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -112.8, 111.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -43.8, 93.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -43.8, 93.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -136.6, 151.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -136.6, 151.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -52.1, 152.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -52.1, 152.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -140.4, 112.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -140.4, 112.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -90.3, 177.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -90.3, 177.7 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.23, 0.95 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.23, 0.95 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.41, 1.09 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.41, 1.09 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.58, 1.22 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.58, 1.22 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.75, 1.36 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.75, 1.36 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.92, 1.49 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.92, 1.49 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.1, 1.62 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.1, 1.62 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.27, 1.76 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.27, 1.76 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.44, 1.89 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.44, 1.89 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.6, 2.01 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.6, 2.01 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.76, 2.14 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.76, 2.14 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -11.7 );

setBlendColor( spep_2 + 192 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.19 );
setBlendColor( spep_2 + 210 + OFFSET_X, 1, 2, 0.507, 0.133, 0.529, 0.21 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, 43.1, 227 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 43.1, 227 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 67.4, 212.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 67.4, 212.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 97.2, 192.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 97.2, 192.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 125.3, 173 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 125.3, 173 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 150.1, 154.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 150.1, 154.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 171, 137.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 171, 137.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 188.2, 117.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 188.2, 117.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 187.2, 44.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 187.2, 44.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 193.3, 30.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 193.3, 30.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 200.7, 9.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 200.7, 9.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 208.4, -21.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 208.4, -21.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 214.9, -67.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 214.9, -67.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 215.2, -145 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 215.2, -145 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 71.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 71.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 76.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 76.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 113.7 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 113.7 );

setBlendColor( spep_2 + 252 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 2, 0.188, 0.137, 0, 0.2 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 2, 0, 0, 0, 0 );


-- ** 音 ** --
--箸持つ
SE010 = playSeVer2( spep_2 + 48, 411, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE010, 115 );
SE011 = playSeVer2( spep_2 + 52, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE011, 204 );
SE012 = playSeVer2( spep_2 + 58, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE012, 126 );

--瞬間移動
SE013 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 92, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE014, 50 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 8, 1, 2, 0, 0, 0, 0 );

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
--肘打ち
SE015 = playSeVer2( spep_2 + 114, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 62 );
SE016 = playSeVer2( spep_2 + 114, 1110, "", 0, 0, 0, -1);

--箸アタック
SE017 = playSeVer2( spep_2 + 150, 1016, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 150, 1114, "",spep_2 + 192, 0, 28, -1);
SE019 = playSeVer2( spep_2 + 172, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 172, 1114, "",spep_2 + 216, 0, 28, -1);

--敵吹き飛ぶ
SE021 = playSeVer2( spep_2 + 196, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE021, 65 );
SE022 = playSeVer2( spep_2 + 202, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 222, 1121, "",spep_2 + 332, 0, 62, -1);

--水柱上がる
SE024 = playSeVer2( spep_2 + 258, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE024, 224 );
SE025 = playSeVer2( spep_2 + 278, 1159, "",spep_2 + 390, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 278, SE025, 62 );

--画面遷移
SE026 = playSeVer2( spep_2 + 326, 8, "", 0, 0, 0, -1);

--環境音
SE027 = playSeVer2( spep_2 + 338, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 338, SE027, 25 );

--キラキラ音
SE028 = playSeVer2( spep_2 + 366, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 366, SE028, 56 );

--プリン食べる
SE029 = playSeVer2( spep_2 + 396, 1071, "",spep_2 + 430, 0, 14, -1);
SE030 = playSeVer2( spep_2 + 424, 1071, "",spep_2 + 454, 2, 8, -1);
setStartTimeMs( SE030,  300 );
SE031 = playSeVer2( spep_2 + 452, 1071, "",spep_2 + 480, 4, 6, -1);
setStartTimeMs( SE031,  633 );
SE032 = playSeVer2( spep_2 + 486, 1071, "", 0, 2, 0, -1);
setStartTimeMs( SE032,  1000 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 280); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 552f -2f

end