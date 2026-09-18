--1024380:UR_セル(第一形態)_魔貫光殺砲
--sp_effect_a3_17291
--sp2371

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
SP_01 = 159702; --冒頭 ef_001
SP_02 = 159704; --セル突進・急停止 ef_002
SP_02b = 159705; --セル突進・急停止 ef_002_back
SP_03 = 159708; --尻尾攻撃の連打 ef_003
SP_03b = 159709; --尻尾攻撃の連打 ef_003_back
SP_04 = 159712; --尻尾スイング・叩き落とし・落下 ef_004
SP_04b = 159713; --尻尾スイング・叩き落とし・落下 ef_004_back
SP_05 = 159716; --顔アップ・セリフカットイン ef_005
SP_06 = 159718; --魔貫光殺砲発射 ef_006
SP_07 = 159720; --フィニッシュ ef_007

--エフェクト(てき)
SP_01r = 159703; --冒頭 ef_001_ｒ
SP_02r = 159706; --セル突進・急停止：敵側 ef_002_r
SP_02br = 159707; --セル突進・急停止：敵側 ef_002_r_back
SP_03r = 159710; --尻尾攻撃の連打：敵側 ef_003_r
SP_03br = 159711; --尻尾攻撃の連打：敵側 ef_003_r_back
SP_04r = 159714; --尻尾スイング・叩き落とし・落下：敵側 ef_004_r
SP_04br = 159715; --尻尾スイング・叩き落とし・落下：敵側 ef_004_r_back
SP_05r = 159717; --顔アップ・セリフカットイン ef_005_ｒ
SP_06r = 159719; --魔貫光殺砲発射 ef_006_ｒ
SP_07r = 159721; --フィニッシュ ef_007_ｒ


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
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭 ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 60 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 60 -5, base_1, 255);
setEffAlphaKey( spep_1 + 60 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 76, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 70, 0, 18, -1);
SE003 = playSeVer2( spep_1 + 0, 1175, "",spep_1 + 100, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 56 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- セル突進・急停止
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --セル突進・急停止 ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --セル突進・急停止 ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 80 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 1160.9, -153.2 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 1134.4, -149.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 1107.9, -145.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1081.4, -142 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1054.9, -138.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1028.4, -134.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 1001.9, -130.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 975.3, -127.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 948.8, -123.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 922.3, -119.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 895.8, -115.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 869.3, -112.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 842.8, -108.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 816.3, -104.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 789.8, -101.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 710.9, -110.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 632, -119.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 553.1, -128.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 474.3, -137.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 472, -135.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 469.6, -134.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 467.2, -132.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 464.9, -131.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 462.6, -129.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 460.2, -128.4 , 0 );

setScaleKey( spep_2 + 0, 1, 8.47, 8.47 );
setScaleKey( spep_2 -3 + 2, 1, 8.31, 8.31 );
setScaleKey( spep_2 -3 + 4, 1, 8.15, 8.15 );
setScaleKey( spep_2 -3 + 6, 1, 7.99, 7.99 );
setScaleKey( spep_2 -3 + 8, 1, 7.83, 7.83 );
setScaleKey( spep_2 -3 + 10, 1, 7.67, 7.67 );
setScaleKey( spep_2 -3 + 12, 1, 7.52, 7.52 );
setScaleKey( spep_2 -3 + 14, 1, 7.36, 7.36 );
setScaleKey( spep_2 -3 + 16, 1, 7.2, 7.2 );
setScaleKey( spep_2 -3 + 18, 1, 7.04, 7.04 );
setScaleKey( spep_2 -3 + 20, 1, 6.88, 6.88 );
setScaleKey( spep_2 -3 + 22, 1, 6.72, 6.72 );
setScaleKey( spep_2 -3 + 24, 1, 6.56, 6.56 );
setScaleKey( spep_2 -3 + 26, 1, 6.4, 6.4 );
setScaleKey( spep_2 -3 + 28, 1, 6.24, 6.24 );
setScaleKey( spep_2 -3 + 30, 1, 5.96, 5.96 );
setScaleKey( spep_2 -3 + 32, 1, 5.68, 5.68 );
setScaleKey( spep_2 -3 + 34, 1, 5.4, 5.4 );
setScaleKey( spep_2 -3 + 36, 1, 5.12, 5.12 );
setScaleKey( spep_2 -3 + 38, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 40, 1, 5.09, 5.09 );
setScaleKey( spep_2 -3 + 42, 1, 5.08, 5.08 );
setScaleKey( spep_2 -3 + 44, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 46, 1, 5.06, 5.06 );
setScaleKey( spep_2 -3 + 48, 1, 5.05, 5.05 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--向かってくる
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE006, 42 );
setTimeStretch( SE006, 0.84, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
-- setDisp( spep_2 -4 + 80, 1, 0 );

setMoveKey( spep_2 -3 + 50, 1, 457.9, -127 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 455.5, -125.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 453.2, -124.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 450.8, -122.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 448.5, -121.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 446.2, -119.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 443.8, -118.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 441.4, -117 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 439.1, -115.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 436.8, -114.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 434.5, -112.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 432.1, -111.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 429.7, -109.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 427.4, -108.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 425.1, -106.9 , 0 );
-- setMoveKey( spep_2 -5 + 80, 1, 425.1, -106.9 , 0 );

setScaleKey( spep_2 -3 + 50, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 52, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 54, 1, 5.01, 5.01 );
setScaleKey( spep_2 -3 + 56, 1, 5, 5 );
setScaleKey( spep_2 -3 + 58, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 60, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 62, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 64, 1, 4.95, 4.95 );
setScaleKey( spep_2 -3 + 66, 1, 4.94, 4.94 );
setScaleKey( spep_2 -3 + 68, 1, 4.93, 4.93 );
setScaleKey( spep_2 -3 + 70, 1, 4.92, 4.92 );
setScaleKey( spep_2 -3 + 72, 1, 4.91, 4.91 );
setScaleKey( spep_2 -3 + 74, 1, 4.89, 4.89 );
setScaleKey( spep_2 -3 + 76, 1, 4.88, 4.88 );
setScaleKey( spep_2 -3 + 78, 1, 4.87, 4.87 );
-- setScaleKey( spep_2 -5 + 80, 1, 4.87, 4.87 );

setRotateKey( spep_2 -5 + 80, 1, 0 );


-- ** 音 ** --
--静止
SE007 = playSeVer2( spep_2 + 38, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE007, 77 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

-------------------------------------------------
-- 尻尾攻撃の連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --尻尾攻撃の連打 ef_003
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 144 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); ---尻尾攻撃の連打 ef_003_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 144 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 144 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 -4 + 144, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 18, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );
changeAnime( spep_3 -3 + 34, 1, 106 );
changeAnime( spep_3 -3 + 42, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 58, 1, 108 );
changeAnime( spep_3 -3 + 66, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );
changeAnime( spep_3 -3 + 82, 1, 106 );
changeAnime( spep_3 -3 + 90, 1, 108 );
changeAnime( spep_3 -3 + 122, 1, 106 );
changeAnime( spep_3 -5 + 144, 1, 106 );

setMoveKey( spep_3 + 0, 1, 243.6, -38.6 , 0 );
setMoveKey( spep_3 -3 + 2, 1, 228.2, -37.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 212.8, -36.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 197.4, -35.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 182, -34.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 166.6, -33.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 151.2, -32.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 135.8, -31.4 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 120.4, -30.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 167.4, -47 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 157.8, -51 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 163.9, -35.5 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 154.8, -48.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 72.8, -32.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 64.8, -29.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 66, -24.4 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 73, -25.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 155.1, -49.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 155.4, -42.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 163.9, -49 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 164.2, -41.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 63.4, -21.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 72.8, -26.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 79, -11.6 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 70.2, -24.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 164.6, -47.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 156.5, -44.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 157.6, -39.3 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 164.4, -40.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 71.1, -25.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 71.5, -18.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 80, -25 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 80.4, -18.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 154.4, -36.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 163.5, -41.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 169.4, -26.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 160.7, -38.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 81.5, -23.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 73.7, -20.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 74.9, -15.6 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 81.7, -16.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 161, -40.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 161.2, -33.3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 169.5, -39.3 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 169.8, -32.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 77.1, -19.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 77.5, -13 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 82.1, -16.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 82.4, -16.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 82.8, -15.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 83.2, -15.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 83.5, -15.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 83.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 84.2, -14.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 84.7, -14.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 85, -13.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 85.4, -13.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 85.7, -13 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 86.1, -12.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 86.5, -12.2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 78.2, -7.1 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 170, -30.5 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 175.6, -16.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 167.3, -28.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 173.9, -31.2 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 174.2, -30.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 174.4, -30.4 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 174.6, -30 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 174.9, -29.7 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 175.1, -29.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 175.3, -28.8 , 0 );
-- setMoveKey( spep_3 -5 + 144, 1, 175.5, -28.4 , 0 );

setScaleKey( spep_3 + 0, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 2, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 4, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 6, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 8, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 10, 1, 2.34, 2.34 );
setScaleKey( spep_3 -3 + 12, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 14, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 17, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 20, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 25, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 33, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 34, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 41, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 42, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 49, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 57, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 65, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 70, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 73, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 78, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 81, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 86, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 89, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 94, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 96, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 102, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 104, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 110, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 112, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 116, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 118, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 124, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 126, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 132, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 134, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 140, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 142, 1, 1.65, 1.65 );
-- setScaleKey( spep_3 -5 + 144, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, 13.5 );
setRotateKey( spep_3 -3 + 17, 1, 13.5 );
setRotateKey( spep_3 -3 + 18, 1, 0 );
setRotateKey( spep_3 -5 + 144, 1, 0 );


-- ** 音 ** --
--尻尾アタック
SE008 = playSeVer2( spep_3 + 10, 1110, "",spep_3 + 28, 0, 6, -1);
SE009 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 34, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 10, SE009, 74 );
SE010 = playSeVer2( spep_3 + 18, 1110, "",spep_3 + 40, 0, 12, -1);
SE011 = playSeVer2( spep_3 + 18, 1153, "",spep_3 + 44, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 18, SE011, 80 );
SE012 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 28, SE012, 89 );
setPitch( spep_3 + 28, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_3 + 28, 1153, "",spep_3 + 54, 0, 8, -1);
setPitch( spep_3 + 28, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 58, 0, 8, -1);
SE015 = playSeVer2( spep_3 + 40, 1153, "",spep_3 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 40, SE015, 90 );
SE016 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 50, 1153, "",spep_3 + 74, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 50, SE017, 72 );
SE018 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 84, 0, 8, -1);
setPitch( spep_3 + 58, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );
SE019 = playSeVer2( spep_3 + 58, 1153, "",spep_3 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE019, 81 );
setPitch( spep_3 + 58, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_3 + 70, 1110, "",spep_3 + 94, 0, 8, -1);
SE021 = playSeVer2( spep_3 + 70, 1153, "",spep_3 + 100, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 70, SE021, 87 );
SE022 = playSeVer2( spep_3 + 84, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 84, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 116, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 116, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE025, 92 );



-- ** 次の準備 ** --
spep_4 = spep_3 + 144 -4;

-------------------------------------------------
-- 尻尾スイング・叩き落とし・落下
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --尻尾スイング・叩き落とし・落下 ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 112 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 112 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --尻尾スイング・叩き落とし・落下 ef_004_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 112 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 112 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 112 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 16, 1, 107 );
changeAnime( spep_4 -3 + 22, 1, 106 );
changeAnime( spep_4 -3 + 36, 1, 108 );

setMoveKey( spep_4 + 0, 1, 202, -5.9 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 188.9, 6.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 175.8, 18 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 162.7, 30 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 149.5, 41.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 136.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 123.3, 65.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 110.1, 77.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 64.2, -73.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 615.2, -306.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 1142.8, -539.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -1543.9, -1908.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -1505.2, -1857.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -1466.7, -1805.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -1428.1, -1754.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -1389.6, -1703.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -1350.9, -1651.7 , 0 );
setMoveKey( spep_4 -3 + 35, 1, -1312.5, -1600.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -461, 597.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -413.9, 536.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -366, 474.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -317.2, 411.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -267.7, 347.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -217.2, 282.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -166, 216.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -114.1, 149.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -61.3, 81.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -7.6, 12.1 , 0 );

s_4 = 1.1;
setScaleKey( spep_4 + 0, 1, 1.95 *s_4, 1.95 *s_4 );
setScaleKey( spep_4 -3 + 2, 1, 1.96 *s_4, 1.96 *s_4 );
setScaleKey( spep_4 -3 + 4, 1, 1.97 *s_4, 1.97 *s_4 );
setScaleKey( spep_4 -3 + 6, 1, 1.98 *s_4, 1.98 *s_4 );
setScaleKey( spep_4 -3 + 8, 1, 1.99 *s_4, 1.99 *s_4 );
setScaleKey( spep_4 -3 + 10, 1, 2.00 *s_4, 2.00 *s_4 );
setScaleKey( spep_4 -3 + 12, 1, 2.01 *s_4, 2.01 *s_4 );
setScaleKey( spep_4 -3 + 15, 1, 2.02 *s_4, 2.02 *s_4 );
setScaleKey( spep_4 -3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 18, 1, 3.69, 3.69 );
setScaleKey( spep_4 -3 + 21, 1, 5.9, 5.9 );
setScaleKey( spep_4 -3 + 22, 1, 0, 0 );
setScaleKey( spep_4 -3 + 35, 1, 0, 0 );
setScaleKey( spep_4 -3 + 36, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 38, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 40, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 42, 1, 2, 2 );
setScaleKey( spep_4 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 48, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 54, 1, 0.17, 0.17 );

setRotateKey( spep_4 + 0, 1, -59 );
setRotateKey( spep_4 -3 + 15, 1, -59 );
setRotateKey( spep_4 -3 + 16, 1, 0 );
setRotateKey( spep_4 -3 + 18, 1, 12.9 );
setRotateKey( spep_4 -3 + 21, 1, 25.9 );
setRotateKey( spep_4 -3 + 22, 1, -59.5 );
setRotateKey( spep_4 -3 + 35, 1, -59.5 );
setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 54, 1, 0 );


-- ** 音 ** --
--尻尾振る
SE026 = playSeVer2( spep_4 + 0, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);

--尻尾ヒット
SE028 = playSeVer2( spep_4 + 12, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE029 = playSeVer2( spep_4 + 26, 1121, "",spep_4 + 68, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 26, SE029, 76 );

--ビル激突
SE030 = playSeVer2( spep_4 + 58, 1159, "",spep_4 + 218, 0, 44, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 112 -4;

-------------------------------------------------
-- 顔アップ・セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0); --顔アップ・セリフカットイン ef_005
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 104 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 104 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 104 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 104 -5, base_5, 255);
setEffAlphaKey( spep_5 + 104 -4, base_5, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_5 + 14;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--顔カットイン
SE031 = playSeVer2( spep_5 + 20, 1018, "", 0, 0, 0, -1);

--魔貫光殺砲溜め
SE032 = playSeVer2( spep_5 + 64, 1122, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE032, 63 );
SE033 = playSeVer2( spep_5 + 64, 1252, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE033, 81 );
SE034 = playSeVer2( spep_5 + 64, 1295, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE034, 83 );
setPitch( spep_5 + 64, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_5 + 64, 1038, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE035, 88 );
SE036 = playSeVer2( spep_5 + 64, 1243, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE036, 78 );
SE037 = playSeVer2( spep_5 + 66, 1056, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 66, SE037, 83 );


-- ** 次の準備 ** --
spep_c = spep_5 + 104 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
spep_6 = spep_c + 96;

-------------------------------------------------
-- 魔貫光殺砲発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0); --魔貫光殺砲発射 ef_006
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 64 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, 1.0, 1.0);
setEffScaleKey( spep_6 + 64 -4, base_6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 64 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 64 -5, base_6, 255);
setEffAlphaKey( spep_6 + 64 -4, base_6, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 64 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--魔貫光殺砲発射
SE039 = playSeVer2( spep_6 + 6, 1145, "",spep_6 + 94, 0, 34, -1);
setSeVolumeByWorkId( spep_6 + 6, SE039, 90 );
SE040 = playSeVer2( spep_6 + 6, 1177, "",spep_6 + 92, 0, 28, -1);
setSeVolumeByWorkId( spep_6 + 6, SE040, 85 );
SE041 = playSeVer2( spep_6 + 6, 1312, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_7 = spep_6 + 64 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_7 = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0); --フィニッシュ ef_007
setEffMoveKey( spep_7 + 0, base_7, 0, 0 , 0);
setEffMoveKey( spep_7 + 172 -4, base_7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7, 1.0, 1.0);
setEffScaleKey( spep_7 + 172 -4, base_7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7, 0);
setEffRotateKey( spep_7 + 172 -4, base_7, 0);
setEffAlphaKey( spep_7 + 0, base_7, 255);
setEffAlphaKey( spep_7 + 172 -4, base_7, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 172 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--気弾飛んでいく
SE042 = playSeVer2( spep_7 + 18, 1212, "",spep_7 + 114, 6, 12, -1);
setSeVolumeByWorkId( spep_7 + 18, SE042, 57 );
setStartTimeMs( SE042,  700 );

SE043 = playSeVer2( spep_7 + 18, 1286, "",spep_7 + 114, 6, 12, -1);
setSeVolumeByWorkId( spep_7 + 18, SE043, 282 );
setStartTimeMs( SE043,  233 );

--壁突き抜ける
SE044 = playSeVer2( spep_7 + 8, 1023, "", 0, 0, 0, -1);

SE045 = playSeVer2( spep_7 + 10, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE045, 114 );

--爆発
SE046 = playSeVer2( spep_7 + 94, 1159, "", 0, 0, 0, -1);

SE047 = playSeVer2( spep_7 + 98, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 108); -- ダメージ表示フレーム
endPhase( spep_7 + 172 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --冒頭 ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 60 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 60 -5, base_1, 255);
setEffAlphaKey( spep_1 + 60 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 76, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 70, 0, 18, -1);
SE003 = playSeVer2( spep_1 + 0, 1175, "",spep_1 + 100, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 56 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- セル突進・急停止
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --セル突進・急停止 ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --セル突進・急停止 ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 80 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
-- setDisp( spep_2 -4 + 80, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 1160.9, -153.2 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 1134.4, -149.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 1107.9, -145.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1081.4, -142 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1054.9, -138.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1028.4, -134.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 1001.9, -130.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 975.3, -127.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 948.8, -123.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 922.3, -119.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 895.8, -115.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 869.3, -112.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 842.8, -108.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 816.3, -104.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 789.8, -101.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 710.9, -110.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 632, -119.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 553.1, -128.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 474.3, -137.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 472, -135.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 469.6, -134.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 467.2, -132.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 464.9, -131.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 462.6, -129.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 460.2, -128.4 , 0 );

setScaleKey( spep_2 + 0, 1, 8.47, 8.47 );
setScaleKey( spep_2 -3 + 2, 1, 8.31, 8.31 );
setScaleKey( spep_2 -3 + 4, 1, 8.15, 8.15 );
setScaleKey( spep_2 -3 + 6, 1, 7.99, 7.99 );
setScaleKey( spep_2 -3 + 8, 1, 7.83, 7.83 );
setScaleKey( spep_2 -3 + 10, 1, 7.67, 7.67 );
setScaleKey( spep_2 -3 + 12, 1, 7.52, 7.52 );
setScaleKey( spep_2 -3 + 14, 1, 7.36, 7.36 );
setScaleKey( spep_2 -3 + 16, 1, 7.2, 7.2 );
setScaleKey( spep_2 -3 + 18, 1, 7.04, 7.04 );
setScaleKey( spep_2 -3 + 20, 1, 6.88, 6.88 );
setScaleKey( spep_2 -3 + 22, 1, 6.72, 6.72 );
setScaleKey( spep_2 -3 + 24, 1, 6.56, 6.56 );
setScaleKey( spep_2 -3 + 26, 1, 6.4, 6.4 );
setScaleKey( spep_2 -3 + 28, 1, 6.24, 6.24 );
setScaleKey( spep_2 -3 + 30, 1, 5.96, 5.96 );
setScaleKey( spep_2 -3 + 32, 1, 5.68, 5.68 );
setScaleKey( spep_2 -3 + 34, 1, 5.4, 5.4 );
setScaleKey( spep_2 -3 + 36, 1, 5.12, 5.12 );
setScaleKey( spep_2 -3 + 38, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 40, 1, 5.09, 5.09 );
setScaleKey( spep_2 -3 + 42, 1, 5.08, 5.08 );
setScaleKey( spep_2 -3 + 44, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 46, 1, 5.06, 5.06 );
setScaleKey( spep_2 -3 + 48, 1, 5.05, 5.05 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--向かってくる
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE006, 42 );
setTimeStretch( SE006, 0.84, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
setMoveKey( spep_2 -3 + 50, 1, 457.9, -127 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 455.5, -125.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 453.2, -124.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 450.8, -122.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 448.5, -121.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 446.2, -119.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 443.8, -118.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 441.4, -117 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 439.1, -115.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 436.8, -114.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 434.5, -112.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 432.1, -111.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 429.7, -109.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 427.4, -108.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 425.1, -106.9 , 0 );
-- setMoveKey( spep_2 -5 + 80, 1, 425.1, -106.9 , 0 );

setScaleKey( spep_2 -3 + 50, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 52, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 54, 1, 5.01, 5.01 );
setScaleKey( spep_2 -3 + 56, 1, 5, 5 );
setScaleKey( spep_2 -3 + 58, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 60, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 62, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 64, 1, 4.95, 4.95 );
setScaleKey( spep_2 -3 + 66, 1, 4.94, 4.94 );
setScaleKey( spep_2 -3 + 68, 1, 4.93, 4.93 );
setScaleKey( spep_2 -3 + 70, 1, 4.92, 4.92 );
setScaleKey( spep_2 -3 + 72, 1, 4.91, 4.91 );
setScaleKey( spep_2 -3 + 74, 1, 4.89, 4.89 );
setScaleKey( spep_2 -3 + 76, 1, 4.88, 4.88 );
setScaleKey( spep_2 -3 + 78, 1, 4.87, 4.87 );
-- setScaleKey( spep_2 -5 + 80, 1, 4.87, 4.87 );

setRotateKey( spep_2 -5 + 80, 1, 0 );


-- ** 音 ** --
--静止
SE007 = playSeVer2( spep_2 + 38, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE007, 77 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

-------------------------------------------------
-- 尻尾攻撃の連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --尻尾攻撃の連打 ef_003
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 144 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); ---尻尾攻撃の連打 ef_003_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 144 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 144 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 -4 + 144, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 18, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );
changeAnime( spep_3 -3 + 34, 1, 106 );
changeAnime( spep_3 -3 + 42, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 58, 1, 108 );
changeAnime( spep_3 -3 + 66, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );
changeAnime( spep_3 -3 + 82, 1, 106 );
changeAnime( spep_3 -3 + 90, 1, 108 );
changeAnime( spep_3 -3 + 122, 1, 106 );
changeAnime( spep_3 -5 + 144, 1, 106 );

setMoveKey( spep_3 + 0, 1, 243.6, -38.6 , 0 );
setMoveKey( spep_3 -3 + 2, 1, 228.2, -37.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 212.8, -36.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 197.4, -35.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 182, -34.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 166.6, -33.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 151.2, -32.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 135.8, -31.4 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 120.4, -30.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 167.4, -47 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 157.8, -51 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 163.9, -35.5 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 154.8, -48.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 72.8, -32.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 64.8, -29.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 66, -24.4 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 73, -25.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 155.1, -49.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 155.4, -42.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 163.9, -49 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 164.2, -41.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 63.4, -21.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 72.8, -26.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 79, -11.6 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 70.2, -24.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 164.6, -47.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 156.5, -44.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 157.6, -39.3 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 164.4, -40.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 71.1, -25.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 71.5, -18.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 80, -25 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 80.4, -18.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 154.4, -36.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 163.5, -41.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 169.4, -26.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 160.7, -38.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 81.5, -23.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 73.7, -20.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 74.9, -15.6 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 81.7, -16.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 161, -40.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 161.2, -33.3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 169.5, -39.3 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 169.8, -32.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 77.1, -19.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 77.5, -13 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 82.1, -16.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 82.4, -16.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 82.8, -15.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 83.2, -15.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 83.5, -15.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 83.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 84.2, -14.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 84.7, -14.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 85, -13.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 85.4, -13.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 85.7, -13 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 86.1, -12.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 86.5, -12.2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 78.2, -7.1 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 170, -30.5 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 175.6, -16.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 167.3, -28.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 173.9, -31.2 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 174.2, -30.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 174.4, -30.4 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 174.6, -30 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 174.9, -29.7 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 175.1, -29.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 175.3, -28.8 , 0 );
-- setMoveKey( spep_3 -5 + 144, 1, 175.5, -28.4 , 0 );

setScaleKey( spep_3 + 0, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 2, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 4, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 6, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 8, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 10, 1, 2.34, 2.34 );
setScaleKey( spep_3 -3 + 12, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 14, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 17, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 20, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 25, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 33, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 34, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 41, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 42, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 49, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 57, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 65, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 70, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 73, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 78, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 81, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 86, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 89, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 94, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 96, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 102, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 104, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 110, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 112, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 116, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 118, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 124, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 126, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 132, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 134, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 140, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 142, 1, 1.65, 1.65 );
-- setScaleKey( spep_3 -5 + 144, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, 13.5 );
setRotateKey( spep_3 -3 + 17, 1, 13.5 );
setRotateKey( spep_3 -3 + 18, 1, 0 );
setRotateKey( spep_3 -5 + 144, 1, 0 );


-- ** 音 ** --
--尻尾アタック
SE008 = playSeVer2( spep_3 + 10, 1110, "",spep_3 + 28, 0, 6, -1);
SE009 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 34, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 10, SE009, 74 );
SE010 = playSeVer2( spep_3 + 18, 1110, "",spep_3 + 40, 0, 12, -1);
SE011 = playSeVer2( spep_3 + 18, 1153, "",spep_3 + 44, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 18, SE011, 80 );
SE012 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 28, SE012, 89 );
setPitch( spep_3 + 28, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_3 + 28, 1153, "",spep_3 + 54, 0, 8, -1);
setPitch( spep_3 + 28, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 58, 0, 8, -1);
SE015 = playSeVer2( spep_3 + 40, 1153, "",spep_3 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 40, SE015, 90 );
SE016 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 50, 1153, "",spep_3 + 74, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 50, SE017, 72 );
SE018 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 84, 0, 8, -1);
setPitch( spep_3 + 58, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );
SE019 = playSeVer2( spep_3 + 58, 1153, "",spep_3 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE019, 81 );
setPitch( spep_3 + 58, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_3 + 70, 1110, "",spep_3 + 94, 0, 8, -1);
SE021 = playSeVer2( spep_3 + 70, 1153, "",spep_3 + 100, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 70, SE021, 87 );
SE022 = playSeVer2( spep_3 + 84, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 84, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 116, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 116, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE025, 92 );



-- ** 次の準備 ** --
spep_4 = spep_3 + 144 -4;

-------------------------------------------------
-- 尻尾スイング・叩き落とし・落下
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --尻尾スイング・叩き落とし・落下 ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 112 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 112 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --尻尾スイング・叩き落とし・落下 ef_004_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 112 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 112 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 112 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 16, 1, 107 );
changeAnime( spep_4 -3 + 22, 1, 106 );
changeAnime( spep_4 -3 + 36, 1, 108 );

setMoveKey( spep_4 + 0, 1, 202, -5.9 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 188.9, 6.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 175.8, 18 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 162.7, 30 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 149.5, 41.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 136.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 123.3, 65.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 110.1, 77.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 64.2, -73.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 615.2, -306.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 1142.8, -539.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -1543.9, -1908.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -1505.2, -1857.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -1466.7, -1805.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -1428.1, -1754.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -1389.6, -1703.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -1350.9, -1651.7 , 0 );
setMoveKey( spep_4 -3 + 35, 1, -1312.5, -1600.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -461, 597.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -413.9, 536.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -366, 474.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -317.2, 411.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -267.7, 347.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -217.2, 282.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -166, 216.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -114.1, 149.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -61.3, 81.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -7.6, 12.1 , 0 );

s_4 = 1.1;
setScaleKey( spep_4 + 0, 1, 1.95 *s_4, 1.95 *s_4 );
setScaleKey( spep_4 -3 + 2, 1, 1.96 *s_4, 1.96 *s_4 );
setScaleKey( spep_4 -3 + 4, 1, 1.97 *s_4, 1.97 *s_4 );
setScaleKey( spep_4 -3 + 6, 1, 1.98 *s_4, 1.98 *s_4 );
setScaleKey( spep_4 -3 + 8, 1, 1.99 *s_4, 1.99 *s_4 );
setScaleKey( spep_4 -3 + 10, 1, 2.00 *s_4, 2.00 *s_4 );
setScaleKey( spep_4 -3 + 12, 1, 2.01 *s_4, 2.01 *s_4 );
setScaleKey( spep_4 -3 + 15, 1, 2.02 *s_4, 2.02 *s_4 );
setScaleKey( spep_4 -3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 18, 1, 3.69, 3.69 );
setScaleKey( spep_4 -3 + 21, 1, 5.9, 5.9 );
setScaleKey( spep_4 -3 + 22, 1, 0, 0 );
setScaleKey( spep_4 -3 + 35, 1, 0, 0 );
setScaleKey( spep_4 -3 + 36, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 38, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 40, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 42, 1, 2, 2 );
setScaleKey( spep_4 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 48, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 54, 1, 0.17, 0.17 );

setRotateKey( spep_4 + 0, 1, -59 );
setRotateKey( spep_4 -3 + 15, 1, -59 );
setRotateKey( spep_4 -3 + 16, 1, 0 );
setRotateKey( spep_4 -3 + 18, 1, 12.9 );
setRotateKey( spep_4 -3 + 21, 1, 25.9 );
setRotateKey( spep_4 -3 + 22, 1, -59.5 );
setRotateKey( spep_4 -3 + 35, 1, -59.5 );
setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 54, 1, 0 );


-- ** 音 ** --
--尻尾振る
SE026 = playSeVer2( spep_4 + 0, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);

--尻尾ヒット
SE028 = playSeVer2( spep_4 + 12, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE029 = playSeVer2( spep_4 + 26, 1121, "",spep_4 + 68, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 26, SE029, 76 );

--ビル激突
SE030 = playSeVer2( spep_4 + 58, 1159, "",spep_4 + 218, 0, 44, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 112 -4;

-------------------------------------------------
-- 顔アップ・セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05r, 0x80, -1, 0, 0, 0); --顔アップ・セリフカットイン ef_005
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 104 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 104 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 104 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 104 -5, base_5, 255);
setEffAlphaKey( spep_5 + 104 -4, base_5, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_5 + 14;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--顔カットイン
SE031 = playSeVer2( spep_5 + 20, 1018, "", 0, 0, 0, -1);

--魔貫光殺砲溜め
SE032 = playSeVer2( spep_5 + 64, 1122, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE032, 63 );
SE033 = playSeVer2( spep_5 + 64, 1252, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE033, 81 );
SE034 = playSeVer2( spep_5 + 64, 1295, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE034, 83 );
setPitch( spep_5 + 64, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_5 + 64, 1038, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE035, 88 );
SE036 = playSeVer2( spep_5 + 64, 1243, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 64, SE036, 78 );
SE037 = playSeVer2( spep_5 + 66, 1056, "",spep_5 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 66, SE037, 83 );


-- ** 次の準備 ** --
spep_c = spep_5 + 104 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
spep_6 = spep_c + 96;

-------------------------------------------------
-- 魔貫光殺砲発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_06r, 0x80, -1, 0, 0, 0); --魔貫光殺砲発射 ef_006
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 64 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, 1.0, 1.0);
setEffScaleKey( spep_6 + 64 -4, base_6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 64 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 64 -5, base_6, 255);
setEffAlphaKey( spep_6 + 64 -4, base_6, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 64 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--魔貫光殺砲発射
SE039 = playSeVer2( spep_6 + 6, 1145, "",spep_6 + 94, 0, 34, -1);
setSeVolumeByWorkId( spep_6 + 6, SE039, 90 );
SE040 = playSeVer2( spep_6 + 6, 1177, "",spep_6 + 92, 0, 28, -1);
setSeVolumeByWorkId( spep_6 + 6, SE040, 85 );
SE041 = playSeVer2( spep_6 + 6, 1312, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_7 = spep_6 + 64 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_7 = entryEffect( spep_7 + 0, SP_07r, 0x80, -1, 0, 0, 0); --フィニッシュ ef_007
setEffMoveKey( spep_7 + 0, base_7, 0, 0 , 0);
setEffMoveKey( spep_7 + 172 -4, base_7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7, 1.0, 1.0);
setEffScaleKey( spep_7 + 172 -4, base_7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7, 0);
setEffRotateKey( spep_7 + 172 -4, base_7, 0);
setEffAlphaKey( spep_7 + 0, base_7, 255);
setEffAlphaKey( spep_7 + 172 -4, base_7, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 172 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--気弾飛んでいく
SE042 = playSeVer2( spep_7 + 18, 1212, "",spep_7 + 114, 6, 12, -1);
setSeVolumeByWorkId( spep_7 + 18, SE042, 57 );
setStartTimeMs( SE042,  700 );

SE043 = playSeVer2( spep_7 + 18, 1286, "",spep_7 + 114, 6, 12, -1);
setSeVolumeByWorkId( spep_7 + 18, SE043, 282 );
setStartTimeMs( SE043,  233 );

--壁突き抜ける
SE044 = playSeVer2( spep_7 + 8, 1023, "", 0, 0, 0, -1);

SE045 = playSeVer2( spep_7 + 10, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE045, 114 );

--爆発
SE046 = playSeVer2( spep_7 + 94, 1159, "", 0, 0, 0, -1);

SE047 = playSeVer2( spep_7 + 98, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 108); -- ダメージ表示フレーム
endPhase( spep_7 + 172 -8); -- 終了フレーム

end
