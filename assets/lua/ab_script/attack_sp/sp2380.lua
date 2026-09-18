-- 1024270：UR_メカフリーザ_デスブラスター
-- sp_effect_a1_00355
-- sp2380

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
SP_01 = 159909;	-- 気弾溜め	ef_001
SP_02 = 159910;	-- 気弾発射	ef_002
SP_02b = 159914;	-- 黒の背景	ef_004		ef_002またはef_002rと同時再生
SP_03 = 159912;	-- 爆発	ef_003

--エフェクト(てき)
SP_02r = 159911;	-- 気弾発射	ef_002r		敵用
SP_03r = 159913;	-- 爆発	ef_003r		適用


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
-- 気弾溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --気弾溜め	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 114 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 114 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 114 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 114 -5, base_0, 255);
setEffAlphaKey( spep_0 + 114 -4, base_0, 0);


-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 114 -4 -20, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 114 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, 114 -4, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 114 -4, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.2, 1.2 );
setEffScaleKey( spep_0 + 114 -4, shuchusen_0, 1.2, 1.2 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 114 -4, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 114 -4, shuchusen_0, 255 );


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
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 -70, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 -70, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 -70, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 -70, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 28, 1281, "",spep_0 + 136 -12, 0, 14, -1);
SE004 = playSeVer2( spep_0 + 28, 1262, "",spep_0 + 134 -12, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 28, 1276, "",spep_0 + 72 -12, 0, 22, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 108 -4;

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
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 96;

-------------------------------------------------
-- 気弾発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); --気弾発射	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 140 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); --黒の背景	ef_004		ef_002またはef_002rと同時再生
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 140 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1b, 0);


-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 140 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen_1, 140 -4, 20 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 140 -4, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 140 -4, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 140 -4, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 140 -4, shuchusen_1, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 70, 1, 1 );

changeAnime( spep_1 -3 + 70, 1, 104 );

setMoveKey( spep_1 -3 + 70, 1, 343.9, 15.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 322.2, 20.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 306.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 293.5, 19.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 281.1, 16.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 269.6, 19.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 259.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 250, 19.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 240.3, 16.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 230.9, 19 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 223.3, 16.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 215.1, 18.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 206.8, 16.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 198.7, 18.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 192.6, 16.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 185.6, 18.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 178.3, 16.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 171.3, 18.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 166.3, 16.2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 160.3, 18.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 153.9, 16.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 147.8, 18.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 143.8, 16.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 138.8, 18.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 133.2, 17 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 127.9, 18.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 124.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 120.7, 18.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 116, 17.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 111.5, 17.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 109.5, 16.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 106.1, 17.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 102.3, 17.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 98.6, 17.7 , 0 );

setScaleKey( spep_1 -3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 72, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 74, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 80, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 82, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 84, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 90, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 92, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 96, 1, 0.53, 0.53 );
setScaleKey( spep_1 -3 + 98, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 100, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 102, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 104, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 106, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 108, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 110, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 114, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 116, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 118, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 120, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 124, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 126, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 128, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 130, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 132, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 134, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 136, 1, 0.79, 0.79 );

setRotateKey( spep_1 -3 + 70, 1, 0 );


-- ** 音 ** --
--気弾発射前溜め
SE007 = playSeVer2( spep_1 + 0, 1262, "",spep_1 + 68, 0, 12, -1);
SE008 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 68, 0, 12, -1);

--気弾発射
SE009 = playSeVer2( spep_1 + 48, 1145, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 48, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE011 = playSeVer2( spep_1 + 86, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 120 -3; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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


-- ** 敵キャラクター ** --
setDisp( spep_1 -4 + 140, 1, 0 );

setMoveKey( spep_1 -3 + 138, 1, 97.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 97.8, 16.8 , 0 );

setScaleKey( spep_1 -3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 140, 1, 0.8, 0.8 );

setRotateKey( spep_1 -3 + 140, 1, 0 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 140 -4;

-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --爆発	ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 128 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 128 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 128 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 128 -4, base_2, 255);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 0, 906, 128 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen_2, 128 -4, 20 );
setEffMoveKey( spep_2 + 0, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 128 -4, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 128 -4, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 128 -4, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -4, shuchusen_2, 255 );


-- ** 音 ** --
--気弾ヒット
SE012 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 0, 1068, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 30 -3); -- ダメージ表示フレーム
endPhase( spep_2 + 128 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気弾溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --気弾溜め	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 114 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 114 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 114 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 114 -5, base_0, 255);
setEffAlphaKey( spep_0 + 114 -4, base_0, 0);


-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 114 -4 -20, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 114 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, 114 -4, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 114 -4, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.2, 1.2 );
setEffScaleKey( spep_0 + 114 -4, shuchusen_0, 1.2, 1.2 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 114 -4, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 114 -4, shuchusen_0, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 +70, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 +70, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 +70, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 +70, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 28, 1281, "",spep_0 + 136 -12, 0, 14, -1);
SE004 = playSeVer2( spep_0 + 28, 1262, "",spep_0 + 134 -12, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 28, 1276, "",spep_0 + 72 -12, 0, 22, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 108 -4;

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
spep_1 = spep_c + 96;

-------------------------------------------------
-- 気弾発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); --気弾発射	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 140 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); --黒の背景	ef_004		ef_002またはef_002rと同時再生
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 140 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1b, 0);


-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 140 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen_1, 140 -4, 20 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 140 -4, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 140 -4, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 140 -4, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 140 -4, shuchusen_1, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 70, 1, 1 );

changeAnime( spep_1 -3 + 70, 1, 104 );

setMoveKey( spep_1 -3 + 70, 1, 343.9, 15.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 322.2, 20.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 306.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 293.5, 19.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 281.1, 16.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 269.6, 19.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 259.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 250, 19.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 240.3, 16.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 230.9, 19 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 223.3, 16.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 215.1, 18.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 206.8, 16.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 198.7, 18.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 192.6, 16.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 185.6, 18.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 178.3, 16.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 171.3, 18.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 166.3, 16.2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 160.3, 18.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 153.9, 16.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 147.8, 18.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 143.8, 16.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 138.8, 18.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 133.2, 17 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 127.9, 18.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 124.9, 16.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 120.7, 18.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 116, 17.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 111.5, 17.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 109.5, 16.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 106.1, 17.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 102.3, 17.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 98.6, 17.7 , 0 );

setScaleKey( spep_1 -3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 72, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 74, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 80, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 82, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 84, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 90, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 92, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 96, 1, 0.53, 0.53 );
setScaleKey( spep_1 -3 + 98, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 100, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 102, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 104, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 106, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 108, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 110, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 114, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 116, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 118, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 120, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 124, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 126, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 128, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 130, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 132, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 134, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 136, 1, 0.79, 0.79 );

setRotateKey( spep_1 -3 + 70, 1, 0 );


-- ** 音 ** --
--気弾発射前溜め
SE007 = playSeVer2( spep_1 + 0, 1262, "",spep_1 + 68, 0, 12, -1);
SE008 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 68, 0, 12, -1);

--気弾発射
SE009 = playSeVer2( spep_1 + 48, 1145, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 48, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE011 = playSeVer2( spep_1 + 86, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 120 -3; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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


-- ** 敵キャラクター ** --
setDisp( spep_1 -4 + 140, 1, 0 );

setMoveKey( spep_1 -3 + 138, 1, 97.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 97.8, 16.8 , 0 );

setScaleKey( spep_1 -3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 140, 1, 0.8, 0.8 );

setRotateKey( spep_1 -3 + 140, 1, 0 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 140 -4;

-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); --爆発	ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 128 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 128 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 128 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 128 -4, base_2, 255);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 0, 906, 128 -4, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen_2, 128 -4, 20 );
setEffMoveKey( spep_2 + 0, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 128 -4, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 128 -4, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 128 -4, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -4, shuchusen_2, 255 );


-- ** 音 ** --
--気弾ヒット
SE012 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 0, 1068, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 30 -3); -- ダメージ表示フレーム
endPhase( spep_2 + 128 -8); -- 終了フレーム

end
