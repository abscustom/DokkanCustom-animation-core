--1025770：LR_孫悟空(GT)＆超サイヤ人4ベジータ_ライバル同士の共闘
--sp_effect_a1_00391
--sp2504

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
SP_01 = 161370;	--ef_001　揃って立つ　味方側
SP_02 = 161372; --ef_002　飛び出し悟空パンチ 味方側　前面
SP_02b = 161373; --ef_002_back 飛び出し悟空パンチ 味方側　裏面
SP_03 = 161376; --ef_003 ベジータ連続攻撃 味方側　前面
SP_03b = 161377; --ef_003_back ベジータ連続攻撃 味方側　裏面
SP_04 = 161380; --ef_004 悟空カメハメは 味方側　前面
SP_04b = 161381; --ef_004_back 悟空カメハメは 味方側　裏面
SP_05 = 161384; --ef_005 敵フィニッシュ 味方側　前面
SP_05b = 161385; --ef_005_back 敵フィニッシュ 味方側　裏面

--エフェクト(てき)
SP_01r = 161371; --ef_001r　揃って立つ　敵側
SP_02r = 161375; --ef_002r 飛び出し悟空パンチ 敵側　前面
SP_02br = 161374; --ef_002_back_re 飛び出し悟空パンチ 敵側　裏面
SP_03r = 161379; --ef_003_re ベジータ連続攻撃 敵側　前面
SP_03br = 161378; --ef_003_back_re ベジータ連続攻撃 敵側　裏面
SP_04r = 161383; --ef_004_re 悟空カメハメは 敵側　前面
SP_04br = 161382; --ef_004_back_re 悟空カメハメは 敵側　裏面
SP_05r = 161387; --ef_005_re 敵フィニッシュ 敵側　前面
SP_05br = 161386; --ef_005_back_re 敵フィニッシュ 敵側　裏面

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
-- 揃って立つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 124, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 124, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 124, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 124, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 60, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 60, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--風音
SE004 = playSeVer2( spep_0 + 12, 1333, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 54, 1332, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 124;

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
-- 飛び出し悟空パンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 168, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 168, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 168, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 168 -2, base_1f, 255);
setEffAlphaKey( spep_1 + 168 -1, base_1f, 255);
setEffAlphaKey( spep_1 + 168, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 168, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 168, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 168, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 168 -2, base_1b, 255);
setEffAlphaKey( spep_1 + 168 -1, base_1b, 255);
setEffAlphaKey( spep_1 + 168, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 168 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 68, 1, 1 );

changeAnime( spep_1 -3 + 68, 1, 117 );
changeAnime( spep_1 -3 + 112, 1, 102 );

setMoveKey( spep_1 -3 + 68, 1, 71.6, -92.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 72.4, -89.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 73.2, -87.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 73.9, -85.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 74.7, -83.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 75.3, -81.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 76, -79 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 76.6, -76.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 77.2, -74.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 77.7, -72.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 78.2, -70.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 78.7, -68.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 79.2, -66.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 79.6, -64.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 79.9, -62.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 80.3, -60.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 80.6, -58.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 80.9, -56.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 81.1, -54.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 81.4, -52.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 81.6, -50.2 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 81.7, -48.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 163.3, -197.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 163.3, -197.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 177, -205 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 177, -205 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 190.7, -212.4 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 190.7, -212.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 204.3, -219.9 , 0 );

setScaleKey( spep_1 -3 + 68, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 70, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 74, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 76, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 80, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 82, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 88, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 90, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 94, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 96, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 102, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 104, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 108, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 111, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 112, 1, 5.67, 5.67 );
setScaleKey( spep_1 -3 + 114, 1, 5.74, 5.74 );
setScaleKey( spep_1 -3 + 116, 1, 5.81, 5.81 );
setScaleKey( spep_1 -3 + 118, 1, 5.88, 5.88 );

setRotateKey( spep_1 -3 + 68, 1, 5.9 );
setRotateKey( spep_1 -3 + 70, 1, 5.6 );
setRotateKey( spep_1 -3 + 72, 1, 5.2 );
setRotateKey( spep_1 -3 + 74, 1, 4.8 );
setRotateKey( spep_1 -3 + 76, 1, 4.4 );
setRotateKey( spep_1 -3 + 78, 1, 4 );
setRotateKey( spep_1 -3 + 80, 1, 3.7 );
setRotateKey( spep_1 -3 + 82, 1, 3.3 );
setRotateKey( spep_1 -3 + 84, 1, 2.9 );
setRotateKey( spep_1 -3 + 86, 1, 2.5 );
setRotateKey( spep_1 -3 + 88, 1, 2.2 );
setRotateKey( spep_1 -3 + 90, 1, 1.8 );
setRotateKey( spep_1 -3 + 92, 1, 1.4 );
setRotateKey( spep_1 -3 + 94, 1, 1 );
setRotateKey( spep_1 -3 + 96, 1, 0.7 );
setRotateKey( spep_1 -3 + 98, 1, 0.3 );
setRotateKey( spep_1 -3 + 100, 1, -0.1 );
setRotateKey( spep_1 -3 + 102, 1, -0.5 );
setRotateKey( spep_1 -3 + 104, 1, -0.8 );
setRotateKey( spep_1 -3 + 106, 1, -1.2 );
setRotateKey( spep_1 -3 + 108, 1, -1.6 );
setRotateKey( spep_1 -3 + 111, 1, -2 );
setRotateKey( spep_1 -3 + 112, 1, 0 );

-- ** 音 ** --
--向かっていく
SE007 = playSeVer2( spep_1 + 10, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 10, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 10, 1011, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 24, 1277, "", 0, 0, 0, -1);

--悟空向かっていく
SE011 = playSeVer2( spep_1 + 54, 1116, "",spep_1 + 90, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 62, 1167, "",spep_1 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 62, SE012, 49 );
SE013 = playSeVer2( spep_1 + 70, 44, "", 0, 0, 0, -1);

--悟空パンチ
SE014 = playSeVer2( spep_1 + 110, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 118, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 118, 1359, "",spep_1 + 170, 0, 26, -1);
SE017 = playSeVer2( spep_1 + 118, 1110, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 10, SE014, 0);
stopSe( SP_dodge - 2, SE015, 0);
stopSe( SP_dodge - 2, SE016, 0);
stopSe( SP_dodge - 2, SE017, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 217.8, -227.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 231.2, -235.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 244.6, -242.8 , 0 );
setMoveKey( SP_dodge + 6, 1, 257.9, -250.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 271.1, -258.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 284.3, -266.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 5.94, 5.94 );
setScaleKey( SP_dodge + 2, 1, 6.01, 6.01 );
setScaleKey( SP_dodge + 4, 1, 6.08, 6.08 );
setScaleKey( SP_dodge + 6, 1, 6.14, 6.14 );
setScaleKey( SP_dodge + 8, 1, 6.21, 6.21 );
setScaleKey( SP_dodge + 10, 1, 6.27, 6.27 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setDisp( spep_1 -3 + 138, 1, 0 );

changeAnime( spep_1 -3 + 132, 1, 100 );

setMoveKey( spep_1 -3 + 120, 1, 217.8, -227.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 231.2, -235.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 244.6, -242.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 257.9, -250.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 271.1, -258.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 284.3, -266.2 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 284.3, -266.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 118.6, -219.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 120.1, -218.4 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 121.7, -217.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 121.7, -217.4 , 0 );

setScaleKey( spep_1 -3 + 120, 1, 5.94, 5.94 );
setScaleKey( spep_1 -3 + 122, 1, 6.01, 6.01 );
setScaleKey( spep_1 -3 + 124, 1, 6.08, 6.08 );
setScaleKey( spep_1 -3 + 126, 1, 6.14, 6.14 );
setScaleKey( spep_1 -3 + 128, 1, 6.21, 6.21 );
setScaleKey( spep_1 -3 + 130, 1, 6.27, 6.27 );
setScaleKey( spep_1 -3 + 131, 1, 6.27, 6.27 );
setScaleKey( spep_1 -3 + 132, 1, 5.2, 5.2 );
setScaleKey( spep_1 -3 + 134, 1, 5.18, 5.18 );
setScaleKey( spep_1 -3 + 137, 1, 5.16, 5.16 );
setScaleKey( spep_1 -3 + 138, 1, 5.16, 5.16 );

setRotateKey( spep_1 -3 + 131, 1, 0 );
setRotateKey( spep_1 -3 + 132, 1, 7.2 );
setRotateKey( spep_1 -3 + 137, 1, 7.2 );
setRotateKey( spep_1 -3 + 138, 1, 7.2 );

setDisp( spep_1 -3 + 144, 1, 1 );
setDisp( spep_1 + 168, 1, 0 );

changeAnime( spep_1 -3 + 144, 1, 106 );
changeAnime( spep_1 -3 + 148, 1, 108 );

setMoveKey( spep_1 -3 + 144, 1, 104.4, -105.7 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 104.4, -105.7 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 176, -167.3 , 0 );
setMoveKey( spep_1 -3 + 147, 1, 176, -167.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 214.2, -9.5 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 214.2, -9.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 151.4, -167.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 151.4, -167.3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 314.6, -31.3 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 314.6, -31.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 191.8, -59.2 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 191.8, -59.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 276.9, -101.2 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 276.9, -101.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 212, -83.2 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 212, -83.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 287, -35.3 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 287, -35.3 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 268.1, -81.4 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 268.1, -81.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 261, -53.5 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 261, -53.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 266, -49.7 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 266, -49.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 270.9, -45.9 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 270.9, -45.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 275.8, -42.1 , 0 );
setMoveKey( spep_1 + 168, 1, 275.8, -42.1 , 0 );

setScaleKey( spep_1 -3 + 144, 1, 3.73, 3.73 );
setScaleKey( spep_1 -3 + 145, 1, 3.73, 3.73 );
setScaleKey( spep_1 -3 + 146, 1, 3.71, 3.71 );
setScaleKey( spep_1 -3 + 147, 1, 3.71, 3.71 );
setScaleKey( spep_1 -3 + 148, 1, 2.96, 2.96 );
setScaleKey( spep_1 -3 + 149, 1, 2.96, 2.96 );
setScaleKey( spep_1 -3 + 150, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 151, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 152, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 153, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 154, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 155, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 156, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 157, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 158, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 159, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 160, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 161, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 162, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 163, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 164, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 165, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 166, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 167, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 168, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 170, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 168, 1, 1.1, 1.1 );

setRotateKey( spep_1 -3 + 144, 1, -48.7 );
setRotateKey( spep_1 -3 + 147, 1, -48.7 );
setRotateKey( spep_1 -3 + 148, 1, 15 );
setRotateKey( spep_1 -3 + 149, 1, 15 );
setRotateKey( spep_1 -3 + 150, 1, 15.5 );
setRotateKey( spep_1 -3 + 151, 1, 15.5 );
setRotateKey( spep_1 -3 + 152, 1, 15.9 );
setRotateKey( spep_1 -3 + 153, 1, 15.9 );
setRotateKey( spep_1 -3 + 154, 1, 16.4 );
setRotateKey( spep_1 -3 + 155, 1, 16.4 );
setRotateKey( spep_1 -3 + 156, 1, 16.9 );
setRotateKey( spep_1 -3 + 157, 1, 16.9 );
setRotateKey( spep_1 -3 + 158, 1, 17.4 );
setRotateKey( spep_1 -3 + 159, 1, 17.4 );
setRotateKey( spep_1 -3 + 160, 1, 17.9 );
setRotateKey( spep_1 -3 + 161, 1, 17.9 );
setRotateKey( spep_1 -3 + 162, 1, 18.3 );
setRotateKey( spep_1 -3 + 163, 1, 18.3 );
setRotateKey( spep_1 -3 + 164, 1, 18.8 );
setRotateKey( spep_1 -3 + 165, 1, 18.8 );
setRotateKey( spep_1 -3 + 166, 1, 19.3 );
setRotateKey( spep_1 -3 + 167, 1, 19.3 );
setRotateKey( spep_1 -3 + 168, 1, 19.8 );
setRotateKey( spep_1 -3 + 169, 1, 19.8 );
setRotateKey( spep_1 -3 + 170, 1, 20.3 );
setRotateKey( spep_1 + 168, 1, 20.3 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 168;

-------------------------------------------------
-- ベジータ連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 300, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 300, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 300, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 300 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 300 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 300, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 300, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 300, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 300, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 300 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 300 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 300, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 32, 1, 1 );
setDisp( spep_2 -3 + 218, 1, 0 );

changeAnime( spep_2 -3 + 32, 1, 7 );
changeAnime( spep_2 -3 + 56, 1, 6 );
changeAnime( spep_2 -3 + 118, 1, 8 );
changeAnime( spep_2 -3 + 138, 1, 105 );
changeAnime( spep_2 -3 + 194, 1, 106 );

mx2 = 30;
my2 = 100;

setMoveKey( spep_2 -3 + 32, 1, -164.5 + mx2, -361.9 + my2, 0 );
setMoveKey( spep_2 -3 + 34, 1, -164.6 + mx2, -362.3 + my2, 0 );
setMoveKey( spep_2 -3 + 36, 1, -165.1 + mx2, -363.4 + my2, 0 );
setMoveKey( spep_2 -3 + 38, 1, -166 + mx2, -365.2 + my2, 0 );
setMoveKey( spep_2 -3 + 40, 1, -167.1 + mx2, -367.8 + my2, 0 );
setMoveKey( spep_2 -3 + 42, 1, -168.6 + mx2, -371.1 + my2, 0 );
setMoveKey( spep_2 -3 + 44, 1, -170.4 + mx2, -375.1 + my2, 0 );
setMoveKey( spep_2 -3 + 46, 1, -172.6 + mx2, -379.9 + my2, 0 );
setMoveKey( spep_2 -3 + 48, 1, -175.1 + mx2, -385.4 + my2, 0 );
setMoveKey( spep_2 -3 + 50, 1, -177.9 + mx2, -391.6 + my2, 0 );
setMoveKey( spep_2 -3 + 52, 1, -181.1 + mx2, -398.5 + my2, 0 );
setMoveKey( spep_2 -3 + 55, 1, -184.6 + mx2, -406.2 + my2, 0 );
setMoveKey( spep_2 -3 + 56, 1, -215.6, -628.7 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -215.6, -628.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -132.4, -606.6 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -132.4, -606.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -189.9, -755 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -189.9, -755 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -311.3, -722.7 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -311.3, -722.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -205.4, -796.2 , 0 );
setMoveKey( spep_2 -3 + 65, 1, -205.4, -796.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -271.1, -771.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -271.1, -771.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -239.2, -818.8 , 0 );
setMoveKey( spep_2 -3 + 69, 1, -239.2, -818.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -250.4, -805.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, -250.4, -805.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 925.1, -377.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 708.2, -288.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 530.1, -214.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 387, -154.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 274.9, -107.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 190, -70.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 128.4, -43.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 86.3, -24.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 59.6, -11.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 44.7, -3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 37.4, 2.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 34.1, 6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 31.4, 9.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 28.7, 12.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 26.1, 16.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 23.4, 19.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 20.7, 23.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 18, 26.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 15.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 12.7, 33.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 10, 37.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 7.3, 40.6 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 4.6, 44 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 34.3, 4 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 34.3, 4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -164.6, 277.4 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -164.6, 277.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -251.2, 221.6 , 0 );
setMoveKey( spep_2 -3 + 123, 1, -251.2, 221.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -423.6, 398.5 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -423.6, 398.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -321.8, 402.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, -321.8, 402.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -377.1, 337.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -377.1, 337.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -358.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 131, 1, -358.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -350.1, 429.3 , 0 );
setMoveKey( spep_2 -3 + 133, 1, -350.1, 429.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -411.7, 392 , 0 );
setMoveKey( spep_2 -3 + 135, 1, -411.7, 392 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -511.7, 426 , 0 );
setMoveKey( spep_2 -3 + 137, 1, -511.7, 426 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -23.3, -66.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -2, -14.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 6.8, -23 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 1.6, 19.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 37.2, 36.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 22.6, 55.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 32.7, 44.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 31.8, 58.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 47.3, 65.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 42.3, 66.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 44, 69.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 45.5, 71.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 46.9, 74.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 48.3, 76.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 73.6, 58.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 37.5, 99.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 33.5, 57.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 52.4, 104.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 69.4, 79.3 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 33.3, 67.1 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 32.3, 86 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 61.2, 81.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 42.2, 79.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 44.1, 95.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 52.1, 86.4 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 44, 88.2 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 49, 89.1 , 0 );
setMoveKey( spep_2 -3 + 193, 1, 48.9, 89.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -31.5, -139.8 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -30.6, -138.4 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -29.6, -136.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -28.7, -135.4 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -27.7, -133.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -26.7, -132.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -25.7, -130.6 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -24.6, -128.9 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -23.6, -127.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -22.5, -125.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -21.4, -123.5 , 0 );
setMoveKey( spep_2 -3 + 217, 1, -20.3, -121.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -20.3, -121.6 , 0 );

s2x = -4;
s2y = -4;

setScaleKey( spep_2 -3 + 32, 1, 5.99 + s2x, 5.99 + s2y);
setScaleKey( spep_2 -3 + 34, 1, 6 + s2x, 6 + s2y);
setScaleKey( spep_2 -3 + 36, 1, 6.01 + s2x, 6.01 + s2y);
setScaleKey( spep_2 -3 + 38, 1, 6.04 + s2x, 6.04 + s2y);
setScaleKey( spep_2 -3 + 40, 1, 6.09 + s2x, 6.09 + s2y);
setScaleKey( spep_2 -3 + 42, 1, 6.14 + s2x, 6.14 + s2y);
setScaleKey( spep_2 -3 + 44, 1, 6.21 + s2x, 6.21 + s2y);
setScaleKey( spep_2 -3 + 46, 1, 6.29 + s2x, 6.29 + s2y);
setScaleKey( spep_2 -3 + 48, 1, 6.38 + s2x, 6.38 + s2y);
setScaleKey( spep_2 -3 + 50, 1, 6.48 + s2x, 6.48 + s2y);
setScaleKey( spep_2 -3 + 52, 1, 6.6 + s2x, 6.6 + s2y);
setScaleKey( spep_2 -3 + 55, 1, 6.72 + s2x, 6.72 + s2y);
setScaleKey( spep_2 -3 + 56, 1, 8.05, 8.05 );
setScaleKey( spep_2 -3 + 57, 1, 8.05, 8.05 );
setScaleKey( spep_2 -3 + 58, 1, 8.5, 8.5 );
setScaleKey( spep_2 -3 + 59, 1, 8.5, 8.5 );
setScaleKey( spep_2 -3 + 60, 1, 8.87, 8.87 );
setScaleKey( spep_2 -3 + 61, 1, 8.87, 8.87 );
setScaleKey( spep_2 -3 + 62, 1, 9.19, 9.19 );
setScaleKey( spep_2 -3 + 63, 1, 9.19, 9.19 );
setScaleKey( spep_2 -3 + 64, 1, 9.45, 9.45 );
setScaleKey( spep_2 -3 + 65, 1, 9.45, 9.45 );
setScaleKey( spep_2 -3 + 66, 1, 9.65, 9.65 );
setScaleKey( spep_2 -3 + 67, 1, 9.65, 9.65 );
setScaleKey( spep_2 -3 + 68, 1, 9.78, 9.78 );
setScaleKey( spep_2 -3 + 69, 1, 9.78, 9.78 );
setScaleKey( spep_2 -3 + 70, 1, 9.82, 9.82 );
setScaleKey( spep_2 -3 + 71, 1, 9.82, 9.82 );
setScaleKey( spep_2 -3 + 72, 1, 7.26, 7.26 );
setScaleKey( spep_2 -3 + 74, 1, 6, 6 );
setScaleKey( spep_2 -3 + 76, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 78, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 80, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 82, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 84, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 86, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 88, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 90, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 92, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 117, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 118, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 127, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 128, 1, 14.57, 14.57 );
setScaleKey( spep_2 -3 + 133, 1, 14.57, 14.57 );
setScaleKey( spep_2 -3 + 134, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 137, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 138, 1, 6.39, 6.39 );
setScaleKey( spep_2 -3 + 140, 1, 4.63, 4.63 );
setScaleKey( spep_2 -3 + 142, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 144, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 146, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 148, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 150, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 152, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 154, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 156, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 158, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 160, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 162, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 164, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 166, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 168, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 170, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 172, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 174, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 176, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 178, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 180, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 182, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 184, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 186, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 188, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 190, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 193, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 194, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 196, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 199, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 200, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 202, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 204, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 207, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 208, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 210, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 212, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 214, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 217, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 218, 1, 0.92, 0.92 );

setRotateKey( spep_2 -3 + 32, 1, 0 );
setRotateKey( spep_2 -3 + 55, 1, 0 );
setRotateKey( spep_2 -3 + 56, 1, 59.5 );
setRotateKey( spep_2 -3 + 70, 1, 59.5 );
setRotateKey( spep_2 -3 + 71, 1, 59.5 );
setRotateKey( spep_2 -3 + 72, 1, 0 );
setRotateKey( spep_2 -3 + 117, 1, 0 );
setRotateKey( spep_2 -3 + 118, 1, -139.2 );
setRotateKey( spep_2 -3 + 137, 1, -139.2 );
setRotateKey( spep_2 -3 + 138, 1, -1.8 );
setRotateKey( spep_2 -3 + 140, 1, -0.3 );
setRotateKey( spep_2 -3 + 142, 1, 0.6 );
setRotateKey( spep_2 -3 + 144, 1, 1.3 );
setRotateKey( spep_2 -3 + 146, 1, 1.7 );
setRotateKey( spep_2 -3 + 148, 1, 2 );
setRotateKey( spep_2 -3 + 150, 1, 2.3 );
setRotateKey( spep_2 -3 + 152, 1, 2.5 );
setRotateKey( spep_2 -3 + 154, 1, 2.6 );
setRotateKey( spep_2 -3 + 156, 1, 2.7 );
setRotateKey( spep_2 -3 + 158, 1, 2.8 );
setRotateKey( spep_2 -3 + 160, 1, 2.9 );
setRotateKey( spep_2 -3 + 162, 1, 3 );
setRotateKey( spep_2 -3 + 164, 1, 3.1 );
setRotateKey( spep_2 -3 + 166, 1, 3.2 );
setRotateKey( spep_2 -3 + 168, 1, 3.6 );
setRotateKey( spep_2 -3 + 170, 1, 4 );
setRotateKey( spep_2 -3 + 172, 1, 4.4 );
setRotateKey( spep_2 -3 + 174, 1, 4.8 );
setRotateKey( spep_2 -3 + 176, 1, 5.2 );
setRotateKey( spep_2 -3 + 178, 1, 5.6 );
setRotateKey( spep_2 -3 + 180, 1, 6 );
setRotateKey( spep_2 -3 + 182, 1, 6.4 );
setRotateKey( spep_2 -3 + 184, 1, 6.8 );
setRotateKey( spep_2 -3 + 186, 1, 7.2 );
setRotateKey( spep_2 -3 + 188, 1, 7.6 );
setRotateKey( spep_2 -3 + 190, 1, 8 );
setRotateKey( spep_2 -3 + 193, 1, 8.4 );
setRotateKey( spep_2 -3 + 194, 1, 18 );
setRotateKey( spep_2 -3 + 218, 1, 18 );

setDisp( spep_2 -3 + 250, 1, 1 );
setDisp( spep_2 + 300, 1, 0 );

changeAnime( spep_2 -3 + 250, 1, 106 );
changeAnime( spep_2 -3 + 254, 1, 108 );

setMoveKey( spep_2 -3 + 250, 1, 17.2, 23.1 , 0 );
setMoveKey( spep_2 -3 + 253, 1, 16.7, 32.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 75.3, -277.6 , 0 );
setMoveKey( spep_2 -3 + 255, 1, 75.3, -277.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 106, -326.1 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 106, -326.1 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 121, -197.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, 121, -197.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 32.6, -286.3 , 0 );
setMoveKey( spep_2 -3 + 261, 1, 32.6, -286.3 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 47.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 263, 1, 47.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 65.4, -289.6 , 0 );
setMoveKey( spep_2 -3 + 265, 1, 65.4, -289.6 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 117.1, -199.1 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 117.1, -199.1 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 32.9, -223.5 , 0 );
setMoveKey( spep_2 -3 + 269, 1, 32.9, -223.5 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 110.8, -266.5 , 0 );
setMoveKey( spep_2 -3 + 271, 1, 110.8, -266.5 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 33.1, -229.4 , 0 );
setMoveKey( spep_2 -3 + 273, 1, 33.1, -229.4 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 103.4, -296.6 , 0 );
setMoveKey( spep_2 -3 + 275, 1, 103.4, -296.6 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 55.8, -296 , 0 );
setMoveKey( spep_2 -3 + 277, 1, 55.8, -296 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 106.1, -281.5 , 0 );
setMoveKey( spep_2 -3 + 279, 1, 106.1, -281.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 104.5, -342.9 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 104.5, -342.9 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 90.8, -316.4 , 0 );
setMoveKey( spep_2 -3 + 283, 1, 90.8, -316.4 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 110, -372.9 , 0 );
setMoveKey( spep_2 -3 + 285, 1, 110, -372.9 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 103.2, -372.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, 103.2, -372.9 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 106.2, -388.6 , 0 );
setMoveKey( spep_2 -3 + 289, 1, 106.2, -388.6 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 109.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 109.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 111.9, -418.8 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 111.9, -418.8 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 114.7, -433.3 , 0 );
setMoveKey( spep_2 -3 + 295, 1, 114.7, -433.3 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 117.3, -447.4 , 0 );
setMoveKey( spep_2 -3 + 297, 1, 117.3, -447.4 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 119.8, -461.2 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 119.8, -461.2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 122.3, -474.5 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 122.3, -474.5 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 124.6, -487.5 , 0 );
setMoveKey( spep_2 + 300, 1, 126.8, -500.1 , 0 );

setScaleKey( spep_2 -3 + 250, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 253, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 254, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 255, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 256, 1, 3, 3 );
setScaleKey( spep_2 -3 + 257, 1, 3, 3 );
setScaleKey( spep_2 -3 + 258, 1, 2.96, 2.96 );
setScaleKey( spep_2 -3 + 259, 1, 2.96, 2.96 );
setScaleKey( spep_2 -3 + 260, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 261, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 262, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 263, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 264, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 265, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 266, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 268, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 270, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 271, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 272, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 273, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 274, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 275, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 276, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 277, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 278, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 279, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 280, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 281, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 282, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 283, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 284, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 285, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 286, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 287, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 288, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 289, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 290, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 291, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 292, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 293, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 294, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 295, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 296, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 297, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 298, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 299, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 300, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 301, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 302, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 300, 1, 0.49, 0.49 );

setRotateKey( spep_2 -3 + 250, 1, 11.7 );
setRotateKey( spep_2 -3 + 253, 1, 11.7 );
setRotateKey( spep_2 -3 + 254, 1, 50.4 );
setRotateKey( spep_2 + 300, 1, 50.4 );

-- ** 音 ** --
--ベジータ向かってくる
SE018 = playSeVer2( spep_2 + 0, 1182, "",spep_2 + 36, 0, 8, -1);
SE019 = playSeVer2( spep_2 + 0, 1192, "",spep_2 + 36, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 0, SE019, 158 );
SE020 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 36, 0, 8, -1);

--瞬間移動
SE021 = playSeVer2( spep_2 + 18, 1109, "", 0, 0, 0, -1);

--ベジータパンチ
SE022 = playSeVer2( spep_2 + 50, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE023, 82 );
SE024 = playSeVer2( spep_2 + 52, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 68, 1183, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 68, SE025, 68 );
SE026 = playSeVer2( spep_2 + 68, 1121, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 68, SE026, 68 );

--瞬間移動
SE027 = playSeVer2( spep_2 + 86, 1109, "", 0, 0, 0, -1);

--両足蹴り上げ
SE028 = playSeVer2( spep_2 + 118, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE028, 91 );
SE029 = playSeVer2( spep_2 + 118, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE029, 82 );

--吹き飛ぶ
SE030 = playSeVer2( spep_2 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE030, 79 );

--ベジータ向かっていく
SE031 = playSeVer2( spep_2 + 160, 1182, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 160, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE033 = playSeVer2( spep_2 + 204, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE033, 73 );
SE034 = playSeVer2( spep_2 + 204, 1116, "",spep_2 + 242, 0, 16, -1);

--叩き落とす
SE035 = playSeVer2( spep_2 + 238, 1189, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 242, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_2 + 258, 1121, "",spep_2 + 356, 0, 58, -1);

--集中線
SE038 = playSeVer2( spep_2 + 314, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE038, 43 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;

-------------------------------------------------
-- 悟空カメハメは
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 160, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 160, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 160, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -2, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 160, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 160, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 160, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 160, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -2, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 160, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 92, 1, 1 );
setDisp( spep_3 -3 + 122, 1, 0 );

changeAnime( spep_3 -3 + 92, 1, 7 );

setMoveKey( spep_3 -3 + 92, 1, 389.9, 435 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 384, 429.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 378, 424.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 372.1, 418.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 366.2, 413.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 360.2, 408.1 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 354.3, 402.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 348.4, 397.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 342.4, 392 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 336.5, 386.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 330.5, 381.3 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 324.6, 375.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 318.6, 370.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 312.7, 365.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 306.7, 359.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 306.7, 359.8 , 0 );

setScaleKey( spep_3 -3 + 92, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 94, 1, 0.30, 0.30 );
setScaleKey( spep_3 -3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 98, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 100, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 102, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 104, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 106, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 108, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 110, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 112, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 114, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 118, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 120, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 122, 1, 0.58, 0.58 );

setRotateKey( spep_3 -3 + 92, 1, -65 );
setRotateKey( spep_3 -3 + 122, 1, -65 );

-- ** 音 ** --
--悟空構える
SE039 = playSeVer2( spep_3 + 4, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 4, 1233, "", 0, 0, 0, -1);

--かめはめ波溜め
SE041 = playSeVer2( spep_3 + 40, 1210, "",spep_3 + 148, 36, 18, 0.6);
setStartTimeMs( SE041,  600 );

--悟空構える
SE042 = playSeVer2( spep_3 + 18, 1006, "", 0, 0, 0, -1);

--かめはめ波溜め
SE043 = playSeVer2( spep_3 + 38, 1209, "",spep_3 + 148, 0, 18, -1);

--かめはめ波発射
SE044 = playSeVer2( spep_3 + 124, 1133, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 124, 1284, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 124, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 124, SE046, 74 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 160;

-------------------------------------------------
-- 敵フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 218, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 218, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 218, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 218, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- ef_005_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 218, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 218, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 218, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 218, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 218 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 26, 1, 1 );
setDisp( spep_4 -3 + 56, 1, 0 );

changeAnime( spep_4 -3 + 26, 1, 6 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -3 + 26, 1, 419.3, 265.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 377.2, 234.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 335, 202.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 292.9, 170.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 250.8, 138.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 208.7, 107.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 166.5, 75.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 124.4, 43.6 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 82.3, 11.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 156, 47 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 169.8, 54.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 183.7, 62.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 197.5, 69.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 303.8, 129.8 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 410, 190 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 410, 190 , 0 );

setScaleKey( spep_4 -3 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 43, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 44, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 56, 1, 1.79, 1.79 );

setRotateKey( spep_4 -3 + 26, 1, -61.7 );
setRotateKey( spep_4 -3 + 43, 1, -61.7 );
setRotateKey( spep_4 -3 + 44, 1, -16.9 );
setRotateKey( spep_4 -3 + 56, 1, -16.9 );

setDisp( spep_4 -3 + 84, 1, 1 );
setDisp( spep_4 -3 + 218, 1, 0 );

changeAnime( spep_4 -3 + 84, 1, 108 );
changeAnime( spep_4 -3 + 116, 1, 106 );

setMoveKey( spep_4 -3 + 84, 1, -0.5, -78.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 4, -74 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 15.5, -81.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 8, -72.8 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 23.5, -65.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 18, -64.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 30.5, -75 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 33, -60.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 43.5, -69.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 35, -62.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 43.6, -69.6 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 49.1, -54 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 62.6, -63.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 56.1, -55.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 62.6, -56.3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 71.1, -49.7 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 50.3, -42.6 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 54.8, -32 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 51.3, -31.4 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 63.9, -43.8 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 67.4, -35.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 71.9, -27.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 82.4, -34 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 74.9, -33.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 84.4, -21.8 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 101.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 94.4, -17.6 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 98.9, -24 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 97.4, -23.4 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 112, -25.8 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 106.5, -19.2 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 122, -10.6 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 127.5, -21 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 124.1, -14.8 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 130.5, -12.8 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 134, -5.2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 144.5, -10.7 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 144, -12.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 142.6, 0.5 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 160.1, -5.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 161.6, -12.3 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 161.1, -1.7 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 166.6, -0.1 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 171.1, 1.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 175.6, 3.1 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 180.1, 4.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 184.6, 6.3 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 189.2, 7.9 , 0 );
setMoveKey( spep_4 -3 + 218, 1, 189.2, 7.9 , 0 );

setScaleKey( spep_4 -3 + 84, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 218, 1, 1.77, 1.77 );

setRotateKey( spep_4 -3 + 84, 1, -2.4 );
setRotateKey( spep_4 -3 + 86, 1, -2.3 );
setRotateKey( spep_4 -3 + 88, 1, -2.1 );
setRotateKey( spep_4 -3 + 90, 1, -2 );
setRotateKey( spep_4 -3 + 92, 1, -1.9 );
setRotateKey( spep_4 -3 + 94, 1, -1.7 );
setRotateKey( spep_4 -3 + 96, 1, -1.6 );
setRotateKey( spep_4 -3 + 98, 1, -1.5 );
setRotateKey( spep_4 -3 + 100, 1, -1.3 );
setRotateKey( spep_4 -3 + 102, 1, -1.2 );
setRotateKey( spep_4 -3 + 104, 1, -1 );
setRotateKey( spep_4 -3 + 106, 1, -0.9 );
setRotateKey( spep_4 -3 + 108, 1, -0.8 );
setRotateKey( spep_4 -3 + 110, 1, -0.6 );
setRotateKey( spep_4 -3 + 112, 1, -0.5 );
setRotateKey( spep_4 -3 + 114, 1, -0.4 );
setRotateKey( spep_4 -3 + 116, 1, 1.8 );
setRotateKey( spep_4 -3 + 118, 1, 2 );
setRotateKey( spep_4 -3 + 120, 1, 2.3 );
setRotateKey( spep_4 -3 + 122, 1, 2.5 );
setRotateKey( spep_4 -3 + 124, 1, 2.8 );
setRotateKey( spep_4 -3 + 126, 1, 3.1 );
setRotateKey( spep_4 -3 + 128, 1, 3.3 );
setRotateKey( spep_4 -3 + 130, 1, 3.6 );
setRotateKey( spep_4 -3 + 132, 1, 3.8 );
setRotateKey( spep_4 -3 + 134, 1, 4.1 );
setRotateKey( spep_4 -3 + 136, 1, 4.4 );
setRotateKey( spep_4 -3 + 138, 1, 4.6 );
setRotateKey( spep_4 -3 + 140, 1, 4.9 );
setRotateKey( spep_4 -3 + 142, 1, 5.1 );
setRotateKey( spep_4 -3 + 144, 1, 5.4 );
setRotateKey( spep_4 -3 + 146, 1, 5.7 );
setRotateKey( spep_4 -3 + 148, 1, 5.9 );
setRotateKey( spep_4 -3 + 150, 1, 6.2 );
setRotateKey( spep_4 -3 + 152, 1, 6.4 );
setRotateKey( spep_4 -3 + 154, 1, 6.7 );
setRotateKey( spep_4 -3 + 156, 1, 7 );
setRotateKey( spep_4 -3 + 158, 1, 7.2 );
setRotateKey( spep_4 -3 + 160, 1, 7.5 );
setRotateKey( spep_4 -3 + 162, 1, 7.7 );
setRotateKey( spep_4 -3 + 164, 1, 8 );
setRotateKey( spep_4 -3 + 166, 1, 8.3 );
setRotateKey( spep_4 -3 + 168, 1, 8.5 );
setRotateKey( spep_4 -3 + 170, 1, 8.8 );
setRotateKey( spep_4 -3 + 172, 1, 9 );
setRotateKey( spep_4 -3 + 174, 1, 9.3 );
setRotateKey( spep_4 -3 + 176, 1, 9.6 );
setRotateKey( spep_4 -3 + 178, 1, 9.8 );
setRotateKey( spep_4 -3 + 218, 1, 9.8 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE047 = playSeVer2( spep_4 + 0, 1390, "", 0, 0, 0, 0.6);
SE048 = playSeVer2( spep_4 + 42, 1145, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 70, 1161, "", 0, 0, 0, -1);

--敵飲まれる
SE050 = playSeVer2( spep_4 + 90, 1258, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE050, 75 );
setStartTimeMs( SE050,  50 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 96); -- ダメージ表示フレーム
endPhase( spep_4 + 218 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 揃って立つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 124, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 124, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 124, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 124, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--風音
SE004 = playSeVer2( spep_0 + 12, 1333, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 54, 1332, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 124;

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
-- 飛び出し悟空パンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 168, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + 168, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 168, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 168 -2, base_1f, 255);
setEffAlphaKey( spep_1 + 168 -1, base_1f, 255);
setEffAlphaKey( spep_1 + 168, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 168, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + 168, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 168, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 168 -2, base_1b, 255);
setEffAlphaKey( spep_1 + 168 -1, base_1b, 255);
setEffAlphaKey( spep_1 + 168, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 168 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 68, 1, 1 );

changeAnime( spep_1 -3 + 68, 1, 117 );
changeAnime( spep_1 -3 + 112, 1, 102 );

setMoveKey( spep_1 -3 + 68, 1, 71.6, -92.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 72.4, -89.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 73.2, -87.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 73.9, -85.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 74.7, -83.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 75.3, -81.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 76, -79 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 76.6, -76.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 77.2, -74.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 77.7, -72.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 78.2, -70.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 78.7, -68.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 79.2, -66.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 79.6, -64.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 79.9, -62.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 80.3, -60.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 80.6, -58.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 80.9, -56.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 81.1, -54.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 81.4, -52.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 81.6, -50.2 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 81.7, -48.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 163.3, -197.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 163.3, -197.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 177, -205 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 177, -205 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 190.7, -212.4 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 190.7, -212.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 204.3, -219.9 , 0 );

setScaleKey( spep_1 -3 + 68, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 70, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 74, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 76, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 80, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 82, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 88, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 90, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 94, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 96, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 102, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 104, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 108, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 111, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 112, 1, 5.67, 5.67 );
setScaleKey( spep_1 -3 + 114, 1, 5.74, 5.74 );
setScaleKey( spep_1 -3 + 116, 1, 5.81, 5.81 );
setScaleKey( spep_1 -3 + 118, 1, 5.88, 5.88 );

setRotateKey( spep_1 -3 + 68, 1, 5.9 );
setRotateKey( spep_1 -3 + 70, 1, 5.6 );
setRotateKey( spep_1 -3 + 72, 1, 5.2 );
setRotateKey( spep_1 -3 + 74, 1, 4.8 );
setRotateKey( spep_1 -3 + 76, 1, 4.4 );
setRotateKey( spep_1 -3 + 78, 1, 4 );
setRotateKey( spep_1 -3 + 80, 1, 3.7 );
setRotateKey( spep_1 -3 + 82, 1, 3.3 );
setRotateKey( spep_1 -3 + 84, 1, 2.9 );
setRotateKey( spep_1 -3 + 86, 1, 2.5 );
setRotateKey( spep_1 -3 + 88, 1, 2.2 );
setRotateKey( spep_1 -3 + 90, 1, 1.8 );
setRotateKey( spep_1 -3 + 92, 1, 1.4 );
setRotateKey( spep_1 -3 + 94, 1, 1 );
setRotateKey( spep_1 -3 + 96, 1, 0.7 );
setRotateKey( spep_1 -3 + 98, 1, 0.3 );
setRotateKey( spep_1 -3 + 100, 1, -0.1 );
setRotateKey( spep_1 -3 + 102, 1, -0.5 );
setRotateKey( spep_1 -3 + 104, 1, -0.8 );
setRotateKey( spep_1 -3 + 106, 1, -1.2 );
setRotateKey( spep_1 -3 + 108, 1, -1.6 );
setRotateKey( spep_1 -3 + 111, 1, -2 );
setRotateKey( spep_1 -3 + 112, 1, 0 );

-- ** 音 ** --
--向かっていく
SE007 = playSeVer2( spep_1 + 10, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 10, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 10, 1011, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 24, 1277, "", 0, 0, 0, -1);

--悟空向かっていく
SE011 = playSeVer2( spep_1 + 54, 1116, "",spep_1 + 90, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 62, 1167, "",spep_1 + 124, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 62, SE012, 49 );
SE013 = playSeVer2( spep_1 + 70, 44, "", 0, 0, 0, -1);

--悟空パンチ
SE014 = playSeVer2( spep_1 + 110, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 118, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 118, 1359, "",spep_1 + 170, 0, 26, -1);
SE017 = playSeVer2( spep_1 + 118, 1110, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 10, SE014, 0);
stopSe( SP_dodge - 2, SE015, 0);
stopSe( SP_dodge - 2, SE016, 0);
stopSe( SP_dodge - 2, SE017, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 217.8, -227.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 231.2, -235.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 244.6, -242.8 , 0 );
setMoveKey( SP_dodge + 6, 1, 257.9, -250.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 271.1, -258.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 284.3, -266.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 5.94, 5.94 );
setScaleKey( SP_dodge + 2, 1, 6.01, 6.01 );
setScaleKey( SP_dodge + 4, 1, 6.08, 6.08 );
setScaleKey( SP_dodge + 6, 1, 6.14, 6.14 );
setScaleKey( SP_dodge + 8, 1, 6.21, 6.21 );
setScaleKey( SP_dodge + 10, 1, 6.27, 6.27 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setDisp( spep_1 -3 + 138, 1, 0 );

changeAnime( spep_1 -3 + 132, 1, 100 );

setMoveKey( spep_1 -3 + 120, 1, 217.8, -227.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 231.2, -235.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 244.6, -242.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 257.9, -250.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 271.1, -258.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 284.3, -266.2 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 284.3, -266.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 118.6, -219.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 120.1, -218.4 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 121.7, -217.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 121.7, -217.4 , 0 );

setScaleKey( spep_1 -3 + 120, 1, 5.94, 5.94 );
setScaleKey( spep_1 -3 + 122, 1, 6.01, 6.01 );
setScaleKey( spep_1 -3 + 124, 1, 6.08, 6.08 );
setScaleKey( spep_1 -3 + 126, 1, 6.14, 6.14 );
setScaleKey( spep_1 -3 + 128, 1, 6.21, 6.21 );
setScaleKey( spep_1 -3 + 130, 1, 6.27, 6.27 );
setScaleKey( spep_1 -3 + 131, 1, 6.27, 6.27 );
setScaleKey( spep_1 -3 + 132, 1, 5.2, 5.2 );
setScaleKey( spep_1 -3 + 134, 1, 5.18, 5.18 );
setScaleKey( spep_1 -3 + 137, 1, 5.16, 5.16 );
setScaleKey( spep_1 -3 + 138, 1, 5.16, 5.16 );

setRotateKey( spep_1 -3 + 131, 1, 0 );
setRotateKey( spep_1 -3 + 132, 1, 7.2 );
setRotateKey( spep_1 -3 + 137, 1, 7.2 );
setRotateKey( spep_1 -3 + 138, 1, 7.2 );

setDisp( spep_1 -3 + 144, 1, 1 );
setDisp( spep_1 + 168, 1, 0 );

changeAnime( spep_1 -3 + 144, 1, 106 );
changeAnime( spep_1 -3 + 148, 1, 108 );

setMoveKey( spep_1 -3 + 144, 1, 104.4, -105.7 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 104.4, -105.7 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 176, -167.3 , 0 );
setMoveKey( spep_1 -3 + 147, 1, 176, -167.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 214.2, -9.5 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 214.2, -9.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 151.4, -167.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 151.4, -167.3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 314.6, -31.3 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 314.6, -31.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 191.8, -59.2 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 191.8, -59.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 276.9, -101.2 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 276.9, -101.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 212, -83.2 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 212, -83.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 287, -35.3 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 287, -35.3 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 268.1, -81.4 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 268.1, -81.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 261, -53.5 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 261, -53.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 266, -49.7 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 266, -49.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 270.9, -45.9 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 270.9, -45.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 275.8, -42.1 , 0 );
setMoveKey( spep_1 + 168, 1, 275.8, -42.1 , 0 );

setScaleKey( spep_1 -3 + 144, 1, 3.73, 3.73 );
setScaleKey( spep_1 -3 + 145, 1, 3.73, 3.73 );
setScaleKey( spep_1 -3 + 146, 1, 3.71, 3.71 );
setScaleKey( spep_1 -3 + 147, 1, 3.71, 3.71 );
setScaleKey( spep_1 -3 + 148, 1, 2.96, 2.96 );
setScaleKey( spep_1 -3 + 149, 1, 2.96, 2.96 );
setScaleKey( spep_1 -3 + 150, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 151, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 152, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 153, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 154, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 155, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 156, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 157, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 158, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 159, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 160, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 161, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 162, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 163, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 164, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 165, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 166, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 167, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 168, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 170, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 168, 1, 1.1, 1.1 );

setRotateKey( spep_1 -3 + 144, 1, -48.7 );
setRotateKey( spep_1 -3 + 147, 1, -48.7 );
setRotateKey( spep_1 -3 + 148, 1, 15 );
setRotateKey( spep_1 -3 + 149, 1, 15 );
setRotateKey( spep_1 -3 + 150, 1, 15.5 );
setRotateKey( spep_1 -3 + 151, 1, 15.5 );
setRotateKey( spep_1 -3 + 152, 1, 15.9 );
setRotateKey( spep_1 -3 + 153, 1, 15.9 );
setRotateKey( spep_1 -3 + 154, 1, 16.4 );
setRotateKey( spep_1 -3 + 155, 1, 16.4 );
setRotateKey( spep_1 -3 + 156, 1, 16.9 );
setRotateKey( spep_1 -3 + 157, 1, 16.9 );
setRotateKey( spep_1 -3 + 158, 1, 17.4 );
setRotateKey( spep_1 -3 + 159, 1, 17.4 );
setRotateKey( spep_1 -3 + 160, 1, 17.9 );
setRotateKey( spep_1 -3 + 161, 1, 17.9 );
setRotateKey( spep_1 -3 + 162, 1, 18.3 );
setRotateKey( spep_1 -3 + 163, 1, 18.3 );
setRotateKey( spep_1 -3 + 164, 1, 18.8 );
setRotateKey( spep_1 -3 + 165, 1, 18.8 );
setRotateKey( spep_1 -3 + 166, 1, 19.3 );
setRotateKey( spep_1 -3 + 167, 1, 19.3 );
setRotateKey( spep_1 -3 + 168, 1, 19.8 );
setRotateKey( spep_1 -3 + 169, 1, 19.8 );
setRotateKey( spep_1 -3 + 170, 1, 20.3 );
setRotateKey( spep_1 + 168, 1, 20.3 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 168;

-------------------------------------------------
-- ベジータ連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 300, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 300, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 300, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 300 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 300 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 300, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 300, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 300, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 300, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 300 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 300 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 300, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 32, 1, 1 );
setDisp( spep_2 -3 + 218, 1, 0 );

changeAnime( spep_2 -3 + 32, 1, 7 );
changeAnime( spep_2 -3 + 56, 1, 6 );
changeAnime( spep_2 -3 + 118, 1, 8 );
changeAnime( spep_2 -3 + 138, 1, 105 );
changeAnime( spep_2 -3 + 194, 1, 106 );

mx2 = 30;
my2 = 100;

setMoveKey( spep_2 -3 + 32, 1, -164.5 + mx2, -361.9 + my2, 0 );
setMoveKey( spep_2 -3 + 34, 1, -164.6 + mx2, -362.3 + my2, 0 );
setMoveKey( spep_2 -3 + 36, 1, -165.1 + mx2, -363.4 + my2, 0 );
setMoveKey( spep_2 -3 + 38, 1, -166 + mx2, -365.2 + my2, 0 );
setMoveKey( spep_2 -3 + 40, 1, -167.1 + mx2, -367.8 + my2, 0 );
setMoveKey( spep_2 -3 + 42, 1, -168.6 + mx2, -371.1 + my2, 0 );
setMoveKey( spep_2 -3 + 44, 1, -170.4 + mx2, -375.1 + my2, 0 );
setMoveKey( spep_2 -3 + 46, 1, -172.6 + mx2, -379.9 + my2, 0 );
setMoveKey( spep_2 -3 + 48, 1, -175.1 + mx2, -385.4 + my2, 0 );
setMoveKey( spep_2 -3 + 50, 1, -177.9 + mx2, -391.6 + my2, 0 );
setMoveKey( spep_2 -3 + 52, 1, -181.1 + mx2, -398.5 + my2, 0 );
setMoveKey( spep_2 -3 + 55, 1, -184.6 + mx2, -406.2 + my2, 0 );
setMoveKey( spep_2 -3 + 56, 1, -215.6, -628.7 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -215.6, -628.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -132.4, -606.6 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -132.4, -606.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -189.9, -755 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -189.9, -755 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -311.3, -722.7 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -311.3, -722.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -205.4, -796.2 , 0 );
setMoveKey( spep_2 -3 + 65, 1, -205.4, -796.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -271.1, -771.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -271.1, -771.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -239.2, -818.8 , 0 );
setMoveKey( spep_2 -3 + 69, 1, -239.2, -818.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -250.4, -805.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, -250.4, -805.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 925.1, -377.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 708.2, -288.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 530.1, -214.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 387, -154.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 274.9, -107.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 190, -70.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 128.4, -43.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 86.3, -24.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 59.6, -11.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 44.7, -3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 37.4, 2.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 34.1, 6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 31.4, 9.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 28.7, 12.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 26.1, 16.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 23.4, 19.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 20.7, 23.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 18, 26.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 15.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 12.7, 33.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 10, 37.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 7.3, 40.6 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 4.6, 44 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 34.3, 4 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 34.3, 4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -164.6, 277.4 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -164.6, 277.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -251.2, 221.6 , 0 );
setMoveKey( spep_2 -3 + 123, 1, -251.2, 221.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -423.6, 398.5 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -423.6, 398.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -321.8, 402.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, -321.8, 402.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -377.1, 337.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -377.1, 337.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -358.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 131, 1, -358.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -350.1, 429.3 , 0 );
setMoveKey( spep_2 -3 + 133, 1, -350.1, 429.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -411.7, 392 , 0 );
setMoveKey( spep_2 -3 + 135, 1, -411.7, 392 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -511.7, 426 , 0 );
setMoveKey( spep_2 -3 + 137, 1, -511.7, 426 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -23.3, -66.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -2, -14.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 6.8, -23 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 1.6, 19.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 37.2, 36.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 22.6, 55.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 32.7, 44.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 31.8, 58.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 47.3, 65.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 42.3, 66.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 44, 69.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 45.5, 71.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 46.9, 74.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 48.3, 76.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 73.6, 58.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 37.5, 99.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 33.5, 57.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 52.4, 104.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 69.4, 79.3 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 33.3, 67.1 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 32.3, 86 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 61.2, 81.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 42.2, 79.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 44.1, 95.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 52.1, 86.4 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 44, 88.2 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 49, 89.1 , 0 );
setMoveKey( spep_2 -3 + 193, 1, 48.9, 89.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -31.5, -139.8 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -30.6, -138.4 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -29.6, -136.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -28.7, -135.4 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -27.7, -133.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -26.7, -132.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -25.7, -130.6 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -24.6, -128.9 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -23.6, -127.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -22.5, -125.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -21.4, -123.5 , 0 );
setMoveKey( spep_2 -3 + 217, 1, -20.3, -121.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -20.3, -121.6 , 0 );

s2x = -4;
s2y = -4;

setScaleKey( spep_2 -3 + 32, 1, 5.99 + s2x, 5.99 + s2y);
setScaleKey( spep_2 -3 + 34, 1, 6 + s2x, 6 + s2y);
setScaleKey( spep_2 -3 + 36, 1, 6.01 + s2x, 6.01 + s2y);
setScaleKey( spep_2 -3 + 38, 1, 6.04 + s2x, 6.04 + s2y);
setScaleKey( spep_2 -3 + 40, 1, 6.09 + s2x, 6.09 + s2y);
setScaleKey( spep_2 -3 + 42, 1, 6.14 + s2x, 6.14 + s2y);
setScaleKey( spep_2 -3 + 44, 1, 6.21 + s2x, 6.21 + s2y);
setScaleKey( spep_2 -3 + 46, 1, 6.29 + s2x, 6.29 + s2y);
setScaleKey( spep_2 -3 + 48, 1, 6.38 + s2x, 6.38 + s2y);
setScaleKey( spep_2 -3 + 50, 1, 6.48 + s2x, 6.48 + s2y);
setScaleKey( spep_2 -3 + 52, 1, 6.6 + s2x, 6.6 + s2y);
setScaleKey( spep_2 -3 + 55, 1, 6.72 + s2x, 6.72 + s2y);
setScaleKey( spep_2 -3 + 56, 1, 8.05, 8.05 );
setScaleKey( spep_2 -3 + 57, 1, 8.05, 8.05 );
setScaleKey( spep_2 -3 + 58, 1, 8.5, 8.5 );
setScaleKey( spep_2 -3 + 59, 1, 8.5, 8.5 );
setScaleKey( spep_2 -3 + 60, 1, 8.87, 8.87 );
setScaleKey( spep_2 -3 + 61, 1, 8.87, 8.87 );
setScaleKey( spep_2 -3 + 62, 1, 9.19, 9.19 );
setScaleKey( spep_2 -3 + 63, 1, 9.19, 9.19 );
setScaleKey( spep_2 -3 + 64, 1, 9.45, 9.45 );
setScaleKey( spep_2 -3 + 65, 1, 9.45, 9.45 );
setScaleKey( spep_2 -3 + 66, 1, 9.65, 9.65 );
setScaleKey( spep_2 -3 + 67, 1, 9.65, 9.65 );
setScaleKey( spep_2 -3 + 68, 1, 9.78, 9.78 );
setScaleKey( spep_2 -3 + 69, 1, 9.78, 9.78 );
setScaleKey( spep_2 -3 + 70, 1, 9.82, 9.82 );
setScaleKey( spep_2 -3 + 71, 1, 9.82, 9.82 );
setScaleKey( spep_2 -3 + 72, 1, 7.26, 7.26 );
setScaleKey( spep_2 -3 + 74, 1, 6, 6 );
setScaleKey( spep_2 -3 + 76, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 78, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 80, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 82, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 84, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 86, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 88, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 90, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 92, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 117, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 118, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 127, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 128, 1, 14.57, 14.57 );
setScaleKey( spep_2 -3 + 133, 1, 14.57, 14.57 );
setScaleKey( spep_2 -3 + 134, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 137, 1, 14.58, 14.58 );
setScaleKey( spep_2 -3 + 138, 1, 6.39, 6.39 );
setScaleKey( spep_2 -3 + 140, 1, 4.63, 4.63 );
setScaleKey( spep_2 -3 + 142, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 144, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 146, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 148, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 150, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 152, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 154, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 156, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 158, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 160, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 162, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 164, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 166, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 168, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 170, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 172, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 174, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 176, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 178, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 180, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 182, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 184, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 186, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 188, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 190, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 193, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 194, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 196, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 199, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 200, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 202, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 204, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 207, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 208, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 210, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 212, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 214, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 217, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 218, 1, 0.92, 0.92 );

setRotateKey( spep_2 -3 + 32, 1, 0 );
setRotateKey( spep_2 -3 + 55, 1, 0 );
setRotateKey( spep_2 -3 + 56, 1, 59.5 );
setRotateKey( spep_2 -3 + 70, 1, 59.5 );
setRotateKey( spep_2 -3 + 71, 1, 59.5 );
setRotateKey( spep_2 -3 + 72, 1, 0 );
setRotateKey( spep_2 -3 + 117, 1, 0 );
setRotateKey( spep_2 -3 + 118, 1, -139.2 );
setRotateKey( spep_2 -3 + 137, 1, -139.2 );
setRotateKey( spep_2 -3 + 138, 1, -1.8 );
setRotateKey( spep_2 -3 + 140, 1, -0.3 );
setRotateKey( spep_2 -3 + 142, 1, 0.6 );
setRotateKey( spep_2 -3 + 144, 1, 1.3 );
setRotateKey( spep_2 -3 + 146, 1, 1.7 );
setRotateKey( spep_2 -3 + 148, 1, 2 );
setRotateKey( spep_2 -3 + 150, 1, 2.3 );
setRotateKey( spep_2 -3 + 152, 1, 2.5 );
setRotateKey( spep_2 -3 + 154, 1, 2.6 );
setRotateKey( spep_2 -3 + 156, 1, 2.7 );
setRotateKey( spep_2 -3 + 158, 1, 2.8 );
setRotateKey( spep_2 -3 + 160, 1, 2.9 );
setRotateKey( spep_2 -3 + 162, 1, 3 );
setRotateKey( spep_2 -3 + 164, 1, 3.1 );
setRotateKey( spep_2 -3 + 166, 1, 3.2 );
setRotateKey( spep_2 -3 + 168, 1, 3.6 );
setRotateKey( spep_2 -3 + 170, 1, 4 );
setRotateKey( spep_2 -3 + 172, 1, 4.4 );
setRotateKey( spep_2 -3 + 174, 1, 4.8 );
setRotateKey( spep_2 -3 + 176, 1, 5.2 );
setRotateKey( spep_2 -3 + 178, 1, 5.6 );
setRotateKey( spep_2 -3 + 180, 1, 6 );
setRotateKey( spep_2 -3 + 182, 1, 6.4 );
setRotateKey( spep_2 -3 + 184, 1, 6.8 );
setRotateKey( spep_2 -3 + 186, 1, 7.2 );
setRotateKey( spep_2 -3 + 188, 1, 7.6 );
setRotateKey( spep_2 -3 + 190, 1, 8 );
setRotateKey( spep_2 -3 + 193, 1, 8.4 );
setRotateKey( spep_2 -3 + 194, 1, 18 );
setRotateKey( spep_2 -3 + 218, 1, 18 );

setDisp( spep_2 -3 + 250, 1, 1 );
setDisp( spep_2 + 300, 1, 0 );

changeAnime( spep_2 -3 + 250, 1, 106 );
changeAnime( spep_2 -3 + 254, 1, 108 );

setMoveKey( spep_2 -3 + 250, 1, 17.2, 23.1 , 0 );
setMoveKey( spep_2 -3 + 253, 1, 16.7, 32.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 75.3, -277.6 , 0 );
setMoveKey( spep_2 -3 + 255, 1, 75.3, -277.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 106, -326.1 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 106, -326.1 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 121, -197.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, 121, -197.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 32.6, -286.3 , 0 );
setMoveKey( spep_2 -3 + 261, 1, 32.6, -286.3 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 47.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 263, 1, 47.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 65.4, -289.6 , 0 );
setMoveKey( spep_2 -3 + 265, 1, 65.4, -289.6 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 117.1, -199.1 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 117.1, -199.1 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 32.9, -223.5 , 0 );
setMoveKey( spep_2 -3 + 269, 1, 32.9, -223.5 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 110.8, -266.5 , 0 );
setMoveKey( spep_2 -3 + 271, 1, 110.8, -266.5 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 33.1, -229.4 , 0 );
setMoveKey( spep_2 -3 + 273, 1, 33.1, -229.4 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 103.4, -296.6 , 0 );
setMoveKey( spep_2 -3 + 275, 1, 103.4, -296.6 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 55.8, -296 , 0 );
setMoveKey( spep_2 -3 + 277, 1, 55.8, -296 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 106.1, -281.5 , 0 );
setMoveKey( spep_2 -3 + 279, 1, 106.1, -281.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 104.5, -342.9 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 104.5, -342.9 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 90.8, -316.4 , 0 );
setMoveKey( spep_2 -3 + 283, 1, 90.8, -316.4 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 110, -372.9 , 0 );
setMoveKey( spep_2 -3 + 285, 1, 110, -372.9 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 103.2, -372.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, 103.2, -372.9 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 106.2, -388.6 , 0 );
setMoveKey( spep_2 -3 + 289, 1, 106.2, -388.6 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 109.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 109.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 111.9, -418.8 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 111.9, -418.8 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 114.7, -433.3 , 0 );
setMoveKey( spep_2 -3 + 295, 1, 114.7, -433.3 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 117.3, -447.4 , 0 );
setMoveKey( spep_2 -3 + 297, 1, 117.3, -447.4 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 119.8, -461.2 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 119.8, -461.2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 122.3, -474.5 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 122.3, -474.5 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 124.6, -487.5 , 0 );
setMoveKey( spep_2 + 300, 1, 126.8, -500.1 , 0 );

setScaleKey( spep_2 -3 + 250, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 253, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 254, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 255, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 256, 1, 3, 3 );
setScaleKey( spep_2 -3 + 257, 1, 3, 3 );
setScaleKey( spep_2 -3 + 258, 1, 2.96, 2.96 );
setScaleKey( spep_2 -3 + 259, 1, 2.96, 2.96 );
setScaleKey( spep_2 -3 + 260, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 261, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 262, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 263, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 264, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 265, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 266, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 268, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 270, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 271, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 272, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 273, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 274, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 275, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 276, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 277, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 278, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 279, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 280, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 281, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 282, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 283, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 284, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 285, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 286, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 287, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 288, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 289, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 290, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 291, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 292, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 293, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 294, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 295, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 296, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 297, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 298, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 299, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 300, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 301, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 302, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 300, 1, 0.49, 0.49 );

setRotateKey( spep_2 -3 + 250, 1, 11.7 );
setRotateKey( spep_2 -3 + 253, 1, 11.7 );
setRotateKey( spep_2 -3 + 254, 1, 50.4 );
setRotateKey( spep_2 + 300, 1, 50.4 );

-- ** 音 ** --
--ベジータ向かってくる
SE018 = playSeVer2( spep_2 + 0, 1182, "",spep_2 + 36, 0, 8, -1);
SE019 = playSeVer2( spep_2 + 0, 1192, "",spep_2 + 36, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 0, SE019, 158 );
SE020 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 36, 0, 8, -1);

--瞬間移動
SE021 = playSeVer2( spep_2 + 18, 1109, "", 0, 0, 0, -1);

--ベジータパンチ
SE022 = playSeVer2( spep_2 + 50, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE023, 82 );
SE024 = playSeVer2( spep_2 + 52, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 68, 1183, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 68, SE025, 68 );
SE026 = playSeVer2( spep_2 + 68, 1121, "",spep_2 + 142, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 68, SE026, 68 );

--瞬間移動
SE027 = playSeVer2( spep_2 + 86, 1109, "", 0, 0, 0, -1);

--両足蹴り上げ
SE028 = playSeVer2( spep_2 + 118, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE028, 91 );
SE029 = playSeVer2( spep_2 + 118, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE029, 82 );

--吹き飛ぶ
SE030 = playSeVer2( spep_2 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE030, 79 );

--ベジータ向かっていく
SE031 = playSeVer2( spep_2 + 160, 1182, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 160, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE033 = playSeVer2( spep_2 + 204, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE033, 73 );
SE034 = playSeVer2( spep_2 + 204, 1116, "",spep_2 + 242, 0, 16, -1);

--叩き落とす
SE035 = playSeVer2( spep_2 + 238, 1189, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 242, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_2 + 258, 1121, "",spep_2 + 356, 0, 58, -1);

--集中線
SE038 = playSeVer2( spep_2 + 314, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE038, 43 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;

-------------------------------------------------
-- 悟空カメハメは
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 160, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 160, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 160, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -2, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -1, base_3f, 255);
setEffAlphaKey( spep_3 + 160, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04br, 0x80, -1, 0, 0, 0); -- ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 160, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 160, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 160, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -2, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -1, base_3b, 255);
setEffAlphaKey( spep_3 + 160, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 92, 1, 1 );
setDisp( spep_3 -3 + 122, 1, 0 );

changeAnime( spep_3 -3 + 92, 1, 7 );

setMoveKey( spep_3 -3 + 92, 1, 389.9, 435 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 384, 429.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 378, 424.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 372.1, 418.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 366.2, 413.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 360.2, 408.1 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 354.3, 402.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 348.4, 397.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 342.4, 392 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 336.5, 386.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 330.5, 381.3 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 324.6, 375.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 318.6, 370.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 312.7, 365.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 306.7, 359.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 306.7, 359.8 , 0 );

setScaleKey( spep_3 -3 + 92, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 94, 1, 0.30, 0.30 );
setScaleKey( spep_3 -3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 98, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 100, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 102, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 104, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 106, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 108, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 110, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 112, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 114, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 118, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 120, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 122, 1, 0.58, 0.58 );

setRotateKey( spep_3 -3 + 92, 1, -65 );
setRotateKey( spep_3 -3 + 122, 1, -65 );

-- ** 音 ** --
--悟空構える
SE039 = playSeVer2( spep_3 + 4, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 4, 1233, "", 0, 0, 0, -1);

--かめはめ波溜め
SE041 = playSeVer2( spep_3 + 40, 1210, "",spep_3 + 148, 36, 18, 0.6);
setStartTimeMs( SE041,  600 );

--悟空構える
SE042 = playSeVer2( spep_3 + 18, 1006, "", 0, 0, 0, -1);

--かめはめ波溜め
SE043 = playSeVer2( spep_3 + 38, 1209, "",spep_3 + 148, 0, 18, -1);

--かめはめ波発射
SE044 = playSeVer2( spep_3 + 124, 1133, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 124, 1284, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 124, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 124, SE046, 74 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 160;

-------------------------------------------------
-- 敵フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 218, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 218, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 218, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 218, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_05br, 0x80, -1, 0, 0, 0); -- ef_005_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 218, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 218, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 218, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 218, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 218 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 26, 1, 1 );
setDisp( spep_4 -3 + 56, 1, 0 );

changeAnime( spep_4 -3 + 26, 1, 6 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -3 + 26, 1, 419.3, 265.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 377.2, 234.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 335, 202.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 292.9, 170.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 250.8, 138.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 208.7, 107.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 166.5, 75.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 124.4, 43.6 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 82.3, 11.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 156, 47 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 169.8, 54.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 183.7, 62.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 197.5, 69.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 303.8, 129.8 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 410, 190 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 410, 190 , 0 );

setScaleKey( spep_4 -3 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 43, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 44, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 56, 1, 1.79, 1.79 );

setRotateKey( spep_4 -3 + 26, 1, -61.7 );
setRotateKey( spep_4 -3 + 43, 1, -61.7 );
setRotateKey( spep_4 -3 + 44, 1, -16.9 );
setRotateKey( spep_4 -3 + 56, 1, -16.9 );

setDisp( spep_4 -3 + 84, 1, 1 );
setDisp( spep_4 -3 + 218, 1, 0 );

changeAnime( spep_4 -3 + 84, 1, 108 );
changeAnime( spep_4 -3 + 116, 1, 106 );

setMoveKey( spep_4 -3 + 84, 1, -0.5, -78.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 4, -74 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 15.5, -81.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 8, -72.8 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 23.5, -65.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 18, -64.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 30.5, -75 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 33, -60.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 43.5, -69.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 35, -62.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 43.6, -69.6 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 49.1, -54 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 62.6, -63.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 56.1, -55.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 62.6, -56.3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 71.1, -49.7 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 50.3, -42.6 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 54.8, -32 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 51.3, -31.4 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 63.9, -43.8 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 67.4, -35.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 71.9, -27.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 82.4, -34 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 74.9, -33.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 84.4, -21.8 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 101.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 94.4, -17.6 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 98.9, -24 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 97.4, -23.4 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 112, -25.8 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 106.5, -19.2 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 122, -10.6 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 127.5, -21 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 124.1, -14.8 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 130.5, -12.8 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 134, -5.2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 144.5, -10.7 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 144, -12.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 142.6, 0.5 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 160.1, -5.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 161.6, -12.3 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 161.1, -1.7 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 166.6, -0.1 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 171.1, 1.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 175.6, 3.1 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 180.1, 4.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 184.6, 6.3 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 189.2, 7.9 , 0 );
setMoveKey( spep_4 -3 + 218, 1, 189.2, 7.9 , 0 );

setScaleKey( spep_4 -3 + 84, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 218, 1, 1.77, 1.77 );

setRotateKey( spep_4 -3 + 84, 1, -2.4 );
setRotateKey( spep_4 -3 + 86, 1, -2.3 );
setRotateKey( spep_4 -3 + 88, 1, -2.1 );
setRotateKey( spep_4 -3 + 90, 1, -2 );
setRotateKey( spep_4 -3 + 92, 1, -1.9 );
setRotateKey( spep_4 -3 + 94, 1, -1.7 );
setRotateKey( spep_4 -3 + 96, 1, -1.6 );
setRotateKey( spep_4 -3 + 98, 1, -1.5 );
setRotateKey( spep_4 -3 + 100, 1, -1.3 );
setRotateKey( spep_4 -3 + 102, 1, -1.2 );
setRotateKey( spep_4 -3 + 104, 1, -1 );
setRotateKey( spep_4 -3 + 106, 1, -0.9 );
setRotateKey( spep_4 -3 + 108, 1, -0.8 );
setRotateKey( spep_4 -3 + 110, 1, -0.6 );
setRotateKey( spep_4 -3 + 112, 1, -0.5 );
setRotateKey( spep_4 -3 + 114, 1, -0.4 );
setRotateKey( spep_4 -3 + 116, 1, 1.8 );
setRotateKey( spep_4 -3 + 118, 1, 2 );
setRotateKey( spep_4 -3 + 120, 1, 2.3 );
setRotateKey( spep_4 -3 + 122, 1, 2.5 );
setRotateKey( spep_4 -3 + 124, 1, 2.8 );
setRotateKey( spep_4 -3 + 126, 1, 3.1 );
setRotateKey( spep_4 -3 + 128, 1, 3.3 );
setRotateKey( spep_4 -3 + 130, 1, 3.6 );
setRotateKey( spep_4 -3 + 132, 1, 3.8 );
setRotateKey( spep_4 -3 + 134, 1, 4.1 );
setRotateKey( spep_4 -3 + 136, 1, 4.4 );
setRotateKey( spep_4 -3 + 138, 1, 4.6 );
setRotateKey( spep_4 -3 + 140, 1, 4.9 );
setRotateKey( spep_4 -3 + 142, 1, 5.1 );
setRotateKey( spep_4 -3 + 144, 1, 5.4 );
setRotateKey( spep_4 -3 + 146, 1, 5.7 );
setRotateKey( spep_4 -3 + 148, 1, 5.9 );
setRotateKey( spep_4 -3 + 150, 1, 6.2 );
setRotateKey( spep_4 -3 + 152, 1, 6.4 );
setRotateKey( spep_4 -3 + 154, 1, 6.7 );
setRotateKey( spep_4 -3 + 156, 1, 7 );
setRotateKey( spep_4 -3 + 158, 1, 7.2 );
setRotateKey( spep_4 -3 + 160, 1, 7.5 );
setRotateKey( spep_4 -3 + 162, 1, 7.7 );
setRotateKey( spep_4 -3 + 164, 1, 8 );
setRotateKey( spep_4 -3 + 166, 1, 8.3 );
setRotateKey( spep_4 -3 + 168, 1, 8.5 );
setRotateKey( spep_4 -3 + 170, 1, 8.8 );
setRotateKey( spep_4 -3 + 172, 1, 9 );
setRotateKey( spep_4 -3 + 174, 1, 9.3 );
setRotateKey( spep_4 -3 + 176, 1, 9.6 );
setRotateKey( spep_4 -3 + 178, 1, 9.8 );
setRotateKey( spep_4 -3 + 218, 1, 9.8 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE047 = playSeVer2( spep_4 + 0, 1390, "", 0, 0, 0, 0.6);
SE048 = playSeVer2( spep_4 + 42, 1145, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 70, 1161, "", 0, 0, 0, -1);

--敵飲まれる
SE050 = playSeVer2( spep_4 + 90, 1258, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE050, 75 );
setStartTimeMs( SE050,  50 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 96); -- ダメージ表示フレーム
endPhase( spep_4 + 218 -4); -- 終了フレーム

end
