--1025210:UR_クウラ_デスフラッシャー
--sp_effect_a1_00370
--sp2439

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
SP_01 = 160345;	--構え	ef_001		
SP_02 = 160346;	--攻撃	ef_002	
SP_03 = 160348;	--敵に向かう気弾	ef_003		ef_004と同時再生
SP_03b = 160350; --BG 集中線のみ	ef_004		ef_003またはef_003rと同時再生

--エフェクト(てき)
SP_02r = 160347; --攻撃	ef_002r		敵側用
SP_03r = 160349; --敵に向かう気弾	ef_003r		敵側用　ef_004と同時再生

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
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -2, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 128 -2, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 128 -2, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 128 -2, base_0, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_0 + 128 -4 -16, 16, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 黒背景フェード ** --
entryFadeBg( spep_0 + 0, 0, 128-2, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 音 ** --
--集中線
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 86 );

--振りかぶる
SE002 = playSeVer2( spep_0 + 12, 1116, "",spep_0 + 50, 0, 18, -1);
SE003 = playSeVer2( spep_0 + 12, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 128 -2;


-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
-- setEffReplaceTexture( speff2, 1, 1);
-- setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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

-- -- ** 音 ** --
-- playSe( spep_c + 0, SE_05);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 96;


-------------------------------------------------
-- 攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 80 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 80 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 80 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 80 -5, base_1, 255);
setEffAlphaKey( spep_1 + 80 -4, base_1, 0);

-- ** 黒背景フェード ** --
entryFadeBg( spep_1 + 0, 0, 80-4, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_1 + 80 -4 -16, 14, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE006 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 42, 0, 14, -1);
SE007 = playSeVer2( spep_1 + 0, 1262, "",spep_1 + 42, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 164 );
SE008 = playSeVer2( spep_1 + 0, 1282, "",spep_1 + 42, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE008, 74 );

--気弾発射
SE009 = playSeVer2( spep_1 + 30, 1145, "",spep_1 + 156, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 30, 1177, "",spep_1 + 156, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE011, 74 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 80 -4;


-------------------------------------------------
-- 敵に向かう気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003		ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 68 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_004		ef_003またはef_003rと同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 68 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2b, 0);

-- ** 黒背景フェード ** --
entryFadeBg( spep_2 + 0, 0, 68 -4, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
-- setDisp( spep_2 -4 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 252.6, -120.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 252.4, -113.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 251.9, -123.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 250.9, -114.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 249.7, -122 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 248.1, -114.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 246.2, -120.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 244.1, -114.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 241.7, -119.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 239.1, -113 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 236.4, -117.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 233.5, -111.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 230.5, -115.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 227.5, -109.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 224.5, -113.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 221.4, -108 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 218.5, -111.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 215.6, -106 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 212.7, -109.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 210.1, -104.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 207.5, -107.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 205.1, -102.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 202.8, -106.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 200.8, -101 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 198.9, -104.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 -3 + 6, 1, 1, 1 );
setScaleKey( spep_2 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 22, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 24, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 34, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 46, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 48, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 0, 1, 9.3 );

-- ** 音 ** --
--気弾飛んでいく
SE012 = playSeVer2( spep_2 + 0, 1021, "", 0, 0, 0, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 -3 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 198.9, -104.7 , 0 );
setMoveKey( SP_dodge + 2, 1, 197.1, -99.7 , 0 );
setMoveKey( SP_dodge + 4, 1, 195.6, -103.6 , 0 );
setMoveKey( SP_dodge + 6, 1, 194.2, -98.7 , 0 );
setMoveKey( SP_dodge + 8 + 56, 1, 193.1, -102.7 , 0 );
setMoveKey( SP_dodge + 10 + 58, 1, 192.1, -98 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 2, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 4, 1, 1.14, 1.14 );
setScaleKey( SP_dodge + 10, 1, 1.14, 1.14 );

setRotateKey( SP_dodge + 0, 1, 9.3 );
setRotateKey( SP_dodge + 10, 1, 9.3 );

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
setMoveKey( spep_2 -3 + 50, 1, 197.1, -99.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 195.6, -103.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 194.2, -98.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 193.1, -102.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 192.1, -98 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 191.3, -102.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 190.7, -97.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 190.3, -101.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 190, -97.3 , 0 );
setMoveKey( spep_2 -5 + 68, 1, 189.9, -97.3 , 0 );

setScaleKey( spep_2 -3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 52, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 60, 1, 1.15, 1.15 );
setScaleKey( spep_2 -5 + 68, 1, 1.15, 1.15 );

setRotateKey( spep_2 -5 + 68, 1, 9.3 );

-- ** 白フェード ** --
entryFade( spep_2 + 68 -4 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 黒背景フェード ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14 + 1,  906, 46, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14 + 1,  1657, 85, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14 +1, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14 +1, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14 +1, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14 +1, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14 +1,  10005, 85, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14 +1, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14 +1, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 15 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 16 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 17 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 18 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 19 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 20 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 21 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 22 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 23 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 24 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 25 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 26 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 27 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 28 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 103, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

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
setMoveKey( spep_3 -3 + 103, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 +    0, 1, 0.16, 0.16 );
setScaleKey( spep_3 +    2, 1, 0.2, 0.2 );
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
setScaleKey( spep_3 -3 + 103, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 -3 + 103, 1, 729.5 );

-- ** 音 ** --
--爆発
SE013 = playSeVer2( spep_3 + 0 -8, 1023, "", 0, 0, 0, -1);

--画面割れる
SE014 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 98 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -2, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 128 -2, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 128 -2, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 128 -2, base_0, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_0 + 128 -4 -16, 16, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 黒背景フェード ** --
entryFadeBg( spep_0 + 0, 0, 128-2, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 音 ** --
--集中線
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 86 );

--振りかぶる
SE002 = playSeVer2( spep_0 + 12, 1116, "",spep_0 + 50, 0, 18, -1);
SE003 = playSeVer2( spep_0 + 12, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 128 -2;


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

-- -- ** 音 ** --
playSe( spep_c + 0, SE_05);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 96;


-------------------------------------------------
-- 攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 80 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 80 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 80 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 80 -5, base_1, 255);
setEffAlphaKey( spep_1 + 80 -4, base_1, 0);

-- ** 黒背景フェード ** --
entryFadeBg( spep_1 + 0, 0, 80-4, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_1 + 80 -4 -16, 14, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE006 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 42, 0, 14, -1);
SE007 = playSeVer2( spep_1 + 0, 1262, "",spep_1 + 42, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 164 );
SE008 = playSeVer2( spep_1 + 0, 1282, "",spep_1 + 42, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE008, 74 );

--気弾発射
SE009 = playSeVer2( spep_1 + 30, 1145, "",spep_1 + 156, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 30, 1177, "",spep_1 + 156, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE011, 74 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 80 -4;


-------------------------------------------------
-- 敵に向かう気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003		ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 68 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_004		ef_003またはef_003rと同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 68 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2b, 0);

-- ** 黒背景フェード ** --
entryFadeBg( spep_2 + 0, 0, 68 -4, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
-- setDisp( spep_2 -4 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 252.6, -120.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 252.4, -113.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 251.9, -123.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 250.9, -114.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 249.7, -122 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 248.1, -114.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 246.2, -120.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 244.1, -114.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 241.7, -119.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 239.1, -113 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 236.4, -117.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 233.5, -111.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 230.5, -115.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 227.5, -109.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 224.5, -113.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 221.4, -108 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 218.5, -111.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 215.6, -106 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 212.7, -109.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 210.1, -104.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 207.5, -107.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 205.1, -102.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 202.8, -106.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 200.8, -101 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 198.9, -104.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 -3 + 6, 1, 1, 1 );
setScaleKey( spep_2 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 22, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 24, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 34, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 46, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 48, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 0, 1, 9.3 );

-- ** 音 ** --
--気弾飛んでいく
SE012 = playSeVer2( spep_2 + 0, 1021, "", 0, 0, 0, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 -3 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 198.9, -104.7 , 0 );
setMoveKey( SP_dodge + 2, 1, 197.1, -99.7 , 0 );
setMoveKey( SP_dodge + 4, 1, 195.6, -103.6 , 0 );
setMoveKey( SP_dodge + 6, 1, 194.2, -98.7 , 0 );
setMoveKey( SP_dodge + 8 + 56, 1, 193.1, -102.7 , 0 );
setMoveKey( SP_dodge + 10 + 58, 1, 192.1, -98 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 2, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 4, 1, 1.14, 1.14 );
setScaleKey( SP_dodge + 10, 1, 1.14, 1.14 );

setRotateKey( SP_dodge + 0, 1, 9.3 );
setRotateKey( SP_dodge + 10, 1, 9.3 );

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
setMoveKey( spep_2 -3 + 50, 1, 197.1, -99.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 195.6, -103.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 194.2, -98.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 193.1, -102.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 192.1, -98 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 191.3, -102.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 190.7, -97.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 190.3, -101.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 190, -97.3 , 0 );
setMoveKey( spep_2 -5 + 68, 1, 189.9, -97.3 , 0 );

setScaleKey( spep_2 -3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 52, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 60, 1, 1.15, 1.15 );
setScaleKey( spep_2 -5 + 68, 1, 1.15, 1.15 );

setRotateKey( spep_2 -5 + 68, 1, 9.3 );

-- ** 白フェード ** --
entryFade( spep_2 + 68 -4 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** 黒背景フェード ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14 + 1,  906, 46, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14 + 1,  1657, 85, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14 +1, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14 +1, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14 +1, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14 +1, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14 +1,  10005, 85, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14 +1, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14 +1, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 15 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 16 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 17 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 18 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 19 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 20 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 21 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 22 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 23 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 24 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 25 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 26 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 27 +1, ctga, -10.9 );
setEffRotateKey( spep_3 + 28 +1, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 103, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

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
setMoveKey( spep_3 -3 + 103, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 +    0, 1, 0.16, 0.16 );
setScaleKey( spep_3 +    2, 1, 0.2, 0.2 );
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
setScaleKey( spep_3 -3 + 103, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 -3 + 103, 1, 729.5 );

-- ** 音 ** --
--爆発
SE013 = playSeVer2( spep_3 + 0 -8, 1023, "", 0, 0, 0, -1);

--画面割れる
SE014 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 98 ); -- 終了フレーム

end
