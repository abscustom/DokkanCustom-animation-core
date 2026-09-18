--1024370:SSR_セル(第一形態)_スイングテイルショット
--sp_effect_a1_00353
--sp2378

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

SP_01 = 159684;	--冒頭・セリフカットイン	ef_001	53
SP_02 = 159686;	--セル突進・急停止	ef_002	40	味方用(ef_002とef_002_back同時再生)
SP_02b = 159687;	--セル突進・急停止	ef_002_back	40	味方用(ef_002とef_002_back同時再生)
SP_03 = 159690;	--尻尾攻撃の連打	ef_003	73	味方用(ef_003とef_003_back同時再生)
SP_03b = 159691;	--尻尾攻撃の連打	ef_003_back	73	味方用(ef_003とef_003_back同時再生)
SP_04 = 159694;	--尻尾スイング・叩き落とし	ef_004	18	味方用(ef_004とef_004_back同時再生)
SP_04b = 159695;	--尻尾スイング・叩き落とし	ef_004_back	18	味方用(ef_004とef_004_back同時再生)
SP_05 = 159698;	--フィニッシュ	ef_005	68	味方用(ef_005とef_005_back同時再生)
SP_05b = 159699;	--フィニッシュ	ef_005_back	68	味方用(ef_005とef_005_back同時再生)


--エフェクト(敵)
SP_01r = 159685;	--冒頭・セリフカットイン	ef_001_r	53	そのまま反転
SP_02r = 159688;	--セル突進・急停止：敵側	ef_002_r	40	敵用(ef_002_rとef_002_r_back同時再生)
SP_02br = 159689;	--セル突進・急停止：敵側	ef_002_r_back	40	敵用(ef_002_rとef_002_r_back同時再生)
SP_03r = 159692;	--尻尾攻撃の連打：敵側	ef_003_r	73	敵用(ef_003_rとef_003_r_back同時再生)
SP_03br = 159693;	--尻尾攻撃の連打：敵側	ef_003_r_back	73	敵用(ef_003_rとef_003_r_back同時再生)
SP_04r = 159696;	--尻尾スイング・叩き落とし：敵側	ef_004_r	18	敵用(ef_004_rとef_004_r_back同時再生)
SP_04br = 159697;	--尻尾スイング・叩き落とし：敵側	ef_004_r_back	18	敵用(ef_004_rとef_004_r_back同時再生)
SP_05r = 159700;	--フィニッシュ	ef_005_r	68	敵用(ef_005_rとef_005_r_back同時再生)
SP_05br = 159701;	--フィニッシュ	ef_005_r_back	68	敵用(ef_005_rとef_005_r_back同時再生)


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
-- 冒頭・セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭・セリフカットイン	ef_001	53
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 104 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 104 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 104 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 104 -5, base_1, 255);
setEffAlphaKey( spep_1 + 104 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 14;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 118, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 70, 0, 18, -1);
SE003 = playSeVer2( spep_1 + 0, 1175, "",spep_1 + 100, 0, 48, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 56 );

--顔カットイン
SE004 = playSeVer2( spep_1 + 24, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 104 -4;


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
-- セル突進・急停止
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --セル突進・急停止	ef_002	40	味方用(ef_002とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --セル突進・急停止	ef_002_back	40	味方用(ef_002とef_002_back同時再生)
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
--迫ってくる
SE006 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, 0.5);
SE008 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE008, 42 );
setTimeStretch( SE008, 0.84, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--止まる
SE009 = playSeVer2( spep_2 + 36, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE009, 77 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

-------------------------------------------------
-- 尻尾攻撃の連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --尻尾攻撃の連打	ef_003	73	味方用(ef_003とef_003_back同時再生)
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 144 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); ---尻尾攻撃の連打	ef_003_back	73	味方用(ef_003とef_003_back同時再生)
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
--ラッシュ
SE010 = playSeVer2( spep_3 + 10, 1110, "",spep_3 + 28, 0, 6, -1);
SE011 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 34, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 10, SE011, 74 );
SE012 = playSeVer2( spep_3 + 18, 1110, "",spep_3 + 40, 0, 12, -1);
SE013 = playSeVer2( spep_3 + 18, 1153, "",spep_3 + 44, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 18, SE013, 80 );
SE014 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 89 );
SE015 = playSeVer2( spep_3 + 28, 1153, "",spep_3 + 54, 0, 8, -1);
SE016 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 58, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 40, 1153, "",spep_3 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 40, SE017, 90 );
SE018 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE019 = playSeVer2( spep_3 + 50, 1153, "",spep_3 + 74, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 50, SE019, 72 );
SE020 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 84, 0, 8, -1);
SE021 = playSeVer2( spep_3 + 58, 1153, "",spep_3 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE021, 81 );
SE022 = playSeVer2( spep_3 + 72, 1110, "",spep_3 + 96, 0, 8, -1);
SE023 = playSeVer2( spep_3 + 72, 1153, "",spep_3 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 72, SE023, 87 );
SE024 = playSeVer2( spep_3 + 84, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 84, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 116, 1153, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 116, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE027, 92 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 144 -4;

-------------------------------------------------
-- 尻尾スイング・叩き落とし・
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --尻尾スイング・叩き落とし	ef_004	18	味方用(ef_004とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 36 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 36 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 36 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 36 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 36 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --尻尾スイング・叩き落とし	ef_004_back	18	味方用(ef_004とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 36 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 36 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 36 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 36 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 36 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 21, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 16, 1, 107 );

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

setRotateKey( spep_4 + 0, 1, -59 );
setRotateKey( spep_4 -3 + 15, 1, -59 );
setRotateKey( spep_4 -3 + 16, 1, 0 );
setRotateKey( spep_4 -3 + 18, 1, 12.9 );
setRotateKey( spep_4 -3 + 21, 1, 25.9 );


-- ** 音 ** --
--尻尾を振る
SE028 = playSeVer2( spep_4 + 4, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 4, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE030 = playSeVer2( spep_4 + 18, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 36 -4;


-------------------------------------------------
-- フィニッシュ	ef_005	68	味方用(ef_005とef_005_back同時再生)
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0); --フィニッシュ	ef_005	68	味方用(ef_005とef_005_back同時再生)
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 136 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 136 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_005_back	68	味方用(ef_005とef_005_back同時再生)
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 136 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 136 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_5 + 10, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_5 + 11, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_5 + 12, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_5 + 136 -4, 1, -45.3 +50, -142.1 +90, 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 136 -4, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 +42 );
setRotateKey( spep_5 + 1, 1, -40 +42 );
setRotateKey( spep_5 + 2, 1, 80 +42 );
setRotateKey( spep_5 + 3, 1, 80 +42 );
setRotateKey( spep_5 + 4, 1, 200 +42 );
setRotateKey( spep_5 + 5, 1, 200 +42 );
setRotateKey( spep_5 + 6, 1, 360 +42 );
setRotateKey( spep_5 + 7, 1, 360 +42 );
setRotateKey( spep_5 + 8, 1, 558 +42 );
setRotateKey( spep_5 + 9, 1, 558 +42 );
setRotateKey( spep_5 + 10, 1, 425 +42 );
setRotateKey( spep_5 + 11, 1, 425 +42 );
setRotateKey( spep_5 + 12, 1, -40 +42 );
setRotateKey( spep_5 + 136 -4, 1, -40 +42 );


-- ** 音 ** --
--ガッ
SE031 = playSeVer2( spep_5 + 18, 1054, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 18, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 18 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 136 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭・セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --冒頭・セリフカットイン	ef_001	53
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 104 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 104 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 104 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 104 -5, base_1, 255);
setEffAlphaKey( spep_1 + 104 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 14;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 118, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 70, 0, 18, -1);
SE003 = playSeVer2( spep_1 + 0, 1175, "",spep_1 + 100, 0, 48, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 56 );

--顔カットイン
SE004 = playSeVer2( spep_1 + 24, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 104 -4;


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
-- セル突進・急停止
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --セル突進・急停止	ef_002	40	味方用(ef_002とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --セル突進・急停止	ef_002_back	40	味方用(ef_002とef_002_back同時再生)
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
--迫ってくる
SE006 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, 0.5);
SE008 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE008, 42 );
setTimeStretch( SE008, 0.84, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--止まる
SE009 = playSeVer2( spep_2 + 36, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE009, 77 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

-------------------------------------------------
-- 尻尾攻撃の連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --尻尾攻撃の連打	ef_003	73	味方用(ef_003とef_003_back同時再生)
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 144 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 144 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 144 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 144 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); ---尻尾攻撃の連打	ef_003_back	73	味方用(ef_003とef_003_back同時再生)
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
--ラッシュ
SE010 = playSeVer2( spep_3 + 10, 1110, "",spep_3 + 28, 0, 6, -1);
SE011 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 34, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 10, SE011, 74 );
SE012 = playSeVer2( spep_3 + 18, 1110, "",spep_3 + 40, 0, 12, -1);
SE013 = playSeVer2( spep_3 + 18, 1153, "",spep_3 + 44, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 18, SE013, 80 );
SE014 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 89 );
SE015 = playSeVer2( spep_3 + 28, 1153, "",spep_3 + 54, 0, 8, -1);
SE016 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 58, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 40, 1153, "",spep_3 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 40, SE017, 90 );
SE018 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE019 = playSeVer2( spep_3 + 50, 1153, "",spep_3 + 74, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 50, SE019, 72 );
SE020 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 84, 0, 8, -1);
SE021 = playSeVer2( spep_3 + 58, 1153, "",spep_3 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE021, 81 );
SE022 = playSeVer2( spep_3 + 72, 1110, "",spep_3 + 96, 0, 8, -1);
SE023 = playSeVer2( spep_3 + 72, 1153, "",spep_3 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 72, SE023, 87 );
SE024 = playSeVer2( spep_3 + 84, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 84, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 116, 1153, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 116, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE027, 92 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 144 -4;

-------------------------------------------------
-- 尻尾スイング・叩き落とし・
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --尻尾スイング・叩き落とし	ef_004	18	味方用(ef_004とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 36 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 36 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 36 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 36 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 36 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --尻尾スイング・叩き落とし	ef_004_back	18	味方用(ef_004とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 36 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 36 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 36 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 36 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 36 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 21, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 16, 1, 107 );

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

setRotateKey( spep_4 + 0, 1, -59 );
setRotateKey( spep_4 -3 + 15, 1, -59 );
setRotateKey( spep_4 -3 + 16, 1, 0 );
setRotateKey( spep_4 -3 + 18, 1, 12.9 );
setRotateKey( spep_4 -3 + 21, 1, 25.9 );


-- ** 音 ** --
--尻尾を振る
SE028 = playSeVer2( spep_4 + 4, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 4, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE030 = playSeVer2( spep_4 + 18, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 36 -4;

-------------------------------------------------
-- フィニッシュ	ef_005	68	味方用(ef_005とef_005_back同時再生)
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0); --フィニッシュ	ef_005	68	味方用(ef_005とef_005_back同時再生)
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 136 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 136 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_05br, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_005_back	68	味方用(ef_005とef_005_back同時再生)
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 136 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 136 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_5 + 10, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_5 + 11, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_5 + 12, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_5 + 136 -4, 1, -45.3 +50, -142.1 +90, 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 136 -4, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 +42 );
setRotateKey( spep_5 + 1, 1, -40 +42 );
setRotateKey( spep_5 + 2, 1, 80 +42 );
setRotateKey( spep_5 + 3, 1, 80 +42 );
setRotateKey( spep_5 + 4, 1, 200 +42 );
setRotateKey( spep_5 + 5, 1, 200 +42 );
setRotateKey( spep_5 + 6, 1, 360 +42 );
setRotateKey( spep_5 + 7, 1, 360 +42 );
setRotateKey( spep_5 + 8, 1, 558 +42 );
setRotateKey( spep_5 + 9, 1, 558 +42 );
setRotateKey( spep_5 + 10, 1, 425 +42 );
setRotateKey( spep_5 + 11, 1, 425 +42 );
setRotateKey( spep_5 + 12, 1, -40 +42 );
setRotateKey( spep_5 + 136 -4, 1, -40 +42 );


-- ** 音 ** --
--ガッ
SE031 = playSeVer2( spep_5 + 18, 1054, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 18, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 18 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 136 -8); -- 終了フレーム

end
