--1025250：UR_ヤムチャ_狼牙風風拳
--sp_effect_b1_00226
--sp2459

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
SP_01 = 160623;	--ヤムチャがバイクで走ってくる	ef_001	反転無し（敵味方兼用）
SP_02 = 160624;	--剣で斬る	ef_002	手前側（敵味方兼用）
SP_02b = 160625; --剣で斬る	ef_002_b	奥側（敵味方兼用）
SP_03 = 160626;	--オオカミに変身する ef_003	反転無し（敵味方兼用）
SP_04 = 160627;	--敵を爪で切り込む	ef_004	手前側（敵味方兼用）
SP_04b = 160652; --敵を爪で切り込む	ef_004_b 奥側（敵味方兼用）
SP_05 = 160628;	--両手で画面に向かい打ち込む	ef_005	反転無し（敵味方兼用）
SP_06 = 160629;	--敵が吹き飛ぶ	ef_006	手前側（敵味方兼用）
SP_06b = 160630; --敵が吹き飛ぶ	ef_006_b	奥側（敵味方兼用）

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

spep_0 = 0;

-------------------------------------------------
-- ヤムチャがバイクで走ってくる
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
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 118 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--バイクで向かってくる
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 134, 72, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 134, 72, 10, -1);
SE005 = playSeVer2( spep_0 + 0, 1008, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 134, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 41 );
SE004 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--顔カットイン
SE006 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--バイクで向かってくる
SE007 = playSeVer2( spep_0 + 36, 1116, "",spep_0 + 130, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 145 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
spep_c = spep_0 + 118 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]

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
--playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- 剣で斬る
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 手前側（敵味方兼用）
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 78 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); --ef_002_b 奥側（敵味方兼用）
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 78 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 12, 1, 0 );
setDisp( spep_1 -3 + 16, 1, 1 );
setDisp( spep_1 -4 + 78, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 -3 + 12, 1, 106 );

setMoveKey( spep_1 + 0, 1, -49.4, -108.8 , 0 );
setMoveKey( spep_1 -3 + 11, 1, -49.4, -108.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -57.7, -41.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -66, -22.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -46.6, -51.7 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -46.6, -51.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -60.2, -54 , 0 );
setMoveKey( spep_1 -3 + 19, 1, -60.2, -54 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -46.5, -30.8 , 0 );
setMoveKey( spep_1 -3 + 21, 1, -46.5, -30.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -64, -46.1 , 0 );
setMoveKey( spep_1 -3 + 23, 1, -64, -46.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -61.2, -43 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -58.4, -39.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -58.5, -39.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -58.6, -39.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -58.8, -39.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -58.9, -39 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -59, -38.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -59.1, -38.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -59.3, -38.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -59.4, -38.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -59.5, -38 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -59.6, -37.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -59.8, -37.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -59.9, -37.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -60, -37.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -60.1, -36.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -60.3, -36.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -60.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -60.5, -36.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -60.6, -36.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -60.8, -35.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -60.9, -35.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -61, -35.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -61.1, -35.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -61.3, -35 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -61.4, -34.8 , 0 );
setMoveKey( spep_1 -4 + 78, 1, -61.4, -34.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_1 -4 + 78, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, -0.5 );
setRotateKey( spep_1 -3 + 11, 1, -0.5 );
setRotateKey( spep_1 -3 + 12, 1, -52.2 );
setRotateKey( spep_1 -3 + 14, 1, -52.1 );
setRotateKey( spep_1 -3 + 16, 1, -52 );
setRotateKey( spep_1 -3 + 18, 1, -51.9 );
setRotateKey( spep_1 -3 + 20, 1, -51.8 );
setRotateKey( spep_1 -3 + 22, 1, -51.7 );
setRotateKey( spep_1 -3 + 24, 1, -51.6 );
setRotateKey( spep_1 -3 + 26, 1, -51.5 );
setRotateKey( spep_1 -3 + 28, 1, -51.4 );
setRotateKey( spep_1 -3 + 30, 1, -51.4 );
setRotateKey( spep_1 -3 + 32, 1, -51.3 );
setRotateKey( spep_1 -3 + 34, 1, -51.2 );
setRotateKey( spep_1 -3 + 36, 1, -51.1 );
setRotateKey( spep_1 -3 + 38, 1, -51 );
setRotateKey( spep_1 -3 + 40, 1, -50.9 );
setRotateKey( spep_1 -3 + 42, 1, -50.8 );
setRotateKey( spep_1 -3 + 44, 1, -50.7 );
setRotateKey( spep_1 -3 + 46, 1, -50.7 );
setRotateKey( spep_1 -3 + 48, 1, -50.6 );
setRotateKey( spep_1 -3 + 50, 1, -50.5 );
setRotateKey( spep_1 -3 + 52, 1, -50.4 );
setRotateKey( spep_1 -3 + 54, 1, -50.3 );
setRotateKey( spep_1 -3 + 56, 1, -50.2 );
setRotateKey( spep_1 -3 + 58, 1, -50.1 );
setRotateKey( spep_1 -3 + 60, 1, -50 );
setRotateKey( spep_1 -3 + 62, 1, -49.9 );
setRotateKey( spep_1 -3 + 64, 1, -49.9 );
setRotateKey( spep_1 -3 + 66, 1, -49.8 );
setRotateKey( spep_1 -3 + 68, 1, -49.7 );
setRotateKey( spep_1 -3 + 70, 1, -49.6 );
setRotateKey( spep_1 -3 + 72, 1, -49.5 );
setRotateKey( spep_1 -3 + 74, 1, -49.4 );
setRotateKey( spep_1 -4 + 78, 1, -49.3 );

-- ** 音 ** --
--斬る
SE009 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 4, 1032, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 6, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE011, 68 );
SE012 = playSeVer2( spep_1 + 6, 1026, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 78 -4;


-------------------------------------------------
-- オオカミに変身する
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 188 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 188 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 188 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 188 -5, base_2, 255);
setEffAlphaKey( spep_2 + 188 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 188 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--剣収める
SE013 = playSeVer2( spep_2 + 0, 1150, "",spep_2 + 22, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 0, SE013, 58 );
SE014 = playSeVer2( spep_2 + 12, 1061, "",spep_2 + 32, 0, 8, -1);
setBandpassFilter( spep_2 + 12, SE014, 1730, 24000 );

--剣捨てる
SE015 = playSeVer2( spep_2 + 30, 1013, "", 0, 0, 0, -1);

--暗くなる
SE016 = playSeVer2( spep_2 + 48, 1271, "",spep_2 + 148, 0, 20, -1);
SE017 = playSeVer2( spep_2 + 56, 1240, "",spep_2 + 142, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 64, 1227, "",spep_2 + 152, 0, 32, -1);

--オオカミに変身
SE019 = playSeVer2( spep_2 + 106, 1017, "", 0, 22, 0, -1);
SE020 = playSeVer2( spep_2 + 114, 1200, "",spep_2 + 188, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 162 );
SE021 = playSeVer2( spep_2 + 114, 1255, "",spep_2 + 190, 0, 30, -1);
SE022 = playSeVer2( spep_2 + 134, 1024, "",spep_2 + 194, 18, 12, -1);
SE023 = playSeVer2( spep_2 + 158, 1027, "",spep_2 + 188, 0, 6, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 188 -4;


-------------------------------------------------
-- 敵を爪で切り込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004 手前側（敵味方兼用）
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 86 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 86 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 86 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 86 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 86 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_b 奥側（敵味方兼用）
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 86 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 86 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 86 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 86 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 86 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 10, 1, 108 );
changeAnime( spep_3 -3 + 20, 1, 106 );
changeAnime( spep_3 -3 + 30, 1, 8 );
changeAnime( spep_3 -3 + 40, 1, 106 );
changeAnime( spep_3 -3 + 48, 1, 108 );
changeAnime( spep_3 -3 + 62, 1, 106 );
changeAnime( spep_3 -3 + 72, 1, 108 );
changeAnime( spep_3 -3 + 82, 1, 106 );

setMoveKey( spep_3 -2 + 2, 1, -3.8, 0.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -22.2, -17.4 , 0 );
setMoveKey( spep_3 -3 + 5, 1, -22.2, -17.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -46.2, -36.5 , 0 );
setMoveKey( spep_3 -3 + 7, 1, -46.2, -36.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -47.3, -14.2 , 0 );
setMoveKey( spep_3 -3 + 11, 1, -47.3, -14.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -49.7, -1.2 , 0 );
setMoveKey( spep_3 -3 + 13, 1, -49.7, -1.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -29.5, 13 , 0 );
setMoveKey( spep_3 -3 + 15, 1, -29.5, 13 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -19.6, 38.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, -19.6, 38.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -29.4, 78.7 , 0 );
setMoveKey( spep_3 -3 + 19, 1, -29.4, 78.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -23.6, 32.1 , 0 );
setMoveKey( spep_3 -3 + 21, 1, -23.6, 32.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -41, -7.3 , 0 );
setMoveKey( spep_3 -3 + 23, 1, -41, -7.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -14, -4.1 , 0 );
setMoveKey( spep_3 -3 + 25, 1, -14, -4.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 3.8, -16.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 3.8, -16.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -1.4, -31.5 , 0 );
setMoveKey( spep_3 -3 + 29, 1, -1.4, -31.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 17.6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 17.6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 1.6, -60.5 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 1.6, -60.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -30.3, -71.5 , 0 );
setMoveKey( spep_3 -3 + 35, 1, -30.3, -71.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -51.5, -100.8 , 0 );
setMoveKey( spep_3 -3 + 37, 1, -51.5, -100.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -87.7, -116.1 , 0 );
setMoveKey( spep_3 -3 + 39, 1, -87.7, -116.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 15, -38 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 15, -38 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -18.1, 7.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, -18.1, 7.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -33.8, -1 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -33.8, -1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -40.7, -21.5 , 0 );
setMoveKey( spep_3 -3 + 49, 1, -40.7, -21.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -38.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 51, 1, -38.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -22.5, 25.6 , 0 );
setMoveKey( spep_3 -3 + 53, 1, -22.5, 25.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -32.7, 37.7 , 0 );
setMoveKey( spep_3 -3 + 55, 1, -32.7, 37.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -27.8, 65 , 0 );
setMoveKey( spep_3 -3 + 57, 1, -27.8, 65 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -4.6, 105.1 , 0 );
setMoveKey( spep_3 -3 + 59, 1, -4.6, 105.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -2.5, 96.1 , 0 );
setMoveKey( spep_3 -3 + 61, 1, -2.5, 96.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 5.4, 18.8 , 0 );
setMoveKey( spep_3 -3 + 63, 1, 5.4, 18.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -16.2, 5 , 0 );
setMoveKey( spep_3 -3 + 65, 1, -16.2, 5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -27.3, -29.8 , 0 );
setMoveKey( spep_3 -3 + 67, 1, -27.3, -29.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -23.4, -9 , 0 );
setMoveKey( spep_3 -3 + 69, 1, -23.4, -9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -37.2, -19.9 , 0 );
setMoveKey( spep_3 -3 + 71, 1, -37.2, -19.9 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -44.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 73, 1, -44.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -46.8, -12.4 , 0 );
setMoveKey( spep_3 -3 + 75, 1, -46.8, -12.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -41.8, 15 , 0 );
setMoveKey( spep_3 -3 + 77, 1, -41.8, 15 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -20.8, 70.9 , 0 );
setMoveKey( spep_3 -3 + 79, 1, -20.8, 70.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -20.8, 77.7 , 0 );
setMoveKey( spep_3 -3 + 81, 1, -20.8, 77.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -48.2, 3.9 , 0 );
setMoveKey( spep_3 -3 + 83, 1, -48.2, 3.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -22.1, 14.4 , 0 );
setMoveKey( spep_3 -3 + 85, 1, -22.1, 14.4 , 0 );
setMoveKey( spep_3 -4 + 86, 1, -13.7, -6.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_3 -4 + 86, 1, 2.72, 2.72 );

setRotateKey( spep_3 -2 + 2, 1, -58.8 );
setRotateKey( spep_3 -3 + 4, 1, -60.6 );
setRotateKey( spep_3 -3 + 5, 1, -60.6 );
setRotateKey( spep_3 -3 + 6, 1, -62.4 );
setRotateKey( spep_3 -3 + 7, 1, -62.4 );
setRotateKey( spep_3 -3 + 8, 1, -64.2 );
setRotateKey( spep_3 -3 + 9, 1, -64.2 );
setRotateKey( spep_3 -3 + 11, 1, -64.2 );
setRotateKey( spep_3 -3 + 12, 1, -63.6 );
setRotateKey( spep_3 -3 + 13, 1, -63.6 );
setRotateKey( spep_3 -3 + 14, 1, -61.3 );
setRotateKey( spep_3 -3 + 15, 1, -61.3 );
setRotateKey( spep_3 -3 + 16, 1, -58.9 );
setRotateKey( spep_3 -3 + 17, 1, -58.9 );
setRotateKey( spep_3 -3 + 18, 1, -56.5 );
setRotateKey( spep_3 -3 + 19, 1, -56.5 );
setRotateKey( spep_3 -3 + 20, 1, -60.8 );
setRotateKey( spep_3 -3 + 21, 1, -60.8 );
setRotateKey( spep_3 -3 + 22, 1, -55.1 );
setRotateKey( spep_3 -3 + 23, 1, -55.1 );
setRotateKey( spep_3 -3 + 24, 1, -49.5 );
setRotateKey( spep_3 -3 + 25, 1, -49.5 );
setRotateKey( spep_3 -3 + 26, 1, -43.9 );
setRotateKey( spep_3 -3 + 27, 1, -43.9 );
setRotateKey( spep_3 -3 + 28, 1, -38.3 );
setRotateKey( spep_3 -3 + 29, 1, -38.3 );
setRotateKey( spep_3 -3 + 30, 1, -38.3 );
setRotateKey( spep_3 -3 + 31, 1, -38.3 );
setRotateKey( spep_3 -3 + 32, 1, -39.7 );
setRotateKey( spep_3 -3 + 33, 1, -39.7 );
setRotateKey( spep_3 -3 + 34, 1, -41 );
setRotateKey( spep_3 -3 + 35, 1, -41 );
setRotateKey( spep_3 -3 + 36, 1, -42.4 );
setRotateKey( spep_3 -3 + 37, 1, -42.4 );
setRotateKey( spep_3 -3 + 38, 1, -43.8 );
setRotateKey( spep_3 -3 + 39, 1, -43.8 );
setRotateKey( spep_3 -3 + 40, 1, -38.3 );
setRotateKey( spep_3 -3 + 41, 1, -38.3 );
setRotateKey( spep_3 -3 + 42, 1, -40.8 );
setRotateKey( spep_3 -3 + 43, 1, -40.8 );
setRotateKey( spep_3 -3 + 44, 1, -43.2 );
setRotateKey( spep_3 -3 + 45, 1, -43.2 );
setRotateKey( spep_3 -3 + 46, 1, -45.7 );
setRotateKey( spep_3 -3 + 47, 1, -45.7 );
setRotateKey( spep_3 -3 + 48, 1, -66 );
setRotateKey( spep_3 -3 + 49, 1, -66 );
setRotateKey( spep_3 -3 + 50, 1, -63.6 );
setRotateKey( spep_3 -3 + 51, 1, -63.6 );
setRotateKey( spep_3 -3 + 52, 1, -61.3 );
setRotateKey( spep_3 -3 + 53, 1, -61.3 );
setRotateKey( spep_3 -3 + 54, 1, -58.9 );
setRotateKey( spep_3 -3 + 55, 1, -58.9 );
setRotateKey( spep_3 -3 + 56, 1, -56.5 );
setRotateKey( spep_3 -3 + 57, 1, -56.5 );
setRotateKey( spep_3 -3 + 58, 1, -54.6 );
setRotateKey( spep_3 -3 + 59, 1, -54.6 );
setRotateKey( spep_3 -3 + 60, 1, -52.6 );
setRotateKey( spep_3 -3 + 61, 1, -52.6 );
setRotateKey( spep_3 -3 + 62, 1, -57 );
setRotateKey( spep_3 -3 + 63, 1, -57 );
setRotateKey( spep_3 -3 + 64, 1, -58.8 );
setRotateKey( spep_3 -3 + 65, 1, -58.8 );
setRotateKey( spep_3 -3 + 66, 1, -60.6 );
setRotateKey( spep_3 -3 + 67, 1, -60.6 );
setRotateKey( spep_3 -3 + 68, 1, -62.4 );
setRotateKey( spep_3 -3 + 69, 1, -62.4 );
setRotateKey( spep_3 -3 + 70, 1, -64.2 );
setRotateKey( spep_3 -3 + 71, 1, -64.2 );
setRotateKey( spep_3 -3 + 72, 1, -66 );
setRotateKey( spep_3 -3 + 73, 1, -66 );
setRotateKey( spep_3 -3 + 74, 1, -63.6 );
setRotateKey( spep_3 -3 + 75, 1, -63.6 );
setRotateKey( spep_3 -3 + 76, 1, -61.3 );
setRotateKey( spep_3 -3 + 77, 1, -61.3 );
setRotateKey( spep_3 -3 + 78, 1, -58.9 );
setRotateKey( spep_3 -3 + 79, 1, -58.9 );
setRotateKey( spep_3 -3 + 80, 1, -56.5 );
setRotateKey( spep_3 -3 + 81, 1, -56.5 );
setRotateKey( spep_3 -3 + 82, 1, -60.8 );
setRotateKey( spep_3 -3 + 83, 1, -60.8 );
setRotateKey( spep_3 -3 + 84, 1, -55.1 );
setRotateKey( spep_3 -3 + 85, 1, -55.1 );
setRotateKey( spep_3 -4 + 86, 1, -49.5 );

-- ** 音 ** --
--乱れひっかき
SE024 = playSeVer2( spep_3 + 0, 1110, "",spep_3 + 24, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE024, 69 );
SE025 = playSeVer2( spep_3 + 0, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 8, 1110, "",spep_3 + 32, 0, 10, -1);
SE027 = playSeVer2( spep_3 + 8, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 16, 1110, "",spep_3 + 40, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 16, SE028, 71 );
SE029 = playSeVer2( spep_3 + 16, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 16, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );
SE030 = playSeVer2( spep_3 + 24, 1110, "",spep_3 + 48, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 24, SE030, 70 );
SE031 = playSeVer2( spep_3 + 24, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 24, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_3 + 34, 1110, "",spep_3 + 58, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 34, SE032, 68 );
SE033 = playSeVer2( spep_3 + 34, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 42, 1110, "",spep_3 + 66, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 42, SE034, 72 );
SE035 = playSeVer2( spep_3 + 42, 1032, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 520, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE036, 67 );
SE037 = playSeVer2( spep_3 + 58, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 66, 1110, "",spep_3 + 92, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 66, SE038, 62 );
SE039 = playSeVer2( spep_3 + 66, 1032, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 86 -4;


-------------------------------------------------
-- 両手で画面に向かい打ち込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 38 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 38 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 38 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 38 -5, base_4, 255);
setEffAlphaKey( spep_4 + 38 -4, base_4, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 38 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--両腕前に出す
SE040 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 36, 0, 16, -1);
SE041 = playSeVer2( spep_4 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE041, 84 );
SE042 = playSeVer2( spep_4 + 2, 1012, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_4 + 2, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 38 -4;


-------------------------------------------------
-- 敵が吹き飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006 手前側（敵味方兼用）
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 126 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 126 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 126 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 126 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- ef_006_b 奥側（敵味方兼用）
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 126 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 126 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 126 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 126 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 126 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 1.2, -89.5 , 0 );
setMoveKey( spep_5 -3 + 2, 1, -21.6, -50.1 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 10.9, -70 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -17.8, -58.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -3.7, -38.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -6, -38.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -6.6, -34.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -7.1, -30.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -7.5, -27.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.9, -24 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -8.2, -21.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -8.5, -18.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -8.7, -16.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -8.8, -13.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -8.9, -11.9 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 5.8, 4.7 , 0 );

setScaleKey( spep_5 + 0, 1, 5.63, 5.63 );
setScaleKey( spep_5 -3 + 2, 1, 3.86, 3.95 );
setScaleKey( spep_5 -3 + 4, 1, 3.12, 3.2 );
setScaleKey( spep_5 -3 + 6, 1, 2.56, 2.64 );
setScaleKey( spep_5 -3 + 8, 1, 2.1, 2.18 );
setScaleKey( spep_5 -3 + 10, 1, 1.72, 1.78 );
setScaleKey( spep_5 -3 + 12, 1, 1.4, 1.45 );
setScaleKey( spep_5 -3 + 14, 1, 1.12, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 0.88, 0.91 );
setScaleKey( spep_5 -3 + 18, 1, 0.68, 0.7 );
setScaleKey( spep_5 -3 + 20, 1, 0.51, 0.53 );
setScaleKey( spep_5 -3 + 22, 1, 0.38, 0.39 );
setScaleKey( spep_5 -3 + 24, 1, 0.27, 0.28 );
setScaleKey( spep_5 -3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 28, 1, 0.15, 0.16 );
setScaleKey( spep_5 -3 + 30, 1, 0.14, 0.14 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, 0 );

-- ** 音 ** --
--敵吹き飛ぶ
SE044 = playSeVer2( spep_5 + 0, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_5 + 6, 1121, "",spep_5 + 38, 0, 6, -1);

--激突
SE046 = playSeVer2( spep_5 + 30, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 126 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ヤムチャがバイクで走ってくる
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
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 118 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--バイクで向かってくる
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 134, 72, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 134, 72, 10, -1);
SE005 = playSeVer2( spep_0 + 0, 1008, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 134, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 41 );
SE004 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--顔カットイン
SE006 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--バイクで向かってくる
SE007 = playSeVer2( spep_0 + 36, 1116, "",spep_0 + 130, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 145 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
spep_c = spep_0 + 118 -4;


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
spep_1 = spep_c + 94;


-------------------------------------------------
-- 剣で斬る
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 手前側（敵味方兼用）
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 78 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); --ef_002_b 奥側（敵味方兼用）
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 78 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 12, 1, 0 );
setDisp( spep_1 -3 + 16, 1, 1 );
setDisp( spep_1 -4 + 78, 1, 0 );

changeAnime( spep_1 + 0, 1, 17 );
changeAnime( spep_1 -3 + 12, 1, 6 );

setMoveKey( spep_1 + 0, 1, 49.4, -108.8 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 49.4, -108.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 57.7, -41.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 66, -22.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 46.6, -51.7 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 46.6, -51.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 60.2, -54 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 60.2, -54 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 46.5, -30.8 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 46.5, -30.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 64, -46.1 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 64, -46.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 61.2, -43 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 58.4, -39.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 58.5, -39.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 58.6, -39.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 58.8, -39.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 58.9, -39 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 59, -38.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 59.1, -38.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 59.3, -38.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 59.4, -38.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 59.5, -38 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 59.6, -37.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 59.8, -37.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 59.9, -37.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 60, -37.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 60.1, -36.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 60.3, -36.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 60.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 60.5, -36.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 60.6, -36.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 60.8, -35.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 60.9, -35.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 61, -35.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 61.1, -35.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 61.3, -35 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 61.4, -34.8 , 0 );
setMoveKey( spep_1 -4 + 78, 1, 61.4, -34.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_1 -4 + 78, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, 0.5 );
setRotateKey( spep_1 -3 + 11, 1, 0.5 );
setRotateKey( spep_1 -3 + 12, 1, 52.2 );
setRotateKey( spep_1 -3 + 14, 1, 52.1 );
setRotateKey( spep_1 -3 + 16, 1, 52 );
setRotateKey( spep_1 -3 + 18, 1, 51.9 );
setRotateKey( spep_1 -3 + 20, 1, 51.8 );
setRotateKey( spep_1 -3 + 22, 1, 51.7 );
setRotateKey( spep_1 -3 + 24, 1, 51.6 );
setRotateKey( spep_1 -3 + 26, 1, 51.5 );
setRotateKey( spep_1 -3 + 28, 1, 51.4 );
setRotateKey( spep_1 -3 + 30, 1, 51.4 );
setRotateKey( spep_1 -3 + 32, 1, 51.3 );
setRotateKey( spep_1 -3 + 34, 1, 51.2 );
setRotateKey( spep_1 -3 + 36, 1, 51.1 );
setRotateKey( spep_1 -3 + 38, 1, 51 );
setRotateKey( spep_1 -3 + 40, 1, 50.9 );
setRotateKey( spep_1 -3 + 42, 1, 50.8 );
setRotateKey( spep_1 -3 + 44, 1, 50.7 );
setRotateKey( spep_1 -3 + 46, 1, 50.7 );
setRotateKey( spep_1 -3 + 48, 1, 50.6 );
setRotateKey( spep_1 -3 + 50, 1, 50.5 );
setRotateKey( spep_1 -3 + 52, 1, 50.4 );
setRotateKey( spep_1 -3 + 54, 1, 50.3 );
setRotateKey( spep_1 -3 + 56, 1, 50.2 );
setRotateKey( spep_1 -3 + 58, 1, 50.1 );
setRotateKey( spep_1 -3 + 60, 1, 50 );
setRotateKey( spep_1 -3 + 62, 1, 49.9 );
setRotateKey( spep_1 -3 + 64, 1, 49.9 );
setRotateKey( spep_1 -3 + 66, 1, 49.8 );
setRotateKey( spep_1 -3 + 68, 1, 49.7 );
setRotateKey( spep_1 -3 + 70, 1, 49.6 );
setRotateKey( spep_1 -3 + 72, 1, 49.5 );
setRotateKey( spep_1 -3 + 74, 1, 49.4 );
setRotateKey( spep_1 -4 + 78, 1, 49.3 );

-- ** 音 ** --
--斬る
SE009 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 4, 1032, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 6, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE011, 68 );
SE012 = playSeVer2( spep_1 + 6, 1026, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 78 -4;


-------------------------------------------------
-- オオカミに変身する
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 188 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 188 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 188 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 188 -5, base_2, 255);
setEffAlphaKey( spep_2 + 188 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 188 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--剣収める
SE013 = playSeVer2( spep_2 + 0, 1150, "",spep_2 + 22, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 0, SE013, 58 );
SE014 = playSeVer2( spep_2 + 12, 1061, "",spep_2 + 32, 0, 8, -1);
setBandpassFilter( spep_2 + 12, SE014, 1730, 24000 );

--剣捨てる
SE015 = playSeVer2( spep_2 + 30, 1013, "", 0, 0, 0, -1);

--暗くなる
SE016 = playSeVer2( spep_2 + 48, 1271, "",spep_2 + 148, 0, 20, -1);
SE017 = playSeVer2( spep_2 + 56, 1240, "",spep_2 + 142, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 64, 1227, "",spep_2 + 152, 0, 32, -1);

--オオカミに変身
SE019 = playSeVer2( spep_2 + 106, 1017, "", 0, 22, 0, -1);
SE020 = playSeVer2( spep_2 + 114, 1200, "",spep_2 + 188, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 162 );
SE021 = playSeVer2( spep_2 + 114, 1255, "",spep_2 + 190, 0, 30, -1);
SE022 = playSeVer2( spep_2 + 134, 1024, "",spep_2 + 194, 18, 12, -1);
SE023 = playSeVer2( spep_2 + 158, 1027, "",spep_2 + 188, 0, 6, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 188 -4;


-------------------------------------------------
-- 敵を爪で切り込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004 手前側（敵味方兼用）
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 86 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 86 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 86 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 86 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 86 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_b 奥側（敵味方兼用）
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 86 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 86 -4, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 86 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 86 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 86 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 6 );
changeAnime( spep_3 -3 + 10, 1, 8 );
changeAnime( spep_3 -3 + 20, 1, 6 );
changeAnime( spep_3 -3 + 30, 1, 108 );
changeAnime( spep_3 -3 + 40, 1, 6 );
changeAnime( spep_3 -3 + 48, 1, 8 );
changeAnime( spep_3 -3 + 62, 1, 6 );
changeAnime( spep_3 -3 + 72, 1, 8 );
changeAnime( spep_3 -3 + 82, 1, 6 );

setMoveKey( spep_3 -2 + 2, 1, 3.8, 0.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 22.2, -17.4 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 22.2, -17.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 46.2, -36.5 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 46.2, -36.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 47.3, -14.2 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 47.3, -14.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 49.7, -1.2 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 49.7, -1.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 29.5, 13 , 0 );
setMoveKey( spep_3 -3 + 15, 1, 29.5, 13 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 19.6, 38.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 19.6, 38.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 29.4, 78.7 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 29.4, 78.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 23.6, 32.1 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 23.6, 32.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 41, -7.3 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 41, -7.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 14, -4.1 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 14, -4.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -3.8, -16.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, -3.8, -16.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 1.4, -31.5 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 1.4, -31.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -17.6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 31, 1, -17.6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -1.6, -60.5 , 0 );
setMoveKey( spep_3 -3 + 33, 1, -1.6, -60.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 30.3, -71.5 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 30.3, -71.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 51.5, -100.8 , 0 );
setMoveKey( spep_3 -3 + 37, 1, 51.5, -100.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 87.7, -116.1 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 87.7, -116.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -15, -38 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -15, -38 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 18.1, 7.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 18.1, 7.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 33.8, -1 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 33.8, -1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 40.7, -21.5 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 40.7, -21.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 38.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 51, 1, 38.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 22.5, 25.6 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 22.5, 25.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 32.7, 37.7 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 32.7, 37.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 27.8, 65 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 27.8, 65 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 4.6, 105.1 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 4.6, 105.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 2.5, 96.1 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 2.5, 96.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -5.4, 18.8 , 0 );
setMoveKey( spep_3 -3 + 63, 1, -5.4, 18.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 16.2, 5 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 16.2, 5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 27.3, -29.8 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 27.3, -29.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 23.4, -9 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 23.4, -9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 37.2, -19.9 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 37.2, -19.9 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 44.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 44.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 46.8, -12.4 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 46.8, -12.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 41.8, 15 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 41.8, 15 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 20.8, 70.9 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 20.8, 70.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 20.8, 77.7 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 20.8, 77.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 48.2, 3.9 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 48.2, 3.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 22.1, 14.4 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 22.1, 14.4 , 0 );
setMoveKey( spep_3 -4 + 86, 1, 13.7, -6.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_3 -4 + 86, 1, 2.72, 2.72 );

setRotateKey( spep_3 -2 + 2, 1, 58.8 );
setRotateKey( spep_3 -3 + 4, 1, 60.6 );
setRotateKey( spep_3 -3 + 5, 1, 60.6 );
setRotateKey( spep_3 -3 + 6, 1, 62.4 );
setRotateKey( spep_3 -3 + 7, 1, 62.4 );
setRotateKey( spep_3 -3 + 8, 1, 64.2 );
setRotateKey( spep_3 -3 + 9, 1, 64.2 );
setRotateKey( spep_3 -3 + 11, 1, 64.2 );
setRotateKey( spep_3 -3 + 12, 1, 63.6 );
setRotateKey( spep_3 -3 + 13, 1, 63.6 );
setRotateKey( spep_3 -3 + 14, 1, 61.3 );
setRotateKey( spep_3 -3 + 15, 1, 61.3 );
setRotateKey( spep_3 -3 + 16, 1, 58.9 );
setRotateKey( spep_3 -3 + 17, 1, 58.9 );
setRotateKey( spep_3 -3 + 18, 1, 56.5 );
setRotateKey( spep_3 -3 + 19, 1, 56.5 );
setRotateKey( spep_3 -3 + 20, 1, 60.8 );
setRotateKey( spep_3 -3 + 21, 1, 60.8 );
setRotateKey( spep_3 -3 + 22, 1, 55.1 );
setRotateKey( spep_3 -3 + 23, 1, 55.1 );
setRotateKey( spep_3 -3 + 24, 1, 49.5 );
setRotateKey( spep_3 -3 + 25, 1, 49.5 );
setRotateKey( spep_3 -3 + 26, 1, 43.9 );
setRotateKey( spep_3 -3 + 27, 1, 43.9 );
setRotateKey( spep_3 -3 + 28, 1, 38.3 );
setRotateKey( spep_3 -3 + 29, 1, 38.3 );
setRotateKey( spep_3 -3 + 30, 1, 38.3 );
setRotateKey( spep_3 -3 + 31, 1, 38.3 );
setRotateKey( spep_3 -3 + 32, 1, 39.7 );
setRotateKey( spep_3 -3 + 33, 1, 39.7 );
setRotateKey( spep_3 -3 + 34, 1, 41 );
setRotateKey( spep_3 -3 + 35, 1, 41 );
setRotateKey( spep_3 -3 + 36, 1, 42.4 );
setRotateKey( spep_3 -3 + 37, 1, 42.4 );
setRotateKey( spep_3 -3 + 38, 1, 43.8 );
setRotateKey( spep_3 -3 + 39, 1, 43.8 );
setRotateKey( spep_3 -3 + 40, 1, 38.3 );
setRotateKey( spep_3 -3 + 41, 1, 38.3 );
setRotateKey( spep_3 -3 + 42, 1, 40.8 );
setRotateKey( spep_3 -3 + 43, 1, 40.8 );
setRotateKey( spep_3 -3 + 44, 1, 43.2 );
setRotateKey( spep_3 -3 + 45, 1, 43.2 );
setRotateKey( spep_3 -3 + 46, 1, 45.7 );
setRotateKey( spep_3 -3 + 47, 1, 45.7 );
setRotateKey( spep_3 -3 + 48, 1, 66 );
setRotateKey( spep_3 -3 + 49, 1, 66 );
setRotateKey( spep_3 -3 + 50, 1, 63.6 );
setRotateKey( spep_3 -3 + 51, 1, 63.6 );
setRotateKey( spep_3 -3 + 52, 1, 61.3 );
setRotateKey( spep_3 -3 + 53, 1, 61.3 );
setRotateKey( spep_3 -3 + 54, 1, 58.9 );
setRotateKey( spep_3 -3 + 55, 1, 58.9 );
setRotateKey( spep_3 -3 + 56, 1, 56.5 );
setRotateKey( spep_3 -3 + 57, 1, 56.5 );
setRotateKey( spep_3 -3 + 58, 1, 54.6 );
setRotateKey( spep_3 -3 + 59, 1, 54.6 );
setRotateKey( spep_3 -3 + 60, 1, 52.6 );
setRotateKey( spep_3 -3 + 61, 1, 52.6 );
setRotateKey( spep_3 -3 + 62, 1, 57 );
setRotateKey( spep_3 -3 + 63, 1, 57 );
setRotateKey( spep_3 -3 + 64, 1, 58.8 );
setRotateKey( spep_3 -3 + 65, 1, 58.8 );
setRotateKey( spep_3 -3 + 66, 1, 60.6 );
setRotateKey( spep_3 -3 + 67, 1, 60.6 );
setRotateKey( spep_3 -3 + 68, 1, 62.4 );
setRotateKey( spep_3 -3 + 69, 1, 62.4 );
setRotateKey( spep_3 -3 + 70, 1, 64.2 );
setRotateKey( spep_3 -3 + 71, 1, 64.2 );
setRotateKey( spep_3 -3 + 72, 1, 66 );
setRotateKey( spep_3 -3 + 73, 1, 66 );
setRotateKey( spep_3 -3 + 74, 1, 63.6 );
setRotateKey( spep_3 -3 + 75, 1, 63.6 );
setRotateKey( spep_3 -3 + 76, 1, 61.3 );
setRotateKey( spep_3 -3 + 77, 1, 61.3 );
setRotateKey( spep_3 -3 + 78, 1, 58.9 );
setRotateKey( spep_3 -3 + 79, 1, 58.9 );
setRotateKey( spep_3 -3 + 80, 1, 56.5 );
setRotateKey( spep_3 -3 + 81, 1, 56.5 );
setRotateKey( spep_3 -3 + 82, 1, 60.8 );
setRotateKey( spep_3 -3 + 83, 1, 60.8 );
setRotateKey( spep_3 -3 + 84, 1, 55.1 );
setRotateKey( spep_3 -3 + 85, 1, 55.1 );
setRotateKey( spep_3 -4 + 86, 1, 49.5 );

-- ** 音 ** --
--乱れひっかき
SE024 = playSeVer2( spep_3 + 0, 1110, "",spep_3 + 24, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE024, 69 );
SE025 = playSeVer2( spep_3 + 0, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 8, 1110, "",spep_3 + 32, 0, 10, -1);
SE027 = playSeVer2( spep_3 + 8, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 16, 1110, "",spep_3 + 40, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 16, SE028, 71 );
SE029 = playSeVer2( spep_3 + 16, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 16, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );
SE030 = playSeVer2( spep_3 + 24, 1110, "",spep_3 + 48, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 24, SE030, 70 );
SE031 = playSeVer2( spep_3 + 24, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 24, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_3 + 34, 1110, "",spep_3 + 58, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 34, SE032, 68 );
SE033 = playSeVer2( spep_3 + 34, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 42, 1110, "",spep_3 + 66, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 42, SE034, 72 );
SE035 = playSeVer2( spep_3 + 42, 1032, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 520, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE036, 67 );
SE037 = playSeVer2( spep_3 + 58, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 66, 1110, "",spep_3 + 92, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 66, SE038, 62 );
SE039 = playSeVer2( spep_3 + 66, 1032, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 86 -4;


-------------------------------------------------
-- 両手で画面に向かい打ち込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 38 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 38 -4, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 38 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 38 -5, base_4, 255);
setEffAlphaKey( spep_4 + 38 -4, base_4, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 38 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--両腕前に出す
SE040 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 36, 0, 16, -1);
SE041 = playSeVer2( spep_4 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE041, 84 );
SE042 = playSeVer2( spep_4 + 2, 1012, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_4 + 2, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 38 -4;


-------------------------------------------------
-- 敵が吹き飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006 手前側（敵味方兼用）
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 126 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, -1.0, 1.0);
setEffScaleKey( spep_5 + 126 -4, base_5f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 126 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 126 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- ef_006_b 奥側（敵味方兼用）
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 126 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, -1.0, 1.0);
setEffScaleKey( spep_5 + 126 -4, base_5b, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 126 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 126 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 126 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, -1.2, -89.5 , 0 );
setMoveKey( spep_5 -3 + 2, 1, 21.6, -50.1 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -10.9, -70 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 17.8, -58.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 3.7, -38.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 6, -38.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 6.6, -34.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 7.1, -30.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 7.5, -27.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 7.9, -24 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 8.2, -21.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 8.5, -18.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 8.7, -16.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 8.8, -13.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 8.9, -11.9 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -5.8, 4.7 , 0 );

setScaleKey( spep_5 + 0, 1, 5.63, 5.63 );
setScaleKey( spep_5 -3 + 2, 1, 3.86, 3.95 );
setScaleKey( spep_5 -3 + 4, 1, 3.12, 3.2 );
setScaleKey( spep_5 -3 + 6, 1, 2.56, 2.64 );
setScaleKey( spep_5 -3 + 8, 1, 2.1, 2.18 );
setScaleKey( spep_5 -3 + 10, 1, 1.72, 1.78 );
setScaleKey( spep_5 -3 + 12, 1, 1.4, 1.45 );
setScaleKey( spep_5 -3 + 14, 1, 1.12, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 0.88, 0.91 );
setScaleKey( spep_5 -3 + 18, 1, 0.68, 0.7 );
setScaleKey( spep_5 -3 + 20, 1, 0.51, 0.53 );
setScaleKey( spep_5 -3 + 22, 1, 0.38, 0.39 );
setScaleKey( spep_5 -3 + 24, 1, 0.27, 0.28 );
setScaleKey( spep_5 -3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 28, 1, 0.15, 0.16 );
setScaleKey( spep_5 -3 + 30, 1, 0.14, 0.14 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, 0 );

-- ** 音 ** --
--敵吹き飛ぶ
SE044 = playSeVer2( spep_5 + 0, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_5 + 6, 1121, "",spep_5 + 38, 0, 6, -1);

--激突
SE046 = playSeVer2( spep_5 + 30, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 126 -8); -- 終了フレーム

end
