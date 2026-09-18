--1023850:UR_孫悟空Jr.&ベジータJr._ライバル同士の共闘
--sp_effect_b1_00193
--sp2330

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


-- ** エフェクト(味方) ** --
SP_01 = 159249;	--敵に飛び出していく2人	ef_001	70	味方側
SP_02 = 159251;	--ベジータJr蹴り＆悟空Jr殴り	ef_002	82	味方側・手前（ef_002とef_002_back、同時再生）
SP_03 = 159252;	--ベジータJr蹴り＆悟空Jr殴り	ef_002_back	82	味方側・後ろ（ef_002とef_002_back、同時再生）
SP_04 = 159255;	--2人で膝蹴り	ef_003	53	味方側・手前（ef_003とef_003_back、同時再生）
SP_05 = 159256;	--2人で膝蹴り	ef_003_back	53	味方側・後ろ（ef_003とef_003_back、同時再生）
SP_06 = 159259;	--敵に突っ込んでいく２人	ef_004	62	味方側
SP_07 = 159261;	--2人が敵にぶつかりフィニッシュ	ef_005	95	味方側・手前（ef_005とef_005_back、同時再生）
SP_08 = 159262;	--2人が敵にぶつかりフィニッシュ	ef_005_back	95	味方側・後ろ（ef_005とef_005_back、同時再生）

-- ** エフェクト(敵) ** --
SP_01r = 159250;	--敵に飛び出していく2人	ef_001_r	70	敵側　そのまま反転
SP_02r = 159253;	--ベジータJr蹴り＆悟空Jr殴り	ef_002_r	82	敵側・手前　そのまま反転（ef_002_rとef_002_r_back、同時再生）
SP_03r = 159254;	--ベジータJr蹴り＆悟空Jr殴り	ef_002_r_back	82	敵側・後ろ　そのまま反転（ef_002_rとef_002_r_back、同時再生）
SP_04r = 159257;	--2人で膝蹴り	ef_003_r	53	敵側・手前　そのまま反転（ef_003_rとef_003_r_back、同時再生）
SP_05r = 159258;	--2人で膝蹴り	ef_003_r_back	53	敵側・後ろ　そのまま反転（ef_003_rとef_003_r_back、同時再生）
SP_06r = 159260;	--敵に突っ込んでいく２人	ef_004_r	62	敵側　そのまま反転
SP_07r = 159263;	--2人が敵にぶつかりフィニッシュ	ef_005_r	95	敵側・手前　そのまま反転（ef_005_rとef_005_r_back、同時再生）
SP_08r = 159264;	--2人が敵にぶつかりフィニッシュ	ef_005_r_back	95	敵側・後ろ　そのまま反転（ef_005_rとef_005_r_back、同時再生）


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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 敵に飛び出していく2人
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --敵に飛び出していく2人	ef_001	70	味方側	flaggs
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 140 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 140 -5, base1, 255);
setEffAlphaKey( spep_1 + 140 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 14;

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
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 0, SE001, 79 );
SE002 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 20, SE002, 79 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 24, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 44, SE004, 79 );
SE005 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 68, SE005, 79 );

--二人構える
SE006 = playSeVer2( spep_1 + 76, 1007, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 76, SE006, 81 );
SE007 = playSeVer2( spep_1 + 84, 1013, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_1 + 92, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 92, SE008, 79 );

--ベジータ飛び出す
SE009 = playSeVer2( spep_1 + 108, 1207, "",spep_1 + 140, 2, 2, -1);	setSeVolumeByWorkId( spep_1 + 108, SE009, 64 );	setStartTimeMs( SE009,  100 );
SE010 = playSeVer2( spep_1 + 108, 1182, "",spep_1 + 140, 0, 2, -1);
SE011 = playSeVer2( spep_1 + 108, 1117, "",spep_1 + 140, 0, 2, -1);

--悟空飛び出す
SE012 = playSeVer2( spep_1 + 128, 1182, "",spep_1 + 140, 0, 2, -1);
SE013 = playSeVer2( spep_1 + 128, 1117, "",spep_1 + 140, 0, 2, -1);
SE014 = playSeVer2( spep_1 + 128, 44, "",spep_1 + 140, 0, 2, -1);	setSeVolumeByWorkId( spep_1 + 126, SE014, 78 );


-- ** 次の準備 ** --
spep_c = spep_1 + 140 -4;

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
-- ベジータJr蹴り＆悟空Jr殴り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --ベジータJr蹴り＆悟空Jr殴り	ef_002	82	味方側・手前（ef_002とef_002_back、同時再生）
setEffMoveKey( spep_2 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 164 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 164 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3_f, 0);
setEffRotateKey( spep_2 + 164 -4, base3_f, 0);
setEffAlphaKey( spep_2 + 0, base3_f, 255);
setEffAlphaKey( spep_2 + 164 -5, base3_f, 255);
setEffAlphaKey( spep_2 + 164 -4, base3_f, 0);

base3_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --ベジータJr蹴り＆悟空Jr殴り	ef_002_back	82	味方側・後ろ（ef_002とef_002_back、同時再生）
setEffMoveKey( spep_2 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 164 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 164 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3_b, 0);
setEffRotateKey( spep_2 + 164 -4, base3_b, 0);
setEffAlphaKey( spep_2 + 0, base3_b, 255);
setEffAlphaKey( spep_2 + 164 -5, base3_b, 255);
setEffAlphaKey( spep_2 + 164 -4, base3_b, 0);


-- ** 音 ** --
--ベジータオーラ
SE016 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE016, 63 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 36, 1, 1 );
setDisp( spep_2 -3 + 92, 1, 0 );
setDisp( spep_2 -3 + 128, 1, 1 );
setDisp( spep_2 -4 + 164, 1, 0 );

changeAnime( spep_2 -3 + 36, 1, 106 );
changeAnime( spep_2 -3 + 56, 1, 108 );
changeAnime( spep_2 -3 + 144, 1, 106 );

setMoveKey( spep_2 -3 + 36, 1, 177.1, 170.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 112.8, 32.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 39.1, 95.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 16.8, 50 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 77.5, 94.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 119.5, 48.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 51.5, 118.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 34.7, 80.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 90.5, 119 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 94.6, 99 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 246.5, 172.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 245.5, 172.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 244.7, 172.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 243.8, 172.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 242.9, 172.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 242, 172.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 241.1, 172.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 240.2, 172.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 239.3, 172.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 238.4, 172.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 237.5, 172.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 236.6, 172.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 235.7, 172.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 234.8, 172.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 233.9, 173 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 233, 173 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 232.1, 173 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 229.6, 171.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 83.6, 118.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 123.4, 81.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 59.6, 139.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 45.5, 90.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 110.3, 126.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 154.8, 72.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 93.2, 128.8 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 79.4, 81 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 214, 78.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 225.7, 56.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 231.2, 51.4 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 236.5, 46.4 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 241.7, 41.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 247, 36.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 252, 31.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 256.8, 27.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 261.6, 22.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 266.3, 18 , 0 );
setMoveKey( spep_2 -4 + 164, 1, 266.3, 18 , 0 );

setScaleKey( spep_2 -3 + 36, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 37, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 38, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 55, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 56, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 92, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 128, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 130, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 132, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 134, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 136, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 138, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 140, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 143, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 144, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 146, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 148, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 150, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 152, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 154, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 156, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 158, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 160, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 162, 1, 1.99, 1.99 );
setScaleKey( spep_2 -4 + 164, 1, 1.99, 1.99 );

setRotateKey( spep_2 -3 + 36, 1, -49.2 );
setRotateKey( spep_2 -3 + 38, 1, -49.1 );
setRotateKey( spep_2 -3 + 40, 1, -48.9 );
setRotateKey( spep_2 -3 + 42, 1, -48.4 );
setRotateKey( spep_2 -3 + 44, 1, -47.8 );
setRotateKey( spep_2 -3 + 46, 1, -47 );
setRotateKey( spep_2 -3 + 48, 1, -46.1 );
setRotateKey( spep_2 -3 + 50, 1, -45 );
setRotateKey( spep_2 -3 + 55, 1, -45 );
setRotateKey( spep_2 -3 + 56, 1, 0 );
setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 128, 1, -30.2 );
setRotateKey( spep_2 -3 + 130, 1, -25.9 );
setRotateKey( spep_2 -3 + 132, 1, -21.6 );
setRotateKey( spep_2 -3 + 134, 1, -17.3 );
setRotateKey( spep_2 -3 + 136, 1, -13 );
setRotateKey( spep_2 -3 + 138, 1, -8.6 );
setRotateKey( spep_2 -3 + 140, 1, -4.3 );
setRotateKey( spep_2 -3 + 143, 1, 0 );
setRotateKey( spep_2 -3 + 144, 1, -21 );
setRotateKey( spep_2 -3 + 146, 1, -20.7 );
setRotateKey( spep_2 -3 + 148, 1, -20.4 );
setRotateKey( spep_2 -3 + 150, 1, -20.1 );
setRotateKey( spep_2 -3 + 152, 1, -19.8 );
setRotateKey( spep_2 -3 + 154, 1, -19.5 );
setRotateKey( spep_2 -3 + 156, 1, -19.2 );
setRotateKey( spep_2 -3 + 158, 1, -18.9 );
setRotateKey( spep_2 -3 + 160, 1, -18.6 );
setRotateKey( spep_2 -3 + 162, 1, -18.3 );
setRotateKey( spep_2 -4 + 164, 1, -18.3 );


-- ** 音 ** --
SE017 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 24, SE017, 63 );

--ベジータキック
SE018 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 38, 1010, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 38, SE019, 87 );
SE020 = playSeVer2( spep_2 + 38, 1187, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 38, SE020, 89 );

--悟空突っ込む
SE021 = playSeVer2( spep_2 + 84, 1117, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 90, 9, "",spep_2 + 144, 0, 14, -1);	setSeVolumeByWorkId( spep_2 + 90, SE022, 72 );

--悟空オーラ
SE023 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 90, SE023, 63 );
SE024 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 114, SE024, 63 );

--悟空パンチ
SE025 = playSeVer2( spep_2 + 122, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 130, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 164 -4;

-------------------------------------------------
-- 2人で膝蹴り
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --2人で膝蹴り	ef_003	53	味方側・手前（ef_003とef_003_back、同時再生）
setEffMoveKey( spep_3 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 104 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 104 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base4_f, 0);
setEffRotateKey( spep_3 + 104 -4, base4_f, 0);
setEffAlphaKey( spep_3 + 0, base4_f, 255);
setEffAlphaKey( spep_3 + 104 -5, base4_f, 255);
setEffAlphaKey( spep_3 + 104 -4, base4_f, 0);

base4_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --2人で膝蹴り	ef_003_back	53	味方側・後ろ（ef_003とef_003_back、同時再生）
setEffMoveKey( spep_3 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 104 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 104 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base4_b, 0);
setEffRotateKey( spep_3 + 104 -4, base4_b, 0);
setEffAlphaKey( spep_3 + 0, base4_b, 255);
setEffAlphaKey( spep_3 + 104 -5, base4_b, 255);
setEffAlphaKey( spep_3 + 104 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 -4 + 104, 1, 0 );

changeAnime( spep_3 -3 + 46, 1, 107 );
changeAnime( spep_3 -3 + 66, 1, 105 );

setMoveKey( spep_3 -3 + 46, 1, -23.9, 112.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -81.2, 131.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -92, 56.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -4, 46.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -24.7, 122.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -83.9, 142.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -95, 64.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -4.2, 54.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -25.5, 133.1 , 0 );
setMoveKey( spep_3 -3 + 65, 1, -86.6, 153.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 0.3, -5.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 0.3, 11 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 0.3, 27.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.3, 44 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 0.3, 60.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0.4, 77.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 0.3, 78.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 0.3, 79.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 0.3, 80.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 0.3, 81.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 0.3, 82.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 0.4, 83.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 0.4, 84.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 0.4, 85.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 0.3, 86.3 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 0.4, 87.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 0.3, 88.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 0.4, 89.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 0.4, 90.1 , 0 );
setMoveKey( spep_3 -4 + 104, 1, 0.4, 91.1 , 0 );

setScaleKey( spep_3 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 48, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 50, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 52, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 54, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 56, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 60, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 62, 1, 2.15, 2.15 );
setScaleKey( spep_3 -3 + 65, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 66, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 68, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 70, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 72, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 74, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 78, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 80, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 84, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 86, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 88, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 92, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 94, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 96, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 98, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 100, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 102, 1, 0.24, 0.24 );
setScaleKey( spep_3 -4 + 104, 1, 0.22, 0.22 );

setRotateKey( spep_3 -3 + 44, 1, -34.4 );
setRotateKey( spep_3 -3 + 46, 1, -34 );
setRotateKey( spep_3 -3 + 65, 1, -34 );
setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -4 + 104, 1, 0 );


-- ** 音 ** --
--二人オーラ
SE027 = playSeVer2( spep_3 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 0, SE027, 56 );
SE028 = playSeVer2( spep_3 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 24, SE028, 56 );

--二人振りかぶる
SE029 = playSeVer2( spep_3 + 12, 1116, "",spep_3 + 52, 0, 10, -1);
SE030 = playSeVer2( spep_3 + 20, 1004, "", 0, 0, 0, -1);

--二人オーラ
SE031 = playSeVer2( spep_3 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 48, SE031, 56 );

--二人キック
SE032 = playSeVer2( spep_3 + 52, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_3 + 72, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 72, 1183, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 104 -4;

-------------------------------------------------
-- 敵に突っ込んでいく２人
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0); --敵に突っ込んでいく２人	ef_005	102	味方側	flaggs
setEffMoveKey( spep_4 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_4 + 124 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_4 + 124 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base5, 0);
setEffRotateKey( spep_4 + 124 -4, base5, 0);
setEffAlphaKey( spep_4 + 0, base5, 255);
setEffAlphaKey( spep_4 + 124 -5, base5, 255);
setEffAlphaKey( spep_4 + 124 -4, base5, 0);


-- ** 音 ** --
--二人飛行音
SE036 = playSeVer2( spep_4 + 0, 1019, "", 0, 0, 0, -1);

--二人飛行中オーラ
SE037 = playSeVer2( spep_4 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 0, SE037, 71 );
SE038 = playSeVer2( spep_4 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 24, SE038, 71 );

--加速する
SE039 = playSeVer2( spep_4 + 30, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 30, 1068, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 34, 1278, "",spep_4 + 202, 8, 92, -1);	setSeVolumeByWorkId( spep_4 + 34, SE033, 76 );	setStartTimeMs( SE033,  1300 );

--二人飛行中オーラ
SE041 = playSeVer2( spep_4 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 48, SE041, 71 );

--二人飛行音
SE042 = playSeVer2( spep_4 + 64, 1019, "", 0, 0, 0, -1);

--二人飛行中オーラ
SE043 = playSeVer2( spep_4 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 72, SE043, 71 );
SE044 = playSeVer2( spep_4 + 96, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 96, SE044, 71 );

--さらに加速
SE045 = playSeVer2( spep_4 + 108, 1024, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE045, 81 );
SE046 = playSeVer2( spep_4 + 108, 1258, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE046, 72 );
SE047 = playSeVer2( spep_4 + 108, 1167, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE047, 48 );	setTimeStretch( SE047, 1.43, 30, 4 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 124 -4;

-------------------------------------------------
-- 2人が敵にぶつかりフィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0); --2人が敵にぶつかりフィニッシュ	ef_005	95	味方側・手前（ef_005とef_005_back、同時再生）
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 188 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 188 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 188 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 188 -4, base5_f, 255);

base5_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0); --2人が敵にぶつかりフィニッシュ	ef_005_back	95	味方側・後ろ（ef_005とef_005_back、同時再生）
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 188 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 188 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 188 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 188 -4, base5_b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 36, 1, 1 );
setDisp( spep_5 -3 + 68, 1, 0 );

changeAnime( spep_5 -3 + 36, 1, 106 );

setMoveKey( spep_5 -3 + 36, 1, 1048, -2.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 789.6, -2.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 528.7, -2.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 265.6, -2.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 0.2, -2.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 0.2, -2.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -47.9, -31.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 30.8, 27.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -54.1, 51.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 34.4, -31.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 54, -46.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 158, 27.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 59.4, 55.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 173, -46.3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 64.9, -55.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 180.7, 31.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 64.8, 60.4 , 0 );

setScaleKey( spep_5 -3 + 36, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_5 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 42, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 50, 1, 1.41, 1.41 );
setScaleKey( spep_5 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 56, 1, 1.66, 1.66 );
setScaleKey( spep_5 -3 + 58, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 62, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 64, 1, 2, 2 );
setScaleKey( spep_5 -3 + 68, 1, 2, 2 );

setRotateKey( spep_5 -3 + 36, 1, -42 );
setRotateKey( spep_5 -3 + 54, 1, -42 );
setRotateKey( spep_5 -3 + 56, 1, -20 );
setRotateKey( spep_5 -3 + 68, 1, -20 );


-- ** 音 ** --
--敵ヒット
SE048 = playSeVer2( spep_5 + 52, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_5 + 54, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 66, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 90 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 188 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 敵に飛び出していく2人
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --敵に飛び出していく2人	ef_001	70	味方側	flaggs
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 140 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 140 -5, base1, 255);
setEffAlphaKey( spep_1 + 140 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 14;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 0, SE001, 79 );
SE002 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 20, SE002, 79 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 24, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 44, SE004, 79 );
SE005 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 68, SE005, 79 );

--二人構える
SE006 = playSeVer2( spep_1 + 76, 1007, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 76, SE006, 81 );
SE007 = playSeVer2( spep_1 + 84, 1013, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_1 + 92, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 92, SE008, 79 );

--ベジータ飛び出す
SE009 = playSeVer2( spep_1 + 108, 1207, "",spep_1 + 140, 2, 2, -1);	setSeVolumeByWorkId( spep_1 + 108, SE009, 64 );	setStartTimeMs( SE009,  100 );
SE010 = playSeVer2( spep_1 + 108, 1182, "",spep_1 + 140, 0, 2, -1);
SE011 = playSeVer2( spep_1 + 108, 1117, "",spep_1 + 140, 0, 2, -1);

--悟空飛び出す
SE012 = playSeVer2( spep_1 + 128, 1182, "",spep_1 + 140, 0, 2, -1);
SE013 = playSeVer2( spep_1 + 128, 1117, "",spep_1 + 140, 0, 2, -1);
SE014 = playSeVer2( spep_1 + 128, 44, "",spep_1 + 140, 0, 2, -1);	setSeVolumeByWorkId( spep_1 + 126, SE014, 78 );


-- ** 次の準備 ** --
spep_c = spep_1 + 140 -4;

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
-- ベジータJr蹴り＆悟空Jr殴り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --ベジータJr蹴り＆悟空Jr殴り	ef_002	82	味方側・手前（ef_002とef_002_back、同時再生）
setEffMoveKey( spep_2 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 164 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 164 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3_f, 0);
setEffRotateKey( spep_2 + 164 -4, base3_f, 0);
setEffAlphaKey( spep_2 + 0, base3_f, 255);
setEffAlphaKey( spep_2 + 164 -5, base3_f, 255);
setEffAlphaKey( spep_2 + 164 -4, base3_f, 0);

base3_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); --ベジータJr蹴り＆悟空Jr殴り	ef_002_back	82	味方側・後ろ（ef_002とef_002_back、同時再生）
setEffMoveKey( spep_2 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 164 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 164 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3_b, 0);
setEffRotateKey( spep_2 + 164 -4, base3_b, 0);
setEffAlphaKey( spep_2 + 0, base3_b, 255);
setEffAlphaKey( spep_2 + 164 -5, base3_b, 255);
setEffAlphaKey( spep_2 + 164 -4, base3_b, 0);


-- ** 音 ** --
--ベジータオーラ
SE016 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE016, 63 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 36, 1, 1 );
setDisp( spep_2 -3 + 92, 1, 0 );
setDisp( spep_2 -3 + 128, 1, 1 );
setDisp( spep_2 -4 + 164, 1, 0 );

changeAnime( spep_2 -3 + 36, 1, 106 );
changeAnime( spep_2 -3 + 56, 1, 108 );
changeAnime( spep_2 -3 + 144, 1, 106 );

setMoveKey( spep_2 -3 + 36, 1, 177.1, 170.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 112.8, 32.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 39.1, 95.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 16.8, 50 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 77.5, 94.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 119.5, 48.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 51.5, 118.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 34.7, 80.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 90.5, 119 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 94.6, 99 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 246.5, 172.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 245.5, 172.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 244.7, 172.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 243.8, 172.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 242.9, 172.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 242, 172.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 241.1, 172.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 240.2, 172.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 239.3, 172.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 238.4, 172.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 237.5, 172.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 236.6, 172.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 235.7, 172.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 234.8, 172.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 233.9, 173 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 233, 173 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 232.1, 173 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 229.6, 171.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 83.6, 118.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 123.4, 81.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 59.6, 139.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 45.5, 90.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 110.3, 126.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 154.8, 72.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 93.2, 128.8 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 79.4, 81 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 214, 78.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 225.7, 56.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 231.2, 51.4 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 236.5, 46.4 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 241.7, 41.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 247, 36.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 252, 31.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 256.8, 27.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 261.6, 22.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 266.3, 18 , 0 );
setMoveKey( spep_2 -4 + 164, 1, 266.3, 18 , 0 );

setScaleKey( spep_2 -3 + 36, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 37, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 38, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 55, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 56, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 92, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 128, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 130, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 132, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 134, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 136, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 138, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 140, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 143, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 144, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 146, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 148, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 150, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 152, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 154, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 156, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 158, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 160, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 162, 1, 1.99, 1.99 );
setScaleKey( spep_2 -4 + 164, 1, 1.99, 1.99 );

setRotateKey( spep_2 -3 + 36, 1, -49.2 );
setRotateKey( spep_2 -3 + 38, 1, -49.1 );
setRotateKey( spep_2 -3 + 40, 1, -48.9 );
setRotateKey( spep_2 -3 + 42, 1, -48.4 );
setRotateKey( spep_2 -3 + 44, 1, -47.8 );
setRotateKey( spep_2 -3 + 46, 1, -47 );
setRotateKey( spep_2 -3 + 48, 1, -46.1 );
setRotateKey( spep_2 -3 + 50, 1, -45 );
setRotateKey( spep_2 -3 + 55, 1, -45 );
setRotateKey( spep_2 -3 + 56, 1, 0 );
setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 128, 1, -30.2 );
setRotateKey( spep_2 -3 + 130, 1, -25.9 );
setRotateKey( spep_2 -3 + 132, 1, -21.6 );
setRotateKey( spep_2 -3 + 134, 1, -17.3 );
setRotateKey( spep_2 -3 + 136, 1, -13 );
setRotateKey( spep_2 -3 + 138, 1, -8.6 );
setRotateKey( spep_2 -3 + 140, 1, -4.3 );
setRotateKey( spep_2 -3 + 143, 1, 0 );
setRotateKey( spep_2 -3 + 144, 1, -21 );
setRotateKey( spep_2 -3 + 146, 1, -20.7 );
setRotateKey( spep_2 -3 + 148, 1, -20.4 );
setRotateKey( spep_2 -3 + 150, 1, -20.1 );
setRotateKey( spep_2 -3 + 152, 1, -19.8 );
setRotateKey( spep_2 -3 + 154, 1, -19.5 );
setRotateKey( spep_2 -3 + 156, 1, -19.2 );
setRotateKey( spep_2 -3 + 158, 1, -18.9 );
setRotateKey( spep_2 -3 + 160, 1, -18.6 );
setRotateKey( spep_2 -3 + 162, 1, -18.3 );
setRotateKey( spep_2 -4 + 164, 1, -18.3 );


-- ** 音 ** --
SE017 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 24, SE017, 63 );

--ベジータキック
SE018 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 38, 1010, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 38, SE019, 87 );
SE020 = playSeVer2( spep_2 + 38, 1187, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 38, SE020, 89 );

--悟空突っ込む
SE021 = playSeVer2( spep_2 + 84, 1117, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 90, 9, "",spep_2 + 144, 0, 14, -1);	setSeVolumeByWorkId( spep_2 + 90, SE022, 72 );

--悟空オーラ
SE023 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 90, SE023, 63 );
SE024 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 114, SE024, 63 );

--悟空パンチ
SE025 = playSeVer2( spep_2 + 122, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 130, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 164 -4;

-------------------------------------------------
-- 2人で膝蹴り
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); --2人で膝蹴り	ef_003	53	味方側・手前（ef_003とef_003_back、同時再生）
setEffMoveKey( spep_3 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 104 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 104 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base4_f, 0);
setEffRotateKey( spep_3 + 104 -4, base4_f, 0);
setEffAlphaKey( spep_3 + 0, base4_f, 255);
setEffAlphaKey( spep_3 + 104 -5, base4_f, 255);
setEffAlphaKey( spep_3 + 104 -4, base4_f, 0);

base4_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0); --2人で膝蹴り	ef_003_back	53	味方側・後ろ（ef_003とef_003_back、同時再生）
setEffMoveKey( spep_3 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 104 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 104 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base4_b, 0);
setEffRotateKey( spep_3 + 104 -4, base4_b, 0);
setEffAlphaKey( spep_3 + 0, base4_b, 255);
setEffAlphaKey( spep_3 + 104 -5, base4_b, 255);
setEffAlphaKey( spep_3 + 104 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 -4 + 104, 1, 0 );

changeAnime( spep_3 -3 + 46, 1, 107 );
changeAnime( spep_3 -3 + 66, 1, 105 );

setMoveKey( spep_3 -3 + 46, 1, -23.9, 112.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -81.2, 131.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -92, 56.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -4, 46.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -24.7, 122.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -83.9, 142.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -95, 64.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -4.2, 54.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -25.5, 133.1 , 0 );
setMoveKey( spep_3 -3 + 65, 1, -86.6, 153.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 0.3, -5.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 0.3, 11 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 0.3, 27.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.3, 44 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 0.3, 60.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0.4, 77.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 0.3, 78.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 0.3, 79.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 0.3, 80.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 0.3, 81.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 0.3, 82.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 0.4, 83.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 0.4, 84.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 0.4, 85.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 0.3, 86.3 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 0.4, 87.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 0.3, 88.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 0.4, 89.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 0.4, 90.1 , 0 );
setMoveKey( spep_3 -4 + 104, 1, 0.4, 91.1 , 0 );

setScaleKey( spep_3 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 48, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 50, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 52, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 54, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 56, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 60, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 62, 1, 2.15, 2.15 );
setScaleKey( spep_3 -3 + 65, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 66, 1, 3.53, 3.53 );
setScaleKey( spep_3 -3 + 68, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 70, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 72, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 74, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 78, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 80, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 84, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 86, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 88, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 92, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 94, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 96, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 98, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 100, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 102, 1, 0.24, 0.24 );
setScaleKey( spep_3 -4 + 104, 1, 0.22, 0.22 );

setRotateKey( spep_3 -3 + 44, 1, -34.4 );
setRotateKey( spep_3 -3 + 46, 1, -34 );
setRotateKey( spep_3 -3 + 65, 1, -34 );
setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -4 + 104, 1, 0 );


-- ** 音 ** --
--二人オーラ
SE027 = playSeVer2( spep_3 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 0, SE027, 56 );
SE028 = playSeVer2( spep_3 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 24, SE028, 56 );

--二人振りかぶる
SE029 = playSeVer2( spep_3 + 12, 1116, "",spep_3 + 52, 0, 10, -1);
SE030 = playSeVer2( spep_3 + 20, 1004, "", 0, 0, 0, -1);

--二人オーラ
SE031 = playSeVer2( spep_3 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_3 + 48, SE031, 56 );

--二人キック
SE032 = playSeVer2( spep_3 + 52, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_3 + 72, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 72, 1183, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 104 -4;

-------------------------------------------------
-- 敵に突っ込んでいく２人
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_4 + 0, SP_06r, 0x80, -1, 0, 0, 0); --敵に突っ込んでいく２人	ef_005	102	味方側	flaggs
setEffMoveKey( spep_4 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_4 + 124 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_4 + 124 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base5, 0);
setEffRotateKey( spep_4 + 124 -4, base5, 0);
setEffAlphaKey( spep_4 + 0, base5, 255);
setEffAlphaKey( spep_4 + 124 -5, base5, 255);
setEffAlphaKey( spep_4 + 124 -4, base5, 0);


-- ** 音 ** --
--二人飛行音
SE036 = playSeVer2( spep_4 + 0, 1019, "", 0, 0, 0, -1);

--二人飛行中オーラ
SE037 = playSeVer2( spep_4 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 0, SE037, 71 );
SE038 = playSeVer2( spep_4 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 24, SE038, 71 );

--加速する
SE039 = playSeVer2( spep_4 + 30, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 30, 1068, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 34, 1278, "",spep_4 + 202, 8, 92, -1);	setSeVolumeByWorkId( spep_4 + 34, SE033, 76 );	setStartTimeMs( SE033,  1300 );

--二人飛行中オーラ
SE041 = playSeVer2( spep_4 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 48, SE041, 71 );

--二人飛行音
SE042 = playSeVer2( spep_4 + 64, 1019, "", 0, 0, 0, -1);

--二人飛行中オーラ
SE043 = playSeVer2( spep_4 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 72, SE043, 71 );
SE044 = playSeVer2( spep_4 + 96, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_4 + 96, SE044, 71 );

--さらに加速
SE045 = playSeVer2( spep_4 + 108, 1024, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE045, 81 );
SE046 = playSeVer2( spep_4 + 108, 1258, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE046, 72 );
SE047 = playSeVer2( spep_4 + 108, 1167, "",spep_4 + 190, 0, 16, -1);	setSeVolumeByWorkId( spep_4 + 108, SE047, 48 );	setTimeStretch( SE047, 1.43, 30, 4 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 124 -4;

-------------------------------------------------
-- 2人が敵にぶつかりフィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0); --2人が敵にぶつかりフィニッシュ	ef_005	95	味方側・手前（ef_005とef_005_back、同時再生）
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 188 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 188 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 188 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 188 -4, base5_f, 255);

base5_b = entryEffect( spep_5 + 0, SP_08r, 0x80, -1, 0, 0, 0); --2人が敵にぶつかりフィニッシュ	ef_005_back	95	味方側・後ろ（ef_005とef_005_back、同時再生）
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 188 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 188 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 188 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 188 -4, base5_b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 36, 1, 1 );
setDisp( spep_5 -3 + 68, 1, 0 );

changeAnime( spep_5 -3 + 36, 1, 106 );

setMoveKey( spep_5 -3 + 36, 1, 1048, -2.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 789.6, -2.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 528.7, -2.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 265.6, -2.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 0.2, -2.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 0.2, -2.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -47.9, -31.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 30.8, 27.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -54.1, 51.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 34.4, -31.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 54, -46.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 158, 27.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 59.4, 55.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 173, -46.3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 64.9, -55.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 180.7, 31.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 64.8, 60.4 , 0 );

setScaleKey( spep_5 -3 + 36, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_5 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 42, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 50, 1, 1.41, 1.41 );
setScaleKey( spep_5 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 56, 1, 1.66, 1.66 );
setScaleKey( spep_5 -3 + 58, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 62, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 64, 1, 2, 2 );
setScaleKey( spep_5 -3 + 68, 1, 2, 2 );

setRotateKey( spep_5 -3 + 36, 1, -42 );
setRotateKey( spep_5 -3 + 54, 1, -42 );
setRotateKey( spep_5 -3 + 56, 1, -20 );
setRotateKey( spep_5 -3 + 68, 1, -20 );


-- ** 音 ** --
--敵ヒット
SE048 = playSeVer2( spep_5 + 52, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_5 + 54, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 66, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 90 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 188 -8); -- 終了フレーム

end
