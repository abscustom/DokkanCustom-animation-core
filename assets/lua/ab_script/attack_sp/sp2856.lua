--4031190:UR_超サイヤ人ゴッドSS孫悟空(界王拳)_必殺技：10倍界王拳 ゴッドかめはめ波
--sp_effect_a1_00486
--sp2856

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163784;  -- 冒頭 ef_001
SP_02 = 163785;  -- 足元アップ〜フィニッシュ：前 ef_002
SP_02b = 163786;  -- 足元アップ〜フィニッシュ：後 ef_002b

--エフェクト(敵)
SP_02r = 163787;  -- 足元アップ〜フィニッシュ：前 ef_002r
SP_02br = 163788;  -- 足元アップ〜フィニッシュ：後 ef_002br


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

setupMovie(0, SP_01, 0, 1);
-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 106;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1477, "",spep_0 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 126 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 40 );
SE006 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE006, 40 );
SE007 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 40 );
SE008 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 40 );
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE009, 40 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --100F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE011 = playSeVer2( spep_1 + 90, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 64 );
SE012 = playSeVer2( spep_1 + 90, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE013, 80 );
SE014 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 足元アップ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 880;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 足元アップ〜フィニッシュ：前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 95.8, -550.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 95.8, -550.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 135.5, -305.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 135.5, -305.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 145.5, -243.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 145.5, -243.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 146.9, -234.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 146.9, -234.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 147.9, -229 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 147.9, -229 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 148.6, -224.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 148.6, -224.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 149.2, -220.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 149.2, -220.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 149.7, -217.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 149.7, -217.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 150.2, -214.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 150.2, -214.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 150.6, -212.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 150.6, -212.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 150.9, -210 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 150.9, -210 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 151.2, -208.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 151.2, -208.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 151.5, -206.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 151.5, -206.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 151.8, -204.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 151.8, -204.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 152, -203.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 152, -203.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 152.2, -202.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 152.2, -202.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 152.4, -201 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 152.4, -201 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 152.6, -200 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 152.6, -200 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 152.7, -199.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 152.7, -199.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 152.8, -198.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 152.8, -198.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 153, -197.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 153, -197.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 153.1, -197 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 153.1, -197 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 153.1, -196.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 153.1, -196.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 153.2, -196 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 153.2, -196 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 153.3, -195.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 153.3, -195.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 153.3, -195.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 153.3, -195.4 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -30 );

setAlphaKey( spep_2 + 58 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 110 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 58 + OFFSET_X, 1, 3, 1, 0., 0, 0.4 );

--敵の動き2

setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 182 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, 81.8, 41.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 81.8, 41.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 79.4, 49.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 79.4, 49.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 71.7, 31.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 71.7, 31.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 67.9, 48.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 67.9, 48.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 67.4, 48.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 67.4, 48.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 75.2, 44.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 75.2, 44.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 83, 50.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 83, 50.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 82.9, 50.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 82.9, 50.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 91, 36.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 91, 36.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 84.9, 42.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 84.9, 42.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 84.9, 22.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 84.9, 22.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 84.8, 52.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 84.8, 52.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 84.8, 52.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 84.8, 52.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 84.8, 26.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 84.8, 26.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 90.8, 32.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 90.8, 32.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 84.8, 26.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 84.8, 26.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 135.4, -80.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 135.4, -80.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 140.2, -77.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 140.2, -77.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 143.7, -75.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 143.7, -75.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 145.7, -74.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 145.7, -74.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 148.4, -84 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 148.4, -84 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -40 );

setAlphaKey( spep_2 + 150 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 192 + OFFSET_X, 1, 255 );

--敵の動き3

setDisp( spep_2 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, 124.4, 278 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 124.4, 278 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 102.4, 542 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 102.4, 542 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 98.4, 638 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 98.4, 638 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 102.4, 762 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 102.4, 762 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 0, -286 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 0, -286 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 0, -114.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 0, -114.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0, -24.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0, -24.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -3.1, 22 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -3.1, 22 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 0, 34.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 0, 34.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1, 53 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1, 53 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -1, 60.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -1, 60.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -5.2, 62.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -5.2, 62.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 2.9, 63.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 2.9, 63.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 2.9, 66.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 2.9, 66.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 1.3, 66.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 1.3, 66.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -2.1, 75.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -2.1, 75.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 4.8, 73.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 4.8, 73.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 4.8, 74.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 4.8, 74.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -1.5, 73.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -1.5, 73.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -2.3, 81.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -2.3, 81.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 2.3, 76.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 2.3, 76.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -2.2, 81.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -2.2, 81.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -2.2, 82.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -2.2, 82.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 2.3, 85.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 2.3, 85.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -3.4, 77.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -3.4, 77.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 0.3, 84.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 0.3, 84.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 0.3, 85.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 0.3, 85.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -0.6, 88 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -0.6, 88 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -1, 79.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -1, 79.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 2.3, 86.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 2.3, 86.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 2.3, 86.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 2.3, 86.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 5.9, 84.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 5.9, 84.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -2.9, 82.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -2.9, 82.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 4.6, 83.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 4.6, 83.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 0, 349.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 0, 349.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 0, 358.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 0, 358.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 0, 363.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 0, 363.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 0, 366.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 0, 366.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 0, 369.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 0, 369.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 0, 372.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 0, 372.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 0, 374.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 0, 374.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 0, 375.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 0, 375.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 0, 377.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 0, 377.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 0, 378.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 0, 378.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 0, 379.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 0, 379.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 0, 380.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 0, 380.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 0, 381.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 0, 381.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 0, 382.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 0, 382.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 0, 383.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 0, 383.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 0, 384.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 0, 384.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 0, 385 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 0, 385 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 0, 385.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 0, 385.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 0, 386.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 0, 386.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 0, 386.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 0, 386.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 0, 387.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 0, 387.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 0, 387.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 0, 387.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 0, 388.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 0, 388.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 0, 388.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 0, 388.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 0, 388.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 0, 388.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0, 389.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0, 389.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 0, 389.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 0, 389.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 0, 389.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 0, 389.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 1, 389 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1, 389 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 1, 389.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 1, 389.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 0, 390.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 0, 390.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 0, 390.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 0, 390.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -3, 390.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -3, 390.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 2.3, 392.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 2.3, 392.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 3.3, 389.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 3.3, 389.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -0.6, 391.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -0.6, 391.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 1.3, 389.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 1.3, 389.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 0.3, 393.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 0.3, 393.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -2.6, 393.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -2.6, 393.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 3.3, 392.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 3.3, 392.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 392.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 0, 392.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -2.8, 393.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -2.8, 393.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 2.8, 393.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 2.8, 393.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -3.1, 391.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -3.1, 391.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 2, 392.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 2, 392.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -1.9, 393.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -1.9, 393.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 2.4, 392.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 2.4, 392.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -2, 390.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -2, 390.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 2.8, 392.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 2.8, 392.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -1.7, 391.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -1.7, 391.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 3.4, 392.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 3.4, 392.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -1.9, 393.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -1.9, 393.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 1, 391.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 1, 391.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -2.8, 395.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -2.8, 395.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 3, 392 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 3, 392 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -2.7, 391.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -2.7, 391.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 0.4, 396.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 0.4, 396.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -1, 391.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -1, 391.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 0.5, 396.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 0.5, 396.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -0.5, 390.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -0.5, 390.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 1.1, 395.2 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 1.1, 395.2 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 1.3, 390 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 1.3, 390 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -3.2, 395.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -3.2, 395.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 1.8, 390.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 1.8, 390.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -3, 395.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -3, 395.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 3, 394.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 3, 394.1 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );

setAlphaKey( spep_2 + 198 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 398 + OFFSET_X, 1, 255 );

--敵の動き4

setDisp( spep_2 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 628 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 620 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 620 + OFFSET_X, 1, 70.8, 44.2 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 70.8, 44.2 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 143.4, 114.5 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 143.4, 114.5 , 0 );

setScaleKey( spep_2 + 620 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 620 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, -15 );

setAlphaKey( spep_2 + 620 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 623 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 624 + OFFSET_X, 1, 80 );
setAlphaKey( spep_2 + 629 + OFFSET_X, 1, 80 );
setAlphaKey( spep_2 + 630 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 620 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 624 + OFFSET_X, 1, 3, 0, 0, 1, 1 );
setBlendColor( spep_2 + 628 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--向かっていく
SE015 = playSeVer2( spep_2 + 14, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE015, 136 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --

setAlphaKey( spep_2 + 30 + OFFSET_X, 1, 255 );

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

--初手パンチ
SE016 = playSeVer2( spep_2 + 48, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 48, 1187, "", 0, 0, 0, -1);

--オーラ
SE018 = playSeVer2( spep_2 + 48, 1176, "",spep_2 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 50 );
SE019 = playSeVer2( spep_2 + 48, 1477, "",spep_2 + 204, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE019, 25 );
SE020 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE020, 40 );
SE021 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE021, 40 );
SE022 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE022, 40 );

--振りかぶる
SE023 = playSeVer2( spep_2 + 108, 1116, "",spep_2 + 148, 0, 18, -1);

--オーラ
SE024 = playSeVer2( spep_2 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE024, 40 );

--腹パン
SE025 = playSeVer2( spep_2 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE025, 80 );
SE026 = playSeVer2( spep_2 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE026, 80 );
SE027 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_2 + 180, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 186, 1120, "", spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 186, SE029, 80 );
SE030 = playSeVer2( spep_2 + 186, 1187, "", spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 186, SE030, 80 );

--かめはめ波溜め
SE031 = playSeVer2( spep_2 + 284, 1210, "",spep_2 + 418, 20, 18, -1);
setStartTimeMs( SE031,  1567 );

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 192, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE032, 71 );
SE033 = playSeVer2( spep_2 + 192, 1121, "",spep_2 + 366, 0, 110, -1);
setSeVolumeByWorkId( spep_2 + 192, SE033, 63 );

--オーラ
SE034 = playSeVer2( spep_2 + 242, 1176, "",spep_2 + 428, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 242, SE034, 50 );
SE035 = playSeVer2( spep_2 + 250, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 250, SE035, 40 );

--踏み込む
SE036 = playSeVer2( spep_2 + 264, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE036, 168 );

--オーラ
SE037 = playSeVer2( spep_2 + 274, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 274, SE037, 40 );

--かめはめ波溜め
SE038 = playSeVer2( spep_2 + 284, 1209, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 284, 1356, "",spep_2 + 426, 0, 28, -1);

--オーラ
SE040 = playSeVer2( spep_2 + 298, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 298, SE040, 40 );
SE041 = playSeVer2( spep_2 + 322, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 322, SE041, 40 );
SE042 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 346, SE042, 40 );
SE043 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 370, SE043, 40 );
SE044 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 394, SE044, 40 );

--かめはめ波発射
SE045 = playSeVer2( spep_2 + 400, 1133, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 400, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE046, 71 );
SE047 = playSeVer2( spep_2 + 400, 1146, "", 0, 0, 0, -1);

--かめはめ波中
SE048 = playSeVer2( spep_2 + 454, 1211, "",spep_2 + 760, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 454, SE048, 232 );
SE049 = playSeVer2( spep_2 + 490, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE049, 79 );

--威力増す
SE050 = playSeVer2( spep_2 + 494, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE050, 80 );
SE051 = playSeVer2( spep_2 + 500, 1068, "", 0, 0, 0, -1);

--爆発
SE052 = playSeVer2( spep_2 + 748, 1437, "",spep_2 + 872, 4, 74, -1);
setSeVolumeByWorkId( spep_2 + 748, SE052, 60 );
setStartTimeMs( SE052,  2300 );

--敵ヒット
SE053 = playSeVer2( spep_2 + 614, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE053, 87 );
SE054 = playSeVer2( spep_2 + 622, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE054, 76 );
SE055 = playSeVer2( spep_2 + 622, 1067, "", 0, 0, 0, -1);

--爆発予兆
SE056 = playSeVer2( spep_2 + 670, 1157, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE056, 114 );

--爆発
SE057 = playSeVer2( spep_2 + 734, 1069, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 748, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 748, SE058, 200 );
SE059 = playSeVer2( spep_2 + 748, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 748, SE059, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 756); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 878F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 106;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1477, "",spep_0 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 126 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 40 );
SE006 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE006, 40 );
SE007 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 40 );
SE008 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 40 );
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE009, 40 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --100F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE011 = playSeVer2( spep_1 + 90, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 64 );
SE012 = playSeVer2( spep_1 + 90, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE013, 80 );
SE014 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 足元アップ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 880;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 足元アップ〜フィニッシュ：前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -95.8, -550.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -95.8, -550.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -135.5, -305.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -135.5, -305.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -145.5, -243.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -145.5, -243.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -146.9, -234.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -146.9, -234.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -147.9, -229 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -147.9, -229 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -148.6, -224.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -148.6, -224.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -149.2, -220.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -149.2, -220.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -149.7, -217.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -149.7, -217.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -150.2, -214.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -150.2, -214.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -150.6, -212.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -150.6, -212.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -150.9, -210 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -150.9, -210 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -151.2, -208.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -151.2, -208.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -151.5, -206.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -151.5, -206.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -151.8, -204.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -151.8, -204.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -152, -203.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -152, -203.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -152.2, -202.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -152.2, -202.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -152.4, -201 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -152.4, -201 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -152.6, -200 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -152.6, -200 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -152.7, -199.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -152.7, -199.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -152.8, -198.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -152.8, -198.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -153, -197.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -153, -197.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -153.1, -197 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -153.1, -197 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -153.1, -196.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -153.1, -196.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -153.2, -196 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -153.2, -196 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -153.3, -195.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -153.3, -195.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -153.3, -195.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -153.3, -195.4 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 30 );

setAlphaKey( spep_2 + 58 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 110 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 58 + OFFSET_X, 1, 3, 1, 0., 0, 0.4 );

--敵の動き2

setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 182 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, -81.8, 41.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -81.8, 41.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -79.4, 49.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -79.4, 49.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -71.7, 31.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -71.7, 31.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -67.9, 48.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -67.9, 48.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -67.4, 48.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -67.4, 48.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -75.2, 44.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -75.2, 44.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -83, 50.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -83, 50.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -82.9, 50.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -82.9, 50.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -91, 36.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -91, 36.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -84.9, 42.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -84.9, 42.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -84.9, 22.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -84.9, 22.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -84.8, 52.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -84.8, 52.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -84.8, 52.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -84.8, 52.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -84.8, 26.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -84.8, 26.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -90.8, 32.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -90.8, 32.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -84.8, 26.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -84.8, 26.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -135.4, -80.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -135.4, -80.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -140.2, -77.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -140.2, -77.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -143.7, -75.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -143.7, -75.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -145.7, -74.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -145.7, -74.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -148.4, -84 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -148.4, -84 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 40 );

setAlphaKey( spep_2 + 150 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 192 + OFFSET_X, 1, 255 );

--敵の動き3

setDisp( spep_2 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 198 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 206 + OFFSET_X, 1,5 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, -124.4, 278 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -124.4, 278 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -102.4, 542 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -102.4, 542 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -98.4, 638 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -98.4, 638 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -102.4, 762 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -102.4, 762 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 0, -286 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 0, -286 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 0, -114.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 0, -114.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0, -24.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0, -24.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 3.1, 22 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 3.1, 22 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 0, 34.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 0, 34.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 1, 53 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 1, 53 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 1, 60.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 1, 60.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 5.2, 62.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 5.2, 62.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -2.9, 63.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -2.9, 63.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -2.9, 66.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -2.9, 66.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -1.3, 66.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -1.3, 66.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 2.1, 75.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 2.1, 75.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -4.8, 73.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -4.8, 73.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -4.8, 74.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -4.8, 74.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 1.5, 73.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 1.5, 73.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 2.3, 81.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 2.3, 81.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -2.3, 76.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -2.3, 76.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 2.2, 81.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 2.2, 81.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 2.2, 82.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 2.2, 82.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -2.3, 85.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -2.3, 85.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 3.4, 77.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 3.4, 77.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -0.3, 84.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -0.3, 84.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -0.3, 85.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -0.3, 85.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 0.6, 88 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 0.6, 88 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 1, 79.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 1, 79.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -2.3, 86.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -2.3, 86.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -2.3, 86.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -2.3, 86.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -5.9, 84.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -5.9, 84.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 2.9, 82.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 2.9, 82.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -4.6, 83.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -4.6, 83.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 0, 349.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 0, 349.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 0, 358.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 0, 358.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 0, 363.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 0, 363.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 0, 366.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 0, 366.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 0, 369.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 0, 369.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 0, 372.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 0, 372.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 0, 374.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 0, 374.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 0, 375.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 0, 375.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 0, 377.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 0, 377.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 0, 378.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 0, 378.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 0, 379.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 0, 379.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 0, 380.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 0, 380.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 0, 381.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 0, 381.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 0, 382.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 0, 382.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 0, 383.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 0, 383.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 0, 384.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 0, 384.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 0, 385 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 0, 385 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 0, 385.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 0, 385.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 0, 386.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 0, 386.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 0, 386.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 0, 386.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 0, 387.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 0, 387.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 0, 387.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 0, 387.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 0, 388.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 0, 388.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 0, 388.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 0, 388.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 0, 388.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 0, 388.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0, 389.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0, 389.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 0, 389.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 0, 389.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 0, 389.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 0, 389.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -1, 389 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -1, 389 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1, 389.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1, 389.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 0, 390.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 0, 390.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 0, 390.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 0, 390.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 3, 390.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 3, 390.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -2.3, 392.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -2.3, 392.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -3.3, 389.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -3.3, 389.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 0.6, 391.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 0.6, 391.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -1.3, 389.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -1.3, 389.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -0.3, 393.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -0.3, 393.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 2.6, 393.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 2.6, 393.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -3.3, 392.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -3.3, 392.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 392.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 0, 392.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 2.8, 393.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 2.8, 393.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -2.8, 393.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -2.8, 393.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 3.1, 391.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 3.1, 391.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -2, 392.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -2, 392.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 1.9, 393.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 1.9, 393.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -2.4, 392.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -2.4, 392.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 2, 390.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 2, 390.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -2.8, 392.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -2.8, 392.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 1.7, 391.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 1.7, 391.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -3.4, 392.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -3.4, 392.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 1.9, 393.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 1.9, 393.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -1, 391.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -1, 391.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 2.8, 395.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 2.8, 395.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -3, 392 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -3, 392 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 2.7, 391.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 2.7, 391.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -0.4, 396.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -0.4, 396.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 1, 391.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 1, 391.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -0.5, 396.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -0.5, 396.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 0.5, 390.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 0.5, 390.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -1.1, 395.2 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -1.1, 395.2 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -1.3, 390 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -1.3, 390 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 3.2, 395.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 3.2, 395.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -1.8, 390.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -1.8, 390.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 3, 395.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 3, 395.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -3, 394.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -3, 394.1 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );

setAlphaKey( spep_2 + 198 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 398 + OFFSET_X, 1, 255 );

--敵の動き4

setDisp( spep_2 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 628 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 620 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 620 + OFFSET_X, 1, -70.8, 44.2 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -70.8, 44.2 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -143.4, 114.5 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -143.4, 114.5 , 0 );

setScaleKey( spep_2 + 620 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 620 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, 15 );

setAlphaKey( spep_2 + 620 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 623 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 624 + OFFSET_X, 1, 80 );
setAlphaKey( spep_2 + 629 + OFFSET_X, 1, 80 );
setAlphaKey( spep_2 + 630 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 620 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 624 + OFFSET_X, 1, 3, 0, 0, 1, 1 );
setBlendColor( spep_2 + 628 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--向かっていく
SE015 = playSeVer2( spep_2 + 14, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE015, 136 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --

setAlphaKey( spep_2 + 30 + OFFSET_X, 1, 255 );

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

--初手パンチ
SE016 = playSeVer2( spep_2 + 48, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 48, 1187, "", 0, 0, 0, -1);

--オーラ
SE018 = playSeVer2( spep_2 + 48, 1176, "",spep_2 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 50 );
SE019 = playSeVer2( spep_2 + 48, 1477, "",spep_2 + 204, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE019, 25 );
SE020 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE020, 40 );
SE021 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE021, 40 );
SE022 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE022, 40 );

--振りかぶる
SE023 = playSeVer2( spep_2 + 108, 1116, "",spep_2 + 148, 0, 18, -1);

--オーラ
SE024 = playSeVer2( spep_2 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE024, 40 );

--腹パン
SE025 = playSeVer2( spep_2 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE025, 80 );
SE026 = playSeVer2( spep_2 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE026, 80 );
SE027 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_2 + 180, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 186, 1120, "", spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 186, SE029, 80 );
SE030 = playSeVer2( spep_2 + 186, 1187, "", spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 186, SE030, 80 );

--かめはめ波溜め
SE031 = playSeVer2( spep_2 + 284, 1210, "",spep_2 + 418, 20, 18, -1);
setStartTimeMs( SE031,  1567 );

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 192, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE032, 71 );
SE033 = playSeVer2( spep_2 + 192, 1121, "",spep_2 + 366, 0, 110, -1);
setSeVolumeByWorkId( spep_2 + 192, SE033, 63 );

--オーラ
SE034 = playSeVer2( spep_2 + 242, 1176, "",spep_2 + 428, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 242, SE034, 50 );
SE035 = playSeVer2( spep_2 + 250, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 250, SE035, 40 );

--踏み込む
SE036 = playSeVer2( spep_2 + 264, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE036, 168 );

--オーラ
SE037 = playSeVer2( spep_2 + 274, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 274, SE037, 40 );

--かめはめ波溜め
SE038 = playSeVer2( spep_2 + 284, 1209, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 284, 1356, "",spep_2 + 426, 0, 28, -1);

--オーラ
SE040 = playSeVer2( spep_2 + 298, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 298, SE040, 40 );
SE041 = playSeVer2( spep_2 + 322, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 322, SE041, 40 );
SE042 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 346, SE042, 40 );
SE043 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 370, SE043, 40 );
SE044 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 394, SE044, 40 );

--かめはめ波発射
SE045 = playSeVer2( spep_2 + 400, 1133, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 400, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE046, 71 );
SE047 = playSeVer2( spep_2 + 400, 1146, "", 0, 0, 0, -1);

--かめはめ波中
SE048 = playSeVer2( spep_2 + 454, 1211, "",spep_2 + 760, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 454, SE048, 232 );
SE049 = playSeVer2( spep_2 + 490, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE049, 79 );

--威力増す
SE050 = playSeVer2( spep_2 + 494, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE050, 80 );
SE051 = playSeVer2( spep_2 + 500, 1068, "", 0, 0, 0, -1);

--爆発
SE052 = playSeVer2( spep_2 + 748, 1437, "",spep_2 + 872, 4, 74, -1);
setSeVolumeByWorkId( spep_2 + 748, SE052, 60 );
setStartTimeMs( SE052,  2300 );

--敵ヒット
SE053 = playSeVer2( spep_2 + 614, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE053, 87 );
SE054 = playSeVer2( spep_2 + 622, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE054, 76 );
SE055 = playSeVer2( spep_2 + 622, 1067, "", 0, 0, 0, -1);

--爆発予兆
SE056 = playSeVer2( spep_2 + 670, 1157, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE056, 114 );

--爆発
SE057 = playSeVer2( spep_2 + 734, 1069, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 748, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 748, SE058, 200 );
SE059 = playSeVer2( spep_2 + 748, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 748, SE059, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 756); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 878F


end
