--1023520:LR_ベジータ(大猿)_超爆発波
--sp_effect_a7_00048
--sp2313

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
SP_01 = 158959; --対峙_手前 ef_001a  キャラ、背景 反転用
SP_02 = 158961; --対峙_奥 ef_001b  背景
SP_03 = 158962; --見下ろし ef_002  キャラ、背景
SP_04 = 158963; --気溜め1 ef_003  キャラ、エフェクト、背景
SP_05 = 158964; --気溜め2 ef_004  キャラ、エフェクト、背景、描き文字
SP_06 = 158966; --岩崩壊 ef_005  キャラ、エフェクト、背景、描き文字
SP_07 = 158967; --風放出_手前 ef_006a  エフェクト、描き文字
SP_08 = 158969; --風放出_奥 ef_006b  キャラ、エフェクト、背景
SP_09 = 158971; --気放出1 ef_007  キャラ、エフェクト、背景、描き文字
SP_10 = 158973; --気放出2 ef_008  キャラ、エフェクト、背景、描き文字
SP_11 = 158975; --爆風_手前 ef_009a  エフェクト、描き文字
SP_12 = 158977; --爆風_奥 ef_009b  エフェクト、背景
SP_13 = 158978; --爆発1 ef_010  エフェクト、背景、描き文字
SP_14 = 158979; --敵吹っ飛び_手前 ef_011a  エフェクト
SP_15 = 158980; --敵吹っ飛び_奥 ef_011b  エフェクト、背景
SP_16 = 158981; --爆発2 ef_012a  エフェクト、背景
SP_17 = 158982; --爆発2 ef_012b  エフェクト、背景 全体攻撃用（画ブレ回数を増やしています）
SP_18 = 158983; --爆炎の中のベジータ ef_013  キャラ、エフェクト、背景

--エフェクト(敵)
SP_19 = 158960; --対峙_手前 ef_001a_r  キャラ、背景
SP_20 = 158965; --気溜め2 ef_004_r  キャラ、エフェクト、背景、描き文字 反転用
SP_21 = 158968; --風放出_手前 ef_006a_r  エフェクト、描き文字 反転用
SP_22 = 158970; --風放出_奥 ef_006b_r  キャラ、エフェクト、背景 反転用
SP_23 = 158972; --気放出1 ef_007_r  キャラ、エフェクト、背景、描き文字 反転用
SP_24 = 158974; --気放出2 ef_008_r  キャラ、エフェクト、背景、描き文字 反転用
SP_25 = 158976; --爆風_手前 ef_009a_r  エフェクト、描き文字 反転用
SP_26 = 158984; --爆炎の中のベジータ ef_013_r  キャラ、エフェクト、背景 反転用


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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 対峙
-------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --対峙_手前 ef_001a  キャラ、背景 反転用
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 68 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 68 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 68 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --対峙_奥 ef_001b  背景
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 68 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 68 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 68 -4, base1_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 68 -4, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

-- setMoveKey( spep_1 -3 + 0, 1, 186.9, 98.9 , 0 );
setMoveKey( spep_1 +0, 1, 185.6, 98.9 , 0 );
setMoveKey( spep_1 +1, 1, 184.2, 98.9 , 0 );
setMoveKey( spep_1 +2, 1, 183.5, 98.9 , 0 );
setMoveKey( spep_1 +3, 1, 182.9, 98.9 , 0 );
setMoveKey( spep_1 +4, 1, 182.2, 98.9 , 0 );
setMoveKey( spep_1 +5, 1, 181.5, 98.9 , 0 );
setMoveKey( spep_1 +6, 1, 180.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 180.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 178.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 177.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 176.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 174.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 173.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 172.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 170.7, 98.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 169.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 168, 98.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 166.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 165.3, 98.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 163.9, 98.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 162.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 161.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 159.9, 98.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 158.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 157.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 155.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 154.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 153.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 151.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 150.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 149.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 147.7, 98.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 146.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 145, 98.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 143.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 142.3, 98.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 140.9, 98.9 , 0 );

setScaleKey( spep_1 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 68, 1, 0.6, 0.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 68, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1); --入り

SE002 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 230, 0, 36, -1); --環境音
setSeVolumeByWorkId( spep_1 + 0, SE002, 32 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 68 -4;

-------------------------------------------------
-- 見下ろし
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --見下ろし ef_002  キャラ、背景
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 100 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 100 -5, base2, 255);
setEffAlphaKey( spep_2 + 100 -4, base2, 0);


-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 16, 906, 100 -4 -16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 16, shuchusen_2, 000, 20 );
setEffMoveKey( spep_2 + 16, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100 -4, shuchusen_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 16, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 100 -4, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 16, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 100 -4, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 16, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 100 -4, shuchusen_2, 255 );


-- ** 白フェード ** --
entryFade( spep_2 + 100 -4 -10, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 +40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 +40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 +40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 +40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE003 = playSeVer2( spep_2 + 4, 1018, "", 0, 0, 0, -1); --顔カットイン

SE004 = playSeVer2( spep_2 + 10, 20, "", 0, 0, 0, -1); --集中線

SE005 = playSeVer2( spep_2 + 88, 1182, "", 0, 10, 0, -1); --ベジータアップ
setStartTimeMs( SE005,  67 );

SE006 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 136, 0, 20, -1); --ベジータアップ

SE007 = playSeVer2( spep_2 + 98, 1004, "", 0, 0, 0, -1); --ベジータアップ


-- ** 次の準備 ** --
spep_3 = spep_2 + 100 -4;

-------------------------------------------------
-- 気溜め1
-------------------------------------------------
-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --気溜め1 ef_003  キャラ、エフェクト、背景
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 18, 1044, "",spep_3 + 190, 0, 42, -1); --石持ち上がる
setSeVolumeByWorkId( spep_3 + 18, SE008, 140 );

SE009 = playSeVer2( spep_3 + 18, 1226, "",spep_3 + 190, 0, 42, -1); --石持ち上がる


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

-------------------------------------------------
-- 気溜め2
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --気溜め2 ef_004  キャラ、エフェクト、背景、描き文字
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 88 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 88 -4, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 88 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 88 -5, base4, 255);
setEffAlphaKey( spep_4 + 88 -4, base4, 0);


-- ** 音 ** --
SE010 = playSeVer2( spep_4 + 4, 1362, "",spep_4 + 130, 0, 42, -1); --バリア張る
setSeVolumeByWorkId( spep_4 + 4, SE010, 251 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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


-- ** 音 ** --
SE011 = playSeVer2( spep_4 + 60, 1231, "",spep_4 + 132, 0, 30, -1); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 60, SE011, 141 );

SE012 = playSeVer2( spep_4 + 64, 1130, "", spep_4 + 88 -4 + 10, 0, 10, 0.5); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 64, SE012, 80 );
setTimeStretch( SE012, 0.83, 30, 4 );

SE013 = playSeVer2( spep_4 + 64, 1179, "",spep_4 + 138, 0, 38, -1); --ベジータ光る

SE014 = playSeVer2( spep_4 + 64, 1291, "",spep_4 + 100, 0, 6, 0.5); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 64, SE014, 81 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 88 -4;

-------------------------------------------------
-- 岩崩壊
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); --岩崩壊 ef_005  キャラ、エフェクト、背景、描き文字
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 120 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 120 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 120 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 120 -5, base5, 255);
setEffAlphaKey( spep_5 + 120 -4, base5, 0);


-- ** 音 ** --
SE015 = playSeVer2( spep_5 + 12, 1043, "",spep_4 + 64, 0, 20, -1); --雷に打たれる

SE016 = playSeVer2( spep_5 + 12, 1231, "", 0, 0, 0, -1); --雷に打たれる
setSeVolumeByWorkId( spep_5 + 12, SE016, 168 );

SE017 = playSeVer2( spep_5 + 16, 1110, "",spep_5 + 44, 0, 14, -1); --雷に打たれる

SE018 = playSeVer2( spep_5 + 24, 1147, "",spep_5 + 178, 0, 14, -1); --イナヅマ

SE019 = playSeVer2( spep_5 + 48, 1168, "",spep_5 + 178, 0, 10, -1); --気を溜める

SE020 = playSeVer2( spep_5 + 48, 1017, "", 0, 0, 0, -1); --気を溜める

SE021 = playSeVer2( spep_5 + 50, 1159, "",spep_5 + 178, 0, 10, -1); --気を溜める
setSeVolumeByWorkId( spep_5 + 50, SE021, 83 );

SE022 = playSeVer2( spep_5 + 100, 1258, "",spep_5 + 176, 0, 10, -1); --風吹き荒ぶ



-- ** 次の準備 ** --
spep_6 = spep_5 + 120 -4;

-------------------------------------------------
-- 風放出
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0); --風放出_手前 ef_006a  エフェクト、描き文字
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 60 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, 1.0, 1.0);
setEffScaleKey( spep_6 + 60 -4, base6_f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 60 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 60 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 60 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --風放出_奥 ef_006b  キャラ、エフェクト、背景
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 60 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 60 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 60 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 60 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 60 -4, base6_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60 -4, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );

-- setMoveKey( spep_6 -3 + 0, 1, 168.9, -281.2 , 0 );
setMoveKey( spep_6 -2 + 2, 1, 169.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 165.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 166.9, -281.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 168.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 165.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 166.9, -281.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 168.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 163.9, -286.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 60, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -10 );
setRotateKey( spep_6 -3 + 60, 1, -10 );


-- ** 音 ** --
SE023 = playSeVer2( spep_6 + 0, 1259, "",spep_6 + 54, 0, 10, -1); --風吹き荒ぶ
setSeVolumeByWorkId( spep_6 + 0, SE023, 162 );
setPitch( spep_6 + 0, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_6 + 60 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
spep_7 = spep_c + 94;

-------------------------------------------------
-- 気放出1
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0); --気放出1 ef_007  キャラ、エフェクト、背景、描き文字
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 120 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 120 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 120 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 120 -5, base7, 255);
setEffAlphaKey( spep_7 + 120 -4, base7, 0);


-- ** 音 ** --
SE025 = playSeVer2( spep_7 + 0, 1278, "",spep_7 + 96, 0, 20, -1); --腕クロス

SE026 = playSeVer2( spep_7 + 0, 1227, "",spep_7 + 96, 0, 20, -1); --腕クロス

SE027 = playSeVer2( spep_7 + 2, 1233, "", 0, 0, 0, -1); --腕クロス

SE028 = playSeVer2( spep_7 + 12, 1006, "", 0, 0, 0, -1); --腕クロス
setPitch( spep_7 + 12, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );

SE029 = playSeVer2( spep_7 + 12, 1330, "",spep_7 + 66, 0, 22, -1); --腕クロス

SE030 = playSeVer2( spep_7 + 60, 1004, "", 0, 0, 0, -1); --腕広げる

SE031 = playSeVer2( spep_7 + 62, 1003, "", 0, 0, 0, -1); --腕広げる

SE032 = playSeVer2( spep_7 + 72, 1284, "",spep_7 + 126, 0, 20, -1); --腕広げる

SE033 = playSeVer2( spep_7 + 72, 1231, "", 0, 0, 0, -1); --腕広げる
setSeVolumeByWorkId( spep_7 + 72, SE033, 168 );

SE034 = playSeVer2( spep_7 + 74, 1110, "",spep_7 + 112, 0, 26, -1); --腕広げる

SE035 = playSeVer2( spep_7 + 106, 1067, "", 0, 0, 0, -1); --爆発する

SE036 = playSeVer2( spep_7 + 106, 1264, "",spep_7 + 306, 0, 10, -1); --爆発する

SE037 = playSeVer2( spep_7 + 106, 1159, "",spep_7 + 306, 0, 10, -1); --爆発する
setSeVolumeByWorkId( spep_7 + 106, SE037, 84 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 120 -4;

-------------------------------------------------
-- 気放出2
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0); --気放出2 ef_008  キャラ、エフェクト、背景、描き文字
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 64 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 64 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 64 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 64 -5, base8, 255);
setEffAlphaKey( spep_8 + 64 -4, base8, 0);


-- ** 音 ** --
SE038 = playSeVer2( spep_8 + 34, 1226, "",spep_8 + 186, 0, 10, -1); --爆風

SE039 = playSeVer2( spep_8 + 34, 1044, "",spep_8 + 128, 0, 22, -1); --爆風


-- ** 次の準備 ** --
spep_9 = spep_8 + 64 -4;

-------------------------------------------------
-- 爆風
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0); --爆風_手前 ef_009a  エフェクト、描き文字
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 48 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0); --爆風_奥 ef_009b  エフェクト、背景
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 48 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 104 );
changeAnime( spep_9 -3 + 40, 1, 106 );

-- setMoveKey( spep_9 -3 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 3.1, -4.9 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 6.3, -9.9 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 0.4, -6.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -5.5, -3.9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 5.7, -3.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 16.8, -3.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 11, -6.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 5.1, -9.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 8.3, -4.7 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 11.4, 0.3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 14.6, -4.7 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 17.7, -9.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 11.8, -6.6 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 6, -3.6 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 17.1, -3.6 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 28.3, -3.5 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 22.4, -6.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 51.9, -7 , 0 );
setMoveKey( spep_9 -3 + 39, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 101.8, 0 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 154.9, -12.3 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 208.1, -24.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 208.2, -22.2 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 208.2, -22.2 , 0 );

setScaleKey( spep_9 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_9 -3 + 39, 1, 2.4, 2.4 );
setScaleKey( spep_9 -3 + 40, 1, 2, 2 );
setScaleKey( spep_9 -3 + 48, 1, 2, 2 );
-- setScaleKey( spep_9 -3 + 82, 1, 2, 2 );

setRotateKey( spep_9 + 0, 1, -9.8 );
setRotateKey( spep_9 -3 + 34, 1, -9.8 );
setRotateKey( spep_9 -3 + 36, 1, 0.1 );
setRotateKey( spep_9 -3 + 39, 1, 10 );
setRotateKey( spep_9 -3 + 40, 1, -30 );
setRotateKey( spep_9 -3 + 48, 1, -19.9 );
-- setRotateKey( spep_9 -3 + 44, 1, -9.8 );


-- ** 音 ** --
SE040 = playSeVer2( spep_9 + 26, 1021, "", 0, 0, 0, -1); --敵飲み込まれる
setSeVolumeByWorkId( spep_9 + 26, SE040, 123 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 爆発1
-------------------------------------------------
-- ** エフェクト等 ** --
base10 = entryEffect( spep_10 + 0, SP_13, 0x80, -1, 0, 0, 0); --爆発1 ef_010  エフェクト、背景、描き文字
setEffMoveKey( spep_10 + 0, base10, 0, 0 , 0);
setEffMoveKey( spep_10 + 88 -4, base10, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10, 1.0, 1.0);
setEffScaleKey( spep_10 + 88 -4, base10, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10, 0);
setEffRotateKey( spep_10 + 88 -4, base10, 0);
setEffAlphaKey( spep_10 + 0, base10, 255);
setEffAlphaKey( spep_10 + 88 -5, base10, 255);
setEffAlphaKey( spep_10 + 88 -4, base10, 0);


-- ** 音 ** --
SE041 = playSeVer2( spep_10 + 2, 1160, "",spep_10 + 78, 0, 10, -1); --白煙広がる

SE042 = playSeVer2( spep_10 + 16, 1258, "",spep_10 + 78, 16, 10, -1); --白煙広がる
setStartTimeMs( SE042,  233 );

SE043 = playSeVer2( spep_10 + 66, 1027, "", 0, 0, 0, -1); --敵吹き飛ぶ

SE044 = playSeVer2( spep_10 + 66, 1121, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ

SE045 = playSeVer2( spep_10 + 66, 1183, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ

SE046 = playSeVer2( spep_10 + 66, 1226, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ


-- ** 次の準備 ** --
spep_11 = spep_10 + 88 -4;

-------------------------------------------------
-- 敵吹っ飛び
-------------------------------------------------
-- ** エフェクト等 ** --
base11_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0); --敵吹っ飛び_手前 ef_011a  エフェクト
setEffMoveKey( spep_11 + 0, base11_f, 0, 0 , 0);
setEffMoveKey( spep_11 + 48 -4, base11_f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_f, 1.0, 1.0);
setEffScaleKey( spep_11 + 48 -4, base11_f, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_f, 0);
setEffRotateKey( spep_11 + 48 -4, base11_f, 0);
setEffAlphaKey( spep_11 + 0, base11_f, 255);
setEffAlphaKey( spep_11 + 48 -5, base11_f, 255);
setEffAlphaKey( spep_11 + 48 -4, base11_f, 0);

base11_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0); --敵吹っ飛び_奥 ef_011b  エフェクト、背景
setEffMoveKey( spep_11 + 0, base11_b, 0, 0 , 0);
setEffMoveKey( spep_11 + 48 -4, base11_b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_b, 1.0, 1.0);
setEffScaleKey( spep_11 + 48 -4, base11_b, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_b, 0);
setEffRotateKey( spep_11 + 48 -4, base11_b, 0);
setEffAlphaKey( spep_11 + 0, base11_b, 255);
setEffAlphaKey( spep_11 + 48 -5, base11_b, 255);
setEffAlphaKey( spep_11 + 48 -4, base11_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_11-3 + 6, 1, 1 );

changeAnime( spep_11 + 0, 1, 107 );

-- setMoveKey( spep_11 -3 + 0, 1, -359.9, -1116.9 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -358.4, -1119.4 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -356.9, -1121.9 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -83, 207 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -80.1, 203.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -77.2, 199.7 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -78.9, 203.6 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -76.1, 200 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -73.2, 196.4 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -74.9, 200.2 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -71.9, 196.5 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -68.7, 192.6 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -69.9, 196.1 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -66.3, 191.8 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -62.4, 187.3 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -62.6, 189.9 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -57.8, 184.7 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -52.4, 179 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -41.4, 172.4 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -18.9, 152.4 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 14, 123.8 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 57.2, 90.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 126.4, 31.4 , 0 );
--setMoveKey( spep_11 -3 + 46, 1, 227.1, -53.7 , 0 );
setMoveKey( spep_11 -5 + 48, 1, 370, -171 , 0 );

setScaleKey( spep_11 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_11 -3 + 6, 1, 0.05, 0.05 );
setScaleKey( spep_11 -3 + 8, 1, 0.06, 0.06 );
setScaleKey( spep_11 -3 + 10, 1, 0.07, 0.07 );
setScaleKey( spep_11 -3 + 12, 1, 0.07, 0.07 );
setScaleKey( spep_11 -3 + 14, 1, 0.08, 0.08 );
setScaleKey( spep_11 -3 + 16, 1, 0.09, 0.09 );
setScaleKey( spep_11 -3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_11 -3 + 20, 1, 0.1, 0.1 );
setScaleKey( spep_11 -3 + 22, 1, 0.11, 0.11 );
setScaleKey( spep_11 -3 + 24, 1, 0.12, 0.12 );
setScaleKey( spep_11 -3 + 26, 1, 0.13, 0.13 );
setScaleKey( spep_11 -3 + 28, 1, 0.15, 0.15 );
setScaleKey( spep_11 -3 + 30, 1, 0.16, 0.16 );
setScaleKey( spep_11 -3 + 32, 1, 0.18, 0.18 );
setScaleKey( spep_11 -3 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_11 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_11 -3 + 38, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 40, 1, 0.56, 0.56 );
setScaleKey( spep_11 -3 + 42, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 44, 1, 1.17, 1.17 );
--setScaleKey( spep_11 -3 + 46, 1, 1.71, 1.71 );
setScaleKey( spep_11 -5 + 48, 1, 2.5, 2.5 );

setRotateKey( spep_11 + 0, 1, 40.1 );
setRotateKey( spep_11 -3 + 44, 1, 40.1 );
--setRotateKey( spep_11 -3 + 46, 1, 40 );
setRotateKey( spep_11 -5 + 48, 1, 40 );


-- ** 音 ** --


-- ** 次の準備 ** --
spep_12 = spep_11 + 48 -4;

-------------------------------------------------
-- 爆発2
-------------------------------------------------
-- ** エフェクト等 ** --
base12 = entryEffect( spep_12 + 0, SP_16, 0x80, -1, 0, 0, 0); --爆発2 ef_012a  エフェクト、背景
setEffMoveKey( spep_12 + 0, base12, 0, 0 , 0);
setEffMoveKey( spep_12 + 112 -4, base12, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base12, 1.0, 1.0);
setEffScaleKey( spep_12 + 112 -4, base12, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base12, 0);
setEffRotateKey( spep_12 + 112 -4, base12, 0);
setEffAlphaKey( spep_12 + 0, base12, 255);
setEffAlphaKey( spep_12 + 112 -5, base12, 255);
setEffAlphaKey( spep_12 + 112 -4, base12, 0);

KO = entryEffect( spep_12 + 112 -4, SP_18, 0x80, -1, 0, 0, 0); --爆炎の中のベジータ ef_013  キャラ、エフェクト、背景
setEffMoveKey( spep_12 + 112 -4, KO, 0, 0 , 0);
setEffMoveKey( spep_12 + 112 +80 -4, KO, 0, 0 , 0);
setEffScaleKey( spep_12 + 112 -4, KO, 1.0, 1.0);
setEffScaleKey( spep_12 + 112 +80 -4, KO, 1.0, 1.0);
setEffRotateKey( spep_12 + 112 -4, KO, 0);
setEffRotateKey( spep_12 + 112 +80, KO, 0);
setEffAlphaKey( spep_12 + 112 -4, KO, 255);
setEffAlphaKey( spep_12 + 112 +80 -4, KO, 255);
setEffAlphaKey( spep_12 + 112 +80 -3, KO, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_12 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_12 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_12 + 110, hibiware, 70, -60, 0 );

setEffScaleKey( spep_12 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_12 + 110, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_12 + 2, hibiware, 0 );
setEffRotateKey( spep_12 + 110, hibiware, 0 );

setEffAlphaKey( spep_12 + 2, hibiware, 0 );
setEffAlphaKey( spep_12 + 13, hibiware, 0 );
setEffAlphaKey( spep_12 + 14, hibiware, 255 );
setEffAlphaKey( spep_12 + 110, hibiware, 255 );
setEffAlphaKey( spep_12 + 111, hibiware, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_12 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_12 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_12 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_12 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_12 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_12 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_12 + 14, shuchusen5, 0 );
setEffRotateKey( spep_12 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_12 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_12 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_12 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_12 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_12 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_12 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_12 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_12 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_12 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_12 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_12 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_12 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_12 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_12 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_12 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_12 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_12 + 14, shuchusen6, 0 );
setEffRotateKey( spep_12 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_12 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_12 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_12 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_12 + 14, ctga, 14, 20 );

setEffMoveKey( spep_12 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_12 + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_12 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_12 + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_12 + 14, ctga, -10.9 );
setEffRotateKey( spep_12 + 15, ctga, -10.9 );
setEffRotateKey( spep_12 + 16, ctga, -14.9 );
setEffRotateKey( spep_12 + 17, ctga, -14.9 );
setEffRotateKey( spep_12 + 18, ctga, -10.9 );
setEffRotateKey( spep_12 + 19, ctga, -10.9 );
setEffRotateKey( spep_12 + 20, ctga, -14.9 );
setEffRotateKey( spep_12 + 21, ctga, -14.9 );
setEffRotateKey( spep_12 + 22, ctga, -10.9 );
setEffRotateKey( spep_12 + 23, ctga, -10.9 );
setEffRotateKey( spep_12 + 24, ctga, -14.9 );
setEffRotateKey( spep_12 + 25, ctga, -14.9 );
setEffRotateKey( spep_12 + 26, ctga, -10.9 );
setEffRotateKey( spep_12 + 27, ctga, -10.9 );
setEffRotateKey( spep_12 + 28, ctga, -14.9 );
setEffRotateKey( spep_12 + 110, ctga, -14.9 );

setEffAlphaKey( spep_12 + 14, ctga, 255 );
setEffAlphaKey( spep_12 + 110, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 110, 1, 0 );
changeAnime( spep_12 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_12 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_12 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_12 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_12 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_12 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_12 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_12 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_12 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_12 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_12 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_12 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_12 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_12 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_12 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_12 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_12 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_12 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_12 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_12 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_12 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_12 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_12 + 0, 1, -40 );
setRotateKey( spep_12 + 1, 1, -40 );
setRotateKey( spep_12 + 2, 1, 80 );
setRotateKey( spep_12 + 3, 1, 80 );
setRotateKey( spep_12 + 4, 1, 200 );
setRotateKey( spep_12 + 5, 1, 200 );
setRotateKey( spep_12 + 6, 1, 360 );
setRotateKey( spep_12 + 7, 1, 360 );
setRotateKey( spep_12 + 8, 1, 558 );
setRotateKey( spep_12 + 9, 1, 558 );
setRotateKey( spep_12 + 10, 1, 425 );
setRotateKey( spep_12 + 11, 1, 425 );
setRotateKey( spep_12 + 12, 1, -40 );
setRotateKey( spep_12 + 110, 1, -40 );

-- ** 音 ** --
SE047 = playSeVer2( spep_12 + 12, 1025, "", 0, 0, 0, -1); --ガッ

SE048 = playSeVer2( spep_12 + 12, 1054, "", 0, 0, 0, -1); --ガッ


-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_12 + 10);
entryFade( spep_12 + 112 -8, 2, 8, 2, 0, 0, 0, 255 );  --black fade
endPhase( spep_12 + 112);

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 対峙
-------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_19, 0x100, -1, 0, 0, 0); --対峙_手前 ef_001a_r  キャラ、背景
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 68 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 68 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 68 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --対峙_奥 ef_001b  背景
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 68 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 68 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 68 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 68 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 68 -4, base1_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 68 -4, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

-- setMoveKey( spep_1 -3 + 0, 1, 186.9, 98.9 , 0 );
setMoveKey( spep_1 +0, 1, 185.6, 98.9 , 0 );
setMoveKey( spep_1 +1, 1, 184.2, 98.9 , 0 );
setMoveKey( spep_1 +2, 1, 183.5, 98.9 , 0 );
setMoveKey( spep_1 +3, 1, 182.9, 98.9 , 0 );
setMoveKey( spep_1 +4, 1, 182.2, 98.9 , 0 );
setMoveKey( spep_1 +5, 1, 181.5, 98.9 , 0 );
setMoveKey( spep_1 +6, 1, 180.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 180.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 178.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 177.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 176.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 174.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 173.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 172.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 170.7, 98.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 169.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 168, 98.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 166.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 165.3, 98.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 163.9, 98.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 162.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 161.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 159.9, 98.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 158.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 157.2, 98.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 155.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 154.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 153.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 151.8, 98.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 150.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 149.1, 98.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 147.7, 98.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 146.4, 98.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 145, 98.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 143.6, 98.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 142.3, 98.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 140.9, 98.9 , 0 );

setScaleKey( spep_1 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 68, 1, 0.6, 0.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 68, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1); --入り

SE002 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 230, 0, 36, -1); --環境音
setSeVolumeByWorkId( spep_1 + 0, SE002, 32 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 68 -4;

-------------------------------------------------
-- 見下ろし
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --見下ろし ef_002  キャラ、背景
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, -1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 100 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 100 -5, base2, 255);
setEffAlphaKey( spep_2 + 100 -4, base2, 0);


-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 16, 906, 100 -4 -16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 16, shuchusen_2, 000, 20 );
setEffMoveKey( spep_2 + 16, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100 -4, shuchusen_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 16, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 100 -4, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 16, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 100 -4, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 16, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 100 -4, shuchusen_2, 255 );


-- ** 白フェード ** --
entryFade( spep_2 + 100 -4 -10, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 4;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 -40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE003 = playSeVer2( spep_2 + 4, 1018, "", 0, 0, 0, -1); --顔カットイン

SE004 = playSeVer2( spep_2 + 10, 20, "", 0, 0, 0, -1); --集中線

SE005 = playSeVer2( spep_2 + 88, 1182, "", 0, 10, 0, -1); --ベジータアップ
setStartTimeMs( SE005,  67 );

SE006 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 136, 0, 20, -1); --ベジータアップ

SE007 = playSeVer2( spep_2 + 98, 1004, "", 0, 0, 0, -1); --ベジータアップ


-- ** 次の準備 ** --
spep_3 = spep_2 + 100 -4;

-------------------------------------------------
-- 気溜め1
-------------------------------------------------
-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --気溜め1 ef_003  キャラ、エフェクト、背景
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, -1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 18, 1044, "",spep_3 + 190, 0, 42, -1); --石持ち上がる
setSeVolumeByWorkId( spep_3 + 18, SE008, 140 );

SE009 = playSeVer2( spep_3 + 18, 1226, "",spep_3 + 190, 0, 42, -1); --石持ち上がる


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

-------------------------------------------------
-- 気溜め2
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_20, 0x80, -1, 0, 0, 0); --気溜め2 ef_004_r  キャラ、エフェクト、背景、描き文字 反転用
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 88 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 88 -4, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 88 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 88 -5, base4, 255);
setEffAlphaKey( spep_4 + 88 -4, base4, 0);


-- ** 音 ** --
SE010 = playSeVer2( spep_4 + 4, 1362, "",spep_4 + 130, 0, 42, -1); --バリア張る
setSeVolumeByWorkId( spep_4 + 4, SE010, 251 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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


-- ** 音 ** --
SE011 = playSeVer2( spep_4 + 60, 1231, "",spep_4 + 132, 0, 30, -1); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 60, SE011, 141 );

SE012 = playSeVer2( spep_4 + 64, 1130, "", spep_4 + 88 -4 + 10, 0, 10, 0.5); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 64, SE012, 80 );
setTimeStretch( SE012, 0.83, 30, 4 );

SE013 = playSeVer2( spep_4 + 64, 1179, "",spep_4 + 138, 0, 38, -1); --ベジータ光る

SE014 = playSeVer2( spep_4 + 64, 1291, "",spep_4 + 100, 0, 6, 0.5); --ベジータ光る
setSeVolumeByWorkId( spep_4 + 64, SE014, 81 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 88 -4;

-------------------------------------------------
-- 岩崩壊
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); --岩崩壊 ef_005  キャラ、エフェクト、背景、描き文字
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 120 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, -1.0, 1.0);
setEffScaleKey( spep_5 + 120 -4, base5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 120 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 120 -5, base5, 255);
setEffAlphaKey( spep_5 + 120 -4, base5, 0);


-- ** 音 ** --
SE015 = playSeVer2( spep_5 + 12, 1043, "",spep_4 + 64, 0, 20, -1); --雷に打たれる

SE016 = playSeVer2( spep_5 + 12, 1231, "", 0, 0, 0, -1); --雷に打たれる
setSeVolumeByWorkId( spep_5 + 12, SE016, 168 );

SE017 = playSeVer2( spep_5 + 16, 1110, "",spep_5 + 44, 0, 14, -1); --雷に打たれる

SE018 = playSeVer2( spep_5 + 24, 1147, "",spep_5 + 178, 0, 14, -1); --イナヅマ

SE019 = playSeVer2( spep_5 + 48, 1168, "",spep_5 + 178, 0, 10, -1); --気を溜める

SE020 = playSeVer2( spep_5 + 48, 1017, "", 0, 0, 0, -1); --気を溜める

SE021 = playSeVer2( spep_5 + 50, 1159, "",spep_5 + 178, 0, 10, -1); --気を溜める
setSeVolumeByWorkId( spep_5 + 50, SE021, 83 );

SE022 = playSeVer2( spep_5 + 100, 1258, "",spep_5 + 176, 0, 10, -1); --風吹き荒ぶ



-- ** 次の準備 ** --
spep_6 = spep_5 + 120 -4;

-------------------------------------------------
-- 風放出
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_21, 0x100, -1, 0, 0, 0); --風放出_手前 ef_006a_r  エフェクト、描き文字 反転用
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 60 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, 1.0, 1.0);
setEffScaleKey( spep_6 + 60 -4, base6_f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 60 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 60 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 60 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_22, 0x80, -1, 0, 0, 0); --風放出_奥 ef_006b_r  キャラ、エフェクト、背景 反転用
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 60 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 60 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 60 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 60 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 60 -4, base6_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60 -4, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );

-- setMoveKey( spep_6 -3 + 0, 1, 168.9, -281.2 , 0 );
setMoveKey( spep_6 -2 + 2, 1, 169.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 165.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 166.9, -281.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 168.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 165.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 166.9, -281.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 168.4, -283.7 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 169.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 165.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 161.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 166.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 171.9, -283.2 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 167.9, -284.7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 163.9, -286.2 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 163.9, -286.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 60, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -10 );
setRotateKey( spep_6 -3 + 60, 1, -10 );


-- ** 音 ** --
SE023 = playSeVer2( spep_6 + 0, 1259, "",spep_6 + 54, 0, 10, -1); --風吹き荒ぶ
setSeVolumeByWorkId( spep_6 + 0, SE023, 162 );
setPitch( spep_6 + 0, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_6 + 60 -4;

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_c + 94;

-------------------------------------------------
-- 気放出1
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_23, 0x80, -1, 0, 0, 0); --気放出1 ef_007_r  キャラ、エフェクト、背景、描き文字 反転用
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 120 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 120 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 120 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 120 -5, base7, 255);
setEffAlphaKey( spep_7 + 120 -4, base7, 0);


-- ** 音 ** --
SE025 = playSeVer2( spep_7 + 0, 1278, "",spep_7 + 96, 0, 20, -1); --腕クロス

SE026 = playSeVer2( spep_7 + 0, 1227, "",spep_7 + 96, 0, 20, -1); --腕クロス

SE027 = playSeVer2( spep_7 + 2, 1233, "", 0, 0, 0, -1); --腕クロス

SE028 = playSeVer2( spep_7 + 12, 1006, "", 0, 0, 0, -1); --腕クロス
setPitch( spep_7 + 12, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );

SE029 = playSeVer2( spep_7 + 12, 1330, "",spep_7 + 66, 0, 22, -1); --腕クロス

SE030 = playSeVer2( spep_7 + 60, 1004, "", 0, 0, 0, -1); --腕広げる

SE031 = playSeVer2( spep_7 + 62, 1003, "", 0, 0, 0, -1); --腕広げる


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_7 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
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

-- ** 音 ** --
SE032 = playSeVer2( spep_7 + 72, 1284, "",spep_7 + 126, 0, 20, -1); --腕広げる

SE033 = playSeVer2( spep_7 + 72, 1231, "", 0, 0, 0, -1); --腕広げる
setSeVolumeByWorkId( spep_7 + 72, SE033, 168 );

SE034 = playSeVer2( spep_7 + 74, 1110, "",spep_7 + 112, 0, 26, -1); --腕広げる

SE035 = playSeVer2( spep_7 + 106, 1067, "", 0, 0, 0, -1); --爆発する

SE036 = playSeVer2( spep_7 + 106, 1264, "",spep_7 + 306, 0, 10, -1); --爆発する

SE037 = playSeVer2( spep_7 + 106, 1159, "",spep_7 + 306, 0, 10, -1); --爆発する
setSeVolumeByWorkId( spep_7 + 106, SE037, 84 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 120 -4;

-------------------------------------------------
-- 気放出2
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_24, 0x80, -1, 0, 0, 0); --気放出2 ef_008_r  キャラ、エフェクト、背景、描き文字 反転用
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 64 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 64 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 64 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 64 -5, base8, 255);
setEffAlphaKey( spep_8 + 64 -4, base8, 0);


-- ** 音 ** --
SE038 = playSeVer2( spep_8 + 34, 1226, "",spep_8 + 186, 0, 10, -1); --爆風

SE039 = playSeVer2( spep_8 + 34, 1044, "",spep_8 + 128, 0, 22, -1); --爆風


-- ** 次の準備 ** --
spep_9 = spep_8 + 64 -4;

-------------------------------------------------
-- 爆風
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_25, 0x100, -1, 0, 0, 0); --爆風_手前 ef_009a_r  エフェクト、描き文字 反転用
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 48 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0); --爆風_奥 ef_009b  エフェクト、背景
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 48 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 104 );
changeAnime( spep_9 -3 + 40, 1, 106 );

-- setMoveKey( spep_9 -3 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 3.1, -4.9 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 6.3, -9.9 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 0.4, -6.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -5.5, -3.9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 5.7, -3.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 16.8, -3.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 11, -6.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 5.1, -9.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 8.3, -4.7 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 11.4, 0.3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 14.6, -4.7 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 17.7, -9.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 11.8, -6.6 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 6, -3.6 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 17.1, -3.6 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 28.3, -3.5 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 22.4, -6.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 51.9, -7 , 0 );
setMoveKey( spep_9 -3 + 39, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 101.8, 0 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 154.9, -12.3 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 208.1, -24.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 208.2, -22.2 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 208.2, -22.2 , 0 );

setScaleKey( spep_9 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_9 -3 + 39, 1, 2.4, 2.4 );
setScaleKey( spep_9 -3 + 40, 1, 2, 2 );
setScaleKey( spep_9 -3 + 48, 1, 2, 2 );
-- setScaleKey( spep_9 -3 + 82, 1, 2, 2 );

setRotateKey( spep_9 + 0, 1, -9.8 );
setRotateKey( spep_9 -3 + 34, 1, -9.8 );
setRotateKey( spep_9 -3 + 36, 1, 0.1 );
setRotateKey( spep_9 -3 + 39, 1, 10 );
setRotateKey( spep_9 -3 + 40, 1, -30 );
setRotateKey( spep_9 -3 + 48, 1, -19.9 );
-- setRotateKey( spep_9 -3 + 44, 1, -9.8 );


-- ** 音 ** --
SE040 = playSeVer2( spep_9 + 26, 1021, "", 0, 0, 0, -1); --敵飲み込まれる
setSeVolumeByWorkId( spep_9 + 26, SE040, 123 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 爆発1
-------------------------------------------------
-- ** エフェクト等 ** --
base10 = entryEffect( spep_10 + 0, SP_13, 0x80, -1, 0, 0, 0); --爆発1 ef_010  エフェクト、背景、描き文字
setEffMoveKey( spep_10 + 0, base10, 0, 0 , 0);
setEffMoveKey( spep_10 + 88 -4, base10, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10, -1.0, 1.0);
setEffScaleKey( spep_10 + 88 -4, base10, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10, 0);
setEffRotateKey( spep_10 + 88 -4, base10, 0);
setEffAlphaKey( spep_10 + 0, base10, 255);
setEffAlphaKey( spep_10 + 88 -5, base10, 255);
setEffAlphaKey( spep_10 + 88 -4, base10, 0);


-- ** 音 ** --
SE041 = playSeVer2( spep_10 + 2, 1160, "",spep_10 + 78, 0, 10, -1); --白煙広がる

SE042 = playSeVer2( spep_10 + 16, 1258, "",spep_10 + 78, 16, 10, -1); --白煙広がる
setStartTimeMs( SE042,  233 );

SE043 = playSeVer2( spep_10 + 66, 1027, "", 0, 0, 0, -1); --敵吹き飛ぶ

SE044 = playSeVer2( spep_10 + 66, 1121, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ

SE045 = playSeVer2( spep_10 + 66, 1183, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ

SE046 = playSeVer2( spep_10 + 66, 1226, "",spep_10 + 166, 0, 36, -1); --敵吹き飛ぶ


-- ** 次の準備 ** --
spep_11 = spep_10 + 88 -4;

-------------------------------------------------
-- 敵吹っ飛び
-------------------------------------------------
-- ** エフェクト等 ** --
base11_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0); --敵吹っ飛び_手前 ef_011a  エフェクト
setEffMoveKey( spep_11 + 0, base11_f, 0, 0 , 0);
setEffMoveKey( spep_11 + 48 -4, base11_f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_f, 1.0, 1.0);
setEffScaleKey( spep_11 + 48 -4, base11_f, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_f, 0);
setEffRotateKey( spep_11 + 48 -4, base11_f, 0);
setEffAlphaKey( spep_11 + 0, base11_f, 255);
setEffAlphaKey( spep_11 + 48 -5, base11_f, 255);
setEffAlphaKey( spep_11 + 48 -4, base11_f, 0);

base11_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0); --敵吹っ飛び_奥 ef_011b  エフェクト、背景
setEffMoveKey( spep_11 + 0, base11_b, 0, 0 , 0);
setEffMoveKey( spep_11 + 48 -4, base11_b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_b, 1.0, 1.0);
setEffScaleKey( spep_11 + 48 -4, base11_b, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_b, 0);
setEffRotateKey( spep_11 + 48 -4, base11_b, 0);
setEffAlphaKey( spep_11 + 0, base11_b, 255);
setEffAlphaKey( spep_11 + 48 -5, base11_b, 255);
setEffAlphaKey( spep_11 + 48 -4, base11_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_11-3 + 6, 1, 1 );

changeAnime( spep_11 + 0, 1, 107 );

-- setMoveKey( spep_11 -3 + 0, 1, -359.9, -1116.9 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -358.4, -1119.4 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -356.9, -1121.9 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -83, 207 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -80.1, 203.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -77.2, 199.7 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -78.9, 203.6 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -76.1, 200 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -73.2, 196.4 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -74.9, 200.2 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -71.9, 196.5 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -68.7, 192.6 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -69.9, 196.1 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -66.3, 191.8 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -62.4, 187.3 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -62.6, 189.9 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -57.8, 184.7 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -52.4, 179 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -41.4, 172.4 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -18.9, 152.4 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 14, 123.8 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 57.2, 90.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 126.4, 31.4 , 0 );
--setMoveKey( spep_11 -3 + 46, 1, 227.1, -53.7 , 0 );
setMoveKey( spep_11 -5 + 48, 1, 370, -171 , 0 );

setScaleKey( spep_11 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_11 -3 + 6, 1, 0.05, 0.05 );
setScaleKey( spep_11 -3 + 8, 1, 0.06, 0.06 );
setScaleKey( spep_11 -3 + 10, 1, 0.07, 0.07 );
setScaleKey( spep_11 -3 + 12, 1, 0.07, 0.07 );
setScaleKey( spep_11 -3 + 14, 1, 0.08, 0.08 );
setScaleKey( spep_11 -3 + 16, 1, 0.09, 0.09 );
setScaleKey( spep_11 -3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_11 -3 + 20, 1, 0.1, 0.1 );
setScaleKey( spep_11 -3 + 22, 1, 0.11, 0.11 );
setScaleKey( spep_11 -3 + 24, 1, 0.12, 0.12 );
setScaleKey( spep_11 -3 + 26, 1, 0.13, 0.13 );
setScaleKey( spep_11 -3 + 28, 1, 0.15, 0.15 );
setScaleKey( spep_11 -3 + 30, 1, 0.16, 0.16 );
setScaleKey( spep_11 -3 + 32, 1, 0.18, 0.18 );
setScaleKey( spep_11 -3 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_11 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_11 -3 + 38, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 40, 1, 0.56, 0.56 );
setScaleKey( spep_11 -3 + 42, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 44, 1, 1.17, 1.17 );
--setScaleKey( spep_11 -3 + 46, 1, 1.71, 1.71 );
setScaleKey( spep_11 -5 + 48, 1, 2.5, 2.5 );

setRotateKey( spep_11 + 0, 1, 40.1 );
setRotateKey( spep_11 -3 + 44, 1, 40.1 );
--setRotateKey( spep_11 -3 + 46, 1, 40 );
setRotateKey( spep_11 -5 + 48, 1, 40 );


-- ** 音 ** --


-- ** 次の準備 ** --
spep_12 = spep_11 + 48 -4;

-------------------------------------------------
-- 爆発2
-------------------------------------------------
-- ** エフェクト等 ** --
base12 = entryEffect( spep_12 + 0, SP_16, 0x80, -1, 0, 0, 0); --爆発2 ef_012a  エフェクト、背景
setEffMoveKey( spep_12 + 0, base12, 0, 0 , 0);
setEffMoveKey( spep_12 + 112 -4, base12, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base12, 1.0, 1.0);
setEffScaleKey( spep_12 + 112 -4, base12, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base12, 0);
setEffRotateKey( spep_12 + 112 -4, base12, 0);
setEffAlphaKey( spep_12 + 0, base12, 255);
setEffAlphaKey( spep_12 + 112 -5, base12, 255);
setEffAlphaKey( spep_12 + 112 -4, base12, 0);

KO = entryEffect( spep_12 + 112 -4, SP_26, 0x80, -1, 0, 0, 0); --爆炎の中のベジータ ef_013  キャラ、エフェクト、背景
setEffMoveKey( spep_12 + 112 -4, KO, 0, 0 , 0);
setEffMoveKey( spep_12 + 112 +80 -4, KO, 0, 0 , 0);
setEffScaleKey( spep_12 + 112 -4, KO, 1.0, 1.0);
setEffScaleKey( spep_12 + 112 +80 -4, KO, 1.0, 1.0);
setEffRotateKey( spep_12 + 112 -4, KO, 0);
setEffRotateKey( spep_12 + 112 +80, KO, 0);
setEffAlphaKey( spep_12 + 112 -4, KO, 255);
setEffAlphaKey( spep_12 + 112 +80 -4, KO, 255);
setEffAlphaKey( spep_12 + 112 +80 -3, KO, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_12 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_12 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_12 + 110, hibiware, 70, -60, 0 );

setEffScaleKey( spep_12 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_12 + 110, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_12 + 2, hibiware, 0 );
setEffRotateKey( spep_12 + 110, hibiware, 0 );

setEffAlphaKey( spep_12 + 2, hibiware, 0 );
setEffAlphaKey( spep_12 + 13, hibiware, 0 );
setEffAlphaKey( spep_12 + 14, hibiware, 255 );
setEffAlphaKey( spep_12 + 110, hibiware, 255 );
setEffAlphaKey( spep_12 + 111, hibiware, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_12 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_12 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_12 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_12 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_12 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_12 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_12 + 14, shuchusen5, 0 );
setEffRotateKey( spep_12 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_12 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_12 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_12 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_12 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_12 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_12 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_12 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_12 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_12 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_12 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_12 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_12 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_12 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_12 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_12 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_12 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_12 + 14, shuchusen6, 0 );
setEffRotateKey( spep_12 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_12 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_12 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_12 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_12 + 14, ctga, 14, 20 );

setEffMoveKey( spep_12 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_12 + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_12 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_12 + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_12 + 14, ctga, -10.9 );
setEffRotateKey( spep_12 + 15, ctga, -10.9 );
setEffRotateKey( spep_12 + 16, ctga, -14.9 );
setEffRotateKey( spep_12 + 17, ctga, -14.9 );
setEffRotateKey( spep_12 + 18, ctga, -10.9 );
setEffRotateKey( spep_12 + 19, ctga, -10.9 );
setEffRotateKey( spep_12 + 20, ctga, -14.9 );
setEffRotateKey( spep_12 + 21, ctga, -14.9 );
setEffRotateKey( spep_12 + 22, ctga, -10.9 );
setEffRotateKey( spep_12 + 23, ctga, -10.9 );
setEffRotateKey( spep_12 + 24, ctga, -14.9 );
setEffRotateKey( spep_12 + 25, ctga, -14.9 );
setEffRotateKey( spep_12 + 26, ctga, -10.9 );
setEffRotateKey( spep_12 + 27, ctga, -10.9 );
setEffRotateKey( spep_12 + 28, ctga, -14.9 );
setEffRotateKey( spep_12 + 110, ctga, -14.9 );

setEffAlphaKey( spep_12 + 14, ctga, 255 );
setEffAlphaKey( spep_12 + 110, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 110, 1, 0 );
changeAnime( spep_12 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_12 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_12 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_12 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_12 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_12 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_12 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_12 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_12 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_12 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_12 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_12 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_12 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_12 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_12 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_12 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_12 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_12 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_12 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_12 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_12 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_12 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_12 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_12 + 0, 1, -40 );
setRotateKey( spep_12 + 1, 1, -40 );
setRotateKey( spep_12 + 2, 1, 80 );
setRotateKey( spep_12 + 3, 1, 80 );
setRotateKey( spep_12 + 4, 1, 200 );
setRotateKey( spep_12 + 5, 1, 200 );
setRotateKey( spep_12 + 6, 1, 360 );
setRotateKey( spep_12 + 7, 1, 360 );
setRotateKey( spep_12 + 8, 1, 558 );
setRotateKey( spep_12 + 9, 1, 558 );
setRotateKey( spep_12 + 10, 1, 425 );
setRotateKey( spep_12 + 11, 1, 425 );
setRotateKey( spep_12 + 12, 1, -40 );
setRotateKey( spep_12 + 110, 1, -40 );

-- ** 音 ** --
SE047 = playSeVer2( spep_12 + 12, 1025, "", 0, 0, 0, -1); --ガッ

SE048 = playSeVer2( spep_12 + 12, 1054, "", 0, 0, 0, -1); --ガッ


-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_12 + 10);
entryFade( spep_12 + 112 -8, 2, 8, 2, 0, 0, 0, 255 );  --black fade
endPhase( spep_12 + 112);

end
end






------------------------------------------------------------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------------------------------------------------------------
if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_z = 0;


setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

if (_IS_PLAYER_SIDE_ == 1) then
 setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
else
 setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
end

setEffAlphaKey( SP_dodge, kaihi, 255);
pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** エフェクト等 ** --
basez = entryEffect( spep_z + 0, SP_16, 0x80, -1, 0, 0, 0); --爆発2 ef_012a  エフェクト、背景
setEffMoveKey( spep_z + 0, basez, 0, 0 , 0);
setEffMoveKey( spep_z + 112 -4, basez, 0, 0 , 0);
setEffScaleKey( spep_z + 0, basez, 1.0, 1.0);
setEffScaleKey( spep_z + 112 -4, basez, 1.0, 1.0);
setEffRotateKey( spep_z + 0, basez, 0);
setEffRotateKey( spep_z + 112 -4, basez, 0);
setEffAlphaKey( spep_z + 0, basez, 255);
setEffAlphaKey( spep_z + 112 -5, basez, 255);
setEffAlphaKey( spep_z + 112 -4, basez, 0);

KO = entryEffect( spep_z + 112 -4, SP_18, 0x80, -1, 0, 0, 0); --爆炎の中のベジータ ef_013  キャラ、エフェクト、背景
setEffMoveKey( spep_z + 112 -4, KO, 0, 0 , 0);
setEffMoveKey( spep_z + 112 +80 -4, KO, 0, 0 , 0);
setEffScaleKey( spep_z + 112 -4, KO, 1.0, 1.0);
setEffScaleKey( spep_z + 112 +80 -4, KO, 1.0, 1.0);
setEffRotateKey( spep_z + 112 -4, KO, 0);
setEffRotateKey( spep_z + 112 +80, KO, 0);
setEffAlphaKey( spep_z + 112 -4, KO, 255);
setEffAlphaKey( spep_z + 112 +80 -4, KO, 255);
setEffAlphaKey( spep_z + 112 +80 -3, KO, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_z + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_z + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_z + 110, hibiware, 70, -60, 0 );

setEffScaleKey( spep_z + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_z + 110, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_z + 2, hibiware, 0 );
setEffRotateKey( spep_z + 110, hibiware, 0 );

setEffAlphaKey( spep_z + 2, hibiware, 0 );
setEffAlphaKey( spep_z + 13, hibiware, 0 );
setEffAlphaKey( spep_z + 14, hibiware, 255 );
setEffAlphaKey( spep_z + 110, hibiware, 255 );
setEffAlphaKey( spep_z + 111, hibiware, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_z + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_z + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_z + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_z + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen5, 0 );
setEffRotateKey( spep_z + 46, shuchusen5, 0 );

setEffAlphaKey( spep_z + 14, shuchusen5, 255 );
setEffAlphaKey( spep_z + 28, shuchusen5, 255 );
setEffAlphaKey( spep_z + 30, shuchusen5, 252 );
setEffAlphaKey( spep_z + 32, shuchusen5, 242 );
setEffAlphaKey( spep_z + 34, shuchusen5, 227 );
setEffAlphaKey( spep_z + 36, shuchusen5, 205 );
setEffAlphaKey( spep_z + 38, shuchusen5, 176 );
setEffAlphaKey( spep_z + 40, shuchusen5, 142 );
setEffAlphaKey( spep_z + 42, shuchusen5, 101 );
setEffAlphaKey( spep_z + 44, shuchusen5, 54 );
setEffAlphaKey( spep_z + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_z + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_z + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_z + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_z + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen6, 0 );
setEffRotateKey( spep_z + 100, shuchusen6, 0 );

setEffAlphaKey( spep_z + 14, shuchusen6, 255 );
setEffAlphaKey( spep_z + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_z + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_z + 14, ctga, 14, 20 );

setEffMoveKey( spep_z + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_z + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_z + 14, ctga, -10.9 );
setEffRotateKey( spep_z + 15, ctga, -10.9 );
setEffRotateKey( spep_z + 16, ctga, -14.9 );
setEffRotateKey( spep_z + 17, ctga, -14.9 );
setEffRotateKey( spep_z + 18, ctga, -10.9 );
setEffRotateKey( spep_z + 19, ctga, -10.9 );
setEffRotateKey( spep_z + 20, ctga, -14.9 );
setEffRotateKey( spep_z + 21, ctga, -14.9 );
setEffRotateKey( spep_z + 22, ctga, -10.9 );
setEffRotateKey( spep_z + 23, ctga, -10.9 );
setEffRotateKey( spep_z + 24, ctga, -14.9 );
setEffRotateKey( spep_z + 25, ctga, -14.9 );
setEffRotateKey( spep_z + 26, ctga, -10.9 );
setEffRotateKey( spep_z + 27, ctga, -10.9 );
setEffRotateKey( spep_z + 28, ctga, -14.9 );
setEffRotateKey( spep_z + 110, ctga, -14.9 );

setEffAlphaKey( spep_z + 14, ctga, 255 );
setEffAlphaKey( spep_z + 110, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 110, 1, 0 );
changeAnime( spep_z + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_z + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.35, 0.35 );
setScaleKey( spep_z + 2, 1, 0.35, 0.35 );
setScaleKey( spep_z + 4, 1, 0.51, 0.51 );
setScaleKey( spep_z + 6, 1, 0.7, 0.7 );
setScaleKey( spep_z + 8, 1, 0.93, 0.93 );
setScaleKey( spep_z + 10, 1, 1.2, 1.2 );
setScaleKey( spep_z + 12, 1, 1.5, 1.5 );
setScaleKey( spep_z + 14, 1, 1.6, 1.6 );
setScaleKey( spep_z + 16, 1, 1.5, 1.5 );
setScaleKey( spep_z + 18, 1, 1.6, 1.6 );
setScaleKey( spep_z + 20, 1, 1.5, 1.5 );
setScaleKey( spep_z + 22, 1, 1.6, 1.6 );
setScaleKey( spep_z + 24, 1, 1.5, 1.5 );
setScaleKey( spep_z + 26, 1, 1.6, 1.6 );
setScaleKey( spep_z + 110, 1, 1.6, 1.6 );

setRotateKey( spep_z + 0, 1, -40 );
setRotateKey( spep_z + 1, 1, -40 );
setRotateKey( spep_z + 2, 1, 80 );
setRotateKey( spep_z + 3, 1, 80 );
setRotateKey( spep_z + 4, 1, 200 );
setRotateKey( spep_z + 5, 1, 200 );
setRotateKey( spep_z + 6, 1, 360 );
setRotateKey( spep_z + 7, 1, 360 );
setRotateKey( spep_z + 8, 1, 558 );
setRotateKey( spep_z + 9, 1, 558 );
setRotateKey( spep_z + 10, 1, 425 );
setRotateKey( spep_z + 11, 1, 425 );
setRotateKey( spep_z + 12, 1, -40 );
setRotateKey( spep_z + 110, 1, -40 );


-- ** 音 ** --
SE049 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1); --【全体】敵吹き飛ぶ

SE050 = playSeVer2( spep_z + 0, 1121, "",spep_z + 66, 0, 34, -1); --【全体】敵吹き飛ぶ

SE051 = playSeVer2( spep_z + 0, 1183, "",spep_z + 66, 0, 34, -1); --【全体】敵吹き飛ぶ

SE052 = playSeVer2( spep_z + 0, 1226, "",spep_z + 66, 0, 22, -1); --【全体】敵吹き飛ぶ

SE053 = playSeVer2( spep_z + 12, 1025, "", 0, 0, 0, -1); --ガッ

SE054 = playSeVer2( spep_z + 12, 1054, "", 0, 0, 0, -1); --ガッ


-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_z + 10);
entryFade( spep_z + 112 -8, 2, 8, 2, 0, 0, 0, 255 );  --black fade
endPhase( spep_z + 112);

else
------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_z = 0;


setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

if (_IS_PLAYER_SIDE_ == 1) then
 setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
else
 setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
end

setEffAlphaKey( SP_dodge, kaihi, 255);
pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** エフェクト等 ** --
basez = entryEffect( spep_z + 0, SP_16, 0x80, -1, 0, 0, 0); --爆発2 ef_012a  エフェクト、背景
setEffMoveKey( spep_z + 0, basez, 0, 0 , 0);
setEffMoveKey( spep_z + 112 -4, basez, 0, 0 , 0);
setEffScaleKey( spep_z + 0, basez, 1.0, 1.0);
setEffScaleKey( spep_z + 112 -4, basez, 1.0, 1.0);
setEffRotateKey( spep_z + 0, basez, 0);
setEffRotateKey( spep_z + 112 -4, basez, 0);
setEffAlphaKey( spep_z + 0, basez, 255);
setEffAlphaKey( spep_z + 112 -5, basez, 255);
setEffAlphaKey( spep_z + 112 -4, basez, 0);

KO = entryEffect( spep_z + 112 -4, SP_26, 0x80, -1, 0, 0, 0); --爆炎の中のベジータ ef_013  キャラ、エフェクト、背景
setEffMoveKey( spep_z + 112 -4, KO, 0, 0 , 0);
setEffMoveKey( spep_z + 112 +80 -4, KO, 0, 0 , 0);
setEffScaleKey( spep_z + 112 -4, KO, 1.0, 1.0);
setEffScaleKey( spep_z + 112 +80 -4, KO, 1.0, 1.0);
setEffRotateKey( spep_z + 112 -4, KO, 0);
setEffRotateKey( spep_z + 112 +80, KO, 0);
setEffAlphaKey( spep_z + 112 -4, KO, 255);
setEffAlphaKey( spep_z + 112 +80 -4, KO, 255);
setEffAlphaKey( spep_z + 112 +80 -3, KO, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_z + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_z + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_z + 110, hibiware, 70, -60, 0 );

setEffScaleKey( spep_z + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_z + 110, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_z + 2, hibiware, 0 );
setEffRotateKey( spep_z + 110, hibiware, 0 );

setEffAlphaKey( spep_z + 2, hibiware, 0 );
setEffAlphaKey( spep_z + 13, hibiware, 0 );
setEffAlphaKey( spep_z + 14, hibiware, 255 );
setEffAlphaKey( spep_z + 110, hibiware, 255 );
setEffAlphaKey( spep_z + 111, hibiware, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_z + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_z + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_z + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_z + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen5, 0 );
setEffRotateKey( spep_z + 46, shuchusen5, 0 );

setEffAlphaKey( spep_z + 14, shuchusen5, 255 );
setEffAlphaKey( spep_z + 28, shuchusen5, 255 );
setEffAlphaKey( spep_z + 30, shuchusen5, 252 );
setEffAlphaKey( spep_z + 32, shuchusen5, 242 );
setEffAlphaKey( spep_z + 34, shuchusen5, 227 );
setEffAlphaKey( spep_z + 36, shuchusen5, 205 );
setEffAlphaKey( spep_z + 38, shuchusen5, 176 );
setEffAlphaKey( spep_z + 40, shuchusen5, 142 );
setEffAlphaKey( spep_z + 42, shuchusen5, 101 );
setEffAlphaKey( spep_z + 44, shuchusen5, 54 );
setEffAlphaKey( spep_z + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_z + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_z + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_z + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_z + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen6, 0 );
setEffRotateKey( spep_z + 100, shuchusen6, 0 );

setEffAlphaKey( spep_z + 14, shuchusen6, 255 );
setEffAlphaKey( spep_z + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_z + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_z + 14, ctga, 14, 20 );

setEffMoveKey( spep_z + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_z + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_z + 14, ctga, -10.9 );
setEffRotateKey( spep_z + 15, ctga, -10.9 );
setEffRotateKey( spep_z + 16, ctga, -14.9 );
setEffRotateKey( spep_z + 17, ctga, -14.9 );
setEffRotateKey( spep_z + 18, ctga, -10.9 );
setEffRotateKey( spep_z + 19, ctga, -10.9 );
setEffRotateKey( spep_z + 20, ctga, -14.9 );
setEffRotateKey( spep_z + 21, ctga, -14.9 );
setEffRotateKey( spep_z + 22, ctga, -10.9 );
setEffRotateKey( spep_z + 23, ctga, -10.9 );
setEffRotateKey( spep_z + 24, ctga, -14.9 );
setEffRotateKey( spep_z + 25, ctga, -14.9 );
setEffRotateKey( spep_z + 26, ctga, -10.9 );
setEffRotateKey( spep_z + 27, ctga, -10.9 );
setEffRotateKey( spep_z + 28, ctga, -14.9 );
setEffRotateKey( spep_z + 110, ctga, -14.9 );

setEffAlphaKey( spep_z + 14, ctga, 255 );
setEffAlphaKey( spep_z + 110, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 110, 1, 0 );
changeAnime( spep_z + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_z + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.35, 0.35 );
setScaleKey( spep_z + 2, 1, 0.35, 0.35 );
setScaleKey( spep_z + 4, 1, 0.51, 0.51 );
setScaleKey( spep_z + 6, 1, 0.7, 0.7 );
setScaleKey( spep_z + 8, 1, 0.93, 0.93 );
setScaleKey( spep_z + 10, 1, 1.2, 1.2 );
setScaleKey( spep_z + 12, 1, 1.5, 1.5 );
setScaleKey( spep_z + 14, 1, 1.6, 1.6 );
setScaleKey( spep_z + 16, 1, 1.5, 1.5 );
setScaleKey( spep_z + 18, 1, 1.6, 1.6 );
setScaleKey( spep_z + 20, 1, 1.5, 1.5 );
setScaleKey( spep_z + 22, 1, 1.6, 1.6 );
setScaleKey( spep_z + 24, 1, 1.5, 1.5 );
setScaleKey( spep_z + 26, 1, 1.6, 1.6 );
setScaleKey( spep_z + 110, 1, 1.6, 1.6 );

setRotateKey( spep_z + 0, 1, -40 );
setRotateKey( spep_z + 1, 1, -40 );
setRotateKey( spep_z + 2, 1, 80 );
setRotateKey( spep_z + 3, 1, 80 );
setRotateKey( spep_z + 4, 1, 200 );
setRotateKey( spep_z + 5, 1, 200 );
setRotateKey( spep_z + 6, 1, 360 );
setRotateKey( spep_z + 7, 1, 360 );
setRotateKey( spep_z + 8, 1, 558 );
setRotateKey( spep_z + 9, 1, 558 );
setRotateKey( spep_z + 10, 1, 425 );
setRotateKey( spep_z + 11, 1, 425 );
setRotateKey( spep_z + 12, 1, -40 );
setRotateKey( spep_z + 110, 1, -40 );


-- ** 音 ** --
SE049 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1); --【全体】敵吹き飛ぶ

SE050 = playSeVer2( spep_z + 0, 1121, "",spep_z + 66, 0, 34, -1); --【全体】敵吹き飛ぶ

SE051 = playSeVer2( spep_z + 0, 1183, "",spep_z + 66, 0, 34, -1); --【全体】敵吹き飛ぶ

SE052 = playSeVer2( spep_z + 0, 1226, "",spep_z + 66, 0, 22, -1); --【全体】敵吹き飛ぶ

SE053 = playSeVer2( spep_z + 12, 1025, "", 0, 0, 0, -1); --ガッ

SE054 = playSeVer2( spep_z + 12, 1054, "", 0, 0, 0, -1); --ガッ


-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_z + 10);
entryFade( spep_z + 112 -8, 2, 8, 2, 0, 0, 0, 255 );  --black fade
endPhase( spep_z + 112);

end
end
