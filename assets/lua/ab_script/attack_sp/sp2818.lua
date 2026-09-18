--1030790:LR_ピッコロ大魔王(老)_超必殺技：爆烈魔光砲
--sp_effect_a1_00478
--sp2818

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163582;  --ef_001 登場～両手に気弾溜め・前面
SP_01b = 163583;  --ef_001b 登場～両手に気弾溜め・背面
SP_02  = 163584;  --ef_002 気弾発射～フィニッシュ・前面
SP_02b = 163585;  --ef_002b 気弾発射～フィニッシュ・背面

--エフェクト(敵)
SP_01r  = 163586;  --ef_001r 登場～両手に気弾溜め・前面 敵側
SP_01br = 163587;  --ef_001br 登場～両手に気弾溜め・背面 敵側
SP_02r  = 163588;  --ef_002r 気弾発射～フィニッシュ・前面 敵側
SP_02br = 163589;  --ef_002br 気弾発射～フィニッシュ・背面 敵側

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場～両手に気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 276;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場～両手に気弾溜め・前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場～両手に気弾溜め・背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 108 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 108 + OFFSET_X, 1, 624.7, -458.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 624.7, -458.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 484.3, -369.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 484.3, -369.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 429.9, -334.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 429.9, -334.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 390.8, -309.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 390.8, -309.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 360, -290.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 360, -290.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 335.1, -274.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 335.1, -274.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 314.4, -261.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 314.4, -261.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 297.3, -250.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 297.3, -250.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 283.1, -241.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 283.1, -241.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 271.5, -234.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 271.5, -234.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 262.4, -228.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 262.4, -228.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 255.4, -224 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 255.4, -224 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 250.5, -220.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 250.5, -220.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 247.6, -219 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 247.6, -219 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 247.3, -219.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 247.3, -219.3 , 0 );

setScaleKey( spep_0 + 108 + OFFSET_X, 1, 7.86, 7.86 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 7.86, 7.86 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.11, 5.11 );

setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--エネルギー溜める
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 300, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1391, "",spep_0 + 300, 0, 26, -1);
SE004 = playSeVer2( spep_0 + 6, 1399, "", 0, 0, 0, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 86, 1072, "", 0, 0, 0, -1);

--気弾拳に溜める
SE006 = playSeVer2( spep_0 + 164, 1116, "",spep_0 + 222, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 184, 1038, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 192, 1043, "",spep_0 + 304, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 192, SE008, 87 );
SE009 = playSeVer2( spep_0 + 192, 1231, "",spep_0 + 304, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 164 );
SE010 = playSeVer2( spep_0 + 208, 1147, "",spep_0 + 306, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 208, SE010, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --276f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE012, 63 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ・前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射～フィニッシュ・背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 102 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, 0.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 0.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, 0.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, 0.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 0, 0.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 0, 0.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -0.2, 0.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -0.2, 0.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -0.2, 0.3 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 142 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, 34.5, -273.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 34.5, -273.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 123.8, -184.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 123.8, -184.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -68.1, 105.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -68.1, 105.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -1.2, 279.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -1.2, 279.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 40.8, 196.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 40.8, 196.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 54.7, 322.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 54.7, 322.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -23.3, 271.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -23.3, 271.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -11.5, 366.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -11.5, 366.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 35.2, 286.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 35.2, 286.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 40.3, 363.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 40.3, 363.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -6.6, 304 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -6.6, 304 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 0.5, 375.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 0.5, 375.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 29.3, 301.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 29.3, 301.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 28.5, 357.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 28.5, 357.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -0.1, 315.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -0.1, 315.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 3.1, 358.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 3.1, 358.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34, 317.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34, 317.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 22, 355.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 22, 355.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 6.1, 330.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 6.1, 330.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 8.4, 353.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 8.4, 353.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 25.4, 330.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 25.4, 330.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 21.5, 351.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 21.5, 351.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 11.7, 338.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 11.7, 338.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 10, 352.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 10, 352.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 22.5, 340 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 22.5, 340 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 21.5, 353.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 21.5, 353.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 11.7, 341.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 11.7, 341.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 9.9, 353.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 9.9, 353.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -827.7, -850.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -827.7, -850.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -791.2, -811.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -791.2, -811.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -597.5, -587.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -597.5, -587.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -589, -578.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -589, -578.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -407.7, -368.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -407.7, -368.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -403.6, -364.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -403.6, -364.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -228.6, -161.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -228.6, -161.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -226.8, -159.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -226.8, -159.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -56.4, 37.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -56.4, 37.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -56.1, 37.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -56.1, 37.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -37.6, 59.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -37.6, 59.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -37.4, 59 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -37.4, 59 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -19.3, 79.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -19.3, 79.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -19.2, 79.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -19.2, 79.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -1.3, 100.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -1.3, 100.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -1.3, 99.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -1.3, 99.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 16.4, 120.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 16.4, 120.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 16.3, 120.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 16.3, 120.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 33.8, 140.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 33.8, 140.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 33.7, 140 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 33.7, 140 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 51.2, 160.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 51.2, 160.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 51.1, 160 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 51.1, 160 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 68.5, 179.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 68.5, 179.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 68.4, 179.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 68.4, 179.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 85.7, 199.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 85.7, 199.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 85.6, 199.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 85.6, 199.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 102.9, 219.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 102.9, 219.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 102.9, 219.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 102.9, 219.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 119.9, 239.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 119.9, 239.6 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 7.79, 7.79 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 7.79, 7.79 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 145 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 149 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き3
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 414 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, -200.3, -235.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -200.3, -235.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -164, -186.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -164, -186.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -163.9, -186.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -163.9, -186.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -131.1, -142.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -131.1, -142.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -130.6, -141.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -130.6, -141.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -101, -102.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -101, -102.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -100.1, -101.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -100.1, -101.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -73.3, -65.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -73.3, -65.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -71.7, -63.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -71.7, -63.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -47.3, -31.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -47.3, -31.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -44.7, -29.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -44.7, -29.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -22.4, 0.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -22.4, 0.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -18.8, 3.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -18.8, 3.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 2, 30.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 2, 30.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 6.8, 35.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 6.8, 35.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 26.3, 60.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 26.3, 60.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 32.6, 66.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 32.6, 66.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 51.3, 89.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 51.3, 89.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 59.2, 97.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 59.2, 97.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 77.4, 119.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 77.4, 119.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 87.1, 129.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 87.1, 129.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 103.7, 148.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 103.7, 148.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 112.1, 156.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 112.1, 156.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 126, 171.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 126, 171.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 133.3, 178.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 133.3, 178.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 144.6, 190.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 144.6, 190.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 150.8, 196.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 150.8, 196.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 159.7, 206.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 159.7, 206.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 164.9, 211.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 164.9, 211.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 171.7, 218.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 171.7, 218.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 175.7, 222.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 175.7, 222.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 180.6, 227.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 180.6, 227.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 183.5, 230 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 183.5, 230 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 186.6, 233.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 186.6, 233.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 188.5, 235 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 188.5, 235 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 190.1, 236.6 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 190.1, 236.6 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 191, 237.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 191, 237.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 191.4, 237.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 191.4, 237.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 82.5, -203.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 82.5, -203.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 83.1, -203 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 83.1, -203 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 105.5, -179.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 105.5, -179.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 106.7, -179.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 106.7, -179.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 126.9, -156.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 126.9, -156.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 128, -156.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 128, -156.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 146, -137.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 146, -137.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 147.3, -137.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 147.3, -137.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 163, -118.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 163, -118.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 164.2, -118.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 164.2, -118.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 177.8, -104.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 177.8, -104.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 179, -104.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 179, -104.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 190.3, -90.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 190.3, -90.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 191.4, -90 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 191.4, -90 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 200.6, -80.5 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 200.6, -80.5 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 201.8, -80.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 201.8, -80.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 208.7, -71 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 208.7, -71 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 209.8, -70.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 209.8, -70.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 211.8, -69.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 211.8, -69.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 213.1, -69.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 213.1, -69.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 214.7, -65.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 214.7, -65.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 217.3, -64.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 217.3, -64.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 218.6, -64.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 218.6, -64.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 219.8, -60.9 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 219.8, -60.9 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 220.9, -60.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 220.9, -60.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 222, -60 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 222, -60 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 223.2, -60 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 223.2, -60 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 224, -57.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 224, -57.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 225.1, -56.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 225.1, -56.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 225.8, -56.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 225.8, -56.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 227.1, -56.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 227.1, -56.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 227.5, -53.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 227.5, -53.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 228.6, -53.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 228.6, -53.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 228.9, -53.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 228.9, -53.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 230.2, -53.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 230.2, -53.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 230.2, -51.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 230.2, -51.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 231.4, -51.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 231.4, -51.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 231.4, -51.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 231.4, -51.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 232.7, -51.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 232.7, -51.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 232.4, -49.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 232.4, -49.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 233.6, -49.2 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 233.6, -49.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 233.3, -49.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 233.3, -49.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 234.6, -49.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 234.6, -49.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 234.1, -47.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 234.1, -47.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 235.3, -47.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 235.3, -47.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 234.8, -48.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 234.8, -48.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 236, -48.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 236, -48.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 235.3, -46.7 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 235.3, -46.7 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 236.5, -46.6 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 236.5, -46.6 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 235.8, -47.4 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 235.8, -47.4 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 237, -47.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 237, -47.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 236.1, -46 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 236.1, -46 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 237.3, -45.8 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 237.3, -45.8 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 236.4, -46.9 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 236.4, -46.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 237.6, -46.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 237.6, -46.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 236.5, -45.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 236.5, -45.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 237.7, -45.5 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.66, 2.66 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 457 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 458 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 463 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 464 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 469 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 475 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 476 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 479 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 480 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 485 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 486 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 491 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 492 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 497 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 498 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 501 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 502 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 527 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 528 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--気弾発射
SE013 = playSeVer2( spep_2 + 58, 1215, "",spep_2 + 166, 26, 32, -1);
setStartTimeMs( SE013,  1100 );
SE014 = playSeVer2( spep_2 + 48, 1145, "",spep_2 + 160, 0, 24, -1);
SE015 = playSeVer2( spep_2 + 48, 1249, "",spep_2 + 158, 0, 22, -1);
SE016 = playSeVer2( spep_2 + 48, 1179, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 92; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

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
--敵ヒット
SE017 = playSeVer2( spep_2 + 122, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 178, 1121, "",spep_2 + 342, 0, 88, -1);
setSeVolumeByWorkId( spep_2 + 178, SE018, 63 );
SE019 = playSeVer2( spep_2 + 186, 1027, "", 0, 0, 0, -1);

--気弾発射２
SE020 = playSeVer2( spep_2 + 272, 1146, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 272, 1177, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1193, "", 0, 0, 0, -1);

--気弾のみこまれる
SE023 = playSeVer2( spep_2 + 360, 1161, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 364, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 428, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 428, SE025, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 414 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 532f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場～両手に気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 276;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場～両手に気弾溜め・前面(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 登場～両手に気弾溜め・背面(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 108 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 108 + OFFSET_X, 1, 624.7, -458.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 624.7, -458.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 484.3, -369.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 484.3, -369.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 429.9, -334.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 429.9, -334.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 390.8, -309.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 390.8, -309.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 360, -290.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 360, -290.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 335.1, -274.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 335.1, -274.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 314.4, -261.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 314.4, -261.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 297.3, -250.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 297.3, -250.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 283.1, -241.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 283.1, -241.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 271.5, -234.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 271.5, -234.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 262.4, -228.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 262.4, -228.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 255.4, -224 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 255.4, -224 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 250.5, -220.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 250.5, -220.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 247.6, -219 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 247.6, -219 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 247.3, -219.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 247.3, -219.3 , 0 );

setScaleKey( spep_0 + 108 + OFFSET_X, 1, 7.86, 7.86 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 7.86, 7.86 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.11, 5.11 );

setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--エネルギー溜める
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 300, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1391, "",spep_0 + 300, 0, 26, -1);
SE004 = playSeVer2( spep_0 + 6, 1399, "", 0, 0, 0, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 86, 1072, "", 0, 0, 0, -1);

--気弾拳に溜める
SE006 = playSeVer2( spep_0 + 164, 1116, "",spep_0 + 222, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 184, 1038, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 192, 1043, "",spep_0 + 304, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 192, SE008, 87 );
SE009 = playSeVer2( spep_0 + 192, 1231, "",spep_0 + 304, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 164 );
SE010 = playSeVer2( spep_0 + 208, 1147, "",spep_0 + 306, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 208, SE010, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --276f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE012, 63 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ・前面(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気弾発射～フィニッシュ・背面(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 102 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, 0.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 0.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, 0.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, 0.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 0, 0.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 0, 0.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -0.2, 0.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -0.2, 0.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -0.2, 0.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -0.2, 0.3 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 142 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, 34.5, -273.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 34.5, -273.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 123.8, -184.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 123.8, -184.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -68.1, 105.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -68.1, 105.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -1.2, 279.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -1.2, 279.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 40.8, 196.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 40.8, 196.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 54.7, 322.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 54.7, 322.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -23.3, 271.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -23.3, 271.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -11.5, 366.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -11.5, 366.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 35.2, 286.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 35.2, 286.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 40.3, 363.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 40.3, 363.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -6.6, 304 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -6.6, 304 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 0.5, 375.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 0.5, 375.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 29.3, 301.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 29.3, 301.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 28.5, 357.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 28.5, 357.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -0.1, 315.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -0.1, 315.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 3.1, 358.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 3.1, 358.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34, 317.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34, 317.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 22, 355.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 22, 355.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 6.1, 330.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 6.1, 330.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 8.4, 353.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 8.4, 353.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 25.4, 330.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 25.4, 330.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 21.5, 351.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 21.5, 351.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 11.7, 338.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 11.7, 338.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 10, 352.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 10, 352.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 22.5, 340 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 22.5, 340 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 21.5, 353.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 21.5, 353.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 11.7, 341.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 11.7, 341.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 9.9, 353.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 9.9, 353.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -827.7, -850.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -827.7, -850.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -791.2, -811.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -791.2, -811.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -597.5, -587.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -597.5, -587.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -589, -578.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -589, -578.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -407.7, -368.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -407.7, -368.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -403.6, -364.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -403.6, -364.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -228.6, -161.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -228.6, -161.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -226.8, -159.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -226.8, -159.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -56.4, 37.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -56.4, 37.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -56.1, 37.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -56.1, 37.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -37.6, 59.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -37.6, 59.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -37.4, 59 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -37.4, 59 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -19.3, 79.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -19.3, 79.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -19.2, 79.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -19.2, 79.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -1.3, 100.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -1.3, 100.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -1.3, 99.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -1.3, 99.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 16.4, 120.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 16.4, 120.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 16.3, 120.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 16.3, 120.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 33.8, 140.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 33.8, 140.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 33.7, 140 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 33.7, 140 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 51.2, 160.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 51.2, 160.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 51.1, 160 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 51.1, 160 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 68.5, 179.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 68.5, 179.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 68.4, 179.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 68.4, 179.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 85.7, 199.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 85.7, 199.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 85.6, 199.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 85.6, 199.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 102.9, 219.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 102.9, 219.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 102.9, 219.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 102.9, 219.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 119.9, 239.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 119.9, 239.6 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 7.79, 7.79 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 7.79, 7.79 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 145 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 149 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き3
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 414 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, -200.3, -235.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -200.3, -235.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -164, -186.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -164, -186.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -163.9, -186.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -163.9, -186.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -131.1, -142.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -131.1, -142.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -130.6, -141.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -130.6, -141.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -101, -102.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -101, -102.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -100.1, -101.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -100.1, -101.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -73.3, -65.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -73.3, -65.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -71.7, -63.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -71.7, -63.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -47.3, -31.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -47.3, -31.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -44.7, -29.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -44.7, -29.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -22.4, 0.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -22.4, 0.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -18.8, 3.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -18.8, 3.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 2, 30.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 2, 30.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 6.8, 35.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 6.8, 35.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 26.3, 60.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 26.3, 60.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 32.6, 66.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 32.6, 66.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 51.3, 89.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 51.3, 89.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 59.2, 97.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 59.2, 97.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 77.4, 119.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 77.4, 119.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 87.1, 129.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 87.1, 129.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 103.7, 148.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 103.7, 148.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 112.1, 156.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 112.1, 156.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 126, 171.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 126, 171.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 133.3, 178.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 133.3, 178.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 144.6, 190.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 144.6, 190.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 150.8, 196.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 150.8, 196.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 159.7, 206.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 159.7, 206.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 164.9, 211.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 164.9, 211.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 171.7, 218.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 171.7, 218.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 175.7, 222.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 175.7, 222.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 180.6, 227.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 180.6, 227.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 183.5, 230 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 183.5, 230 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 186.6, 233.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 186.6, 233.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 188.5, 235 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 188.5, 235 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 190.1, 236.6 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 190.1, 236.6 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 191, 237.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 191, 237.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 191.4, 237.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 191.4, 237.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 82.5, -203.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 82.5, -203.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 83.1, -203 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 83.1, -203 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 105.5, -179.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 105.5, -179.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 106.7, -179.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 106.7, -179.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 126.9, -156.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 126.9, -156.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 128, -156.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 128, -156.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 146, -137.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 146, -137.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 147.3, -137.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 147.3, -137.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 163, -118.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 163, -118.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 164.2, -118.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 164.2, -118.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 177.8, -104.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 177.8, -104.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 179, -104.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 179, -104.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 190.3, -90.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 190.3, -90.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 191.4, -90 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 191.4, -90 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 200.6, -80.5 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 200.6, -80.5 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 201.8, -80.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 201.8, -80.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 208.7, -71 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 208.7, -71 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 209.8, -70.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 209.8, -70.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 211.8, -69.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 211.8, -69.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 213.1, -69.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 213.1, -69.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 214.7, -65.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 214.7, -65.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 217.3, -64.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 217.3, -64.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 218.6, -64.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 218.6, -64.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 219.8, -60.9 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 219.8, -60.9 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 220.9, -60.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 220.9, -60.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 222, -60 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 222, -60 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 223.2, -60 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 223.2, -60 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 224, -57.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 224, -57.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 225.1, -56.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 225.1, -56.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 225.8, -56.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 225.8, -56.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 227.1, -56.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 227.1, -56.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 227.5, -53.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 227.5, -53.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 228.6, -53.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 228.6, -53.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 228.9, -53.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 228.9, -53.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 230.2, -53.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 230.2, -53.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 230.2, -51.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 230.2, -51.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 231.4, -51.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 231.4, -51.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 231.4, -51.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 231.4, -51.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 232.7, -51.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 232.7, -51.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 232.4, -49.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 232.4, -49.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 233.6, -49.2 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 233.6, -49.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 233.3, -49.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 233.3, -49.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 234.6, -49.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 234.6, -49.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 234.1, -47.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 234.1, -47.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 235.3, -47.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 235.3, -47.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 234.8, -48.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 234.8, -48.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 236, -48.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 236, -48.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 235.3, -46.7 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 235.3, -46.7 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 236.5, -46.6 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 236.5, -46.6 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 235.8, -47.4 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 235.8, -47.4 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 237, -47.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 237, -47.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 236.1, -46 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 236.1, -46 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 237.3, -45.8 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 237.3, -45.8 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 236.4, -46.9 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 236.4, -46.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 237.6, -46.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 237.6, -46.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 236.5, -45.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 236.5, -45.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 237.7, -45.5 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.66, 2.66 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 457 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 458 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 463 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 464 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 469 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 475 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 476 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 479 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 480 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 485 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 486 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 491 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 492 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 497 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 498 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 501 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 502 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 527 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 528 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--気弾発射
SE013 = playSeVer2( spep_2 + 58, 1215, "",spep_2 + 166, 26, 32, -1);
setStartTimeMs( SE013,  1100 );
SE014 = playSeVer2( spep_2 + 48, 1145, "",spep_2 + 160, 0, 24, -1);
SE015 = playSeVer2( spep_2 + 48, 1249, "",spep_2 + 158, 0, 22, -1);
SE016 = playSeVer2( spep_2 + 48, 1179, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 92; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

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
--敵ヒット
SE017 = playSeVer2( spep_2 + 122, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 178, 1121, "",spep_2 + 342, 0, 88, -1);
setSeVolumeByWorkId( spep_2 + 178, SE018, 63 );
SE019 = playSeVer2( spep_2 + 186, 1027, "", 0, 0, 0, -1);

--気弾発射２
SE020 = playSeVer2( spep_2 + 272, 1146, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 272, 1177, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1193, "", 0, 0, 0, -1);

--気弾のみこまれる
SE023 = playSeVer2( spep_2 + 360, 1161, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 364, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 428, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 428, SE025, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 414 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 532f -4


end