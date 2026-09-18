--1026050：UR_天津飯_どどん波(極限あり)
--sp_effect_a1_00386
--sp2495

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
SP_01 = 161111;	 --セリフカットイン、気弾準備	ef_001
SP_02 = 161112;	 --気弾ため→発射	ef_002
SP_03 = 161113;	 --気弾敵ヒット：敵より前	ef_003
SP_03b = 161114;	--気弾敵ヒット：敵より後ろ	ef_004
SP_04 = 161115;	 --ラスト爆発	ef_005

--エフェクト(てき)
SP_01r = 161116;	 --セリフカットイン、気弾準備：敵側	ef_001_r		キャラ、文字反転対応
SP_02r = 161117;	 --気弾ため→発射：敵側	ef_002_r		キャラ、文字反転対応
SP_03r = 161118;	 --気弾敵ヒット：敵より前：敵側	ef_003_r		文字反転対応


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

ENABLE_AUTO_TIME_STRETCH(0.75);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン、気弾準備
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 198, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 198, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 198, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 198 -2, base_0, 255);
setEffAlphaKey( spep_0 + 198 -1, base_0, 255);
setEffAlphaKey( spep_0 + 198, base_0, 0);

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 109, 906, 89, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 109, shuchusen_0, 198, 20 );
setEffMoveKey( spep_0 + 109, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 198, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 109, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 198, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 109, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 198, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 109, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 198, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 102;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 0;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 515); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 515 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 192, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 22, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 188, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 52, 1296, "",spep_0 + 222, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 52, 1262, "",spep_0 + 222, 0, 16, -1);

--顔カットイン
SE007 = playSeVer2( spep_0 + 110, 1018, "", 0, 0, 0, -1);

--腕前に出す
SE009 = playSeVer2( spep_0 + 118, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 198;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- 気弾ため→発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 -1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 -1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 -1 + 98, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 -1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 -1 + 98, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 -1 + 0, base_1, 0);
setEffRotateKey( spep_1 -1 + 98, base_1, 0);
setEffAlphaKey( spep_1 -1 + 0, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98 -2, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98 -1, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98, base_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 0, 1296, "",spep_1 + 86, 8, 16, -1);
setStartTimeMs( SE014,  367 );
SE015 = playSeVer2( spep_1 + 4, 1262, "",spep_1 + 86, 0, 16, -1);

--気弾発射
SE016 = playSeVer2( spep_1 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE016, 79 );
SE017 = playSeVer2( spep_1 + 52, 1145, "",spep_1 + 182, 0, 12, 0.6);
setSeVolumeByWorkId( spep_1 + 52, SE017, 71 );
SE018 = playSeVer2( spep_1 + 52, 1177, "",spep_1 + 182, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 52, SE018, 81 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
spep_2 = spep_1 -1 + 98;


-------------------------------------------------
-- 気弾敵ヒット
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 -1 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 -1 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 -1 + 68, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 -1 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 -1 + 68, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 -1 + 0, base_2f, 0);
setEffRotateKey( spep_2 -1 + 68, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68 -2, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68 -1, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68, base_2f, 0);

base_2b = entryEffect( spep_2 -1 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_2 -1 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 -1 + 68, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 -1 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 -1 + 68, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 -1 + 0, base_2b, 0);
setEffRotateKey( spep_2 -1 + 68, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68 -2, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68 -1, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68, base_2b, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 60, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 30, 1, 108 );

setMoveKey( spep_2 + 0, 1, -52.6, -87.8 , 0 );
setMoveKey( spep_2 + 2, 1, -35.6, -61 , 0 );
setMoveKey( spep_2 + 4, 1, -19.1, -35 , 0 );
setMoveKey( spep_2 + 6, 1, -3.3, -9.9 , 0 );
setMoveKey( spep_2 + 8, 1, 11.8, 14.5 , 0 );
setMoveKey( spep_2 + 10, 1, 26.4, 38 , 0 );
setMoveKey( spep_2 + 12, 1, 40.3, 60.7 , 0 );
setMoveKey( spep_2 + 14, 1, 53.7, 82.6 , 0 );
setMoveKey( spep_2 + 16, 1, 55.4, 89.4 , 0 );
setMoveKey( spep_2 + 18, 1, 56.8, 91.7 , 0 );
setMoveKey( spep_2 + 20, 1, 58.2, 93.9 , 0 );
setMoveKey( spep_2 + 22, 1, 59.6, 96.1 , 0 );
setMoveKey( spep_2 + 24, 1, 61, 98.3 , 0 );
setMoveKey( spep_2 + 26, 1, 62.4, 100.5 , 0 );
setMoveKey( spep_2 + 29, 1, 63.8, 102.7 , 0 );
setMoveKey( spep_2 + 30, 1, 122, 128.5 , 0 );
setMoveKey( spep_2 + 31, 1, 122, 128.5 , 0 );
setMoveKey( spep_2 + 32, 1, 142.6, 142.5 , 0 );
setMoveKey( spep_2 + 33, 1, 142.6, 142.5 , 0 );
setMoveKey( spep_2 + 34, 1, 163.3, 156.6 , 0 );
setMoveKey( spep_2 + 35, 1, 163.3, 156.6 , 0 );
setMoveKey( spep_2 + 36, 1, 184.1, 170.7 , 0 );
setMoveKey( spep_2 + 37, 1, 184.1, 170.7 , 0 );
setMoveKey( spep_2 + 38, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 + 39, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 + 40, 1, 200.9, 180.9 , 0 );
setMoveKey( spep_2 + 41, 1, 200.9, 180.9 , 0 );
setMoveKey( spep_2 + 41, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 204.9, 184.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 2, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 4, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 6, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 8, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 10, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 12, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 18, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 22, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 24, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 29, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 31, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 33, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 34, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 37, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 39, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 40, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 41, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 41, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 68, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -1 + 68, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 20, 1021, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_3 = spep_2 -1 + 68;


-------------------------------------------------
-- ラスト爆発
-------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --汎用ラスト用固定背景
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラスト爆発 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE020 = playSeVer2( spep_3 + 0, 1025, "", 0, 0, 0, -1);

--画面割れる
SE021 = playSeVer2( spep_3 + 14, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE021, 83 );
SE022 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン、気弾準備
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 198, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 198, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 198, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 198 -2, base_0, 255);
setEffAlphaKey( spep_0 + 198 -1, base_0, 255);
setEffAlphaKey( spep_0 + 198, base_0, 0);

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 109, 906, 89, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 109, shuchusen_0, 198, 20 );
setEffMoveKey( spep_0 + 109, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 198, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 109, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 198, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 109, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 198, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 109, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 198, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 102;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 0;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 515); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 515 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 192, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 22, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 188, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 52, 1296, "",spep_0 + 222, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 52, 1262, "",spep_0 + 222, 0, 16, -1);

--顔カットイン
SE007 = playSeVer2( spep_0 + 110, 1018, "", 0, 0, 0, -1);

--腕前に出す
SE009 = playSeVer2( spep_0 + 118, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 198;


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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- 気弾ため→発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 -1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 -1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 -1 + 98, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 -1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 -1 + 98, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 -1 + 0, base_1, 0);
setEffRotateKey( spep_1 -1 + 98, base_1, 0);
setEffAlphaKey( spep_1 -1 + 0, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98 -2, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98 -1, base_1, 255);
setEffAlphaKey( spep_1 -1 + 98, base_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 0, 1296, "",spep_1 + 86, 8, 16, -1);
setStartTimeMs( SE014,  367 );
SE015 = playSeVer2( spep_1 + 4, 1262, "",spep_1 + 86, 0, 16, -1);

--気弾発射
SE016 = playSeVer2( spep_1 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE016, 79 );
SE017 = playSeVer2( spep_1 + 52, 1145, "",spep_1 + 182, 0, 12, 0.6);
setSeVolumeByWorkId( spep_1 + 52, SE017, 71 );
SE018 = playSeVer2( spep_1 + 52, 1177, "",spep_1 + 182, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 52, SE018, 81 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
spep_2 = spep_1 -1 + 98;


-------------------------------------------------
-- 気弾敵ヒット
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 -1 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 -1 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 -1 + 68, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 -1 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 -1 + 68, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 -1 + 0, base_2f, 0);
setEffRotateKey( spep_2 -1 + 68, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68 -2, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68 -1, base_2f, 255);
setEffAlphaKey( spep_2 -1 + 68, base_2f, 0);

base_2b = entryEffect( spep_2 -1 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_2 -1 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 -1 + 68, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 -1 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 -1 + 68, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 -1 + 0, base_2b, 0);
setEffRotateKey( spep_2 -1 + 68, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68 -2, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68 -1, base_2b, 255);
setEffAlphaKey( spep_2 -1 + 68, base_2b, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 60, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 30, 1, 108 );

setMoveKey( spep_2 + 0, 1, -52.6, -87.8 , 0 );
setMoveKey( spep_2 + 2, 1, -35.6, -61 , 0 );
setMoveKey( spep_2 + 4, 1, -19.1, -35 , 0 );
setMoveKey( spep_2 + 6, 1, -3.3, -9.9 , 0 );
setMoveKey( spep_2 + 8, 1, 11.8, 14.5 , 0 );
setMoveKey( spep_2 + 10, 1, 26.4, 38 , 0 );
setMoveKey( spep_2 + 12, 1, 40.3, 60.7 , 0 );
setMoveKey( spep_2 + 14, 1, 53.7, 82.6 , 0 );
setMoveKey( spep_2 + 16, 1, 55.4, 89.4 , 0 );
setMoveKey( spep_2 + 18, 1, 56.8, 91.7 , 0 );
setMoveKey( spep_2 + 20, 1, 58.2, 93.9 , 0 );
setMoveKey( spep_2 + 22, 1, 59.6, 96.1 , 0 );
setMoveKey( spep_2 + 24, 1, 61, 98.3 , 0 );
setMoveKey( spep_2 + 26, 1, 62.4, 100.5 , 0 );
setMoveKey( spep_2 + 29, 1, 63.8, 102.7 , 0 );
setMoveKey( spep_2 + 30, 1, 122, 128.5 , 0 );
setMoveKey( spep_2 + 31, 1, 122, 128.5 , 0 );
setMoveKey( spep_2 + 32, 1, 142.6, 142.5 , 0 );
setMoveKey( spep_2 + 33, 1, 142.6, 142.5 , 0 );
setMoveKey( spep_2 + 34, 1, 163.3, 156.6 , 0 );
setMoveKey( spep_2 + 35, 1, 163.3, 156.6 , 0 );
setMoveKey( spep_2 + 36, 1, 184.1, 170.7 , 0 );
setMoveKey( spep_2 + 37, 1, 184.1, 170.7 , 0 );
setMoveKey( spep_2 + 38, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 + 39, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 + 40, 1, 200.9, 180.9 , 0 );
setMoveKey( spep_2 + 41, 1, 200.9, 180.9 , 0 );
setMoveKey( spep_2 + 41, 1, 204.9, 184.9 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 204.9, 184.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 2, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 4, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 6, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 8, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 10, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 12, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 18, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 22, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 24, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 29, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 31, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 33, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 34, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 37, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 39, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 40, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 41, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 41, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 68, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -1 + 68, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 20, 1021, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_3 = spep_2 -1 + 68;


-------------------------------------------------
-- ラスト爆発
-------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --汎用ラスト用固定背景
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラスト爆発 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE020 = playSeVer2( spep_3 + 0, 1025, "", 0, 0, 0, -1);

--画面割れる
SE021 = playSeVer2( spep_3 + 14, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE021, 83 );
SE022 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

end
