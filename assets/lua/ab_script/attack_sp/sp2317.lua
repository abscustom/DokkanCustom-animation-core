--1023620:LR_孫悟空(界王拳)_必殺技：界王拳アタック
--sp_effect_b1_00187
--sp2317

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
SP_01 = 159108; --手のアップから飛びかかるまで(前)_ef_001
SP_02 = 159110; --手のアップから飛びかかるまで(奥)_ef_002
SP_03 = 159112; --殴るからフィニッシュまで(前)_ef_003
SP_04 = 159114; --殴るからフィニッシュまで(奥)_ef_004

--エフェクト(敵)
SP_05 = 159109; --手のアップから飛びかかるまで_敵側(前)_ef_001r
SP_06 = 159111; --手のアップから飛びかかるまで_敵側(奥)_ef_002r
SP_07 = 159113; --殴るからフィニッシュまで_敵側(前)_ef_003r
SP_08 = 159115; --殴るからフィニッシュまで_敵側(奥)_ef_004r


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
-- 手のアップから飛びかかるまで
-------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --手のアップから飛びかかるまで ef_001
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 448 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 448 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 448 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 448 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 448 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --手のアップから飛びかかるまで ef_002
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 448 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 448 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 448 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 448 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 448 -4, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 46;

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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 -3 + 242, 1, 1 );
setDisp( spep_1 -3 + 324, 1, 0 );

changeAnime( spep_1 -3 + 242, 1, 118 );

setMoveKey( spep_1 -3 + 242, 1, 496.4, 144 , 0 );
setMoveKey( spep_1 -3 + 243, 1, 496.4, 144 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 245, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 194.4, 95.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 193.5, 95.1 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 192.5, 95 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 191.4, 94.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 190.2, 94.6 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 188.9, 94.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 187.6, 94.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 186.1, 93.9 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 184.5, 93.6 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 182.9, 93.4 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 181.1, 93.1 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 179.2, 92.8 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 177.2, 92.5 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 176, 92.3 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 174.8, 92.1 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 173.6, 91.9 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 172.5, 91.8 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 171.4, 91.6 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 170.4, 91.4 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 169.3, 91.2 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 168.3, 91.1 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 167.4, 90.9 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 165.5, 90.6 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 164.7, 90.5 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 163.8, 90.3 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 163, 90.2 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 162.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 161.5, 90 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 160.8, 89.8 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 160.1, 89.7 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 159.5, 89.6 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 158.9, 89.5 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 158.3, 89.4 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 157.7, 89.3 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 157.2, 89.3 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 156.7, 89.2 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 156.3, 89.1 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 155.8, 89 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 155.8, 89 , 0 );

setScaleKey( spep_1 -3 + 242, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 243, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 244, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 245, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 250, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 252, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 254, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 256, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 258, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 260, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 262, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 264, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 266, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 268, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 270, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 272, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 274, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 276, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 278, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 282, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 284, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 286, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 288, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 292, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 294, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 298, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 300, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 304, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 306, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 312, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 314, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 322, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 324, 1, 1.49, 1.49 );

setRotateKey( spep_1 -3 + 242, 1, -1.2 );
setRotateKey( spep_1 -4 + 324, 1, -1.2 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 452, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 76 );
SE002 = playSeVer2( spep_1 + 0, 1181, "",spep_1 + 452, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE002, 309 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 46, 1018, "", 0, 0, 0, -1);

--オーラ吹き出す
SE004 = playSeVer2( spep_1 + 146, 1175, "", 0, 28, 0, 0.5);
setStartTimeMs( SE004,  1233 );
SE005 = playSeVer2( spep_1 + 144, 1027, "", 0, 14, 0, -1);
SE006 = playSeVer2( spep_1 + 144, 1116, "",spep_1 + 184, 0, 16, -1);
SE007 = playSeVer2( spep_1 + 144, 1164, "",spep_1 + 450, 0, 4, -1);
SE008 = playSeVer2( spep_1 + 144, 1035, "",spep_1 + 220, 0, 40, -1);
setPitch( spep_1 + 144, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--悟空奥に
SE009 = playSeVer2( spep_1 + 226, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE009,  283 );
SE010 = playSeVer2( spep_1 + 224, 1258, "", spep_1 + 376, 24, 10, -1);
setSeVolumeByWorkId( spep_1 + 224, SE010, 60 );

--目光る
SE011 = playSeVer2( spep_1 + 316, 1303, "",spep_1 + 410, 10, 50, -1);
setSeVolumeByWorkId( spep_1 + 316, SE011, 58 );
setStartTimeMs( SE011,  467 );
SE012 = playSeVer2( spep_1 + 314, 1042, "", spep_1 + 376, 0, 10, -1);

--界王拳
SE013 = playSeVer2( spep_1 + 376, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 376, 1011, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_1 + 392, 1182, "",spep_1 + 450, 0, 6, -1);
SE016 = playSeVer2( spep_1 + 392, 1207, "",spep_1 + 450, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 392, SE016, 71 );
SE017 = playSeVer2( spep_1 + 392, 1117, "",spep_1 + 450, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 392, SE017, 119 );


-- ** 次の準備 ** --
spep_c = spep_1 + 448 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE0X1 = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE0X2 = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE0X3 = playSe( spep_c, SE_05);
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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- 殴るからフィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --殴るからフィニッシュまで ef_003
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 664 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 664 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 664 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 664 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 664 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --殴るからフィニッシュまで ef_004
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 664 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 664 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 664 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 664 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 664 -4, base2_b, 0);


-- ** 音 ** --
--振りかぶる
SE019 = playSeVer2( spep_2 + 2, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE019,  100 );
SE020 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 66, 0, 16, -1);
SE021 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 66, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE0X1, 0);
stopSe( SP_dodge - 12, SE0X2, 0);
stopSe( SP_dodge - 12, SE0X3, 0);
stopSe( SP_dodge - 12, SE019, 0);
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
-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 100, 1, 0 );
setDisp( spep_2 -3 + 104, 1, 1 );
setDisp( spep_2 -3 + 430, 1, 0 );
setDisp( spep_2 -3 + 464, 1, 1 );
setDisp( spep_2 -3 + 484, 1, 0 );

changeAnime( spep_2 -3 + 42, 1, 118 );
changeAnime( spep_2 -3 + 50, 1, 107 );
changeAnime( spep_2 -3 + 172, 1, 106 );
changeAnime( spep_2 -3 + 232, 1, 5 );
changeAnime( spep_2 -3 + 292, 1, 106 );
changeAnime( spep_2 -3 + 390, 1, 107 );

setMoveKey( spep_2 -3 + 42, 1, 551.8, -1341.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 461.6, -1166.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 371.4, -991.4 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 281.2, -816.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 70.4, -268.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 88.2, -300.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 135.8, -388.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 126.4, -384.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 106.3, -371.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 94.8, -299.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 60.1, -218.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 72.3, -191.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 58.9, -181.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 70.2, -186.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 53.8, -175 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 67.3, -151 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 55.1, -144.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 67.7, -153 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 52.6, -145.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 67.2, -124.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 61.4, -130.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 226.1, -329.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 371.8, -504.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 495.3, -649 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 593.3, -769.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 672.1, -862.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 725.7, -927.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 758.4, -966.5 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 768.9, -978.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -119.9, 309.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -119.8, 307.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -119.7, 299.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -119.3, 287.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -118.9, 270.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -118.4, 248.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -117.8, 222.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -116.9, 218.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -116, 213.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -115, 209.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -113.8, 205.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -112.5, 200.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -111.1, 199.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -109.6, 198.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -108, 198 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -106.2, 198 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -104.3, 198.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -97.6, 195.7 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -91, 193.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -84.4, 192 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -77.7, 190.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -71.1, 190.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -64.4, 190 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -57.8, 190.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -51.1, 191 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -44.5, 192.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -37.9, 193.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -31.2, 196 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -24.6, 198.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -17.9, 201.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -11.3, 205.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -4.7, 209.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 2, 213.8 , 0 );
setMoveKey( spep_2 -3 + 171, 1, 8.6, 218.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 27.1, 186.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 32.1, 165.1 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 37.2, 143.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 42.2, 122.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 47.3, 100.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 52.3, 79.4 , 0 );
setMoveKey( spep_2 -3 + 183, 1, 52.3, 79.4 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 124.5, 48 , 0 );
setMoveKey( spep_2 -3 + 185, 1, 124.5, 48 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 176.1, 64.6 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 176.1, 64.6 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 113.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 189, 1, 113.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 20.5, 165.5 , 0 );
setMoveKey( spep_2 -3 + 191, 1, 20.5, 165.5 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 33.9, 179 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 32.8, 180.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 19.2, 189.5 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 32.4, 172 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 15.9, 174 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 29.5, 187.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 28.6, 188.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 15.2, 197.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 28.7, 179.8 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 12.3, 181.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 26.1, 194.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 25.4, 195.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 20.3, 191.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 19.2, 196.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 23.2, 194.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 20.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 223, 1, 20.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 20.8, 197.7 , 0 );
setMoveKey( spep_2 -3 + 225, 1, 20.8, 197.7 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -27.7, 482.2 , 0 );
setMoveKey( spep_2 -3 + 227, 1, -27.7, 482.2 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -60.1, 672.6 , 0 );
setMoveKey( spep_2 -3 + 229, 1, -60.1, 672.6 , 0 );
setMoveKey( spep_2 -3 + 231, 1, -76.6, 769 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 82.3, -121.3 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 56.1, -41.9 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 5.6, 15.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 16.8, 31 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 6.9, 60.3 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 14.4, 77.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -2.6, 67.3 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 11.3, 66.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 3.9, 79.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 5.7, 73.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 5.7, 74 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 5.6, 74.5 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 5.5, 75 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 5.4, 75.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 5.4, 76 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 5.3, 76.4 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 5.2, 76.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 5.2, 77.3 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 5.1, 77.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 5.1, 78.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 5, 78.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 4.9, 78.8 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 4.9, 79.2 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 4.9, 79.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 4.8, 79.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 4.8, 80.1 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 4.7, 80.4 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 4.7, 80.6 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 4.7, 80.9 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 4.6, 81.1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -79.7, -550 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -78.7, -545.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -75.4, -530.7 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -70, -506.4 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -62.4, -472.6 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -52.7, -429 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -40.7, -375.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -26.7, -312.8 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -10.4, -240.2 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 8, -157.9 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 15, -133 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 22, -108.2 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 28.9, -83.3 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 35.9, -58.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 42.8, -33.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 42.9, -30.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 43, -27.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 43, -24.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 43.1, -21.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 43.2, -19.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 43.3, -16.4 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 43.3, -13.8 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 43.4, -11.3 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 43.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 43.5, -6.5 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 43.6, -4.2 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 43.6, -2 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 43.7, 0.2 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 43.7, 2.3 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 43.8, 4.3 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 43.8, 6.2 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 43.9, 8 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 43.9, 9.8 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 44, 11.5 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 44, 13.2 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 44, 14.7 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 44.1, 16.2 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 44.1, 17.6 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 44.1, 18.9 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 44.2, 20.2 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 44.2, 21.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 44.2, 22.5 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 44.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 44.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 44.3, 25.3 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 44.3, 26.1 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 44.3, 26.9 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 44.4, 27.5 , 0 );
setMoveKey( spep_2 -3 + 389, 1, 132.4, -88.9 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 489, -214.6 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 351.5, -103.2 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 198.4, 22.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 203.4, 8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 219.9, 15.5 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 222.8, 1.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 218.3, 6.3 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 223.4, -8.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 240, -1.1 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 243, -14.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 238.6, -10.5 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 243.9, -25.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 260.6, -18.1 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 263.7, -31.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 255.2, -24.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 332.9, -99.3 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 422.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 498.6, -227.3 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 647.2, -346.3 , 0 );
setMoveKey( spep_2 -3 + 429, 1, 803.8, -476.8 , 0 );
setMoveKey( spep_2 -3 + 464, 1, -309.9, 348 , 0 );
setMoveKey( spep_2 -3 + 466, 1, -186.3, 274 , 0 );
setMoveKey( spep_2 -3 + 467, 1, -186.3, 274 , 0 );
setMoveKey( spep_2 -3 + 468, 1, -13.5, 146.6 , 0 );
setMoveKey( spep_2 -3 + 469, 1, -13.5, 146.6 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 251.7, -35.2 , 0 );
setMoveKey( spep_2 -3 + 471, 1, 251.7, -35.2 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 243, 0 , 0 );
setMoveKey( spep_2 -3 + 473, 1, 243, 0 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 188.9, 58.2 , 0 );
setMoveKey( spep_2 -3 + 475, 1, 188.9, 58.2 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 252.8, 24.5 , 0 );
setMoveKey( spep_2 -3 + 477, 1, 252.8, 24.5 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 316.7, -9.2 , 0 );
setMoveKey( spep_2 -3 + 479, 1, 316.7, -9.2 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 380.6, -43 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 446.7, -78.5 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 49, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 54, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 56, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 64, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 68, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 74, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 76, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 80, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 84, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 86, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 88, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 90, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 92, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 94, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 96, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 99, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 104, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 118, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 120, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 130, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 132, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 136, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 140, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 142, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 144, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 146, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 148, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 152, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 154, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 156, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 158, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 160, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 162, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 164, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 168, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 171, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 172, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 182, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 183, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 184, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 185, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 186, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 187, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 188, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 189, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 190, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 191, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 192, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 194, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 196, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 198, 1, 3.13, 3.13 );
setScaleKey( spep_2 -3 + 200, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 202, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 204, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 206, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 208, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 210, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 212, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 214, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 216, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 220, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 222, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 231, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 232, 1, 6.49, 6.49 );
setScaleKey( spep_2 -3 + 234, 1, 4.81, 4.81 );
setScaleKey( spep_2 -3 + 236, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 238, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 240, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 242, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 244, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 246, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 248, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 250, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 252, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 254, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 256, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 258, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 260, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 262, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 264, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 266, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 268, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 270, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 272, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 274, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 276, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 278, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 280, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 282, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 284, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 286, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 288, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 291, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 292, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 294, 1, 3.56, 3.56 );
setScaleKey( spep_2 -3 + 296, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 298, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 300, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 302, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 304, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 306, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 308, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 310, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 312, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 314, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 316, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 318, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 320, 1, 2, 2 );
setScaleKey( spep_2 -3 + 322, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 326, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 328, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 332, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 334, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 340, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 342, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 350, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 352, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 360, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 362, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 374, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 376, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 386, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 389, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 390, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 392, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 394, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 396, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 398, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 400, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 402, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 404, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 406, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 408, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 410, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 412, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 414, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 416, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 418, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 420, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 422, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 424, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 426, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 429, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 464, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 466, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 467, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 468, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 469, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 470, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 471, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 472, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 473, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 474, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 484, 1, 0.2, 0.2 );

setRotateKey( spep_2 -3 + 42, 1, 15 );
setRotateKey( spep_2 -3 + 49, 1, 15 );
setRotateKey( spep_2 -3 + 50, 1, 7.1 );
setRotateKey( spep_2 -3 + 52, 1, 7.6 );
setRotateKey( spep_2 -3 + 54, 1, 8.2 );
setRotateKey( spep_2 -3 + 56, 1, 8.7 );
setRotateKey( spep_2 -3 + 58, 1, 9.2 );
setRotateKey( spep_2 -3 + 60, 1, 9.7 );
setRotateKey( spep_2 -3 + 62, 1, 10.2 );
setRotateKey( spep_2 -3 + 64, 1, 10.7 );
setRotateKey( spep_2 -3 + 66, 1, 11.2 );
setRotateKey( spep_2 -3 + 68, 1, 11.8 );
setRotateKey( spep_2 -3 + 70, 1, 12.3 );
setRotateKey( spep_2 -3 + 72, 1, 12.8 );
setRotateKey( spep_2 -3 + 74, 1, 13.3 );
setRotateKey( spep_2 -3 + 76, 1, 13.8 );
setRotateKey( spep_2 -3 + 78, 1, 14.3 );
setRotateKey( spep_2 -3 + 80, 1, 14.8 );
setRotateKey( spep_2 -3 + 82, 1, 15.3 );
setRotateKey( spep_2 -3 + 84, 1, 23.7 );
setRotateKey( spep_2 -3 + 86, 1, 31 );
setRotateKey( spep_2 -3 + 88, 1, 37.2 );
setRotateKey( spep_2 -3 + 90, 1, 42.2 );
setRotateKey( spep_2 -3 + 92, 1, 46.1 );
setRotateKey( spep_2 -3 + 94, 1, 48.9 );
setRotateKey( spep_2 -3 + 96, 1, 50.6 );
setRotateKey( spep_2 -3 + 99, 1, 51.2 );
setRotateKey( spep_2 -3 + 104, 1, 62.2 );
setRotateKey( spep_2 -3 + 114, 1, 62.2 );
setRotateKey( spep_2 -3 + 116, 1, 62.1 );
setRotateKey( spep_2 -3 + 126, 1, 62.1 );
setRotateKey( spep_2 -3 + 128, 1, 62 );
setRotateKey( spep_2 -3 + 134, 1, 62 );
setRotateKey( spep_2 -3 + 136, 1, 61.9 );
setRotateKey( spep_2 -3 + 138, 1, 61.8 );
setRotateKey( spep_2 -3 + 140, 1, 61.7 );
setRotateKey( spep_2 -3 + 142, 1, 61.6 );
setRotateKey( spep_2 -3 + 144, 1, 61.5 );
setRotateKey( spep_2 -3 + 146, 1, 61.3 );
setRotateKey( spep_2 -3 + 148, 1, 61.2 );
setRotateKey( spep_2 -3 + 150, 1, 61.1 );
setRotateKey( spep_2 -3 + 152, 1, 61 );
setRotateKey( spep_2 -3 + 154, 1, 60.9 );
setRotateKey( spep_2 -3 + 156, 1, 60.8 );
setRotateKey( spep_2 -3 + 158, 1, 60.7 );
setRotateKey( spep_2 -3 + 160, 1, 60.5 );
setRotateKey( spep_2 -3 + 162, 1, 60.4 );
setRotateKey( spep_2 -3 + 164, 1, 60.3 );
setRotateKey( spep_2 -3 + 166, 1, 60.2 );
setRotateKey( spep_2 -3 + 168, 1, 60.1 );
setRotateKey( spep_2 -3 + 171, 1, 60 );
setRotateKey( spep_2 -3 + 172, 1, -0.5 );
setRotateKey( spep_2 -3 + 231, 1, -0.5 );
setRotateKey( spep_2 -3 + 232, 1, 26.1 );
setRotateKey( spep_2 -3 + 234, 1, 26.1 );
setRotateKey( spep_2 -3 + 236, 1, 26.2 );
setRotateKey( spep_2 -3 + 291, 1, 26.2 );
setRotateKey( spep_2 -3 + 292, 1, -41.4 );
setRotateKey( spep_2 -3 + 294, 1, -41.4 );
setRotateKey( spep_2 -3 + 296, 1, -41.5 );
setRotateKey( spep_2 -3 + 298, 1, -41.7 );
setRotateKey( spep_2 -3 + 300, 1, -42 );
setRotateKey( spep_2 -3 + 302, 1, -42.3 );
setRotateKey( spep_2 -3 + 304, 1, -42.7 );
setRotateKey( spep_2 -3 + 306, 1, -43.2 );
setRotateKey( spep_2 -3 + 308, 1, -43.7 );
setRotateKey( spep_2 -3 + 310, 1, -44.3 );
setRotateKey( spep_2 -3 + 312, 1, -47.7 );
setRotateKey( spep_2 -3 + 314, 1, -51.1 );
setRotateKey( spep_2 -3 + 316, 1, -54.5 );
setRotateKey( spep_2 -3 + 318, 1, -57.9 );
setRotateKey( spep_2 -3 + 320, 1, -61.2 );
setRotateKey( spep_2 -3 + 322, 1, -61.7 );
setRotateKey( spep_2 -3 + 324, 1, -62.1 );
setRotateKey( spep_2 -3 + 326, 1, -62.6 );
setRotateKey( spep_2 -3 + 328, 1, -63 );
setRotateKey( spep_2 -3 + 330, 1, -63.4 );
setRotateKey( spep_2 -3 + 332, 1, -63.8 );
setRotateKey( spep_2 -3 + 334, 1, -64.2 );
setRotateKey( spep_2 -3 + 336, 1, -64.6 );
setRotateKey( spep_2 -3 + 338, 1, -64.9 );
setRotateKey( spep_2 -3 + 340, 1, -65.3 );
setRotateKey( spep_2 -3 + 342, 1, -65.6 );
setRotateKey( spep_2 -3 + 344, 1, -66 );
setRotateKey( spep_2 -3 + 346, 1, -66.3 );
setRotateKey( spep_2 -3 + 348, 1, -66.6 );
setRotateKey( spep_2 -3 + 350, 1, -66.9 );
setRotateKey( spep_2 -3 + 352, 1, -67.2 );
setRotateKey( spep_2 -3 + 354, 1, -67.4 );
setRotateKey( spep_2 -3 + 356, 1, -67.7 );
setRotateKey( spep_2 -3 + 358, 1, -68 );
setRotateKey( spep_2 -3 + 360, 1, -68.2 );
setRotateKey( spep_2 -3 + 362, 1, -68.4 );
setRotateKey( spep_2 -3 + 364, 1, -68.7 );
setRotateKey( spep_2 -3 + 366, 1, -68.9 );
setRotateKey( spep_2 -3 + 368, 1, -69.1 );
setRotateKey( spep_2 -3 + 370, 1, -69.3 );
setRotateKey( spep_2 -3 + 372, 1, -69.4 );
setRotateKey( spep_2 -3 + 374, 1, -69.6 );
setRotateKey( spep_2 -3 + 376, 1, -69.7 );
setRotateKey( spep_2 -3 + 378, 1, -69.9 );
setRotateKey( spep_2 -3 + 380, 1, -70 );
setRotateKey( spep_2 -3 + 382, 1, -70.1 );
setRotateKey( spep_2 -3 + 384, 1, -70.3 );
setRotateKey( spep_2 -3 + 386, 1, -70.3 );
setRotateKey( spep_2 -3 + 389, 1, -70.4 );
setRotateKey( spep_2 -3 + 390, 1, 41.1 );
setRotateKey( spep_2 -3 + 429, 1, 41.1 );
setRotateKey( spep_2 -3 + 464, 1, 26.1 );
setRotateKey( spep_2 -3 + 483, 1, 26.1 );
setRotateKey( spep_2 -3 + 484, 1, 14.9 );


-- ** 音 ** --
--界王拳パンチ
SE022 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 74, 0, 14, -1);
SE023 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE024, 100 );
SE025 = playSeVer2( spep_2 + 50, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE025, 93 );
SE026 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE026, 110 );

--下から回り込む
SE027 = playSeVer2( spep_2 + 116, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE027, 124 );
SE028 = playSeVer2( spep_2 + 122, 1117, "",spep_2 + 736, 0, 28, -1);
SE029 = playSeVer2( spep_2 + 126, 1277, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 130, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE030, 57 );

--界王拳蹴り上げ
SE031 = playSeVer2( spep_2 + 178, 1003, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 184, 1190, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE033, 93 );
SE034 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE034, 107 );

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 224, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE035, 61 );
SE036 = playSeVer2( spep_2 + 224, 1183, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 234, 1027, "", 0, 0, 0, -1);

--上から回り込む
SE038 = playSeVer2( spep_2 + 290, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE038, 165 );
setTimeStretch( SE038, 1.42, 30, 4 );
SE039 = playSeVer2( spep_2 + 290, 1019, "",spep_2 + 412, 0, 32, -1);
SE040 = playSeVer2( spep_2 + 290, 1278, "",spep_2 + 412, 0, 32, -1);

--界王拳キック
SE041 = playSeVer2( spep_2 + 382, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE041, 138 );
SE042 = playSeVer2( spep_2 + 386, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE042, 83 );
SE043 = playSeVer2( spep_2 + 386, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 3386, SE043, 90 );
SE044 = playSeVer2( spep_2 + 390, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE044, 84 );
SE045 = playSeVer2( spep_2 + 390, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE045, 82 );
SE046 = playSeVer2( spep_2 + 394, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE046, 54 );
setPitch( spep_2 + 394, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );

--岩激突１
SE047 = playSeVer2( spep_2 + 464, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE047, 146 );
setPitch( spep_2 + 464, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_2 + 466, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 466, 1033, "", 0, 0, 0, -1);

--岩激突２
SE050 = playSeVer2( spep_2 + 480, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 480, SE050, 143 );
setPitch( spep_2 + 480, SE050, -400 );
setTimeStretch( SE050, 0.73, 30, 4 );
SE051 = playSeVer2( spep_2 + 480, 1023, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 480, 1024, "", 0, 0, 0, -1);

--岩落下１
SE053 = playSeVer2( spep_2 + 576, 1025, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 576, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 576, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE055, 82 );

--岩落下２
SE056 = playSeVer2( spep_2 + 612, 1068, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 612, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 612, SE057, 172 );
setPitch( spep_2 + 612, SE057, -600 );
setTimeStretch( SE057, 0.6, 30, 4 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 580);
endPhase( spep_2 + 664 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 手のアップから飛びかかるまで
-------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_05, 0x100, -1, 0, 0, 0); --手のアップから飛びかかるまで_敵側(前) ef_001r
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 448 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 448 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 448 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 448 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 448 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0); --手のアップから飛びかかるまで_敵側(奥) ef_002r
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 448 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 448 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 448 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 448 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 448 -4, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 46;

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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 -3 + 242, 1, 1 );
setDisp( spep_1 -3 + 324, 1, 0 );

changeAnime( spep_1 -3 + 242, 1, 118 );

setMoveKey( spep_1 -3 + 242, 1, 496.4, 144 , 0 );
setMoveKey( spep_1 -3 + 243, 1, 496.4, 144 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 245, 1, 354.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 194.4, 95.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 193.5, 95.1 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 192.5, 95 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 191.4, 94.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 190.2, 94.6 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 188.9, 94.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 187.6, 94.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 186.1, 93.9 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 184.5, 93.6 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 182.9, 93.4 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 181.1, 93.1 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 179.2, 92.8 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 177.2, 92.5 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 176, 92.3 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 174.8, 92.1 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 173.6, 91.9 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 172.5, 91.8 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 171.4, 91.6 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 170.4, 91.4 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 169.3, 91.2 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 168.3, 91.1 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 167.4, 90.9 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 165.5, 90.6 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 164.7, 90.5 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 163.8, 90.3 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 163, 90.2 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 162.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 161.5, 90 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 160.8, 89.8 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 160.1, 89.7 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 159.5, 89.6 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 158.9, 89.5 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 158.3, 89.4 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 157.7, 89.3 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 157.2, 89.3 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 156.7, 89.2 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 156.3, 89.1 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 155.8, 89 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 155.8, 89 , 0 );

setScaleKey( spep_1 -3 + 242, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 243, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 244, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 245, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 250, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 252, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 254, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 256, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 258, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 260, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 262, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 264, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 266, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 268, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 270, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 272, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 274, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 276, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 278, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 282, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 284, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 286, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 288, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 292, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 294, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 298, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 300, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 304, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 306, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 312, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 314, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 322, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 324, 1, 1.49, 1.49 );

setRotateKey( spep_1 -3 + 242, 1, -1.2 );
setRotateKey( spep_1 -4 + 324, 1, -1.2 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 452, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 76 );
SE002 = playSeVer2( spep_1 + 0, 1181, "",spep_1 + 452, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE002, 309 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 46, 1018, "", 0, 0, 0, -1);

--オーラ吹き出す
SE004 = playSeVer2( spep_1 + 146, 1175, "", 0, 28, 0, 0.5);
setStartTimeMs( SE004,  1233 );
SE005 = playSeVer2( spep_1 + 144, 1027, "", 0, 14, 0, -1);
SE006 = playSeVer2( spep_1 + 144, 1116, "",spep_1 + 184, 0, 16, -1);
SE007 = playSeVer2( spep_1 + 144, 1164, "",spep_1 + 450, 0, 4, -1);
SE008 = playSeVer2( spep_1 + 144, 1035, "",spep_1 + 220, 0, 40, -1);
setPitch( spep_1 + 144, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--悟空奥に
SE009 = playSeVer2( spep_1 + 226, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE009,  283 );
SE010 = playSeVer2( spep_1 + 224, 1258, "", spep_1 + 376, 24, 10, -1);
setSeVolumeByWorkId( spep_1 + 224, SE010, 60 );

--目光る
SE011 = playSeVer2( spep_1 + 316, 1303, "",spep_1 + 410, 10, 50, -1);
setSeVolumeByWorkId( spep_1 + 316, SE011, 58 );
setStartTimeMs( SE011,  467 );
SE012 = playSeVer2( spep_1 + 314, 1042, "", spep_1 + 376, 0, 10, -1);

--界王拳
SE013 = playSeVer2( spep_1 + 376, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 376, 1011, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_1 + 392, 1182, "",spep_1 + 450, 0, 6, -1);
SE016 = playSeVer2( spep_1 + 392, 1207, "",spep_1 + 450, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 392, SE016, 71 );
SE017 = playSeVer2( spep_1 + 392, 1117, "",spep_1 + 450, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 392, SE017, 119 );


-- ** 次の準備 ** --
spep_c = spep_1 + 448 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
SE0X4 = playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- 殴るからフィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_07, 0x100, -1, 0, 0, 0); --殴るからフィニッシュまで_敵側(前) ef_003r
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 664 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 664 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 664 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 664 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 664 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_08, 0x80, -1, 0, 0, 0); --殴るからフィニッシュまで_敵側(奥) ef_004r
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 664 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 664 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 664 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 664 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 664 -4, base2_b, 0);


-- ** 音 ** --
--振りかぶる
SE019 = playSeVer2( spep_2 + 2, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE019,  100 );
SE020 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 66, 0, 16, -1);
SE021 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 66, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE0X4, 0);
stopSe( SP_dodge - 12, SE019, 0);
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
-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 100, 1, 0 );
setDisp( spep_2 -3 + 104, 1, 1 );
setDisp( spep_2 -3 + 430, 1, 0 );
setDisp( spep_2 -3 + 464, 1, 1 );
setDisp( spep_2 -3 + 484, 1, 0 );

changeAnime( spep_2 -3 + 42, 1, 118 );
changeAnime( spep_2 -3 + 50, 1, 107 );
changeAnime( spep_2 -3 + 172, 1, 106 );
changeAnime( spep_2 -3 + 232, 1, 5 );
changeAnime( spep_2 -3 + 292, 1, 106 );
changeAnime( spep_2 -3 + 390, 1, 107 );

setMoveKey( spep_2 -3 + 42, 1, 551.8, -1341.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 461.6, -1166.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 371.4, -991.4 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 281.2, -816.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 70.4, -268.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 88.2, -300.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 135.8, -388.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 126.4, -384.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 106.3, -371.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 94.8, -299.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 60.1, -218.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 72.3, -191.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 58.9, -181.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 70.2, -186.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 53.8, -175 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 67.3, -151 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 55.1, -144.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 67.7, -153 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 52.6, -145.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 67.2, -124.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 61.4, -130.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 226.1, -329.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 371.8, -504.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 495.3, -649 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 593.3, -769.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 672.1, -862.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 725.7, -927.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 758.4, -966.5 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 768.9, -978.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -119.9, 309.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -119.8, 307.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -119.7, 299.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -119.3, 287.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -118.9, 270.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -118.4, 248.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -117.8, 222.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -116.9, 218.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -116, 213.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -115, 209.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -113.8, 205.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -112.5, 200.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -111.1, 199.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -109.6, 198.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -108, 198 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -106.2, 198 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -104.3, 198.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -97.6, 195.7 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -91, 193.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -84.4, 192 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -77.7, 190.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -71.1, 190.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -64.4, 190 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -57.8, 190.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -51.1, 191 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -44.5, 192.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -37.9, 193.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -31.2, 196 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -24.6, 198.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -17.9, 201.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -11.3, 205.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -4.7, 209.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 2, 213.8 , 0 );
setMoveKey( spep_2 -3 + 171, 1, 8.6, 218.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 27.1, 186.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 32.1, 165.1 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 37.2, 143.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 42.2, 122.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 47.3, 100.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 52.3, 79.4 , 0 );
setMoveKey( spep_2 -3 + 183, 1, 52.3, 79.4 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 124.5, 48 , 0 );
setMoveKey( spep_2 -3 + 185, 1, 124.5, 48 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 176.1, 64.6 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 176.1, 64.6 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 113.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 189, 1, 113.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 20.5, 165.5 , 0 );
setMoveKey( spep_2 -3 + 191, 1, 20.5, 165.5 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 33.9, 179 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 32.8, 180.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 19.2, 189.5 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 32.4, 172 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 15.9, 174 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 29.5, 187.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 28.6, 188.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 15.2, 197.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 28.7, 179.8 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 12.3, 181.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 26.1, 194.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 25.4, 195.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 20.3, 191.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 19.2, 196.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 23.2, 194.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 20.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 223, 1, 20.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 20.8, 197.7 , 0 );
setMoveKey( spep_2 -3 + 225, 1, 20.8, 197.7 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -27.7, 482.2 , 0 );
setMoveKey( spep_2 -3 + 227, 1, -27.7, 482.2 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -60.1, 672.6 , 0 );
setMoveKey( spep_2 -3 + 229, 1, -60.1, 672.6 , 0 );
setMoveKey( spep_2 -3 + 231, 1, -76.6, 769 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 82.3, -121.3 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 56.1, -41.9 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 5.6, 15.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 16.8, 31 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 6.9, 60.3 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 14.4, 77.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -2.6, 67.3 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 11.3, 66.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 3.9, 79.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 5.7, 73.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 5.7, 74 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 5.6, 74.5 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 5.5, 75 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 5.4, 75.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 5.4, 76 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 5.3, 76.4 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 5.2, 76.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 5.2, 77.3 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 5.1, 77.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 5.1, 78.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 5, 78.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 4.9, 78.8 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 4.9, 79.2 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 4.9, 79.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 4.8, 79.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 4.8, 80.1 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 4.7, 80.4 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 4.7, 80.6 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 4.7, 80.9 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 4.6, 81.1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -79.7, -550 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -78.7, -545.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -75.4, -530.7 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -70, -506.4 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -62.4, -472.6 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -52.7, -429 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -40.7, -375.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -26.7, -312.8 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -10.4, -240.2 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 8, -157.9 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 15, -133 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 22, -108.2 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 28.9, -83.3 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 35.9, -58.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 42.8, -33.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 42.9, -30.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 43, -27.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 43, -24.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 43.1, -21.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 43.2, -19.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 43.3, -16.4 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 43.3, -13.8 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 43.4, -11.3 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 43.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 43.5, -6.5 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 43.6, -4.2 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 43.6, -2 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 43.7, 0.2 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 43.7, 2.3 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 43.8, 4.3 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 43.8, 6.2 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 43.9, 8 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 43.9, 9.8 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 44, 11.5 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 44, 13.2 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 44, 14.7 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 44.1, 16.2 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 44.1, 17.6 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 44.1, 18.9 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 44.2, 20.2 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 44.2, 21.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 44.2, 22.5 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 44.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 44.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 44.3, 25.3 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 44.3, 26.1 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 44.3, 26.9 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 44.4, 27.5 , 0 );
setMoveKey( spep_2 -3 + 389, 1, 132.4, -88.9 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 489, -214.6 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 351.5, -103.2 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 198.4, 22.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 203.4, 8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 219.9, 15.5 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 222.8, 1.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 218.3, 6.3 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 223.4, -8.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 240, -1.1 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 243, -14.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 238.6, -10.5 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 243.9, -25.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 260.6, -18.1 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 263.7, -31.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 255.2, -24.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 332.9, -99.3 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 422.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 498.6, -227.3 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 647.2, -346.3 , 0 );
setMoveKey( spep_2 -3 + 429, 1, 803.8, -476.8 , 0 );
setMoveKey( spep_2 -3 + 464, 1, -309.9, 348 , 0 );
setMoveKey( spep_2 -3 + 466, 1, -186.3, 274 , 0 );
setMoveKey( spep_2 -3 + 467, 1, -186.3, 274 , 0 );
setMoveKey( spep_2 -3 + 468, 1, -13.5, 146.6 , 0 );
setMoveKey( spep_2 -3 + 469, 1, -13.5, 146.6 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 251.7, -35.2 , 0 );
setMoveKey( spep_2 -3 + 471, 1, 251.7, -35.2 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 243, 0 , 0 );
setMoveKey( spep_2 -3 + 473, 1, 243, 0 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 188.9, 58.2 , 0 );
setMoveKey( spep_2 -3 + 475, 1, 188.9, 58.2 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 252.8, 24.5 , 0 );
setMoveKey( spep_2 -3 + 477, 1, 252.8, 24.5 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 316.7, -9.2 , 0 );
setMoveKey( spep_2 -3 + 479, 1, 316.7, -9.2 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 380.6, -43 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 446.7, -78.5 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 49, 1, 5.37, 5.37 );
setScaleKey( spep_2 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 54, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 56, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 64, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 68, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 74, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 76, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 80, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 84, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 86, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 88, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 90, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 92, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 94, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 96, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 99, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 104, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 118, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 120, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 130, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 132, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 136, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 140, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 142, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 144, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 146, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 148, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 152, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 154, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 156, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 158, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 160, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 162, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 164, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 168, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 171, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 172, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 182, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 183, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 184, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 185, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 186, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 187, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 188, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 189, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 190, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 191, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 192, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 194, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 196, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 198, 1, 3.13, 3.13 );
setScaleKey( spep_2 -3 + 200, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 202, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 204, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 206, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 208, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 210, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 212, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 214, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 216, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 220, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 222, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 231, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 232, 1, 6.49, 6.49 );
setScaleKey( spep_2 -3 + 234, 1, 4.81, 4.81 );
setScaleKey( spep_2 -3 + 236, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 238, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 240, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 242, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 244, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 246, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 248, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 250, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 252, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 254, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 256, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 258, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 260, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 262, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 264, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 266, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 268, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 270, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 272, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 274, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 276, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 278, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 280, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 282, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 284, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 286, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 288, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 291, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 292, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 294, 1, 3.56, 3.56 );
setScaleKey( spep_2 -3 + 296, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 298, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 300, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 302, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 304, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 306, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 308, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 310, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 312, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 314, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 316, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 318, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 320, 1, 2, 2 );
setScaleKey( spep_2 -3 + 322, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 326, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 328, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 332, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 334, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 340, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 342, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 350, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 352, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 360, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 362, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 374, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 376, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 386, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 389, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 390, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 392, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 394, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 396, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 398, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 400, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 402, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 404, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 406, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 408, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 410, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 412, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 414, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 416, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 418, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 420, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 422, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 424, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 426, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 429, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 464, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 466, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 467, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 468, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 469, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 470, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 471, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 472, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 473, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 474, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 484, 1, 0.2, 0.2 );

setRotateKey( spep_2 -3 + 42, 1, 15 );
setRotateKey( spep_2 -3 + 49, 1, 15 );
setRotateKey( spep_2 -3 + 50, 1, 7.1 );
setRotateKey( spep_2 -3 + 52, 1, 7.6 );
setRotateKey( spep_2 -3 + 54, 1, 8.2 );
setRotateKey( spep_2 -3 + 56, 1, 8.7 );
setRotateKey( spep_2 -3 + 58, 1, 9.2 );
setRotateKey( spep_2 -3 + 60, 1, 9.7 );
setRotateKey( spep_2 -3 + 62, 1, 10.2 );
setRotateKey( spep_2 -3 + 64, 1, 10.7 );
setRotateKey( spep_2 -3 + 66, 1, 11.2 );
setRotateKey( spep_2 -3 + 68, 1, 11.8 );
setRotateKey( spep_2 -3 + 70, 1, 12.3 );
setRotateKey( spep_2 -3 + 72, 1, 12.8 );
setRotateKey( spep_2 -3 + 74, 1, 13.3 );
setRotateKey( spep_2 -3 + 76, 1, 13.8 );
setRotateKey( spep_2 -3 + 78, 1, 14.3 );
setRotateKey( spep_2 -3 + 80, 1, 14.8 );
setRotateKey( spep_2 -3 + 82, 1, 15.3 );
setRotateKey( spep_2 -3 + 84, 1, 23.7 );
setRotateKey( spep_2 -3 + 86, 1, 31 );
setRotateKey( spep_2 -3 + 88, 1, 37.2 );
setRotateKey( spep_2 -3 + 90, 1, 42.2 );
setRotateKey( spep_2 -3 + 92, 1, 46.1 );
setRotateKey( spep_2 -3 + 94, 1, 48.9 );
setRotateKey( spep_2 -3 + 96, 1, 50.6 );
setRotateKey( spep_2 -3 + 99, 1, 51.2 );
setRotateKey( spep_2 -3 + 104, 1, 62.2 );
setRotateKey( spep_2 -3 + 114, 1, 62.2 );
setRotateKey( spep_2 -3 + 116, 1, 62.1 );
setRotateKey( spep_2 -3 + 126, 1, 62.1 );
setRotateKey( spep_2 -3 + 128, 1, 62 );
setRotateKey( spep_2 -3 + 134, 1, 62 );
setRotateKey( spep_2 -3 + 136, 1, 61.9 );
setRotateKey( spep_2 -3 + 138, 1, 61.8 );
setRotateKey( spep_2 -3 + 140, 1, 61.7 );
setRotateKey( spep_2 -3 + 142, 1, 61.6 );
setRotateKey( spep_2 -3 + 144, 1, 61.5 );
setRotateKey( spep_2 -3 + 146, 1, 61.3 );
setRotateKey( spep_2 -3 + 148, 1, 61.2 );
setRotateKey( spep_2 -3 + 150, 1, 61.1 );
setRotateKey( spep_2 -3 + 152, 1, 61 );
setRotateKey( spep_2 -3 + 154, 1, 60.9 );
setRotateKey( spep_2 -3 + 156, 1, 60.8 );
setRotateKey( spep_2 -3 + 158, 1, 60.7 );
setRotateKey( spep_2 -3 + 160, 1, 60.5 );
setRotateKey( spep_2 -3 + 162, 1, 60.4 );
setRotateKey( spep_2 -3 + 164, 1, 60.3 );
setRotateKey( spep_2 -3 + 166, 1, 60.2 );
setRotateKey( spep_2 -3 + 168, 1, 60.1 );
setRotateKey( spep_2 -3 + 171, 1, 60 );
setRotateKey( spep_2 -3 + 172, 1, -0.5 );
setRotateKey( spep_2 -3 + 231, 1, -0.5 );
setRotateKey( spep_2 -3 + 232, 1, 26.1 );
setRotateKey( spep_2 -3 + 234, 1, 26.1 );
setRotateKey( spep_2 -3 + 236, 1, 26.2 );
setRotateKey( spep_2 -3 + 291, 1, 26.2 );
setRotateKey( spep_2 -3 + 292, 1, -41.4 );
setRotateKey( spep_2 -3 + 294, 1, -41.4 );
setRotateKey( spep_2 -3 + 296, 1, -41.5 );
setRotateKey( spep_2 -3 + 298, 1, -41.7 );
setRotateKey( spep_2 -3 + 300, 1, -42 );
setRotateKey( spep_2 -3 + 302, 1, -42.3 );
setRotateKey( spep_2 -3 + 304, 1, -42.7 );
setRotateKey( spep_2 -3 + 306, 1, -43.2 );
setRotateKey( spep_2 -3 + 308, 1, -43.7 );
setRotateKey( spep_2 -3 + 310, 1, -44.3 );
setRotateKey( spep_2 -3 + 312, 1, -47.7 );
setRotateKey( spep_2 -3 + 314, 1, -51.1 );
setRotateKey( spep_2 -3 + 316, 1, -54.5 );
setRotateKey( spep_2 -3 + 318, 1, -57.9 );
setRotateKey( spep_2 -3 + 320, 1, -61.2 );
setRotateKey( spep_2 -3 + 322, 1, -61.7 );
setRotateKey( spep_2 -3 + 324, 1, -62.1 );
setRotateKey( spep_2 -3 + 326, 1, -62.6 );
setRotateKey( spep_2 -3 + 328, 1, -63 );
setRotateKey( spep_2 -3 + 330, 1, -63.4 );
setRotateKey( spep_2 -3 + 332, 1, -63.8 );
setRotateKey( spep_2 -3 + 334, 1, -64.2 );
setRotateKey( spep_2 -3 + 336, 1, -64.6 );
setRotateKey( spep_2 -3 + 338, 1, -64.9 );
setRotateKey( spep_2 -3 + 340, 1, -65.3 );
setRotateKey( spep_2 -3 + 342, 1, -65.6 );
setRotateKey( spep_2 -3 + 344, 1, -66 );
setRotateKey( spep_2 -3 + 346, 1, -66.3 );
setRotateKey( spep_2 -3 + 348, 1, -66.6 );
setRotateKey( spep_2 -3 + 350, 1, -66.9 );
setRotateKey( spep_2 -3 + 352, 1, -67.2 );
setRotateKey( spep_2 -3 + 354, 1, -67.4 );
setRotateKey( spep_2 -3 + 356, 1, -67.7 );
setRotateKey( spep_2 -3 + 358, 1, -68 );
setRotateKey( spep_2 -3 + 360, 1, -68.2 );
setRotateKey( spep_2 -3 + 362, 1, -68.4 );
setRotateKey( spep_2 -3 + 364, 1, -68.7 );
setRotateKey( spep_2 -3 + 366, 1, -68.9 );
setRotateKey( spep_2 -3 + 368, 1, -69.1 );
setRotateKey( spep_2 -3 + 370, 1, -69.3 );
setRotateKey( spep_2 -3 + 372, 1, -69.4 );
setRotateKey( spep_2 -3 + 374, 1, -69.6 );
setRotateKey( spep_2 -3 + 376, 1, -69.7 );
setRotateKey( spep_2 -3 + 378, 1, -69.9 );
setRotateKey( spep_2 -3 + 380, 1, -70 );
setRotateKey( spep_2 -3 + 382, 1, -70.1 );
setRotateKey( spep_2 -3 + 384, 1, -70.3 );
setRotateKey( spep_2 -3 + 386, 1, -70.3 );
setRotateKey( spep_2 -3 + 389, 1, -70.4 );
setRotateKey( spep_2 -3 + 390, 1, 41.1 );
setRotateKey( spep_2 -3 + 429, 1, 41.1 );
setRotateKey( spep_2 -3 + 464, 1, 26.1 );
setRotateKey( spep_2 -3 + 483, 1, 26.1 );
setRotateKey( spep_2 -3 + 484, 1, 14.9 );


-- ** 音 ** --
--界王拳パンチ
SE022 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 74, 0, 14, -1);
SE023 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE024, 100 );
SE025 = playSeVer2( spep_2 + 50, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE025, 93 );
SE026 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE026, 110 );

--下から回り込む
SE027 = playSeVer2( spep_2 + 116, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE027, 124 );
SE028 = playSeVer2( spep_2 + 122, 1117, "",spep_2 + 736, 0, 28, -1);
SE029 = playSeVer2( spep_2 + 126, 1277, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 130, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE030, 57 );

--界王拳蹴り上げ
SE031 = playSeVer2( spep_2 + 178, 1003, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 184, 1190, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE033, 93 );
SE034 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE034, 107 );

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 224, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE035, 61 );
SE036 = playSeVer2( spep_2 + 224, 1183, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 234, 1027, "", 0, 0, 0, -1);

--上から回り込む
SE038 = playSeVer2( spep_2 + 290, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE038, 165 );
setTimeStretch( SE038, 1.42, 30, 4 );
SE039 = playSeVer2( spep_2 + 290, 1019, "",spep_2 + 412, 0, 32, -1);
SE040 = playSeVer2( spep_2 + 290, 1278, "",spep_2 + 412, 0, 32, -1);

--界王拳キック
SE041 = playSeVer2( spep_2 + 382, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE041, 138 );
SE042 = playSeVer2( spep_2 + 386, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE042, 83 );
SE043 = playSeVer2( spep_2 + 386, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 3386, SE043, 90 );
SE044 = playSeVer2( spep_2 + 390, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE044, 84 );
SE045 = playSeVer2( spep_2 + 390, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE045, 82 );
SE046 = playSeVer2( spep_2 + 394, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE046, 54 );
setPitch( spep_2 + 394, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );

--岩激突１
SE047 = playSeVer2( spep_2 + 464, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE047, 146 );
setPitch( spep_2 + 464, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_2 + 466, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 466, 1033, "", 0, 0, 0, -1);

--岩激突２
SE050 = playSeVer2( spep_2 + 480, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 480, SE050, 143 );
setPitch( spep_2 + 480, SE050, -400 );
setTimeStretch( SE050, 0.73, 30, 4 );
SE051 = playSeVer2( spep_2 + 480, 1023, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 480, 1024, "", 0, 0, 0, -1);

--岩落下１
SE053 = playSeVer2( spep_2 + 576, 1025, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 576, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 576, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 576, SE055, 82 );

--岩落下２
SE056 = playSeVer2( spep_2 + 612, 1068, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 612, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 612, SE057, 172 );
setPitch( spep_2 + 612, SE057, -600 );
setTimeStretch( SE057, 0.6, 30, 4 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 580);
endPhase( spep_2 + 664 -8);

end