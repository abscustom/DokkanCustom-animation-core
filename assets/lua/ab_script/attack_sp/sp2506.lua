--4025780：LR_超サイヤ人ベジータ(GT)_悟空の意志を受け継ぐ闘い
--sp_effect_a1_00389
--sp2506

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
SP_01 = 161349;	  --4人が構えてる	ef_001
SP_02 = 161350;	  --ベジータが叫んでズームアウト	ef_002
SP_03 = 161351;	  --ベジータが奥の敵に突っ込んでいく	ef_003
SP_03b = 161353;	  --ベジータが奥の敵に突っ込んでいく	ef_003_b
SP_04 = 161354;	  --敵の背後に回り込み蹴る	ef_004
SP_04b = 161355;	  --敵の背後に回り込み蹴る	ef_004_b
SP_05 = 161356;	  --飛んできた敵を下からインしてトランクスが拳を突き上げる	ef_005
SP_05b = 161357;	  --飛んできた敵を下からインしてトランクスが拳を突き上げる	ef_005_b
SP_06 = 161358;	  --ベジータが正面に突っ込んで来る	ef_006
SP_07 = 161359;	  --敵を右手で殴る（クローズアップ）	ef_007
SP_07b = 161360;	  --敵を右手で殴る（クローズアップ）	ef_007_b
SP_08 = 161361;	  --トランクスが左画面からインしてきて敵に蹴りこむ	ef_008
SP_08b = 161362;	  --トランクスが左画面からインしてきて敵に蹴りこむ	ef_008_b
SP_09 = 161363;	  --悟飯と悟天が映り込み瞬時に移動する	ef_009
SP_10 = 161364;	  --悟天が気弾を構える	ef_010
SP_11 = 161365;	  --空中にいる悟飯と地上にいる悟天が敵を挟み気弾を構える	ef_011
SP_11b = 161366;	  --空中にいる悟飯と地上にいる悟天が敵を挟み気弾を構える	ef_011_b
SP_12 = 161367;	  --左に悟飯、右に悟天がバストアップで映り気弾をうつ	ef_012
SP_13 = 161368;	  --気弾同士が敵にぶつかり爆発でフィニッシュ	ef_013
SP_13b = 161369;	  --気弾同士が敵にぶつかり爆発でフィニッシュ	ef_013_b

--エフェクト(てき)
SP_03r = 161352;	  --ベジータが奥の敵に突っ込んでいく	ef_003_r



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
-- 4人が構えてる
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 112, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 112, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 112, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 112, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 28, 1018, "", 0, 0, 0, -1);

--集中線
SE002 = playSeVer2( spep_0 + 14, 20, "",spep_0 + 122, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 14, 13, "",spep_0 + 122, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 112;

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
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
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
-- ベジータが叫んでズームアウト
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 72, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 72, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 72, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 72, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 72 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気ダメ
SE005 = playSeVer2( spep_1 + 0, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 46 );
SE006 = playSeVer2( spep_1 + 0, 1358, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 8, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE007, 127 );
SE008 = playSeVer2( spep_1 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE008, 83 );
SE009 = playSeVer2( spep_1 + 8, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE009, 71 );

--オーラ
SE010 = playSeVer2( spep_1 + 8, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 32, 1036, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
spep_2 = spep_1 + 72;

-------------------------------------------------
-- ベジータが奥の敵に突っ込んでいく
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 42, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 42, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 42, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 42 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 42 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 42, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_003_b
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 42, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 42, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 42, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 42 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 42 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 42, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 42 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
a2 = -7
setDisp( spep_2 + a2 + 12, 1, 1 );
-- setDisp( spep_2 + 42, 1, 0 );

changeAnime( spep_2 +a2 + 12, 1, 100 );

setMoveKey( spep_2 +a2 + 12, 1, 267, -78.5 , 0 );
setMoveKey( spep_2 +a2 + 22, 1, 267, -78.5 , 0 );
setMoveKey( spep_2 +a2 + 24, 1, 266.6, -78.2 , 0 );
setMoveKey( spep_2 +a2 + 26, 1, 266.6, -78.2 , 0 );
setMoveKey( spep_2 +a2 + 28, 1, 265.8, -77.8 , 0 );
setMoveKey( spep_2 +a2 + 30, 1, 265.8, -77.8 , 0 );
setMoveKey( spep_2 +a2 + 32, 1, 265.4, -77.5 , 0 );
setMoveKey( spep_2 +a2 + 34, 1, 265.4, -77.5 , 0 );
setMoveKey( spep_2 +a2 + 36, 1, 264.9, -77.2 , 0 );
setMoveKey( spep_2 +a2 + 38, 1, 264.9, -77.2 , 0 );
setMoveKey( spep_2 +a2 + 40, 1, 264.4, -76.9 , 0 );
setMoveKey( spep_2 +a2 + 42, 1, 263.9, -76.6 , 0 );
setMoveKey( spep_2 + 41, 1, 263.9, -76.6 , 0 );

setScaleKey( spep_2 +a2 + 12, 1, 0.44, 0.44 );
setScaleKey( spep_2 +a2 + 22, 1, 0.44, 0.44 );
setScaleKey( spep_2 +a2 + 24, 1, 0.45, 0.45 );
setScaleKey( spep_2 +a2 + 26, 1, 0.45, 0.45 );
setScaleKey( spep_2 +a2 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_2 +a2 + 30, 1, 0.47, 0.47 );
setScaleKey( spep_2 +a2 + 32, 1, 0.48, 0.48 );
setScaleKey( spep_2 +a2 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_2 +a2 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_2 +a2 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_2 +a2 + 40, 1, 0.5, 0.5 );
setScaleKey( spep_2 +a2 + 42, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 41, 1, 0.52, 0.52 );

setRotateKey( spep_2 +a2 + 12, 1, 14.9 );
setRotateKey( spep_2 + 41, 1, 14.9 );

-- ** 音 ** --
--ベジータ向かっていく
SE012 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 0, 9, "",spep_2 + 66, 0, 10, -1);

--瞬間移動
SE014 = playSeVer2( spep_2 + 32, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 42;


-------------------------------------------------
-- 敵の背後に回り込み蹴る	
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 50, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 50, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 50 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 50, base_3f, 255);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_b
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 50, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 50, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 50 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 50, base_3b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 50 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep3 -3 + 0, 1, 1 );
setDisp( spep_3 + 50, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 28, 1, 7 );

-- setMoveKey( spep_3 -3 + 0, 1, -228.1, -224 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -228, -224.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -228, -224.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -225.1, -224.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -222.2, -224.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -219.3, -224.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -216.4, -224.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -213.5, -224.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -210.6, -224.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -207.7, -224.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -204.8, -224.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -201.9, -224.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, -199, -224.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -121.6, 230.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -417.4, 348.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -636.3, 453.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -932.5, 513.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -1161.9, 602.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -1458.1, 736 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -1675.3, 818.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -1783.9, 849 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -1864, 876.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -1944.1, 903.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -2024.2, 931.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -2104.3, 958.4 , 0 );
setMoveKey( spep_3 -3 + 53, 1, -2184.4, 985.8 , 0 );

setScaleKey( spep_3 + 0, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 27, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 28, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 30, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 32, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 34, 1, 3.8, 3.8 );
setScaleKey( spep_3 -3 + 36, 1, 4.31, 4.31 );
setScaleKey( spep_3 -3 + 38, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 40, 1, 5.31, 5.31 );
setScaleKey( spep_3 -3 + 42, 1, 5.48, 5.48 );
setScaleKey( spep_3 -3 + 44, 1, 5.64, 5.64 );
setScaleKey( spep_3 -3 + 46, 1, 5.81, 5.81 );
setScaleKey( spep_3 -3 + 48, 1, 5.98, 5.98 );
setScaleKey( spep_3 -3 + 50, 1, 6.15, 6.15 );
setScaleKey( spep_3 -3 + 53, 1, 6.31, 6.31 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 27, 1, 0 );
setRotateKey( spep_3 -3 + 28, 1, 42.7 );
setRotateKey( spep_3 -3 + 53, 1, 42.7 );

-- ** 音 ** --
--ベジータ蹴り飛ばす
SE015 = playSeVer2( spep_3 + 14, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE016, 83 );
SE017 = playSeVer2( spep_3 + 22, 1359, "",spep_3 + 46, 0, 10, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 50;


-------------------------------------------------
-- 飛んできた敵を下からインしてトランクスが拳を突き上げる
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 64, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 64, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 64, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 64 -2, base_4f, 255);
setEffAlphaKey( spep_4 + 64 -1, base_4f, 255);
setEffAlphaKey( spep_4 + 64, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- ef_005_b
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 64, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 64, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 64, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 64 -2, base_4b, 255);
setEffAlphaKey( spep_4 + 64 -1, base_4b, 255);
setEffAlphaKey( spep_4 + 64, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 64 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 6, 1, 1 );
setDisp( spep_4 + 64, 1, 0 );

changeAnime( spep_4 + 6, 1, 106 );
changeAnime( spep_4 -3 + 32, 1, 108 );

setMoveKey( spep_4 + 6, 1, 567, -196.8 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, 503.3, -165.3 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, 439.6, -133.7 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, 375.9, -102.1 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, 312.2, -70.6 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, 248.4, -39 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, 184.8, -7.4 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, 121, 24.1 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, 57.3, 55.7 , 0 );
setMoveKey( spep_4 - 3 + 27, 1, -6.4, 87.3 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, -46.9, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 33, 1, -46.9, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, -5.9, 141.2 , 0 );
setMoveKey( spep_4 - 3 + 35, 1, -5.9, 141.2 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, -38.7, 149.9 , 0 );
setMoveKey( spep_4 - 3 + 37, 1, -38.7, 149.9 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, -5.9, 134.2 , 0 );
setMoveKey( spep_4 - 3 + 39, 1, -5.9, 134.2 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, -34.6, 179.7 , 0 );
setMoveKey( spep_4 - 3 + 41, 1, -34.6, 179.7 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, -10, 213 , 0 );
setMoveKey( spep_4 - 3 + 43, 1, -10, 213 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, -42.8, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 45, 1, -42.8, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, -14.1, 193.8 , 0 );
setMoveKey( spep_4 - 3 + 47, 1, -14.1, 193.8 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, -34.6, 139.3 , 0 );
setMoveKey( spep_4 - 3 + 49, 1, -34.6, 139.3 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, -14.1, 178.7 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, -14.1, 173.2 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, -14.1, 167.7 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, -14.1, 162.2 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, -14.1, 156.7 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, -14.1, 151.2 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, -14.1, 145.7 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, -14.1, 140.2 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, -14.1, 134.7 , 0 );
setMoveKey( spep_4 + 64, 1, -14.1, 134.7 , 0 );

setScaleKey( spep_4 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 27, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 32, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 64, 1, 2.35, 2.35 );

setRotateKey( spep_4 + 6, 1, -110.8 );
setRotateKey( spep_4 - 3 + 27, 1, -110.8 );
setRotateKey( spep_4 - 3 + 32, 1, -90 );
setRotateKey( spep_4 - 3 + 46, 1, -90 );
setRotateKey( spep_4 - 3 + 47, 1, -90 );
setRotateKey( spep_4 - 3 + 48, 1, -89.7 );
setRotateKey( spep_4 - 3 + 49, 1, -89.7 );
setRotateKey( spep_4 - 3 + 50, 1, -89.3 );
setRotateKey( spep_4 - 3 + 52, 1, -89 );
setRotateKey( spep_4 - 3 + 54, 1, -88.7 );
setRotateKey( spep_4 - 3 + 56, 1, -88.3 );
setRotateKey( spep_4 - 3 + 58, 1, -88 );
setRotateKey( spep_4 - 3 + 60, 1, -87.6 );
setRotateKey( spep_4 - 3 + 62, 1, -87.3 );
setRotateKey( spep_4 - 3 + 64, 1, -87 );
setRotateKey( spep_4 - 3 + 66, 1, -86.6 );
setRotateKey( spep_4 + 64, 1, -86.6 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_4 + 0, 1109, "", 0, 0, 0, -1);

--トランクスアッパー
SE019 = playSeVer2( spep_4 + 30, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 32, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 32, 1153, "", 0, 0, 0, -1);

--画面遷移
SE022 = playSeVer2( spep_4 + 46, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 64;


-------------------------------------------------
-- ベジータが正面に突っ込んで来る	
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 24, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 24, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 24, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 24 -2, base_5, 255);
setEffAlphaKey( spep_5 + 24 -1, base_5, 255);
setEffAlphaKey( spep_5 + 24, base_5, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 24 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 24;


-------------------------------------------------
-- 敵を右手で殴る（クローズアップ）	
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 42, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 42, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 42, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 42 -2, base_6f, 255);
setEffAlphaKey( spep_6 + 42 -1, base_6f, 255);
setEffAlphaKey( spep_6 + 42, base_6f, 0);

base_6b = entryEffect( spep_6 + 0, SP_07b, 0x80, -1, 0, 0, 0); -- ef_007_b
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 42, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 42, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 42, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 42 -2, base_6b, 255);
setEffAlphaKey( spep_6 + 42 -1, base_6b, 255);
setEffAlphaKey( spep_6 + 42, base_6b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 42 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
-- setDisp( spep_6 + 41, 1, 0 );

changeAnime( spep_6 + 0, 1, 7 );

setMoveKey( spep_6 + 0, 1, 430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 8, 1, 430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 9, 1, 430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 10, 1, 37.1, -83.8 , 0 );
setMoveKey( spep_6 - 3 + 11, 1, 37.1, -83.8 , 0 );
setMoveKey( spep_6 - 3 + 12, 1, 8.9, -109.4 , 0 );
setMoveKey( spep_6 - 3 + 13, 1, 8.9, -109.4 , 0 );
setMoveKey( spep_6 - 3 + 14, 1, -4, -141.5 , 0 );
setMoveKey( spep_6 - 3 + 15, 1, -4, -141.5 , 0 );
setMoveKey( spep_6 - 3 + 16, 1, 92.4, -47.9 , 0 );
setMoveKey( spep_6 - 3 + 17, 1, 92.4, -47.9 , 0 );
setMoveKey( spep_6 - 3 + 18, 1, 96.4, -71.7 , 0 );
setMoveKey( spep_6 - 3 + 19, 1, 96.4, -71.7 , 0 );
setMoveKey( spep_6 - 3 + 20, 1, 148.9, -53 , 0 );
setMoveKey( spep_6 - 3 + 23, 1, 148.9, -53 , 0 );
setMoveKey( spep_6 - 3 + 24, 1, 81.6, -75.5 , 0 );
setMoveKey( spep_6 - 3 + 25, 1, 81.6, -75.5 , 0 );
setMoveKey( spep_6 - 3 + 26, 1, 117, -53.5 , 0 );
setMoveKey( spep_6 - 3 + 27, 1, 117, -53.5 , 0 );
setMoveKey( spep_6 - 3 + 28, 1, 107.7, -78.3 , 0 );
setMoveKey( spep_6 - 3 + 29, 1, 107.7, -78.3 , 0 );
setMoveKey( spep_6 - 3 + 30, 1, 105.3, -46.5 , 0 );
setMoveKey( spep_6 - 3 + 31, 1, 105.3, -46.5 , 0 );
setMoveKey( spep_6 - 3 + 32, 1, 131, -50.2 , 0 );
setMoveKey( spep_6 - 3 + 33, 1, 131, -50.2 , 0 );
setMoveKey( spep_6 - 3 + 34, 1, 128.7, -64.6 , 0 );
setMoveKey( spep_6 - 3 + 35, 1, 128.7, -64.6 , 0 );
setMoveKey( spep_6 - 3 + 36, 1, 129.7, -54.7 , 0 );
setMoveKey( spep_6 - 3 + 37, 1, 129.7, -54.7 , 0 );
setMoveKey( spep_6 - 3 + 38, 1, 141.7, -73.5 , 0 );
setMoveKey( spep_6 - 3 + 39, 1, 141.7, -73.5 , 0 );
setMoveKey( spep_6 - 3 + 40, 1, 120.2, -56.6 , 0 );
setMoveKey( spep_6 - 3 + 41, 1, 120.2, -56.6 , 0 );
setMoveKey( spep_6 - 3 + 42, 1, 140.4, -69.5 , 0 );
setMoveKey( spep_6 - 3 + 43, 1, 140.4, -69.5 , 0 );
setMoveKey( spep_6 + 41, 1, 137.2, -49 , 0 );

setScaleKey( spep_6 + 0, 1, 4.44, 4.44 );
setScaleKey( spep_6 + 41, 1, 4.44, 4.44 );

setRotateKey( spep_6 + 0, 1, 25.2 );
setRotateKey( spep_6 + 41, 1, 25.2 );

-- ** 音 ** --
--ベジータパンチ
SE023 = playSeVer2( spep_6 + 0, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_6 + 6, 1359, "",spep_6 + 32, 0, 14, -1);
SE025 = playSeVer2( spep_6 + 10, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_6 + 10, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;


-------------------------------------------------
-- トランクスが左画面からインしてきて敵に蹴りこむ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0); -- ef_008
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 52, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, 1.0, 1.0);
setEffScaleKey( spep_7 + 52, base_7f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 52, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 52 -2, base_7f, 255);
setEffAlphaKey( spep_7 + 52 -1, base_7f, 255);
setEffAlphaKey( spep_7 + 52, base_7f, 0);

base_7b = entryEffect( spep_7 + 0, SP_08b, 0x80, -1, 0, 0, 0); -- ef_008_b
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 52, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, 1.0, 1.0);
setEffScaleKey( spep_7 + 52, base_7b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 52, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 52 -2, base_7b, 255);
setEffAlphaKey( spep_7 + 52 -1, base_7b, 255);
setEffAlphaKey( spep_7 + 52, base_7b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 52 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 52, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7 -3 + 26, 1, 106 );

setMoveKey( spep_7 + 0, 1, 45, 62.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 45, 62.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 46.3, 63.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 47.6, 63.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 48.9, 64.6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 50.2, 65.2 , 0 );
setMoveKey( spep_7 -3 + 15, 1, 50.2, 65.2 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 35.5, 101.2 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 35.5, 101.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 56.1, 28.1 , 0 );
setMoveKey( spep_7 -3 + 19, 1, 56.1, 28.1 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 89.5, 86.5 , 0 );
setMoveKey( spep_7 -3 + 21, 1, 89.5, 86.5 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 33, 48.7 , 0 );
setMoveKey( spep_7 -3 + 23, 1, 33, 48.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 39.9, 66.7 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 39.9, 66.7 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 85.7, 83.3 , 0 );
setMoveKey( spep_7 -3 + 27, 1, 85.7, 83.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 182.7, 120.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 252.6, 141.5 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 292.6, 167.8 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 321.2, 187.6 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 345.3, 198.9 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 362.4, 208.2 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 376.2, 215.8 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 388.3, 222.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 399.3, 228.3 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 409.4, 233.8 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 418.9, 238.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 427.9, 243.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 436.4, 248.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 444.4, 252.7 , 0 );
setMoveKey( spep_7 + 52, 1, 444.4, 252.7 , 0 );

setScaleKey( spep_7 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_7 + 52, 1, 2.25, 2.25 );

setRotateKey( spep_7 + 0, 1, -55.1 );
setRotateKey( spep_7 -3 + 6, 1, -55.1 );
setRotateKey( spep_7 -3 + 8, 1, -54.4 );
setRotateKey( spep_7 -3 + 10, 1, -53.8 );
setRotateKey( spep_7 -3 + 12, 1, -53.1 );
setRotateKey( spep_7 -3 + 14, 1, -52.5 );
setRotateKey( spep_7 -3 + 15, 1, -52.5 );
setRotateKey( spep_7 -3 + 16, 1, -51.8 );
setRotateKey( spep_7 -3 + 17, 1, -51.8 );
setRotateKey( spep_7 -3 + 18, 1, -51.1 );
setRotateKey( spep_7 -3 + 19, 1, -51.1 );
setRotateKey( spep_7 -3 + 20, 1, -50.5 );
setRotateKey( spep_7 -3 + 21, 1, -50.5 );
setRotateKey( spep_7 -3 + 22, 1, -49.8 );
setRotateKey( spep_7 -3 + 23, 1, -49.8 );
setRotateKey( spep_7 -3 + 24, 1, -49.1 );
setRotateKey( spep_7 -3 + 25, 1, -49.1 );
setRotateKey( spep_7 -3 + 26, 1, -90.6 );
setRotateKey( spep_7 -3 + 27, 1, -90.6 );
setRotateKey( spep_7 -3 + 28, 1, -86.5 );
setRotateKey( spep_7 -3 + 30, 1, -82.3 );
setRotateKey( spep_7 -3 + 32, 1, -78.2 );
setRotateKey( spep_7 -3 + 34, 1, -74 );
setRotateKey( spep_7 -3 + 36, 1, -69.9 );
setRotateKey( spep_7 -3 + 38, 1, -65.7 );
setRotateKey( spep_7 -3 + 40, 1, -61.5 );
setRotateKey( spep_7 -3 + 42, 1, -57.4 );
setRotateKey( spep_7 -3 + 44, 1, -53.2 );
setRotateKey( spep_7 -3 + 46, 1, -49.1 );
setRotateKey( spep_7 -3 + 48, 1, -44.9 );
setRotateKey( spep_7 -3 + 50, 1, -40.8 );
setRotateKey( spep_7 -3 + 52, 1, -36.6 );
setRotateKey( spep_7 -3 + 54, 1, -32.5 );
setRotateKey( spep_7 + 52, 1, -32.5 );

-- ** 音 ** --
--瞬間移動
SE027 = playSeVer2( spep_7 + 0, 1109, "", 0, 0, 0, -1);

--トランクスキック
SE028 = playSeVer2( spep_7 + 10, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_7 + 10, 1187, "",spep_7 + 100, 0, 64, -1);

-- ** 次の準備 ** --
spep_8 = spep_7 + 52;


-------------------------------------------------
-- 悟飯と悟天が映り込み瞬時に移動する	
-------------------------------------------------
-- ** エフェクト等 ** --
base_8 = entryEffect( spep_8 + 0, SP_09, 0x80, -1, 0, 0, 0); -- ef_009
setEffMoveKey( spep_8 + 0, base_8, 0, 0 , 0);
setEffMoveKey( spep_8 + 44, base_8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8, 1.0, 1.0);
setEffScaleKey( spep_8 + 44, base_8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8, 0);
setEffRotateKey( spep_8 + 44, base_8, 0);
setEffAlphaKey( spep_8 + 0, base_8, 255);
setEffAlphaKey( spep_8 + 44 -1, base_8, 255);
setEffAlphaKey( spep_8 + 44, base_8, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 44 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--瞬間移動
SE030 = playSeVer2( spep_8 + 12, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_8 + 30, 1109, "", 0, 0, 0, -1);

--オーラ
SE033 = playSeVer2( spep_8 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE033, 50 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 44;


-------------------------------------------------
-- 悟天が気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_9 = entryEffect( spep_9 + 0, SP_10, 0x80, -1, 0, 0, 0); -- ef_010
setEffMoveKey( spep_9 + 0, base_9, 0, 0 , 0);
setEffMoveKey( spep_9 + 56, base_9, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9, 1.0, 1.0);
setEffScaleKey( spep_9 + 56, base_9, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9, 0);
setEffRotateKey( spep_9 + 56, base_9, 0);
setEffAlphaKey( spep_9 + 0, base_9, 255);
setEffAlphaKey( spep_9 + 56 -2, base_9, 255);
setEffAlphaKey( spep_9 + 56 -1, base_9, 255);
setEffAlphaKey( spep_9 + 56, base_9, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--かめはめ波溜め
SE031 = playSeVer2( spep_9 + 12, 1210, "",spep_9 + 152, 26, 22, 0.6);
setStartTimeMs( SE031,  650 );
SE035 = playSeVer2( spep_9 + 12, 1209, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_9 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 6, SE034, 50 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


-------------------------------------------------
-- 空中にいる悟飯と地上にいる悟天が敵を挟み気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_10f = entryEffect( spep_10 + 0, SP_11, 0x100, -1, 0, 0, 0); -- ef_011
setEffMoveKey( spep_10 + 0, base_10f, 0, 0 , 0);
setEffMoveKey( spep_10 + 64, base_10f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10f, 1.0, 1.0);
setEffScaleKey( spep_10 + 64, base_10f, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10f, 0);
setEffRotateKey( spep_10 + 64, base_10f, 0);
setEffAlphaKey( spep_10 + 0, base_10f, 255);
setEffAlphaKey( spep_10 + 64 -2, base_10f, 255);
setEffAlphaKey( spep_10 + 64 -1, base_10f, 255);
setEffAlphaKey( spep_10 + 64, base_10f, 0);

base_10b = entryEffect( spep_10 + 0, SP_11b, 0x80, -1, 0, 0, 0); -- ef_011_b
setEffMoveKey( spep_10 + 0, base_10b, 0, 0 , 0);
setEffMoveKey( spep_10 + 64, base_10b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10b, 1.0, 1.0);
setEffScaleKey( spep_10 + 64, base_10b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10b, 0);
setEffRotateKey( spep_10 + 64, base_10b, 0);
setEffAlphaKey( spep_10 + 0, base_10b, 255);
setEffAlphaKey( spep_10 + 64 -2, base_10b, 255);
setEffAlphaKey( spep_10 + 64 -1, base_10b, 255);
setEffAlphaKey( spep_10 + 64, base_10b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 64 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 64, 1, 0 );

changeAnime( spep_10 + 0, 1, 107 );

setMoveKey( spep_10 + 0, 1, 57.8, -53.2 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 57.8, -53.2 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 58.3, -53.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 58.8, -53.7 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 59.3, -53.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 59.8, -54.2 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 60.4, -54.5 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 60.9, -54.7 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 61.4, -55 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 61.9, -55.2 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 62.4, -55.5 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 63, -55.8 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 63.5, -56 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 64, -56.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 64.5, -56.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 65, -56.8 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 65.6, -57.1 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 66.1, -57.3 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 66.6, -57.6 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 67.1, -57.8 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 67.6, -58.1 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 68.2, -58.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 68.7, -58.6 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 69.2, -58.9 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 69.7, -59.1 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 70.3, -59.4 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 70.8, -59.7 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 71.3, -59.9 , 0 );
setMoveKey( spep_10 -3 + 60, 1, 71.8, -60.2 , 0 );
setMoveKey( spep_10 -3 + 62, 1, 72.3, -60.4 , 0 );
setMoveKey( spep_10 -3 + 64, 1, 72.9, -60.7 , 0 );
setMoveKey( spep_10 -3 + 66, 1, 73.4, -61 , 0 );
setMoveKey( spep_10 + 64, 1, 73.4, -61 , 0 );

setScaleKey( spep_10 + 0, 1, 0.12, 0.12 );
setScaleKey( spep_10 -3 + 26, 1, 0.12, 0.12 );
setScaleKey( spep_10 + 64, 1, 0.11, 0.11 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -3 + 6, 1, 0 );
setRotateKey( spep_10 -3 + 8, 1, 0.3 );
setRotateKey( spep_10 -3 + 10, 1, 0.6 );
setRotateKey( spep_10 -3 + 12, 1, 1 );
setRotateKey( spep_10 -3 + 14, 1, 1.3 );
setRotateKey( spep_10 -3 + 16, 1, 1.6 );
setRotateKey( spep_10 -3 + 18, 1, 1.9 );
setRotateKey( spep_10 -3 + 20, 1, 2.3 );
setRotateKey( spep_10 -3 + 22, 1, 2.6 );
setRotateKey( spep_10 -3 + 24, 1, 2.9 );
setRotateKey( spep_10 -3 + 26, 1, 3.2 );
setRotateKey( spep_10 -3 + 28, 1, 3.6 );
setRotateKey( spep_10 -3 + 30, 1, 3.9 );
setRotateKey( spep_10 -3 + 32, 1, 4.2 );
setRotateKey( spep_10 -3 + 34, 1, 4.5 );
setRotateKey( spep_10 -3 + 36, 1, 4.9 );
setRotateKey( spep_10 -3 + 38, 1, 5.2 );
setRotateKey( spep_10 -3 + 40, 1, 5.5 );
setRotateKey( spep_10 -3 + 42, 1, 5.8 );
setRotateKey( spep_10 -3 + 44, 1, 6.2 );
setRotateKey( spep_10 -3 + 46, 1, 6.5 );
setRotateKey( spep_10 -3 + 48, 1, 6.8 );
setRotateKey( spep_10 -3 + 50, 1, 7.1 );
setRotateKey( spep_10 -3 + 52, 1, 7.5 );
setRotateKey( spep_10 -3 + 54, 1, 7.8 );
setRotateKey( spep_10 -3 + 56, 1, 8.1 );
setRotateKey( spep_10 -3 + 58, 1, 8.4 );
setRotateKey( spep_10 -3 + 60, 1, 8.8 );
setRotateKey( spep_10 -3 + 62, 1, 9.1 );
setRotateKey( spep_10 -3 + 64, 1, 9.4 );
setRotateKey( spep_10 -3 + 66, 1, 9.7 );
setRotateKey( spep_10 + 64, 1, 9.7 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( spep_10 + 0, 1109, "", 0, 0, 0, -1);

--かめはめ波溜め
SE037 = playSeVer2( spep_10 + 16, 1209, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_11 = spep_10 + 64;


-------------------------------------------------
-- 左に悟飯、右に悟天がバストアップで映り気弾をうつ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_11 = entryEffect( spep_11 + 0, SP_12, 0x80, -1, 0, 0, 0); -- ef_012
setEffMoveKey( spep_11 + 0, base_11, 0, 0 , 0);
setEffMoveKey( spep_11 + 62, base_11, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11, 1.0, 1.0);
setEffScaleKey( spep_11 + 62, base_11, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11, 0);
setEffRotateKey( spep_11 + 62, base_11, 0);
setEffAlphaKey( spep_11 + 0, base_11, 255);
setEffAlphaKey( spep_11 + 62 -2, base_11, 255);
setEffAlphaKey( spep_11 + 62 -1, base_11, 255);
setEffAlphaKey( spep_11 + 62, base_11, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 62 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--かめはめ波発射
SE038 = playSeVer2( spep_11 + 8, 1133, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_11 + 8, 1284, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_11 + 8, 1213, "",spep_11 + 108, 0, 14, -1);

-- ** 次の準備 ** --
spep_12 = spep_11 + 62;


-------------------------------------------------
-- 気弾同士が敵にぶつかり爆発でフィニッシュ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_12f = entryEffect( spep_12 + 0, SP_13, 0x100, -1, 0, 0, 0); -- ef_013
setEffMoveKey( spep_12 + 0, base_12f, 0, 0 , 0);
setEffMoveKey( spep_12 + 146, base_12f, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base_12f, 1.0, 1.0);
setEffScaleKey( spep_12 + 146, base_12f, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base_12f, 0);
setEffRotateKey( spep_12 + 146, base_12f, 0);
setEffAlphaKey( spep_12 + 0, base_12f, 255);
setEffAlphaKey( spep_12 + 146, base_12f, 255);

base_12b = entryEffect( spep_12 + 0, SP_13b, 0x80, -1, 0, 0, 0); -- ef_013_b
setEffMoveKey( spep_12 + 0, base_12b, 0, 0 , 0);
setEffMoveKey( spep_12 + 146, base_12b, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base_12b, 1.0, 1.0);
setEffScaleKey( spep_12 + 146, base_12b, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base_12b, 0);
setEffRotateKey( spep_12 + 146, base_12b, 0);
setEffAlphaKey( spep_12 + 0, base_12b, 255);
setEffAlphaKey( spep_12 + 146, base_12b, 255);

-- ** 集中線 ** --
shuchusen_N = entryEffectLife( spep_12 + 92, 906, 54, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_12 + 92, shuchusen_N, 146, 20 );
setEffMoveKey( spep_12 + 92, shuchusen_N, 0, 0, 0 );
setEffMoveKey( spep_12 + 146, shuchusen_N, 0, 0, 0 );
setEffScaleKey( spep_12 + 92, shuchusen_N, 1.6, 1.6 );
setEffScaleKey( spep_12 + 146, shuchusen_N, 1.6, 1.6 );
setEffRotateKey( spep_12 + 92, shuchusen_N, 0 );
setEffRotateKey( spep_12 + 146, shuchusen_N, 0 );
setEffAlphaKey( spep_12 + 92, shuchusen_N, 255 );
setEffAlphaKey( spep_12 + 146, shuchusen_N, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 146 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 29, 1, 0 );

changeAnime( spep_12 + 0, 1, 105 );

setMoveKey( spep_12 + 0, 1, -1.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 6, 1, -1.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 8, 1, -1.5, -28.9 , 0 );
setMoveKey( spep_12 -3 + 10, 1, -1.7, -28.9 , 0 );
setMoveKey( spep_12 -3 + 12, 1, -2, -28.9 , 0 );
setMoveKey( spep_12 -3 + 14, 1, -2.2, -28.9 , 0 );
setMoveKey( spep_12 -3 + 16, 1, -2.4, -28.9 , 0 );
setMoveKey( spep_12 -3 + 18, 1, -2.6, -28.9 , 0 );
setMoveKey( spep_12 -3 + 20, 1, -2.9, -28.9 , 0 );
setMoveKey( spep_12 -3 + 22, 1, -3.1, -28.9 , 0 );
setMoveKey( spep_12 -3 + 24, 1, -3.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 26, 1, -3.5, -28.9 , 0 );
setMoveKey( spep_12 + 29, 1, -3.5, -28.9 , 0 );

setScaleKey( spep_12 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_12 -3 + 6, 1, 0.33, 0.33 );
setScaleKey( spep_12 -3 + 8, 1, 0.31, 0.31 );
setScaleKey( spep_12 -3 + 10, 1, 0.3, 0.3 );
setScaleKey( spep_12 -3 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_12 -3 + 14, 1, 0.28, 0.28 );
setScaleKey( spep_12 -3 + 16, 1, 0.26, 0.26 );
setScaleKey( spep_12 -3 + 18, 1, 0.25, 0.25 );
setScaleKey( spep_12 -3 + 20, 1, 0.24, 0.24 );
setScaleKey( spep_12 -3 + 22, 1, 0.23, 0.23 );
setScaleKey( spep_12 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_12 -3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_12 + 29, 1, 0.2, 0.2 );

setRotateKey( spep_12 + 0, 1, 0 );
setRotateKey( spep_12 + 29, 1, 0 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE041 = playSeVer2( spep_12 + 0, 1021, "", 0, 0, 0, 0.6);

--爆発
SE042 = playSeVer2( spep_12 + 32, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_12 + 32, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE044 = playSeVer2( spep_12 + 82, 1188, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_12 + 86, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 28); -- ダメージ表示フレーム
endPhase( spep_12 + 146 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 4人が構えてる
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 112, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 112, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 112, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 112, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--顔カットイン
--SE001 = playSeVer2( spep_0 + 28, 1018, "", 0, 0, 0, -1);

--集中線
SE002 = playSeVer2( spep_0 + 14, 20, "",spep_0 + 122, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 14, 13, "",spep_0 + 122, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 112;

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
SE_CUTIN = playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- ベジータが叫んでズームアウト
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 72, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 72, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 72, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 72, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 72 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気ダメ
SE005 = playSeVer2( spep_1 + 0, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 46 );
SE006 = playSeVer2( spep_1 + 0, 1358, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 8, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE007, 127 );
SE008 = playSeVer2( spep_1 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE008, 83 );
SE009 = playSeVer2( spep_1 + 8, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE009, 71 );

--オーラ
SE010 = playSeVer2( spep_1 + 8, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 32, 1036, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
spep_2 = spep_1 + 72;

-------------------------------------------------
-- ベジータが奥の敵に突っ込んでいく
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003_r
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 42, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 42, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 42, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 42 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 42 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 42, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_003_b
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 42, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 42, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 42, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 42 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 42 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 42, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 42 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
a2 = -7
setDisp( spep_2 + a2 + 12, 1, 1 );
-- setDisp( spep_2 + 42, 1, 0 );

changeAnime( spep_2 +a2 + 12, 1, 100 );

setMoveKey( spep_2 +a2 + 12, 1, 267, -78.5 , 0 );
setMoveKey( spep_2 +a2 + 22, 1, 267, -78.5 , 0 );
setMoveKey( spep_2 +a2 + 24, 1, 266.6, -78.2 , 0 );
setMoveKey( spep_2 +a2 + 26, 1, 266.6, -78.2 , 0 );
setMoveKey( spep_2 +a2 + 28, 1, 265.8, -77.8 , 0 );
setMoveKey( spep_2 +a2 + 30, 1, 265.8, -77.8 , 0 );
setMoveKey( spep_2 +a2 + 32, 1, 265.4, -77.5 , 0 );
setMoveKey( spep_2 +a2 + 34, 1, 265.4, -77.5 , 0 );
setMoveKey( spep_2 +a2 + 36, 1, 264.9, -77.2 , 0 );
setMoveKey( spep_2 +a2 + 38, 1, 264.9, -77.2 , 0 );
setMoveKey( spep_2 +a2 + 40, 1, 264.4, -76.9 , 0 );
setMoveKey( spep_2 +a2 + 42, 1, 263.9, -76.6 , 0 );
setMoveKey( spep_2 + 41, 1, 263.9, -76.6 , 0 );

setScaleKey( spep_2 +a2 + 12, 1, 0.44, 0.44 );
setScaleKey( spep_2 +a2 + 22, 1, 0.44, 0.44 );
setScaleKey( spep_2 +a2 + 24, 1, 0.45, 0.45 );
setScaleKey( spep_2 +a2 + 26, 1, 0.45, 0.45 );
setScaleKey( spep_2 +a2 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_2 +a2 + 30, 1, 0.47, 0.47 );
setScaleKey( spep_2 +a2 + 32, 1, 0.48, 0.48 );
setScaleKey( spep_2 +a2 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_2 +a2 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_2 +a2 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_2 +a2 + 40, 1, 0.5, 0.5 );
setScaleKey( spep_2 +a2 + 42, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 41, 1, 0.52, 0.52 );

setRotateKey( spep_2 +a2 + 12, 1, 14.9 );
setRotateKey( spep_2 + 41, 1, 14.9 );

-- ** 音 ** --
--ベジータ向かっていく
SE012 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 0, 9, "",spep_2 + 66, 0, 10, -1);

--瞬間移動
SE014 = playSeVer2( spep_2 + 32, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 42;


-------------------------------------------------
-- 敵の背後に回り込み蹴る	
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 50, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 50, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 50, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 50 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 50, base_3f, 255);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_b
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 50, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 50, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 50, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 50 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 50, base_3b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 50 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep3 -3 + 0, 1, 1 );
setDisp( spep_3 + 50, 1, 0 );

changeAnime( spep_3 + 0, 1, 0 );
changeAnime( spep_3 -3 + 28, 1, 107 );

-- setMoveKey( spep_3 -3 + 0, 1, 228.1, -224 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 228, -224.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 228, -224.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 225.1, -224.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 222.2, -224.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 219.3, -224.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 216.4, -224.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 213.5, -224.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 210.6, -224.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 207.7, -224.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 204.8, -224.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 201.9, -224.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 199, -224.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 121.6, 230.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 417.4, 348.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 636.3, 453.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 932.5, 513.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 1161.9, 602.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 1458.1, 736 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 1675.3, 818.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 1783.9, 849 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1864, 876.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1944.1, 903.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 2024.2, 931.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 2104.3, 958.4 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 2184.4, 985.8 , 0 );

setScaleKey( spep_3 + 0, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 27, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 28, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 30, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 32, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 34, 1, 3.8, 3.8 );
setScaleKey( spep_3 -3 + 36, 1, 4.31, 4.31 );
setScaleKey( spep_3 -3 + 38, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 40, 1, 5.31, 5.31 );
setScaleKey( spep_3 -3 + 42, 1, 5.48, 5.48 );
setScaleKey( spep_3 -3 + 44, 1, 5.64, 5.64 );
setScaleKey( spep_3 -3 + 46, 1, 5.81, 5.81 );
setScaleKey( spep_3 -3 + 48, 1, 5.98, 5.98 );
setScaleKey( spep_3 -3 + 50, 1, 6.15, 6.15 );
setScaleKey( spep_3 -3 + 53, 1, 6.31, 6.31 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 27, 1, 0 );
setRotateKey( spep_3 -3 + 28, 1, -42.7 );
setRotateKey( spep_3 -3 + 53, 1, -42.7 );

-- ** 音 ** --
--ベジータ蹴り飛ばす
SE015 = playSeVer2( spep_3 + 14, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE016, 83 );
SE017 = playSeVer2( spep_3 + 22, 1359, "",spep_3 + 46, 0, 10, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 50;


-------------------------------------------------
-- 飛んできた敵を下からインしてトランクスが拳を突き上げる
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 64, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 64, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 64, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 64 -2, base_4f, 255);
setEffAlphaKey( spep_4 + 64 -1, base_4f, 255);
setEffAlphaKey( spep_4 + 64, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- ef_005_b
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 64, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 64, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 64, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 64 -2, base_4b, 255);
setEffAlphaKey( spep_4 + 64 -1, base_4b, 255);
setEffAlphaKey( spep_4 + 64, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 64 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 6, 1, 1 );
setDisp( spep_4 + 64, 1, 0 );

changeAnime( spep_4 + 6, 1, 6 );
changeAnime( spep_4 -3 + 32, 1, 8 );

setMoveKey( spep_4 + 6, 1, -567, -196.8 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, -503.3, -165.3 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, -439.6, -133.7 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, -375.9, -102.1 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, -312.2, -70.6 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, -248.4, -39 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, -184.8, -7.4 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, -121, 24.1 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, -57.3, 55.7 , 0 );
setMoveKey( spep_4 - 3 + 27, 1, 6.4, 87.3 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, 46.9, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 33, 1, 46.9, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, 5.9, 141.2 , 0 );
setMoveKey( spep_4 - 3 + 35, 1, 5.9, 141.2 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, 38.7, 149.9 , 0 );
setMoveKey( spep_4 - 3 + 37, 1, 38.7, 149.9 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, 5.9, 134.2 , 0 );
setMoveKey( spep_4 - 3 + 39, 1, 5.9, 134.2 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, 34.6, 179.7 , 0 );
setMoveKey( spep_4 - 3 + 41, 1, 34.6, 179.7 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, 10, 213 , 0 );
setMoveKey( spep_4 - 3 + 43, 1, 10, 213 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, 42.8, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 45, 1, 42.8, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, 14.1, 193.8 , 0 );
setMoveKey( spep_4 - 3 + 47, 1, 14.1, 193.8 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, 34.6, 139.3 , 0 );
setMoveKey( spep_4 - 3 + 49, 1, 34.6, 139.3 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, 14.1, 178.7 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, 14.1, 173.2 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, 14.1, 167.7 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, 14.1, 162.2 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, 14.1, 156.7 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, 14.1, 151.2 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, 14.1, 145.7 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, 14.1, 140.2 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, 14.1, 134.7 , 0 );
setMoveKey( spep_4 + 64, 1, 14.1, 134.7 , 0 );

setScaleKey( spep_4 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 27, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 32, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 64, 1, 2.35, 2.35 );

setRotateKey( spep_4 + 6, 1, 110.8 );
setRotateKey( spep_4 - 3 + 27, 1, 110.8 );
setRotateKey( spep_4 - 3 + 32, 1, 90 );
setRotateKey( spep_4 - 3 + 46, 1, 90 );
setRotateKey( spep_4 - 3 + 47, 1, 90 );
setRotateKey( spep_4 - 3 + 48, 1, 89.7 );
setRotateKey( spep_4 - 3 + 49, 1, 89.7 );
setRotateKey( spep_4 - 3 + 50, 1, 89.3 );
setRotateKey( spep_4 - 3 + 52, 1, 89 );
setRotateKey( spep_4 - 3 + 54, 1, 88.7 );
setRotateKey( spep_4 - 3 + 56, 1, 88.3 );
setRotateKey( spep_4 - 3 + 58, 1, 88 );
setRotateKey( spep_4 - 3 + 60, 1, 87.6 );
setRotateKey( spep_4 - 3 + 62, 1, 87.3 );
setRotateKey( spep_4 - 3 + 64, 1, 87 );
setRotateKey( spep_4 - 3 + 66, 1, 86.6 );
setRotateKey( spep_4 + 64, 1, 86.6 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_4 + 0, 1109, "", 0, 0, 0, -1);

--トランクスアッパー
SE019 = playSeVer2( spep_4 + 30, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 32, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 32, 1153, "", 0, 0, 0, -1);

--画面遷移
SE022 = playSeVer2( spep_4 + 46, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 64;


-------------------------------------------------
-- ベジータが正面に突っ込んで来る	
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 24, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, -1.0, 1.0);
setEffScaleKey( spep_5 + 24, base_5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 24, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 24 -2, base_5, 255);
setEffAlphaKey( spep_5 + 24 -1, base_5, 255);
setEffAlphaKey( spep_5 + 24, base_5, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 24 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 24;


-------------------------------------------------
-- 敵を右手で殴る（クローズアップ）	
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 42, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, -1.0, 1.0);
setEffScaleKey( spep_6 + 42, base_6f, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 42, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 42 -2, base_6f, 255);
setEffAlphaKey( spep_6 + 42 -1, base_6f, 255);
setEffAlphaKey( spep_6 + 42, base_6f, 0);

base_6b = entryEffect( spep_6 + 0, SP_07b, 0x80, -1, 0, 0, 0); -- ef_007_b
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 42, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, -1.0, 1.0);
setEffScaleKey( spep_6 + 42, base_6b, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 42, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 42 -2, base_6b, 255);
setEffAlphaKey( spep_6 + 42 -1, base_6b, 255);
setEffAlphaKey( spep_6 + 42, base_6b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 42 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
-- setDisp( spep_6 + 41, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 8, 1, -430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 9, 1, -430.8, 119.5 , 0 );
setMoveKey( spep_6 - 3 + 10, 1, -37.1, -83.8 , 0 );
setMoveKey( spep_6 - 3 + 11, 1, -37.1, -83.8 , 0 );
setMoveKey( spep_6 - 3 + 12, 1, -8.9, -109.4 , 0 );
setMoveKey( spep_6 - 3 + 13, 1, -8.9, -109.4 , 0 );
setMoveKey( spep_6 - 3 + 14, 1, 4, -141.5 , 0 );
setMoveKey( spep_6 - 3 + 15, 1, 4, -141.5 , 0 );
setMoveKey( spep_6 - 3 + 16, 1, -92.4, -47.9 , 0 );
setMoveKey( spep_6 - 3 + 17, 1, -92.4, -47.9 , 0 );
setMoveKey( spep_6 - 3 + 18, 1, -96.4, -71.7 , 0 );
setMoveKey( spep_6 - 3 + 19, 1, -96.4, -71.7 , 0 );
setMoveKey( spep_6 - 3 + 20, 1, -148.9, -53 , 0 );
setMoveKey( spep_6 - 3 + 23, 1, -148.9, -53 , 0 );
setMoveKey( spep_6 - 3 + 24, 1, -81.6, -75.5 , 0 );
setMoveKey( spep_6 - 3 + 25, 1, -81.6, -75.5 , 0 );
setMoveKey( spep_6 - 3 + 26, 1, -117, -53.5 , 0 );
setMoveKey( spep_6 - 3 + 27, 1, -117, -53.5 , 0 );
setMoveKey( spep_6 - 3 + 28, 1, -107.7, -78.3 , 0 );
setMoveKey( spep_6 - 3 + 29, 1, -107.7, -78.3 , 0 );
setMoveKey( spep_6 - 3 + 30, 1, -105.3, -46.5 , 0 );
setMoveKey( spep_6 - 3 + 31, 1, -105.3, -46.5 , 0 );
setMoveKey( spep_6 - 3 + 32, 1, -131, -50.2 , 0 );
setMoveKey( spep_6 - 3 + 33, 1, -131, -50.2 , 0 );
setMoveKey( spep_6 - 3 + 34, 1, -128.7, -64.6 , 0 );
setMoveKey( spep_6 - 3 + 35, 1, -128.7, -64.6 , 0 );
setMoveKey( spep_6 - 3 + 36, 1, -129.7, -54.7 , 0 );
setMoveKey( spep_6 - 3 + 37, 1, -129.7, -54.7 , 0 );
setMoveKey( spep_6 - 3 + 38, 1, -141.7, -73.5 , 0 );
setMoveKey( spep_6 - 3 + 39, 1, -141.7, -73.5 , 0 );
setMoveKey( spep_6 - 3 + 40, 1, -120.2, -56.6 , 0 );
setMoveKey( spep_6 - 3 + 41, 1, -120.2, -56.6 , 0 );
setMoveKey( spep_6 - 3 + 42, 1, -140.4, -69.5 , 0 );
setMoveKey( spep_6 - 3 + 43, 1, -140.4, -69.5 , 0 );
setMoveKey( spep_6 + 41, 1, -137.2, -49 , 0 );

setScaleKey( spep_6 + 0, 1, 4.44, 4.44 );
setScaleKey( spep_6 + 41, 1, 4.44, 4.44 );

setRotateKey( spep_6 + 0, 1, -25.2 );
setRotateKey( spep_6 + 41, 1, -25.2 );

-- ** 音 ** --
--ベジータパンチ
SE023 = playSeVer2( spep_6 + 0, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_6 + 6, 1359, "",spep_6 + 32, 0, 14, -1);
SE025 = playSeVer2( spep_6 + 10, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_6 + 10, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;


-------------------------------------------------
-- トランクスが左画面からインしてきて敵に蹴りこむ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0); -- ef_008
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 52, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, -1.0, 1.0);
setEffScaleKey( spep_7 + 52, base_7f, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 52, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 52 -2, base_7f, 255);
setEffAlphaKey( spep_7 + 52 -1, base_7f, 255);
setEffAlphaKey( spep_7 + 52, base_7f, 0);

base_7b = entryEffect( spep_7 + 0, SP_08b, 0x80, -1, 0, 0, 0); -- ef_008_b
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 52, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, -1.0, 1.0);
setEffScaleKey( spep_7 + 52, base_7b, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 52, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 52 -2, base_7b, 255);
setEffAlphaKey( spep_7 + 52 -1, base_7b, 255);
setEffAlphaKey( spep_7 + 52, base_7b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 52 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 52, 1, 0 );

changeAnime( spep_7 + 0, 1, 8 );
changeAnime( spep_7 -3 + 26, 1, 6 );

setMoveKey( spep_7 + 0, 1, -45, 62.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -45, 62.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -46.3, 63.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -47.6, 63.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -48.9, 64.6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -50.2, 65.2 , 0 );
setMoveKey( spep_7 -3 + 15, 1, -50.2, 65.2 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -35.5, 101.2 , 0 );
setMoveKey( spep_7 -3 + 17, 1, -35.5, 101.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -56.1, 28.1 , 0 );
setMoveKey( spep_7 -3 + 19, 1, -56.1, 28.1 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -89.5, 86.5 , 0 );
setMoveKey( spep_7 -3 + 21, 1, -89.5, 86.5 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -33, 48.7 , 0 );
setMoveKey( spep_7 -3 + 23, 1, -33, 48.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -39.9, 66.7 , 0 );
setMoveKey( spep_7 -3 + 25, 1, -39.9, 66.7 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -85.7, 83.3 , 0 );
setMoveKey( spep_7 -3 + 27, 1, -85.7, 83.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -182.7, 120.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -252.6, 141.5 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -292.6, 167.8 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -321.2, 187.6 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -345.3, 198.9 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -362.4, 208.2 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -376.2, 215.8 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -388.3, 222.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -399.3, 228.3 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -409.4, 233.8 , 0 );
setMoveKey( spep_7 -3 + 48, 1, -418.9, 238.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, -427.9, 243.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -436.4, 248.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -444.4, 252.7 , 0 );
setMoveKey( spep_7 + 52, 1, -444.4, 252.7 , 0 );

setScaleKey( spep_7 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_7 + 52, 1, 2.25, 2.25 );

setRotateKey( spep_7 + 0, 1, 55.1 );
setRotateKey( spep_7 -3 + 6, 1, 55.1 );
setRotateKey( spep_7 -3 + 8, 1, 54.4 );
setRotateKey( spep_7 -3 + 10, 1, 53.8 );
setRotateKey( spep_7 -3 + 12, 1, 53.1 );
setRotateKey( spep_7 -3 + 14, 1, 52.5 );
setRotateKey( spep_7 -3 + 15, 1, 52.5 );
setRotateKey( spep_7 -3 + 16, 1, 51.8 );
setRotateKey( spep_7 -3 + 17, 1, 51.8 );
setRotateKey( spep_7 -3 + 18, 1, 51.1 );
setRotateKey( spep_7 -3 + 19, 1, 51.1 );
setRotateKey( spep_7 -3 + 20, 1, 50.5 );
setRotateKey( spep_7 -3 + 21, 1, 50.5 );
setRotateKey( spep_7 -3 + 22, 1, 49.8 );
setRotateKey( spep_7 -3 + 23, 1, 49.8 );
setRotateKey( spep_7 -3 + 24, 1, 49.1 );
setRotateKey( spep_7 -3 + 25, 1, 49.1 );
setRotateKey( spep_7 -3 + 26, 1, 90.6 );
setRotateKey( spep_7 -3 + 27, 1, 90.6 );
setRotateKey( spep_7 -3 + 28, 1, 86.5 );
setRotateKey( spep_7 -3 + 30, 1, 82.3 );
setRotateKey( spep_7 -3 + 32, 1, 78.2 );
setRotateKey( spep_7 -3 + 34, 1, 74 );
setRotateKey( spep_7 -3 + 36, 1, 69.9 );
setRotateKey( spep_7 -3 + 38, 1, 65.7 );
setRotateKey( spep_7 -3 + 40, 1, 61.5 );
setRotateKey( spep_7 -3 + 42, 1, 57.4 );
setRotateKey( spep_7 -3 + 44, 1, 53.2 );
setRotateKey( spep_7 -3 + 46, 1, 49.1 );
setRotateKey( spep_7 -3 + 48, 1, 44.9 );
setRotateKey( spep_7 -3 + 50, 1, 40.8 );
setRotateKey( spep_7 -3 + 52, 1, 36.6 );
setRotateKey( spep_7 -3 + 54, 1, 32.5 );
setRotateKey( spep_7 + 52, 1, 32.5 );

-- ** 音 ** --
--瞬間移動
SE027 = playSeVer2( spep_7 + 0, 1109, "", 0, 0, 0, -1);

--トランクスキック
SE028 = playSeVer2( spep_7 + 10, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_7 + 10, 1187, "",spep_7 + 100, 0, 64, -1);

-- ** 次の準備 ** --
spep_8 = spep_7 + 52;


-------------------------------------------------
-- 悟飯と悟天が映り込み瞬時に移動する	
-------------------------------------------------
-- ** エフェクト等 ** --
base_8 = entryEffect( spep_8 + 0, SP_09, 0x80, -1, 0, 0, 0); -- ef_009
setEffMoveKey( spep_8 + 0, base_8, 0, 0 , 0);
setEffMoveKey( spep_8 + 44, base_8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8, -1.0, 1.0);
setEffScaleKey( spep_8 + 44, base_8, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8, 0);
setEffRotateKey( spep_8 + 44, base_8, 0);
setEffAlphaKey( spep_8 + 0, base_8, 255);
setEffAlphaKey( spep_8 + 44 -1, base_8, 255);
setEffAlphaKey( spep_8 + 44, base_8, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 44 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--瞬間移動
SE030 = playSeVer2( spep_8 + 12, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_8 + 30, 1109, "", 0, 0, 0, -1);

--オーラ
SE033 = playSeVer2( spep_8 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE033, 50 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 44;


-------------------------------------------------
-- 悟天が気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_9 = entryEffect( spep_9 + 0, SP_10, 0x80, -1, 0, 0, 0); -- ef_010
setEffMoveKey( spep_9 + 0, base_9, 0, 0 , 0);
setEffMoveKey( spep_9 + 56, base_9, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9, -1.0, 1.0);
setEffScaleKey( spep_9 + 56, base_9, -1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9, 0);
setEffRotateKey( spep_9 + 56, base_9, 0);
setEffAlphaKey( spep_9 + 0, base_9, 255);
setEffAlphaKey( spep_9 + 56 -2, base_9, 255);
setEffAlphaKey( spep_9 + 56 -1, base_9, 255);
setEffAlphaKey( spep_9 + 56, base_9, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--かめはめ波溜め
SE031 = playSeVer2( spep_9 + 12, 1210, "",spep_9 + 152, 26, 22, 0.6);
setStartTimeMs( SE031,  650 );
SE035 = playSeVer2( spep_9 + 12, 1209, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_9 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 6, SE034, 50 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


-------------------------------------------------
-- 空中にいる悟飯と地上にいる悟天が敵を挟み気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_10f = entryEffect( spep_10 + 0, SP_11, 0x100, -1, 0, 0, 0); -- ef_011
setEffMoveKey( spep_10 + 0, base_10f, 0, 0 , 0);
setEffMoveKey( spep_10 + 64, base_10f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10f, -1.0, 1.0);
setEffScaleKey( spep_10 + 64, base_10f, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10f, 0);
setEffRotateKey( spep_10 + 64, base_10f, 0);
setEffAlphaKey( spep_10 + 0, base_10f, 255);
setEffAlphaKey( spep_10 + 64 -2, base_10f, 255);
setEffAlphaKey( spep_10 + 64 -1, base_10f, 255);
setEffAlphaKey( spep_10 + 64, base_10f, 0);

base_10b = entryEffect( spep_10 + 0, SP_11b, 0x80, -1, 0, 0, 0); -- ef_011_b
setEffMoveKey( spep_10 + 0, base_10b, 0, 0 , 0);
setEffMoveKey( spep_10 + 64, base_10b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10b, -1.0, 1.0);
setEffScaleKey( spep_10 + 64, base_10b, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10b, 0);
setEffRotateKey( spep_10 + 64, base_10b, 0);
setEffAlphaKey( spep_10 + 0, base_10b, 255);
setEffAlphaKey( spep_10 + 64 -2, base_10b, 255);
setEffAlphaKey( spep_10 + 64 -1, base_10b, 255);
setEffAlphaKey( spep_10 + 64, base_10b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 64 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 64, 1, 0 );

changeAnime( spep_10 + 0, 1, 7 );

setMoveKey( spep_10 + 0, 1, -57.8, -53.2 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -57.8, -53.2 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -58.3, -53.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -58.8, -53.7 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -59.3, -53.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -59.8, -54.2 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -60.4, -54.5 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -60.9, -54.7 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -61.4, -55 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -61.9, -55.2 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -62.4, -55.5 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -63, -55.8 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -63.5, -56 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -64, -56.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -64.5, -56.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -65, -56.8 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -65.6, -57.1 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -66.1, -57.3 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -66.6, -57.6 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -67.1, -57.8 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -67.6, -58.1 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -68.2, -58.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -68.7, -58.6 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -69.2, -58.9 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -69.7, -59.1 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -70.3, -59.4 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -70.8, -59.7 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -71.3, -59.9 , 0 );
setMoveKey( spep_10 -3 + 60, 1, -71.8, -60.2 , 0 );
setMoveKey( spep_10 -3 + 62, 1, -72.3, -60.4 , 0 );
setMoveKey( spep_10 -3 + 64, 1, -72.9, -60.7 , 0 );
setMoveKey( spep_10 -3 + 66, 1, -73.4, -61 , 0 );
setMoveKey( spep_10 + 64, 1, -73.4, -61 , 0 );

setScaleKey( spep_10 + 0, 1, 0.12, 0.12 );
setScaleKey( spep_10 -3 + 26, 1, 0.12, 0.12 );
setScaleKey( spep_10 + 64, 1, 0.11, 0.11 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -3 + 6, 1, 0 );
setRotateKey( spep_10 -3 + 8, 1, -0.3 );
setRotateKey( spep_10 -3 + 10, 1, -0.6 );
setRotateKey( spep_10 -3 + 12, 1, -1 );
setRotateKey( spep_10 -3 + 14, 1, -1.3 );
setRotateKey( spep_10 -3 + 16, 1, -1.6 );
setRotateKey( spep_10 -3 + 18, 1, -1.9 );
setRotateKey( spep_10 -3 + 20, 1, -2.3 );
setRotateKey( spep_10 -3 + 22, 1, -2.6 );
setRotateKey( spep_10 -3 + 24, 1, -2.9 );
setRotateKey( spep_10 -3 + 26, 1, -3.2 );
setRotateKey( spep_10 -3 + 28, 1, -3.6 );
setRotateKey( spep_10 -3 + 30, 1, -3.9 );
setRotateKey( spep_10 -3 + 32, 1, -4.2 );
setRotateKey( spep_10 -3 + 34, 1, -4.5 );
setRotateKey( spep_10 -3 + 36, 1, -4.9 );
setRotateKey( spep_10 -3 + 38, 1, -5.2 );
setRotateKey( spep_10 -3 + 40, 1, -5.5 );
setRotateKey( spep_10 -3 + 42, 1, -5.8 );
setRotateKey( spep_10 -3 + 44, 1, -6.2 );
setRotateKey( spep_10 -3 + 46, 1, -6.5 );
setRotateKey( spep_10 -3 + 48, 1, -6.8 );
setRotateKey( spep_10 -3 + 50, 1, -7.1 );
setRotateKey( spep_10 -3 + 52, 1, -7.5 );
setRotateKey( spep_10 -3 + 54, 1, -7.8 );
setRotateKey( spep_10 -3 + 56, 1, -8.1 );
setRotateKey( spep_10 -3 + 58, 1, -8.4 );
setRotateKey( spep_10 -3 + 60, 1, -8.8 );
setRotateKey( spep_10 -3 + 62, 1, -9.1 );
setRotateKey( spep_10 -3 + 64, 1, -9.4 );
setRotateKey( spep_10 -3 + 66, 1, -9.7 );
setRotateKey( spep_10 + 64, 1, -9.7 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( spep_10 + 0, 1109, "", 0, 0, 0, -1);

--かめはめ波溜め
SE037 = playSeVer2( spep_10 + 16, 1209, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_11 = spep_10 + 64;


-------------------------------------------------
-- 左に悟飯、右に悟天がバストアップで映り気弾をうつ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_11 = entryEffect( spep_11 + 0, SP_12, 0x80, -1, 0, 0, 0); -- ef_012
setEffMoveKey( spep_11 + 0, base_11, 0, 0 , 0);
setEffMoveKey( spep_11 + 62, base_11, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11, -1.0, 1.0);
setEffScaleKey( spep_11 + 62, base_11, -1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11, 0);
setEffRotateKey( spep_11 + 62, base_11, 0);
setEffAlphaKey( spep_11 + 0, base_11, 255);
setEffAlphaKey( spep_11 + 62 -2, base_11, 255);
setEffAlphaKey( spep_11 + 62 -1, base_11, 255);
setEffAlphaKey( spep_11 + 62, base_11, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 62 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--かめはめ波発射
SE038 = playSeVer2( spep_11 + 8, 1133, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_11 + 8, 1284, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_11 + 8, 1213, "",spep_11 + 108, 0, 14, -1);

-- ** 次の準備 ** --
spep_12 = spep_11 + 62;


-------------------------------------------------
-- 気弾同士が敵にぶつかり爆発でフィニッシュ	
-------------------------------------------------
-- ** エフェクト等 ** --
base_12f = entryEffect( spep_12 + 0, SP_13, 0x100, -1, 0, 0, 0); -- ef_013
setEffMoveKey( spep_12 + 0, base_12f, 0, 0 , 0);
setEffMoveKey( spep_12 + 146, base_12f, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base_12f, -1.0, 1.0);
setEffScaleKey( spep_12 + 146, base_12f, -1.0, 1.0);
setEffRotateKey( spep_12 + 0, base_12f, 0);
setEffRotateKey( spep_12 + 146, base_12f, 0);
setEffAlphaKey( spep_12 + 0, base_12f, 255);
setEffAlphaKey( spep_12 + 146, base_12f, 255);

base_12b = entryEffect( spep_12 + 0, SP_13b, 0x80, -1, 0, 0, 0); -- ef_013_b
setEffMoveKey( spep_12 + 0, base_12b, 0, 0 , 0);
setEffMoveKey( spep_12 + 146, base_12b, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base_12b, -1.0, 1.0);
setEffScaleKey( spep_12 + 146, base_12b, -1.0, 1.0);
setEffRotateKey( spep_12 + 0, base_12b, 0);
setEffRotateKey( spep_12 + 146, base_12b, 0);
setEffAlphaKey( spep_12 + 0, base_12b, 255);
setEffAlphaKey( spep_12 + 146, base_12b, 255);

-- ** 集中線 ** --
shuchusen_N = entryEffectLife( spep_12 + 92, 906, 54, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_12 + 92, shuchusen_N, 146, 20 );
setEffMoveKey( spep_12 + 92, shuchusen_N, 0, 0, 0 );
setEffMoveKey( spep_12 + 146, shuchusen_N, 0, 0, 0 );
setEffScaleKey( spep_12 + 92, shuchusen_N, 1.6, 1.6 );
setEffScaleKey( spep_12 + 146, shuchusen_N, 1.6, 1.6 );
setEffRotateKey( spep_12 + 92, shuchusen_N, 0 );
setEffRotateKey( spep_12 + 146, shuchusen_N, 0 );
setEffAlphaKey( spep_12 + 92, shuchusen_N, 255 );
setEffAlphaKey( spep_12 + 146, shuchusen_N, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 146 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 29, 1, 0 );

changeAnime( spep_12 + 0, 1, 5 );

setMoveKey( spep_12 + 0, 1, 1.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 6, 1, 1.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 8, 1, 1.5, -28.9 , 0 );
setMoveKey( spep_12 -3 + 10, 1, 1.7, -28.9 , 0 );
setMoveKey( spep_12 -3 + 12, 1, 2, -28.9 , 0 );
setMoveKey( spep_12 -3 + 14, 1, 2.2, -28.9 , 0 );
setMoveKey( spep_12 -3 + 16, 1, 2.4, -28.9 , 0 );
setMoveKey( spep_12 -3 + 18, 1, 2.6, -28.9 , 0 );
setMoveKey( spep_12 -3 + 20, 1, 2.9, -28.9 , 0 );
setMoveKey( spep_12 -3 + 22, 1, 3.1, -28.9 , 0 );
setMoveKey( spep_12 -3 + 24, 1, 3.3, -28.9 , 0 );
setMoveKey( spep_12 -3 + 26, 1, 3.5, -28.9 , 0 );
setMoveKey( spep_12 + 29, 1, 3.5, -28.9 , 0 );

setScaleKey( spep_12 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_12 -3 + 6, 1, 0.33, 0.33 );
setScaleKey( spep_12 -3 + 8, 1, 0.31, 0.31 );
setScaleKey( spep_12 -3 + 10, 1, 0.3, 0.3 );
setScaleKey( spep_12 -3 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_12 -3 + 14, 1, 0.28, 0.28 );
setScaleKey( spep_12 -3 + 16, 1, 0.26, 0.26 );
setScaleKey( spep_12 -3 + 18, 1, 0.25, 0.25 );
setScaleKey( spep_12 -3 + 20, 1, 0.24, 0.24 );
setScaleKey( spep_12 -3 + 22, 1, 0.23, 0.23 );
setScaleKey( spep_12 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_12 -3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_12 + 29, 1, 0.2, 0.2 );

setRotateKey( spep_12 + 0, 1, 0 );
setRotateKey( spep_12 + 29, 1, 0 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE041 = playSeVer2( spep_12 + 0, 1021, "", 0, 0, 0, 0.6);

--爆発
SE042 = playSeVer2( spep_12 + 32, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_12 + 32, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE044 = playSeVer2( spep_12 + 82, 1188, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_12 + 86, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 28); -- ダメージ表示フレーム
endPhase( spep_12 + 146 -4); -- 終了フレーム

end
