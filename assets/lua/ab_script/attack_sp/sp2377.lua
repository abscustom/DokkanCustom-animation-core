-- 1009120:SSR_ジャコ_エリートキック
-- sp_effect_a9_00093
-- sp2377

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
SP_01 = 159829;	--開幕ダッシュ	ef_001
SP_01b = 159830;	--開幕ダッシュ　裏	ef_001_back
SP_02 = 159833;	--ジャコ跳躍	ef_002
SP_02b = 159834;	--ジャコ跳躍　裏	ef_002_back
SP_03 = 159837;	--ジャコキック	ef_003
SP_03b = 159838;	--ジャコキック　裏	ef_003_back
SP_04 = 159841;	--敵吹っ飛び	ef_004
SP_04b = 159843;	--敵吹っ飛び 裏	ef_004_back

--エフェクト(てき)
SP_01r = 159831;	--開幕ダッシュ　敵側	ef_001_re
SP_01br = 159832;	--開幕ダッシュ　敵側　裏	ef_001_back_re
SP_02r = 159835;	--ジャコ跳躍　敵側	ef_002_re
SP_02br = 159836;	--ジャコ跳躍　敵側　裏	ef_002_back_re
SP_03r = 159839;	--ジャコキック　敵側	ef_003_re
SP_03br = 159840;	--ジャコキック　敵側　裏	ef_003_back_re
SP_04r = 159842;	--敵吹っ飛び	ef_004_re
SP_04br = 159844;	--敵吹っ飛び 裏	ef_004_back_re


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 開幕ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --開幕ダッシュ	ef_001
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 244 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 244 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 244 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 244 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 244 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_01b, 0x80, -1, 0, 0, 0); --開幕ダッシュ　裏	ef_001_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 244 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 244 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 244 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 244 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 244 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 244 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 100, 1, 0 );

changeAnime( spep_1 + 0, 1, 103 );

setMoveKey( spep_1 + 0, 1, 427.5, -278.4 , 0 );
setMoveKey( spep_1 + 1, 1, 423.4, -274.7 , 0 );
setMoveKey( spep_1 + 2, 1, 421.3, -272.8 , 0 );
setMoveKey( spep_1 + 3, 1, 419.3, -271.0 , 0 );
setMoveKey( spep_1 + 4, 1, 417.2, -269.1 , 0 );
setMoveKey( spep_1 + 5, 1, 415.2, -267.3 , 0 );
setMoveKey( spep_1 + 6, 1, 413.0, -265.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 410.9, -263.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 406.6, -259.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 402.2, -255.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 397.7, -251.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 393.2, -247.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 388.5, -243.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 383.8, -239.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 379, -234.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 374.1, -230.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 369.1, -226.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 364.1, -221.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 358.9, -217 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 353.6, -212.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 348.3, -207.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 342.8, -202.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 337.2, -197.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 331.5, -192.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 325.6, -187.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 319.6, -182.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 313.5, -177.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 307.2, -171.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 300.8, -166.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 294.2, -160.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 287.4, -154.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 280.5, -148.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 273.3, -142.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 266, -136.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 258.5, -129.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 250.8, -123 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 242.9, -116.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 234.7, -109.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 226.4, -102.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 217.8, -94.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 209, -87.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 199.9, -79.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 190.6, -72 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 181.1, -64 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 171.4, -55.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 161.4, -47.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 151.1, -38.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 140.6, -30.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 129.9, -21.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 119, -12.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 107.8, -2.8 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 100.6, 2.2 , 0 );

setScaleKey( spep_1 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 1, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 3, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 5, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 10, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 12, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 14, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 16, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 18, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 20, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 30, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 34, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 38, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 40, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 44, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 46, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 48, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 52, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 54, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 58, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 60, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 62, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 64, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 66, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 68, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 70, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 72, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 74, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 76, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 78, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 82, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 84, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 88, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 94, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 99, 1, 0.47, 0.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 99, 1, 0 );


-- ** 音 ** --
--敵追いかけてくる
SE001 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

--ジャコ走る
SE003 = playSeVer2( spep_1 + 6, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE003, 119 );
SE004 = playSeVer2( spep_1 + 16, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE005, 123 );
setPitch( spep_1 + 26, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_1 + 38, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE006, 82 );
SE007 = playSeVer2( spep_1 + 48, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 56, 1108, "", 0, 0, 0, -1);
setPitch( spep_1 + 56, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );

--敵追いかけてくる
SE009 = playSeVer2( spep_1 + 60, 1019, "",spep_1 + 102, 0, 12, -1);

--ジャコ走る
SE010 = playSeVer2( spep_1 + 66, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 78, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 88, 1108, "", 0, 0, 0, -1);

--ジャコ踏みとどまる
SE013 = playSeVer2( spep_1 + 94, 1192, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 142, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );

changeAnime( spep_1 -3 + 142, 1, 109 );
changeAnime( spep_1 -3 + 156, 1, 108 );

sx_1a = 50;
sy_1a = -20;
sx_1b = -10;
sy_1b = 10;
setMoveKey( spep_1 -3 + 142, 1, 481.7 +sx_1a, 11.4 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 144, 1, 428.4 +sx_1a, 31.6 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 146, 1, 375.2 +sx_1a, 51.8 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 148, 1, 321.9 +sx_1a, 72 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 150, 1, 268.7 +sx_1a, 59.3 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 152, 1, 215.4 +sx_1a, 50.5 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 155, 1, 162.1 +sx_1a, 45.6 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 156, 1, 162.3 +sx_1b, 240.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 157, 1, 162.3 +sx_1b, 240.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 158, 1, 108.9 +sx_1b, 143.3 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 159, 1, 108.9 +sx_1b, 143.3 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 160, 1, 39.6 +sx_1b, 218.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 161, 1, 39.6 +sx_1b, 218.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 162, 1, 232.2 +sx_1b, 162.9 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 163, 1, 232.2 +sx_1b, 162.9 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 164, 1, 180.8 +sx_1b, 221.6 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 165, 1, 180.8 +sx_1b, 221.6 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 166, 1, 197.5 +sx_1b, 162.1 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 167, 1, 197.5 +sx_1b, 162.1 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 168, 1, 214.9 +sx_1b, 223.3 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 170, 1, 316.3 +sx_1b, 228.5 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 172, 1, 343.6 +sx_1b, 217.6 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 174, 1, 419 +sx_1b, 240.8 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 176, 1, 454.4 +sx_1b, 260 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 178, 1, 507.8 +sx_1b, 273.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 180, 1, 561.2 +sx_1b, 288.4 +sy_1b, 0 );

sr_1 = 1.2;
setScaleKey( spep_1 -3 + 142, 1, 2 *sr_1, 2 *sr_1 );
setScaleKey( spep_1 -3 + 180, 1, 2 *sr_1, 2 *sr_1 );

setRotateKey( spep_1 -3 + 142, 1, -11.4 );
setRotateKey( spep_1 -3 + 180, 1, -11.4 );


-- ** 音 ** --
--ジャンプ
SE014 = playSeVer2( spep_1 + 140, 1117, "",spep_1 + 162, 0, 10, -1);

--キック
SE015 = playSeVer2( spep_1 + 154, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 154, 1009, "", 0, 0, 0, -1);

--着地
SE017 = playSeVer2( spep_1 + 184, 1106, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_1 + 186, 1107, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_1 + 210, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 244 -4;

-------------------------------------------------
-- ジャコ跳躍
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --ジャコ跳躍	ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 140 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --ジャコ跳躍　裏	ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 140 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 140 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 10;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 140 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 -2 + 2, 1, -11.9, 48.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -11.9, 47.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -11.9, 46.3 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -11.9, 45.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.9, 43.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -11.9, 42.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -11.9, 40.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -11.9, 39.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -11.9, 37.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -11.9, 35.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -11.9, 33.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -11.9, 31.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -11.9, 29.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -11.9, 26.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -11.9, 24.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -11.9, 22 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -11.9, 19.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -11.9, 16.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -11.8, 13.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -11.8, 10.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -11.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -11.8, 4.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -11.8, 1.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -11.8, -1.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -11.7, -5.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -11.7, -9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -11.7, -12.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -11.7, -16.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -11.7, -20.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -11.7, -24.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -11.6, -28.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -11.6, -32.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -11.6, -36.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -11.6, -41.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -11.5, -45.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -11.5, -50.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -11.5, -54.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -11.5, -58.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -11.4, -62.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -11.4, -66.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -11.4, -70.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -11.4, -74.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -11.4, -77.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -11.3, -81.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -11.3, -84.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -11.3, -88 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -11.3, -91.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -11.3, -94.3 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -11.3, -97.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -11.3, -100.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -11.2, -102.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -11.2, -105.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -11.2, -108 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -11.2, -110.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -11.2, -112.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -11.2, -115 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -11.2, -117.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -11.2, -119.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -11.2, -121 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -11.2, -122.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -11.2, -124.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -11.2, -126 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -11.2, -127.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -11.1, -128.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -11.1, -130.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -11.1, -131.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -11.1, -132.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -11.1, -133.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -11.1, -134.1 , 0 );
setMoveKey( spep_2 -4 + 140, 1, -11.1, -134.1 , 0 );

sr_2 = 1.75;
setScaleKey( spep_2 + 0, 1, 0.75 *sr_2, 0.75 *sr_2 );
setScaleKey( spep_2 -3 + 32, 1, 0.75 *sr_2, 0.75 *sr_2 );
setScaleKey( spep_2 -3 + 34, 1, 0.74 *sr_2, 0.74 *sr_2 );
setScaleKey( spep_2 -3 + 52, 1, 0.74 *sr_2, 0.74 *sr_2 );
setScaleKey( spep_2 -3 + 54, 1, 0.73 *sr_2, 0.73 *sr_2 );
setScaleKey( spep_2 -3 + 66, 1, 0.73 *sr_2, 0.73 *sr_2 );
setScaleKey( spep_2 -3 + 68, 1, 0.72 *sr_2, 0.72 *sr_2 );
setScaleKey( spep_2 -3 + 80, 1, 0.72 *sr_2, 0.72 *sr_2 );
setScaleKey( spep_2 -3 + 82, 1, 0.71 *sr_2, 0.71 *sr_2 );
setScaleKey( spep_2 -3 + 96, 1, 0.71 *sr_2, 0.71 *sr_2 );
setScaleKey( spep_2 -3 + 98, 1, 0.7 *sr_2, 0.7 *sr_2 );
setScaleKey( spep_2 -5 + 140, 1, 0.7 *sr_2, 0.7 *sr_2 );

setRotateKey( spep_2 + 0, 1, -47 );
setRotateKey( spep_2 -4 + 140, 1, -47 );


-- ** 音 ** --
--空中回転
SE020 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 0, 1266, "",spep_2 + 140, 0, 10, -1);

--顔カットイン
SE022 = playSeVer2( spep_2 + 10, 1018, "", 0, 0, 0, -1);

--空中回転
SE023 = playSeVer2( spep_2 + 10, 1119, "",spep_2 + 140, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE023, 78 );
setTimeStretch( SE023, 1.67, 30, 4 );
SE024 = playSeVer2( spep_2 + 96, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE024, 78 );


-- ** 次の準備 ** --
spep_c = spep_2 + 140 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 96;

-------------------------------------------------
-- ジャコキック
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --ジャコキック	ef_003
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --ジャコキック　裏	ef_003_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 124 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 82, 1, 0 );

changeAnime( spep_3 + 0, 1, 8 );
changeAnime( spep_3 -3 + 66, 1, 6 );

setMoveKey( spep_3 -2 + 2, 1, 424.4, -658.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 386.3, -589.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 351.1, -527.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 318.9, -471.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 289.8, -422.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 263.9, -379.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 240.8, -342.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 220.2, -309.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 202, -280.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 185.6, -255.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 171, -232.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 157.8, -212.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 145.7, -194.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 134.7, -177.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 124.5, -162.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 115.1, -149.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 106.3, -136.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 98, -124.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 90.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 82.7, -102.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 75.6, -92.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 68.8, -82.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 62.2, -73.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 55.8, -64 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 49.6, -55.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 43.6, -46.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 37.7, -38.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 31.9, -30.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26.3, -22.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 20.7, -14.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 15.4, -6.1 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 15.5, -6.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 221.2, -64.7 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 221.2, -64.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 282.8, -115 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 282.8, -115 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 246.7, -33.8 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 246.7, -33.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 170.6, -130.7 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 170.6, -130.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 312.5, -143.5 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 312.5, -143.5 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 312.1, -147.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 463.5, -266.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 420.8, -331.2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 541.9, -426.1 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 4, 1, 4.62, 4.62 );
setScaleKey( spep_3 -3 + 6, 1, 4.45, 4.45 );
setScaleKey( spep_3 -3 + 8, 1, 4.3, 4.3 );
setScaleKey( spep_3 -3 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_3 -3 + 12, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 14, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 16, 1, 3.84, 3.84 );
setScaleKey( spep_3 -3 + 18, 1, 3.76, 3.76 );
setScaleKey( spep_3 -3 + 20, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 22, 1, 3.62, 3.62 );
setScaleKey( spep_3 -3 + 24, 1, 3.57, 3.57 );
setScaleKey( spep_3 -3 + 26, 1, 3.52, 3.52 );
setScaleKey( spep_3 -3 + 28, 1, 3.47, 3.47 );
setScaleKey( spep_3 -3 + 30, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 32, 1, 3.39, 3.39 );
setScaleKey( spep_3 -3 + 34, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 36, 1, 3.33, 3.33 );
setScaleKey( spep_3 -3 + 38, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 40, 1, 3.27, 3.27 );
setScaleKey( spep_3 -3 + 42, 1, 3.25, 3.25 );
setScaleKey( spep_3 -3 + 44, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 46, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 48, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 50, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 52, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 54, 1, 3.13, 3.13 );
setScaleKey( spep_3 -3 + 56, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 58, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 60, 1, 3.09, 3.09 );
setScaleKey( spep_3 -3 + 62, 1, 3.09, 3.09 );
setScaleKey( spep_3 -3 + 65, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 66, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 67, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 68, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 69, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 70, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 71, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 72, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 73, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 74, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 75, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 76, 1, 4.33, 4.33 );
setScaleKey( spep_3 -3 + 78, 1, 4.72, 4.72 );
setScaleKey( spep_3 -3 + 80, 1, 5.12, 5.12 );
setScaleKey( spep_3 -3 + 82, 1, 5.51, 5.51 );

setRotateKey( spep_3 -2 + 2, 1, 1.5 );
setRotateKey( spep_3 -3 + 4, 1, 1.1 );
setRotateKey( spep_3 -3 + 6, 1, 0.8 );
setRotateKey( spep_3 -3 + 8, 1, 0.5 );
setRotateKey( spep_3 -3 + 10, 1, 0.2 );
setRotateKey( spep_3 -3 + 12, 1, -0.1 );
setRotateKey( spep_3 -3 + 14, 1, -0.3 );
setRotateKey( spep_3 -3 + 16, 1, -0.5 );
setRotateKey( spep_3 -3 + 18, 1, -0.7 );
setRotateKey( spep_3 -3 + 20, 1, -0.8 );
setRotateKey( spep_3 -3 + 22, 1, -0.9 );
setRotateKey( spep_3 -3 + 24, 1, -1.1 );
setRotateKey( spep_3 -3 + 26, 1, -1.2 );
setRotateKey( spep_3 -3 + 28, 1, -1.2 );
setRotateKey( spep_3 -3 + 30, 1, -1.3 );
setRotateKey( spep_3 -3 + 32, 1, -1.4 );
setRotateKey( spep_3 -3 + 36, 1, -1.4 );
setRotateKey( spep_3 -3 + 38, 1, -1.5 );
setRotateKey( spep_3 -3 + 52, 1, -1.5 );
setRotateKey( spep_3 -3 + 54, 1, -1.4 );
setRotateKey( spep_3 -3 + 56, 1, -1.4 );
setRotateKey( spep_3 -3 + 58, 1, -1.3 );
setRotateKey( spep_3 -3 + 60, 1, -1.1 );
setRotateKey( spep_3 -3 + 62, 1, -0.9 );
setRotateKey( spep_3 -3 + 65, 1, -0.7 );
setRotateKey( spep_3 -3 + 66, 1, 59.4 );
setRotateKey( spep_3 -3 + 67, 1, 59.4 );
setRotateKey( spep_3 -3 + 68, 1, 59.8 );
setRotateKey( spep_3 -3 + 69, 1, 59.8 );
setRotateKey( spep_3 -3 + 70, 1, 60.4 );
setRotateKey( spep_3 -3 + 71, 1, 60.4 );
setRotateKey( spep_3 -3 + 72, 1, 60.9 );
setRotateKey( spep_3 -3 + 73, 1, 60.9 );
setRotateKey( spep_3 -3 + 74, 1, 61.9 );
setRotateKey( spep_3 -3 + 75, 1, 61.9 );
setRotateKey( spep_3 -3 + 76, 1, 62.8 );
setRotateKey( spep_3 -3 + 78, 1, 63.7 );
setRotateKey( spep_3 -3 + 80, 1, 64.5 );
setRotateKey( spep_3 -3 + 82, 1, 65.2 );


-- ** 音 ** --
--背後から蹴る
SE026 = playSeVer2( spep_3 + 40, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 54, 1187, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;


-------------------------------------------------
-- 敵吹っ飛び	ef_004
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --エフェクトのコメント (エフェクト名)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 136 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 136 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 136 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 136 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --エフェクトのコメント (エフェクト名_back)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 136 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 136 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 136 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 136 -4, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136 -4, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 4, 1, 1 );
changeAnime( spep_4 -3 + 4, 1, 107 );

setMoveKey( spep_4 -3 + 4, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -4 + 136, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 -3 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 -4 + 136, 1, 1.73, 1.725 );

setRotateKey( spep_4 -3 + 4, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 -4 + 136, 1, 729.5 );


-- ** 音 ** --
--壁激突
SE028 = playSeVer2( spep_4 + 10, 1025, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 10, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12); -- ダメージ表示フレーム
endPhase( spep_4 + 136 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 開幕ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_01r, 0x100, -1, 0, 0, 0); --開幕ダッシュ	ef_001
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 244 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + 244 -4, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 244 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 244 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 244 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_01br, 0x80, -1, 0, 0, 0); --開幕ダッシュ　裏	ef_001_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 244 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + 244 -4, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 244 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 244 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 244 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 244 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 100, 1, 0 );

changeAnime( spep_1 + 0, 1, 103 );

setMoveKey( spep_1 + 0, 1, 427.5, -278.4 , 0 );
setMoveKey( spep_1 + 1, 1, 423.4, -274.7 , 0 );
setMoveKey( spep_1 + 2, 1, 421.3, -272.8 , 0 );
setMoveKey( spep_1 + 3, 1, 419.3, -271.0 , 0 );
setMoveKey( spep_1 + 4, 1, 417.2, -269.1 , 0 );
setMoveKey( spep_1 + 5, 1, 415.2, -267.3 , 0 );
setMoveKey( spep_1 + 6, 1, 413.0, -265.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 410.9, -263.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 406.6, -259.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 402.2, -255.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 397.7, -251.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 393.2, -247.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 388.5, -243.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 383.8, -239.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 379, -234.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 374.1, -230.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 369.1, -226.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 364.1, -221.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 358.9, -217 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 353.6, -212.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 348.3, -207.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 342.8, -202.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 337.2, -197.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 331.5, -192.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 325.6, -187.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 319.6, -182.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 313.5, -177.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 307.2, -171.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 300.8, -166.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 294.2, -160.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 287.4, -154.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 280.5, -148.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 273.3, -142.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 266, -136.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 258.5, -129.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 250.8, -123 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 242.9, -116.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 234.7, -109.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 226.4, -102.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 217.8, -94.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 209, -87.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 199.9, -79.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 190.6, -72 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 181.1, -64 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 171.4, -55.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 161.4, -47.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 151.1, -38.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 140.6, -30.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 129.9, -21.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 119, -12.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 107.8, -2.8 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 100.6, 2.2 , 0 );

setScaleKey( spep_1 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 1, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 3, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 5, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 10, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 12, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 14, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 16, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 18, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 20, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 30, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 34, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 38, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 40, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 44, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 46, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 48, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 52, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 54, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 58, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 60, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 62, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 64, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 66, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 68, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 70, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 72, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 74, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 76, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 78, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 82, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 84, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 88, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 94, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 99, 1, 0.47, 0.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 99, 1, 0 );


-- ** 音 ** --
--敵追いかけてくる
SE001 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

--ジャコ走る
SE003 = playSeVer2( spep_1 + 6, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE003, 119 );
SE004 = playSeVer2( spep_1 + 16, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE005, 123 );
setPitch( spep_1 + 26, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_1 + 38, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE006, 82 );
SE007 = playSeVer2( spep_1 + 48, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 56, 1108, "", 0, 0, 0, -1);
setPitch( spep_1 + 56, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );

--敵追いかけてくる
SE009 = playSeVer2( spep_1 + 60, 1019, "",spep_1 + 102, 0, 12, -1);

--ジャコ走る
SE010 = playSeVer2( spep_1 + 66, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 78, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 88, 1108, "", 0, 0, 0, -1);

--ジャコ踏みとどまる
SE013 = playSeVer2( spep_1 + 94, 1192, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 142, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );

changeAnime( spep_1 -3 + 142, 1, 109 );
changeAnime( spep_1 -3 + 156, 1, 108 );

sx_1a = 80;
sy_1a = -20;
sx_1b = 0;
sy_1b = 10;
setMoveKey( spep_1 -3 + 142, 1, 481.7 +sx_1a, 11.4 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 144, 1, 428.4 +sx_1a, 31.6 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 146, 1, 375.2 +sx_1a, 51.8 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 148, 1, 321.9 +sx_1a, 72 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 150, 1, 268.7 +sx_1a, 59.3 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 152, 1, 215.4 +sx_1a, 50.5 +sy_1a, 0 );
setMoveKey( spep_1 -3 + 155, 1, 162.1 +sx_1a, 45.6 +sy_1a, 0 );

setMoveKey( spep_1 -3 + 156, 1, 162.3 -80, 240.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 157, 1, 162.3 -80, 240.2 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 158, 1, 108.9 +20, 143.3 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 159, 1, 108.9 +20, 143.3 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 160, 1, 39.6 +150, 218.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 161, 1, 39.6 +150, 218.2 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 162, 1, 232.2 -100, 162.9 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 163, 1, 232.2 +-100, 162.9 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 164, 1, 180.8 -20, 221.6 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 165, 1, 180.8 -20, 221.6 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 166, 1, 197.5, 162.1 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 167, 1, 197.5, 162.1 +sy_1b, 0 );

setMoveKey( spep_1 -3 + 168, 1, 214.9, 223.3 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 170, 1, 316.3, 228.5 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 172, 1, 343.6, 217.6 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 174, 1, 419, 240.8 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 176, 1, 454.4, 260 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 178, 1, 507.8, 273.2 +sy_1b, 0 );
setMoveKey( spep_1 -3 + 180, 1, 561.2, 288.4 +sy_1b, 0 );

sr_1 = 1.2;
setScaleKey( spep_1 -3 + 142, 1, 2 *sr_1, 2 *sr_1 );
setScaleKey( spep_1 -3 + 180, 1, 2 *sr_1, 2 *sr_1 );

setRotateKey( spep_1 -3 + 142, 1, -11.4 );
setRotateKey( spep_1 -3 + 180, 1, -11.4 );


-- ** 音 ** --
--ジャンプ
SE014 = playSeVer2( spep_1 + 140, 1117, "",spep_1 + 162, 0, 10, -1);

--キック
SE015 = playSeVer2( spep_1 + 154, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 154, 1009, "", 0, 0, 0, -1);

--着地
SE017 = playSeVer2( spep_1 + 184, 1106, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_1 + 186, 1107, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_1 + 210, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 244 -4;

-------------------------------------------------
-- ジャコ跳躍
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --ジャコ跳躍	ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 140 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --ジャコ跳躍　裏	ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 140 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 140 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 10;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 140 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 -2 + 2, 1, -11.9, 48.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -11.9, 47.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -11.9, 46.3 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -11.9, 45.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.9, 43.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -11.9, 42.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -11.9, 40.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -11.9, 39.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -11.9, 37.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -11.9, 35.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -11.9, 33.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -11.9, 31.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -11.9, 29.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -11.9, 26.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -11.9, 24.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -11.9, 22 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -11.9, 19.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -11.9, 16.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -11.8, 13.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -11.8, 10.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -11.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -11.8, 4.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -11.8, 1.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -11.8, -1.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -11.7, -5.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -11.7, -9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -11.7, -12.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -11.7, -16.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -11.7, -20.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -11.7, -24.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -11.6, -28.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -11.6, -32.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -11.6, -36.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -11.6, -41.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -11.5, -45.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -11.5, -50.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -11.5, -54.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -11.5, -58.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -11.4, -62.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -11.4, -66.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -11.4, -70.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -11.4, -74.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -11.4, -77.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -11.3, -81.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -11.3, -84.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -11.3, -88 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -11.3, -91.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -11.3, -94.3 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -11.3, -97.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -11.3, -100.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -11.2, -102.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -11.2, -105.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -11.2, -108 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -11.2, -110.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -11.2, -112.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -11.2, -115 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -11.2, -117.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -11.2, -119.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -11.2, -121 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -11.2, -122.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -11.2, -124.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -11.2, -126 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -11.2, -127.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -11.1, -128.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -11.1, -130.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -11.1, -131.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -11.1, -132.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -11.1, -133.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -11.1, -134.1 , 0 );
setMoveKey( spep_2 -4 + 140, 1, -11.1, -134.1 , 0 );

sr_2 = 1.75;
setScaleKey( spep_2 + 0, 1, 0.75 *sr_2, 0.75 *sr_2 );
setScaleKey( spep_2 -3 + 32, 1, 0.75 *sr_2, 0.75 *sr_2 );
setScaleKey( spep_2 -3 + 34, 1, 0.74 *sr_2, 0.74 *sr_2 );
setScaleKey( spep_2 -3 + 52, 1, 0.74 *sr_2, 0.74 *sr_2 );
setScaleKey( spep_2 -3 + 54, 1, 0.73 *sr_2, 0.73 *sr_2 );
setScaleKey( spep_2 -3 + 66, 1, 0.73 *sr_2, 0.73 *sr_2 );
setScaleKey( spep_2 -3 + 68, 1, 0.72 *sr_2, 0.72 *sr_2 );
setScaleKey( spep_2 -3 + 80, 1, 0.72 *sr_2, 0.72 *sr_2 );
setScaleKey( spep_2 -3 + 82, 1, 0.71 *sr_2, 0.71 *sr_2 );
setScaleKey( spep_2 -3 + 96, 1, 0.71 *sr_2, 0.71 *sr_2 );
setScaleKey( spep_2 -3 + 98, 1, 0.7 *sr_2, 0.7 *sr_2 );
setScaleKey( spep_2 -5 + 140, 1, 0.7 *sr_2, 0.7 *sr_2 );

setRotateKey( spep_2 + 0, 1, -47 );
setRotateKey( spep_2 -4 + 140, 1, -47 );


-- ** 音 ** --
--空中回転
SE020 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 0, 1266, "",spep_2 + 140, 0, 10, -1);

--顔カットイン
SE022 = playSeVer2( spep_2 + 10, 1018, "", 0, 0, 0, -1);

--空中回転
SE023 = playSeVer2( spep_2 + 10, 1119, "",spep_2 + 140, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE023, 78 );
setTimeStretch( SE023, 1.67, 30, 4 );
SE024 = playSeVer2( spep_2 + 96, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE024, 78 );


-- ** 次の準備 ** --
spep_c = spep_2 + 140 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 96;

-------------------------------------------------
-- ジャコキック
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --ジャコキック	ef_003
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); --ジャコキック　裏	ef_003_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 124 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 82, 1, 0 );

changeAnime( spep_3 + 0, 1, 8 );
changeAnime( spep_3 -3 + 66, 1, 6 );

setMoveKey( spep_3 -2 + 2, 1, 424.4, -658.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 386.3, -589.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 351.1, -527.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 318.9, -471.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 289.8, -422.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 263.9, -379.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 240.8, -342.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 220.2, -309.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 202, -280.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 185.6, -255.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 171, -232.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 157.8, -212.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 145.7, -194.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 134.7, -177.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 124.5, -162.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 115.1, -149.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 106.3, -136.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 98, -124.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 90.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 82.7, -102.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 75.6, -92.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 68.8, -82.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 62.2, -73.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 55.8, -64 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 49.6, -55.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 43.6, -46.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 37.7, -38.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 31.9, -30.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26.3, -22.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 20.7, -14.1 , 0 );--434
setMoveKey( spep_3 -3 + 62, 1, 15.4, -6.1 , 0 );--436
setMoveKey( spep_3 -3 + 65, 1, 15.5, -6.2 , 0 );--439
setMoveKey( spep_3 -3 + 66, 1, 221.2 -30, -64.7 , 0 );--440
setMoveKey( spep_3 -3 + 67, 1, 221.2 -30, -64.7 , 0 );--441
setMoveKey( spep_3 -3 + 68, 1, 282.8 -50, -115 , 0 );--442
setMoveKey( spep_3 -3 + 69, 1, 282.8 -50, -115 , 0 );--443
setMoveKey( spep_3 -3 + 70, 1, 246.7 -50, -33.8 , 0 );--444
setMoveKey( spep_3 -3 + 71, 1, 246.7 -50, -33.8 , 0 );--445
setMoveKey( spep_3 -3 + 72, 1, 170.6 +110, -130.7 , 0 );--446
setMoveKey( spep_3 -3 + 73, 1, 170.6 +110, -130.7 , 0 );--447
setMoveKey( spep_3 -3 + 74, 1, 312.5 -50, -143.5 , 0 );--448
setMoveKey( spep_3 -3 + 75, 1, 312.5 -50, -143.5 , 0 );--449
setMoveKey( spep_3 -3 + 76, 1, 312.1, -147.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 463.5, -266.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 420.8, -331.2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 541.9, -426.1 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 4, 1, 4.62, 4.62 );
setScaleKey( spep_3 -3 + 6, 1, 4.45, 4.45 );
setScaleKey( spep_3 -3 + 8, 1, 4.3, 4.3 );
setScaleKey( spep_3 -3 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_3 -3 + 12, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 14, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 16, 1, 3.84, 3.84 );
setScaleKey( spep_3 -3 + 18, 1, 3.76, 3.76 );
setScaleKey( spep_3 -3 + 20, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 22, 1, 3.62, 3.62 );
setScaleKey( spep_3 -3 + 24, 1, 3.57, 3.57 );
setScaleKey( spep_3 -3 + 26, 1, 3.52, 3.52 );
setScaleKey( spep_3 -3 + 28, 1, 3.47, 3.47 );
setScaleKey( spep_3 -3 + 30, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 32, 1, 3.39, 3.39 );
setScaleKey( spep_3 -3 + 34, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 36, 1, 3.33, 3.33 );
setScaleKey( spep_3 -3 + 38, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 40, 1, 3.27, 3.27 );
setScaleKey( spep_3 -3 + 42, 1, 3.25, 3.25 );
setScaleKey( spep_3 -3 + 44, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 46, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 48, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 50, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 52, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 54, 1, 3.13, 3.13 );
setScaleKey( spep_3 -3 + 56, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 58, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 60, 1, 3.09, 3.09 );
setScaleKey( spep_3 -3 + 62, 1, 3.09, 3.09 );
setScaleKey( spep_3 -3 + 65, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 66, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 67, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 68, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 69, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 70, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 71, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 72, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 73, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 74, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 75, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 76, 1, 4.33, 4.33 );
setScaleKey( spep_3 -3 + 78, 1, 4.72, 4.72 );
setScaleKey( spep_3 -3 + 80, 1, 5.12, 5.12 );
setScaleKey( spep_3 -3 + 82, 1, 5.51, 5.51 );

setRotateKey( spep_3 -2 + 2, 1, 1.5 );
setRotateKey( spep_3 -3 + 4, 1, 1.1 );
setRotateKey( spep_3 -3 + 6, 1, 0.8 );
setRotateKey( spep_3 -3 + 8, 1, 0.5 );
setRotateKey( spep_3 -3 + 10, 1, 0.2 );
setRotateKey( spep_3 -3 + 12, 1, -0.1 );
setRotateKey( spep_3 -3 + 14, 1, -0.3 );
setRotateKey( spep_3 -3 + 16, 1, -0.5 );
setRotateKey( spep_3 -3 + 18, 1, -0.7 );
setRotateKey( spep_3 -3 + 20, 1, -0.8 );
setRotateKey( spep_3 -3 + 22, 1, -0.9 );
setRotateKey( spep_3 -3 + 24, 1, -1.1 );
setRotateKey( spep_3 -3 + 26, 1, -1.2 );
setRotateKey( spep_3 -3 + 28, 1, -1.2 );
setRotateKey( spep_3 -3 + 30, 1, -1.3 );
setRotateKey( spep_3 -3 + 32, 1, -1.4 );
setRotateKey( spep_3 -3 + 36, 1, -1.4 );
setRotateKey( spep_3 -3 + 38, 1, -1.5 );
setRotateKey( spep_3 -3 + 52, 1, -1.5 );
setRotateKey( spep_3 -3 + 54, 1, -1.4 );
setRotateKey( spep_3 -3 + 56, 1, -1.4 );
setRotateKey( spep_3 -3 + 58, 1, -1.3 );
setRotateKey( spep_3 -3 + 60, 1, -1.1 );
setRotateKey( spep_3 -3 + 62, 1, -0.9 );
setRotateKey( spep_3 -3 + 65, 1, -0.7 );
setRotateKey( spep_3 -3 + 66, 1, 59.4 );
setRotateKey( spep_3 -3 + 67, 1, 59.4 );
setRotateKey( spep_3 -3 + 68, 1, 59.8 );
setRotateKey( spep_3 -3 + 69, 1, 59.8 );
setRotateKey( spep_3 -3 + 70, 1, 60.4 );
setRotateKey( spep_3 -3 + 71, 1, 60.4 );
setRotateKey( spep_3 -3 + 72, 1, 60.9 );
setRotateKey( spep_3 -3 + 73, 1, 60.9 );
setRotateKey( spep_3 -3 + 74, 1, 61.9 );
setRotateKey( spep_3 -3 + 75, 1, 61.9 );
setRotateKey( spep_3 -3 + 76, 1, 62.8 );
setRotateKey( spep_3 -3 + 78, 1, 63.7 );
setRotateKey( spep_3 -3 + 80, 1, 64.5 );
setRotateKey( spep_3 -3 + 82, 1, 65.2 );


-- ** 音 ** --
--背後から蹴る
SE026 = playSeVer2( spep_3 + 40, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 54, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;


-------------------------------------------------
-- 敵吹っ飛び	ef_004
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --エフェクトのコメント (エフェクト名)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 136 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 136 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 136 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 136 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --エフェクトのコメント (エフェクト名_back)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 136 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 136 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 136 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 136 -4, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136 -4, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 4, 1, 1 );
changeAnime( spep_4 -3 + 4, 1, 107 );

setMoveKey( spep_4 -3 + 4, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -4 + 136, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 -3 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 -4 + 136, 1, 1.73, 1.725 );

setRotateKey( spep_4 -3 + 4, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 -4 + 136, 1, 729.5 );


-- ** 音 ** --
--壁激突
SE028 = playSeVer2( spep_4 + 10, 1025, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 10, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12); -- ダメージ表示フレーム
endPhase( spep_4 + 136 -8); -- 終了フレーム

end
