--1025600:UR_超サイヤ人孫悟飯(青年期)_かめはめ波
--sp_effect_a1_00385
--sp2474

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
SP_01 = 161050;	 --悟飯のアップ〜メガネをつかむ　セリフカットイン	ef_001
SP_02 = 161051;	 --メガネを外す	ef_002
SP_03 = 161053;	 --かめはめ波を溜める腕のアップ	ef_003
SP_04 = 161054;	 --気弾を溜める悟飯（背面）かめはめ波を放つ悟飯	ef_004
SP_05 = 161055;	 --敵に迫る気弾〜気弾ヒット	ef_005
SP_05b = 161056; --敵に迫る気弾〜気弾ヒット	ef_005_back
SP_06 = 161059;	 --フィニッシュ	ef_006

--エフェクト(てき)
SP_05r = 161057;	 --敵に迫る気弾〜気弾ヒット	ef_005_r
SP_05br = 161058;	 --敵に迫る気弾〜気弾ヒット	ef_005_r_back


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
-- 悟飯のアップ〜メガネをつかむ　セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 118, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 118, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 118, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 118 -1, base_0, 255);
setEffAlphaKey( spep_0 + 118, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 218, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 79 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--顔カットイン
SE005 = playSeVer2( spep_0 + 28, 1018, "", 0, 0, 0, -1);

--メガネ取る
SE004 = playSeVer2( spep_0 + 24, 1317, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;


-------------------------------------------------
-- メガネを外す
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 78, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 78, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 78, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 78 -1, base_1, 255);
setEffAlphaKey( spep_1 + 78, base_1, 0);

-- ** 音 ** --
--メガネ捨てる
SE011 = playSeVer2( spep_1 + 38, 1013, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 38, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE012, 158 );

--オーラ
SE009 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE009, 63 );
SE010 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE010, 63 );
SE013 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE013, 63 );
SE014 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE014, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 78;


-------------------------------------------------
-- かめはめ波を溜める腕のアップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 148, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 148, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 148, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 148 -1, base_2, 255);
setEffAlphaKey( spep_2 + 148, base_2, 0);

-- ** 音 ** --
--かめはめ波溜め
SE015 = playSeVer2( spep_2 + 0, 1209, "",spep_2 + 164, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 0, 1210, "",spep_2 + 164, 0, 14, 0.6);

--爆風
SE017 = playSeVer2( spep_2 + 56, 1258, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 56, SE017, 55 );

-- ** 次の準備 ** --
spep_c = spep_2 + 148;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限対応
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
spep_3 = spep_c + 94;


-------------------------------------------------
-- 気弾を溜める悟飯（背面）かめはめ波を放つ悟飯
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --	ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 72, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 72, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 72, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 72 -1, base_3, 255);
setEffAlphaKey( spep_3 + 72, base_3, 0);

-- ** 音 ** --
--発射前溜め
SE018 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 48, 6, 18, 0.6);
setStartTimeMs( SE018,  2783 );

--かめはめ波発射
SE020 = playSeVer2( spep_3 + 20, 1284, "",spep_3 + 178, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 20, SE020, 79 );
SE021 = playSeVer2( spep_3 + 20, 1213, "",spep_3 + 178, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 20, SE021, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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
spep_4 = spep_3 + 72;


-------------------------------------------------
-- 敵に迫る気弾〜気弾ヒット	
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 70, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 70, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 70, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 70 -1, base_4f, 255);
setEffAlphaKey( spep_4 + 70, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- ef_005_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 70, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 70, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 70, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 70 -1, base_4b, 255);
setEffAlphaKey( spep_4 + 70, base_4b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 70, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 40, 1, 108 );

setMoveKey( spep_4 -2 + 2, 1, 190.4, 193.6 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 203.6, 174.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 205.8, 186.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 174.1, 156.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 174.5, 176.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 176.8, 154 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 156.3, 161.8 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 163.7, 160.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 153.3, 135.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 139.8, 146.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 153.4, 127.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 156.1, 140.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 124.8, 110.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 125.5, 130.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 119.5, 89.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 93.5, 84.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 98.7, 74.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 89.1, 46.9 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 79.5, 60.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 82.5, 193.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 154.3, 98.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 42.1, 97.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 160.9, 203.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 163.7, 103.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 77.5, 189.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 159.3, 187.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 111.1, 155.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 131.9, 142.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 141.7, 162.7 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 117.5, 139.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 123.5, 164.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 131.5, 147.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 116.5, 160.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 129.5, 164.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 124.5, 144.5 , 0 );
setMoveKey( spep_4 + 70, 1, 124.5, 144.5 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 6, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 8, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 20, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 26, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 30, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 32, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 39, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 70, 1, 1.47, 1.47 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 40, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -0.8 );
setRotateKey( spep_4 -3 + 44, 1, -1.6 );
setRotateKey( spep_4 -3 + 46, 1, -2.5 );
setRotateKey( spep_4 -3 + 48, 1, -3.3 );
setRotateKey( spep_4 -3 + 50, 1, -4.1 );
setRotateKey( spep_4 -3 + 52, 1, -4.9 );
setRotateKey( spep_4 -3 + 54, 1, -5.8 );
setRotateKey( spep_4 -3 + 56, 1, -6.6 );
setRotateKey( spep_4 -3 + 58, 1, -7.4 );
setRotateKey( spep_4 -3 + 60, 1, -8.2 );
setRotateKey( spep_4 + 70, 1, -8.2 );

-- ** 音 ** --
--かめはめ波迫る
SE022 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE023 = playSeVer2( spep_4 + 38, 1011, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 228, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 228, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 228, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 228, base_5, 255);

-- ** 音 ** --
--爆発前予兆
SE024 = playSeVer2( spep_5 + 0, 1157, "", 0, 0, 0, 0.5);

--爆発
SE025 = playSeVer2( spep_5 + 30, 1069, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_5 + 54, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 100, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 108); -- ダメージ表示フレーム
endPhase( spep_5 + 228 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 悟飯のアップ〜メガネをつかむ　セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 118, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 118, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 118, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 118 -1, base_0, 255);
setEffAlphaKey( spep_0 + 118, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 218, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 79 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--顔カットイン
SE005 = playSeVer2( spep_0 + 28, 1018, "", 0, 0, 0, -1);

--メガネ取る
SE004 = playSeVer2( spep_0 + 24, 1317, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;


-------------------------------------------------
-- メガネを外す
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 78, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 78, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 78, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 78 -1, base_1, 255);
setEffAlphaKey( spep_1 + 78, base_1, 0);

-- ** 音 ** --
--メガネ捨てる
SE011 = playSeVer2( spep_1 + 38, 1013, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 38, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE012, 158 );

--オーラ
SE009 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE009, 63 );
SE010 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE010, 63 );
SE013 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE013, 63 );
SE014 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE014, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 78;


-------------------------------------------------
-- かめはめ波を溜める腕のアップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 148, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 148, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 148, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 148 -1, base_2, 255);
setEffAlphaKey( spep_2 + 148, base_2, 0);

-- ** 音 ** --
--かめはめ波溜め
SE015 = playSeVer2( spep_2 + 0, 1209, "",spep_2 + 164, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 0, 1210, "",spep_2 + 164, 0, 14, 0.6);

--爆風
SE017 = playSeVer2( spep_2 + 56, 1258, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 56, SE017, 55 );

-- ** 次の準備 ** --
spep_c = spep_2 + 148;


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
spep_3 = spep_c + 94;


-------------------------------------------------
-- 気弾を溜める悟飯（背面）かめはめ波を放つ悟飯
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --	ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 72, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 72, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 72, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 72 -1, base_3, 255);
setEffAlphaKey( spep_3 + 72, base_3, 0);

-- ** 音 ** --
--発射前溜め
SE018 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 48, 6, 18, 0.6);
setStartTimeMs( SE018,  2783 );

--かめはめ波発射
SE020 = playSeVer2( spep_3 + 20, 1284, "",spep_3 + 178, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 20, SE020, 79 );
SE021 = playSeVer2( spep_3 + 20, 1213, "",spep_3 + 178, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 20, SE021, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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
spep_4 = spep_3 + 72;


-------------------------------------------------
-- 敵に迫る気弾〜気弾ヒット	
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 70, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 70, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 70, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 70 -1, base_4f, 255);
setEffAlphaKey( spep_4 + 70, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05br, 0x80, -1, 0, 0, 0); -- ef_005_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 70, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 70, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 70, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 70 -1, base_4b, 255);
setEffAlphaKey( spep_4 + 70, base_4b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 70, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 40, 1, 108 );

setMoveKey( spep_4 -2 + 2, 1, 190.4, 193.6 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 203.6, 174.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 205.8, 186.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 174.1, 156.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 174.5, 176.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 176.8, 154 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 156.3, 161.8 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 163.7, 160.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 153.3, 135.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 139.8, 146.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 153.4, 127.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 156.1, 140.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 124.8, 110.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 125.5, 130.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 119.5, 89.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 93.5, 84.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 98.7, 74.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 89.1, 46.9 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 79.5, 60.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 82.5, 193.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 154.3, 98.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 42.1, 97.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 160.9, 203.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 163.7, 103.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 77.5, 189.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 159.3, 187.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 111.1, 155.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 131.9, 142.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 141.7, 162.7 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 117.5, 139.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 123.5, 164.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 131.5, 147.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 116.5, 160.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 129.5, 164.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 124.5, 144.5 , 0 );
setMoveKey( spep_4 + 70, 1, 124.5, 144.5 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 6, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 8, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 20, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 26, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 30, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 32, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 39, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 70, 1, 1.47, 1.47 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 40, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -0.8 );
setRotateKey( spep_4 -3 + 44, 1, -1.6 );
setRotateKey( spep_4 -3 + 46, 1, -2.5 );
setRotateKey( spep_4 -3 + 48, 1, -3.3 );
setRotateKey( spep_4 -3 + 50, 1, -4.1 );
setRotateKey( spep_4 -3 + 52, 1, -4.9 );
setRotateKey( spep_4 -3 + 54, 1, -5.8 );
setRotateKey( spep_4 -3 + 56, 1, -6.6 );
setRotateKey( spep_4 -3 + 58, 1, -7.4 );
setRotateKey( spep_4 -3 + 60, 1, -8.2 );
setRotateKey( spep_4 + 70, 1, -8.2 );

-- ** 音 ** --
--かめはめ波迫る
SE022 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE023 = playSeVer2( spep_4 + 38, 1011, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 228, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, -1.0, 1.0);
setEffScaleKey( spep_5 + 228, base_5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 228, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 228, base_5, 255);

-- ** 音 ** --
--爆発前予兆
SE024 = playSeVer2( spep_5 + 0, 1157, "", 0, 0, 0, 0.5);

--爆発
SE025 = playSeVer2( spep_5 + 30, 1069, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_5 + 54, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 100, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 108); -- ダメージ表示フレーム
endPhase( spep_5 + 228 -4); -- 終了フレーム


end