--1023600:SSR_孫悟空(界王拳)_必殺技(簡易版)
--sp_effect_b1_00188

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
SP_01 = 159116;	--手のアップから煙が出るまで	ef_001	121
SP_02 = 159118;	--強風が起こる所からフィニッシュまで	ef_002	216	ef_003とセット。敵の手前に配置。
SP_03 = 159120;	--強風が起こる所からフィニッシュまで	ef_003	216	ef_002とセット。敵の奥に配置。

--エフェクト(敵)
SP_04 = 159117;	--手のアップから煙が出るまで　敵側	ef_001r	121
SP_05 = 159119;	--強風が起こる所からフィニッシュまで敵側	ef_002r	216	ef_003rとセット。敵の手前に配置。
SP_06 = 159121;	--強風が起こる所からフィニッシュまで敵側	ef_003r	216	ef_002rとセット。敵の奥に配置。


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


spep_1 = 0;


-------------------------------------------------
-- 手のアップから飛びかかるまで
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --手のアップから煙が出るまで	ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 240 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 240 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 240 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 240 -5, base1, 255);
setEffAlphaKey( spep_1 + 240 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 46;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 252, 0, 14, -1);	--オーラ
setSeVolumeByWorkId( spep_1 + 0, SE001, 76 );

SE002 = playSeVer2( spep_1 + 0, 1181, "",spep_1 + 252, 0, 14, -1);	--オーラ
setSeVolumeByWorkId( spep_1 + 0, SE002, 309 );

SE003 = playSeVer2( spep_1 + 48, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE004 = playSeVer2( spep_1 + 142, 1175, "",spep_1 + 252, 28, 12, 0.5);	--オーラ吹き出す
setStartTimeMs( SE004,  1233 );

SE005 = playSeVer2( spep_1 + 326, 1175, "", 0, 20, 0, -1);	--悟空奥に
setStartTimeMs( SE005,  3067 );

SE006 = playSeVer2( spep_1 + 140, 1027, "", 0, 14, 0, -1);	--オーラ吹き出す

SE007 = playSeVer2( spep_1 + 140, 1116, "",spep_1 + 180, 0, 16, -1);	--オーラ吹き出す

SE008 = playSeVer2( spep_1 + 140, 1164, "",spep_1 + 252, 0, 12, -1);	--オーラ吹き出す

SE009 = playSeVer2( spep_1 + 140, 1035, "",spep_1 + 216, 0, 40, -1);	--オーラ吹き出す
setPitch( spep_1 + 140, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_1 + 240 -4;

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
spep_2 = spep_c + 96;

-------------------------------------------------
-- 強風が起こる所からフィニッシュまで敵側
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --強風が起こる所からフィニッシュまで	ef_002	216	ef_003とセット。敵の手前に配置。
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 428 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 428 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 428 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 428 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 428 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --強風が起こる所からフィニッシュまで	ef_003	216	ef_002とセット。敵の奥に配置。
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 428 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 428 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 428 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 428 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 428 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

-- setMoveKey( spep_2 -3 + 0, 1, 496.4, 144 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 194.4, 95.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 193.5, 95.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 192.5, 95 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 191.4, 94.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 190.2, 94.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.9, 94.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 187.5, 94.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 186.1, 93.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 184.5, 93.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 182.8, 93.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 181.1, 93.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 179.2, 92.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 177.2, 92.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 176, 92.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 174.8, 92.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 173.6, 91.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 172.5, 91.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 171.4, 91.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 170.4, 91.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 169.3, 91.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 168.3, 91.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 167.4, 90.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 165.5, 90.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 164.7, 90.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 163.8, 90.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 163, 90.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 162.3, 90.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 161.5, 90 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 160.8, 89.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 160.1, 89.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 159.5, 89.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 158.9, 89.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 158.3, 89.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 157.7, 89.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 157.2, 89.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 156.7, 89.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 156.3, 89.1 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 155.8, 89 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.89, 2.89 );
setScaleKey( spep_2 -2 + 2, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 26, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 40, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 42, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 44, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 46, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 81, 1, 1.49, 1.49 );

setRotateKey( spep_2 + 0, 1, -1.2 );
setRotateKey( spep_2 -3 + 81, 1, -1.2 );


-- ** 音 ** --
SE011 = playSeVer2( spep_2 + 0, 1072, "", 0, 14, 0, -1);	--悟空奥に
setStartTimeMs( SE011,  250 );

SE012 = playSeVer2( spep_2 + 0 -12, 1258, "", 0, 30, 0, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 0, SE012, 60 );

SE013 = playSeVer2( spep_2 + 10, 1176, "",spep_2 + 186, 0, 16, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 10, SE013, 76 );

SE014 = playSeVer2( spep_2 + 8, 1181, "", spep_2 + 160, 24, 10, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 8, SE014, 309 );

SE015 = playSeVer2( spep_2 + 90, 1303, "",spep_2 + 188, 10, 52, -1);	--目光る
setSeVolumeByWorkId( spep_2 + 90, SE015, 58 );
setStartTimeMs( SE015,  433 );

SE016 = playSeVer2( spep_2 + 90, 1042, "", spep_2 + 152, 0, 10, -1);	--目光る

SE017 = playSeVer2( spep_2 + 140, 1035, "", 0, 0, 0, -1);	--界王拳

SE018 = playSeVer2( spep_2 + 140, 1011, "", 0, 0, 0, -1);	--界王拳

SE019 = playSeVer2( spep_2 + 154, 1182, "", 0, 0, 0, -1);	--飛び上がる

SE020 = playSeVer2( spep_2 + 154, 1207, "", 0, 0, 0, -1);	--飛び上がる
setSeVolumeByWorkId( spep_2 + 154, SE020, 71 );

SE021 = playSeVer2( spep_2 + 154, 1117, "", 0, 0, 0, -1);	--飛び上がる
setSeVolumeByWorkId( spep_2 + 154, SE021, 119 );

SE022 = playSeVer2( spep_2 + 154, 1176, "",spep_2 + 276, 0, 16, -1);	--飛び上がる

SE023 = playSeVer2( spep_2 + 154, 1226, "",spep_2 + 276, 0, 16, -1);	--飛び上がる

SE024 = playSeVer2( spep_2 + 210, 1182, "", 0, 8, 0, -1);	--振りかぶる
setStartTimeMs( SE024,  100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
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
setDisp( spep_2 -3 + 250, 1, 1 );
setDisp( spep_2 -3 + 308, 1, 0 );
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 334, 1, 0 );

changeAnime( spep_2 -3 + 250, 1, 118 );
changeAnime( spep_2 -3 + 258, 1, 107 );

setMoveKey( spep_2 -3 + 250, 1, 551.8, -1341.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 461.6, -1166.3 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 371.4, -991.4 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 281.2, -816.5 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 70.4, -268.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 88.3, -300.4 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 135.8, -388.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 126.5, -384.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 106.3, -371.8 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 94.8, -300 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 60.1, -218.6 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 72.3, -191.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 58.9, -181.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 70.2, -186.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 53.9, -175 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 67.3, -151 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 55.2, -144.9 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 67.7, -153 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 52.6, -145.4 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 67.3, -124.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 61.4, -130.1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 226.1, -329.2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 371.8, -504.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 495.3, -649 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 593.3, -769.4 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 672.1, -862.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 725.7, -927.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 758.4, -966.5 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 768.9, -978.2 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -310.1, 348.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -186.4, 274.3 , 0 );
setMoveKey( spep_2 -3 + 319, 1, -186.4, 274.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -13.5, 147.1 , 0 );
setMoveKey( spep_2 -3 + 321, 1, -13.5, 147.1 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 251.8, -34.5 , 0 );
setMoveKey( spep_2 -3 + 323, 1, 251.8, -34.5 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 243.1, 0.5 , 0 );
setMoveKey( spep_2 -3 + 325, 1, 243.1, 0.5 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 188.9, 58.6 , 0 );
setMoveKey( spep_2 -3 + 327, 1, 188.9, 58.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 252.5, 24.7 , 0 );
setMoveKey( spep_2 -3 + 329, 1, 252.5, 24.7 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 315.9, -9 , 0 );
setMoveKey( spep_2 -3 + 331, 1, 315.9, -9 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 379, -42.6 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 379, -42.6 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 444.2, -77.8 , 0 );

setScaleKey( spep_2 -3 + 250, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 257, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 258, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 260, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 262, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 264, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 266, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 270, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 272, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 276, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 278, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 282, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 284, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 288, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 290, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 292, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 294, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 296, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 298, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 300, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 302, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 304, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 307, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 316, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 318, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 319, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 320, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 321, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 322, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 323, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 324, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 325, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 326, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 334, 1, 0.2, 0.2 );

setRotateKey( spep_2 -3 + 250, 1, 15 );
setRotateKey( spep_2 -3 + 257, 1, 15 );
setRotateKey( spep_2 -3 + 258, 1, 7.1 );
setRotateKey( spep_2 -3 + 260, 1, 7.6 );
setRotateKey( spep_2 -3 + 262, 1, 8.2 );
setRotateKey( spep_2 -3 + 264, 1, 8.7 );
setRotateKey( spep_2 -3 + 266, 1, 9.2 );
setRotateKey( spep_2 -3 + 268, 1, 9.7 );
setRotateKey( spep_2 -3 + 270, 1, 10.2 );
setRotateKey( spep_2 -3 + 272, 1, 10.7 );
setRotateKey( spep_2 -3 + 274, 1, 11.2 );
setRotateKey( spep_2 -3 + 276, 1, 11.8 );
setRotateKey( spep_2 -3 + 278, 1, 12.3 );
setRotateKey( spep_2 -3 + 280, 1, 12.8 );
setRotateKey( spep_2 -3 + 282, 1, 13.3 );
setRotateKey( spep_2 -3 + 284, 1, 13.8 );
setRotateKey( spep_2 -3 + 286, 1, 14.3 );
setRotateKey( spep_2 -3 + 288, 1, 14.8 );
setRotateKey( spep_2 -3 + 290, 1, 15.3 );
setRotateKey( spep_2 -3 + 292, 1, 23.7 );
setRotateKey( spep_2 -3 + 294, 1, 31 );
setRotateKey( spep_2 -3 + 296, 1, 37.2 );
setRotateKey( spep_2 -3 + 298, 1, 42.2 );
setRotateKey( spep_2 -3 + 300, 1, 46.1 );
setRotateKey( spep_2 -3 + 302, 1, 48.9 );
setRotateKey( spep_2 -3 + 304, 1, 50.6 );
setRotateKey( spep_2 -3 + 307, 1, 51.2 );
setRotateKey( spep_2 -3 + 316, 1, 26.1 );
setRotateKey( spep_2 -3 + 334, 1, 26.1 );


-- ** 音 ** --
SE025 = playSeVer2( spep_2 + 246, 1116, "",spep_2 + 290, 0, 12, -1);	--殴る

SE026 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);	--殴る

SE027 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 258, SE027, 100 );

SE028 = playSeVer2( spep_2 + 258, 1010, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 258, SE028, 93 );

SE029 = playSeVer2( spep_2 + 260, 1110, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 260, SE029, 110 );

SE030 = playSeVer2( spep_2 + 308, 1061, "", 0, 0, 0, -1);	--岩激突1
setSeVolumeByWorkId( spep_2 + 308, SE030, 146 );
setPitch( spep_2 + 308, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );

SE031 = playSeVer2( spep_2 + 310, 1011, "", 0, 0, 0, -1);	--岩激突1

SE032 = playSeVer2( spep_2 + 310, 1033, "", 0, 0, 0, -1);	--岩激突1

SE033 = playSeVer2( spep_2 + 324, 1061, "", 0, 0, 0, -1);	--岩激突1
setSeVolumeByWorkId( spep_2 + 324, SE033, 143 );
setPitch( spep_2 + 324, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

SE034 = playSeVer2( spep_2 + 324, 1023, "", 0, 0, 0, -1);	--岩激突2

SE035 = playSeVer2( spep_2 + 324, 1024, "", 0, 0, 0, -1);	--岩激突2


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 320);
endPhase( spep_2 + 428 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 手のアップから飛びかかるまで
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); --手のアップから煙が出るまで　敵側	ef_001r	121
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 240 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 240 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 240 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 240 -5, base1, 255);
setEffAlphaKey( spep_1 + 240 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 46;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 252, 0, 14, -1);	--オーラ
setSeVolumeByWorkId( spep_1 + 0, SE001, 76 );

SE002 = playSeVer2( spep_1 + 0, 1181, "",spep_1 + 252, 0, 14, -1);	--オーラ
setSeVolumeByWorkId( spep_1 + 0, SE002, 309 );

SE003 = playSeVer2( spep_1 + 48, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE004 = playSeVer2( spep_1 + 142, 1175, "",spep_1 + 252, 28, 12, 0.5);	--オーラ吹き出す
setStartTimeMs( SE004,  1233 );

SE005 = playSeVer2( spep_1 + 326, 1175, "", 0, 20, 0, -1);	--悟空奥に
setStartTimeMs( SE005,  3067 );

SE006 = playSeVer2( spep_1 + 140, 1027, "", 0, 14, 0, -1);	--オーラ吹き出す

SE007 = playSeVer2( spep_1 + 140, 1116, "",spep_1 + 180, 0, 16, -1);	--オーラ吹き出す

SE008 = playSeVer2( spep_1 + 140, 1164, "",spep_1 + 252, 0, 12, -1);	--オーラ吹き出す

SE009 = playSeVer2( spep_1 + 140, 1035, "",spep_1 + 216, 0, 40, -1);	--オーラ吹き出す
setPitch( spep_1 + 140, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_1 + 240 -4;

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
spep_2 = spep_c + 96;

-------------------------------------------------
-- 強風が起こる所からフィニッシュまで敵側
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0); --強風が起こる所からフィニッシュまで敵側	ef_002r	216	ef_003rとセット。敵の手前に配置。
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 428 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 428 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 428 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 428 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 428 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0); --強風が起こる所からフィニッシュまで敵側	ef_003r	216	ef_002rとセット。敵の奥に配置。
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 428 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 428 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 428 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 428 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 428 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

-- setMoveKey( spep_2 -3 + 0, 1, 496.4, 144 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 194.4, 95.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 193.5, 95.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 192.5, 95 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 191.4, 94.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 190.2, 94.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.9, 94.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 187.5, 94.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 186.1, 93.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 184.5, 93.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 182.8, 93.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 181.1, 93.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 179.2, 92.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 177.2, 92.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 176, 92.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 174.8, 92.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 173.6, 91.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 172.5, 91.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 171.4, 91.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 170.4, 91.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 169.3, 91.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 168.3, 91.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 167.4, 90.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 165.5, 90.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 164.7, 90.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 163.8, 90.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 163, 90.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 162.3, 90.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 161.5, 90 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 160.8, 89.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 160.1, 89.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 159.5, 89.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 158.9, 89.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 158.3, 89.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 157.7, 89.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 157.2, 89.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 156.7, 89.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 156.3, 89.1 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 155.8, 89 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.89, 2.89 );
setScaleKey( spep_2 -2 + 2, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 26, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 40, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 42, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 44, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 46, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 81, 1, 1.49, 1.49 );

setRotateKey( spep_2 + 0, 1, -1.2 );
setRotateKey( spep_2 -3 + 81, 1, -1.2 );


-- ** 音 ** --
SE011 = playSeVer2( spep_2 + 0, 1072, "", 0, 14, 0, -1);	--悟空奥に
setStartTimeMs( SE011,  250 );

SE012 = playSeVer2( spep_2 + 0 -12, 1258, "", 0, 30, 0, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 0, SE012, 60 );

SE013 = playSeVer2( spep_2 + 10, 1176, "",spep_2 + 186, 0, 16, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 10, SE013, 76 );

SE014 = playSeVer2( spep_2 + 8, 1181, "", spep_2 + 160, 24, 10, -1);	--悟空奥に
setSeVolumeByWorkId( spep_2 + 8, SE014, 309 );

SE015 = playSeVer2( spep_2 + 90, 1303, "",spep_2 + 188, 10, 52, -1);	--目光る
setSeVolumeByWorkId( spep_2 + 90, SE015, 58 );
setStartTimeMs( SE015,  433 );

SE016 = playSeVer2( spep_2 + 90, 1042, "", spep_2 + 152, 0, 10, -1);	--目光る

SE017 = playSeVer2( spep_2 + 140, 1035, "", 0, 0, 0, -1);	--界王拳

SE018 = playSeVer2( spep_2 + 140, 1011, "", 0, 0, 0, -1);	--界王拳

SE019 = playSeVer2( spep_2 + 154, 1182, "", 0, 0, 0, -1);	--飛び上がる

SE020 = playSeVer2( spep_2 + 154, 1207, "", 0, 0, 0, -1);	--飛び上がる
setSeVolumeByWorkId( spep_2 + 154, SE020, 71 );

SE021 = playSeVer2( spep_2 + 154, 1117, "", 0, 0, 0, -1);	--飛び上がる
setSeVolumeByWorkId( spep_2 + 154, SE021, 119 );

SE022 = playSeVer2( spep_2 + 154, 1176, "",spep_2 + 276, 0, 16, -1);	--飛び上がる

SE023 = playSeVer2( spep_2 + 154, 1226, "",spep_2 + 276, 0, 16, -1);	--飛び上がる

SE024 = playSeVer2( spep_2 + 210, 1182, "", 0, 8, 0, -1);	--振りかぶる
setStartTimeMs( SE024,  100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
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
setDisp( spep_2 -3 + 250, 1, 1 );
setDisp( spep_2 -3 + 308, 1, 0 );
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 334, 1, 0 );

changeAnime( spep_2 -3 + 250, 1, 118 );
changeAnime( spep_2 -3 + 258, 1, 107 );

setMoveKey( spep_2 -3 + 250, 1, 551.8, -1341.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 461.6, -1166.3 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 371.4, -991.4 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 281.2, -816.5 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 70.4, -268.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 88.3, -300.4 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 135.8, -388.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 126.5, -384.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 106.3, -371.8 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 94.8, -300 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 60.1, -218.6 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 72.3, -191.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 58.9, -181.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 70.2, -186.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 53.9, -175 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 67.3, -151 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 55.2, -144.9 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 67.7, -153 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 52.6, -145.4 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 67.3, -124.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 61.4, -130.1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 226.1, -329.2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 371.8, -504.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 495.3, -649 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 593.3, -769.4 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 672.1, -862.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 725.7, -927.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 758.4, -966.5 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 768.9, -978.2 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -310.1, 348.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -186.4, 274.3 , 0 );
setMoveKey( spep_2 -3 + 319, 1, -186.4, 274.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -13.5, 147.1 , 0 );
setMoveKey( spep_2 -3 + 321, 1, -13.5, 147.1 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 251.8, -34.5 , 0 );
setMoveKey( spep_2 -3 + 323, 1, 251.8, -34.5 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 243.1, 0.5 , 0 );
setMoveKey( spep_2 -3 + 325, 1, 243.1, 0.5 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 188.9, 58.6 , 0 );
setMoveKey( spep_2 -3 + 327, 1, 188.9, 58.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 252.5, 24.7 , 0 );
setMoveKey( spep_2 -3 + 329, 1, 252.5, 24.7 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 315.9, -9 , 0 );
setMoveKey( spep_2 -3 + 331, 1, 315.9, -9 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 379, -42.6 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 379, -42.6 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 444.2, -77.8 , 0 );

setScaleKey( spep_2 -3 + 250, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 257, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 258, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 260, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 262, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 264, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 266, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 270, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 272, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 276, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 278, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 282, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 284, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 288, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 290, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 292, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 294, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 296, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 298, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 300, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 302, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 304, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 307, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 316, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 318, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 319, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 320, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 321, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 322, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 323, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 324, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 325, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 326, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 334, 1, 0.2, 0.2 );

setRotateKey( spep_2 -3 + 250, 1, 15 );
setRotateKey( spep_2 -3 + 257, 1, 15 );
setRotateKey( spep_2 -3 + 258, 1, 7.1 );
setRotateKey( spep_2 -3 + 260, 1, 7.6 );
setRotateKey( spep_2 -3 + 262, 1, 8.2 );
setRotateKey( spep_2 -3 + 264, 1, 8.7 );
setRotateKey( spep_2 -3 + 266, 1, 9.2 );
setRotateKey( spep_2 -3 + 268, 1, 9.7 );
setRotateKey( spep_2 -3 + 270, 1, 10.2 );
setRotateKey( spep_2 -3 + 272, 1, 10.7 );
setRotateKey( spep_2 -3 + 274, 1, 11.2 );
setRotateKey( spep_2 -3 + 276, 1, 11.8 );
setRotateKey( spep_2 -3 + 278, 1, 12.3 );
setRotateKey( spep_2 -3 + 280, 1, 12.8 );
setRotateKey( spep_2 -3 + 282, 1, 13.3 );
setRotateKey( spep_2 -3 + 284, 1, 13.8 );
setRotateKey( spep_2 -3 + 286, 1, 14.3 );
setRotateKey( spep_2 -3 + 288, 1, 14.8 );
setRotateKey( spep_2 -3 + 290, 1, 15.3 );
setRotateKey( spep_2 -3 + 292, 1, 23.7 );
setRotateKey( spep_2 -3 + 294, 1, 31 );
setRotateKey( spep_2 -3 + 296, 1, 37.2 );
setRotateKey( spep_2 -3 + 298, 1, 42.2 );
setRotateKey( spep_2 -3 + 300, 1, 46.1 );
setRotateKey( spep_2 -3 + 302, 1, 48.9 );
setRotateKey( spep_2 -3 + 304, 1, 50.6 );
setRotateKey( spep_2 -3 + 307, 1, 51.2 );
setRotateKey( spep_2 -3 + 316, 1, 26.1 );
setRotateKey( spep_2 -3 + 334, 1, 26.1 );


-- ** 音 ** --
SE025 = playSeVer2( spep_2 + 246, 1116, "",spep_2 + 290, 0, 12, -1);	--殴る

SE026 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);	--殴る

SE027 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 258, SE027, 100 );

SE028 = playSeVer2( spep_2 + 258, 1010, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 258, SE028, 93 );

SE029 = playSeVer2( spep_2 + 260, 1110, "", 0, 0, 0, -1);	--殴る
setSeVolumeByWorkId( spep_2 + 260, SE029, 110 );

SE030 = playSeVer2( spep_2 + 308, 1061, "", 0, 0, 0, -1);	--岩激突1
setSeVolumeByWorkId( spep_2 + 308, SE030, 146 );
setPitch( spep_2 + 308, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );

SE031 = playSeVer2( spep_2 + 310, 1011, "", 0, 0, 0, -1);	--岩激突1

SE032 = playSeVer2( spep_2 + 310, 1033, "", 0, 0, 0, -1);	--岩激突1

SE033 = playSeVer2( spep_2 + 324, 1061, "", 0, 0, 0, -1);	--岩激突1
setSeVolumeByWorkId( spep_2 + 324, SE033, 143 );
setPitch( spep_2 + 324, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

SE034 = playSeVer2( spep_2 + 324, 1023, "", 0, 0, 0, -1);	--岩激突2

SE035 = playSeVer2( spep_2 + 324, 1024, "", 0, 0, 0, -1);	--岩激突2


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 320);
endPhase( spep_2 + 428 -8);

end
