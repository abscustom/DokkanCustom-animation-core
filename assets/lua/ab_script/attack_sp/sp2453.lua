--1025290：SSR_ブラック参謀_巨大レーザー砲
--sp_effect_a3_00095
--sp2453

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
SP_01 = 160657;	 --開幕	ef_001
SP_02 = 160659;	 --発射	ef_002
SP_03 = 160661;	 --敵レーザー命中　前面	ef_003
SP_03b = 160663;	 --敵レーザー命中　背面	ef_004
SP_04 = 160664;	 --フィニッシュ	ef_005

--エフェクト(てき)
SP_01r = 160658;	 --開幕　敵側	ef_001e
SP_02r = 160660;	 --発射　敵側	ef_002e
SP_03r = 160662;	 --敵レーザー命中　前面　敵側	ef_003e
SP_04r = 160665;	 --フィニッシュ　敵側	ef_005e

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
-- 開幕
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 98 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 98 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 98 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 98 -5, base_0, 255);
setEffAlphaKey( spep_0 + 98 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 98 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 106, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 39 );

--入り
SE002 = playSeVer2( spep_0 + 6, 20, "",spep_0 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 63 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--入り
SE004 = playSeVer2( spep_0 + 10, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 98 -4;


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
-- 発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_2, 0);
setEffRotateKey( spep_1 + 88 -4, base_2, 0);
setEffAlphaKey( spep_1 + 0, base_2, 255);
setEffAlphaKey( spep_1 + 88 -5, base_2, 255);
setEffAlphaKey( spep_1 + 88 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88 -2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--レーザー溜め
SE005 = playSeVer2( spep_1 + 0, 1136, "",spep_1 + 26, 4, 6, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 75 );
setStartTimeMs( SE005,  1583 );

--レーザー発射
SE007 = playSeVer2( spep_1 + 20, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 20, 1302, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 20, 1146, "", 0, 0, 0, 0.7);

-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;


-------------------------------------------------
-- 敵レーザー命中
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 　前面 ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 78 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 78 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 78 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 78 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 78 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 背面	ef_004
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 78 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 78 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 78 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 78 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 78 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 - 3 + 28, 1, 108 );

setMoveKey( spep_2 + 0, 1, -12.9, -37.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--レーザー飛んでいく
SE010 = playSeVer2( spep_2 + 0, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 160 );
SE011 = playSeVer2( spep_2 + 0, 1329, "",spep_2 + 260, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 172 );
setPitch( spep_2 + 0, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE012 = playSeVer2( spep_2 + 6, 1023, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 4; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 4, 1042);
stopSe( SP_dodge - 4, SE009, 0);
stopSe( SP_dodge - 4, SE010, 0);
stopSe( SP_dodge - 4, SE011, 0);
stopSe( SP_dodge + 2, SE012, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -12.9, -37.7 , 0 );
setMoveKey( SP_dodge + 10, 1, -12.9, -37.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1, 1 );
setScaleKey( SP_dodge + 10, 1, 1, 1 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

speff = entryEffectUnpausable( SP_dodge-4, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
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
setMoveKey( spep_2 - 3 + 27, 1, -12.9, -37.7 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, 10.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 29, 1, 10.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, 17.7, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 31, 1, 17.7, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 32, 1, 24.4, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 33, 1, 24.4, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 34, 1, 20.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 35, 1, 20.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 36, 1, 20.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 37, 1, 20.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 38, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 39, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 40, 1, 34.5, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 41, 1, 34.5, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 30.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 43, 1, 30.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 30.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 45, 1, 30.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 37.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 47, 1, 37.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 44.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 49, 1, 44.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 40.4, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 51, 1, 40.4, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 45.2, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 47.7, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 50.2, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 52.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 55.3, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 57.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 64, 1, 60.3, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 66, 1, 62.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 68, 1, 65.4, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 67.9, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 70.4, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 75.4, -38.8 , 0 );
setMoveKey( spep_2 - 4 + 78, 1, 78, -38.8 , 0 );

setScaleKey( spep_2 - 4 + 78, 1, 1, 1 );

setRotateKey( spep_2 - 4 + 78, 1, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 78 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 412 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 412 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 412 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 412 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 412 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_3 + 248, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒フェード ** --
entryFade( spep_3 + 252, 0, 4, 0, 0, 0, 0, 255 );  --black fade

-- ** 音 ** --
--地面爆発
SE013 = playSeVer2( spep_3 + 52, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 80, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE014, 73 );
SE015 = playSeVer2( spep_3 + 92, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE015, 69 );

--ラスト爆発
SE016 = playSeVer2( spep_3 + 248, 1159, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 248, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 272 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 412 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 98 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 98 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 98 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 98 -5, base_0, 255);
setEffAlphaKey( spep_0 + 98 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 98 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 106, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 39 );

--入り
SE002 = playSeVer2( spep_0 + 6, 20, "",spep_0 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 63 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--入り
SE004 = playSeVer2( spep_0 + 10, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 98 -4;


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
-- 発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_2, 0);
setEffRotateKey( spep_1 + 88 -4, base_2, 0);
setEffAlphaKey( spep_1 + 0, base_2, 255);
setEffAlphaKey( spep_1 + 88 -5, base_2, 255);
setEffAlphaKey( spep_1 + 88 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88 -2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--レーザー溜め
SE005 = playSeVer2( spep_1 + 0, 1136, "",spep_1 + 26, 4, 6, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 75 );
setStartTimeMs( SE005,  1583 );

--レーザー発射
SE007 = playSeVer2( spep_1 + 20, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 20, 1302, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 20, 1146, "", 0, 0, 0, 0.7);

-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;


-------------------------------------------------
-- 敵レーザー命中
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 　前面 ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 78 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 78 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 78 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 78 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 78 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 背面	ef_004
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 78 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 78 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 78 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 78 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 78 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 - 3 + 28, 1, 108 );

setMoveKey( spep_2 + 0, 1, -12.9, -37.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--レーザー飛んでいく
SE010 = playSeVer2( spep_2 + 0, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 160 );
SE011 = playSeVer2( spep_2 + 0, 1329, "",spep_2 + 260, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 172 );
setPitch( spep_2 + 0, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE012 = playSeVer2( spep_2 + 6, 1023, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 4; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 4, 1042);
stopSe( SP_dodge - 4, SE009, 0);
stopSe( SP_dodge - 4, SE010, 0);
stopSe( SP_dodge - 4, SE011, 0);
stopSe( SP_dodge + 2, SE012, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -12.9, -37.7 , 0 );
setMoveKey( SP_dodge + 10, 1, -12.9, -37.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1, 1 );
setScaleKey( SP_dodge + 10, 1, 1, 1 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

speff = entryEffectUnpausable( SP_dodge-4, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
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
setMoveKey( spep_2 - 3 + 27, 1, -12.9, -37.7 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, 10.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 29, 1, 10.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, 17.7, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 31, 1, 17.7, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 32, 1, 24.4, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 33, 1, 24.4, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 34, 1, 20.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 35, 1, 20.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 36, 1, 20.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 37, 1, 20.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 38, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 39, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 40, 1, 34.5, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 41, 1, 34.5, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 30.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 43, 1, 30.3, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 30.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 45, 1, 30.7, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 37.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 47, 1, 37.8, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 44.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 49, 1, 44.6, -36.3 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 40.4, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 51, 1, 40.4, -41.3 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 45.2, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 47.7, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 50.2, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 52.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 55.3, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 57.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 64, 1, 60.3, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 66, 1, 62.8, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 68, 1, 65.4, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 67.9, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 70.4, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 75.4, -38.8 , 0 );
setMoveKey( spep_2 - 4 + 78, 1, 78, -38.8 , 0 );

setScaleKey( spep_2 - 4 + 78, 1, 1, 1 );

setRotateKey( spep_2 - 4 + 78, 1, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 78 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 412 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 412 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 412 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 412 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 412 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白フェード ** --
entryFade( spep_3 + 248, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒フェード ** --
entryFade( spep_3 + 252, 0, 4, 0, 0, 0, 0, 255 );  --black fade

-- ** 音 ** --
--地面爆発
SE013 = playSeVer2( spep_3 + 52, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 80, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE014, 73 );
SE015 = playSeVer2( spep_3 + 92, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE015, 69 );

--ラスト爆発
SE016 = playSeVer2( spep_3 + 248, 1159, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 248, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 272 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 412 -8); -- 終了フレーム

end
