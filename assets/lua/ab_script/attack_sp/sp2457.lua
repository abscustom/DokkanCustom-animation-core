--4025420：UR_究極ハーツ_ グラビティ・フィナーレ
--sp_effect_a7_13855
--sp2457

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 160839;	--指をはじく～空からキューブ出現	ef_001
SP_02 = 160840;	--キューブが敵をつぶす	ef_002_front
SP_02b = 160841;	--キューブが敵をつぶす	ef_002_back
SP_03 = 160844;	--手をクロスさせる　目線カットイン	ef_003
SP_04 = 160845;	--両手を開く～フィニッシュ	ef_004

--エフェクト(てき)
SP_02r = 160842;	--キューブが敵をつぶす　敵側	ef_002_r_front
SP_02br = 160843;	--キューブが敵をつぶす　敵側	ef_002_r_back


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 指をはじく～空からキューブ出現
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 434 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 434 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 434 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 434 -5, base_0, 255);
setEffAlphaKey( spep_0 + 434 -4, base_0, 0);

-- ** 音 ** --
--腕上げる
SE001 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 96, 1157, "",spep_0 + 224, 0, 58, -1);

--指パッチン
SE002 = playSeVer2( spep_0 + 48, 1221, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 48, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 62 );
setPitch( spep_0 + 48, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 48, 22, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 86 );

--光溢れる
SE006 = playSeVer2( spep_0 + 96, 1265, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1225, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1371, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--光空へ
SE009 = playSeVer2( spep_0 + 152, 1116, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 152, 1117, "", 0, 0, 0, -1);

--光雲に吸い込まれる
SE011 = playSeVer2( spep_0 + 200, 1184, "",spep_0 + 326, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 200, SE011, 58 );
SE012 = playSeVer2( spep_0 + 206, 1119, "", 0, 0, 0, -1);

--雲間爆発
SE013 = playSeVer2( spep_0 + 266, 1038, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 266, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE014, 80 );

--ブロック出現する
SE015 = playSeVer2( spep_0 + 288, 1305, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 306, 1264, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_0 + 322, 1271, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE017, 197 );
SE018 = playSeVer2( spep_0 + 330, 1226, "",spep_0 + 674, 60, 148, -1);
setSeVolumeByWorkId( spep_0 + 330, SE018, 78 );
SE019 = playSeVer2( spep_0 + 342, 1072, "", 0, 0, 0, -1);

--ブロック敵に落ちてくる
SE020 = playSeVer2( spep_0 + 392, 1213, "",spep_0 + 674, 40, 148, -1);
setSeVolumeByWorkId( spep_0 + 392, SE020, 68 );
setStartTimeMs( SE020,  100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 388; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge + 4, SE020, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 434 -4;



-------------------------------------------------
-- キューブが敵をつぶす
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 	ef_002_front
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 100 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 100 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 100 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 100 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 100 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 100 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 100 -4, 0, 0, 0, 0, 120);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -4 + 100, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 42, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );

setMoveKey( spep_1 -2 + 2, 1, 1.9, -111.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 2.1, -108.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 2.2, -106.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 2.4, -104.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 2.6, -102.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 2.9, -100.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 3.1, -97.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 3.3, -95.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 3.5, -93.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 3.7, -91.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 3.9, -89.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 4, -86.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 4.2, -84.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 4.5, -82.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 4.9, -79.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 5.3, -77.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 5.8, -74.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 6.2, -72 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 6.6, -69.3 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 7, -66.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 9.1, -90.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 9.6, -89.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 10.1, -88.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 10.7, -87.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 22.2, -205.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 70.8, -280.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -1.5, -202.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 63.2, -261.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -1, -176 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 63.6, -243 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 23.6, -181.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -0.3, -272.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 48.2, -242.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 40.4, -205.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -7.7, -256.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -23.6, -250.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 24.9, -205.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 49.3, -264.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 9.3, -234.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 41.7, -197.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -14.4, -288.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 74.4, -274.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 50.5, -221.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -5.7, -280.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 18.7, -226.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 67.2, -277.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 27.2, -231.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 27.4, -298.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 3.5, -269.3 , 0 );
setMoveKey( spep_1 -4 + 100, 1, 27.9, -271.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 4, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 10, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 12, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 22, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 26, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 30, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 32, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 34, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 41, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 46, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 49, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 50, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 52, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 56, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 58, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 60, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 62, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 64, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 66, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 68, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 70, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 74, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 76, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 78, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 80, 1, 2.14, 2.14 );
setScaleKey( spep_1 -3 + 82, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 86, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 88, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 92, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 94, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 96, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 98, 1, 2.31, 2.31 );
setScaleKey( spep_1 -4 + 100, 1, 2.33, 2.33 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, 0 );
setRotateKey( spep_1 -3 + 42, 1, -15.4 );
setRotateKey( spep_1 -3 + 49, 1, -15.4 );
setRotateKey( spep_1 -3 + 50, 1, 92.7 );
setRotateKey( spep_1 -4 + 100, 1, 92.7 );

-- ** 音 ** --
--ブロック敵ヒット
SE021 = playSeVer2( spep_1 + 46, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 100 -4;



-------------------------------------------------
-- 手をクロスさせる　目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 138 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 138 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 138 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 138 -5, base_2, 255);
setEffAlphaKey( spep_2 + 138 -4, base_2, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -140;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 510); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 510 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 510 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 510 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 敵キャラクター ** --

-- ** 音 ** --
--オーラ
SE022 = playSeVer2( spep_2 + 0, 1181, "",spep_2 + 148, 0, 18, -1);
SE023 = playSeVer2( spep_2 + 0, 1215, "",spep_2 + 148, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 72 );

--顔カットイン
SE024 = playSeVer2( spep_2 + 10, 1018, "", 0, 0, 0, -1);

--腕組む
SE025 = playSeVer2( spep_2 + 98, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 98, 1233, "", 0, 0, 0, -1);
setPitch( spep_2 + 98, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_2 + 138 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 94;


-------------------------------------------------
-- 両手を開く～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 350 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 350 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 350 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 350 -4, base_3, 255);

-- ** 敵キャラクター ** --

-- ** 音 ** --
--腕の動き
SE028 = playSeVer2( spep_3 + 0, 8, "", 0, 0, 0, -1);

--爆発予兆
SE029 = playSeVer2( spep_3 + 132, 1336, "",spep_3 + 248, 24, 26, -1);
setStartTimeMs( SE029,  1800 );

--光放つ
SE030 = playSeVer2( spep_3 + 46, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE030, 71 );
SE031 = playSeVer2( spep_3 + 46, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE031, 63 );
SE032 = playSeVer2( spep_3 + 46, 1264, "", 0, 0, 0, 0.5);

--ブロック衝突
SE033 = playSeVer2( spep_3 + 98, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE033, 200 );
SE034 = playSeVer2( spep_3 + 118, 1024, "", 0, 0, 0, -1);

--爆発予兆
SE035 = playSeVer2( spep_3 + 138, 1132, "",spep_3 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 138, SE035, 69 );

--ラスト爆発
SE035 = playSeVer2( spep_3 + 896, 1132, "",spep_3 + 1006, 0, 26, 0.6);
SE037 = playSeVer2( spep_3 + 226, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 226, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 226, SE038, 83 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 232 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 350 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 指をはじく～空からキューブ出現
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 434 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 434 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 434 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 434 -5, base_0, 255);
setEffAlphaKey( spep_0 + 434 -4, base_0, 0);

-- ** 音 ** --
--腕上げる
SE001 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 96, 1157, "",spep_0 + 224, 0, 58, -1);

--指パッチン
SE002 = playSeVer2( spep_0 + 48, 1221, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 48, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 62 );
setPitch( spep_0 + 48, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 48, 22, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 86 );

--光溢れる
SE006 = playSeVer2( spep_0 + 96, 1265, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1225, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1371, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--光空へ
SE009 = playSeVer2( spep_0 + 152, 1116, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 152, 1117, "", 0, 0, 0, -1);

--光雲に吸い込まれる
SE011 = playSeVer2( spep_0 + 200, 1184, "",spep_0 + 326, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 200, SE011, 58 );
SE012 = playSeVer2( spep_0 + 206, 1119, "", 0, 0, 0, -1);

--雲間爆発
SE013 = playSeVer2( spep_0 + 266, 1038, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 266, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE014, 80 );

--ブロック出現する
SE015 = playSeVer2( spep_0 + 288, 1305, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 306, 1264, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_0 + 322, 1271, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE017, 197 );
SE018 = playSeVer2( spep_0 + 330, 1226, "",spep_0 + 674, 60, 148, -1);
setSeVolumeByWorkId( spep_0 + 330, SE018, 78 );
SE019 = playSeVer2( spep_0 + 342, 1072, "", 0, 0, 0, -1);

--ブロック敵に落ちてくる
SE020 = playSeVer2( spep_0 + 392, 1213, "",spep_0 + 674, 40, 148, -1);
setSeVolumeByWorkId( spep_0 + 392, SE020, 68 );
setStartTimeMs( SE020,  100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 388; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge + 4, SE020, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 434 -4;



-------------------------------------------------
-- キューブが敵をつぶす
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 	ef_002_front
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 100 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 100 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 100 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 100 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 100 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 100 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 100 -4, 0, 0, 0, 0, 120);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -4 + 98, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 42, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );

setMoveKey( spep_1 -2 + 2, 1, 1.9, -111.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 2.1, -108.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 2.2, -106.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 2.4, -104.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 2.6, -102.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 2.9, -100.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 3.1, -97.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 3.3, -95.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 3.5, -93.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 3.7, -91.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 3.9, -89.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 4, -86.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 4.2, -84.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 4.5, -82.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 4.9, -79.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 5.3, -77.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 5.8, -74.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 6.2, -72 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 6.6, -69.3 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 7, -66.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 9.1, -90.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 9.6, -89.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 10.1, -88.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 10.7, -87.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 22.2, -205.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 70.8, -280.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -1.5, -202.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 63.2, -261.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -1, -176 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 63.6, -243 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 23.6, -181.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -0.3, -272.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 48.2, -242.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 40.4, -205.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -7.7, -256.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -23.6, -250.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 24.9, -205.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 49.3, -264.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 9.3, -234.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 41.7, -197.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -14.4, -288.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 74.4, -274.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 50.5, -221.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -5.7, -280.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 18.7, -226.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 67.2, -277.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 27.2, -231.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 27.4, -298.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 3.5, -269.3 , 0 );
setMoveKey( spep_1 -4 + 100, 1, 27.9, -271.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 4, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 10, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 12, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 22, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 26, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 30, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 32, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 34, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 41, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 46, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 49, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 50, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 52, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 56, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 58, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 60, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 62, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 64, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 66, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 68, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 70, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 74, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 76, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 78, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 80, 1, 2.14, 2.14 );
setScaleKey( spep_1 -3 + 82, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 86, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 88, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 92, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 94, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 96, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 98, 1, 2.31, 2.31 );
setScaleKey( spep_1 -4 + 100, 1, 2.33, 2.33 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, 0 );
setRotateKey( spep_1 -3 + 42, 1, -15.4 );
setRotateKey( spep_1 -3 + 49, 1, -15.4 );
setRotateKey( spep_1 -3 + 50, 1, 92.7 );
setRotateKey( spep_1 -3 + 98, 1, 92.7 );
setRotateKey( spep_1 -4 + 100, 1, 92.7 );

-- ** 音 ** --
--ブロック敵ヒット
SE021 = playSeVer2( spep_1 + 46, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 100 -4;



-------------------------------------------------
-- 手をクロスさせる　目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 138 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 138 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 138 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 138 -5, base_2, 255);
setEffAlphaKey( spep_2 + 138 -4, base_2, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 22;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 510); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 510 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 510 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 510 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 敵キャラクター ** --

-- ** 音 ** --
--オーラ
SE022 = playSeVer2( spep_2 + 0, 1181, "",spep_2 + 148, 0, 18, -1);
SE023 = playSeVer2( spep_2 + 0, 1215, "",spep_2 + 148, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 72 );

--顔カットイン
SE024 = playSeVer2( spep_2 + 10, 1018, "", 0, 0, 0, -1);

--腕組む
SE025 = playSeVer2( spep_2 + 98, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 98, 1233, "", 0, 0, 0, -1);
setPitch( spep_2 + 98, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_2 + 138 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 94;


-------------------------------------------------
-- 両手を開く～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 350 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 350 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 350 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 350 -4, base_3, 255);

-- ** 敵キャラクター ** --

-- ** 音 ** --
--腕の動き
SE028 = playSeVer2( spep_3 + 0, 8, "", 0, 0, 0, -1);

--爆発予兆
SE029 = playSeVer2( spep_3 + 132, 1336, "",spep_3 + 248, 24, 26, -1);
setStartTimeMs( SE029,  1800 );

--光放つ
SE030 = playSeVer2( spep_3 + 46, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE030, 71 );
SE031 = playSeVer2( spep_3 + 46, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE031, 63 );
SE032 = playSeVer2( spep_3 + 46, 1264, "", 0, 0, 0, 0.5);

--ブロック衝突
SE033 = playSeVer2( spep_3 + 98, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE033, 200 );
SE034 = playSeVer2( spep_3 + 118, 1024, "", 0, 0, 0, -1);

--爆発予兆
SE035 = playSeVer2( spep_3 + 138, 1132, "",spep_3 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 138, SE035, 69 );

--ラスト爆発
SE035 = playSeVer2( spep_3 + 896, 1132, "",spep_3 + 1006, 0, 26, 0.6);
SE037 = playSeVer2( spep_3 + 226, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 226, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 226, SE038, 83 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 232 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 350 -8); -- 終了フレーム

end
