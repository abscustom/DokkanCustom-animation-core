--1025630：LR_ジャッキ－チュン_必殺技_萬國驚天掌
--sp_effect_a1_00383
--sp2471

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
SP_01 = 160931;  --構え	ef_001	
SP_02 = 160932;  --構え 俯瞰	ef_002
SP_03 = 160933;  --構え 正面	ef_003
SP_04 = 160934;  --両手を前に	ef_004
SP_05 = 160936;  --黒い地面（BG）	ef_005		ef_011と同時再生
SP_05b = 160944;  --攻撃体勢	ef_011		ef_005と同時再生
SP_06 = 160937;  --顔アップ	ef_006
SP_07 = 160938;  --引きの絵	ef_007
SP_08 = 160939;  --俯瞰_引きの絵	ef_008
SP_09 = 160941;  --攻撃	ef_009
SP_10f = 160943;  --最前面_エフェクト	ef_010		ef_012とef_013と同時再生 ※敵のシンボルef_010とef_012も同時に再生
SP_10 = 160945;  --中段面_エフェクト	ef_012		ef_010とef_013と同時再生 ※敵のシンボルef_010とef_012も同時に再生
SP_10b = 160946;  --背景（BG）	ef_013		ef_010とef_012と同時再生 ※敵のシンボルef_010とef_012も同時に再生

--エフェクト(てき)
SP_04r = 160935;  --両手を前に	ef_004r		敵側
SP_08r = 160940;  --俯瞰_引きの絵	ef_008r		敵側
SP_09r = 160942;  --攻撃	ef_009r		敵側


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
-- 構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 118 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 118 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 118 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 118 -5, base_0, 255);
setEffAlphaKey( spep_0 + 118 -4, base_0, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 118 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 22 -4, shuchusen_0, 118 -4, 20 );
setEffMoveKey( spep_0 + 22 -4, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 118 -4, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 22 -4, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 118 -4, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 22 -4, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 118 -4, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 22 -4, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 118 -4, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_0 + 118 -4 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);

--手合わせる
SE003 = playSeVer2( spep_0 + 20, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 82 );
SE004 = playSeVer2( spep_0 + 30, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 85 );

--画面遷移
SE005 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 78 );
SE006 = playSeVer2( spep_0 + 90, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 73 );

--力溜める
SE007 = playSeVer2( spep_0 + 106, 1271, "",spep_0 + 426, 0, 124, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118 -4;


-------------------------------------------------
-- 構え 俯瞰
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 68 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 68 -5, base_1, 255);
setEffAlphaKey( spep_1 + 68 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--力溜める
SE008 = playSeVer2( spep_1 + 0, 1391, "",spep_1 + 308, 0, 124, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 68 -4;


-------------------------------------------------
-- 構え 正面
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 148 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 148 -5, base_2, 255);
setEffAlphaKey( spep_2 + 148 -4, base_2, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 148 -4 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 148 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手を合わせて雷落ちる
SE009 = playSeVer2( spep_2 + 38, 1230, "", spep_2 + 144, 0, 10, -1);
SE010 = playSeVer2( spep_2 + 54, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE010, 172 );
SE011 = playSeVer2( spep_2 + 54, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 148 -4;


-------------------------------------------------
-- 両手を前に
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004	
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 138 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 138 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 138 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 138 -5, base_3, 255);
setEffAlphaKey( spep_3 + 138 -4, base_3, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_3 + 138 -4 -10, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 138 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--力溜める
SE012 = playSeVer2( spep_3 + 0, 1147, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 16, 1240, "",spep_3 + 316, 0, 8, -1);
SE014 = playSeVer2( spep_3 + 16, 1341, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 16, 1199, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 16, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 80, 1019, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 82, 1199, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 138 -4;


-------------------------------------------------
-- 攻撃体勢
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- 黒い地面（BG） ef_005 ef_011と同時再生
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 78 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 78 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 78 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 78 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 78 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- 	ef_011	ef_005と同時再生
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 78 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 78 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 78 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 78 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 78 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 -2 + 2, 1, 201.2, -183.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 202.5, -185.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 203.8, -182.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 205, -184.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 206.3, -181.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 207.6, -183 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 208.9, -180.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 210.2, -181.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 211.4, -179.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 212.7, -180.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 214, -178.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 215.3, -179.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 216.6, -177.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 217.8, -178.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 219.1, -176.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 220.3, -177.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 221.6, -175 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 222.9, -176.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 224.1, -174 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 225.4, -175.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 226.6, -172.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 227.9, -174.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 229.2, -171.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 230.4, -173.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 231.7, -170.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 232.9, -172.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 234.2, -169.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 235.4, -171.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 236.7, -168.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 237.9, -170 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 239.2, -167.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 240.4, -168.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 241.6, -166.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 242.9, -167.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 244.1, -165.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 245.3, -166.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 246.6, -164.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 247.8, -165.8 , 0 );
setMoveKey( spep_4 -4 + 78, 1, 249, -163.3 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 4, 1, 2.47, 2.47 );
setScaleKey( spep_4 -3 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 8, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 10, 1, 2.5, 2.5 );
setScaleKey( spep_4 -3 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_4 -3 + 14, 1, 2.52, 2.52 );
setScaleKey( spep_4 -3 + 16, 1, 2.53, 2.53 );
setScaleKey( spep_4 -3 + 18, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 20, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 22, 1, 2.56, 2.56 );
setScaleKey( spep_4 -3 + 24, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 28, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 30, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 32, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 34, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 36, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 38, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 40, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 42, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 44, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 46, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 48, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 50, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 52, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 54, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 56, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 58, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 60, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 62, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 64, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 66, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 68, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 70, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 72, 1, 2.79, 2.79 );
setScaleKey( spep_4 -3 + 74, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 76, 1, 2.81, 2.81 );
setScaleKey( spep_4 -4 + 78, 1, 2.82, 2.82 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -4 + 78, 1, 0 );

-- ** 音 ** --
--力溜める
SE019 = playSeVer2( spep_4 + 0, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 4, 1341, "",spep_4 + 146, 0, 8, -1);
SE021 = playSeVer2( spep_4 + 6, 1199, "", spep_4 + 146, 0, 8, -1);
SE022 = playSeVer2( spep_4 + 62, 1148, "",spep_4 + 146, 0, 8, -1);
SE023 = playSeVer2( spep_4 + 64, 1019, "", 0, 0, 0, 0.6);
SE024 = playSeVer2( spep_4 + 66, 1199, "",spep_4 + 146, 0, 8, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 78 -4;


-------------------------------------------------
-- 顔アップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 68 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 68 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 68 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 68 -5, base_5, 255);
setEffAlphaKey( spep_5 + 68 -4, base_5, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0, 906, 68 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen_5, 68 -4, 20 );
setEffMoveKey( spep_5 + 0, shuchusen_5, 0, 0, 0 );
setEffMoveKey( spep_5 + 68 -4, shuchusen_5, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, shuchusen_5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 68 -4, shuchusen_5, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 68 -4, shuchusen_5, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 68 -4, shuchusen_5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--目が光る
SE025 = playSeVer2( spep_5 + 0, 1303, "",spep_5 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE025, 76 );

--力溜める
SE026 = playSeVer2( spep_5 + 18, 1019, "",spep_5 + 72, 0, 8, -1);
SE027 = playSeVer2( spep_5 + 20, 1199, "",spep_5 + 72, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_5 + 68 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_c + 94;


-------------------------------------------------
-- 引きの絵
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 78 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, 1.0, 1.0);
setEffScaleKey( spep_6 + 78 -4, base_6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 78 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 78 -5, base_6, 255);
setEffAlphaKey( spep_6 + 78 -4, base_6, 0);

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_6 + 78 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--発射前溜め
SE029 = playSeVer2( spep_6 + 0, 1341, "",spep_6 + 132, 0, 22, -1);
SE030 = playSeVer2( spep_6 + 0, 1147, "",spep_6 + 132, 0, 22, -1);
SE031 = playSeVer2( spep_6 + 0, 1199, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_6 + 0, 1019, "", 0, 0, 0, -1);

--腕上げる
SE033 = playSeVer2( spep_6 + 24, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7 = spep_6 + 78 -4;


-------------------------------------------------
-- 俯瞰_引きの絵
-------------------------------------------------
-- ** エフェクト等 ** --
base_7 = entryEffect( spep_7 + 0, SP_08, 0x80, -1, 0, 0, 0); -- ef_008
setEffMoveKey( spep_7 + 0, base_7, 0, 0 , 0);
setEffMoveKey( spep_7 + 58 -4, base_7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7, 1.0, 1.0);
setEffScaleKey( spep_7 + 58 -4, base_7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7, 0);
setEffRotateKey( spep_7 + 58 -4, base_7, 0);
setEffAlphaKey( spep_7 + 0, base_7, 255);
setEffAlphaKey( spep_7 + 58 -5, base_7, 255);
setEffAlphaKey( spep_7 + 58 -4, base_7, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_7 + 0, 906, 58 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen_7, 58 -4, 20 );
setEffMoveKey( spep_7 + 0, shuchusen_7, 0, 0, 0 );
setEffMoveKey( spep_7 + 58 -4, shuchusen_7, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, shuchusen_7, 1.6, 1.6 );
setEffScaleKey( spep_7 + 58 -4, shuchusen_7, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen_7, 0 );
setEffRotateKey( spep_7 + 58 -4, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen_7, 255 );
setEffAlphaKey( spep_7 + 58 -4, shuchusen_7, 255 );

-- ** 白フェード ** --
entryFade( spep_7 + 58 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 58 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--発射前溜め
SE034 = playSeVer2( spep_7 + 0, 1199, "",spep_7 + 68, 0, 22, -1);
SE035 = playSeVer2( spep_7 + 0, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_7 + 0, 1342, "",spep_7 + 210, 0, 32, -1);

--腕前に出す
SE037 = playSeVer2( spep_7 + 30, 1145, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_7 + 30, 1114, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_8 = spep_7 + 58 -4;


-------------------------------------------------
-- 攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_8 = entryEffect( spep_8 + 0, SP_09, 0x80, -1, 0, 0, 0); -- ef_009
setEffMoveKey( spep_8 + 0, base_8, 0, 0 , 0);
setEffMoveKey( spep_8 + 78 -4, base_8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8, 1.0, 1.0);
setEffScaleKey( spep_8 + 78 -4, base_8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8, 0);
setEffRotateKey( spep_8 + 78 -4, base_8, 0);
setEffAlphaKey( spep_8 + 0, base_8, 255);
setEffAlphaKey( spep_8 + 78 -5, base_8, 255);
setEffAlphaKey( spep_8 + 78 -4, base_8, 0);

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 78 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--ビックリショー発射
SE039 = playSeVer2( spep_8 + 10, 1284, "",spep_8 + 138, 0, 32, -1);
SE040 = playSeVer2( spep_8 + 10, 1177, "",spep_8 + 138, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_8 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
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
spep_9 = spep_8 + 78 -4;


-------------------------------------------------
-- 最前面_エフェクト
-------------------------------------------------
-- ** エフェクト等 ** --
base_9f = entryEffect( spep_9 + 0, SP_10f, 0x100, -1, 0, 0, 0); -- 最前面_エフェクト ef_010
setEffMoveKey( spep_9 + 0, base_9f, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9f, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9f, 0);
setEffRotateKey( spep_9 + 138 -4, base_9f, 0);
setEffAlphaKey( spep_9 + 0, base_9f, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9f, 255);

base_9e1 = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0); -- 中段面_エフェクト	ef_012
setEffMoveKey( spep_9 + 0, base_9e1, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9e1, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9e1, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9e1, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9e1, 0);
setEffRotateKey( spep_9 + 138 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 0, base_9e1, 255);
setEffAlphaKey( spep_9 + 16 -4, base_9e1, 255);
setEffAlphaKey( spep_9 + 17 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 18 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 138 -4, base_9e1, 0);

base_9b = entryEffect( spep_9 + 0, SP_10b, 0x80, -1, 0, 0, 0); -- 背景（BG）ef_013
setEffMoveKey( spep_9 + 0, base_9b, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9b, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9b, 0);
setEffRotateKey( spep_9 + 138 -4, base_9b, 0);
setEffAlphaKey( spep_9 + 0, base_9b, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9b, 255);

base_9e2 = entryEffect( spep_9 + 0, SP_10, 0x80, -1, 0, 0, 0); -- 中段面_エフェクト	ef_012
setEffMoveKey( spep_9 + 0, base_9e2, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9e2, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9e2, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9e2, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9e2, 0);
setEffRotateKey( spep_9 + 138 -4, base_9e2, 0);
setEffAlphaKey( spep_9 + 0, base_9e2, 0);
setEffAlphaKey( spep_9 + 16 -4, base_9e2, 0);
setEffAlphaKey( spep_9 + 17 -4, base_9e2, 255);
setEffAlphaKey( spep_9 + 18 -4, base_9e2, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9e2, 255);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_9 = entryEffectLife( spep_9 + 14 -4, 906, 14 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_9 + 14 -4, shuchusen_9, 16 -4, 20 );
setEffMoveKey( spep_9 + 14 -4, shuchusen_9, 0, 0, 0 );
setEffMoveKey( spep_9 + 14 -4, shuchusen_9, 0, 0, 0 );
setEffScaleKey( spep_9 + 14 -4, shuchusen_9, 1.6, 1.6 );
setEffScaleKey( spep_9 + 14 -4, shuchusen_9, 1.6, 1.6 );
setEffRotateKey( spep_9 + 14 -4, shuchusen_9, 0 );
setEffRotateKey( spep_9 + 14 -4, shuchusen_9, 0 );
setEffAlphaKey( spep_9 + 14 -4, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 14 -4, shuchusen_9, 255 );

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_9 + 14 -4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 138 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 138, 1, 0 );

changeAnime( spep_9 -3 + 0, 1, 117 );
changeAnime( spep_9 -3 + 16, 1, 106 );

setMoveKey( spep_9 -2 + 2, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -11.9, -284.3 , 0 );
setMoveKey( spep_9 -3 + 15, 1, -66, -322.9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -221.6, -355.8 , 0 );
setMoveKey( spep_9 -3 + 17, 1, -221.6, -355.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -65.1, -193.2 , 0 );
setMoveKey( spep_9 -3 + 19, 1, -65.1, -193.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 31.2, -90.8 , 0 );
setMoveKey( spep_9 -3 + 21, 1, 31.2, -90.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 92.4, -24.9 , 0 );
setMoveKey( spep_9 -3 + 23, 1, 92.4, -24.9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 147.1, 33.3 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 156.1, 44.5 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 149.1, 41.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 141.5, 34.8 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 130.3, 25.1 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 129, 24 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 129, 24 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 130.9, 24 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 132.4, 24 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 134.7, 24 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 134.7, 24 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -4 + 138, 1, 135.5, 25.7 , 0 );

setScaleKey( spep_9 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_9 -3 + 15, 1, 1.71, 1.71 );
setScaleKey( spep_9 -3 + 16, 1, 1.54, 1.54 );
setScaleKey( spep_9 -4 + 138, 1, 1.54, 1.54 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 15, 1, 0 );
setRotateKey( spep_9 -3 + 16, 1, -23.5 );
setRotateKey( spep_9 -3 + 17, 1, -23.5 );
setRotateKey( spep_9 -3 + 18, 1, -28.1 );
setRotateKey( spep_9 -3 + 19, 1, -28.1 );
setRotateKey( spep_9 -3 + 20, 1, -25.3 );
setRotateKey( spep_9 -3 + 21, 1, -25.3 );
setRotateKey( spep_9 -3 + 22, 1, -29.2 );
setRotateKey( spep_9 -3 + 23, 1, -29.2 );
setRotateKey( spep_9 -3 + 24, 1, -26.1 );
setRotateKey( spep_9 -3 + 26, 1, -26.3 );
setRotateKey( spep_9 -3 + 28, 1, -29.7 );
setRotateKey( spep_9 -3 + 30, 1, -26.3 );
setRotateKey( spep_9 -3 + 32, 1, -29.7 );
setRotateKey( spep_9 -3 + 34, 1, -26.3 );
setRotateKey( spep_9 -3 + 36, 1, -29.7 );
setRotateKey( spep_9 -3 + 38, 1, -26.3 );
setRotateKey( spep_9 -3 + 40, 1, -29.7 );
setRotateKey( spep_9 -3 + 42, 1, -26.3 );
setRotateKey( spep_9 -3 + 44, 1, -29.7 );
setRotateKey( spep_9 -3 + 46, 1, -26.3 );
setRotateKey( spep_9 -3 + 48, 1, -29.7 );
setRotateKey( spep_9 -3 + 50, 1, -26.3 );
setRotateKey( spep_9 -3 + 52, 1, -29.7 );
setRotateKey( spep_9 -3 + 54, 1, -26.3 );
setRotateKey( spep_9 -3 + 56, 1, -29.7 );
setRotateKey( spep_9 -3 + 58, 1, -26.3 );
setRotateKey( spep_9 -3 + 60, 1, -29.7 );
setRotateKey( spep_9 -3 + 62, 1, -26.3 );
setRotateKey( spep_9 -3 + 64, 1, -29.7 );
setRotateKey( spep_9 -3 + 66, 1, -26.3 );
setRotateKey( spep_9 -3 + 68, 1, -29.7 );
setRotateKey( spep_9 -3 + 70, 1, -26.3 );
setRotateKey( spep_9 -3 + 72, 1, -29.7 );
setRotateKey( spep_9 -3 + 74, 1, -26.3 );
setRotateKey( spep_9 -3 + 76, 1, -29.7 );
setRotateKey( spep_9 -3 + 78, 1, -26.3 );
setRotateKey( spep_9 -3 + 80, 1, -29.7 );
setRotateKey( spep_9 -3 + 82, 1, -26.3 );
setRotateKey( spep_9 -3 + 84, 1, -29.7 );
setRotateKey( spep_9 -3 + 86, 1, -26.3 );
setRotateKey( spep_9 -3 + 88, 1, -29.7 );
setRotateKey( spep_9 -3 + 90, 1, -26.3 );
setRotateKey( spep_9 -3 + 92, 1, -29.7 );
setRotateKey( spep_9 -3 + 94, 1, -26.3 );
setRotateKey( spep_9 -3 + 96, 1, -29.7 );
setRotateKey( spep_9 -3 + 98, 1, -26.3 );
setRotateKey( spep_9 -3 + 100, 1, -29.7 );
setRotateKey( spep_9 -3 + 102, 1, -26.3 );
setRotateKey( spep_9 -3 + 104, 1, -29.7 );
setRotateKey( spep_9 -3 + 106, 1, -26.3 );
setRotateKey( spep_9 -3 + 108, 1, -29.7 );
setRotateKey( spep_9 -3 + 110, 1, -26.3 );
setRotateKey( spep_9 -3 + 112, 1, -29.7 );
setRotateKey( spep_9 -3 + 114, 1, -26.3 );
setRotateKey( spep_9 -3 + 116, 1, -29.7 );
setRotateKey( spep_9 -3 + 118, 1, -26.3 );
setRotateKey( spep_9 -3 + 120, 1, -29.7 );
setRotateKey( spep_9 -3 + 122, 1, -26.3 );
setRotateKey( spep_9 -3 + 124, 1, -29.7 );
setRotateKey( spep_9 -3 + 126, 1, -26.3 );
setRotateKey( spep_9 -3 + 128, 1, -29.7 );
setRotateKey( spep_9 -3 + 130, 1, -26.3 );
setRotateKey( spep_9 -3 + 132, 1, -29.7 );
setRotateKey( spep_9 -3 + 134, 1, -26.3 );
setRotateKey( spep_9 -3 + 136, 1, -29.7 );
setRotateKey( spep_9 -4 + 138, 1, -29.7 );

-- ** 音 ** --
--敵ヒット
SE041 = playSeVer2( spep_9 + 12, 1023, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 12, 1038, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_9 + 12, 1148, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_9 + 12, 1024, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_9 + 52, 1056, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_9 + 86, 1056, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 44 -3); -- ダメージ表示フレーム
endPhase( spep_9 + 138 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------



spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 118 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 118 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 118 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 118 -5, base_0, 255);
setEffAlphaKey( spep_0 + 118 -4, base_0, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 118 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 22 -4, shuchusen_0, 118 -4, 20 );
setEffMoveKey( spep_0 + 22 -4, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 118 -4, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 22 -4, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 118 -4, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 22 -4, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 118 -4, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 22 -4, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 118 -4, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_0 + 118 -4 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);

--手合わせる
SE003 = playSeVer2( spep_0 + 20, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 82 );
SE004 = playSeVer2( spep_0 + 30, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 85 );

--画面遷移
SE005 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 78 );
SE006 = playSeVer2( spep_0 + 90, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 73 );

--力溜める
SE007 = playSeVer2( spep_0 + 106, 1271, "",spep_0 + 426, 0, 124, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118 -4;


-------------------------------------------------
-- 構え 俯瞰
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 68 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 68 -5, base_1, 255);
setEffAlphaKey( spep_1 + 68 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--力溜める
SE008 = playSeVer2( spep_1 + 0, 1391, "",spep_1 + 308, 0, 124, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 68 -4;


-------------------------------------------------
-- 構え 正面
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 148 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 148 -5, base_2, 255);
setEffAlphaKey( spep_2 + 148 -4, base_2, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 148 -4 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 148 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手を合わせて雷落ちる
SE009 = playSeVer2( spep_2 + 38, 1230, "", spep_2 + 144, 0, 10, -1);
SE010 = playSeVer2( spep_2 + 54, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE010, 172 );
SE011 = playSeVer2( spep_2 + 54, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 148 -4;


-------------------------------------------------
-- 両手を前に
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- ef_004	
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 138 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 138 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 138 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 138 -5, base_3, 255);
setEffAlphaKey( spep_3 + 138 -4, base_3, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_3 + 138 -4 -10, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 138 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--力溜める
SE012 = playSeVer2( spep_3 + 0, 1147, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 16, 1240, "",spep_3 + 316, 0, 8, -1);
SE014 = playSeVer2( spep_3 + 16, 1341, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 16, 1199, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 16, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 80, 1019, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 82, 1199, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 138 -4;


-------------------------------------------------
-- 攻撃体勢
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- 黒い地面（BG） ef_005 ef_011と同時再生
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 78 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 78 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 78 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 78 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 78 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- 	ef_011	ef_005と同時再生
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 78 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 78 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 78 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 78 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 78 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 -2 + 2, 1, 201.2, -183.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 202.5, -185.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 203.8, -182.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 205, -184.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 206.3, -181.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 207.6, -183 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 208.9, -180.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 210.2, -181.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 211.4, -179.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 212.7, -180.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 214, -178.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 215.3, -179.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 216.6, -177.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 217.8, -178.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 219.1, -176.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 220.3, -177.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 221.6, -175 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 222.9, -176.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 224.1, -174 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 225.4, -175.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 226.6, -172.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 227.9, -174.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 229.2, -171.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 230.4, -173.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 231.7, -170.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 232.9, -172.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 234.2, -169.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 235.4, -171.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 236.7, -168.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 237.9, -170 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 239.2, -167.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 240.4, -168.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 241.6, -166.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 242.9, -167.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 244.1, -165.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 245.3, -166.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 246.6, -164.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 247.8, -165.8 , 0 );
setMoveKey( spep_4 -4 + 78, 1, 249, -163.3 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 4, 1, 2.47, 2.47 );
setScaleKey( spep_4 -3 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 8, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 10, 1, 2.5, 2.5 );
setScaleKey( spep_4 -3 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_4 -3 + 14, 1, 2.52, 2.52 );
setScaleKey( spep_4 -3 + 16, 1, 2.53, 2.53 );
setScaleKey( spep_4 -3 + 18, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 20, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 22, 1, 2.56, 2.56 );
setScaleKey( spep_4 -3 + 24, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 28, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 30, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 32, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 34, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 36, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 38, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 40, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 42, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 44, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 46, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 48, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 50, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 52, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 54, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 56, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 58, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 60, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 62, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 64, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 66, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 68, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 70, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 72, 1, 2.79, 2.79 );
setScaleKey( spep_4 -3 + 74, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 76, 1, 2.81, 2.81 );
setScaleKey( spep_4 -4 + 78, 1, 2.82, 2.82 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -4 + 78, 1, 0 );

-- ** 音 ** --
--力溜める
SE019 = playSeVer2( spep_4 + 0, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 4, 1341, "",spep_4 + 146, 0, 8, -1);
SE021 = playSeVer2( spep_4 + 6, 1199, "", spep_4 + 146, 0, 8, -1);
SE022 = playSeVer2( spep_4 + 62, 1148, "",spep_4 + 146, 0, 8, -1);
SE023 = playSeVer2( spep_4 + 64, 1019, "", 0, 0, 0, 0.6);
SE024 = playSeVer2( spep_4 + 66, 1199, "",spep_4 + 146, 0, 8, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 78 -4;


-------------------------------------------------
-- 顔アップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 68 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 68 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 68 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 68 -5, base_5, 255);
setEffAlphaKey( spep_5 + 68 -4, base_5, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0, 906, 68 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen_5, 68 -4, 20 );
setEffMoveKey( spep_5 + 0, shuchusen_5, 0, 0, 0 );
setEffMoveKey( spep_5 + 68 -4, shuchusen_5, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, shuchusen_5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 68 -4, shuchusen_5, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 68 -4, shuchusen_5, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 68 -4, shuchusen_5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--目が光る
SE025 = playSeVer2( spep_5 + 0, 1303, "",spep_5 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE025, 76 );

--力溜める
SE026 = playSeVer2( spep_5 + 18, 1019, "",spep_5 + 72, 0, 8, -1);
SE027 = playSeVer2( spep_5 + 20, 1199, "",spep_5 + 72, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_5 + 68 -4;


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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_c + 94;


-------------------------------------------------
-- 引きの絵
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 78 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, 1.0, 1.0);
setEffScaleKey( spep_6 + 78 -4, base_6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 78 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 78 -5, base_6, 255);
setEffAlphaKey( spep_6 + 78 -4, base_6, 0);

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_6 + 78 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--発射前溜め
SE029 = playSeVer2( spep_6 + 0, 1341, "",spep_6 + 132, 0, 22, -1);
SE030 = playSeVer2( spep_6 + 0, 1147, "",spep_6 + 132, 0, 22, -1);
SE031 = playSeVer2( spep_6 + 0, 1199, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_6 + 0, 1019, "", 0, 0, 0, -1);

--腕上げる
SE033 = playSeVer2( spep_6 + 24, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7 = spep_6 + 78 -4;


-------------------------------------------------
-- 俯瞰_引きの絵
-------------------------------------------------
-- ** エフェクト等 ** --
base_7 = entryEffect( spep_7 + 0, SP_08r, 0x80, -1, 0, 0, 0); -- ef_008
setEffMoveKey( spep_7 + 0, base_7, 0, 0 , 0);
setEffMoveKey( spep_7 + 58 -4, base_7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7, 1.0, 1.0);
setEffScaleKey( spep_7 + 58 -4, base_7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7, 0);
setEffRotateKey( spep_7 + 58 -4, base_7, 0);
setEffAlphaKey( spep_7 + 0, base_7, 255);
setEffAlphaKey( spep_7 + 58 -5, base_7, 255);
setEffAlphaKey( spep_7 + 58 -4, base_7, 0);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_7 + 0, 906, 58 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen_7, 58 -4, 20 );
setEffMoveKey( spep_7 + 0, shuchusen_7, 0, 0, 0 );
setEffMoveKey( spep_7 + 58 -4, shuchusen_7, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, shuchusen_7, 1.6, 1.6 );
setEffScaleKey( spep_7 + 58 -4, shuchusen_7, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen_7, 0 );
setEffRotateKey( spep_7 + 58 -4, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen_7, 255 );
setEffAlphaKey( spep_7 + 58 -4, shuchusen_7, 255 );

-- ** 白フェード ** --
entryFade( spep_7 + 58 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 58 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--発射前溜め
SE034 = playSeVer2( spep_7 + 0, 1199, "",spep_7 + 68, 0, 22, -1);
SE035 = playSeVer2( spep_7 + 0, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_7 + 0, 1342, "",spep_7 + 210, 0, 32, -1);

--腕前に出す
SE037 = playSeVer2( spep_7 + 30, 1145, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_7 + 30, 1114, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_8 = spep_7 + 58 -4;


-------------------------------------------------
-- 攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_8 = entryEffect( spep_8 + 0, SP_09r, 0x80, -1, 0, 0, 0); -- ef_009
setEffMoveKey( spep_8 + 0, base_8, 0, 0 , 0);
setEffMoveKey( spep_8 + 78 -4, base_8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8, 1.0, 1.0);
setEffScaleKey( spep_8 + 78 -4, base_8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8, 0);
setEffRotateKey( spep_8 + 78 -4, base_8, 0);
setEffAlphaKey( spep_8 + 0, base_8, 255);
setEffAlphaKey( spep_8 + 78 -5, base_8, 255);
setEffAlphaKey( spep_8 + 78 -4, base_8, 0);

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 78 -4 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--ビックリショー発射
SE039 = playSeVer2( spep_8 + 10, 1284, "",spep_8 + 138, 0, 32, -1);
SE040 = playSeVer2( spep_8 + 10, 1177, "",spep_8 + 138, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_8 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
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
spep_9 = spep_8 + 78 -4;


-------------------------------------------------
-- 最前面_エフェクト
-------------------------------------------------
-- ** エフェクト等 ** --
base_9f = entryEffect( spep_9 + 0, SP_10f, 0x100, -1, 0, 0, 0); -- 最前面_エフェクト ef_010
setEffMoveKey( spep_9 + 0, base_9f, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9f, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9f, 0);
setEffRotateKey( spep_9 + 138 -4, base_9f, 0);
setEffAlphaKey( spep_9 + 0, base_9f, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9f, 255);

base_9e1 = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0); -- 中段面_エフェクト	ef_012
setEffMoveKey( spep_9 + 0, base_9e1, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9e1, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9e1, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9e1, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9e1, 0);
setEffRotateKey( spep_9 + 138 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 0, base_9e1, 255);
setEffAlphaKey( spep_9 + 16 -4, base_9e1, 255);
setEffAlphaKey( spep_9 + 17 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 18 -4, base_9e1, 0);
setEffAlphaKey( spep_9 + 138 -4, base_9e1, 0);

base_9b = entryEffect( spep_9 + 0, SP_10b, 0x80, -1, 0, 0, 0); -- 背景（BG）ef_013
setEffMoveKey( spep_9 + 0, base_9b, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9b, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9b, 0);
setEffRotateKey( spep_9 + 138 -4, base_9b, 0);
setEffAlphaKey( spep_9 + 0, base_9b, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9b, 255);

base_9e2 = entryEffect( spep_9 + 0, SP_10, 0x80, -1, 0, 0, 0); -- 中段面_エフェクト	ef_012
setEffMoveKey( spep_9 + 0, base_9e2, 0, 0 , 0);
setEffMoveKey( spep_9 + 138 -4, base_9e2, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9e2, 1.0, 1.0);
setEffScaleKey( spep_9 + 138 -4, base_9e2, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9e2, 0);
setEffRotateKey( spep_9 + 138 -4, base_9e2, 0);
setEffAlphaKey( spep_9 + 0, base_9e2, 0);
setEffAlphaKey( spep_9 + 16 -4, base_9e2, 0);
setEffAlphaKey( spep_9 + 17 -4, base_9e2, 255);
setEffAlphaKey( spep_9 + 18 -4, base_9e2, 255);
setEffAlphaKey( spep_9 + 138 -4, base_9e2, 255);

-----------------------------
-- 集中線
-----------------------------
-- ** 集中線 ** --
shuchusen_9 = entryEffectLife( spep_9 + 14 -4, 906, 14 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_9 + 14 -4, shuchusen_9, 16 -4, 20 );
setEffMoveKey( spep_9 + 14 -4, shuchusen_9, 0, 0, 0 );
setEffMoveKey( spep_9 + 14 -4, shuchusen_9, 0, 0, 0 );
setEffScaleKey( spep_9 + 14 -4, shuchusen_9, 1.6, 1.6 );
setEffScaleKey( spep_9 + 14 -4, shuchusen_9, 1.6, 1.6 );
setEffRotateKey( spep_9 + 14 -4, shuchusen_9, 0 );
setEffRotateKey( spep_9 + 14 -4, shuchusen_9, 0 );
setEffAlphaKey( spep_9 + 14 -4, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 14 -4, shuchusen_9, 255 );

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_9 + 14 -4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 138 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 138, 1, 0 );

changeAnime( spep_9 -3 + 0, 1, 117 );
changeAnime( spep_9 -3 + 16, 1, 106 );

setMoveKey( spep_9 -2 + 2, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -11.9, -284.3 , 0 );
setMoveKey( spep_9 -3 + 15, 1, -66, -322.9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -221.6, -355.8 , 0 );
setMoveKey( spep_9 -3 + 17, 1, -221.6, -355.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -65.1, -193.2 , 0 );
setMoveKey( spep_9 -3 + 19, 1, -65.1, -193.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 31.2, -90.8 , 0 );
setMoveKey( spep_9 -3 + 21, 1, 31.2, -90.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 92.4, -24.9 , 0 );
setMoveKey( spep_9 -3 + 23, 1, 92.4, -24.9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 147.1, 33.3 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 156.1, 44.5 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 149.1, 41.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 141.5, 34.8 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 130.3, 25.1 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 129, 24 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 129, 24 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 129.3, 24 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 130.9, 24 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 132.4, 24 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 134.7, 24 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 134.7, 24 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 135.7, 26.5 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 134.1, 24 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 135.5, 25.7 , 0 );
setMoveKey( spep_9 -4 + 138, 1, 135.5, 25.7 , 0 );

setScaleKey( spep_9 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_9 -3 + 15, 1, 1.71, 1.71 );
setScaleKey( spep_9 -3 + 16, 1, 1.54, 1.54 );
setScaleKey( spep_9 -4 + 138, 1, 1.54, 1.54 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 15, 1, 0 );
setRotateKey( spep_9 -3 + 16, 1, -23.5 );
setRotateKey( spep_9 -3 + 17, 1, -23.5 );
setRotateKey( spep_9 -3 + 18, 1, -28.1 );
setRotateKey( spep_9 -3 + 19, 1, -28.1 );
setRotateKey( spep_9 -3 + 20, 1, -25.3 );
setRotateKey( spep_9 -3 + 21, 1, -25.3 );
setRotateKey( spep_9 -3 + 22, 1, -29.2 );
setRotateKey( spep_9 -3 + 23, 1, -29.2 );
setRotateKey( spep_9 -3 + 24, 1, -26.1 );
setRotateKey( spep_9 -3 + 26, 1, -26.3 );
setRotateKey( spep_9 -3 + 28, 1, -29.7 );
setRotateKey( spep_9 -3 + 30, 1, -26.3 );
setRotateKey( spep_9 -3 + 32, 1, -29.7 );
setRotateKey( spep_9 -3 + 34, 1, -26.3 );
setRotateKey( spep_9 -3 + 36, 1, -29.7 );
setRotateKey( spep_9 -3 + 38, 1, -26.3 );
setRotateKey( spep_9 -3 + 40, 1, -29.7 );
setRotateKey( spep_9 -3 + 42, 1, -26.3 );
setRotateKey( spep_9 -3 + 44, 1, -29.7 );
setRotateKey( spep_9 -3 + 46, 1, -26.3 );
setRotateKey( spep_9 -3 + 48, 1, -29.7 );
setRotateKey( spep_9 -3 + 50, 1, -26.3 );
setRotateKey( spep_9 -3 + 52, 1, -29.7 );
setRotateKey( spep_9 -3 + 54, 1, -26.3 );
setRotateKey( spep_9 -3 + 56, 1, -29.7 );
setRotateKey( spep_9 -3 + 58, 1, -26.3 );
setRotateKey( spep_9 -3 + 60, 1, -29.7 );
setRotateKey( spep_9 -3 + 62, 1, -26.3 );
setRotateKey( spep_9 -3 + 64, 1, -29.7 );
setRotateKey( spep_9 -3 + 66, 1, -26.3 );
setRotateKey( spep_9 -3 + 68, 1, -29.7 );
setRotateKey( spep_9 -3 + 70, 1, -26.3 );
setRotateKey( spep_9 -3 + 72, 1, -29.7 );
setRotateKey( spep_9 -3 + 74, 1, -26.3 );
setRotateKey( spep_9 -3 + 76, 1, -29.7 );
setRotateKey( spep_9 -3 + 78, 1, -26.3 );
setRotateKey( spep_9 -3 + 80, 1, -29.7 );
setRotateKey( spep_9 -3 + 82, 1, -26.3 );
setRotateKey( spep_9 -3 + 84, 1, -29.7 );
setRotateKey( spep_9 -3 + 86, 1, -26.3 );
setRotateKey( spep_9 -3 + 88, 1, -29.7 );
setRotateKey( spep_9 -3 + 90, 1, -26.3 );
setRotateKey( spep_9 -3 + 92, 1, -29.7 );
setRotateKey( spep_9 -3 + 94, 1, -26.3 );
setRotateKey( spep_9 -3 + 96, 1, -29.7 );
setRotateKey( spep_9 -3 + 98, 1, -26.3 );
setRotateKey( spep_9 -3 + 100, 1, -29.7 );
setRotateKey( spep_9 -3 + 102, 1, -26.3 );
setRotateKey( spep_9 -3 + 104, 1, -29.7 );
setRotateKey( spep_9 -3 + 106, 1, -26.3 );
setRotateKey( spep_9 -3 + 108, 1, -29.7 );
setRotateKey( spep_9 -3 + 110, 1, -26.3 );
setRotateKey( spep_9 -3 + 112, 1, -29.7 );
setRotateKey( spep_9 -3 + 114, 1, -26.3 );
setRotateKey( spep_9 -3 + 116, 1, -29.7 );
setRotateKey( spep_9 -3 + 118, 1, -26.3 );
setRotateKey( spep_9 -3 + 120, 1, -29.7 );
setRotateKey( spep_9 -3 + 122, 1, -26.3 );
setRotateKey( spep_9 -3 + 124, 1, -29.7 );
setRotateKey( spep_9 -3 + 126, 1, -26.3 );
setRotateKey( spep_9 -3 + 128, 1, -29.7 );
setRotateKey( spep_9 -3 + 130, 1, -26.3 );
setRotateKey( spep_9 -3 + 132, 1, -29.7 );
setRotateKey( spep_9 -3 + 134, 1, -26.3 );
setRotateKey( spep_9 -3 + 136, 1, -29.7 );
setRotateKey( spep_9 -4 + 138, 1, -29.7 );

-- ** 音 ** --
--敵ヒット
SE041 = playSeVer2( spep_9 + 12, 1023, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 12, 1038, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_9 + 12, 1148, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_9 + 12, 1024, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_9 + 52, 1056, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_9 + 86, 1056, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 44 -3); -- ダメージ表示フレーム
endPhase( spep_9 + 138 -8); -- 終了フレーム

end
