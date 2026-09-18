--1026330：UR_ミスター・サタン_サタンミラクルスペシャルウルトラスーパーメガトンパンチ
--sp_effect_b1_00240
--sp2521

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
SP_01 = 161537;	-- セリフカットイン ef_001
SP_02 = 161538;	-- 前方ダッシュ ef_002
SP_03 = 161539;	-- イメージ背景殴り：敵より前 ef_003
SP_03b = 161540;	-- イメージ背景殴り：敵より後ろ ef_004
SP_04 = 161541;	-- し〜ん：敵より前 ef_005
SP_04b = 161542;	-- し〜ん：敵より後ろ ef_006
SP_05 = 161543;	-- ラスト敵吹っ飛び ef_007

--エフェクト(てき)
SP_02r = 161544;	-- 前方ダッシュ シーン自体の反転想定は無しでラストのコマ絵のみ反転コマにしています ef_002r 
SP_03r = 161545;	-- イメージ背景殴り：敵より前 ef_003r
SP_03br = 161546;	-- イメージ背景殴り：敵より後ろ ef_004_r
SP_04r = 161547;	-- し〜ん：敵より前 ef_005_r
SP_05r = 161548;	-- ラスト敵吹っ飛び ef_007_r

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
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 184, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 184, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 184, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 184, base_0, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 176, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 96;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 110, 906, 74, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 110, shuchusen_0, 74, 20 );
setEffMoveKey( spep_0 + 110, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 184, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 110, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 184, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 110, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 184, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 110, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 184, shuchusen_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--笑う
SE003 = playSeVer2( spep_0 + 8, 31, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 71 );

--指差す
SE005 = playSeVer2( spep_0 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 130 );

--集中線
SE007 = playSeVer2( spep_0 + 108, 20, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 184;

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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 106, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 106, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 106, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 106 -2, base_1, 255);
setEffAlphaKey( spep_1 + 106 -1, base_1, 255);
setEffAlphaKey( spep_1 + 106, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--走ってくる
SE009 = playSeVer2( spep_1 + 16, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 16, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 26, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 38, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 48, 1108, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 60, 1108, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_1 + 68, 1004, "", 0, 0, 0, -1);

--走ってくる
SE016 = playSeVer2( spep_1 + 70, 1108, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 82; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

-------------------------------------------------
-- イメージ背景殴り
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003 敵より前
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 116, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 116, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 116, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 116 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 116 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 116, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_004 敵より後ろ
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 116, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 116, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 116, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 116 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 116 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 116, base_2b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 84, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 84, shuchusen_2, 32, 20 );
setEffMoveKey( spep_2 + 84, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 84, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 116, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 84, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 116, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 84, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 116, shuchusen_2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 100, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 52, 1, 1 );
-- setDisp( spep_2 + 116, 1, 0 );

changeAnime( spep_2 -3 + 52, 1, 102 );

setMoveKey( spep_2 -3 + 52, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 148.2, -250.4 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 148.2, -250.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 + 116 -1, 1, 158.5, -182.4 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 63, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 64, 1, 3.87, 3.87 );
setScaleKey( spep_2 -3 + 89, 1, 3.87, 3.87 );
setScaleKey( spep_2 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 116 -1, 1, 2.5, 2.5 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 + 116 -1, 1, 0 );

-- ** 音 ** --
--飛びかかる
SE017 = playSeVer2( spep_2 + 0 -4, 1264, "",spep_2 + 86, 0, 14, -1);
SE018 = playSeVer2( spep_2 + 0 -4, 1227, "",spep_2 + 86, 0, 14, -1);

--パンチヒット
SE019 = playSeVer2( spep_2 + 52, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE019, 89 );
SE020 = playSeVer2( spep_2 + 52, 1180, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 52, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

-------------------------------------------------
-- し〜ん
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_005 敵より前
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 168, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 168, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 168, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 168 -2, base_3f, 255);
setEffAlphaKey( spep_3 + 168 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 168, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_006 敵より後ろ
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 168, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 168, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 168, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 168 -2, base_3b, 255);
setEffAlphaKey( spep_3 + 168 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 168, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 168 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 + 168, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );

sm1 = -30;

setMoveKey( spep_3 -2 + 2, 1, 1357.4, -551 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 1356.3, -550.6 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 1356.3, -550.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 1354.8, -549.9 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 1354.8, -549.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 1353.1, -549.2 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 1353.1, -549.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1350.9, -548.3 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 1350.9, -548.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 1348.5, -547.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 1348.5, -547.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 1345.6, -546.1 , 0 );
setMoveKey( spep_3 -3 + 15, 1, 1345.6, -546.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 1342.4, -544.7 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 1342.4, -544.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 1338.7, -543.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 1338.7, -543.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 1334.6, -541.5 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 1334.6, -541.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 1330, -539.5 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 1330, -539.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 1324.9, -537.4 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 1324.9, -537.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 1319.3, -535.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 1319.3, -535.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 1313.2, -532.5 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 1313.2, -532.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 1306.5, -529.7 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 1306.5, -529.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 1299.1, -526.6 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 1299.1, -526.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 1291, -523.2 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 1291, -523.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 1282.3, -519.5 , 0 );
setMoveKey( spep_3 -3 + 37, 1, 1282.3, -519.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 1272.7, -515.5 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 1272.7, -515.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 1262.3, -511.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 1262.3, -511.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 1250.9, -506.4 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 1250.9, -506.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1238.5, -501.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 1238.5, -501.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1225, -495.5 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 1225, -495.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1210.3, -489.4 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 1210.3, -489.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 1194.2, -482.7 , 0 );
setMoveKey( spep_3 -3 + 51, 1, 1194.2, -482.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 1176.6, -475.3 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 1176.6, -475.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 1157.2, -467.2 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 1157.2, -467.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1135.9, -458.2 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 1135.9, -458.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1112.4, -448.4 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 1112.4, -448.4 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 1086.2, -437.4 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 1086.2, -437.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 1056.9, -425.2 , 0 );
setMoveKey( spep_3 -3 + 63, 1, 1056.9, -425.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 1024, -411.4 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 1024, -411.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 986.5, -395.7 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 986.5, -395.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 943.3, -377.5 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 943.3, -377.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 892.6, -356.3 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 892.6, -356.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 831.6, -330.7 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 831.6, -330.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 755.5, -298.8 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 755.5, -298.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 654.1, -256.4 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 654.1, -256.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 501.8, -192.6 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 501.8, -192.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 197.4 + sm1, -65.1 , 0 );
setMoveKey( spep_3 + 168 -1, 1, 197.4 + sm1, -65.1 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 10, 10 );
setScaleKey( spep_3 -3 + 4, 1, 9.99, 9.99 );
setScaleKey( spep_3 -3 + 5, 1, 9.99, 9.99 );
setScaleKey( spep_3 -3 + 6, 1, 9.98, 9.98 );
setScaleKey( spep_3 -3 + 7, 1, 9.98, 9.98 );
setScaleKey( spep_3 -3 + 8, 1, 9.97, 9.97 );
setScaleKey( spep_3 -3 + 9, 1, 9.97, 9.97 );
setScaleKey( spep_3 -3 + 10, 1, 9.96, 9.96 );
setScaleKey( spep_3 -3 + 11, 1, 9.96, 9.96 );
setScaleKey( spep_3 -3 + 12, 1, 9.94, 9.94 );
setScaleKey( spep_3 -3 + 13, 1, 9.94, 9.94 );
setScaleKey( spep_3 -3 + 14, 1, 9.92, 9.92 );
setScaleKey( spep_3 -3 + 15, 1, 9.92, 9.92 );
setScaleKey( spep_3 -3 + 16, 1, 9.9, 9.9 );
setScaleKey( spep_3 -3 + 17, 1, 9.9, 9.9 );
setScaleKey( spep_3 -3 + 18, 1, 9.88, 9.88 );
setScaleKey( spep_3 -3 + 19, 1, 9.88, 9.88 );
setScaleKey( spep_3 -3 + 20, 1, 9.85, 9.85 );
setScaleKey( spep_3 -3 + 21, 1, 9.85, 9.85 );
setScaleKey( spep_3 -3 + 22, 1, 9.82, 9.82 );
setScaleKey( spep_3 -3 + 23, 1, 9.82, 9.82 );
setScaleKey( spep_3 -3 + 24, 1, 9.79, 9.79 );
setScaleKey( spep_3 -3 + 25, 1, 9.79, 9.79 );
setScaleKey( spep_3 -3 + 26, 1, 9.75, 9.75 );
setScaleKey( spep_3 -3 + 27, 1, 9.75, 9.75 );
setScaleKey( spep_3 -3 + 28, 1, 9.71, 9.71 );
setScaleKey( spep_3 -3 + 29, 1, 9.71, 9.71 );
setScaleKey( spep_3 -3 + 30, 1, 9.67, 9.67 );
setScaleKey( spep_3 -3 + 31, 1, 9.67, 9.67 );
setScaleKey( spep_3 -3 + 32, 1, 9.62, 9.62 );
setScaleKey( spep_3 -3 + 33, 1, 9.62, 9.62 );
setScaleKey( spep_3 -3 + 34, 1, 9.57, 9.57 );
setScaleKey( spep_3 -3 + 35, 1, 9.57, 9.57 );
setScaleKey( spep_3 -3 + 36, 1, 9.51, 9.51 );
setScaleKey( spep_3 -3 + 37, 1, 9.51, 9.51 );
setScaleKey( spep_3 -3 + 38, 1, 9.45, 9.45 );
setScaleKey( spep_3 -3 + 39, 1, 9.45, 9.45 );
setScaleKey( spep_3 -3 + 40, 1, 9.38, 9.38 );
setScaleKey( spep_3 -3 + 41, 1, 9.38, 9.38 );
setScaleKey( spep_3 -3 + 42, 1, 9.31, 9.31 );
setScaleKey( spep_3 -3 + 43, 1, 9.31, 9.31 );
setScaleKey( spep_3 -3 + 44, 1, 9.23, 9.23 );
setScaleKey( spep_3 -3 + 45, 1, 9.23, 9.23 );
setScaleKey( spep_3 -3 + 46, 1, 9.14, 9.14 );
setScaleKey( spep_3 -3 + 47, 1, 9.14, 9.14 );
setScaleKey( spep_3 -3 + 48, 1, 9.05, 9.05 );
setScaleKey( spep_3 -3 + 49, 1, 9.05, 9.05 );
setScaleKey( spep_3 -3 + 50, 1, 8.94, 8.94 );
setScaleKey( spep_3 -3 + 51, 1, 8.94, 8.94 );
setScaleKey( spep_3 -3 + 52, 1, 8.83, 8.83 );
setScaleKey( spep_3 -3 + 53, 1, 8.83, 8.83 );
setScaleKey( spep_3 -3 + 54, 1, 8.71, 8.71 );
setScaleKey( spep_3 -3 + 55, 1, 8.71, 8.71 );
setScaleKey( spep_3 -3 + 56, 1, 8.57, 8.57 );
setScaleKey( spep_3 -3 + 57, 1, 8.57, 8.57 );
setScaleKey( spep_3 -3 + 58, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 59, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 60, 1, 8.25, 8.25 );
setScaleKey( spep_3 -3 + 61, 1, 8.25, 8.25 );
setScaleKey( spep_3 -3 + 62, 1, 8.06, 8.06 );
setScaleKey( spep_3 -3 + 63, 1, 8.06, 8.06 );
setScaleKey( spep_3 -3 + 64, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 65, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 66, 1, 7.6, 7.6 );
setScaleKey( spep_3 -3 + 67, 1, 7.6, 7.6 );
setScaleKey( spep_3 -3 + 68, 1, 7.32, 7.32 );
setScaleKey( spep_3 -3 + 69, 1, 7.32, 7.32 );
setScaleKey( spep_3 -3 + 70, 1, 6.99, 6.99 );
setScaleKey( spep_3 -3 + 71, 1, 6.99, 6.99 );
setScaleKey( spep_3 -3 + 72, 1, 6.6, 6.6 );
setScaleKey( spep_3 -3 + 73, 1, 6.6, 6.6 );
setScaleKey( spep_3 -3 + 74, 1, 6.11, 6.11 );
setScaleKey( spep_3 -3 + 75, 1, 6.11, 6.11 );
setScaleKey( spep_3 -3 + 76, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 77, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 78, 1, 4.47, 4.47 );
setScaleKey( spep_3 -3 + 79, 1, 4.47, 4.47 );
setScaleKey( spep_3 -3 + 80, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 168 -1, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 168 -1, 1, 0 );

-- ** 音 ** --
--画面遷移
SE021 = playSeVer2( spep_3 + 30, 1072, "", 0, 0, 0, 0.5);

--しーん
SE022 = playSeVer2( spep_3 + 108, 1280, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 168;

-------------------------------------------------
-- ラスト敵吹っ飛び
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 208, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 208, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 208, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 208 -2, base_4, 255);
setEffAlphaKey( spep_4 + 208 -1, base_4, 255);
setEffAlphaKey( spep_4 + 208, base_4, 0);

-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_4 + 76, 906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 76, shuchusen_4, 132, 20 );
setEffMoveKey( spep_4 + 76, shuchusen_4, 0, 0, 0 );
setEffMoveKey( spep_4 + 208, shuchusen_4, 0, 0, 0 );
setEffScaleKey( spep_4 + 76, shuchusen_4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 208, shuchusen_4, 1.6, 1.6 );
setEffRotateKey( spep_4 + 76, shuchusen_4, 0 );
setEffRotateKey( spep_4 + 208, shuchusen_4, 0 );
setEffAlphaKey( spep_4 + 76, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 208, shuchusen_4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 208 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 89, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 -3 + 42, 1, 107 );

setMoveKey( spep_4 + 0, 1, -33, -204.1 , 0 );
setMoveKey( spep_4 -3 + 41, 1, -33, -204.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -23.2, -101.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -23.2, -101.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -19.5, -75.3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -19.5, -75.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -12.4, -50.3 , 0 );
setMoveKey( spep_4 -3 + 47, 1, -12.4, -50.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -2.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 49, 1, -2.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 22.2, 21.2 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 22.2, 21.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 37.2, 45 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 37.2, 45 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 53.8, 69.1 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 53.8, 69.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 72.2, 93.9 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 72.2, 93.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 92.5, 119.8 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 92.5, 119.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 115.1, 147.1 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 115.1, 147.1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 140.9, 177 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 140.9, 177 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 194.1, 184.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 194.1, 184.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 239.4, 187.2 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 239.4, 187.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 279.4, 185.5 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 279.4, 185.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 315.6, 180.5 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 315.6, 180.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 349.1, 172.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 349.1, 172.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 380.5, 161.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 380.5, 161.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 410.1, 147.3 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 410.1, 147.3 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 438.4, 130.2 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 438.4, 130.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 465.6, 109.6 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 465.6, 109.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 492, 85 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 492, 85 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 518, 55.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 518, 55.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 543.9, 19.4 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 543.9, 19.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 570.3, -26.1 , 0 );
setMoveKey( spep_4 + 89, 1, 570.3, -26.1 , 0 );

setScaleKey( spep_4 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 41, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 42, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 43, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 44, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 45, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 47, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 49, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 51, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 53, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 55, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 57, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 59, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 60, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 61, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 62, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 63, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 64, 1, 1, 1 );
setScaleKey( spep_4 -3 + 65, 1, 1, 1 );
setScaleKey( spep_4 -3 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 67, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 69, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 70, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 71, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 73, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 74, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 75, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 77, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 79, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 81, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 82, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 83, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 84, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 85, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 86, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 87, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 88, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 89, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 90, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 89, 1, 1.8, 1.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 41, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -54 );
setRotateKey( spep_4 -3 + 43, 1, -54 );
setRotateKey( spep_4 -3 + 44, 1, -52.1 );
setRotateKey( spep_4 -3 + 45, 1, -52.1 );
setRotateKey( spep_4 -3 + 46, 1, -50.2 );
setRotateKey( spep_4 -3 + 47, 1, -50.2 );
setRotateKey( spep_4 -3 + 48, 1, -48.3 );
setRotateKey( spep_4 -3 + 49, 1, -48.3 );
setRotateKey( spep_4 -3 + 50, 1, -46.4 );
setRotateKey( spep_4 -3 + 51, 1, -46.4 );
setRotateKey( spep_4 -3 + 52, 1, -44.5 );
setRotateKey( spep_4 -3 + 53, 1, -44.5 );
setRotateKey( spep_4 -3 + 54, 1, -42.5 );
setRotateKey( spep_4 -3 + 55, 1, -42.5 );
setRotateKey( spep_4 -3 + 56, 1, -40.6 );
setRotateKey( spep_4 -3 + 57, 1, -40.6 );
setRotateKey( spep_4 -3 + 58, 1, -38.7 );
setRotateKey( spep_4 -3 + 59, 1, -38.7 );
setRotateKey( spep_4 -3 + 60, 1, -36.8 );
setRotateKey( spep_4 -3 + 61, 1, -36.8 );
setRotateKey( spep_4 -3 + 62, 1, -34.9 );
setRotateKey( spep_4 -3 + 63, 1, -34.9 );
setRotateKey( spep_4 -3 + 64, 1, -33 );
setRotateKey( spep_4 -3 + 65, 1, -33 );
setRotateKey( spep_4 -3 + 66, 1, -30.2 );
setRotateKey( spep_4 -3 + 67, 1, -30.2 );
setRotateKey( spep_4 -3 + 68, 1, -27.5 );
setRotateKey( spep_4 -3 + 69, 1, -27.5 );
setRotateKey( spep_4 -3 + 70, 1, -24.7 );
setRotateKey( spep_4 -3 + 71, 1, -24.7 );
setRotateKey( spep_4 -3 + 72, 1, -21.9 );
setRotateKey( spep_4 -3 + 73, 1, -21.9 );
setRotateKey( spep_4 -3 + 74, 1, -19.2 );
setRotateKey( spep_4 -3 + 75, 1, -19.2 );
setRotateKey( spep_4 -3 + 76, 1, -16.4 );
setRotateKey( spep_4 -3 + 77, 1, -16.4 );
setRotateKey( spep_4 -3 + 78, 1, -13.6 );
setRotateKey( spep_4 -3 + 79, 1, -13.6 );
setRotateKey( spep_4 -3 + 80, 1, -10.8 );
setRotateKey( spep_4 -3 + 81, 1, -10.8 );
setRotateKey( spep_4 -3 + 82, 1, -8.1 );
setRotateKey( spep_4 -3 + 83, 1, -8.1 );
setRotateKey( spep_4 -3 + 84, 1, -5.3 );
setRotateKey( spep_4 -3 + 85, 1, -5.3 );
setRotateKey( spep_4 -3 + 86, 1, -2.5 );
setRotateKey( spep_4 -3 + 87, 1, -2.5 );
setRotateKey( spep_4 -3 + 88, 1, 0.2 );
setRotateKey( spep_4 -3 + 89, 1, 0.2 );
setRotateKey( spep_4 -3 + 90, 1, 3 );
setRotateKey( spep_4 + 89, 1, 3 );

-- ** 音 ** --
--敵吹っ飛ぶ
SE023 = playSeVer2( spep_4 + 34, 1119, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_4 + 34, SE023, 79 );
setStartTimeMs( SE023,  583 );
SE024 = playSeVer2( spep_4 + 32, 1027, "", 0, 0, 0, -1);

--集中線
SE025 = playSeVer2( spep_4 + 76, 3, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 76); -- ダメージ表示フレーム
endPhase( spep_4 + 198); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 184, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 184, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 184, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 184, base_0, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 176, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 96;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 110, 906, 74, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 110, shuchusen_0, 74, 20 );
setEffMoveKey( spep_0 + 110, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 184, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 110, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 184, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 110, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 184, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 110, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 184, shuchusen_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--笑う
SE003 = playSeVer2( spep_0 + 8, 31, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 71 );

--指差す
SE005 = playSeVer2( spep_0 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 130 );

--集中線
SE007 = playSeVer2( spep_0 + 108, 20, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 184;

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
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 106, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 106, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 106, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 106 -2, base_1, 255);
setEffAlphaKey( spep_1 + 106 -1, base_1, 255);
setEffAlphaKey( spep_1 + 106, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--走ってくる
SE009 = playSeVer2( spep_1 + 16, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 16, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 26, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 38, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 48, 1108, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 60, 1108, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_1 + 68, 1004, "", 0, 0, 0, -1);

--走ってくる
SE016 = playSeVer2( spep_1 + 70, 1108, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 82; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

-------------------------------------------------
-- イメージ背景殴り
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003 敵より前
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 116, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 116, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 116, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 116 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 116 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 116, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- ef_004 敵より後ろ
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 116, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 116, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 116, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 116 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 116 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 116, base_2b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 84, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 84, shuchusen_2, 32, 20 );
setEffMoveKey( spep_2 + 84, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 84, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 116, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 84, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 116, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 84, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 116, shuchusen_2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 100, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 52, 1, 1 );
-- setDisp( spep_2 + 116, 1, 0 );

changeAnime( spep_2 -3 + 52, 1, 102 );

setMoveKey( spep_2 -3 + 52, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 148.2, -250.4 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 148.2, -250.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 50, -202.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 255, -321.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 317.7, -126.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 179.9, -412.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 167.5, -173.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 158.5, -182.4 , 0 );
setMoveKey( spep_2 + 116 -1, 1, 158.5, -182.4 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 63, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 64, 1, 3.87, 3.87 );
setScaleKey( spep_2 -3 + 89, 1, 3.87, 3.87 );
setScaleKey( spep_2 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 116 -1, 1, 2.5, 2.5 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 + 116 -1, 1, 0 );

-- ** 音 ** --
--飛びかかる
SE017 = playSeVer2( spep_2 + 0 -4, 1264, "",spep_2 + 86, 0, 14, -1);
SE018 = playSeVer2( spep_2 + 0 -4, 1227, "",spep_2 + 86, 0, 14, -1);

--パンチヒット
SE019 = playSeVer2( spep_2 + 52, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE019, 89 );
SE020 = playSeVer2( spep_2 + 52, 1180, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 52, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

-------------------------------------------------
-- し〜ん
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- ef_005 敵より前
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 168, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 168, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 168, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 168 -2, base_3f, 255);
setEffAlphaKey( spep_3 + 168 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 168, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_006 敵より後ろ
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 168, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 168, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 168, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 168 -2, base_3b, 255);
setEffAlphaKey( spep_3 + 168 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 168, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 168 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 + 168, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );

setMoveKey( spep_3 -2 + 2, 1, 1357.4, -551 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 1356.3, -550.6 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 1356.3, -550.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 1354.8, -549.9 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 1354.8, -549.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 1353.1, -549.2 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 1353.1, -549.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1350.9, -548.3 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 1350.9, -548.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 1348.5, -547.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 1348.5, -547.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 1345.6, -546.1 , 0 );
setMoveKey( spep_3 -3 + 15, 1, 1345.6, -546.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 1342.4, -544.7 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 1342.4, -544.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 1338.7, -543.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 1338.7, -543.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 1334.6, -541.5 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 1334.6, -541.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 1330, -539.5 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 1330, -539.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 1324.9, -537.4 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 1324.9, -537.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 1319.3, -535.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 1319.3, -535.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 1313.2, -532.5 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 1313.2, -532.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 1306.5, -529.7 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 1306.5, -529.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 1299.1, -526.6 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 1299.1, -526.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 1291, -523.2 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 1291, -523.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 1282.3, -519.5 , 0 );
setMoveKey( spep_3 -3 + 37, 1, 1282.3, -519.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 1272.7, -515.5 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 1272.7, -515.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 1262.3, -511.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 1262.3, -511.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 1250.9, -506.4 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 1250.9, -506.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1238.5, -501.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 1238.5, -501.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1225, -495.5 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 1225, -495.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1210.3, -489.4 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 1210.3, -489.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 1194.2, -482.7 , 0 );
setMoveKey( spep_3 -3 + 51, 1, 1194.2, -482.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 1176.6, -475.3 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 1176.6, -475.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 1157.2, -467.2 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 1157.2, -467.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1135.9, -458.2 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 1135.9, -458.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1112.4, -448.4 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 1112.4, -448.4 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 1086.2, -437.4 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 1086.2, -437.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 1056.9, -425.2 , 0 );
setMoveKey( spep_3 -3 + 63, 1, 1056.9, -425.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 1024, -411.4 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 1024, -411.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 986.5, -395.7 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 986.5, -395.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 943.3, -377.5 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 943.3, -377.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 892.6, -356.3 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 892.6, -356.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 831.6, -330.7 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 831.6, -330.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 755.5, -298.8 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 755.5, -298.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 654.1, -256.4 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 654.1, -256.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 501.8, -192.6 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 501.8, -192.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 197.4, -65.1 , 0 );
setMoveKey( spep_3 + 168 -1, 1, 197.4, -65.1 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 10, 10 );
setScaleKey( spep_3 -3 + 4, 1, 9.99, 9.99 );
setScaleKey( spep_3 -3 + 5, 1, 9.99, 9.99 );
setScaleKey( spep_3 -3 + 6, 1, 9.98, 9.98 );
setScaleKey( spep_3 -3 + 7, 1, 9.98, 9.98 );
setScaleKey( spep_3 -3 + 8, 1, 9.97, 9.97 );
setScaleKey( spep_3 -3 + 9, 1, 9.97, 9.97 );
setScaleKey( spep_3 -3 + 10, 1, 9.96, 9.96 );
setScaleKey( spep_3 -3 + 11, 1, 9.96, 9.96 );
setScaleKey( spep_3 -3 + 12, 1, 9.94, 9.94 );
setScaleKey( spep_3 -3 + 13, 1, 9.94, 9.94 );
setScaleKey( spep_3 -3 + 14, 1, 9.92, 9.92 );
setScaleKey( spep_3 -3 + 15, 1, 9.92, 9.92 );
setScaleKey( spep_3 -3 + 16, 1, 9.9, 9.9 );
setScaleKey( spep_3 -3 + 17, 1, 9.9, 9.9 );
setScaleKey( spep_3 -3 + 18, 1, 9.88, 9.88 );
setScaleKey( spep_3 -3 + 19, 1, 9.88, 9.88 );
setScaleKey( spep_3 -3 + 20, 1, 9.85, 9.85 );
setScaleKey( spep_3 -3 + 21, 1, 9.85, 9.85 );
setScaleKey( spep_3 -3 + 22, 1, 9.82, 9.82 );
setScaleKey( spep_3 -3 + 23, 1, 9.82, 9.82 );
setScaleKey( spep_3 -3 + 24, 1, 9.79, 9.79 );
setScaleKey( spep_3 -3 + 25, 1, 9.79, 9.79 );
setScaleKey( spep_3 -3 + 26, 1, 9.75, 9.75 );
setScaleKey( spep_3 -3 + 27, 1, 9.75, 9.75 );
setScaleKey( spep_3 -3 + 28, 1, 9.71, 9.71 );
setScaleKey( spep_3 -3 + 29, 1, 9.71, 9.71 );
setScaleKey( spep_3 -3 + 30, 1, 9.67, 9.67 );
setScaleKey( spep_3 -3 + 31, 1, 9.67, 9.67 );
setScaleKey( spep_3 -3 + 32, 1, 9.62, 9.62 );
setScaleKey( spep_3 -3 + 33, 1, 9.62, 9.62 );
setScaleKey( spep_3 -3 + 34, 1, 9.57, 9.57 );
setScaleKey( spep_3 -3 + 35, 1, 9.57, 9.57 );
setScaleKey( spep_3 -3 + 36, 1, 9.51, 9.51 );
setScaleKey( spep_3 -3 + 37, 1, 9.51, 9.51 );
setScaleKey( spep_3 -3 + 38, 1, 9.45, 9.45 );
setScaleKey( spep_3 -3 + 39, 1, 9.45, 9.45 );
setScaleKey( spep_3 -3 + 40, 1, 9.38, 9.38 );
setScaleKey( spep_3 -3 + 41, 1, 9.38, 9.38 );
setScaleKey( spep_3 -3 + 42, 1, 9.31, 9.31 );
setScaleKey( spep_3 -3 + 43, 1, 9.31, 9.31 );
setScaleKey( spep_3 -3 + 44, 1, 9.23, 9.23 );
setScaleKey( spep_3 -3 + 45, 1, 9.23, 9.23 );
setScaleKey( spep_3 -3 + 46, 1, 9.14, 9.14 );
setScaleKey( spep_3 -3 + 47, 1, 9.14, 9.14 );
setScaleKey( spep_3 -3 + 48, 1, 9.05, 9.05 );
setScaleKey( spep_3 -3 + 49, 1, 9.05, 9.05 );
setScaleKey( spep_3 -3 + 50, 1, 8.94, 8.94 );
setScaleKey( spep_3 -3 + 51, 1, 8.94, 8.94 );
setScaleKey( spep_3 -3 + 52, 1, 8.83, 8.83 );
setScaleKey( spep_3 -3 + 53, 1, 8.83, 8.83 );
setScaleKey( spep_3 -3 + 54, 1, 8.71, 8.71 );
setScaleKey( spep_3 -3 + 55, 1, 8.71, 8.71 );
setScaleKey( spep_3 -3 + 56, 1, 8.57, 8.57 );
setScaleKey( spep_3 -3 + 57, 1, 8.57, 8.57 );
setScaleKey( spep_3 -3 + 58, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 59, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 60, 1, 8.25, 8.25 );
setScaleKey( spep_3 -3 + 61, 1, 8.25, 8.25 );
setScaleKey( spep_3 -3 + 62, 1, 8.06, 8.06 );
setScaleKey( spep_3 -3 + 63, 1, 8.06, 8.06 );
setScaleKey( spep_3 -3 + 64, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 65, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 66, 1, 7.6, 7.6 );
setScaleKey( spep_3 -3 + 67, 1, 7.6, 7.6 );
setScaleKey( spep_3 -3 + 68, 1, 7.32, 7.32 );
setScaleKey( spep_3 -3 + 69, 1, 7.32, 7.32 );
setScaleKey( spep_3 -3 + 70, 1, 6.99, 6.99 );
setScaleKey( spep_3 -3 + 71, 1, 6.99, 6.99 );
setScaleKey( spep_3 -3 + 72, 1, 6.6, 6.6 );
setScaleKey( spep_3 -3 + 73, 1, 6.6, 6.6 );
setScaleKey( spep_3 -3 + 74, 1, 6.11, 6.11 );
setScaleKey( spep_3 -3 + 75, 1, 6.11, 6.11 );
setScaleKey( spep_3 -3 + 76, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 77, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 78, 1, 4.47, 4.47 );
setScaleKey( spep_3 -3 + 79, 1, 4.47, 4.47 );
setScaleKey( spep_3 -3 + 80, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 168 -1, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 168 -1, 1, 0 );

-- ** 音 ** --
--画面遷移
SE021 = playSeVer2( spep_3 + 30, 1072, "", 0, 0, 0, 0.5);

--しーん
SE022 = playSeVer2( spep_3 + 108, 1280, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 168;

-------------------------------------------------
-- ラスト敵吹っ飛び
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 208, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 208, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 208, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 208 -2, base_4, 255);
setEffAlphaKey( spep_4 + 208 -1, base_4, 255);
setEffAlphaKey( spep_4 + 208, base_4, 0);

-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_4 + 76, 906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 76, shuchusen_4, 132, 20 );
setEffMoveKey( spep_4 + 76, shuchusen_4, 0, 0, 0 );
setEffMoveKey( spep_4 + 208, shuchusen_4, 0, 0, 0 );
setEffScaleKey( spep_4 + 76, shuchusen_4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 208, shuchusen_4, 1.6, 1.6 );
setEffRotateKey( spep_4 + 76, shuchusen_4, 0 );
setEffRotateKey( spep_4 + 208, shuchusen_4, 0 );
setEffAlphaKey( spep_4 + 76, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 208, shuchusen_4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 208 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 89, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 -3 + 42, 1, 107 );

setMoveKey( spep_4 + 0, 1, -33, -204.1 , 0 );
setMoveKey( spep_4 -3 + 41, 1, -33, -204.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -23.2, -101.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -23.2, -101.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -19.5, -75.3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -19.5, -75.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -12.4, -50.3 , 0 );
setMoveKey( spep_4 -3 + 47, 1, -12.4, -50.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -2.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 49, 1, -2.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 22.2, 21.2 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 22.2, 21.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 37.2, 45 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 37.2, 45 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 53.8, 69.1 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 53.8, 69.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 72.2, 93.9 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 72.2, 93.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 92.5, 119.8 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 92.5, 119.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 115.1, 147.1 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 115.1, 147.1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 140.9, 177 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 140.9, 177 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 194.1, 184.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 194.1, 184.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 239.4, 187.2 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 239.4, 187.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 279.4, 185.5 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 279.4, 185.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 315.6, 180.5 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 315.6, 180.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 349.1, 172.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 349.1, 172.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 380.5, 161.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 380.5, 161.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 410.1, 147.3 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 410.1, 147.3 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 438.4, 130.2 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 438.4, 130.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 465.6, 109.6 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 465.6, 109.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 492, 85 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 492, 85 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 518, 55.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 518, 55.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 543.9, 19.4 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 543.9, 19.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 570.3, -26.1 , 0 );
setMoveKey( spep_4 + 89, 1, 570.3, -26.1 , 0 );

setScaleKey( spep_4 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 41, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 42, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 43, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 44, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 45, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 47, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 49, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 51, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 53, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 55, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 57, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 59, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 60, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 61, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 62, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 63, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 64, 1, 1, 1 );
setScaleKey( spep_4 -3 + 65, 1, 1, 1 );
setScaleKey( spep_4 -3 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 67, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 69, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 70, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 71, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 73, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 74, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 75, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 77, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 79, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 81, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 82, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 83, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 84, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 85, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 86, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 87, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 88, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 89, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 90, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 89, 1, 1.8, 1.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 41, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -54 );
setRotateKey( spep_4 -3 + 43, 1, -54 );
setRotateKey( spep_4 -3 + 44, 1, -52.1 );
setRotateKey( spep_4 -3 + 45, 1, -52.1 );
setRotateKey( spep_4 -3 + 46, 1, -50.2 );
setRotateKey( spep_4 -3 + 47, 1, -50.2 );
setRotateKey( spep_4 -3 + 48, 1, -48.3 );
setRotateKey( spep_4 -3 + 49, 1, -48.3 );
setRotateKey( spep_4 -3 + 50, 1, -46.4 );
setRotateKey( spep_4 -3 + 51, 1, -46.4 );
setRotateKey( spep_4 -3 + 52, 1, -44.5 );
setRotateKey( spep_4 -3 + 53, 1, -44.5 );
setRotateKey( spep_4 -3 + 54, 1, -42.5 );
setRotateKey( spep_4 -3 + 55, 1, -42.5 );
setRotateKey( spep_4 -3 + 56, 1, -40.6 );
setRotateKey( spep_4 -3 + 57, 1, -40.6 );
setRotateKey( spep_4 -3 + 58, 1, -38.7 );
setRotateKey( spep_4 -3 + 59, 1, -38.7 );
setRotateKey( spep_4 -3 + 60, 1, -36.8 );
setRotateKey( spep_4 -3 + 61, 1, -36.8 );
setRotateKey( spep_4 -3 + 62, 1, -34.9 );
setRotateKey( spep_4 -3 + 63, 1, -34.9 );
setRotateKey( spep_4 -3 + 64, 1, -33 );
setRotateKey( spep_4 -3 + 65, 1, -33 );
setRotateKey( spep_4 -3 + 66, 1, -30.2 );
setRotateKey( spep_4 -3 + 67, 1, -30.2 );
setRotateKey( spep_4 -3 + 68, 1, -27.5 );
setRotateKey( spep_4 -3 + 69, 1, -27.5 );
setRotateKey( spep_4 -3 + 70, 1, -24.7 );
setRotateKey( spep_4 -3 + 71, 1, -24.7 );
setRotateKey( spep_4 -3 + 72, 1, -21.9 );
setRotateKey( spep_4 -3 + 73, 1, -21.9 );
setRotateKey( spep_4 -3 + 74, 1, -19.2 );
setRotateKey( spep_4 -3 + 75, 1, -19.2 );
setRotateKey( spep_4 -3 + 76, 1, -16.4 );
setRotateKey( spep_4 -3 + 77, 1, -16.4 );
setRotateKey( spep_4 -3 + 78, 1, -13.6 );
setRotateKey( spep_4 -3 + 79, 1, -13.6 );
setRotateKey( spep_4 -3 + 80, 1, -10.8 );
setRotateKey( spep_4 -3 + 81, 1, -10.8 );
setRotateKey( spep_4 -3 + 82, 1, -8.1 );
setRotateKey( spep_4 -3 + 83, 1, -8.1 );
setRotateKey( spep_4 -3 + 84, 1, -5.3 );
setRotateKey( spep_4 -3 + 85, 1, -5.3 );
setRotateKey( spep_4 -3 + 86, 1, -2.5 );
setRotateKey( spep_4 -3 + 87, 1, -2.5 );
setRotateKey( spep_4 -3 + 88, 1, 0.2 );
setRotateKey( spep_4 -3 + 89, 1, 0.2 );
setRotateKey( spep_4 -3 + 90, 1, 3 );
setRotateKey( spep_4 + 89, 1, 3 );

-- ** 音 ** --
--敵吹っ飛ぶ
SE023 = playSeVer2( spep_4 + 34, 1119, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_4 + 34, SE023, 79 );
setStartTimeMs( SE023,  583 );
SE024 = playSeVer2( spep_4 + 32, 1027, "", 0, 0, 0, -1);

--集中線
SE025 = playSeVer2( spep_4 + 76, 3, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 76); -- ダメージ表示フレーム
endPhase( spep_4 + 198); -- 終了フレーム

end
