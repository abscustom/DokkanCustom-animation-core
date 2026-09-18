--4025780:超サイヤ人ベジータ(GT)_地球を守るサイヤの誇り
--sp_effect_a1_00390
--sp2507

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
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

--味方側
SP_01 = 161388; --3人が構える    ef_001
SP_02 = 161390; --ベジータが構える  ef_002
SP_03 = 161391; --4人が画面外へ飛んでいく  ef_003
SP_04 = 161393; --トランクスが斜め上から気弾を打ちながら飛んでくる  ef_004
SP_05 = 161395; --悟飯と悟天が気弾等を撃っている   ef_005
SP_06 = 161397; --気弾が敵に着弾して奥へ吹っ飛ぶ   ef_006
SP_07 = 161398; --気弾が敵に着弾して奥へ吹っ飛ぶ   ef_006_b
SP_08 = 161399; --飛んできた敵の背後に悟飯が来る   ef_007
SP_09 = 161400; --飛んできた敵の背後に悟飯が来る   ef_007_b
SP_10 = 161401; --悟飯が膝蹴りを入れる    ef_008
SP_11 = 161402; --悟飯が膝蹴りを入れる    ef_008_b
SP_12 = 161403; --悟天が正面でズームインしながら殴りにかかってくる  ef_009
SP_13 = 161404; --悟天が敵を殴り飛ばす（悟飯も横にいる    ef_010
SP_14 = 161405; --悟天が敵を殴り飛ばす（悟飯も横にいる    ef_010_b
SP_15 = 161406; --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ ef_011
SP_16 = 161407; --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ ef_011_b
SP_17 = 161408; --吹っ飛ぶ敵に先回りしベジータが気弾を放つ  ef_012
SP_18 = 161409; --吹っ飛ぶ敵に先回りしベジータが気弾を放つ  ef_012_b
SP_19 = 161410; --バストアップで映るベジータが気弾を打つ瞬間が映る  ef_013
SP_20 = 161412; --敵が先ほどのベジータの攻撃を食らう ef_014
SP_21 = 161413; --敵が先ほどのベジータの攻撃を食らう ef_014_b
SP_22 = 161415; --ベジータが放った気功波で球体状に爆発でフィニッシュ ef_015

--敵側
SP_01r = 161389;    --3人が構える    ef_001_r
SP_03r = 161392;    --4人が画面外へ飛んでいく  ef_003_r
SP_04r = 161394;    --トランクスが斜め上から気弾を打ちながら飛んでくる  ef_004_r
SP_05r = 161396;    --悟飯と悟天が気弾等を撃っている   ef_005_r
SP_19r = 161411;    --バストアップで映るベジータが気弾を打つ瞬間が映る  ef_013_r
SP_20r = 161414;    --敵が先ほどのベジータの攻撃を食らう ef_014_r
SP_22r = 161416;    --ベジータが放った気功波で球体状に爆発でフィニッシュ ef_015_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 3人が構える(52F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 52, 0x100, -1, 0, 0, 0 );  --3人が構える   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 52, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 52, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 52, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 52 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 52 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 52, first_f, 0 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 4, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 126 );
SE002 = playSeVer2( spep_0 + 4, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 52 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 52;


------------------------------------------------------
-- ベジータが構える(98F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0 -4, SP_02, 98, 0x100, -1, 0, 0, 0 );  --ベジータが構える    ef_002
setEffMoveKey( spep_1 + 0 -4, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98 -4, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0 -4, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98 -4, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0 -4, kamae, 0 );
setEffRotateKey( spep_1 + 98 -4, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -4, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -3, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -2, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -1, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -0, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -2 -4, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -1 -4, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -4, kamae, 0 );

spep_x = spep_1 + 12 -4;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--力む
SE004 = playSeVer2( spep_1 + 10, 1330, "",spep_1 + 104, 0, 10, -1);

--ベジータ気ダメ
SE005 = playSeVer2( spep_1 + 20, 1035, "",spep_1 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 20, SE005, 126 );
SE006 = playSeVer2( spep_1 + 20, 1298, "",spep_1 + 104, 0, 12, -1);

--オーラ
SE007 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98 + 2 -4, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_1 + 86 -4, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_c = spep_1 + 98 -4;

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
spep_3 = spep_c + 94;

------------------------------------------------------
-- 4人が画面外へ飛んでいく(52F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0 -4, SP_03, 52, 0x100, -1, 0, 0, 0 );  --4人が画面外へ飛んでいく ef_003
setEffMoveKey( spep_3 + 0 -4, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 52 -4, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0 -4, move, 1.0, 1.0 );
setEffScaleKey( spep_3 + 52 -4, move, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0 -4, move, 0 );
setEffRotateKey( spep_3 + 52 -4, move, 0 );
setEffAlphaKey( spep_3 + 0 -4, move, 0 );
setEffAlphaKey( spep_3 + 0 -3, move, 0 );
setEffAlphaKey( spep_3 + 0 -2, move, 0 );
setEffAlphaKey( spep_3 + 0 -1, move, 0 );
setEffAlphaKey( spep_3 + 0 -0, move, 255 );
setEffAlphaKey( spep_3 + 52 -4 -2, move, 255 );
setEffAlphaKey( spep_3 + 52 -4 -1, move, 255 );
setEffAlphaKey( spep_3 + 52 -4, move, 0 );

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_3 + 6, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 6, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 6, 1116, "",spep_3 + 48, 0, 18, -1);

--トランクス気弾１
--[[SE014 = playSeVer2( spep_3 + 38, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE014,  367 );
setBandpassFilter   ( spep_3 + 38, SE014, 580, 24000 );
SE015 = playSeVer2( spep_3 + 38, 1264, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 40, 1358, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE016, 75 );
SE017 = playSeVer2( spep_3 + 40, 1155, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 44, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE018, 120 );]]

--トランクス気弾１
SE015 = playSeVer2( spep_3 + 38, 1264, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 40, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE016, 140 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 52 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 52 -4;


------------------------------------------------------
-- トランクスが斜め上から気弾を打ちながら飛んでくる(80F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tshot = entryEffectLife( spep_4 + 0 -4, SP_04, 80, 0x100, -1, 0, 0, 0 );  --トランクスが斜め上から気弾を打ちながら飛んでくる    ef_004
setEffMoveKey( spep_4 + 0 -4, tshot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80 -4, tshot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -4, tshot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80 -4, tshot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -4, tshot, 0 );
setEffRotateKey( spep_4 + 80 -4, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -4, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -3, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -2, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -1, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -0, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4 -2, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4 -1, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4, tshot, 0 );

-- ** 音 ** --
--トランクス気弾２
--[[SE019 = playSeVer2( spep_4 + 18, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE019,  367 );
setBandpassFilter( spep_4 + 18, SE019, 580, 24000 );
SE021 = playSeVer2( spep_4 + 20, 1358, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 20, 1155, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 24, 1016, "", 0, 0, 0, -1);]]

SE019 = playSeVer2( spep_4 + 20, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE019, 140 );

--トランクス気弾３
--[[SE020 = playSeVer2( spep_4 + 38, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE020,  367 );
setBandpassFilter( spep_4 + 38, SE020, 580, 24000 );
SE025 = playSeVer2( spep_4 + 40, 1358, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 40, 1155, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 44, 1016, "", 0, 0, 0, -1);]]

SE025 = playSeVer2( spep_4 + 40, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE025, 140 );

--トランクス気弾４
--[[SE024 = playSeVer2( spep_4 + 56, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE024,  367 );
setBandpassFilter   ( spep_4 + 56, SE024, 580, 24000 );
SE028 = playSeVer2( spep_4 + 58, 1358, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 58, 1155, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 62, 1016, "", 0, 0, 0, -1);]]

SE028 = playSeVer2( spep_4 + 58, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE028, 140 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80 -4;


------------------------------------------------------
-- 悟飯と悟天が気弾等を撃っている(84F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
dshot = entryEffectLife( spep_5 + 0 -4, SP_05, 83, 0x100, -1, 0, 0, 0 );  --悟飯と悟天が気弾等を撃っている ef_005
setEffMoveKey( spep_5 + 0 -4, dshot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 83 -4, dshot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0 -4, dshot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 83 -4, dshot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0 -4, dshot, 0 );
setEffRotateKey( spep_5 + 83 -4, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -4, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -3, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -2, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -1, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -0, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4 -2, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4 -1, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4, dshot, 0 );

-- ** 音 ** --
--悟飯＆悟天気弾１
--[[SE031 = playSeVer2( spep_5 + 8, 1177, "",spep_5 + 54, 0, 30, -1);
setSeVolumeByWorkId( spep_5 + 8, SE031, 88 );
SE032 = playSeVer2( spep_5 + 8, 1201, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 8, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 8, 1338, "",spep_5 + 56, 0, 20, -1);]]

SE031 = playSeVer2( spep_5 + 8, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE031, 140 );
SE035 = playSeVer2( spep_5 + 14, 1015, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 83 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE031, 0);
    stopSe( SP_dodge - 12, SE035, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--悟飯＆悟天気弾２
--[[SE036 = playSeVer2( spep_5 + 40, 1177, "",spep_5 + 86, 0, 30, -1);
setSeVolumeByWorkId( spep_5 + 40, SE036, 86 );
SE037 = playSeVer2( spep_5 + 40, 1201, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 40, 1016, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 40, 1338, "",spep_5 + 88, 0, 20, -1);
SE040 = playSeVer2( spep_5 + 62, 1177, "",spep_5 + 108, 0, 30, -1);
SE041 = playSeVer2( spep_5 + 62, 1201, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_5 + 62, 1016, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 62, 1338, "",spep_5 + 110, 0, 20, -1);]]

--悟飯＆悟天気弾２
SE036 = playSeVer2( spep_5 + 40, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE036, 140 );
SE040 = playSeVer2( spep_5 + 62, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 62, SE040, 140 );

--気弾飛んでいく
SE044 = playSeVer2( spep_5 + 74, 1357, "",spep_5 + 144, 2, 28, -1);
setStartTimeMs( SE044,  183 );

--気弾飛んでいく
SE044 = playSeVer2( spep_5 + 74, 1357, "",spep_5 + 144, 2, 28, -1);
setStartTimeMs( SE044,  183 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 83 -4;


------------------------------------------------------
-- 気弾が敵に着弾して奥へ吹っ飛ぶ(50F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gumiuti_f = entryEffectLife( spep_6 + 0 -4, SP_06, 50, 0x100, -1, 0, 0, 0 );  --気弾が敵に着弾して奥へ吹っ飛ぶ ef_006
setEffMoveKey( spep_6 + 0 -4, gumiuti_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50 -4, gumiuti_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0 -4, gumiuti_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50 -4, gumiuti_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0 -4, gumiuti_f, 0 );
setEffRotateKey( spep_6 + 50 -4, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -4, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -3, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -2, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -1, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -0, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4 -2, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4 -1, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4, gumiuti_f, 0 );

gumiuti_b = entryEffectLife( spep_6 + 0 -4, SP_07, 50, 0x80, -1, 0, 0, 0 );  --気弾が敵に着弾して奥へ吹っ飛ぶ  ef_006_b
setEffMoveKey( spep_6 + 0 -4, gumiuti_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50 -4, gumiuti_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0 -4, gumiuti_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50 -4, gumiuti_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0 -4, gumiuti_b, 0 );
setEffRotateKey( spep_6 + 50 -4, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -4, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -3, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -2, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -1, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -0, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4 -2, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4 -1, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4, gumiuti_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 + 54 -7, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -7 + 32, 1, 5 );

setMoveKey( spep_6 + 0, 1, -2.9, -132.8 , 0 );
setMoveKey( spep_6 -7 + 24, 1, -2.9, -132.8 , 0 );
setMoveKey( spep_6 -7 + 26, 1, -11, -140.4 , 0 );
setMoveKey( spep_6 -7 + 28, 1, -5, -123.1 , 0 );
setMoveKey( spep_6 -7 + 31, 1, 3.9, -144.9 , 0 );
setMoveKey( spep_6 -7 + 32, 1, -1.4, 26.7 , 0 );
setMoveKey( spep_6 -7 + 34, 1, 8.6, 30.9 , 0 );
setMoveKey( spep_6 -7 + 36, 1, 12.9, 75.4 , 0 );
setMoveKey( spep_6 -7 + 38, 1, 5.7, 84.1 , 0 );
setMoveKey( spep_6 -7 + 40, 1, 17.4, 122.8 , 0 );
setMoveKey( spep_6 -7 + 42, 1, 13, 137.5 , 0 );
setMoveKey( spep_6 -7 + 44, 1, 2.2, 176.2 , 0 );
setMoveKey( spep_6 -7 + 46, 1, 1.7, 195.1 , 0 );
setMoveKey( spep_6 -7 + 48, 1, 15.1, 230.6 , 0 );
setMoveKey( spep_6 -7 + 50, 1, 21.7, 245.5 , 0 );
setMoveKey( spep_6 -7 + 52, 1, 12.1, 247 , 0 );
--setMoveKey( spep_6 -7 + 54, 1, 18.4, 253.5 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_6 -7 + 31, 1, 1.2, 1.2 );
setScaleKey( spep_6 -7 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_6 -7 + 34, 1, 0.77, 0.77 );
setScaleKey( spep_6 -7 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_6 -7 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_6 -7 + 40, 1, 0.72, 0.72 );
setScaleKey( spep_6 -7 + 42, 1, 0.7, 0.7 );
setScaleKey( spep_6 -7 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_6 -7 + 46, 1, 0.66, 0.66 );
setScaleKey( spep_6 -7 + 48, 1, 0.64, 0.64 );
setScaleKey( spep_6 -7 + 50, 1, 0.62, 0.62 );
setScaleKey( spep_6 -7 + 52, 1, 0.6, 0.6 );
--setScaleKey( spep_6 -7 + 54, 1, 0.59, 0.59 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -7 + 31, 1, 0 );
setRotateKey( spep_6 -7 + 32, 1, 18.3 );
setRotateKey( spep_6 -7 + 34, 1, 16.9 );
setRotateKey( spep_6 -7 + 36, 1, 15.6 );
setRotateKey( spep_6 -7 + 38, 1, 14.3 );
setRotateKey( spep_6 -7 + 40, 1, 13 );
setRotateKey( spep_6 -7 + 42, 1, 11.7 );
setRotateKey( spep_6 -7 + 44, 1, 10.3 );
setRotateKey( spep_6 -7 + 46, 1, 9 );
setRotateKey( spep_6 -7 + 48, 1, 7.7 );
setRotateKey( spep_6 -7 + 50, 1, 6.4 );
setRotateKey( spep_6 -7 + 52, 1, 5.1 );
--setRotateKey( spep_6 -7 + 54, 1, 3.7 );

-- ** 音 ** --
--気弾飛んでいく
SE045 = playSeVer2( spep_6 + 0, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_6 + 10, 1016, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_6 + 16, 1159, "",spep_6 + 84, 0, 26, -1);
SE048 = playSeVer2( spep_6 + 24, 1024, "",spep_6 + 84, 0, 26, -1);
SE049 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);

--吹き飛ぶ
SE050 = playSeVer2( spep_6 + 42, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 50 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 50 -4;


------------------------------------------------------
-- 飛んできた敵の背後に悟飯が来る(32F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
idou_f = entryEffectLife( spep_7 + 0 -4, SP_08, 32, 0x100, -1, 0, 0, 0 );  --飛んできた敵の背後に悟飯が来る    ef_007
setEffMoveKey( spep_7 + 0 -4, idou_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 32 -4, idou_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0 -4, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 32 -4, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0 -4, idou_f, 0 );
setEffRotateKey( spep_7 + 32 -4, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -4, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -3, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -2, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -1, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -0, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4 -1, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4 -2, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4, idou_f, 0 );

idou_b = entryEffectLife( spep_7 + 0 -4, SP_09, 32, 0x80, -1, 0, 0, 0 );  --飛んできた敵の背後に悟飯が来る ef_007_b
setEffMoveKey( spep_7 + 0 -4, idou_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 32 -4, idou_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0 -4, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 32 -4, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0 -4, idou_b, 0 );
setEffRotateKey( spep_7 + 32 -4, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -4, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -3, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -2, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -1, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -0, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4 -2, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4 -1, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4, idou_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 -7 + 0, 1, -531.1, -701.2 , 0 );
setMoveKey( spep_7 -7 + 7, 1, -531.1, -701.2 , 0 );
setMoveKey( spep_7 -7 + 8, 1, -429.9, -579.8 , 0 );
setMoveKey( spep_7 -7 + 10, 1, -363.2, -496.3 , 0 );
setMoveKey( spep_7 -7 + 12, 1, -311, -429.7 , 0 );
setMoveKey( spep_7 -7 + 14, 1, -267.4, -373.2 , 0 );
setMoveKey( spep_7 -7 + 16, 1, -229.5, -323.6 , 0 );
setMoveKey( spep_7 -7 + 18, 1, -196, -279.2 , 0 );
setMoveKey( spep_7 -7 + 20, 1, -165.8, -238.9 , 0 );
setMoveKey( spep_7 -7 + 22, 1, -138.4, -202 , 0 );
setMoveKey( spep_7 -7 + 24, 1, -113.4, -167.9 , 0 );
setMoveKey( spep_7 -7 + 26, 1, -90.5, -136.4 , 0 );
setMoveKey( spep_7 -7 + 28, 1, -69.5, -107.1 , 0 );
setMoveKey( spep_7 -7 + 30, 1, -50.2, -79.9 , 0 );
setMoveKey( spep_7 -7 + 32, 1, -32.7, -54.8 , 0 );
setMoveKey( spep_7 -7 + 34, 1, -17.2, -32.2 , 0 );

setScaleKey( spep_7 -7 + 0, 1, 12.65, 12.65 );
setScaleKey( spep_7 -7 + 7, 1, 12.65, 12.65 );
setScaleKey( spep_7 -7 + 8, 1, 9.99, 9.65 );
setScaleKey( spep_7 -7 + 10, 1, 8.54, 8.35 );
setScaleKey( spep_7 -7 + 12, 1, 7.44, 7.36 );
setScaleKey( spep_7 -7 + 14, 1, 6.54, 6.53 );
setScaleKey( spep_7 -7 + 16, 1, 5.77, 5.81 );
setScaleKey( spep_7 -7 + 18, 1, 5.08, 5.16 );
setScaleKey( spep_7 -7 + 20, 1, 4.47, 4.58 );
setScaleKey( spep_7 -7 + 22, 1, 3.92, 4.03 );
setScaleKey( spep_7 -7 + 24, 1, 3.42, 3.53 );
setScaleKey( spep_7 -7 + 26, 1, 2.96, 3.06 );
setScaleKey( spep_7 -7 + 28, 1, 2.54, 2.63 );
setScaleKey( spep_7 -7 + 30, 1, 2.15, 2.22 );
setScaleKey( spep_7 -7 + 32, 1, 1.8, 1.84 );
setScaleKey( spep_7 -7 + 34, 1, 1.49, 1.49 );

setRotateKey( spep_7 -7 + 0, 1, 38.2 );
setRotateKey( spep_7 -7 + 7, 1, 38.2 );
setRotateKey( spep_7 -7 + 8, 1, 37.3 );
setRotateKey( spep_7 -7 + 10, 1, 36.5 );
setRotateKey( spep_7 -7 + 12, 1, 35.6 );
setRotateKey( spep_7 -7 + 14, 1, 34.8 );
setRotateKey( spep_7 -7 + 16, 1, 33.9 );
setRotateKey( spep_7 -7 + 18, 1, 33 );
setRotateKey( spep_7 -7 + 20, 1, 32.2 );
setRotateKey( spep_7 -7 + 22, 1, 31.3 );
setRotateKey( spep_7 -7 + 24, 1, 30.5 );
setRotateKey( spep_7 -7 + 26, 1, 29.6 );
setRotateKey( spep_7 -7 + 28, 1, 28.8 );
setRotateKey( spep_7 -7 + 30, 1, 27.9 );
setRotateKey( spep_7 -7 + 32, 1, 27 );
setRotateKey( spep_7 -7 + 34, 1, 26.2 );

-- ** 音 ** --
--瞬間移動
SE051 = playSeVer2( spep_7 + 0, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_7 + 18, 1359, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_7 + 22, 1009, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_7 + 22, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 32 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 32 -4;


------------------------------------------------------
-- 悟飯が膝蹴りを入れる(30F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_8 + 0 -4, SP_10, 28, 0x100, -1, 0, 0, 0 );  --悟飯が膝蹴りを入れる ef_008
setEffMoveKey( spep_8 + 0 -4, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 28 -4, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0 -4, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 28 -4, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0 -4, kick_f, 0 );
setEffRotateKey( spep_8 + 28 -4, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -4, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -3, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -2, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -1, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -0, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4 -2, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4 -1, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4, kick_f, 0 );

kick_b = entryEffectLife( spep_8 + 0 -4, SP_11, 28, 0x80, -1, 0, 0, 0 );  --悟飯が膝蹴りを入れる  ef_008_b
setEffMoveKey( spep_8 + 0 -4, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 28 -4, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0 -4, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 28 -4, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0 -4, kick_b, 0 );
setEffRotateKey( spep_8 + 28 -4, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -4, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -3, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -2, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -1, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -0, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4 -2, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4 -1, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 -7 + 31, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 -7 + 10, 1, 108 );

setMoveKey( spep_8 + 0, 1, 139.1, -121.5 , 0 );
setMoveKey( spep_8 + 1, 1, 138.1, -135.7 , 0 );
setMoveKey( spep_8 -7 + 9, 1, 138.1, -135.7 , 0 );
setMoveKey( spep_8 -7 + 10, 1, 429.9, 53.4 , 0 );
setMoveKey( spep_8 -7 + 11, 1, 429.9, 53.4 , 0 );
setMoveKey( spep_8 -7 + 12, 1, 258.3, 47.6 , 0 );
setMoveKey( spep_8 -7 + 13, 1, 258.3, 47.6 , 0 );
setMoveKey( spep_8 -7 + 14, 1, 53.7, 15.9 , 0 );
setMoveKey( spep_8 -7 + 15, 1, 53.7, 15.9 , 0 );
setMoveKey( spep_8 -7 + 16, 1, 105.3, 38.3 , 0 );
setMoveKey( spep_8 -7 + 17, 1, 105.3, 38.3 , 0 );
setMoveKey( spep_8 -7 + 18, 1, 106.4, 26.6 , 0 );
setMoveKey( spep_8 -7 + 20, 1, 277.4, 67.1 , 0 );
setMoveKey( spep_8 -7 + 22, 1, 425.2, 92.8 , 0 );
setMoveKey( spep_8 -7 + 24, 1, 588.6, 130.1 , 0 );
setMoveKey( spep_8 -7 + 26, 1, 749.1, 164.4 , 0 );
setMoveKey( spep_8 -7 + 28, 1, 909.6, 198.8 , 0 );
setMoveKey( spep_8 -7 + 30, 1, 1070, 233.1 , 0 );
setMoveKey( spep_8 -7 + 31, 1, 1230.5, 267.5 , 0 );
--setMoveKey( spep_8 -7 + 33, 1, 1391, 301.9 , 0 );

setScaleKey( spep_8 + 0, 1, 5.49, 5.49 );
setScaleKey( spep_8 -7 + 9, 1, 5.49, 5.49 );
setScaleKey( spep_8 -7 + 10, 1, 6.6, 6.6 );
setScaleKey( spep_8 -7 + 31, 1, 6.6, 6.6 );

setRotateKey( spep_8 + 0, 1, -67 );
setRotateKey( spep_8 -7 + 9, 1, -67 );
setRotateKey( spep_8 -7 + 10, 1, -17.8 );
setRotateKey( spep_8 -7 + 11, 1, -17.8 );
setRotateKey( spep_8 -7 + 12, 1, -16.8 );
setRotateKey( spep_8 -7 + 13, 1, -16.8 );
setRotateKey( spep_8 -7 + 14, 1, -15.8 );
setRotateKey( spep_8 -7 + 15, 1, -15.8 );
setRotateKey( spep_8 -7 + 16, 1, -14.9 );
setRotateKey( spep_8 -7 + 17, 1, -14.9 );
setRotateKey( spep_8 -7 + 18, 1, -13.9 );
setRotateKey( spep_8 -7 + 20, 1, -12.9 );
setRotateKey( spep_8 -7 + 22, 1, -11.9 );
setRotateKey( spep_8 -7 + 24, 1, -10.9 );
setRotateKey( spep_8 -7 + 26, 1, -10 );
setRotateKey( spep_8 -7 + 28, 1, -9 );
setRotateKey( spep_8 -7 + 30, 1, -8 );
setRotateKey( spep_8 -7 + 31, 1, -7 );
--setRotateKey( spep_8 -7 + 33, 1, -6.1 );

-- ** 音 ** --
--悟天向かってくる
SE055 = playSeVer2( spep_8 + 14, 1182, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_8 + 14, 9, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_8 + 14, 1167, "",spep_8 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 14, SE057, 52 );
SE058 = playSeVer2( spep_8 + 14, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 14, SE058, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 28 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 28 -4;


------------------------------------------------------
-- 悟天が正面でズームインしながら殴りにかかってくる(42F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
fly = entryEffectLife( spep_9 + 0 -4, SP_12, 42, 0x100, -1, 0, 0, 0 );  --悟天が正面でズームインしながら殴りにかかってくる  ef_009
setEffMoveKey( spep_9 + 0 -4, fly, 0, 0 , 0 );
setEffMoveKey( spep_9 + 42 -4, fly, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0 -4, fly, 1.0, 1.0 );
setEffScaleKey( spep_9 + 42 -4, fly, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0 -4, fly, 0 );
setEffRotateKey( spep_9 + 42 -4, fly, 0 );
setEffAlphaKey( spep_9 + 0 -4, fly, 0 );
setEffAlphaKey( spep_9 + 0 -3, fly, 0 );
setEffAlphaKey( spep_9 + 0 -2, fly, 0 );
setEffAlphaKey( spep_9 + 0 -1, fly, 0 );
setEffAlphaKey( spep_9 + 0 -0, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4 -1, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4 -2, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4, fly, 0 );

-- ** 音 ** --
--悟天パンチ
SE059 = playSeVer2( spep_9 + 28, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE059, 81 );
SE060 = playSeVer2( spep_9 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE060, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 42 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 42 -4;


------------------------------------------------------
-- 悟天が敵を殴り飛ばす(24F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_10 + 0 -4, SP_13, 24, 0x100, -1, 0, 0, 0 );  --悟天が敵を殴り飛ばす（悟飯も横にいる   ef_010
setEffMoveKey( spep_10 + 0 -4, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 24 -4, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0 -4, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 24 -4, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0 -4, punch_f, 0 );
setEffRotateKey( spep_10 + 24 -4, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -4, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -3, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -2, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -1, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -0, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4 -2, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4 -1, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4, punch_f, 0 );

punch_b = entryEffectLife( spep_10 + 0 -4, SP_14, 24, 0x80, -1, 0, 0, 0 );  --悟天が敵を殴り飛ばす（悟飯も横にいる    ef_010_b
setEffMoveKey( spep_10 + 0 -4, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 24 -4, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0 -4, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 24 -4, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0 -4, punch_b, 0 );
setEffRotateKey( spep_10 + 24 -4, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -4, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -3, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -2, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -1, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -0, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4 -2, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4 -1, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -7 + 27, 1, 0 );
changeAnime( spep_10 + 0, 1, 8 );

setMoveKey( spep_10 + 0, 1, -16.9, 106.8 , 0 );
--setMoveKey( spep_10 -7 + 6, 1, -16.9, 106.8 , 0 );
setMoveKey( spep_10 -7 + 8, 1, -84.6, 159.7 , 0 );
setMoveKey( spep_10 -7 + 10, 1, -92.9, 164.4 , 0 );
setMoveKey( spep_10 -7 + 12, 1, -181.8, 227.3 , 0 );
setMoveKey( spep_10 -7 + 14, 1, -206.5, 242 , 0 );
setMoveKey( spep_10 -7 + 16, 1, -281.7, 296.2 , 0 );
setMoveKey( spep_10 -7 + 18, 1, -312.2, 316.5 , 0 );
setMoveKey( spep_10 -7 + 20, 1, -378, 366.8 , 0 );
setMoveKey( spep_10 -7 + 22, 1, -413.9, 395.8 , 0 );
setMoveKey( spep_10 -7 + 24, 1, -476.6, 438.6 , 0 );
setMoveKey( spep_10 -7 + 26, 1, -517.7, 468.3 , 0 );
setMoveKey( spep_10 -7 + 27, 1, -568.2, 503.8 , 0 );

setScaleKey( spep_10 + 0, 1, 2.48, 2.48 );
--setScaleKey( spep_10 -7 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_10 -7 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_10 -7 + 10, 1, 2.17, 2.17 );
setScaleKey( spep_10 -7 + 12, 1, 2.02, 2.02 );
setScaleKey( spep_10 -7 + 14, 1, 1.87, 1.87 );
setScaleKey( spep_10 -7 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_10 -7 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_10 -7 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_10 -7 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_10 -7 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_10 -7 + 26, 1, 0.96, 0.96 );
setScaleKey( spep_10 -7 + 27, 1, 0.81, 0.81 );

setRotateKey( spep_10 + 0, 1, 37.2 );
--setRotateKey( spep_10 -7 + 6, 1, 37.2 );
setRotateKey( spep_10 -7 + 8, 1, 35.9 );
setRotateKey( spep_10 -7 + 10, 1, 34.6 );
setRotateKey( spep_10 -7 + 12, 1, 33.3 );
setRotateKey( spep_10 -7 + 14, 1, 32 );
setRotateKey( spep_10 -7 + 16, 1, 30.7 );
setRotateKey( spep_10 -7 + 18, 1, 29.4 );
setRotateKey( spep_10 -7 + 20, 1, 28.1 );
setRotateKey( spep_10 -7 + 22, 1, 26.9 );
setRotateKey( spep_10 -7 + 24, 1, 25.6 );
setRotateKey( spep_10 -7 + 26, 1, 24.3 );
setRotateKey( spep_10 -7 + 27, 1, 23 );

-- ** 音 ** --
--瞬間移動
SE061 = playSeVer2( spep_10 + 18, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 24 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 24 -4;


------------------------------------------------------
-- 吹っ飛ぶ敵に先回りしトランクスが気弾を放つ(70F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
hanatu_f = entryEffectLife( spep_11 + 0 -4, SP_15, 70, 0x100, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ   ef_011
setEffMoveKey( spep_11 + 0 -4, hanatu_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70 -4, hanatu_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0 -4, hanatu_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70 -4, hanatu_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0 -4, hanatu_f, 0 );
setEffRotateKey( spep_11 + 70 -4, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -3, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -2, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -1, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4 -2, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4 -1, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4, hanatu_f, 0 );

hanatu_b = entryEffectLife( spep_11 + 0 -4, SP_16, 70, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ    ef_011_b
setEffMoveKey( spep_11 + 0 -4, hanatu_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70 -4, hanatu_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0 -4, hanatu_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70 -4, hanatu_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0 -4, hanatu_b, 0 );
setEffRotateKey( spep_11 + 70 -4, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -3, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -2, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -1, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -0, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4 -2, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4 -1, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4, hanatu_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 -7 + 14, 1, 1 );
setDisp( spep_11 -7 + 73, 1, 0 );
changeAnime( spep_11 + 0, 1, 5 );
changeAnime( spep_11 -7 + 46, 1, 106 );

setBlendColor( spep_11 -7 + 46, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_11 -7 + 56, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_11 -7 + 58, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_11 -7 + 60, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_11 -7 + 60, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_11 -7 + 72, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_11 -7 + 73, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_11 -7 + 14, 1, 794.7, -1550.7 , 0 );
setMoveKey( spep_11 -7 + 16, 1, 620.2, -1260.8 , 0 );
setMoveKey( spep_11 -7 + 18, 1, 533.5, -1109.8 , 0 );
setMoveKey( spep_11 -7 + 20, 1, 466.7, -989.9 , 0 );
setMoveKey( spep_11 -7 + 22, 1, 410.1, -886.4 , 0 );
setMoveKey( spep_11 -7 + 24, 1, 360, -793.5 , 0 );
setMoveKey( spep_11 -7 + 26, 1, 314.4, -708.3 , 0 );
setMoveKey( spep_11 -7 + 28, 1, 272.2, -629 , 0 );
setMoveKey( spep_11 -7 + 30, 1, 232.7, -554.5 , 0 );
setMoveKey( spep_11 -7 + 32, 1, 195.3, -484.1 , 0 );
setMoveKey( spep_11 -7 + 34, 1, 159.7, -417.2 , 0 );
setMoveKey( spep_11 -7 + 36, 1, 134.7, -344.4 , 0 );
setMoveKey( spep_11 -7 + 38, 1, 92.2, -293.3 , 0 );
setMoveKey( spep_11 -7 + 40, 1, 67, -240 , 0 );
setMoveKey( spep_11 -7 + 42, 1, 26.5, -173.8 , 0 );
setMoveKey( spep_11 -7 + 44, 1, -2, -132 , 0 );
setMoveKey( spep_11 -7 + 45, 1, -2, -132 , 0 );
setMoveKey( spep_11 -7 + 46, 1, -23.7, -19.8 , 0 );
setMoveKey( spep_11 -7 + 48, 1, -20.8, -16.9 , 0 );
setMoveKey( spep_11 -7 + 50, 1, -22.3, -16.4 , 0 );
setMoveKey( spep_11 -7 + 52, 1, -23.9, -15.9 , 0 );
setMoveKey( spep_11 -7 + 54, 1, -22.4, -16.5 , 0 );
setMoveKey( spep_11 -7 + 56, 1, -21, -17 , 0 );
setMoveKey( spep_11 -7 + 58, 1, -19.8, -18.2 , 0 );
setMoveKey( spep_11 -7 + 60, 1, -18.5, -19.5 , 0 );
setMoveKey( spep_11 -7 + 62, 1, -17.2, -20.8 , 0 );
setMoveKey( spep_11 -7 + 64, 1, -2, -22.9 , 0 );
setMoveKey( spep_11 -7 + 66, 1, 37.2, -26.2 , 0 );
setMoveKey( spep_11 -7 + 68, 1, 88.8, -22.9 , 0 );
setMoveKey( spep_11 -7 + 70, 1, 173.2, -18 , 0 );
setMoveKey( spep_11 -7 + 72, 1, 254, -32.8 , 0 );
setMoveKey( spep_11 -7 + 73, 1, 365.1, -43.4 , 0 );

setScaleKey( spep_11 -7 + 14, 1, 20.3, 20.52 );
setScaleKey( spep_11 -7 + 16, 1, 17.1, 17.18 );
setScaleKey( spep_11 -7 + 18, 1, 15.38, 15.45 );
setScaleKey( spep_11 -7 + 20, 1, 13.97, 14.04 );
setScaleKey( spep_11 -7 + 22, 1, 12.72, 12.79 );
setScaleKey( spep_11 -7 + 24, 1, 11.58, 11.64 );
setScaleKey( spep_11 -7 + 26, 1, 10.51, 10.57 );
setScaleKey( spep_11 -7 + 28, 1, 9.51, 9.57 );
setScaleKey( spep_11 -7 + 30, 1, 8.55, 8.6 );
setScaleKey( spep_11 -7 + 32, 1, 7.63, 7.68 );
setScaleKey( spep_11 -7 + 34, 1, 6.74, 6.79 );
setScaleKey( spep_11 -7 + 36, 1, 5.89, 5.93 );
setScaleKey( spep_11 -7 + 38, 1, 5.06, 5.1 );
setScaleKey( spep_11 -7 + 40, 1, 4.26, 4.3 );
setScaleKey( spep_11 -7 + 42, 1, 3.49, 3.52 );
setScaleKey( spep_11 -7 + 44, 1, 2.74, 2.77 );
setScaleKey( spep_11 -7 + 45, 1, 2.74, 2.77 );
setScaleKey( spep_11 -7 + 46, 1, 2.48, 2.48 );
setScaleKey( spep_11 -7 + 62, 1, 2.48, 2.48 );
setScaleKey( spep_11 -7 + 64, 1, 2.68, 2.67 );
setScaleKey( spep_11 -7 + 66, 1, 3.21, 3.21 );
setScaleKey( spep_11 -7 + 68, 1, 4.03, 4.02 );
setScaleKey( spep_11 -7 + 70, 1, 5.1, 5.09 );
setScaleKey( spep_11 -7 + 72, 1, 6.38, 6.37 );
setScaleKey( spep_11 -7 + 73, 1, 7.87, 7.86 );

setRotateKey( spep_11 -7 + 14, 1, 5 );
setRotateKey( spep_11 -7 + 16, 1, 4.1 );
setRotateKey( spep_11 -7 + 18, 1, 3.2 );
setRotateKey( spep_11 -7 + 20, 1, 2.3 );
setRotateKey( spep_11 -7 + 22, 1, 1.3 );
setRotateKey( spep_11 -7 + 24, 1, 0.4 );
setRotateKey( spep_11 -7 + 26, 1, -0.5 );
setRotateKey( spep_11 -7 + 28, 1, -1.4 );
setRotateKey( spep_11 -7 + 30, 1, -2.3 );
setRotateKey( spep_11 -7 + 32, 1, -3.2 );
setRotateKey( spep_11 -7 + 34, 1, -4.1 );
setRotateKey( spep_11 -7 + 36, 1, -5 );
setRotateKey( spep_11 -7 + 38, 1, -6 );
setRotateKey( spep_11 -7 + 40, 1, -6.9 );
setRotateKey( spep_11 -7 + 42, 1, -7.8 );
setRotateKey( spep_11 -7 + 44, 1, -8.7 );
setRotateKey( spep_11 -7 + 45, 1, -8.7 );
setRotateKey( spep_11 -7 + 46, 1, -35.2 );
setRotateKey( spep_11 -7 + 62, 1, -35.2 );
setRotateKey( spep_11 -7 + 64, 1, -33.8 );
setRotateKey( spep_11 -7 + 66, 1, -32.4 );
setRotateKey( spep_11 -7 + 68, 1, -31 );
setRotateKey( spep_11 -7 + 70, 1, -29.6 );
setRotateKey( spep_11 -7 + 72, 1, -28.2 );
setRotateKey( spep_11 -7 + 73, 1, -26.8 );

-- ** 音 ** --
--トランクス逆さで気弾撃つ
SE062 = playSeVer2( spep_11 + 20, 1022, "",spep_11 + 92, 0, 30, -1);
SE063 = playSeVer2( spep_11 + 22, 1130, "", 0, 0, 0, 0.6);
setPitch( spep_11 + 22, SE063, -400 );
setTimeStretch( SE063, 0.92, 30, 4 );
SE064 = playSeVer2( spep_11 + 22, 1236, "",spep_11 + 96, 0, 28, -1);
SE065 = playSeVer2( spep_11 + 22, 1017, "", 0, 0, 0, -1);

--吹き飛ぶ
SE066 = playSeVer2( spep_11 + 50, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 70 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 70 -4;


------------------------------------------------------
-- 吹っ飛ぶ敵に先回りしベジータが気弾を放つ(42F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
bmove_f = entryEffectLife( spep_12 + 0 -4, SP_17, 42, 0x100, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしベジータが気弾を放つ ef_012
setEffMoveKey( spep_12 + 0 -4, bmove_f, 0, 0 , 0 );
setEffMoveKey( spep_12 + 42 -4, bmove_f, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0 -4, bmove_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 42 -4, bmove_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0 -4, bmove_f, 0 );
setEffRotateKey( spep_12 + 42 -4, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -4, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -3, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -2, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -1, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -0, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4 -2, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4 -1, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4, bmove_f, 0 );

bmove_b = entryEffectLife( spep_12 + 0 -4, SP_18, 42, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしベジータが気弾を放つ  ef_012_b
setEffMoveKey( spep_12 + 0 -4, bmove_b, 0, 0 , 0 );
setEffMoveKey( spep_12 + 42 -4, bmove_b, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0 -4, bmove_b, 1.0, 1.0 );
setEffScaleKey( spep_12 + 42 -4, bmove_b, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0 -4, bmove_b, 0 );
setEffRotateKey( spep_12 + 42 -4, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -4, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -3, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -2, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -1, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -0, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4 -2, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4 -1, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4, bmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 3, 1, 1 );
setDisp( spep_12 -7 + 45, 1, 0 );
changeAnime( spep_12 + 3, 1, 106 );

setMoveKey( spep_12 -7 + 10, 1, -639.5, -166.9 , 0 );
setMoveKey( spep_12 -7 + 12, 1, -414.2, -117.7 , 0 );
setMoveKey( spep_12 -7 + 14, 1, -330.9, -99.1 , 0 );
setMoveKey( spep_12 -7 + 16, 1, -272.5, -86 , 0 );
setMoveKey( spep_12 -7 + 18, 1, -227.1, -75.7 , 0 );
setMoveKey( spep_12 -7 + 20, 1, -190, -67.2 , 0 );
setMoveKey( spep_12 -7 + 22, 1, -158.9, -59.9 , 0 );
setMoveKey( spep_12 -7 + 24, 1, -132.3, -53.7 , 0 );
setMoveKey( spep_12 -7 + 26, 1, -109.4, -48.2 , 0 );
setMoveKey( spep_12 -7 + 28, 1, -89.5, -43.4 , 0 );
setMoveKey( spep_12 -7 + 30, 1, -72.2, -39.1 , 0 );
setMoveKey( spep_12 -7 + 32, 1, -57, -35.3 , 0 );
setMoveKey( spep_12 -7 + 34, 1, -43.8, -31.9 , 0 );
setMoveKey( spep_12 -7 + 36, 1, -32.3, -28.9 , 0 );
setMoveKey( spep_12 -7 + 38, 1, -22.3, -26.3 , 0 );
setMoveKey( spep_12 -7 + 40, 1, -13.8, -24 , 0 );
setMoveKey( spep_12 -7 + 42, 1, -6.6, -22 , 0 );
setMoveKey( spep_12 -7 + 44, 1, -0.7, -20.3 , 0 );
setMoveKey( spep_12 -7 + 45, 1, 4, -18.8 , 0 );

setScaleKey( spep_12 -7 + 10, 1, 2.19, 2.19 );
setScaleKey( spep_12 -7 + 45, 1, 2.19, 2.19 );

setRotateKey( spep_12 -7 + 10, 1, -6 );
setRotateKey( spep_12 -7 + 12, 1, -5.1 );
setRotateKey( spep_12 -7 + 14, 1, -4.2 );
setRotateKey( spep_12 -7 + 16, 1, -3.4 );
setRotateKey( spep_12 -7 + 18, 1, -2.5 );
setRotateKey( spep_12 -7 + 20, 1, -1.6 );
setRotateKey( spep_12 -7 + 22, 1, -0.7 );
setRotateKey( spep_12 -7 + 24, 1, 0.1 );
setRotateKey( spep_12 -7 + 26, 1, 1 );
setRotateKey( spep_12 -7 + 28, 1, 1.9 );
setRotateKey( spep_12 -7 + 30, 1, 2.8 );
setRotateKey( spep_12 -7 + 32, 1, 3.6 );
setRotateKey( spep_12 -7 + 34, 1, 4.5 );
setRotateKey( spep_12 -7 + 36, 1, 5.4 );
setRotateKey( spep_12 -7 + 38, 1, 5.6 );
setRotateKey( spep_12 -7 + 40, 1, 5.8 );
setRotateKey( spep_12 -7 + 42, 1, 6 );
setRotateKey( spep_12 -7 + 44, 1, 6.2 );
setRotateKey( spep_12 -7 + 45, 1, 6.5 );

-- ** 音 ** --
--瞬間移動
SE067 = playSeVer2( spep_12 + 6, 1109, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE068 = playSeVer2( spep_12 + 22, 1296, "",spep_12 + 120, 0, 20, -1);
SE069 = playSeVer2( spep_12 + 22, 1282, "",spep_12 + 120, 0, 20, -1);
SE070 = playSeVer2( spep_12 + 22, 1356, "",spep_12 + 120, 0, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 42 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 42 -4;


------------------------------------------------------
-- バストアップで映るベジータが気弾を打つ瞬間が映る(60F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_13 + 0 -4, SP_19, 60, 0x100, -1, 0, 0, 0 );  --バストアップで映るベジータが気弾を打つ瞬間が映る  ef_013
setEffMoveKey( spep_13 + 0 -4, faceup, 0, 0 , 0 );
setEffMoveKey( spep_13 + 60 -4, faceup, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0 -4, faceup, 1.0, 1.0 );
setEffScaleKey( spep_13 + 60 -4, faceup, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0 -4, faceup, 0 );
setEffRotateKey( spep_13 + 60 -4, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -4, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -3, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -2, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -1, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -0, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4 -2, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4 -1, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4, faceup, 0 );

-- ** 音 ** --
--気ダメ
SE071 = playSeVer2( spep_13 + 12, 1035, "", 0, 0, 0, -1);

--オーラ
SE072 = playSeVer2( spep_13 + 12, 1036, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_13 + 36, 1036, "", 0, 0, 0, -1);

--気弾ヒット
SE074 = playSeVer2( spep_13 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 52, SE074, 73 );
SE075 = playSeVer2( spep_13 + 52, 1146, "",spep_13 + 164, 0, 18, -1);
SE076 = playSeVer2( spep_13 + 52, 1258, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_13 + 52, 1306, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 60 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 60 -4;


------------------------------------------------------
-- 敵が先ほどのベジータの攻撃を食らう(60F)
------------------------------------------------------
--spep_14 = 0;

-- ** エフェクト等 ** --
flash_f = entryEffectLife( spep_14 + 0 -4, SP_20, 60, 0x100, -1, 0, 0, 0 );  --敵が先ほどのベジータの攻撃を食らう    ef_014
setEffMoveKey( spep_14 + 0 -4, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_14 + 60 -4, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0 -4, flash_f, 1.0, 1.0 );
setEffScaleKey( spep_14 + 60 -4, flash_f, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0 -4, flash_f, 0 );
setEffRotateKey( spep_14 + 60 -4, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -4, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -3, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -2, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -1, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -0, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4 -2, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4 -1, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4, flash_f, 0 );

flash_b = entryEffectLife( spep_14 + 0 -4, SP_21, 60, 0x80, -1, 0, 0, 0 );  --敵が先ほどのベジータの攻撃を食らう ef_014_b
setEffMoveKey( spep_14 + 0 -4, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_14 + 60 -4, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0 -4, flash_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 60 -4, flash_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0 -4, flash_b, 0 );
setEffRotateKey( spep_14 + 60 -4, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -4, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -3, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -2, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -1, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -0, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4 -2, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4 -1, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4, flash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_14 + 0, 1, 1 );
setDisp( spep_14 -7 + 38, 1, 0 );
changeAnime( spep_14 + 0, 1, 107 );
changeAnime( spep_14 -7 + 10, 1, 108 );

setMoveKey( spep_14 + 0, 1, 96.2, 38.4 , 0 );
setMoveKey( spep_14 -7 + 9, 1, 96.2, 38.4 , 0 );
setMoveKey( spep_14 -7 + 10, 1, 192.3, 78.1 , 0 );
setMoveKey( spep_14 -7 + 11, 1, 192.3, 78.1 , 0 );
setMoveKey( spep_14 -7 + 12, 1, 182.4, 68.2 , 0 );
setMoveKey( spep_14 -7 + 13, 1, 182.4, 68.2 , 0 );
setMoveKey( spep_14 -7 + 14, 1, 183.3, 69.1 , 0 );
setMoveKey( spep_14 -7 + 15, 1, 183.3, 69.1 , 0 );
setMoveKey( spep_14 -7 + 16, 1, 289, 39.8 , 0 );
setMoveKey( spep_14 -7 + 17, 1, 289, 39.8 , 0 );
setMoveKey( spep_14 -7 + 18, 1, 279.1, 29.9 , 0 );
setMoveKey( spep_14 -7 + 19, 1, 279.1, 29.9 , 0 );
setMoveKey( spep_14 -7 + 20, 1, 285.2, 25 , 0 );
setMoveKey( spep_14 -7 + 21, 1, 285.2, 25 , 0 );
setMoveKey( spep_14 -7 + 22, 1, 274.5, 35.7 , 0 );
setMoveKey( spep_14 -7 + 23, 1, 274.5, 35.7 , 0 );
setMoveKey( spep_14 -7 + 24, 1, 331.6, 13 , 0 );
setMoveKey( spep_14 -7 + 25, 1, 331.6, 13 , 0 );
setMoveKey( spep_14 -7 + 26, 1, 321.7, 3.1 , 0 );
setMoveKey( spep_14 -7 + 27, 1, 321.7, 3.1 , 0 );
setMoveKey( spep_14 -7 + 28, 1, 327.8, -1.8 , 0 );
setMoveKey( spep_14 -7 + 29, 1, 327.8, -1.8 , 0 );
setMoveKey( spep_14 -7 + 30, 1, 325.1, 12.8 , 0 );
setMoveKey( spep_14 -7 + 31, 1, 325.1, 12.8 , 0 );
setMoveKey( spep_14 -7 + 32, 1, 324.9, 2.2 , 0 );
setMoveKey( spep_14 -7 + 33, 1, 324.9, 2.2 , 0 );
setMoveKey( spep_14 -7 + 34, 1, 330.5, 7.9 , 0 );
setMoveKey( spep_14 -7 + 38, 1, 330.5, 7.9 , 0 );

setScaleKey( spep_14 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_14 -7 + 9, 1, 1.72, 1.72 );
setScaleKey( spep_14 -7 + 10, 1, 3.08, 3.08 );
setScaleKey( spep_14 -7 + 15, 1, 3.08, 3.08 );
setScaleKey( spep_14 -7 + 16, 1, 2.12, 2.12 );
setScaleKey( spep_14 -7 + 23, 1, 2.12, 2.12 );
setScaleKey( spep_14 -7 + 24, 1, 1.62, 1.62 );
setScaleKey( spep_14 -7 + 29, 1, 1.62, 1.62 );
setScaleKey( spep_14 -7 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_14 -7 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_14 -7 + 38, 1, 1.24, 1.24 );

setRotateKey( spep_14 + 0, 1, -28 );
setRotateKey( spep_14 -7 + 9, 1, -28 );
setRotateKey( spep_14 -7 + 10, 1, 11.9 );
setRotateKey( spep_14 -7 + 34, 1, 11.9 );
setRotateKey( spep_14 -7 + 38, 1, 11.9 );

-- ** 音 ** --
--オーラ
SE078 = playSeVer2( spep_14 + 0, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_14 + 0, 0, 60 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_15 = spep_14 + 60 -4;


------------------------------------------------------
-- ベジータが放った気功波で球体状に爆発でフィニッシュ(196F)
------------------------------------------------------
--spep_15 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_15 + 0 -4, SP_22, 0x100, -1, 0, 0, 0 );  --ベジータが放った気功波で球体状に爆発でフィニッシュ   ef_015
setEffMoveKey( spep_15 + 0 -4, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_15 + 196 -4, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_15 + 0 -4, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_15 + 196 -4, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0 -4, finish_f, 0 );
setEffRotateKey( spep_15 + 196 -4, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -4, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -3, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -2, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -1, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -0, finish_f, 255 );
setEffAlphaKey( spep_15 + 196 -4, finish_f, 255 );

-- ** 音 ** --
--爆発
SE079 = playSeVer2( spep_15 + 28, 1159, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_15 + 54, 1024, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_15 + 60, 1067, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_15 + 66, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_15 + 0, 0, 196 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_15 + 40 -4 );
endPhase( spep_15 + 186 -4 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 3人が構える(52F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 52, 0x100, -1, 0, 0, 0 );  --3人が構える  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 52, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 52, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 52, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 52 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 52 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 52, first_f, 0 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 4, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 126 );
SE002 = playSeVer2( spep_0 + 4, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 52 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 52;


------------------------------------------------------
-- ベジータが構える(98F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0 -4, SP_02, 98, 0x100, -1, 0, 0, 0 );  --ベジータが構える    ef_002
setEffMoveKey( spep_1 + 0 -4, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98 -4, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0 -4, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 98 -4, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0 -4, kamae, 0 );
setEffRotateKey( spep_1 + 98 -4, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -4, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -3, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -2, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -1, kamae, 0 );
setEffAlphaKey( spep_1 + 0 -0, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -2 -4, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -1 -4, kamae, 255 );
setEffAlphaKey( spep_1 + 98 -4, kamae, 0 );

spep_x = spep_1 + 12 -4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
--SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--力む
SE004 = playSeVer2( spep_1 + 10, 1330, "",spep_1 + 104, 0, 10, -1);

--ベジータ気ダメ
SE005 = playSeVer2( spep_1 + 20, 1035, "",spep_1 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 20, SE005, 126 );
SE006 = playSeVer2( spep_1 + 20, 1298, "",spep_1 + 104, 0, 12, -1);

--オーラ
SE007 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98 + 2 -4, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_1 + 86 -4, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_c = spep_1 + 98 -4;

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
spep_3 = spep_c + 94;

------------------------------------------------------
-- 4人が画面外へ飛んでいく(52F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0 -4, SP_03r, 52, 0x100, -1, 0, 0, 0 );  --4人が画面外へ飛んでいく    ef_003
setEffMoveKey( spep_3 + 0 -4, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 52 -4, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0 -4, move, -1.0, 1.0 );
setEffScaleKey( spep_3 + 52 -4, move, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0 -4, move, 0 );
setEffRotateKey( spep_3 + 52 -4, move, 0 );
setEffAlphaKey( spep_3 + 0 -4, move, 0 );
setEffAlphaKey( spep_3 + 0 -3, move, 0 );
setEffAlphaKey( spep_3 + 0 -2, move, 0 );
setEffAlphaKey( spep_3 + 0 -1, move, 0 );
setEffAlphaKey( spep_3 + 0 -0, move, 255 );
setEffAlphaKey( spep_3 + 52 -4 -2, move, 255 );
setEffAlphaKey( spep_3 + 52 -4 -1, move, 255 );
setEffAlphaKey( spep_3 + 52 -4, move, 0 );

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_3 + 6, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 6, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 6, 1116, "",spep_3 + 48, 0, 18, -1);

--トランクス気弾１
--[[SE014 = playSeVer2( spep_3 + 38, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE014,  367 );
setBandpassFilter   ( spep_3 + 38, SE014, 580, 24000 );
SE015 = playSeVer2( spep_3 + 38, 1264, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 40, 1358, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE016, 75 );
SE017 = playSeVer2( spep_3 + 40, 1155, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 44, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE018, 120 );]]

--トランクス気弾１
SE015 = playSeVer2( spep_3 + 38, 1264, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 40, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE016, 140 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 52 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 52 -4;


------------------------------------------------------
-- トランクスが斜め上から気弾を打ちながら飛んでくる(80F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tshot = entryEffectLife( spep_4 + 0 -4, SP_04r, 80, 0x100, -1, 0, 0, 0 );  --トランクスが斜め上から気弾を打ちながら飛んでくる   ef_004
setEffMoveKey( spep_4 + 0 -4, tshot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80 -4, tshot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -4, tshot, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80 -4, tshot, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -4, tshot, 0 );
setEffRotateKey( spep_4 + 80 -4, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -4, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -3, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -2, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -1, tshot, 0 );
setEffAlphaKey( spep_4 + 0 -0, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4 -2, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4 -1, tshot, 255 );
setEffAlphaKey( spep_4 + 80 -4, tshot, 0 );

-- ** 音 ** --
--トランクス気弾２
--[[SE019 = playSeVer2( spep_4 + 18, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE019,  367 );
setBandpassFilter( spep_4 + 18, SE019, 580, 24000 );
SE021 = playSeVer2( spep_4 + 20, 1358, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 20, 1155, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 24, 1016, "", 0, 0, 0, -1);]]

SE019 = playSeVer2( spep_4 + 20, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE019, 140 );

--トランクス気弾３
--[[SE020 = playSeVer2( spep_4 + 38, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE020,  367 );
setBandpassFilter( spep_4 + 38, SE020, 580, 24000 );
SE025 = playSeVer2( spep_4 + 40, 1358, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 40, 1155, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 44, 1016, "", 0, 0, 0, -1);]]

SE025 = playSeVer2( spep_4 + 40, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE025, 140 );

--トランクス気弾４
--[[SE024 = playSeVer2( spep_4 + 56, 1152, "", 0, 2, 0, -1);
setStartTimeMs( SE024,  367 );
setBandpassFilter   ( spep_4 + 56, SE024, 580, 24000 );
SE028 = playSeVer2( spep_4 + 58, 1358, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_4 + 58, 1155, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 62, 1016, "", 0, 0, 0, -1);]]

SE028 = playSeVer2( spep_4 + 58, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE028, 140 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80 -4;


------------------------------------------------------
-- 悟飯と悟天が気弾等を撃っている(84F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
dshot = entryEffectLife( spep_5 + 0 -4, SP_05r, 83, 0x100, -1, 0, 0, 0 );  --悟飯と悟天が気弾等を撃っている    ef_005
setEffMoveKey( spep_5 + 0 -4, dshot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 83 -4, dshot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0 -4, dshot, -1.0, 1.0 );
setEffScaleKey( spep_5 + 83 -4, dshot, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0 -4, dshot, 0 );
setEffRotateKey( spep_5 + 83 -4, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -4, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -3, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -2, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -1, dshot, 0 );
setEffAlphaKey( spep_5 + 0 -0, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4 -2, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4 -1, dshot, 255 );
setEffAlphaKey( spep_5 + 83 -4, dshot, 0 );

-- ** 音 ** --
--悟飯＆悟天気弾１
--[[SE031 = playSeVer2( spep_5 + 8, 1177, "",spep_5 + 54, 0, 30, -1);
setSeVolumeByWorkId( spep_5 + 8, SE031, 88 );
SE032 = playSeVer2( spep_5 + 8, 1201, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 8, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 8, 1338, "",spep_5 + 56, 0, 20, -1);]]

SE031 = playSeVer2( spep_5 + 8, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE031, 140 );
SE035 = playSeVer2( spep_5 + 14, 1015, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 83 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE031, 0);
    stopSe( SP_dodge - 12, SE035, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--悟飯＆悟天気弾２
--[[SE036 = playSeVer2( spep_5 + 40, 1177, "",spep_5 + 86, 0, 30, -1);
setSeVolumeByWorkId( spep_5 + 40, SE036, 86 );
SE037 = playSeVer2( spep_5 + 40, 1201, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 40, 1016, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 40, 1338, "",spep_5 + 88, 0, 20, -1);
SE040 = playSeVer2( spep_5 + 62, 1177, "",spep_5 + 108, 0, 30, -1);
SE041 = playSeVer2( spep_5 + 62, 1201, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_5 + 62, 1016, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 62, 1338, "",spep_5 + 110, 0, 20, -1);]]

--悟飯＆悟天気弾２
SE036 = playSeVer2( spep_5 + 40, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE036, 140 );
SE040 = playSeVer2( spep_5 + 62, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 62, SE040, 140 );

--気弾飛んでいく
SE044 = playSeVer2( spep_5 + 74, 1357, "",spep_5 + 144, 2, 28, -1);
setStartTimeMs( SE044,  183 );

--気弾飛んでいく
SE044 = playSeVer2( spep_5 + 74, 1357, "",spep_5 + 144, 2, 28, -1);
setStartTimeMs( SE044,  183 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 83 -4;


------------------------------------------------------
-- 気弾が敵に着弾して奥へ吹っ飛ぶ(50F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gumiuti_f = entryEffectLife( spep_6 + 0 -4, SP_06, 50, 0x100, -1, 0, 0, 0 );  --気弾が敵に着弾して奥へ吹っ飛ぶ ef_006
setEffMoveKey( spep_6 + 0 -4, gumiuti_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50 -4, gumiuti_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0 -4, gumiuti_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 50 -4, gumiuti_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0 -4, gumiuti_f, 0 );
setEffRotateKey( spep_6 + 50 -4, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -4, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -3, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -2, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -1, gumiuti_f, 0 );
setEffAlphaKey( spep_6 + 0 -0, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4 -2, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4 -1, gumiuti_f, 255 );
setEffAlphaKey( spep_6 + 50 -4, gumiuti_f, 0 );

gumiuti_b = entryEffectLife( spep_6 + 0 -4, SP_07, 50, 0x80, -1, 0, 0, 0 );  --気弾が敵に着弾して奥へ吹っ飛ぶ  ef_006_b
setEffMoveKey( spep_6 + 0 -4, gumiuti_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50 -4, gumiuti_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0 -4, gumiuti_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 50 -4, gumiuti_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0 -4, gumiuti_b, 0 );
setEffRotateKey( spep_6 + 50 -4, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -4, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -3, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -2, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -1, gumiuti_b, 0 );
setEffAlphaKey( spep_6 + 0 -0, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4 -2, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4 -1, gumiuti_b, 255 );
setEffAlphaKey( spep_6 + 50 -4, gumiuti_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 + 54 -7, 1, 0 );
changeAnime( spep_6 + 0, 1, 4 );
changeAnime( spep_6 -7 + 32, 1, 105 );

setMoveKey( spep_6 + 0, 1, 2.9, -132.8 , 0 );
setMoveKey( spep_6 -7 + 24, 1, 2.9, -132.8 , 0 );
setMoveKey( spep_6 -7 + 26, 1, 11, -140.4 , 0 );
setMoveKey( spep_6 -7 + 28, 1, 5, -123.1 , 0 );
setMoveKey( spep_6 -7 + 31, 1, -3.9, -144.9 , 0 );
setMoveKey( spep_6 -7 + 32, 1, 1.4, 26.7 , 0 );
setMoveKey( spep_6 -7 + 34, 1, -8.6, 30.9 , 0 );
setMoveKey( spep_6 -7 + 36, 1, -12.9, 75.4 , 0 );
setMoveKey( spep_6 -7 + 38, 1, -5.7, 84.1 , 0 );
setMoveKey( spep_6 -7 + 40, 1, -17.4, 122.8 , 0 );
setMoveKey( spep_6 -7 + 42, 1, -13, 137.5 , 0 );
setMoveKey( spep_6 -7 + 44, 1, -2.2, 176.2 , 0 );
setMoveKey( spep_6 -7 + 46, 1, -1.7, 195.1 , 0 );
setMoveKey( spep_6 -7 + 48, 1, -15.1, 230.6 , 0 );
setMoveKey( spep_6 -7 + 50, 1, -21.7, 245.5 , 0 );
setMoveKey( spep_6 -7 + 52, 1, -12.1, 247 , 0 );
--setMoveKey( spep_6 -7 + 54, 1, 18.4, 253.5 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_6 -7 + 31, 1, 1.2, 1.2 );
setScaleKey( spep_6 -7 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_6 -7 + 34, 1, 0.77, 0.77 );
setScaleKey( spep_6 -7 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_6 -7 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_6 -7 + 40, 1, 0.72, 0.72 );
setScaleKey( spep_6 -7 + 42, 1, 0.7, 0.7 );
setScaleKey( spep_6 -7 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_6 -7 + 46, 1, 0.66, 0.66 );
setScaleKey( spep_6 -7 + 48, 1, 0.64, 0.64 );
setScaleKey( spep_6 -7 + 50, 1, 0.62, 0.62 );
setScaleKey( spep_6 -7 + 52, 1, 0.6, 0.6 );
--setScaleKey( spep_6 -7 + 54, 1, 0.59, 0.59 );

setRotateKey( spep_6 + 0, 1, -0 );
setRotateKey( spep_6 -7 + 31, 1, -0 );
setRotateKey( spep_6 -7 + 32, 1, -18.3 );
setRotateKey( spep_6 -7 + 34, 1, -16.9 );
setRotateKey( spep_6 -7 + 36, 1, -15.6 );
setRotateKey( spep_6 -7 + 38, 1, -14.3 );
setRotateKey( spep_6 -7 + 40, 1, -13 );
setRotateKey( spep_6 -7 + 42, 1, -11.7 );
setRotateKey( spep_6 -7 + 44, 1, -10.3 );
setRotateKey( spep_6 -7 + 46, 1, -9 );
setRotateKey( spep_6 -7 + 48, 1, -7.7 );
setRotateKey( spep_6 -7 + 50, 1, -6.4 );
setRotateKey( spep_6 -7 + 52, 1, -5.1 );
--setRotateKey( spep_6 -7 + 54, 1, 3.7 );

-- ** 音 ** --
--気弾飛んでいく
SE045 = playSeVer2( spep_6 + 0, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_6 + 10, 1016, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_6 + 16, 1159, "",spep_6 + 84, 0, 26, -1);
SE048 = playSeVer2( spep_6 + 24, 1024, "",spep_6 + 84, 0, 26, -1);
SE049 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);

--吹き飛ぶ
SE050 = playSeVer2( spep_6 + 42, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 50 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 50 -4;


------------------------------------------------------
-- 飛んできた敵の背後に悟飯が来る(32F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
idou_f = entryEffectLife( spep_7 + 0 -4, SP_08, 32, 0x100, -1, 0, 0, 0 );  --飛んできた敵の背後に悟飯が来る    ef_007
setEffMoveKey( spep_7 + 0 -4, idou_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 32 -4, idou_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0 -4, idou_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 32 -4, idou_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0 -4, idou_f, 0 );
setEffRotateKey( spep_7 + 32 -4, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -4, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -3, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -2, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -1, idou_f, 0 );
setEffAlphaKey( spep_7 + 0 -0, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4 -1, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4 -2, idou_f, 255 );
setEffAlphaKey( spep_7 + 32 -4, idou_f, 0 );

idou_b = entryEffectLife( spep_7 + 0 -4, SP_09, 32, 0x80, -1, 0, 0, 0 );  --飛んできた敵の背後に悟飯が来る ef_007_b
setEffMoveKey( spep_7 + 0 -4, idou_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 32 -4, idou_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0 -4, idou_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 32 -4, idou_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0 -4, idou_b, 0 );
setEffRotateKey( spep_7 + 32 -4, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -4, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -3, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -2, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -1, idou_b, 0 );
setEffAlphaKey( spep_7 + 0 -0, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4 -2, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4 -1, idou_b, 255 );
setEffAlphaKey( spep_7 + 32 -4, idou_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 -7 + 0, 1, 531.1, -701.2 , 0 );
setMoveKey( spep_7 -7 + 7, 1, 531.1, -701.2 , 0 );
setMoveKey( spep_7 -7 + 8, 1, 429.9, -579.8 , 0 );
setMoveKey( spep_7 -7 + 10, 1, 363.2, -496.3 , 0 );
setMoveKey( spep_7 -7 + 12, 1, 311, -429.7 , 0 );
setMoveKey( spep_7 -7 + 14, 1, 267.4, -373.2 , 0 );
setMoveKey( spep_7 -7 + 16, 1, 229.5, -323.6 , 0 );
setMoveKey( spep_7 -7 + 18, 1, 196, -279.2 , 0 );
setMoveKey( spep_7 -7 + 20, 1, 165.8, -238.9 , 0 );
setMoveKey( spep_7 -7 + 22, 1, 138.4, -202 , 0 );
setMoveKey( spep_7 -7 + 24, 1, 113.4, -167.9 , 0 );
setMoveKey( spep_7 -7 + 26, 1, 90.5, -136.4 , 0 );
setMoveKey( spep_7 -7 + 28, 1, 69.5, -107.1 , 0 );
setMoveKey( spep_7 -7 + 30, 1, 50.2, -79.9 , 0 );
setMoveKey( spep_7 -7 + 32, 1, 32.7, -54.8 , 0 );
setMoveKey( spep_7 -7 + 34, 1, 17.2, -32.2 , 0 );

setScaleKey( spep_7 -7 + 0, 1, 12.65, 12.65 );
setScaleKey( spep_7 -7 + 7, 1, 12.65, 12.65 );
setScaleKey( spep_7 -7 + 8, 1, 9.99, 9.65 );
setScaleKey( spep_7 -7 + 10, 1, 8.54, 8.35 );
setScaleKey( spep_7 -7 + 12, 1, 7.44, 7.36 );
setScaleKey( spep_7 -7 + 14, 1, 6.54, 6.53 );
setScaleKey( spep_7 -7 + 16, 1, 5.77, 5.81 );
setScaleKey( spep_7 -7 + 18, 1, 5.08, 5.16 );
setScaleKey( spep_7 -7 + 20, 1, 4.47, 4.58 );
setScaleKey( spep_7 -7 + 22, 1, 3.92, 4.03 );
setScaleKey( spep_7 -7 + 24, 1, 3.42, 3.53 );
setScaleKey( spep_7 -7 + 26, 1, 2.96, 3.06 );
setScaleKey( spep_7 -7 + 28, 1, 2.54, 2.63 );
setScaleKey( spep_7 -7 + 30, 1, 2.15, 2.22 );
setScaleKey( spep_7 -7 + 32, 1, 1.8, 1.84 );
setScaleKey( spep_7 -7 + 34, 1, 1.49, 1.49 );

setRotateKey( spep_7 -7 + 0, 1, -38.2 );
setRotateKey( spep_7 -7 + 7, 1, -38.2 );
setRotateKey( spep_7 -7 + 8, 1, -37.3 );
setRotateKey( spep_7 -7 + 10, 1, -36.5 );
setRotateKey( spep_7 -7 + 12, 1, -35.6 );
setRotateKey( spep_7 -7 + 14, 1, -34.8 );
setRotateKey( spep_7 -7 + 16, 1, -33.9 );
setRotateKey( spep_7 -7 + 18, 1, -33 );
setRotateKey( spep_7 -7 + 20, 1, -32.2 );
setRotateKey( spep_7 -7 + 22, 1, -31.3 );
setRotateKey( spep_7 -7 + 24, 1, -30.5 );
setRotateKey( spep_7 -7 + 26, 1, -29.6 );
setRotateKey( spep_7 -7 + 28, 1, -28.8 );
setRotateKey( spep_7 -7 + 30, 1, -27.9 );
setRotateKey( spep_7 -7 + 32, 1, -27 );
setRotateKey( spep_7 -7 + 34, 1, -26.2 );

-- ** 音 ** --
--瞬間移動
SE051 = playSeVer2( spep_7 + 0, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_7 + 18, 1359, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_7 + 22, 1009, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_7 + 22, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 32 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 32 -4;


------------------------------------------------------
-- 悟飯が膝蹴りを入れる(30F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_8 + 0 -4, SP_10, 28, 0x100, -1, 0, 0, 0 );  --悟飯が膝蹴りを入れる ef_008
setEffMoveKey( spep_8 + 0 -4, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 28 -4, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0 -4, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 28 -4, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0 -4, kick_f, 0 );
setEffRotateKey( spep_8 + 28 -4, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -4, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -3, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -2, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -1, kick_f, 0 );
setEffAlphaKey( spep_8 + 0 -0, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4 -2, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4 -1, kick_f, 255 );
setEffAlphaKey( spep_8 + 28 -4, kick_f, 0 );

kick_b = entryEffectLife( spep_8 + 0 -4, SP_11, 28, 0x80, -1, 0, 0, 0 );  --悟飯が膝蹴りを入れる  ef_008_b
setEffMoveKey( spep_8 + 0 -4, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 28 -4, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0 -4, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 28 -4, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0 -4, kick_b, 0 );
setEffRotateKey( spep_8 + 28 -4, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -4, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -3, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -2, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -1, kick_b, 0 );
setEffAlphaKey( spep_8 + 0 -0, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4 -2, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4 -1, kick_b, 255 );
setEffAlphaKey( spep_8 + 28 -4, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 -7 + 31, 1, 0 );
changeAnime( spep_8 + 0, 1, 6 );
changeAnime( spep_8 -7 + 10, 1, 8 );

setMoveKey( spep_8 + 0, 1, -139.1, -121.5 , 0 );
setMoveKey( spep_8 + 1, 1, -138.1, -135.7 , 0 );
setMoveKey( spep_8 -7 + 9, 1, -138.1, -135.7 , 0 );
setMoveKey( spep_8 -7 + 10, 1, -429.9, 53.4 , 0 );
setMoveKey( spep_8 -7 + 11, 1, -429.9, 53.4 , 0 );
setMoveKey( spep_8 -7 + 12, 1, -258.3, 47.6 , 0 );
setMoveKey( spep_8 -7 + 13, 1, -258.3, 47.6 , 0 );
setMoveKey( spep_8 -7 + 14, 1, -53.7, 15.9 , 0 );
setMoveKey( spep_8 -7 + 15, 1, -53.7, 15.9 , 0 );
setMoveKey( spep_8 -7 + 16, 1, -105.3, 38.3 , 0 );
setMoveKey( spep_8 -7 + 17, 1, -105.3, 38.3 , 0 );
setMoveKey( spep_8 -7 + 18, 1, -106.4, 26.6 , 0 );
setMoveKey( spep_8 -7 + 20, 1, -277.4, 67.1 , 0 );
setMoveKey( spep_8 -7 + 22, 1, -425.2, 92.8 , 0 );
setMoveKey( spep_8 -7 + 24, 1, -588.6, 130.1 , 0 );
setMoveKey( spep_8 -7 + 26, 1, -749.1, 164.4 , 0 );
setMoveKey( spep_8 -7 + 28, 1, -909.6, 198.8 , 0 );
setMoveKey( spep_8 -7 + 30, 1, -1070, 233.1 , 0 );
setMoveKey( spep_8 -7 + 31, 1, -1230.5, 267.5 , 0 );
--setMoveKey( spep_8 -7 + 33, 1, 1391, 301.9 , 0 );

setScaleKey( spep_8 + 0, 1, 5.49, 5.49 );
setScaleKey( spep_8 -7 + 9, 1, 5.49, 5.49 );
setScaleKey( spep_8 -7 + 10, 1, 6.6, 6.6 );
setScaleKey( spep_8 -7 + 31, 1, 6.6, 6.6 );

setRotateKey( spep_8 + 0, 1, 67 );
setRotateKey( spep_8 -7 + 9, 1, 67 );
setRotateKey( spep_8 -7 + 10, 1, 17.8 );
setRotateKey( spep_8 -7 + 11, 1, 17.8 );
setRotateKey( spep_8 -7 + 12, 1, 16.8 );
setRotateKey( spep_8 -7 + 13, 1, 16.8 );
setRotateKey( spep_8 -7 + 14, 1, 15.8 );
setRotateKey( spep_8 -7 + 15, 1, 15.8 );
setRotateKey( spep_8 -7 + 16, 1, 14.9 );
setRotateKey( spep_8 -7 + 17, 1, 14.9 );
setRotateKey( spep_8 -7 + 18, 1, 13.9 );
setRotateKey( spep_8 -7 + 20, 1, 12.9 );
setRotateKey( spep_8 -7 + 22, 1, 11.9 );
setRotateKey( spep_8 -7 + 24, 1, 10.9 );
setRotateKey( spep_8 -7 + 26, 1, 10 );
setRotateKey( spep_8 -7 + 28, 1, 9 );
setRotateKey( spep_8 -7 + 30, 1, 8 );
setRotateKey( spep_8 -7 + 31, 1, 7 );
--setRotateKey( spep_8 -7 + 33, 1, -6.1 );

-- ** 音 ** --
--悟天向かってくる
SE055 = playSeVer2( spep_8 + 14, 1182, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_8 + 14, 9, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_8 + 14, 1167, "",spep_8 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 14, SE057, 52 );
SE058 = playSeVer2( spep_8 + 14, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 14, SE058, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 28 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 28 -4;


------------------------------------------------------
-- 悟天が正面でズームインしながら殴りにかかってくる(42F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
fly = entryEffectLife( spep_9 + 0 -4, SP_12, 42, 0x100, -1, 0, 0, 0 );  --悟天が正面でズームインしながら殴りにかかってくる  ef_009
setEffMoveKey( spep_9 + 0 -4, fly, 0, 0 , 0 );
setEffMoveKey( spep_9 + 42 -4, fly, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0 -4, fly, -1.0, 1.0 );
setEffScaleKey( spep_9 + 42 -4, fly, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0 -4, fly, 0 );
setEffRotateKey( spep_9 + 42 -4, fly, 0 );
setEffAlphaKey( spep_9 + 0 -4, fly, 0 );
setEffAlphaKey( spep_9 + 0 -3, fly, 0 );
setEffAlphaKey( spep_9 + 0 -2, fly, 0 );
setEffAlphaKey( spep_9 + 0 -1, fly, 0 );
setEffAlphaKey( spep_9 + 0 -0, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4 -1, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4 -2, fly, 255 );
setEffAlphaKey( spep_9 + 42 -4, fly, 0 );

-- ** 音 ** --
--悟天パンチ
SE059 = playSeVer2( spep_9 + 28, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE059, 81 );
SE060 = playSeVer2( spep_9 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE060, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 42 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 42 -4;


------------------------------------------------------
-- 悟天が敵を殴り飛ばす(24F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_10 + 0 -4, SP_13, 24, 0x100, -1, 0, 0, 0 );  --悟天が敵を殴り飛ばす（悟飯も横にいる   ef_010
setEffMoveKey( spep_10 + 0 -4, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 24 -4, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0 -4, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 24 -4, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0 -4, punch_f, 0 );
setEffRotateKey( spep_10 + 24 -4, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -4, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -3, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -2, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -1, punch_f, 0 );
setEffAlphaKey( spep_10 + 0 -0, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4 -2, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4 -1, punch_f, 255 );
setEffAlphaKey( spep_10 + 24 -4, punch_f, 0 );

punch_b = entryEffectLife( spep_10 + 0 -4, SP_14, 24, 0x80, -1, 0, 0, 0 );  --悟天が敵を殴り飛ばす（悟飯も横にいる    ef_010_b
setEffMoveKey( spep_10 + 0 -4, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 24 -4, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0 -4, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_10 + 24 -4, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0 -4, punch_b, 0 );
setEffRotateKey( spep_10 + 24 -4, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -4, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -3, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -2, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -1, punch_b, 0 );
setEffAlphaKey( spep_10 + 0 -0, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4 -2, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4 -1, punch_b, 255 );
setEffAlphaKey( spep_10 + 24 -4, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -7 + 27, 1, 0 );
changeAnime( spep_10 + 0, 1, 108 );

setMoveKey( spep_10 + 0, 1, 16.9, 106.8 , 0 );
--setMoveKey( spep_10 -7 + 6, 1, -16.9, 106.8 , 0 );
setMoveKey( spep_10 -7 + 8, 1, 84.6, 159.7 , 0 );
setMoveKey( spep_10 -7 + 10, 1, 92.9, 164.4 , 0 );
setMoveKey( spep_10 -7 + 12, 1, 181.8, 227.3 , 0 );
setMoveKey( spep_10 -7 + 14, 1, 206.5, 242 , 0 );
setMoveKey( spep_10 -7 + 16, 1, 281.7, 296.2 , 0 );
setMoveKey( spep_10 -7 + 18, 1, 312.2, 316.5 , 0 );
setMoveKey( spep_10 -7 + 20, 1, 378, 366.8 , 0 );
setMoveKey( spep_10 -7 + 22, 1, 413.9, 395.8 , 0 );
setMoveKey( spep_10 -7 + 24, 1, 476.6, 438.6 , 0 );
setMoveKey( spep_10 -7 + 26, 1, 517.7, 468.3 , 0 );
setMoveKey( spep_10 -7 + 27, 1, 568.2, 503.8 , 0 );

setScaleKey( spep_10 + 0, 1, 2.48, 2.48 );
--setScaleKey( spep_10 -7 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_10 -7 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_10 -7 + 10, 1, 2.17, 2.17 );
setScaleKey( spep_10 -7 + 12, 1, 2.02, 2.02 );
setScaleKey( spep_10 -7 + 14, 1, 1.87, 1.87 );
setScaleKey( spep_10 -7 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_10 -7 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_10 -7 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_10 -7 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_10 -7 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_10 -7 + 26, 1, 0.96, 0.96 );
setScaleKey( spep_10 -7 + 27, 1, 0.81, 0.81 );

setRotateKey( spep_10 + 0, 1, -37.2 );
--setRotateKey( spep_10 -7 + 6, 1, 37.2 );
setRotateKey( spep_10 -7 + 8, 1, -35.9 );
setRotateKey( spep_10 -7 + 10, 1, -34.6 );
setRotateKey( spep_10 -7 + 12, 1, -33.3 );
setRotateKey( spep_10 -7 + 14, 1, -32 );
setRotateKey( spep_10 -7 + 16, 1, -30.7 );
setRotateKey( spep_10 -7 + 18, 1, -29.4 );
setRotateKey( spep_10 -7 + 20, 1, -28.1 );
setRotateKey( spep_10 -7 + 22, 1, -26.9 );
setRotateKey( spep_10 -7 + 24, 1, -25.6 );
setRotateKey( spep_10 -7 + 26, 1, -24.3 );
setRotateKey( spep_10 -7 + 27, 1, -23 );

-- ** 音 ** --
--瞬間移動
SE061 = playSeVer2( spep_10 + 18, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 24 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 24 -4;


------------------------------------------------------
-- 吹っ飛ぶ敵に先回りしトランクスが気弾を放つ(70F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
hanatu_f = entryEffectLife( spep_11 + 0 -4, SP_15, 70, 0x100, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ   ef_011
setEffMoveKey( spep_11 + 0 -4, hanatu_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70 -4, hanatu_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0 -4, hanatu_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 70 -4, hanatu_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0 -4, hanatu_f, 0 );
setEffRotateKey( spep_11 + 70 -4, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -3, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -2, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -1, hanatu_f, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4 -2, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4 -1, hanatu_f, 255 );
setEffAlphaKey( spep_11 + 70 -4, hanatu_f, 0 );

hanatu_b = entryEffectLife( spep_11 + 0 -4, SP_16, 70, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしトランクスが気弾を放つ    ef_011_b
setEffMoveKey( spep_11 + 0 -4, hanatu_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70 -4, hanatu_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0 -4, hanatu_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 70 -4, hanatu_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0 -4, hanatu_b, 0 );
setEffRotateKey( spep_11 + 70 -4, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -4, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -3, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -2, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -1, hanatu_b, 0 );
setEffAlphaKey( spep_11 + 0 -0, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4 -2, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4 -1, hanatu_b, 255 );
setEffAlphaKey( spep_11 + 70 -4, hanatu_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 -7 + 14, 1, 1 );
setDisp( spep_11 -7 + 73, 1, 0 );
changeAnime( spep_11 + 0, 1, 105 );
changeAnime( spep_11 -7 + 46, 1, 6 );

setBlendColor( spep_11 -7 + 46, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_11 -7 + 56, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_11 -7 + 58, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_11 -7 + 60, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_11 -7 + 60, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_11 -7 + 72, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_11 -7 + 73, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_11 -7 + 14, 1, -794.7, -1550.7 , 0 );
setMoveKey( spep_11 -7 + 16, 1, -620.2, -1260.8 , 0 );
setMoveKey( spep_11 -7 + 18, 1, -533.5, -1109.8 , 0 );
setMoveKey( spep_11 -7 + 20, 1, -466.7, -989.9 , 0 );
setMoveKey( spep_11 -7 + 22, 1, -410.1, -886.4 , 0 );
setMoveKey( spep_11 -7 + 24, 1, -360, -793.5 , 0 );
setMoveKey( spep_11 -7 + 26, 1, -314.4, -708.3 , 0 );
setMoveKey( spep_11 -7 + 28, 1, -272.2, -629 , 0 );
setMoveKey( spep_11 -7 + 30, 1, -232.7, -554.5 , 0 );
setMoveKey( spep_11 -7 + 32, 1, -195.3, -484.1 , 0 );
setMoveKey( spep_11 -7 + 34, 1, -159.7, -417.2 , 0 );
setMoveKey( spep_11 -7 + 36, 1, -134.7, -344.4 , 0 );
setMoveKey( spep_11 -7 + 38, 1, -92.2, -293.3 , 0 );
setMoveKey( spep_11 -7 + 40, 1, -67, -240 , 0 );
setMoveKey( spep_11 -7 + 42, 1, -26.5, -173.8 , 0 );
setMoveKey( spep_11 -7 + 44, 1, 2, -132 , 0 );
setMoveKey( spep_11 -7 + 45, 1, 2, -132 , 0 );
setMoveKey( spep_11 -7 + 46, 1, 23.7, -19.8 , 0 );
setMoveKey( spep_11 -7 + 48, 1, 20.8, -16.9 , 0 );
setMoveKey( spep_11 -7 + 50, 1, 22.3, -16.4 , 0 );
setMoveKey( spep_11 -7 + 52, 1, 23.9, -15.9 , 0 );
setMoveKey( spep_11 -7 + 54, 1, 22.4, -16.5 , 0 );
setMoveKey( spep_11 -7 + 56, 1, 21, -17 , 0 );
setMoveKey( spep_11 -7 + 58, 1, 19.8, -18.2 , 0 );
setMoveKey( spep_11 -7 + 60, 1, 18.5, -19.5 , 0 );
setMoveKey( spep_11 -7 + 62, 1, 17.2, -20.8 , 0 );
setMoveKey( spep_11 -7 + 64, 1, 2, -22.9 , 0 );
setMoveKey( spep_11 -7 + 66, 1, -37.2, -26.2 , 0 );
setMoveKey( spep_11 -7 + 68, 1, -88.8, -22.9 , 0 );
setMoveKey( spep_11 -7 + 70, 1, -173.2, -18 , 0 );
setMoveKey( spep_11 -7 + 72, 1, -254, -32.8 , 0 );
setMoveKey( spep_11 -7 + 73, 1, -365.1, -43.4 , 0 );

setScaleKey( spep_11 -7 + 14, 1, 20.3, 20.52 );
setScaleKey( spep_11 -7 + 16, 1, 17.1, 17.18 );
setScaleKey( spep_11 -7 + 18, 1, 15.38, 15.45 );
setScaleKey( spep_11 -7 + 20, 1, 13.97, 14.04 );
setScaleKey( spep_11 -7 + 22, 1, 12.72, 12.79 );
setScaleKey( spep_11 -7 + 24, 1, 11.58, 11.64 );
setScaleKey( spep_11 -7 + 26, 1, 10.51, 10.57 );
setScaleKey( spep_11 -7 + 28, 1, 9.51, 9.57 );
setScaleKey( spep_11 -7 + 30, 1, 8.55, 8.6 );
setScaleKey( spep_11 -7 + 32, 1, 7.63, 7.68 );
setScaleKey( spep_11 -7 + 34, 1, 6.74, 6.79 );
setScaleKey( spep_11 -7 + 36, 1, 5.89, 5.93 );
setScaleKey( spep_11 -7 + 38, 1, 5.06, 5.1 );
setScaleKey( spep_11 -7 + 40, 1, 4.26, 4.3 );
setScaleKey( spep_11 -7 + 42, 1, 3.49, 3.52 );
setScaleKey( spep_11 -7 + 44, 1, 2.74, 2.77 );
setScaleKey( spep_11 -7 + 45, 1, 2.74, 2.77 );
setScaleKey( spep_11 -7 + 46, 1, 2.48, 2.48 );
setScaleKey( spep_11 -7 + 62, 1, 2.48, 2.48 );
setScaleKey( spep_11 -7 + 64, 1, 2.68, 2.67 );
setScaleKey( spep_11 -7 + 66, 1, 3.21, 3.21 );
setScaleKey( spep_11 -7 + 68, 1, 4.03, 4.02 );
setScaleKey( spep_11 -7 + 70, 1, 5.1, 5.09 );
setScaleKey( spep_11 -7 + 72, 1, 6.38, 6.37 );
setScaleKey( spep_11 -7 + 73, 1, 7.87, 7.86 );

setRotateKey( spep_11 -7 + 14, 1, -5 );
setRotateKey( spep_11 -7 + 16, 1, -4.1 );
setRotateKey( spep_11 -7 + 18, 1, -3.2 );
setRotateKey( spep_11 -7 + 20, 1, -2.3 );
setRotateKey( spep_11 -7 + 22, 1, -1.3 );
setRotateKey( spep_11 -7 + 24, 1, -0.4 );
setRotateKey( spep_11 -7 + 26, 1, 0.5 );
setRotateKey( spep_11 -7 + 28, 1, 1.4 );
setRotateKey( spep_11 -7 + 30, 1, 2.3 );
setRotateKey( spep_11 -7 + 32, 1, 3.2 );
setRotateKey( spep_11 -7 + 34, 1, 4.1 );
setRotateKey( spep_11 -7 + 36, 1, 5 );
setRotateKey( spep_11 -7 + 38, 1, 6 );
setRotateKey( spep_11 -7 + 40, 1, 6.9 );
setRotateKey( spep_11 -7 + 42, 1, 7.8 );
setRotateKey( spep_11 -7 + 44, 1, 8.7 );
setRotateKey( spep_11 -7 + 45, 1, 8.7 );
setRotateKey( spep_11 -7 + 46, 1, 35.2 );
setRotateKey( spep_11 -7 + 62, 1, 35.2 );
setRotateKey( spep_11 -7 + 64, 1, 33.8 );
setRotateKey( spep_11 -7 + 66, 1, 32.4 );
setRotateKey( spep_11 -7 + 68, 1, 31 );
setRotateKey( spep_11 -7 + 70, 1, 29.6 );
setRotateKey( spep_11 -7 + 72, 1, 28.2 );
setRotateKey( spep_11 -7 + 73, 1, 26.8 );

-- ** 音 ** --
--トランクス逆さで気弾撃つ
SE062 = playSeVer2( spep_11 + 20, 1022, "",spep_11 + 92, 0, 30, -1);
SE063 = playSeVer2( spep_11 + 22, 1130, "", 0, 0, 0, 0.6);
setPitch( spep_11 + 22, SE063, -400 );
setTimeStretch( SE063, 0.92, 30, 4 );
SE064 = playSeVer2( spep_11 + 22, 1236, "",spep_11 + 96, 0, 28, -1);
SE065 = playSeVer2( spep_11 + 22, 1017, "", 0, 0, 0, -1);

--吹き飛ぶ
SE066 = playSeVer2( spep_11 + 50, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 70 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 70 -4;


------------------------------------------------------
-- 吹っ飛ぶ敵に先回りしベジータが気弾を放つ(42F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
bmove_f = entryEffectLife( spep_12 + 0 -4, SP_17, 42, 0x100, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしベジータが気弾を放つ ef_012
setEffMoveKey( spep_12 + 0 -4, bmove_f, 0, 0 , 0 );
setEffMoveKey( spep_12 + 42 -4, bmove_f, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0 -4, bmove_f, -1.0, 1.0 );
setEffScaleKey( spep_12 + 42 -4, bmove_f, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0 -4, bmove_f, 0 );
setEffRotateKey( spep_12 + 42 -4, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -4, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -3, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -2, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -1, bmove_f, 0 );
setEffAlphaKey( spep_12 + 0 -0, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4 -2, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4 -1, bmove_f, 255 );
setEffAlphaKey( spep_12 + 42 -4, bmove_f, 0 );

bmove_b = entryEffectLife( spep_12 + 0 -4, SP_18, 42, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ敵に先回りしベジータが気弾を放つ  ef_012_b
setEffMoveKey( spep_12 + 0 -4, bmove_b, 0, 0 , 0 );
setEffMoveKey( spep_12 + 42 -4, bmove_b, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0 -4, bmove_b, -1.0, 1.0 );
setEffScaleKey( spep_12 + 42 -4, bmove_b, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0 -4, bmove_b, 0 );
setEffRotateKey( spep_12 + 42 -4, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -4, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -3, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -2, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -1, bmove_b, 0 );
setEffAlphaKey( spep_12 + 0 -0, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4 -2, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4 -1, bmove_b, 255 );
setEffAlphaKey( spep_12 + 42 -4, bmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 3, 1, 1 );
setDisp( spep_12 -7 + 45, 1, 100 );
changeAnime( spep_12 + 3, 1, 6 );

setMoveKey( spep_12 -7 + 10, 1, 639.5, -166.9 , 0 );
setMoveKey( spep_12 -7 + 12, 1, 414.2, -117.7 , 0 );
setMoveKey( spep_12 -7 + 14, 1, 330.9, -99.1 , 0 );
setMoveKey( spep_12 -7 + 16, 1, 272.5, -86 , 0 );
setMoveKey( spep_12 -7 + 18, 1, 227.1, -75.7 , 0 );
setMoveKey( spep_12 -7 + 20, 1, 190, -67.2 , 0 );
setMoveKey( spep_12 -7 + 22, 1, 158.9, -59.9 , 0 );
setMoveKey( spep_12 -7 + 24, 1, 132.3, -53.7 , 0 );
setMoveKey( spep_12 -7 + 26, 1, 109.4, -48.2 , 0 );
setMoveKey( spep_12 -7 + 28, 1, 89.5, -43.4 , 0 );
setMoveKey( spep_12 -7 + 30, 1, 72.2, -39.1 , 0 );
setMoveKey( spep_12 -7 + 32, 1, 57, -35.3 , 0 );
setMoveKey( spep_12 -7 + 34, 1, 43.8, -31.9 , 0 );
setMoveKey( spep_12 -7 + 36, 1, 32.3, -28.9 , 0 );
setMoveKey( spep_12 -7 + 38, 1, 22.3, -26.3 , 0 );
setMoveKey( spep_12 -7 + 40, 1, 13.8, -24 , 0 );
setMoveKey( spep_12 -7 + 42, 1, 6.6, -22 , 0 );
setMoveKey( spep_12 -7 + 44, 1, 0.7, -20.3 , 0 );
setMoveKey( spep_12 -7 + 45, 1, -4, -18.8 , 0 );

setScaleKey( spep_12 -7 + 10, 1, 2.19, 2.19 );
setScaleKey( spep_12 -7 + 45, 1, 2.19, 2.19 );

setRotateKey( spep_12 -7 + 10, 1, 6 );
setRotateKey( spep_12 -7 + 12, 1, 5.1 );
setRotateKey( spep_12 -7 + 14, 1, 4.2 );
setRotateKey( spep_12 -7 + 16, 1, 3.4 );
setRotateKey( spep_12 -7 + 18, 1, 2.5 );
setRotateKey( spep_12 -7 + 20, 1, 1.6 );
setRotateKey( spep_12 -7 + 22, 1, 0.7 );
setRotateKey( spep_12 -7 + 24, 1, -0.1 );
setRotateKey( spep_12 -7 + 26, 1, -1 );
setRotateKey( spep_12 -7 + 28, 1, -1.9 );
setRotateKey( spep_12 -7 + 30, 1, -2.8 );
setRotateKey( spep_12 -7 + 32, 1, -3.6 );
setRotateKey( spep_12 -7 + 34, 1, -4.5 );
setRotateKey( spep_12 -7 + 36, 1, -5.4 );
setRotateKey( spep_12 -7 + 38, 1, -5.6 );
setRotateKey( spep_12 -7 + 40, 1, -5.8 );
setRotateKey( spep_12 -7 + 42, 1, -6 );
setRotateKey( spep_12 -7 + 44, 1, -6.2 );
setRotateKey( spep_12 -7 + 45, 1, -6.5 );

-- ** 音 ** --
--瞬間移動
SE067 = playSeVer2( spep_12 + 6, 1109, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE068 = playSeVer2( spep_12 + 22, 1296, "",spep_12 + 120, 0, 20, -1);
SE069 = playSeVer2( spep_12 + 22, 1282, "",spep_12 + 120, 0, 20, -1);
SE070 = playSeVer2( spep_12 + 22, 1356, "",spep_12 + 120, 0, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 42 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 42 -4;


------------------------------------------------------
-- バストアップで映るベジータが気弾を打つ瞬間が映る(60F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_13 + 0 -4, SP_19r, 60, 0x100, -1, 0, 0, 0 );  --バストアップで映るベジータが気弾を打つ瞬間が映る ef_013
setEffMoveKey( spep_13 + 0 -4, faceup, 0, 0 , 0 );
setEffMoveKey( spep_13 + 60 -4, faceup, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0 -4, faceup, -1.0, 1.0 );
setEffScaleKey( spep_13 + 60 -4, faceup, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0 -4, faceup, 0 );
setEffRotateKey( spep_13 + 60 -4, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -4, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -3, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -2, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -1, faceup, 0 );
setEffAlphaKey( spep_13 + 0 -0, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4 -2, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4 -1, faceup, 255 );
setEffAlphaKey( spep_13 + 60 -4, faceup, 0 );

-- ** 音 ** --
--気ダメ
SE071 = playSeVer2( spep_13 + 12, 1035, "", 0, 0, 0, -1);

--オーラ
SE072 = playSeVer2( spep_13 + 12, 1036, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_13 + 36, 1036, "", 0, 0, 0, -1);

--気弾ヒット
SE074 = playSeVer2( spep_13 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 52, SE074, 73 );
SE075 = playSeVer2( spep_13 + 52, 1146, "",spep_13 + 164, 0, 18, -1);
SE076 = playSeVer2( spep_13 + 52, 1258, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_13 + 52, 1306, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 60 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 60 -4;


------------------------------------------------------
-- 敵が先ほどのベジータの攻撃を食らう(60F)
------------------------------------------------------
--spep_14 = 0;

-- ** エフェクト等 ** --
flash_f = entryEffectLife( spep_14 + 0 -4, SP_20r, 60, 0x100, -1, 0, 0, 0 );  --敵が先ほどのベジータの攻撃を食らう   ef_014
setEffMoveKey( spep_14 + 0 -4, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_14 + 60 -4, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0 -4, flash_f, -1.0, 1.0 );
setEffScaleKey( spep_14 + 60 -4, flash_f, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0 -4, flash_f, 0 );
setEffRotateKey( spep_14 + 60 -4, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -4, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -3, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -2, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -1, flash_f, 0 );
setEffAlphaKey( spep_14 + 0 -0, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4 -2, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4 -1, flash_f, 255 );
setEffAlphaKey( spep_14 + 60 -4, flash_f, 0 );

flash_b = entryEffectLife( spep_14 + 0 -4, SP_21, 60, 0x80, -1, 0, 0, 0 );  --敵が先ほどのベジータの攻撃を食らう ef_014_b
setEffMoveKey( spep_14 + 0 -4, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_14 + 60 -4, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0 -4, flash_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 60 -4, flash_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0 -4, flash_b, 0 );
setEffRotateKey( spep_14 + 60 -4, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -4, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -3, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -2, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -1, flash_b, 0 );
setEffAlphaKey( spep_14 + 0 -0, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4 -2, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4 -1, flash_b, 255 );
setEffAlphaKey( spep_14 + 60 -4, flash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_14 + 0, 1, 1 );
setDisp( spep_14 -7 + 38, 1, 0 );
changeAnime( spep_14 + 0, 1, 107 );
changeAnime( spep_14 -7 + 10, 1, 108 );

setMoveKey( spep_14 + 0, 1, 96.2, 38.4 , 0 );
setMoveKey( spep_14 -7 + 9, 1, 96.2, 38.4 , 0 );
setMoveKey( spep_14 -7 + 10, 1, 192.3, 78.1 , 0 );
setMoveKey( spep_14 -7 + 11, 1, 192.3, 78.1 , 0 );
setMoveKey( spep_14 -7 + 12, 1, 182.4, 68.2 , 0 );
setMoveKey( spep_14 -7 + 13, 1, 182.4, 68.2 , 0 );
setMoveKey( spep_14 -7 + 14, 1, 183.3, 69.1 , 0 );
setMoveKey( spep_14 -7 + 15, 1, 183.3, 69.1 , 0 );
setMoveKey( spep_14 -7 + 16, 1, 289, 39.8 , 0 );
setMoveKey( spep_14 -7 + 17, 1, 289, 39.8 , 0 );
setMoveKey( spep_14 -7 + 18, 1, 279.1, 29.9 , 0 );
setMoveKey( spep_14 -7 + 19, 1, 279.1, 29.9 , 0 );
setMoveKey( spep_14 -7 + 20, 1, 285.2, 25 , 0 );
setMoveKey( spep_14 -7 + 21, 1, 285.2, 25 , 0 );
setMoveKey( spep_14 -7 + 22, 1, 274.5, 35.7 , 0 );
setMoveKey( spep_14 -7 + 23, 1, 274.5, 35.7 , 0 );
setMoveKey( spep_14 -7 + 24, 1, 331.6, 13 , 0 );
setMoveKey( spep_14 -7 + 25, 1, 331.6, 13 , 0 );
setMoveKey( spep_14 -7 + 26, 1, 321.7, 3.1 , 0 );
setMoveKey( spep_14 -7 + 27, 1, 321.7, 3.1 , 0 );
setMoveKey( spep_14 -7 + 28, 1, 327.8, -1.8 , 0 );
setMoveKey( spep_14 -7 + 29, 1, 327.8, -1.8 , 0 );
setMoveKey( spep_14 -7 + 30, 1, 325.1, 12.8 , 0 );
setMoveKey( spep_14 -7 + 31, 1, 325.1, 12.8 , 0 );
setMoveKey( spep_14 -7 + 32, 1, 324.9, 2.2 , 0 );
setMoveKey( spep_14 -7 + 33, 1, 324.9, 2.2 , 0 );
setMoveKey( spep_14 -7 + 34, 1, 330.5, 7.9 , 0 );
setMoveKey( spep_14 -7 + 38, 1, 330.5, 7.9 , 0 );

setScaleKey( spep_14 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_14 -7 + 9, 1, 1.72, 1.72 );
setScaleKey( spep_14 -7 + 10, 1, 3.08, 3.08 );
setScaleKey( spep_14 -7 + 15, 1, 3.08, 3.08 );
setScaleKey( spep_14 -7 + 16, 1, 2.12, 2.12 );
setScaleKey( spep_14 -7 + 23, 1, 2.12, 2.12 );
setScaleKey( spep_14 -7 + 24, 1, 1.62, 1.62 );
setScaleKey( spep_14 -7 + 29, 1, 1.62, 1.62 );
setScaleKey( spep_14 -7 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_14 -7 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_14 -7 + 38, 1, 1.24, 1.24 );

setRotateKey( spep_14 + 0, 1, -28 );
setRotateKey( spep_14 -7 + 9, 1, -28 );
setRotateKey( spep_14 -7 + 10, 1, 11.9 );
setRotateKey( spep_14 -7 + 34, 1, 11.9 );
setRotateKey( spep_14 -7 + 38, 1, 11.9 );

-- ** 音 ** --
--オーラ
SE078 = playSeVer2( spep_14 + 0, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_14 + 0, 0, 60 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_15 = spep_14 + 60 -4;


------------------------------------------------------
-- ベジータが放った気功波で球体状に爆発でフィニッシュ(196F)
------------------------------------------------------
--spep_15 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_15 + 0 -4, SP_22r, 0x100, -1, 0, 0, 0 );  --ベジータが放った気功波で球体状に爆発でフィニッシュ  ef_015
setEffMoveKey( spep_15 + 0 -4, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_15 + 196 -4, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_15 + 0 -4, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_15 + 196 -4, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_15 + 0 -4, finish_f, 0 );
setEffRotateKey( spep_15 + 196 -4, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -4, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -3, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -2, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -1, finish_f, 0 );
setEffAlphaKey( spep_15 + 0 -0, finish_f, 255 );
setEffAlphaKey( spep_15 + 196 -4, finish_f, 255 );

-- ** 音 ** --
--爆発
SE079 = playSeVer2( spep_15 + 28, 1159, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_15 + 54, 1024, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_15 + 60, 1067, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_15 + 66, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_15 + 0, 0, 196 -4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_15 + 40 -4 );
endPhase( spep_15 + 186 -4 );

end