-- 1024040：R_コルド大王_フルパワ－デスビ－ム
-- sp_effect_a3_00092
-- sp2374

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
SP_01 = 159915;	--セリフカットイン	ef_001		キャラ、エフェクト黒半透明含む
SP_02 = 159917;	--デスビーム発射	ef_002		キャラ、エフェクト、背景、文字
SP_03 = 159919;	--敵に着弾	ef_003		敵より前のエフェクト、文字　ef_004と同時再生
SP_03b = 159921;	--敵に着弾	ef_004		敵より後ろのエフェクト、背景　ef_003と同時再生

--エフェクト(敵)
SP_01r = 159916;	--セリフカットイン	ef_001_ｒ		キャラ、エフェクト黒半透明含む
SP_02r = 159918;	--デスビーム発射	ef_002_ｒ		キャラ、エフェクト、背景、文字
SP_03r = 159920;	--敵に着弾	ef_003_ｒ		敵より前のエフェクト、文字　ef_004_rと同時再生
SP_03br = 159922;	--敵に着弾	ef_004_ｒ		敵より後ろのエフェクト、背景　ef_00３_rと同時再生


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
-- セリフカットイン	ef_001
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --セリフカットイン	ef_001		キャラ、エフェクト黒半透明含む
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 214 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 214 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 214 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 214 -5, base_0, 255);
setEffAlphaKey( spep_0 + 214 -4, base_0, 0);


-- ** 白フェード ** --
entryFade( spep_0 + 214 -4 -20, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 70 -3, 906, 214 - 70, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 70 -3, shuchusen_0, 214 - 70, 20 );
setEffMoveKey( spep_0 + 70 -3, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 214 -3, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 70 -3, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 214 -3, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 70 -3, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 214 -3, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 70 -3, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 214 -3, shuchusen_0, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 108;

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
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );

--気弾溜め
SE002 = playSeVer2( spep_0 + 70, 1296, "",spep_0 + 232 -12, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 70, 1199, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 70, 1037, "",spep_0 + 238 -12, 0, 12, 0.6);
SE005 = playSeVer2( spep_0 + 176, 1037, "",spep_0 + 238 -12, 8, 12, -1);
setStartTimeMs( SE005,  1133 );

--顔カットイン
SE006 = playSeVer2( spep_0 + 116, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 136, 1199, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 214 -4;

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
-- デスビーム発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --デスビーム発射	ef_002		キャラ、エフェクト、背景、文字
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 148 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 148 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 148 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 148 -5, base_1, 255);
setEffAlphaKey( spep_1 + 148 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --

--気弾発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 68, 0, 16, -1);
SE008 = playSeVer2( spep_1 + 2, 1296, "",spep_1 + 68, 4, 16, -1);
setStartTimeMs( SE008,  1750 );


--気弾発射
SE011 = playSeVer2( spep_1 + 40, 1178, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 40, 1146, "",spep_1 + 232, 0, 60, -1);
SE013 = playSeVer2( spep_1 + 40, 1193, "",spep_1 + 232, 0, 60, 0.6);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
spep_2 = spep_1 + 148 -4;

-------------------------------------------------
-- 敵に着弾	ef_003
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --敵に着弾	ef_003		敵より前のエフェクト、文字　ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); --敵に着弾	ef_004		敵より後ろのエフェクト、背景　ef_003と同時再生)
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 80 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
-- setDisp( spep_2 -4 + 80, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 15, 1, 106 );
changeAnime( spep_2 -3 + 16, 1, 108 );

setMoveKey( spep_2 -2 + 2, 1, -15.2, 49.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -10.5, 49.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -6, 48.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1.1, 43.7 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 9.1, 46.2 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 6.7, 43.7 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 52.6, 46.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 58.3, 44.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 70.4, 38.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 77.2, 45.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 83.4, 37.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 91.2, 35.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 106.3, 36.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 109.1, 41.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 116.8, 33 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 126.1, 36.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 122.7, 34.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 136, 41.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 139.6, 41.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 151.4, 32.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 173.3, 26.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 192.1, 32.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 191.7, 32.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 202.8, 25.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 214, 20.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 205.1, 36.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 221.6, 24.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 206.5, 31.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 207.5, 27.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 221.6, 39.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 222.8, 22.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 228.1, 35.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 217.3, 21.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 228.5, 22.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 216.1, 29.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 233.8, 24.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 224.2, 33.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 220.8, 27.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 241.2, 33.9 , 0 );
-- setMoveKey( spep_2 -5 + 80, 1, 241.2, 33.9 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 13, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 15, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 16, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 22, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 24, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 30, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 32, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 36, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 44, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 56, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 74, 1, 1.43, 1.43 );
setScaleKey( spep_2 -5 + 80, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 0, 1, -10 );
setRotateKey( spep_2 -3 + 13, 1, -10 );
setRotateKey( spep_2 -3 + 14, 1, -10 );
setRotateKey( spep_2 -3 + 15, 1, -50 );
setRotateKey( spep_2 -3 + 16, 1, -4 );
setRotateKey( spep_2 -5 + 80, 1, -4 );


-- ** 音 ** --
--気弾貫通する
SE014 = playSeVer2( spep_2 + 0, 1017, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.8, 0.8 );
setEffScaleKey( spep_3 + 110, explode, 0.8, 0.8 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_3 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 110, hibiware, 0 );
setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_3 + 0, 906, 110, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusenf1, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf1, 1, 1 );
setEffRotateKey( spep_3 + 0, shuchusenf1, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf1, 0 );
setEffAlphaKey( spep_3 + 0, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf1, 255 );

-- ** 集中線 ** --
shuchusenf2 = entryEffectLife( spep_3 + 14, 906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );

-- ** 集中線黒 ** --
shuchusenf3 = entryEffectLife( spep_3 + 14, 1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf3, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf3, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf3, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf3, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf3, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf3, 255 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14, 10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_3 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_3 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_3 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_3 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_3 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_3 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_3 + 14, ctgaf, 255 );
setEffAlphaKey( spep_3 + 110, ctgaf, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -10.2, -12.2 , 0 );
setMoveKey( spep_3 + 2, 1, 28.8, -55 , 0 );
setMoveKey( spep_3 + 4, 1, -35.3, -123.3 , 0 );
setMoveKey( spep_3 + 6, 1, 26.9, -68.1 , 0 );
setMoveKey( spep_3 + 8, 1, -61.5, -236.8 , 0 );
setMoveKey( spep_3 + 10, 1, 109.9, -219 , 0 );
setMoveKey( spep_3 + 12, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 14, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 16, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 18, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 20, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 22, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 24, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 26, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 110, 1, -47.8, -141.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, -39.8 );
setRotateKey( spep_3 + 2, 1, 65.2 );
setRotateKey( spep_3 + 4, 1, 200.2 );
setRotateKey( spep_3 + 6, 1, 365.2 );
setRotateKey( spep_3 + 8, 1, 560.2 );
setRotateKey( spep_3 + 10, 1, 785.2 );
setRotateKey( spep_3 + 12, 1, 1040.2 );
setRotateKey( spep_3 + 110, 1, 1040.2 );


-- ** 音 ** --
--壁に激突する
SE016 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 110 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン	ef_001
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); --セリフカットイン	ef_001		キャラ、エフェクト黒半透明含む
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 214 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 214 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 214 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 214 -5, base_0, 255);
setEffAlphaKey( spep_0 + 214 -4, base_0, 0);


-- ** 白フェード ** --
entryFade( spep_0 + 214 -4 -20, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 70 -3, 906, 214 - 70, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 70 -3, shuchusen_0, 214 - 70, 20 );
setEffMoveKey( spep_0 + 70 -3, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 214 -3, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 70 -3, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 214 -3, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 70 -3, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 214 -3, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 70 -3, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 214 -3, shuchusen_0, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 108;

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
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );

--気弾溜め
SE002 = playSeVer2( spep_0 + 70, 1296, "",spep_0 + 232 -12, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 70, 1199, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 70, 1037, "",spep_0 + 238 -12, 0, 12, 0.6);
SE005 = playSeVer2( spep_0 + 176, 1037, "",spep_0 + 238 -12, 8, 12, -1);
setStartTimeMs( SE005,  1133 );

--顔カットイン
SE006 = playSeVer2( spep_0 + 116, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 136, 1199, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 214 -4;

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
-- デスビーム発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); --デスビーム発射	ef_002		キャラ、エフェクト、背景、文字
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 148 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 148 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 148 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 148 -5, base_1, 255);
setEffAlphaKey( spep_1 + 148 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --

--気弾発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 68, 0, 16, -1);
SE008 = playSeVer2( spep_1 + 2, 1296, "",spep_1 + 68, 4, 16, -1);
setStartTimeMs( SE008,  1750 );


--気弾発射
SE011 = playSeVer2( spep_1 + 40, 1178, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 40, 1146, "",spep_1 + 232, 0, 60, -1);
SE013 = playSeVer2( spep_1 + 40, 1193, "",spep_1 + 232, 0, 60, 0.6);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
spep_2 = spep_1 + 148 -4;

-------------------------------------------------
-- 敵に着弾	ef_003
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); --敵に着弾	ef_003		敵より前のエフェクト、文字　ef_004と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 80 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); --敵に着弾	ef_004		敵より後ろのエフェクト、背景　ef_003と同時再生)
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 80 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 80 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 80 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 80 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
-- setDisp( spep_2 -4 + 80, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 15, 1, 106 );
changeAnime( spep_2 -3 + 16, 1, 108 );

setMoveKey( spep_2 -2 + 2, 1, -15.2, 49.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -10.5, 49.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -6, 48.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1.1, 43.7 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 9.1, 46.2 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 6.7, 43.7 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 52.6, 46.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 58.3, 44.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 70.4, 38.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 77.2, 45.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 83.4, 37.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 91.2, 35.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 106.3, 36.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 109.1, 41.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 116.8, 33 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 126.1, 36.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 122.7, 34.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 136, 41.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 139.6, 41.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 151.4, 32.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 173.3, 26.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 192.1, 32.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 191.7, 32.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 202.8, 25.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 214, 20.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 205.1, 36.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 221.6, 24.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 206.5, 31.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 207.5, 27.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 221.6, 39.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 222.8, 22.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 228.1, 35.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 217.3, 21.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 228.5, 22.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 216.1, 29.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 233.8, 24.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 224.2, 33.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 220.8, 27.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 241.2, 33.9 , 0 );
-- setMoveKey( spep_2 -5 + 80, 1, 241.2, 33.9 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 13, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 15, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 16, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 22, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 24, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 30, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 32, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 36, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 44, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 56, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 74, 1, 1.43, 1.43 );
setScaleKey( spep_2 -5 + 80, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 0, 1, -10 );
setRotateKey( spep_2 -3 + 13, 1, -10 );
setRotateKey( spep_2 -3 + 14, 1, -10 );
setRotateKey( spep_2 -3 + 15, 1, -50 );
setRotateKey( spep_2 -3 + 16, 1, -4 );
setRotateKey( spep_2 -5 + 80, 1, -4 );


-- ** 音 ** --
--気弾貫通する
SE014 = playSeVer2( spep_2 + 0, 1017, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 80 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.8, 0.8 );
setEffScaleKey( spep_3 + 110, explode, 0.8, 0.8 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_3 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 110, hibiware, 0 );
setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_3 + 0, 906, 110, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusenf1, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf1, 1, 1 );
setEffRotateKey( spep_3 + 0, shuchusenf1, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf1, 0 );
setEffAlphaKey( spep_3 + 0, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf1, 255 );

-- ** 集中線 ** --
shuchusenf2 = entryEffectLife( spep_3 + 14, 906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );

-- ** 集中線黒 ** --
shuchusenf3 = entryEffectLife( spep_3 + 14, 1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf3, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf3, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf3, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf3, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf3, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf3, 255 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14, 10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_3 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_3 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_3 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_3 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_3 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_3 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_3 + 14, ctgaf, 255 );
setEffAlphaKey( spep_3 + 110, ctgaf, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -10.2, -12.2 , 0 );
setMoveKey( spep_3 + 2, 1, 28.8, -55 , 0 );
setMoveKey( spep_3 + 4, 1, -35.3, -123.3 , 0 );
setMoveKey( spep_3 + 6, 1, 26.9, -68.1 , 0 );
setMoveKey( spep_3 + 8, 1, -61.5, -236.8 , 0 );
setMoveKey( spep_3 + 10, 1, 109.9, -219 , 0 );
setMoveKey( spep_3 + 12, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 14, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 16, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 18, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 20, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 22, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 24, 1, -44.9, -150.2 , 0 );
setMoveKey( spep_3 + 26, 1, -47.8, -141.2 , 0 );
setMoveKey( spep_3 + 110, 1, -47.8, -141.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, -39.8 );
setRotateKey( spep_3 + 2, 1, 65.2 );
setRotateKey( spep_3 + 4, 1, 200.2 );
setRotateKey( spep_3 + 6, 1, 365.2 );
setRotateKey( spep_3 + 8, 1, 560.2 );
setRotateKey( spep_3 + 10, 1, 785.2 );
setRotateKey( spep_3 + 12, 1, 1040.2 );
setRotateKey( spep_3 + 110, 1, 1040.2 );


-- ** 音 ** --
--壁に激突する
SE016 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 110 -8); -- 終了フレーム

end
