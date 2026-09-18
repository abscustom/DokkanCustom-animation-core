--1023930:UR_孫悟空&チチ_夫婦コンビネーション
--sp_effect_b1_00183

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
SP_01 = 159054;	--構え～カットイン	ef_001	55	味方側
SP_02 = 159056;	--チチがダッシュ～蹴り～悟空瞬間移動	ef_002_front	93	味方側・手前（ef_002_frontとef_002_back、同時再生）
SP_03 = 159057;	--チチがダッシュ～蹴り～悟空瞬間移動	ef_002_back	93	味方側・後ろ（ef_002_frontとef_002_back、同時再生）
SP_04 = 159060;	--悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_front	128	味方側・手前（ef_003_frontとef_003_back、同時再生）
SP_05 = 159061;	--悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_back	128	味方側・後ろ（ef_003_frontとef_003_back、同時再生）
SP_06 = 159064;	--敵が落下～悟空の拳圧攻撃	ef_004_front	99	味方側・手前（ef_004_frontとef_004_back、同時再生）
SP_07 = 159065;	--敵が落下～悟空の拳圧攻撃	ef_004_back	99	味方側・後ろ（ef_004_frontとef_004_back、同時再生）
SP_08 = 159068;	--フィニッシュ～ガッ	ef_005_front	67	共有　反転なし（ef_005_frontとef_005_back、同時再生）
SP_09 = 159069;	--フィニッシュ～ガッ	ef_005_back	67	共有　反転なし（ef_005_frontとef_005_back、同時再生）

--エフェクト(敵)
SP_10 = 159055;	--構え～カットイン	ef_001_r	55	敵側　そのまま反転
SP_11 = 159058;	--チチがダッシュ～蹴り～悟空瞬間移動	ef_002_r_front	93	敵側・手前　そのまま反転（ef_002_r_frontとef_002_r_back、同時再生）
SP_12 = 159059;	--チチがダッシュ～蹴り～悟空瞬間移動	ef_002_r_back	93	敵側・後ろ　そのまま反転（ef_002_r_frontとef_002_r_back、同時再生）
SP_13 = 159062;	--悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_r_front	128	敵側・手前　そのまま反転（ef_003_r_frontとef_003_r_back、同時再生）
SP_14 = 159063;	--悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_r_back	128	敵側・後ろ　そのまま反転（ef_003_r_frontとef_003_r_back、同時再生）
SP_15 = 159066;	--敵が落下～悟空の拳圧攻撃	ef_004_r_front	99	敵側・手前　そのまま反転（ef_004_r_frontとef_004_r_back、同時再生）
SP_16 = 159067;	--敵が落下～悟空の拳圧攻撃	ef_004_r_back	99	敵側・後ろ　そのまま反転（ef_004_r_frontとef_004_r_back、同時再生）


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
-- 構え～カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --構え～カットイン	ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 108 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 108 -5, base1, 255);
setEffAlphaKey( spep_1 + 108 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

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
SE001 = playSeVer2( spep_1 + 16, 20, "", 0, 0, 0, -1);	--構える

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 108 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え]]

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
-- ** 音 ** --
--playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- チチがダッシュ～蹴り～悟空瞬間移動
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --チチがダッシュ～蹴り～悟空瞬間移動	ef_002_front
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 184 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 184 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 184 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --チチがダッシュ～蹴り～悟空瞬間移動	ef_002_back
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 184 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 184 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 184 -4, base2_b, 0);


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 78, 0, 30, -1);	--チチ向かっていく

SE005 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);	--チチ向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 124, 1, 0 );

changeAnime( spep_2 -3 + 42, 1, 100 );
changeAnime( spep_2 -3 + 52, 1, 106 );
changeAnime( spep_2 -3 + 94, 1, 108 );

setMoveKey( spep_2 -3 + 42, 1, 42.1, -17.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 40.4, -17.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 38.8, -16.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 37.1, -15.8 , 0 );
setMoveKey( spep_2 -3 + 51, 1, 35.4, -15.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 201.1, 112.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 98.8, -21.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 140.4, 91.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 205.8, -27.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 119, 85.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 152.2, -9.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 201.1, 111.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 121.9, 0.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 146.6, 48.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 147.1, 49.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 147.7, 49.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 147.9, 50.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 148.1, 50.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 148.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 148, 51.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 147.7, 51.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 147.5, 51.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 146.9, 51.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 146.4, 51.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 145.6, 50.8 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 200.7, 98.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 159.5, 10.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 207.6, 130.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 266.3, 11 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 183.7, 92.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 223.6, 47.1 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 298, 130.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 257.9, 90 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 278.3, 96.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 295.5, 102 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 309.6, 106.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 284.6, 102.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 255.8, 97.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 223.8, 91.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 188.7, 84.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 150.8, 76.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 150.8, 76.5 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 44, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 48, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 51, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 52, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 54, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 56, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 58, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 60, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 62, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 64, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 66, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 68, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 72, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 74, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 76, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 80, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 82, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 84, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 86, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 90, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 93, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 94, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 96, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 98, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 102, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 104, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 108, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 112, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 114, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 116, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 118, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 122, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );

setRotateKey( spep_2 -3 + 42, 1, 0 );
setRotateKey( spep_2 -3 + 51, 1, 0 );
setRotateKey( spep_2 -3 + 52, 1, -32.6 );
setRotateKey( spep_2 -3 + 93, 1, -32.6 );
setRotateKey( spep_2 -3 + 94, 1, 0 );
setRotateKey( spep_2 -3 + 124, 1, 0 );


-- ** 音 ** --
SE006 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);	--キック
setSeVolumeByWorkId( spep_2 + 44, SE006, 135 );

SE007 = playSeVer2( spep_2 + 50, 1010, "", 0, 0, 0, -1);	--キック

SE008 = playSeVer2( spep_2 + 50, 1110, "", 0, 0, 0, -1);	--キック

SE009 = playSeVer2( spep_2 + 88, 1001, "", 0, 0, 0, -1);	--蹴り飛ばし
setSeVolumeByWorkId( spep_2 + 90, SE009, 79 );

SE010 = playSeVer2( spep_2 + 90, 1009, "", 0, 0, 0, -1);	--蹴り飛ばし

SE011 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, -1);	--蹴り飛ばし

SE012 = playSeVer2( spep_2 + 122, 1182, "", 0, 0, 0, -1);	--悟空突っ込んでくる

SE013 = playSeVer2( spep_2 + 122, 9, "",spep_2 + 168, 0, 16, -1);	--悟空突っ込んでくる

SE014 = playSeVer2( spep_2 + 152, 1109, "", 0, 0, 0, -1);	--瞬間移動


-- ** 次の準備 ** --
spep_3 = spep_2 + 184 -4;

-------------------------------------------------
-- 悟空が蹴り上げ～ﾁﾁがラッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_front
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 256 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 256 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 256 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 256 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 256 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_back
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 256 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 256 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 256 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 256 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 256 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 230, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 -3 + 34, 1, 106 );
changeAnime( spep_3 -3 + 110, 1, 108 );
changeAnime( spep_3 -3 + 128, 1, 106 );
changeAnime( spep_3 -3 + 150, 1, 108 );
changeAnime( spep_3 -3 + 180, 1, 106 );
changeAnime( spep_3 -3 + 210, 1, 107 );

--setMoveKey( spep_3 -3 + 0, 1, -776.3, -964.9 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -738.7, -920.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -677.7, -844.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -596.4, -741.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -497.8, -615.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -385, -469.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -260.9, -308.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -128.7, -137.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -88.1, -102.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -55.1, -74.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -29.2, -54.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -9.8, -41.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 3.5, -34.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 11.5, -32.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 14.5, -35.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 13.2, -43.4 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 8.2, -55 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 32.3, 224.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 32.3, 486.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -17.3, 441.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 101.2, 647.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 27.6, 807.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -5.9, 786.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 48.6, 968.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -17, 1033.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 21.5, 1076.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 20, 1067 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 18.4, 1092 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 16.9, 1103.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 15.3, 1101.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 13.8, 1087 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 13.8, 1087 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -51.8, -584.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 72.1, -350.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 85, -192.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 97.9, -39.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 110.8, 107.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 123.7, 250.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 127.6, 263.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 131.5, 275.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 135.5, 287.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 139.4, 297.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 143.3, 307.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 147.3, 316 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 151.2, 324.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 155.1, 331.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 159.1, 337.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 163, 343.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 166.9, 348.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 170.8, 353 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 174.8, 356.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 178.7, 359.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 182.6, 361.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 186.6, 363.5 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 140.4, 234.7 , 0 );
setMoveKey( spep_3 -3 + 109, 1, 94.3, 105.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 127.1, 31.6 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 64.7, -44.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 102.3, 28.2 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 120.1, -59.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 77.9, 32.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 119.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 109.8, -2.5 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 112, -2.2 , 0 );
setMoveKey( spep_3 -3 + 127, 1, 114.2, -1.8 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 63.4, -20.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 103.9, -66 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 44.5, 8.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 97.1, 18.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 45.9, -51.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 90.5, -41.8 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 43.3, -3.8 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 80.3, -58 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 69.1, -36 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 70.1, -38.3 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 71.1, -40.4 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 77.8, -63.9 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 109.1, -119.1 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 115.7, -57.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 89.5, -90.9 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 142.4, -143.6 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 134.6, -99.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 113.9, -129.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 160.3, -175.7 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 141.8, -144.4 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 150.3, -168.2 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 151.4, -164.1 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 151.3, -158.7 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 150.1, -152.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 147.9, -144.5 , 0 );
setMoveKey( spep_3 -3 + 179, 1, 144.7, -135.6 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 98.2, -123.4 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 95.6, -116.3 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 93.1, -109 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 90.4, -101.6 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 87.6, -93.8 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 84.7, -85.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 81.8, -77.9 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 78.8, -69.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 75.8, -61.1 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 72.7, -52.5 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 69.5, -43.6 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 66.2, -34.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 62.9, -25.4 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 59.5, -16.1 , 0 );
setMoveKey( spep_3 -3 + 209, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 136.3, -157 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 155, -155.5 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 128.5, -134 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 160.6, -114.2 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 97.4, -164.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 131.2, -117.3 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 157.7, -188.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 117, -153.6 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 405.6, -653.7 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 547.3, -893.6 , 0 );
setMoveKey( spep_3 -4 + 230, 1, 599.3, -995.8 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 15.12, 15.12 );
setScaleKey( spep_3 -2 + 2, 1, 14.37, 14.37 );
setScaleKey( spep_3 -3 + 4, 1, 13.31, 13.31 );
setScaleKey( spep_3 -3 + 6, 1, 11.98, 11.98 );
setScaleKey( spep_3 -3 + 8, 1, 10.42, 10.42 );
setScaleKey( spep_3 -3 + 10, 1, 8.67, 8.67 );
setScaleKey( spep_3 -3 + 12, 1, 6.77, 6.77 );
setScaleKey( spep_3 -3 + 14, 1, 4.76, 4.76 );
setScaleKey( spep_3 -3 + 16, 1, 4.38, 4.38 );
setScaleKey( spep_3 -3 + 18, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 20, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 22, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 24, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 26, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 28, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 30, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 33, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 34, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 36, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 40, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 42, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 44, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 48, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 56, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 61, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 62, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 64, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 66, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 68, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 72, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 74, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 80, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 84, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 88, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 90, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 92, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 94, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 96, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 98, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 100, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 102, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 106, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 109, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 110, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 112, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 114, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 118, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 120, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 122, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 124, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 127, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 128, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 130, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 132, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 134, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 136, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 138, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 142, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 144, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 149, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 150, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 152, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 154, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 156, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 158, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 160, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 162, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 164, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 166, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 168, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 170, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 172, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 174, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 179, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 180, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 182, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 184, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 186, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 188, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 190, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 192, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 198, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 200, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 202, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 204, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 206, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 209, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 210, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 212, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 214, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 216, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 218, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 220, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 222, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 224, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 226, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 228, 1, 2.54, 2.54 );
setScaleKey( spep_3 -4 + 230, 1, 2.73, 2.73 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 33, 1, 0 );
setRotateKey( spep_3 -3 + 34, 1, -37.7 );
setRotateKey( spep_3 -3 + 109, 1, -37.7 );
setRotateKey( spep_3 -3 + 110, 1, 21 );
setRotateKey( spep_3 -3 + 127, 1, 21 );
setRotateKey( spep_3 -3 + 128, 1, -6.2 );
setRotateKey( spep_3 -3 + 149, 1, -6.2 );
setRotateKey( spep_3 -3 + 150, 1, 43.2 );
setRotateKey( spep_3 -3 + 152, 1, 44.7 );
setRotateKey( spep_3 -3 + 154, 1, 46.2 );
setRotateKey( spep_3 -3 + 156, 1, 47.5 );
setRotateKey( spep_3 -3 + 158, 1, 48.8 );
setRotateKey( spep_3 -3 + 160, 1, 49.9 );
setRotateKey( spep_3 -3 + 162, 1, 50.9 );
setRotateKey( spep_3 -3 + 164, 1, 51.8 );
setRotateKey( spep_3 -3 + 166, 1, 52.5 );
setRotateKey( spep_3 -3 + 168, 1, 53.2 );
setRotateKey( spep_3 -3 + 170, 1, 53.7 );
setRotateKey( spep_3 -3 + 172, 1, 54.1 );
setRotateKey( spep_3 -3 + 174, 1, 54.4 );
setRotateKey( spep_3 -3 + 176, 1, 54.6 );
setRotateKey( spep_3 -3 + 179, 1, 54.6 );
setRotateKey( spep_3 -3 + 180, 1, 3.2 );
setRotateKey( spep_3 -3 + 209, 1, 3.2 );
setRotateKey( spep_3 -3 + 210, 1, 59.2 );
setRotateKey( spep_3 -4 + 230, 1, 59.2 );


-- ** 音 ** --
SE015 = playSeVer2( spep_3 + 8, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE016 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);	--蹴り上げる

SE017 = playSeVer2( spep_3 + 34, 1187, "", 0, 0, 0, -1);	--蹴り上げる

SE018 = playSeVer2( spep_3 + 34, 1153, "", 0, 0, 0, -1);	--蹴り上げる

SE019 = playSeVer2( spep_3 + 64, 1207, "",spep_3 + 132, 0, 28, -1);	--飛び上がる

SE020 = playSeVer2( spep_3 + 98, 1189, "", 0, 0, 0, -1);	--空中キック

SE021 = playSeVer2( spep_3 + 106, 1110, "", 0, 0, 0, -1);	--空中キック

SE022 = playSeVer2( spep_3 + 106, 1010, "", 0, 0, 0, -1);	--空中キック

SE023 = playSeVer2( spep_3 + 128, 1009, "", 0, 0, 0, -1);	--空中キック

SE024 = playSeVer2( spep_3 + 128, 1110, "", 0, 0, 0, -1);	--空中キック

SE025 = playSeVer2( spep_3 + 150, 1000, "", 0, 0, 0, -1);	--空中キック

SE026 = playSeVer2( spep_3 + 150, 1110, "", 0, 0, 0, -1);	--空中キック

SE027 = playSeVer2( spep_3 + 202, 1004, "", 0, 0, 0, -1);	--叩き落とし

SE028 = playSeVer2( spep_3 + 208, 1120, "", 0, 0, 0, -1);	--叩き落とし

SE029 = playSeVer2( spep_3 + 234, 1183, "",spep_3 + 298, 0, 18, -1);	--敵落ちていく


-- ** 次の準備 ** --
spep_4 = spep_3 + 256 -4;

-------------------------------------------------
-- 敵が落下～悟空の拳圧攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --敵が落下～悟空の拳圧攻撃	ef_004_front
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 196 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 196 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 196 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --敵が落下～悟空の拳圧攻撃	ef_004_back
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 196 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 196 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 196 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 94, 1, 0 );
setDisp( spep_4 -3 + 144, 1, 1 );
setDisp( spep_4 -3 + 176, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 28, 1, 106 );
changeAnime( spep_4 -3 + 144, 1, 6 );
changeAnime( spep_4 -3 + 154, 1, 8 );
changeAnime( spep_4 -3 + 168, 1, 6 );

--setMoveKey( spep_4 -3 + 0, 1, 9.4, 626.9 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 9.4, 417.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 9.4, 207.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 9.4, -2.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 9.4, -15.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 9.4, -28.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 9.4, -42.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 9.4, -55.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 9.4, -68.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 9.4, -82.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 9.4, 542.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 9.8, 443.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 11.2, 147.5 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 13.4, -386.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 5.8, -122.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -34.2, -170.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -30.2, -102.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -10.2, -162.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 3.7, -102 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -34.3, -150.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -16.4, -110.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -18.5, -102.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -20.6, -95.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -22.6, -88.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -27.6, -75.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -32.5, -63.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -37.4, -50.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -42.4, -38.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -47.3, -27.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -52.2, -15.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -57.1, -3.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -62.1, 7.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -67, 18.4 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -71.9, 29.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -76.9, 40.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -81.8, 50.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -86.7, 61.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -91.7, 71.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -96.6, 81.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -101.4, 91.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -106.4, 101.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -111.3, 111.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -116.3, 121.3 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -116.3, 121.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -116.3, 121.8 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -116.3, 121.9 , 0 );
setMoveKey( spep_4 -4 + 93, 1, -116.3, 122 , 0 );
setMoveKey( spep_4 -3 + 144, 1, -137.8, -118.6 , 0 );
setMoveKey( spep_4 -3 + 146, 1, -118.7, -108.3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, -99.7, -89.2 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -80.6, -71.5 , 0 );
setMoveKey( spep_4 -3 + 153, 1, -61.5, -55.1 , 0 );
setMoveKey( spep_4 -3 + 154, 1, -136.1, -62.2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, -67.7, -86.4 , 0 );
setMoveKey( spep_4 -3 + 158, 1, -87.2, -54.6 , 0 );
setMoveKey( spep_4 -3 + 160, 1, -118.8, -74.8 , 0 );
setMoveKey( spep_4 -3 + 162, 1, -70.3, -31 , 0 );
setMoveKey( spep_4 -3 + 164, 1, -80.4, -57.1 , 0 );
setMoveKey( spep_4 -3 + 167, 1, -79.8, -53.4 , 0 );
setMoveKey( spep_4 -3 + 168, 1, -168.8, -39.4 , 0 );
setMoveKey( spep_4 -3 + 170, 1, -293.4, -1.8 , 0 );
setMoveKey( spep_4 -3 + 172, 1, -366, 20.5 , 0 );
setMoveKey( spep_4 -3 + 174, 1, -387.7, 28 , 0 );
setMoveKey( spep_4 -3 + 176, 1, -387.7, 28 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 20, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 22, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 27, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 38, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 50, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 58, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 60, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 64, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 66, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 70, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 72, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 74, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 76, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 78, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 80, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 84, 1, 0.96, 0.96 );
setScaleKey( spep_4 -4 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 146, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 150, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 153, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 154, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 156, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 158, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 164, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 167, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 168, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 170, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 172, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 174, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 176, 1, 0.43, 0.43 );

setRotateKey( spep_4 -3 + 0, 1, 60.7 );
setRotateKey( spep_4 -3 + 27, 1, 60.7 );
setRotateKey( spep_4 -3 + 28, 1, 3.9 );
setRotateKey( spep_4 -4 + 93, 1, 3.9 );
setRotateKey( spep_4 -3 + 144, 1, 16 );
setRotateKey( spep_4 -3 + 153, 1, 16 );
setRotateKey( spep_4 -3 + 154, 1, 0 );
setRotateKey( spep_4 -3 + 167, 1, 0 );
setRotateKey( spep_4 -3 + 168, 1, -9 );
setRotateKey( spep_4 -3 + 176, 1, -9 );


-- ** 音 ** --
SE030 = playSeVer2( spep_4 + 22, 1011, "", 0, 0, 0, -1);	--地面落ちる

SE031 = playSeVer2( spep_4 + 42, 1245, "", 0, 0, 0, -1);	--悟空瞬間移動
setSeVolumeByWorkId( spep_4 + 42, SE031, 67 );

SE032 = playSeVer2( spep_4 + 44, 1109, "", 0, 0, 0, -1);	--悟空瞬間移動

SE033 = playSeVer2( spep_4 + 46, 1072, "", 0, 0, 0, -1);	--画面遷移

SE034 = playSeVer2( spep_4 + 78, 1116, "",spep_4 + 122, 0, 22, -1);	--画面遷移

SE035 = playSeVer2( spep_4 + 108, 1259, "",spep_4 + 174, 0, 30, -1);	--パンチ前に出す

SE036 = playSeVer2( spep_4 + 118, 1003, "", 0, 0, 0, -1);	--パンチ前に出す

SE037 = playSeVer2( spep_4 + 118, 1027, "", 0, 0, 0, -1);	--パンチ前に出す

SE038 = playSeVer2( spep_4 + 118, 1182, "", 0, 18, 0, -1);	--パンチ前に出す

SE039 = playSeVer2( spep_4 + 150, 1009, "", 0, 0, 0, -1);	--パンチ

SE040 = playSeVer2( spep_4 + 152, 1187, "", 0, 0, 0, -1);	--パンチ

SE041 = playSeVer2( spep_4 + 152, 1359, "", 0, 0, 0, -1);	--パンチ


-- ** 次の準備 ** --
spep_5 = spep_4 + 196 -4;

-------------------------------------------------
-- フィニッシュ～ガッ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0); --フィニッシュ～ガッ	ef_005_front
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 132 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 132 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 132 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 132 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 132 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --フィニッシュ～ガッ	ef_005_back
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 132 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 132 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 132 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 132 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 132 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1);
setDisp( spep_5 -4 + 132, 1, 0);

changeAnime( spep_5 + 0, 1, 107);  --ダメージ 手前

-- setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 1, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 3, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 5, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 7, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 9, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 11, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 12, 1, 130, -142.1 , 0);
setMoveKey( spep_5 -4 + 132, 1, 130, -142.1 , 0);

setScaleKey( spep_5 + 0, 1, 0.35, 0.35);
setScaleKey( spep_5 + 1, 1, 0.55, 0.55);
setScaleKey( spep_5 + 2, 1, 0.55, 0.55);
setScaleKey( spep_5 + 3, 1, 0.75, 0.75);
setScaleKey( spep_5 + 4, 1, 0.75, 0.75);
setScaleKey( spep_5 + 5, 1, 1.0, 1.0);
setScaleKey( spep_5 + 6, 1, 1.0, 1.0);
setScaleKey( spep_5 + 7, 1, 1.4, 1.4);
setScaleKey( spep_5 + 8, 1, 1.4, 1.4);
setScaleKey( spep_5 + 9, 1, 1.68, 1.68);
setScaleKey( spep_5 + 10, 1, 1.68, 1.68);
setScaleKey( spep_5 + 11, 1, 1.79, 1.79);
setScaleKey( spep_5 + 12, 1, 1.79, 1.79);
setScaleKey( spep_5 + 13, 1, 1.68, 1.68);
setScaleKey( spep_5 + 14, 1, 1.68, 1.68);
setScaleKey( spep_5 + 15, 1, 1.79, 1.79);
setScaleKey( spep_5 + 16, 1, 1.79, 1.79);
setScaleKey( spep_5 + 17, 1, 1.68, 1.68);
setScaleKey( spep_5 + 18, 1, 1.68, 1.68);
setScaleKey( spep_5 + 19, 1, 1.79, 1.79);
setScaleKey( spep_5 + 20, 1, 1.79, 1.79);
setScaleKey( spep_5 + 21, 1, 1.68, 1.68);
setScaleKey( spep_5 + 22, 1, 1.68, 1.68);
setScaleKey( spep_5 + 23, 1, 1.79, 1.79);
setScaleKey( spep_5 + 24, 1, 1.79, 1.79);
setScaleKey( spep_5 -4 + 132, 1, 1.79, 1.79);

setRotateKey( spep_5 + 0, 1, 30);
setRotateKey( spep_5 + 1, 1, 65);
setRotateKey( spep_5 + 2, 1, 65);
setRotateKey( spep_5 + 3, 1, 110);
setRotateKey( spep_5 + 4, 1, 110);
setRotateKey( spep_5 + 5, 1, 165);
setRotateKey( spep_5 + 6, 1, 165);
setRotateKey( spep_5 + 7, 1, 230);
setRotateKey( spep_5 + 8, 1, 230);
setRotateKey( spep_5 + 9, 1, 305);
setRotateKey( spep_5 + 10, 1, 305);
setRotateKey( spep_5 + 11, 1, 390);
setRotateKey( spep_5 -4 + 132, 1, 390);


-- ** 音 ** --
SE042 = playSeVer2( spep_5 + 12, 1054, "", 0, 0, 0, -1);	--ガッ
SE043 = playSeVer2( spep_5 + 12, 1025, "", 0, 0, 0, -1);	--ガッ


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 12);
endPhase( spep_5 + 132 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------

spep_1 = 0;


-------------------------------------------------
-- 構え～カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_10, 0x80, -1, 0, 0, 0); --構え～カットイン	ef_001_r
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 108 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 108 -5, base1, 255);
setEffAlphaKey( spep_1 + 108 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

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
SE001 = playSeVer2( spep_1 + 16, 20, "", 0, 0, 0, -1);	--構える

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 108 -4;

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
-- チチがダッシュ～蹴り～悟空瞬間移動
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_11, 0x100, -1, 0, 0, 0); --チチがダッシュ～蹴り～悟空瞬間移動	ef_002_r_front
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 184 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 184 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 184 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_12, 0x80, -1, 0, 0, 0); --チチがダッシュ～蹴り～悟空瞬間移動	ef_002_r_back
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 184 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 184 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 184 -4, base2_b, 0);


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 78, 0, 30, -1);	--チチ向かっていく

SE005 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);	--チチ向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 124, 1, 0 );

changeAnime( spep_2 -3 + 42, 1, 100 );
changeAnime( spep_2 -3 + 52, 1, 106 );
changeAnime( spep_2 -3 + 94, 1, 108 );

setMoveKey( spep_2 -3 + 42, 1, 42.1, -17.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 40.4, -17.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 38.8, -16.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 37.1, -15.8 , 0 );
setMoveKey( spep_2 -3 + 51, 1, 35.4, -15.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 201.1, 112.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 98.8, -21.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 140.4, 91.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 205.8, -27.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 119, 85.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 152.2, -9.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 201.1, 111.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 121.9, 0.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 146.6, 48.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 147.1, 49.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 147.7, 49.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 147.9, 50.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 148.1, 50.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 148.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 148, 51.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 147.7, 51.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 147.5, 51.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 146.9, 51.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 146.4, 51.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 145.6, 50.8 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 200.7, 98.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 159.5, 10.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 207.6, 130.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 266.3, 11 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 183.7, 92.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 223.6, 47.1 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 298, 130.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 257.9, 90 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 278.3, 96.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 295.5, 102 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 309.6, 106.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 284.6, 102.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 255.8, 97.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 223.8, 91.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 188.7, 84.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 150.8, 76.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 150.8, 76.5 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 44, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 48, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 51, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 52, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 54, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 56, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 58, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 60, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 62, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 64, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 66, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 68, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 72, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 74, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 76, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 80, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 82, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 84, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 86, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 90, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 93, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 94, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 96, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 98, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 102, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 104, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 108, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 112, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 114, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 116, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 118, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 122, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );

setRotateKey( spep_2 -3 + 42, 1, 0 );
setRotateKey( spep_2 -3 + 51, 1, 0 );
setRotateKey( spep_2 -3 + 52, 1, -32.6 );
setRotateKey( spep_2 -3 + 93, 1, -32.6 );
setRotateKey( spep_2 -3 + 94, 1, 0 );
setRotateKey( spep_2 -3 + 124, 1, 0 );


-- ** 音 ** --
SE006 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);	--キック
setSeVolumeByWorkId( spep_2 + 44, SE006, 135 );

SE007 = playSeVer2( spep_2 + 50, 1010, "", 0, 0, 0, -1);	--キック

SE008 = playSeVer2( spep_2 + 50, 1110, "", 0, 0, 0, -1);	--キック

SE009 = playSeVer2( spep_2 + 88, 1001, "", 0, 0, 0, -1);	--蹴り飛ばし
setSeVolumeByWorkId( spep_2 + 90, SE009, 79 );

SE010 = playSeVer2( spep_2 + 90, 1009, "", 0, 0, 0, -1);	--蹴り飛ばし

SE011 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, -1);	--蹴り飛ばし

SE012 = playSeVer2( spep_2 + 122, 1182, "", 0, 0, 0, -1);	--悟空突っ込んでくる

SE013 = playSeVer2( spep_2 + 122, 9, "",spep_2 + 168, 0, 16, -1);	--悟空突っ込んでくる

SE014 = playSeVer2( spep_2 + 152, 1109, "", 0, 0, 0, -1);	--瞬間移動


-- ** 次の準備 ** --
spep_3 = spep_2 + 184 -4;

-------------------------------------------------
-- 悟空が蹴り上げ～ﾁﾁがラッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_13, 0x100, -1, 0, 0, 0); --悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_r_front
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 256 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 256 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 256 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 256 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 256 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_14, 0x80, -1, 0, 0, 0); --悟空が蹴り上げ～ﾁﾁがラッシュ	ef_003_r_back
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 256 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 256 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 256 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 256 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 256 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 230, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 -3 + 34, 1, 106 );
changeAnime( spep_3 -3 + 110, 1, 108 );
changeAnime( spep_3 -3 + 128, 1, 106 );
changeAnime( spep_3 -3 + 150, 1, 108 );
changeAnime( spep_3 -3 + 180, 1, 106 );
changeAnime( spep_3 -3 + 210, 1, 107 );

--setMoveKey( spep_3 -3 + 0, 1, -776.3, -964.9 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -738.7, -920.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -677.7, -844.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -596.4, -741.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -497.8, -615.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -385, -469.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -260.9, -308.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -128.7, -137.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -88.1, -102.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -55.1, -74.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -29.2, -54.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -9.8, -41.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 3.5, -34.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 11.5, -32.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 14.5, -35.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 13.2, -43.4 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 8.2, -55 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 32.3, 224.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 32.3, 486.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -17.3, 441.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 101.2, 647.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 27.6, 807.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -5.9, 786.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 48.6, 968.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -17, 1033.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 21.5, 1076.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 20, 1067 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 18.4, 1092 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 16.9, 1103.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 15.3, 1101.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 13.8, 1087 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 13.8, 1087 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -51.8, -584.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 72.1, -350.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 85, -192.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 97.9, -39.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 110.8, 107.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 123.7, 250.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 127.6, 263.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 131.5, 275.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 135.5, 287.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 139.4, 297.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 143.3, 307.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 147.3, 316 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 151.2, 324.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 155.1, 331.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 159.1, 337.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 163, 343.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 166.9, 348.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 170.8, 353 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 174.8, 356.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 178.7, 359.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 182.6, 361.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 186.6, 363.5 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 140.4, 234.7 , 0 );
setMoveKey( spep_3 -3 + 109, 1, 94.3, 105.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 127.1, 31.6 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 64.7, -44.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 102.3, 28.2 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 120.1, -59.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 77.9, 32.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 119.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 109.8, -2.5 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 112, -2.2 , 0 );
setMoveKey( spep_3 -3 + 127, 1, 114.2, -1.8 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 63.4, -20.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 103.9, -66 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 44.5, 8.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 97.1, 18.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 45.9, -51.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 90.5, -41.8 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 43.3, -3.8 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 80.3, -58 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 69.1, -36 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 70.1, -38.3 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 71.1, -40.4 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 77.8, -63.9 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 109.1, -119.1 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 115.7, -57.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 89.5, -90.9 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 142.4, -143.6 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 134.6, -99.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 113.9, -129.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 160.3, -175.7 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 141.8, -144.4 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 150.3, -168.2 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 151.4, -164.1 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 151.3, -158.7 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 150.1, -152.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 147.9, -144.5 , 0 );
setMoveKey( spep_3 -3 + 179, 1, 144.7, -135.6 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 98.2, -123.4 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 95.6, -116.3 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 93.1, -109 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 90.4, -101.6 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 87.6, -93.8 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 84.7, -85.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 81.8, -77.9 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 78.8, -69.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 75.8, -61.1 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 72.7, -52.5 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 69.5, -43.6 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 66.2, -34.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 62.9, -25.4 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 59.5, -16.1 , 0 );
setMoveKey( spep_3 -3 + 209, 1, 56.1, -6.6 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 136.3, -157 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 155, -155.5 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 128.5, -134 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 160.6, -114.2 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 97.4, -164.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 131.2, -117.3 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 157.7, -188.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 117, -153.6 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 405.6, -653.7 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 547.3, -893.6 , 0 );
setMoveKey( spep_3 -4 + 230, 1, 599.3, -995.8 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 15.12, 15.12 );
setScaleKey( spep_3 -2 + 2, 1, 14.37, 14.37 );
setScaleKey( spep_3 -3 + 4, 1, 13.31, 13.31 );
setScaleKey( spep_3 -3 + 6, 1, 11.98, 11.98 );
setScaleKey( spep_3 -3 + 8, 1, 10.42, 10.42 );
setScaleKey( spep_3 -3 + 10, 1, 8.67, 8.67 );
setScaleKey( spep_3 -3 + 12, 1, 6.77, 6.77 );
setScaleKey( spep_3 -3 + 14, 1, 4.76, 4.76 );
setScaleKey( spep_3 -3 + 16, 1, 4.38, 4.38 );
setScaleKey( spep_3 -3 + 18, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 20, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 22, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 24, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 26, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 28, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 30, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 33, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 34, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 36, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 40, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 42, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 44, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 48, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 56, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 61, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 62, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 64, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 66, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 68, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 72, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 74, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 80, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 84, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 88, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 90, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 92, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 94, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 96, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 98, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 100, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 102, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 106, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 109, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 110, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 112, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 114, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 118, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 120, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 122, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 124, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 127, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 128, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 130, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 132, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 134, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 136, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 138, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 142, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 144, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 149, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 150, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 152, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 154, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 156, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 158, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 160, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 162, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 164, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 166, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 168, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 170, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 172, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 174, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 179, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 180, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 182, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 184, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 186, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 188, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 190, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 192, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 198, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 200, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 202, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 204, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 206, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 209, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 210, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 212, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 214, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 216, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 218, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 220, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 222, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 224, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 226, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 228, 1, 2.54, 2.54 );
setScaleKey( spep_3 -4 + 230, 1, 2.73, 2.73 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 33, 1, 0 );
setRotateKey( spep_3 -3 + 34, 1, -37.7 );
setRotateKey( spep_3 -3 + 109, 1, -37.7 );
setRotateKey( spep_3 -3 + 110, 1, 21 );
setRotateKey( spep_3 -3 + 127, 1, 21 );
setRotateKey( spep_3 -3 + 128, 1, -6.2 );
setRotateKey( spep_3 -3 + 149, 1, -6.2 );
setRotateKey( spep_3 -3 + 150, 1, 43.2 );
setRotateKey( spep_3 -3 + 152, 1, 44.7 );
setRotateKey( spep_3 -3 + 154, 1, 46.2 );
setRotateKey( spep_3 -3 + 156, 1, 47.5 );
setRotateKey( spep_3 -3 + 158, 1, 48.8 );
setRotateKey( spep_3 -3 + 160, 1, 49.9 );
setRotateKey( spep_3 -3 + 162, 1, 50.9 );
setRotateKey( spep_3 -3 + 164, 1, 51.8 );
setRotateKey( spep_3 -3 + 166, 1, 52.5 );
setRotateKey( spep_3 -3 + 168, 1, 53.2 );
setRotateKey( spep_3 -3 + 170, 1, 53.7 );
setRotateKey( spep_3 -3 + 172, 1, 54.1 );
setRotateKey( spep_3 -3 + 174, 1, 54.4 );
setRotateKey( spep_3 -3 + 176, 1, 54.6 );
setRotateKey( spep_3 -3 + 179, 1, 54.6 );
setRotateKey( spep_3 -3 + 180, 1, 3.2 );
setRotateKey( spep_3 -3 + 209, 1, 3.2 );
setRotateKey( spep_3 -3 + 210, 1, 59.2 );
setRotateKey( spep_3 -4 + 230, 1, 59.2 );


-- ** 音 ** --
SE015 = playSeVer2( spep_3 + 8, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE016 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);	--蹴り上げる

SE017 = playSeVer2( spep_3 + 34, 1187, "", 0, 0, 0, -1);	--蹴り上げる

SE018 = playSeVer2( spep_3 + 34, 1153, "", 0, 0, 0, -1);	--蹴り上げる

SE019 = playSeVer2( spep_3 + 64, 1207, "",spep_3 + 132, 0, 28, -1);	--飛び上がる

SE020 = playSeVer2( spep_3 + 98, 1189, "", 0, 0, 0, -1);	--空中キック

SE021 = playSeVer2( spep_3 + 106, 1110, "", 0, 0, 0, -1);	--空中キック

SE022 = playSeVer2( spep_3 + 106, 1010, "", 0, 0, 0, -1);	--空中キック

SE023 = playSeVer2( spep_3 + 128, 1009, "", 0, 0, 0, -1);	--空中キック

SE024 = playSeVer2( spep_3 + 128, 1110, "", 0, 0, 0, -1);	--空中キック

SE025 = playSeVer2( spep_3 + 150, 1000, "", 0, 0, 0, -1);	--空中キック

SE026 = playSeVer2( spep_3 + 150, 1110, "", 0, 0, 0, -1);	--空中キック

SE027 = playSeVer2( spep_3 + 202, 1004, "", 0, 0, 0, -1);	--叩き落とし

SE028 = playSeVer2( spep_3 + 208, 1120, "", 0, 0, 0, -1);	--叩き落とし

SE029 = playSeVer2( spep_3 + 234, 1183, "",spep_3 + 298, 0, 18, -1);	--敵落ちていく


-- ** 次の準備 ** --
spep_4 = spep_3 + 256 -4;

-------------------------------------------------
-- 敵が落下～悟空の拳圧攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_15, 0x100, -1, 0, 0, 0); --敵が落下～悟空の拳圧攻撃	ef_004_r_front
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 196 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 196 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 196 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_16, 0x80, -1, 0, 0, 0); --敵が落下～悟空の拳圧攻撃	ef_004_r_back
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 196 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 196 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 196 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 94, 1, 0 );
setDisp( spep_4 -3 + 144, 1, 1 );
setDisp( spep_4 -3 + 176, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 28, 1, 106 );
changeAnime( spep_4 -3 + 144, 1, 6 );
changeAnime( spep_4 -3 + 154, 1, 8 );
changeAnime( spep_4 -3 + 168, 1, 6 );

--setMoveKey( spep_4 -3 + 0, 1, 9.4, 626.9 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 9.4, 417.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 9.4, 207.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 9.4, -2.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 9.4, -15.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 9.4, -28.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 9.4, -42.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 9.4, -55.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 9.4, -68.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 9.4, -82.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 9.4, 542.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 9.8, 443.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 11.2, 147.5 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 13.4, -386.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 5.8, -122.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -34.2, -170.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -30.2, -102.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -10.2, -162.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 3.7, -102 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -34.3, -150.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -16.4, -110.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -18.5, -102.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -20.6, -95.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -22.6, -88.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -27.6, -75.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -32.5, -63.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -37.4, -50.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -42.4, -38.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -47.3, -27.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -52.2, -15.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -57.1, -3.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -62.1, 7.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -67, 18.4 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -71.9, 29.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -76.9, 40.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -81.8, 50.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -86.7, 61.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -91.7, 71.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -96.6, 81.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -101.4, 91.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -106.4, 101.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -111.3, 111.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -116.3, 121.3 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -116.3, 121.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -116.3, 121.8 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -116.3, 121.9 , 0 );
setMoveKey( spep_4 -4 + 93, 1, -116.3, 122 , 0 );
setMoveKey( spep_4 -3 + 144, 1, -137.8, -118.6 , 0 );
setMoveKey( spep_4 -3 + 146, 1, -118.7, -108.3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, -99.7, -89.2 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -80.6, -71.5 , 0 );
setMoveKey( spep_4 -3 + 153, 1, -61.5, -55.1 , 0 );
setMoveKey( spep_4 -3 + 154, 1, -136.1, -62.2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, -67.7, -86.4 , 0 );
setMoveKey( spep_4 -3 + 158, 1, -87.2, -54.6 , 0 );
setMoveKey( spep_4 -3 + 160, 1, -118.8, -74.8 , 0 );
setMoveKey( spep_4 -3 + 162, 1, -70.3, -31 , 0 );
setMoveKey( spep_4 -3 + 164, 1, -80.4, -57.1 , 0 );
setMoveKey( spep_4 -3 + 167, 1, -79.8, -53.4 , 0 );
setMoveKey( spep_4 -3 + 168, 1, -168.8, -39.4 , 0 );
setMoveKey( spep_4 -3 + 170, 1, -293.4, -1.8 , 0 );
setMoveKey( spep_4 -3 + 172, 1, -366, 20.5 , 0 );
setMoveKey( spep_4 -3 + 174, 1, -387.7, 28 , 0 );
setMoveKey( spep_4 -3 + 176, 1, -387.7, 28 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 20, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 22, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 27, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 38, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 50, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 58, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 60, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 64, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 66, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 70, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 72, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 74, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 76, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 78, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 80, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 84, 1, 0.96, 0.96 );
setScaleKey( spep_4 -4 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 146, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 150, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 153, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 154, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 156, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 158, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 164, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 167, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 168, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 170, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 172, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 174, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 176, 1, 0.43, 0.43 );

setRotateKey( spep_4 -3 + 0, 1, 60.7 );
setRotateKey( spep_4 -3 + 27, 1, 60.7 );
setRotateKey( spep_4 -3 + 28, 1, 3.9 );
setRotateKey( spep_4 -4 + 93, 1, 3.9 );
setRotateKey( spep_4 -3 + 144, 1, 16 );
setRotateKey( spep_4 -3 + 153, 1, 16 );
setRotateKey( spep_4 -3 + 154, 1, 0 );
setRotateKey( spep_4 -3 + 167, 1, 0 );
setRotateKey( spep_4 -3 + 168, 1, -9 );
setRotateKey( spep_4 -3 + 176, 1, -9 );


-- ** 音 ** --
SE030 = playSeVer2( spep_4 + 22, 1011, "", 0, 0, 0, -1);	--地面落ちる

SE031 = playSeVer2( spep_4 + 42, 1245, "", 0, 0, 0, -1);	--悟空瞬間移動
setSeVolumeByWorkId( spep_4 + 42, SE031, 67 );

SE032 = playSeVer2( spep_4 + 44, 1109, "", 0, 0, 0, -1);	--悟空瞬間移動

SE033 = playSeVer2( spep_4 + 46, 1072, "", 0, 0, 0, -1);	--画面遷移

SE034 = playSeVer2( spep_4 + 78, 1116, "",spep_4 + 122, 0, 22, -1);	--画面遷移

SE035 = playSeVer2( spep_4 + 108, 1259, "",spep_4 + 174, 0, 30, -1);	--パンチ前に出す

SE036 = playSeVer2( spep_4 + 118, 1003, "", 0, 0, 0, -1);	--パンチ前に出す

SE037 = playSeVer2( spep_4 + 118, 1027, "", 0, 0, 0, -1);	--パンチ前に出す

SE038 = playSeVer2( spep_4 + 118, 1182, "", 0, 18, 0, -1);	--パンチ前に出す

SE039 = playSeVer2( spep_4 + 150, 1009, "", 0, 0, 0, -1);	--パンチ

SE040 = playSeVer2( spep_4 + 152, 1187, "", 0, 0, 0, -1);	--パンチ

SE041 = playSeVer2( spep_4 + 152, 1359, "", 0, 0, 0, -1);	--パンチ


-- ** 次の準備 ** --
spep_5 = spep_4 + 196 -4;

-------------------------------------------------
-- フィニッシュ～ガッ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0); --フィニッシュ～ガッ	ef_005_front
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 132 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, -1.0, 1.0);
setEffScaleKey( spep_5 + 132 -4, base5_f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 132 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 132 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 132 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --フィニッシュ～ガッ	ef_005_back
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 132 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, -1.0, 1.0);
setEffScaleKey( spep_5 + 132 -4, base5_b, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 132 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 132 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 132 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1);
setDisp( spep_5 -4 + 132, 1, 0);

changeAnime( spep_5 + 0, 1, 107);  --ダメージ 手前

-- setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 1, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 3, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 5, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 7, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 9, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 11, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 12, 1, 130, -142.1 , 0);
setMoveKey( spep_5 -4 + 132, 1, 130, -142.1 , 0);

setScaleKey( spep_5 + 0, 1, 0.35, 0.35);
setScaleKey( spep_5 + 1, 1, 0.55, 0.55);
setScaleKey( spep_5 + 2, 1, 0.55, 0.55);
setScaleKey( spep_5 + 3, 1, 0.75, 0.75);
setScaleKey( spep_5 + 4, 1, 0.75, 0.75);
setScaleKey( spep_5 + 5, 1, 1.0, 1.0);
setScaleKey( spep_5 + 6, 1, 1.0, 1.0);
setScaleKey( spep_5 + 7, 1, 1.4, 1.4);
setScaleKey( spep_5 + 8, 1, 1.4, 1.4);
setScaleKey( spep_5 + 9, 1, 1.68, 1.68);
setScaleKey( spep_5 + 10, 1, 1.68, 1.68);
setScaleKey( spep_5 + 11, 1, 1.79, 1.79);
setScaleKey( spep_5 + 12, 1, 1.79, 1.79);
setScaleKey( spep_5 + 13, 1, 1.68, 1.68);
setScaleKey( spep_5 + 14, 1, 1.68, 1.68);
setScaleKey( spep_5 + 15, 1, 1.79, 1.79);
setScaleKey( spep_5 + 16, 1, 1.79, 1.79);
setScaleKey( spep_5 + 17, 1, 1.68, 1.68);
setScaleKey( spep_5 + 18, 1, 1.68, 1.68);
setScaleKey( spep_5 + 19, 1, 1.79, 1.79);
setScaleKey( spep_5 + 20, 1, 1.79, 1.79);
setScaleKey( spep_5 + 21, 1, 1.68, 1.68);
setScaleKey( spep_5 + 22, 1, 1.68, 1.68);
setScaleKey( spep_5 + 23, 1, 1.79, 1.79);
setScaleKey( spep_5 + 24, 1, 1.79, 1.79);
setScaleKey( spep_5 -4 + 132, 1, 1.79, 1.79);

setRotateKey( spep_5 + 0, 1, 30);
setRotateKey( spep_5 + 1, 1, 65);
setRotateKey( spep_5 + 2, 1, 65);
setRotateKey( spep_5 + 3, 1, 110);
setRotateKey( spep_5 + 4, 1, 110);
setRotateKey( spep_5 + 5, 1, 165);
setRotateKey( spep_5 + 6, 1, 165);
setRotateKey( spep_5 + 7, 1, 230);
setRotateKey( spep_5 + 8, 1, 230);
setRotateKey( spep_5 + 9, 1, 305);
setRotateKey( spep_5 + 10, 1, 305);
setRotateKey( spep_5 + 11, 1, 390);
setRotateKey( spep_5 -4 + 132, 1, 390);


-- ** 音 ** --
SE042 = playSeVer2( spep_5 + 12, 1054, "", 0, 0, 0, -1);	--ガッ
SE043 = playSeVer2( spep_5 + 12, 1025, "", 0, 0, 0, -1);	--ガッ


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 12);
endPhase( spep_5 + 132 -8);


end
