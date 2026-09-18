--1023490:UR_魔人ブウ(純粋)_バーストリジェクション
--sp_effect_b1_00175
--sp2309

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
SP_01 = 158779; --向かい合う～カットイン （手前・共有） ef_001_front 80 そのまま反転（ef_001_front と ef_001_back同時再生）
SP_02 = 158780; --向かい合う～カットイン （奥・共有） ef_001_back 80 そのまま反転（ef_001_front と ef_001_back同時再生）
SP_03 = 158781; --地面から蹴り（手前・味方） ef_002_front 28 味方側（ef_002_front と ef_002_back同時再生）
SP_04 = 158782; --地面から蹴り（奥・味方） ef_002_back 28 味方側（ef_002_front と ef_002_back同時再生）
SP_05 = 158785; --蹴りと頭突き（手前・味方） ef_003_front 86 味方側（ef_003_front と ef_003_back同時再生）
SP_06 = 158786; --蹴りと頭突き（奥・味方） ef_003_back 86 味方側（ef_003_front と ef_003_back同時再生）
SP_07 = 158789; --壁に激突（手前・味方） ef_004_front 36 味方側（ef_004_front と ef_004_back同時再生）
SP_08 = 158790; --壁に激突（奥・味方） ef_004_back 36 味方側（ef_004_front と ef_004_back同時再生）
SP_09 = 158793; --気弾ためる（共有） ef_005 194 そのまま反転
SP_10 = 158794; --気弾を放つ（共有） ef_006 31 そのまま反転
SP_11 = 158795; --気弾が爆発～フィニッシュ（味方） ef_007 129 味方側

--エフェクト(敵)
SP_12 = 158783; --地面から蹴り（手前・敵） ef_002_r_front 28 敵側そのまま反転（ef_002_r_front と ef_002_r_back同時再生）
SP_13 = 158784; --地面から蹴り（奥・敵） ef_002_r_back 28 敵側そのまま反転（ef_002_r_front と ef_002_r_back同時再生）
SP_14 = 158787; --蹴りと頭突き（手前・敵） ef_003_r_front 86 敵側そのまま反転（ef_003_r_front と ef_003_r_back同時再生）
SP_15 = 158788; --蹴りと頭突き（奥・敵） ef_003_r_back 86 敵側そのまま反転（ef_003_r_front と ef_003_r_back同時再生）
SP_16 = 158791; --壁に激突（手前・敵） ef_004_r_front 36 敵側そのまま反転（ef_004_r_front と ef_004_r_back同時再生）
SP_17 = 158792; --壁に激突（奥・敵） ef_004_r_back 36 敵側そのまま反転（ef_004_r_front と ef_004_r_back同時再生）
SP_18 = 158796; --気弾が爆発～フィニッシュ （敵） ef_007_r 129 敵側そのまま反転


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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 向かい合う～カットイン(160F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --向かい合う～カットイン （手前・共有）
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 160 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 160 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 160 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --向かい合う～カットイン （奥・共有）
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 160 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 160 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 160 -4, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40+20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40+20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80+20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 敵キャラクター ** --

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 108 -3, 1, 0);

changeAnime( spep_1 + 0, 1, 118 );

--setMoveKey( spep_1 -3 + 0, 1, 526.3, -87.9 , 0 );
setMoveKey( spep_1 + 0, 1, 472.2, -82.4 , 0 );
setMoveKey( spep_1 + 1, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 2, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 3, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 4, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 5, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 + 6, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 258.2, -60.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 204.6, -54.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 204.1, -54.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 203.5, -54.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 202.9, -54.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 202.4, -54.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.8, -54.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.2, -54.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 200.7, -54.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 200.1, -54.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 199.6, -54.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 199, -54.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 198.5, -54.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 197.9, -54 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 197.3, -54 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 196.8, -53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 196.2, -53.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 195.7, -53.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 195.1, -53.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 194.5, -53.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 194, -53.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 193.5, -53.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.9, -53.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 192.3, -53.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.8, -53.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 191.2, -53.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 190.6, -53.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 190.1, -53.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 189.6, -53.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 189, -53.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 188.4, -53 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 187.9, -53 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 187.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 186.8, -52.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 186.2, -52.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 185.7, -52.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 185.1, -52.7 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 184.5, -52.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 184, -52.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 183.4, -52.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 182.9, -52.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 182.3, -52.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 181.7, -52.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 181.2, -52.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 180.7, -52.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 180.1, -52.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 179.5, -52.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 179, -52.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 178.4, -52 , 0 );


--setScaleKey( spep_1 -3 + 0, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 0, 1, 4.55, 4.55 );
setScaleKey( spep_1 + 1, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 2, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 3, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 4, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 5, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 6, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 10, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 14, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 20, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 24, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 26, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 32, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 34, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 36, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 42, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 46, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 50, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 54, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 56, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 60, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 64, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 66, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 70, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 72, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 76, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 78, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 82, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 86, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 88, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 92, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 96, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 98, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 108, 1, 2.47, 2.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 108, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 84 );

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1); --顔カットイン

SE003 = playSeVer2( spep_1 + 100, 1004, "", 0, 0, 0, -1); --地面に足突っ込む

SE004 = playSeVer2( spep_1 + 126, 1169, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE004, 85 );

SE005 = playSeVer2( spep_1 + 126, 1153, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE005, 77 );

SE006 = playSeVer2( spep_1 + 126, 1017, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE006, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 148; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );

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
spep_2 = spep_1 + 160 -4;



-------------------------------------------------
-- 地面から蹴り（56F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --地面から蹴り（手前・味方）
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 56 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 56 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 56 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 56 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 56 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --地面から蹴り（奥・味方）
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 56 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 56 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 56 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 56 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 56 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 -2 + 2, 1, 42.3, -126.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 50.9, -120.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 59.7, -114.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 68.3, -108.8 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 3.97, 3.97 );
setScaleKey( spep_2 -3 + 4, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_2 -3 + 8, 1, 3.41, 3.41 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 56, 1, 0 );

changeAnime( spep_2 -3 + 18, 1, 106 );

setMoveKey( spep_2 -3 + 10, 1, 68.7, -108.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 69.1, -108.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 69.6, -107.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 70, -107.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 79.7, -81.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 95, 1.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 137.1, 50.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 119.4, 19.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 129.5, 51.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 139.3, 71.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 109.3, 31.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 127.1, 79.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 148.7, 50.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 114.3, 57.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 131.7, 68.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 133, 71.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 134.3, 73.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 135.5, 75.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 136.5, 77.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 137.5, 79 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 138.3, 80.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 139.1, 81.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 139.7, 82.2 , 0 );
setMoveKey( spep_2 -4 + 56, 1, 139.7, 82.2 , 0 );

setScaleKey( spep_2 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 12, 1, 3.39, 3.39 );
setScaleKey( spep_2 -3 + 14, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 17, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 18, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 20, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 24, 1, 3.28, 3.28 );
setScaleKey( spep_2 -3 + 26, 1, 3.25, 3.25 );
setScaleKey( spep_2 -3 + 28, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 30, 1, 3.2, 3.2 );
setScaleKey( spep_2 -3 + 32, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 34, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 36, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 40, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 42, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 44, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 46, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 48, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 50, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 52, 1, 3.01, 3.01 );
setScaleKey( spep_2 -3 + 54, 1, 3, 3 );
setScaleKey( spep_2 -4 + 56, 1, 3, 3 );

setRotateKey( spep_2 -3 + 17, 1, 0 );
setRotateKey( spep_2 -3 + 18, 1, -61.2 );
setRotateKey( spep_2 -3 + 20, 1, -61.2 );
setRotateKey( spep_2 -3 + 22, 1, -60 );
setRotateKey( spep_2 -3 + 24, 1, -58.9 );
setRotateKey( spep_2 -3 + 26, 1, -57.9 );
setRotateKey( spep_2 -3 + 28, 1, -57 );
setRotateKey( spep_2 -3 + 30, 1, -56 );
setRotateKey( spep_2 -3 + 32, 1, -55.2 );
setRotateKey( spep_2 -3 + 34, 1, -54.4 );
setRotateKey( spep_2 -3 + 36, 1, -53.6 );
setRotateKey( spep_2 -3 + 38, 1, -52.9 );
setRotateKey( spep_2 -3 + 40, 1, -52.3 );
setRotateKey( spep_2 -3 + 42, 1, -51.7 );
setRotateKey( spep_2 -3 + 44, 1, -51.2 );
setRotateKey( spep_2 -3 + 46, 1, -50.7 );
setRotateKey( spep_2 -3 + 48, 1, -50.3 );
setRotateKey( spep_2 -3 + 50, 1, -50 );
setRotateKey( spep_2 -3 + 52, 1, -49.7 );
setRotateKey( spep_2 -3 + 54, 1, -49.4 );
setRotateKey( spep_2 -3 + 56, 1, -49.4 );


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE007, 84 );

SE008 = playSeVer2( spep_2 + 10, 20, "", 0, 0, 0, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE008, 83 );

SE009 = playSeVer2( spep_2 + 10, 1049, "",spep_2 + 38, 0, 18, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE009, 74 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 56 -4;

-------------------------------------------------
-- 蹴りと頭突き（172F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0); --蹴りと頭突き（手前・味方）
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 172 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 172 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 172 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 172 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 172 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0); --蹴りと頭突き（奥・味方）
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 172 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 172 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 172 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 172 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 172 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 82, 1, 1 );
setDisp( spep_3 -3 + 152, 1, 0 );

changeAnime( spep_3 -3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 88, 1, 108 );
changeAnime( spep_3 -3 + 148, 1, 107 );


setMoveKey( spep_3 -3 + 82, 1, 78, 78.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 85.7, 73.5 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 93.7, 68.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 57.8, 37.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 76, 48.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 54.4, 35.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 50.7, 52.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 61, 13.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 37.3, 44.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 45.5, 19.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 53.9, 39.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 34.5, 39.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 38.5, 22.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 38.8, 31.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 35.2, 27 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 32.4, 25.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 29.9, 24.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 27.1, 23.3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 24.3, 21.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 34.5, 19.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 45, 18.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 55.1, 16.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 65.5, 14.4 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 98.1, 42.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 46.3, -21.9 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 70.8, 38.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 112.9, -19.5 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 137.5, 28.5 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 126.1, -15.5 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 102.6, 0.2 , 0 );
setMoveKey( spep_3 -3 + 147, 1, 159.2, -19.7 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 397.4, 318.5 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 540.2, 377.2 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 992.1, 725.5 , 0 );


setScaleKey( spep_3 -3 + 82, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 84, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 87, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 88, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 96, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 98, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 102, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 106, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 108, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 110, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 112, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 116, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 118, 1, 2.7, 2.7 );
setScaleKey( spep_3 -3 + 120, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 122, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 124, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 126, 1, 3.22, 3.22 );
setScaleKey( spep_3 -3 + 128, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 130, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 132, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 134, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 136, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 138, 1, 3.72, 3.72 );
setScaleKey( spep_3 -3 + 140, 1, 3.72, 3.72 );
setScaleKey( spep_3 -3 + 142, 1, 3.73, 3.73 );
setScaleKey( spep_3 -3 + 144, 1, 3.74, 3.74 );
setScaleKey( spep_3 -3 + 147, 1, 3.75, 3.75 );
setScaleKey( spep_3 -3 + 148, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 150, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 152, 1, 4.63, 4.63 );

setRotateKey( spep_3 -3 + 82, 1, -47.4 );
setRotateKey( spep_3 -3 + 87, 1, -47.4 );
setRotateKey( spep_3 -3 + 88, 1, 0 );
setRotateKey( spep_3 -3 + 147, 1, 0 );
setRotateKey( spep_3 -3 + 148, 1, -31.7 );
setRotateKey( spep_3 -3 + 152, 1, -31.7 );


-- ** 音 ** --
SE010 = playSeVer2( spep_3 + 56, 1321, "",spep_3 + 98, 6, 10, 0.5); --足伸びる
setStartTimeMs( SE010,  1150 );

SE011 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 48, 0, 20, -1); --地面から足抜く

SE012 = playSeVer2( spep_3 + 36, 1003, "", 0, 0, 0, -1); --助走

SE013 = playSeVer2( spep_3 + 56, 1177, "",spep_3 + 98, 0, 10, -1); --足伸びる
setSeVolumeByWorkId( spep_3 + 56, SE013, 82 );

SE014 = playSeVer2( spep_3 + 58, 1027, "",spep_3 + 98, 0, 10, -1); --足伸びる
setSeVolumeByWorkId( spep_3 + 58, SE014, 84 );

SE015 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1); --キックヒット
setSeVolumeByWorkId( spep_3 + 82, SE015, 87 );

SE016 = playSeVer2( spep_3 + 82, 1187, "",spep_3 + 134, 0, 30, -1); --キックヒット
setSeVolumeByWorkId( spep_3 + 82, SE016, 87 );

SE017 = playSeVer2( spep_3 + 106, 1320, "",spep_3 + 150, 8, 18, 0.5); --ブウ近づく
setSeVolumeByWorkId( spep_3 + 106, SE017, 112 );
setStartTimeMs( SE017,  400 );
setPitch( spep_3 + 106, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );

SE018 = playSeVer2( spep_3 + 128, 1153, "", 0, 0, 0, -1); --頭突き
setSeVolumeByWorkId( spep_3 + 128, SE018, 81 );

SE019 = playSeVer2( spep_3 + 128, 1120, "", 0, 0, 0, -1); --頭突き


-- ** 次の準備 ** --
spep_4 = spep_3 + 172 -4;

-------------------------------------------------
-- 壁に激突（72F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0); --壁に激突（手前・味方）
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 72 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 72 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 72 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 72 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 72 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --壁に激突（奥・味方）
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 72 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 72 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 72 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 72 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 72 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 4, 1, 1 );
setDisp( spep_4 -3 + 20, 1, 0 );

changeAnime( spep_4 -3 + 4, 1, 5 );

setMoveKey( spep_4 -3 + 4, 1, -76.5, -1467.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -66.5, -446.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -40.5, -270.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -28, -185.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -18.3, -120.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -11.4, -73.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -7.3, -46.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -6, -36.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -5.5, -30.0 , 0 );

setScaleKey( spep_4 -3 + 4, 1, 17.81, 17.81 );
setScaleKey( spep_4 -3 + 6, 1, 6.49, 6.49 );
setScaleKey( spep_4 -3 + 8, 1, 3.93, 3.93 );
setScaleKey( spep_4 -3 + 10, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_4 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 20, 1, 0.45, 0.45 );

setRotateKey( spep_4 -3 + 4, 1, 32.7 );
setRotateKey( spep_4 -3 + 20, 1, 32.7 );


-- ** 音 ** --
SE020 = playSeVer2( spep_4 + 0 -6, 1121, "",spep_4 + 48, 0, 24, -1); --敵飛んでいく

SE021 = playSeVer2( spep_4 + 24, 1159, "",spep_4 + 204, 0, 68, -1); --崖激突

SE022 = playSeVer2( spep_4 + 24, 1011, "", 0, 0, 0, -1); --崖激突


-- ** 次の準備 ** --
spep_5 = spep_4 + 72 -4;

-------------------------------------------------
-- 気弾ためる（388F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --気弾ためる（共有）
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 388 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 388 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 388 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 388 -5, base5, 255);
setEffAlphaKey( spep_5 + 388 -4, base5, 0);


-- ** 音 ** --
SE023 = playSeVer2( spep_5 + 0, 37, "",spep_5 + 34, 0, 18, 1.0); --笑う
setPitch( spep_5 + 0, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );

SE024 = playSeVer2( spep_5 + 20, 37, "",spep_5 + 54, 0, 16, 1.0); --笑う
setPitch( spep_5 + 20, SE024, -800 );
setTimeStretch( SE024, 0.47, 30, 4 );

SE025 = playSeVer2( spep_5 + 40, 37, "",spep_5 + 72, 0, 16, 1.0); --笑う
setPitch( spep_5 + 40, SE025, -800 );
setTimeStretch( SE025, 0.47, 30, 4 );

SE026 = playSeVer2( spep_5 + 70, 1004, "", 0, 0, 0, -1); --腕まわす

SE027 = playSeVer2( spep_5 + 110, 1329, "",spep_5 + 366, 16, 36, -1); --気弾溜め
setSeVolumeByWorkId( spep_5 + 110, SE027, 83 );
setStartTimeMs( SE027,  767 );

SE028 = playSeVer2( spep_5 + 86, 1233, "", 0, 0, 0, -1); --手合わせる

SE029 = playSeVer2( spep_5 + 98, 1006, "", 0, 0, 0, -1); --手合わせる

SE030 = playSeVer2( spep_5 + 98, 1248, "",spep_5 + 194, 0, 22, 0.6); --気弾溜め

SE031 = playSeVer2( spep_5 + 128, 1265, "", 0, 0, 0, -1); --気弾溜め

SE032 = playSeVer2( spep_5 + 184, 1276, "",spep_5 + 234, 0, 24, -1); --気弾大きくなる
setPitch( spep_5 + 184, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );

SE033 = playSeVer2( spep_5 + 184, 1224, "", 0, 0, 0, 0.6); --気弾大きくなる
setPitch( spep_5 + 184, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );

SE034 = playSeVer2( spep_5 + 184, 1291, "", 0, 0, 0, -1); --気弾大きくなる
setSeVolumeByWorkId( spep_5 + 184, SE034, 64 );

SE035 = playSeVer2( spep_5 + 252, 1312, "", 0, 8, 0, -1); --気弾さらに大きく
setSeVolumeByWorkId( spep_5 + 252, SE035, 136 );
setStartTimeMs( SE035,  133 );

SE036 = playSeVer2( spep_5 + 246, 1011, "",spep_5 + 316, 0, 46, -1); --気弾さらに大きく

SE037 = playSeVer2( spep_5 + 246, 1190, "",spep_5 + 292, 0, 32, -1); --気弾さらに大きく
setPitch( spep_5 + 246, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );

SE038 = playSeVer2( spep_5 + 258, 1072, "", 0, 0, 0, -1); --画面遷移

SE039 = playSeVer2( spep_5 + 280, 1281, "",spep_5 + 338, 0, 14, -1); --頭上溜め
setSeVolumeByWorkId( spep_5 + 280, SE039, 85 );
setPitch( spep_5 + 280, SE039, -500 );
setTimeStretch( SE039, 0.67, 30, 4 );

SE040 = playSeVer2( spep_5 + 322, 1177, "",spep_5 + 394, 0, 8, -1); --気弾発射

SE041 = playSeVer2( spep_5 + 324, 1193, "",spep_5 + 394, 0, 8, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE041, 87 );

SE042 = playSeVer2( spep_5 + 324, 1027, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE042, 80 );

SE043 = playSeVer2( spep_5 + 324, 1153, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE043, 79 );


-- ** 次の準備 ** --
spep_c = spep_5 + 388 -4;

-------------------------------------------------
--カードカットイン（94）
-------------------------------------------------

-- ** カードカットイン ** --
--speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speffc, 1, 1);
--setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
--setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_c + 94;

-------------------------------------------------
-- 気弾を放つ（62F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0); --気弾を放つ（共有）
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 62 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 62 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 62 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 62 -5, base6, 255);
setEffAlphaKey( spep_6 + 62 -4, base6, 0);


-- ** 音 ** --
SE045 = playSeVer2( spep_6 + 0, 1193, "",spep_6 + 180, 8, 52, 0.6); --気弾飛んでいく
setSeVolumeByWorkId( spep_6 + 0, SE045, 141 );
setStartTimeMs( SE045,  400 );

SE046 = playSeVer2( spep_6 + 0, 1161, "",spep_6 + 180, 0, 52, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_6 + 0, SE046, 75 );

SE047 = playSeVer2( spep_6 + 0, 1226, "",spep_6 + 180, 0, 52, -1); --気弾飛んでいく

SE048 = playSeVer2( spep_6 + 0, 1142, "", 0, 0, 0, -1); --気弾飛んでいく


-- ** 次の準備 ** --
spep_7 = spep_6 + 62 -4;

-------------------------------------------------
-- 気弾が爆発～フィニッシュ（258F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0); --気弾が爆発～フィニッシュ（味方）
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 258 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 258 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 258 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 258 -5, base7, 255);
setEffAlphaKey( spep_7 + 258 -4, base7, 0);


-- ** 音 ** --
SE049 = playSeVer2( spep_7 + 0, 1021, "", 0, 0, 0, -1); --気弾向かっていく

SE050 = playSeVer2( spep_7 + 18, 1159, "", 0, 0, 0, -1); --気弾崖激突
setSeVolumeByWorkId( spep_7 + 18, SE050, 79 );

SE051 = playSeVer2( spep_7 + 32, 1024, "", 0, 0, 0, -1); --気弾崖激突
setSeVolumeByWorkId( spep_7 + 32, SE051, 86 );

SE052 = playSeVer2( spep_7 + 66, 1027, "", 0, 0, 0, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_7 + 66, SE052, 75 );

SE053 = playSeVer2( spep_7 + 66, 1145, "", 0, 0, 0, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_7 + 66, SE053, 78 );

SE054 = playSeVer2( spep_7 + 96, 1069, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 96, SE054, 87 );

SE055 = playSeVer2( spep_7 + 110, 1023, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 110, SE055, 90 );

SE056 = playSeVer2( spep_7 + 116, 1067, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 116, SE056, 91 );


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 116);
endPhase( spep_7 + 258 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 向かい合う～カットイン(160F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --向かい合う～カットイン （手前・共有）
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 160 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 160 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 160 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --向かい合う～カットイン （奥・共有）
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 160 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 160 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 160 -4, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40+20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40+20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80+20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 敵キャラクター ** --

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 108 -3, 1, 0);

changeAnime( spep_1 + 0, 1, 118 );

--setMoveKey( spep_1 -3 + 0, 1, 526.3, -87.9 , 0 );
setMoveKey( spep_1 + 0, 1, 472.2, -82.4 , 0 );
setMoveKey( spep_1 + 1, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 2, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 3, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 4, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 5, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 + 6, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 258.2, -60.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 204.6, -54.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 204.1, -54.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 203.5, -54.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 202.9, -54.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 202.4, -54.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.8, -54.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.2, -54.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 200.7, -54.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 200.1, -54.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 199.6, -54.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 199, -54.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 198.5, -54.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 197.9, -54 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 197.3, -54 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 196.8, -53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 196.2, -53.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 195.7, -53.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 195.1, -53.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 194.5, -53.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 194, -53.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 193.5, -53.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.9, -53.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 192.3, -53.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.8, -53.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 191.2, -53.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 190.6, -53.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 190.1, -53.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 189.6, -53.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 189, -53.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 188.4, -53 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 187.9, -53 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 187.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 186.8, -52.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 186.2, -52.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 185.7, -52.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 185.1, -52.7 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 184.5, -52.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 184, -52.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 183.4, -52.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 182.9, -52.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 182.3, -52.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 181.7, -52.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 181.2, -52.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 180.7, -52.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 180.1, -52.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 179.5, -52.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 179, -52.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 178.4, -52 , 0 );


--setScaleKey( spep_1 -3 + 0, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 0, 1, 4.55, 4.55 );
setScaleKey( spep_1 + 1, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 2, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 3, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 4, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 5, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 6, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 10, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 14, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 20, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 24, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 26, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 32, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 34, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 36, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 42, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 46, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 50, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 54, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 56, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 60, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 64, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 66, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 70, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 72, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 76, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 78, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 82, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 86, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 88, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 92, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 96, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 98, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 108, 1, 2.47, 2.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 108, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 84 );

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1); --顔カットイン

SE003 = playSeVer2( spep_1 + 100, 1004, "", 0, 0, 0, -1); --地面に足突っ込む

SE004 = playSeVer2( spep_1 + 126, 1169, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE004, 85 );

SE005 = playSeVer2( spep_1 + 126, 1153, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE005, 77 );

SE006 = playSeVer2( spep_1 + 126, 1017, "", 0, 0, 0, -1); --地面に足突っ込む
setSeVolumeByWorkId( spep_1 + 126, SE006, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 148; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );

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
spep_2 = spep_1 + 160 -4;



-------------------------------------------------
-- 地面から蹴り（56F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_12, 0x100, -1, 0, 0, 0); --地面から蹴り（手前・味方）
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 56 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 56 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 56 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 56 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 56 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_13, 0x80, -1, 0, 0, 0); --地面から蹴り（奥・味方）
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 56 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 56 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 56 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 56 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 56 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 -2 + 2, 1, 42.3, -126.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 50.9, -120.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 59.7, -114.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 68.3, -108.8 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 3.97, 3.97 );
setScaleKey( spep_2 -3 + 4, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_2 -3 + 8, 1, 3.41, 3.41 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 56, 1, 0 );

changeAnime( spep_2 -3 + 18, 1, 106 );

setMoveKey( spep_2 -3 + 10, 1, 68.7, -108.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 69.1, -108.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 69.6, -107.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 70, -107.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 79.7, -81.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 95, 1.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 137.1, 50.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 119.4, 19.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 129.5, 51.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 139.3, 71.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 109.3, 31.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 127.1, 79.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 148.7, 50.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 114.3, 57.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 131.7, 68.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 133, 71.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 134.3, 73.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 135.5, 75.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 136.5, 77.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 137.5, 79 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 138.3, 80.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 139.1, 81.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 139.7, 82.2 , 0 );
setMoveKey( spep_2 -4 + 56, 1, 139.7, 82.2 , 0 );

setScaleKey( spep_2 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 12, 1, 3.39, 3.39 );
setScaleKey( spep_2 -3 + 14, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 17, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 18, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 20, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 24, 1, 3.28, 3.28 );
setScaleKey( spep_2 -3 + 26, 1, 3.25, 3.25 );
setScaleKey( spep_2 -3 + 28, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 30, 1, 3.2, 3.2 );
setScaleKey( spep_2 -3 + 32, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 34, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 36, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 40, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 42, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 44, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 46, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 48, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 50, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 52, 1, 3.01, 3.01 );
setScaleKey( spep_2 -3 + 54, 1, 3, 3 );
setScaleKey( spep_2 -4 + 56, 1, 3, 3 );

setRotateKey( spep_2 -3 + 17, 1, 0 );
setRotateKey( spep_2 -3 + 18, 1, -61.2 );
setRotateKey( spep_2 -3 + 20, 1, -61.2 );
setRotateKey( spep_2 -3 + 22, 1, -60 );
setRotateKey( spep_2 -3 + 24, 1, -58.9 );
setRotateKey( spep_2 -3 + 26, 1, -57.9 );
setRotateKey( spep_2 -3 + 28, 1, -57 );
setRotateKey( spep_2 -3 + 30, 1, -56 );
setRotateKey( spep_2 -3 + 32, 1, -55.2 );
setRotateKey( spep_2 -3 + 34, 1, -54.4 );
setRotateKey( spep_2 -3 + 36, 1, -53.6 );
setRotateKey( spep_2 -3 + 38, 1, -52.9 );
setRotateKey( spep_2 -3 + 40, 1, -52.3 );
setRotateKey( spep_2 -3 + 42, 1, -51.7 );
setRotateKey( spep_2 -3 + 44, 1, -51.2 );
setRotateKey( spep_2 -3 + 46, 1, -50.7 );
setRotateKey( spep_2 -3 + 48, 1, -50.3 );
setRotateKey( spep_2 -3 + 50, 1, -50 );
setRotateKey( spep_2 -3 + 52, 1, -49.7 );
setRotateKey( spep_2 -3 + 54, 1, -49.4 );
setRotateKey( spep_2 -3 + 56, 1, -49.4 );


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE007, 84 );

SE008 = playSeVer2( spep_2 + 10, 20, "", 0, 0, 0, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE008, 83 );

SE009 = playSeVer2( spep_2 + 10, 1049, "",spep_2 + 38, 0, 18, -1); --地面から蹴る
setSeVolumeByWorkId( spep_2 + 10, SE009, 74 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 56 -4;

-------------------------------------------------
-- 蹴りと頭突き（172F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_14, 0x100, -1, 0, 0, 0); --蹴りと頭突き（手前・味方）
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 172 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 172 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 172 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 172 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 172 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_15, 0x80, -1, 0, 0, 0); --蹴りと頭突き（奥・味方）
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 172 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 172 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 172 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 172 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 172 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 82, 1, 1 );
setDisp( spep_3 -3 + 152, 1, 0 );

changeAnime( spep_3 -3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 88, 1, 108 );
changeAnime( spep_3 -3 + 148, 1, 107 );


setMoveKey( spep_3 -3 + 82, 1, 78, 78.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 85.7, 73.5 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 93.7, 68.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 57.8, 37.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 76, 48.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 54.4, 35.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 50.7, 52.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 61, 13.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 37.3, 44.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 45.5, 19.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 53.9, 39.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 34.5, 39.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 38.5, 22.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 38.8, 31.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 35.2, 27 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 32.4, 25.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 29.9, 24.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 27.1, 23.3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 24.3, 21.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 34.5, 19.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 45, 18.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 55.1, 16.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 65.5, 14.4 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 98.1, 42.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 46.3, -21.9 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 70.8, 38.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 112.9, -19.5 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 137.5, 28.5 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 126.1, -15.5 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 102.6, 0.2 , 0 );
setMoveKey( spep_3 -3 + 147, 1, 159.2, -19.7 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 397.4, 318.5 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 540.2, 377.2 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 992.1, 725.5 , 0 );


setScaleKey( spep_3 -3 + 82, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 84, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 87, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 88, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 96, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 98, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 102, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 106, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 108, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 110, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 112, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 116, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 118, 1, 2.7, 2.7 );
setScaleKey( spep_3 -3 + 120, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 122, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 124, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 126, 1, 3.22, 3.22 );
setScaleKey( spep_3 -3 + 128, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 130, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 132, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 134, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 136, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 138, 1, 3.72, 3.72 );
setScaleKey( spep_3 -3 + 140, 1, 3.72, 3.72 );
setScaleKey( spep_3 -3 + 142, 1, 3.73, 3.73 );
setScaleKey( spep_3 -3 + 144, 1, 3.74, 3.74 );
setScaleKey( spep_3 -3 + 147, 1, 3.75, 3.75 );
setScaleKey( spep_3 -3 + 148, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 150, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 152, 1, 4.63, 4.63 );

setRotateKey( spep_3 -3 + 82, 1, -47.4 );
setRotateKey( spep_3 -3 + 87, 1, -47.4 );
setRotateKey( spep_3 -3 + 88, 1, 0 );
setRotateKey( spep_3 -3 + 147, 1, 0 );
setRotateKey( spep_3 -3 + 148, 1, -31.7 );
setRotateKey( spep_3 -3 + 152, 1, -31.7 );


-- ** 音 ** --
SE010 = playSeVer2( spep_3 + 56, 1321, "",spep_3 + 98, 6, 10, 0.5); --足伸びる
setStartTimeMs( SE010,  1150 );

SE011 = playSeVer2( spep_3 + 10, 1153, "",spep_3 + 48, 0, 20, -1); --地面から足抜く

SE012 = playSeVer2( spep_3 + 36, 1003, "", 0, 0, 0, -1); --助走

SE013 = playSeVer2( spep_3 + 56, 1177, "",spep_3 + 98, 0, 10, -1); --足伸びる
setSeVolumeByWorkId( spep_3 + 56, SE013, 82 );

SE014 = playSeVer2( spep_3 + 58, 1027, "",spep_3 + 98, 0, 10, -1); --足伸びる
setSeVolumeByWorkId( spep_3 + 58, SE014, 84 );

SE015 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1); --キックヒット
setSeVolumeByWorkId( spep_3 + 82, SE015, 87 );

SE016 = playSeVer2( spep_3 + 82, 1187, "",spep_3 + 134, 0, 30, -1); --キックヒット
setSeVolumeByWorkId( spep_3 + 82, SE016, 87 );

SE017 = playSeVer2( spep_3 + 106, 1320, "",spep_3 + 150, 8, 18, 0.5); --ブウ近づく
setSeVolumeByWorkId( spep_3 + 106, SE017, 112 );
setStartTimeMs( SE017,  400 );
setPitch( spep_3 + 106, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );

SE018 = playSeVer2( spep_3 + 128, 1153, "", 0, 0, 0, -1); --頭突き
setSeVolumeByWorkId( spep_3 + 128, SE018, 81 );

SE019 = playSeVer2( spep_3 + 128, 1120, "", 0, 0, 0, -1); --頭突き


-- ** 次の準備 ** --
spep_4 = spep_3 + 172 -4;

-------------------------------------------------
-- 壁に激突（72F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_16, 0x100, -1, 0, 0, 0); --壁に激突（手前・味方）
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 72 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 72 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 72 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 72 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 72 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_17, 0x80, -1, 0, 0, 0); --壁に激突（奥・味方）
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 72 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 72 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 72 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 72 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 72 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 4, 1, 1 );
setDisp( spep_4 -3 + 20, 1, 0 );

changeAnime( spep_4 -3 + 4, 1, 5 );

setMoveKey( spep_4 -3 + 4, 1, -76.5, -1467.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -66.5, -446.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -40.5, -270.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -28, -185.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -18.3, -120.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -11.4, -73.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -7.3, -46.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -6, -36.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -5.5, -30.0 , 0 );

setScaleKey( spep_4 -3 + 4, 1, 17.81, 17.81 );
setScaleKey( spep_4 -3 + 6, 1, 6.49, 6.49 );
setScaleKey( spep_4 -3 + 8, 1, 3.93, 3.93 );
setScaleKey( spep_4 -3 + 10, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_4 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 20, 1, 0.45, 0.45 );

setRotateKey( spep_4 -3 + 4, 1, 32.7 );
setRotateKey( spep_4 -3 + 20, 1, 32.7 );


-- ** 音 ** --
SE020 = playSeVer2( spep_4 + 0 -6, 1121, "",spep_4 + 48, 0, 24, -1); --敵飛んでいく

SE021 = playSeVer2( spep_4 + 24, 1159, "",spep_4 + 204, 0, 68, -1); --崖激突

SE022 = playSeVer2( spep_4 + 24, 1011, "", 0, 0, 0, -1); --崖激突


-- ** 次の準備 ** --
spep_5 = spep_4 + 72 -4;

-------------------------------------------------
-- 気弾ためる（388F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --気弾ためる（共有）
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 388 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 388 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 388 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 388 -5, base5, 255);
setEffAlphaKey( spep_5 + 388 -4, base5, 0);


-- ** 音 ** --
SE023 = playSeVer2( spep_5 + 0, 37, "",spep_5 + 34, 0, 18, 1.0); --笑う
setPitch( spep_5 + 0, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );

SE024 = playSeVer2( spep_5 + 20, 37, "",spep_5 + 54, 0, 16, 1.0); --笑う
setPitch( spep_5 + 20, SE024, -800 );
setTimeStretch( SE024, 0.47, 30, 4 );

SE025 = playSeVer2( spep_5 + 40, 37, "",spep_5 + 72, 0, 16, 1.0); --笑う
setPitch( spep_5 + 40, SE025, -800 );
setTimeStretch( SE025, 0.47, 30, 4 );

SE026 = playSeVer2( spep_5 + 70, 1004, "", 0, 0, 0, -1); --腕まわす

SE027 = playSeVer2( spep_5 + 110, 1329, "",spep_5 + 366, 16, 36, -1); --気弾溜め
setSeVolumeByWorkId( spep_5 + 110, SE027, 83 );
setStartTimeMs( SE027,  767 );

SE028 = playSeVer2( spep_5 + 86, 1233, "", 0, 0, 0, -1); --手合わせる

SE029 = playSeVer2( spep_5 + 98, 1006, "", 0, 0, 0, -1); --手合わせる

SE030 = playSeVer2( spep_5 + 98, 1248, "",spep_5 + 194, 0, 22, 0.6); --気弾溜め

SE031 = playSeVer2( spep_5 + 128, 1265, "", 0, 0, 0, -1); --気弾溜め

SE032 = playSeVer2( spep_5 + 184, 1276, "",spep_5 + 234, 0, 24, -1); --気弾大きくなる
setPitch( spep_5 + 184, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );

SE033 = playSeVer2( spep_5 + 184, 1224, "", 0, 0, 0, 0.6); --気弾大きくなる
setPitch( spep_5 + 184, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );

SE034 = playSeVer2( spep_5 + 184, 1291, "", 0, 0, 0, -1); --気弾大きくなる
setSeVolumeByWorkId( spep_5 + 184, SE034, 64 );

SE035 = playSeVer2( spep_5 + 252, 1312, "", 0, 8, 0, -1); --気弾さらに大きく
setSeVolumeByWorkId( spep_5 + 252, SE035, 136 );
setStartTimeMs( SE035,  133 );

SE036 = playSeVer2( spep_5 + 246, 1011, "",spep_5 + 316, 0, 46, -1); --気弾さらに大きく

SE037 = playSeVer2( spep_5 + 246, 1190, "",spep_5 + 292, 0, 32, -1); --気弾さらに大きく
setPitch( spep_5 + 246, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );

SE038 = playSeVer2( spep_5 + 258, 1072, "", 0, 0, 0, -1); --画面遷移

SE039 = playSeVer2( spep_5 + 280, 1281, "",spep_5 + 338, 0, 14, -1); --頭上溜め
setSeVolumeByWorkId( spep_5 + 280, SE039, 85 );
setPitch( spep_5 + 280, SE039, -500 );
setTimeStretch( SE039, 0.67, 30, 4 );

SE040 = playSeVer2( spep_5 + 322, 1177, "",spep_5 + 394, 0, 8, -1); --気弾発射

SE041 = playSeVer2( spep_5 + 324, 1193, "",spep_5 + 394, 0, 8, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE041, 87 );

SE042 = playSeVer2( spep_5 + 324, 1027, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE042, 80 );

SE043 = playSeVer2( spep_5 + 324, 1153, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_5 + 324, SE043, 79 );


-- ** 次の準備 ** --
spep_c = spep_5 + 388 -4;

-------------------------------------------------
--カードカットイン（94）
-------------------------------------------------

-- ** カードカットイン ** --
speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_c + 0, SE_05);

-- ** 次の準備 ** --
spep_6 = spep_c + 94;

-------------------------------------------------
-- 気弾を放つ（62F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0); --気弾を放つ（共有）
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 62 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 62 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 62 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 62 -5, base6, 255);
setEffAlphaKey( spep_6 + 62 -4, base6, 0);


-- ** 音 ** --
SE045 = playSeVer2( spep_6 + 0, 1193, "",spep_6 + 180, 8, 52, 0.6); --気弾飛んでいく
setSeVolumeByWorkId( spep_6 + 0, SE045, 141 );
setStartTimeMs( SE045,  400 );

SE046 = playSeVer2( spep_6 + 0, 1161, "",spep_6 + 180, 0, 52, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_6 + 0, SE046, 75 );

SE047 = playSeVer2( spep_6 + 0, 1226, "",spep_6 + 180, 0, 52, -1); --気弾飛んでいく

SE048 = playSeVer2( spep_6 + 0, 1142, "", 0, 0, 0, -1); --気弾飛んでいく


-- ** 次の準備 ** --
spep_7 = spep_6 + 62 -4;

-------------------------------------------------
-- 気弾が爆発～フィニッシュ（258F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_18, 0x80, -1, 0, 0, 0); --気弾が爆発～フィニッシュ（味方）
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 258 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 258 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 258 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 258 -5, base7, 255);
setEffAlphaKey( spep_7 + 258 -4, base7, 0);


-- ** 音 ** --
SE049 = playSeVer2( spep_7 + 0, 1021, "", 0, 0, 0, -1); --気弾向かっていく

SE050 = playSeVer2( spep_7 + 18, 1159, "", 0, 0, 0, -1); --気弾崖激突
setSeVolumeByWorkId( spep_7 + 18, SE050, 79 );

SE051 = playSeVer2( spep_7 + 32, 1024, "", 0, 0, 0, -1); --気弾崖激突
setSeVolumeByWorkId( spep_7 + 32, SE051, 86 );

SE052 = playSeVer2( spep_7 + 66, 1027, "", 0, 0, 0, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_7 + 66, SE052, 75 );

SE053 = playSeVer2( spep_7 + 66, 1145, "", 0, 0, 0, -1); --気弾飛んでいく
setSeVolumeByWorkId( spep_7 + 66, SE053, 78 );

SE054 = playSeVer2( spep_7 + 96, 1069, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 96, SE054, 87 );

SE055 = playSeVer2( spep_7 + 110, 1023, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 110, SE055, 90 );

SE056 = playSeVer2( spep_7 + 116, 1067, "", 0, 0, 0, -1); --ラスト爆発
setSeVolumeByWorkId( spep_7 + 116, SE056, 91 );


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 116);
endPhase( spep_7 + 258 -8);


end
