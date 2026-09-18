-- 1025150 UR_メタルクウラ_スーパーノヴァ(極限あり)
-- sp_effect_a1_00369
-- sp2441

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
SP_01 = 160447;	--構え	ef_001
SP_02 = 160448;	--気弾を投げる	ef_002
SP_03 = 160450;	--敵を包み込む気弾（文字こみ） ef_003  ef_004と同時再生
SP_04 = 160452;	--敵に向かう気弾 ef_004 ef_003またはef_003r と同時再生

--エフェクト(てき)
SP_02r = 160449;	--気弾を投げる	ef_002r 敵側用
SP_03r = 160451;	--敵を包み込む気弾（文字こみ）	ef_003r 敵側用　ef_004と同時再生 


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
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 168 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 168 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 168 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 168 -5, base_0, 255);
setEffAlphaKey( spep_0 + 168 -4, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 68;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 168 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1275, "", 0, 18, 0, -1);
setStartTimeMs( SE001,  333 );
SE002 = playSeVer2( spep_0 + 0, 1295, "",spep_0 + 186, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 132 );

--気弾大きくなる
SE005 = playSeVer2( spep_0 + 48, 1281, "",spep_0 + 178, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 76 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 0, 1154, "", 0, 0, 0, -1);

--気弾大きくなる
SE004 = playSeVer2( spep_0 + 48, 1224, "",spep_0 + 154, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 64, 1199, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_0 + 76, 1018, "", 0, 0, 0, -1);

--気弾大きくなる
SE008 = playSeVer2( spep_0 + 100, 1199, "",spep_0 + 178, 0, 10, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 168 -4;


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
-- 気弾を投げる
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 108 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 108 -5, base_1, 255);
setEffAlphaKey( spep_1 + 108 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 108 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1295, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 78, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 82 );

--気弾発射
SE013 = playSeVer2( spep_1 + 56, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 56, 1193, "",spep_1 + 198, 0, 8, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 84; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
spep_2 = spep_1 + 108 -4;


-------------------------------------------------
-- 敵を包み込む気弾（文字こみ）/ 敵に向かう気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 敵を包み込む気弾（文字こみ） ef_003  ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 68 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 敵に向かう気弾 ef_004 ef_003またはef_003r と同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 68 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 68 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 26, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );

-- setMoveKey( spep_2 -3 + 0, 1, 262.5, -101.6 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 258, -99.8 , 0 );
setMoveKey( spep_2 -2 + 3, 1, 258, -99.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 249.2, -94.1 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 249.2, -94.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 238.4, -90 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 238.4, -90 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 226.4, -81.6 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 226.4, -81.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 213.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 213.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 199.9, -67.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 185.6, -61.9 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 185.6, -61.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 170.7, -51.8 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 170.7, -51.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 155.3, -46 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 155.3, -46 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 139.4, -34.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 139.4, -34.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 122.8, -29 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 122.8, -29 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 105.6, -17 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 105.6, -17 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 100.6, -14 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 -2 + 2, 1, 1.89, 1.89 );
setScaleKey( spep_2 -2 + 3, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 5, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 6, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 7, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 9, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 10, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 11, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 13, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 14, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 15, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 16, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 17, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 19, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 20, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 21, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 23, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 25, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 26, 1, 1.4, 1.4 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 0, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 100, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

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

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 黒背景フェード ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --
--爆発
SE016 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 2, 1011, "", 0, 0, 0, -1);

--画面割れる
SE018 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 98); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------



spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 168 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 168 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 168 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 168 -5, base_0, 255);
setEffAlphaKey( spep_0 + 168 -4, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 68;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 168 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1275, "", 0, 18, 0, -1);
setStartTimeMs( SE001,  333 );
SE002 = playSeVer2( spep_0 + 0, 1295, "",spep_0 + 186, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 132 );

--気弾大きくなる
SE005 = playSeVer2( spep_0 + 48, 1281, "",spep_0 + 178, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 76 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 0, 1154, "", 0, 0, 0, -1);

--気弾大きくなる
SE004 = playSeVer2( spep_0 + 48, 1224, "",spep_0 + 154, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 64, 1199, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_0 + 76, 1018, "", 0, 0, 0, -1);

--気弾大きくなる
SE008 = playSeVer2( spep_0 + 100, 1199, "",spep_0 + 178, 0, 10, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 168 -4;


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
-- 気弾を投げる
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 108 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 108 -5, base_1, 255);
setEffAlphaKey( spep_1 + 108 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 108 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1295, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 78, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 82 );

--気弾発射
SE013 = playSeVer2( spep_1 + 56, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 56, 1193, "",spep_1 + 198, 0, 8, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 84; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
spep_2 = spep_1 + 108 -4;


-------------------------------------------------
-- 敵を包み込む気弾（文字こみ）/ 敵に向かう気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 敵を包み込む気弾（文字こみ） ef_003  ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 68 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 敵に向かう気弾 ef_004 ef_003またはef_003r と同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 68 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 68 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 68 -4 -18, 16, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 26, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );

-- setMoveKey( spep_2 -3 + 0, 1, 262.5, -101.6 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 258, -99.8 , 0 );
setMoveKey( spep_2 -2 + 3, 1, 258, -99.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 249.2, -94.1 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 249.2, -94.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 238.4, -90 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 238.4, -90 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 226.4, -81.6 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 226.4, -81.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 213.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 213.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 199.9, -67.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 185.6, -61.9 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 185.6, -61.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 170.7, -51.8 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 170.7, -51.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 155.3, -46 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 155.3, -46 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 139.4, -34.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 139.4, -34.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 122.8, -29 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 122.8, -29 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 105.6, -17 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 105.6, -17 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 100.6, -14 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 -2 + 2, 1, 1.89, 1.89 );
setScaleKey( spep_2 -2 + 3, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 5, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 6, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 7, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 9, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 10, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 11, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 13, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 14, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 15, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 16, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 17, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 19, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 20, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 21, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 23, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 25, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 26, 1, 1.4, 1.4 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 0, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 100, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

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

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 黒背景フェード ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --black bg fade

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --
--爆発
SE016 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 2, 1011, "", 0, 0, 0, -1);

--画面割れる
SE018 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 98); -- 終了フレーム

end