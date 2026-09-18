--1026070:トランクス(青年期)&孫悟天(青年期)_フュージョン
--sp_effect_b1_00237

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

--エフェクト(味方)
SP_01 = 161231; --背後カットで中央と奥に小さく敵がいるカット　力を込める様に脇を締める    ef_001
SP_02 = 161232; --背後カットで中央と奥に小さく敵がいるカット　力を込める様に脇を締める    ef_001_b
SP_03 = 161233; --フュージョンする二人正面からのカット    ef_002
SP_04 = 161234; --フュージョンする二人の手をアップ  ef_003
SP_05 = 161235; --フュージョン失敗ゴテンクスの足元UPからズームアウトで中心に全身    ef_004
SP_06 = 161236; --突撃しに行く    ef_005
SP_07 = 161237; --敵に殴られる    ef_006
SP_08 = 161238; --敵に殴られる    ef_006_b
SP_09 = 161239; --18号に殴られる   ef_007
SP_10 = 161240; --ガンマ2号に蹴られる      ef_008
SP_11 = 161241; --ゴテンクスが回る     ef_009
SP_12 = 161242; --ガンマ1号に撃ち落される  ef_010
SP_13 = 161243; --敵めがけて落ちていく      ef_011
SP_14 = 161244; --敵めがけて落ちていく      ef_011_b
SP_15 = 161245; --落下するゴテンクス ef_012
SP_16 = 161246; --敵に上からぶつかり頭突き      ef_013
SP_17 = 161247; --敵に上からぶつかり頭突き      ef_013_b
SP_18 = 161248; --頭突きが敵にめり込む    ef_014
SP_19 = 161249; --頭突きが敵にめり込む    ef_014_b
SP_20 = 161250; --爆発で吹き飛んでくる    ef_015
SP_21 = 161251; --爆発で吹き飛んでくる    ef_015_b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------
--背後カットで中央と奥に小さく敵がいるカット　力を込める様に脇を締める
-------------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
side_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, side_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 54, side_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, side_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 54, side_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, side_f, 0 );
setEffRotateKey( spep_0 + 54, side_f, 0 );
setEffAlphaKey( spep_0 + 0, side_f, 255 );
setEffAlphaKey( spep_0 + 54, side_f, 255 );
setEffAlphaKey( spep_0 + 55, side_f, 0 );
setEffAlphaKey( spep_0 + 56, side_f, 0 );

-- ** エフェクト等 ** --
side_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, side_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 54, side_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, side_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 54, side_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, side_b, 0 );
setEffRotateKey( spep_0 + 54, side_b, 0 );
setEffAlphaKey( spep_0 + 0, side_b, 255 );
setEffAlphaKey( spep_0 + 54, side_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 54, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setBlendColor(spep_0 + 0, 1, 3, 0, 0, 0, 0.2);
setBlendColor(spep_0 + 56, 1, 3, 0, 0, 0, 0);

a=-15;

setMoveKey( spep_0 + 0, 1, -17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, -17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 5, 1, -17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 6, 1, -16.9+a, -30.3 , 0 );
setMoveKey( spep_0-3 + 7, 1, -16.9+a, -30.3 , 0 );
setMoveKey( spep_0-3 + 8, 1, -16.4+a, -29.3 , 0 );
setMoveKey( spep_0-3 + 9, 1, -16.4+a, -29.3 , 0 );
setMoveKey( spep_0-3 + 10, 1, -15.8+a, -28.3 , 0 );
setMoveKey( spep_0-3 + 11, 1, -15.8+a, -28.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, -15.2+a, -27.2 , 0 );
setMoveKey( spep_0-3 + 13, 1, -15.2+a, -27.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, -13+a, -23.2 , 0 );
setMoveKey( spep_0-3 + 15, 1, -13+a, -23.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, -10.8+a, -19.1 , 0 );
setMoveKey( spep_0-3 + 17, 1, -10.8+a, -19.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, -8.7+a, -15.1 , 0 );
setMoveKey( spep_0-3 + 19, 1, -8.7+a, -15.1 , 0 );
setMoveKey( spep_0-3 + 20, 1, -6.5+a, -11 , 0 );
setMoveKey( spep_0-3 + 21, 1, -6.5+a, -11 , 0 );
setMoveKey( spep_0-3 + 22, 1, -4.3+a, -7 , 0 );
setMoveKey( spep_0-3 + 23, 1, -4.3+a, -7 , 0 );
setMoveKey( spep_0-3 + 24, 1, -2.1+a, -2.9 , 0 );
setMoveKey( spep_0-3 + 25, 1, -2.1+a, -2.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, -1.9+a, -2.6 , 0 );
setMoveKey( spep_0-3 + 27, 1, -1.9+a, -2.6 , 0 );
setMoveKey( spep_0-3 + 28, 1, -1.8+a, -2.3 , 0 );
setMoveKey( spep_0-3 + 29, 1, -1.8+a, -2.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, -1.7+a, -2 , 0 );
setMoveKey( spep_0-3 + 31, 1, -1.7+a, -2 , 0 );
setMoveKey( spep_0-3 + 32, 1, -1.5+a, -1.7 , 0 );
setMoveKey( spep_0 + 54, 1, -1.5+a, -1.7 , 0 );

setScaleKey( spep_0-3 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 4, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 5, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 6, 1, 0.85, 0.86 );
setScaleKey( spep_0-3 + 7, 1, 0.85, 0.86 );
setScaleKey( spep_0-3 + 8, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 9, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 11, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 13, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 14, 1, 0.7, 0.71 );
setScaleKey( spep_0-3 + 15, 1, 0.7, 0.71 );
setScaleKey( spep_0-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 17, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 18, 1, 0.53, 0.54 );
setScaleKey( spep_0-3 + 19, 1, 0.53, 0.54 );
setScaleKey( spep_0-3 + 20, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 21, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 22, 1, 0.36, 0.37 );
setScaleKey( spep_0-3 + 23, 1, 0.36, 0.37 );
setScaleKey( spep_0-3 + 24, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 25, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 27, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 29, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 54, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 54, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );

--構える
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 60 );

--白フェード
entryFade( spep_0 +46 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 + 54;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--次の準備
spep_2 = spep_1 + 94;
-------------------------------------------------------------
--フュージョンする二人正面からのカット
-------------------------------------------------------------
-- ** エフェクト等 ** --
fusion = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fusion, 0, 0, 0 );
setEffMoveKey( spep_2 + 114, fusion, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fusion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 114, fusion, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fusion, 0 );
setEffRotateKey( spep_2 + 114, fusion, 0 );
setEffAlphaKey( spep_2 + 0, fusion, 255 );
setEffAlphaKey( spep_2 + 112, fusion, 255 );
setEffAlphaKey( spep_2 + 113, fusion, 255 );
setEffAlphaKey( spep_2 + 114, fusion, 0 );

--SE
--二人駆け寄る
SE004 = playSeVer2( spep_2 + 4, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 8, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 12, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE006, 79 );
SE007 = playSeVer2( spep_2 + 14, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 18, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 20, 1107, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 24, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 28, 1108, "", 0, 0, 0, -1);

--ポーズ
SE012 = playSeVer2( spep_2 + 48, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 52, 1013, "", 0, 0, 0, -1);

--指合わせる
SE014 = playSeVer2( spep_2 + 80, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 84, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE016, 73 );

--合体
SE015 = playSeVer2( spep_2 + 96, 1200, "",spep_2 + 224, 6, 46, -1);
setStartTimeMs( SE015,  417 );
SE017 = playSeVer2( spep_2 + 96, 1264, "",spep_2 + 224, 0, 46, -1);
SE018 = playSeVer2( spep_2 + 96, 1289, "",spep_2 + 224, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 96, SE018, 75 );
setPitch( spep_2 + 96, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 114;
-------------------------------------------------------------
--フュージョンする二人の手をアップ
-------------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_3 + 50, hand, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_3 + 50, hand, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hand, 0 );
setEffRotateKey( spep_3 + 50, hand, 0 );
setEffAlphaKey( spep_3 + 0, hand, 255 );
setEffAlphaKey( spep_3 + 48, hand, 255 );
setEffAlphaKey( spep_3 + 49, hand, 255 );
setEffAlphaKey( spep_3 + 50, hand, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 50;
-------------------------------------------------------------
--フュージョン失敗ゴテンクスの足元UPからズームアウトで中心に全身
-------------------------------------------------------------
-- ** エフェクト等 ** --
failure = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, failure, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, failure, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, failure, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, failure, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, failure, 0 );
setEffRotateKey( spep_4 + 70, failure, 0 );
setEffAlphaKey( spep_4 + 0, failure, 255 );
setEffAlphaKey( spep_4 + 68, failure, 255 );
setEffAlphaKey( spep_4 + 69, failure, 255 );
setEffAlphaKey( spep_4 + 70, failure, 0 );

--SE
--風音
SE019 = playSeVer2( spep_4 + 0 -10, 1259, "",spep_4 + 130, 0, 74, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 70;
-------------------------------------------------------------
--突撃しに行く
-------------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_5 + 134, rush, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_5 + 134, rush, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush, 0 );
setEffRotateKey( spep_5 + 134, rush, 0 );
setEffAlphaKey( spep_5 + 0, rush, 255 );
setEffAlphaKey( spep_5 + 132, rush, 255 );
setEffAlphaKey( spep_5 + 133, rush, 255 );
setEffAlphaKey( spep_5 + 134, rush, 0 );

--SE
--集中線
SE021 = playSeVer2( spep_5 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    
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
--顔カットインのタイミング指定
spep_x=spep_5 -10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 70, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
setEffMoveKey(  spep_x +12,  ctgogo, 70,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  70,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--顔カットイン
SE020 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かっていく
SE022 = playSeVer2( spep_5 + 100, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 100, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 100, 9, "", 0, 0, 0, -1);

entryFade( spep_5 + 120, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5 + 134;
-------------------------------------------------------------
--敵に殴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 60, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 58, panting_f, 255 );
setEffAlphaKey( spep_6 + 59, panting_f, 255 );
setEffAlphaKey( spep_6 + 60, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 60, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 58, panting_b, 255 );
setEffAlphaKey( spep_6 + 59, panting_b, 255 );
setEffAlphaKey( spep_6 + 60, panting_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 62, 1, 0 );

changeAnime( spep_6 + 0, 1, 0 );
changeAnime( spep_6-3 + 26, 1, 1 );
changeAnime( spep_6-3 + 34, 1, 9 );

setMoveKey( spep_6 + 0, 1, -173.9, 126.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, -173.9, 126.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, -175.9, 121.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, -176.7, 115.3 , 0 );
setMoveKey( spep_6-3 + 10, 1, -176.6, 107.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, -175.3, 97.9 , 0 );
setMoveKey( spep_6-3 + 14, 1, -173.1, 87.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, -170.1, 75.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, -166, 61.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, -161.1, 47.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, -155.4, 32 , 0 );
setMoveKey( spep_6-3 + 25, 1, -148.8, 15.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, -155.6, 6.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, -156.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, -157, 1 , 0 );
setMoveKey( spep_6-3 + 33, 1, -157, -1.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, -107.7, -78.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, -136.5, -121.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, -91.6, -120.3 , 0 );
setMoveKey( spep_6-3 + 40, 1, -181.1, -105.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, -159.6, -135.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, -189.9, -156.8 , 0 );
setMoveKey( spep_6-3 + 46, 1, -178.6, -151.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, -198.9, -130 , 0 );
setMoveKey( spep_6-3 + 50, 1, -210.9, -163.3 , 0 );
setMoveKey( spep_6-3 + 52, 1, -202.7, -161.1 , 0 );
setMoveKey( spep_6-3 + 54, 1, -206.8, -166.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, -210.4, -171.6 , 0 );
setMoveKey( spep_6-3 + 58, 1, -213.7, -176.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, -216.5, -181.6 , 0 );
setMoveKey( spep_6 + 62, 1, -218.7, -186.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_6-3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_6-3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_6-3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_6-3 + 20, 1, 2, 2 );
setScaleKey( spep_6-3 + 22, 1, 2.23, 2.23 );
setScaleKey( spep_6-3 + 25, 1, 2.47, 2.47 );
setScaleKey( spep_6-3 + 26, 1, 2.55, 2.55 );
setScaleKey( spep_6-3 + 28, 1, 2.62, 2.62 );
setScaleKey( spep_6-3 + 30, 1, 2.69, 2.69 );
setScaleKey( spep_6-3 + 33, 1, 2.74, 2.74 );
setScaleKey( spep_6-3 + 34, 1, 3.02, 3.02 );
setScaleKey( spep_6-3 + 36, 1, 3.05, 3.05 );
setScaleKey( spep_6-3 + 38, 1, 3.07, 3.07 );
setScaleKey( spep_6-3 + 40, 1, 2.01, 2.01 );
setScaleKey( spep_6-3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 44, 1, 1.27, 1.27 );
setScaleKey( spep_6-3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_6-3 + 52, 1, 0.65, 0.65 );
setScaleKey( spep_6-3 + 54, 1, 0.58, 0.58 );
setScaleKey( spep_6-3 + 56, 1, 0.53, 0.53 );
setScaleKey( spep_6-3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 60, 1, 0.47, 0.47 );
setScaleKey( spep_6 + 62, 1, 0.46, 0.46 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 4, 1, 0 );
setRotateKey( spep_6-3 + 6, 1, -0.2 );
setRotateKey( spep_6-3 + 8, 1, -0.4 );
setRotateKey( spep_6-3 + 10, 1, -0.6 );
setRotateKey( spep_6-3 + 12, 1, -0.8 );
setRotateKey( spep_6-3 + 14, 1, -1 );
setRotateKey( spep_6-3 + 16, 1, -1.2 );
setRotateKey( spep_6-3 + 18, 1, -1.4 );
setRotateKey( spep_6-3 + 20, 1, -1.6 );
setRotateKey( spep_6-3 + 22, 1, -1.8 );
setRotateKey( spep_6-3 + 25, 1, -2 );
setRotateKey( spep_6-3 + 26, 1, -9.3 );
setRotateKey( spep_6 + 62, 1, -9.3 );

--SE
--蹴られる
SE025 = playSeVer2( spep_6 + 22, 1010, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_6 + 30, 1251, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_6 + 30, 1246, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_6 + 30, 1118, "",spep_6 + 130, 0, 20, 0.6);
setSeVolumeByWorkId( spep_6 + 30, SE028, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 60;
-------------------------------------------------------------
--18号に殴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
panting2 = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, panting2, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, panting2, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, panting2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 72, panting2, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, panting2, 0 );
setEffRotateKey( spep_7 + 72, panting2, 0 );
setEffAlphaKey( spep_7 + 0, panting2, 255 );
setEffAlphaKey( spep_7 + 70, panting2, 255 );
setEffAlphaKey( spep_7 + 71, panting2, 255 );
setEffAlphaKey( spep_7 + 72, panting2, 0 );

--SE
--18号に殴られる
SE029 = playSeVer2( spep_7 + 50, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_7 + 50, 1119, "",spep_7 + 118, 0, 10, 0.6);
setSeVolumeByWorkId( spep_7 + 50, SE030, 65 );
SE031 = playSeVer2( spep_7 + 56, 1251, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_7 + 56, 1246, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 72, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 72;
-------------------------------------------------------------
--ガンマ2号に蹴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, kick, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_8 + 60, kick, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick, 0 );
setEffRotateKey( spep_8 + 60, kick, 0 );
setEffAlphaKey( spep_8 + 0, kick, 255 );
setEffAlphaKey( spep_8 + 58, kick, 255 );
setEffAlphaKey( spep_8 + 59, kick, 255 );
setEffAlphaKey( spep_8 + 60, kick, 0 );

--SE
--ガンマ２号に蹴られる
SE033 = playSeVer2( spep_8 + 36, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9 = spep_8 + 60;
-------------------------------------------------------------
--ゴテンクスが回る
-------------------------------------------------------------
-- ** エフェクト等 ** --
spin = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, spin, 0, 0, 0 );
setEffMoveKey( spep_9 + 70, spin, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, spin, 1.0, 1.0 );
setEffScaleKey( spep_9 + 70, spin, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, spin, 0 );
setEffRotateKey( spep_9 + 70, spin, 0 );
setEffAlphaKey( spep_9 + 0, spin, 255 );
setEffAlphaKey( spep_9 + 68, spin, 255 );
setEffAlphaKey( spep_9 + 69, spin, 255 );
setEffAlphaKey( spep_9 + 70, spin, 0 );

--SE
--回転しながら飛んでいく
SE034 = playSeVer2( spep_9 + 0, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 0, 1388, "",spep_9 + 110, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10 = spep_9 + 70;
-------------------------------------------------------------
--ガンマ1号に撃ち落される
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, fall, 0, 0, 0 );
setEffMoveKey( spep_10 + 60, fall, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_10 + 60, fall, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fall, 0 );
setEffRotateKey( spep_10 + 60, fall, 0 );
setEffAlphaKey( spep_10 + 0, fall, 255 );
setEffAlphaKey( spep_10 + 58, fall, 255 );
setEffAlphaKey( spep_10 + 59, fall, 255 );
setEffAlphaKey( spep_10 + 60, fall, 0 );

--SE
--ガンマ１号に叩き落とされる
SE036 = playSeVer2( spep_10 + 32, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 32, SE036, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11 = spep_10 + 60;
-------------------------------------------------------------
--敵めがけて落ちていく
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall_f = entryEffect( spep_11 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fall_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, fall_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fall_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, fall_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall_f, 0 );
setEffRotateKey( spep_11 + 40, fall_f, 0 );
setEffAlphaKey( spep_11 + 0, fall_f, 255 );
setEffAlphaKey( spep_11 + 38, fall_f, 255 );
setEffAlphaKey( spep_11 + 39, fall_f, 255 );
setEffAlphaKey( spep_11 + 40, fall_f, 0 );

-- ** エフェクト等 ** --
fall_b = entryEffect( spep_11 + 0, SP_14, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fall_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, fall_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fall_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, fall_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall_b, 0 );
setEffRotateKey( spep_11 + 40, fall_b, 0 );
setEffAlphaKey( spep_11 + 0, fall_b, 255 );
setEffAlphaKey( spep_11 + 38, fall_b, 255 );
setEffAlphaKey( spep_11 + 39, fall_b, 255 );
setEffAlphaKey( spep_11 + 40, fall_b, 0 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 42, 1, 0 );

changeAnime( spep_11 + 0, 1, 100 );

setMoveKey( spep_11 + 0, 1, -115.2, -259.9 , 0 );
setMoveKey( spep_11-3 + 4, 1, -115.2, -259.9 , 0 );
setMoveKey( spep_11-3 + 6, 1, -114.4, -253.9 , 0 );
setMoveKey( spep_11-3 + 8, 1, -110.2, -242.4 , 0 );
setMoveKey( spep_11-3 + 10, 1, -117.7, -245.4 , 0 );
setMoveKey( spep_11-3 + 12, 1, -108.1, -239.9 , 0 );
setMoveKey( spep_11-3 + 14, 1, -115.8, -223.6 , 0 );
setMoveKey( spep_11-3 + 16, 1, -108, -229.7 , 0 );
setMoveKey( spep_11-3 + 18, 1, -110.1, -211.5 , 0 );
setMoveKey( spep_11-3 + 20, 1, -114.5, -217.9 , 0 );
setMoveKey( spep_11-3 + 22, 1, -105.1, -201.5 , 0 );
setMoveKey( spep_11-3 + 24, 1, -111.8, -205.8 , 0 );
setMoveKey( spep_11-3 + 26, 1, -115.2, -188.5 , 0 );
setMoveKey( spep_11-3 + 28, 1, -104.2, -188.5 , 0 );
setMoveKey( spep_11-3 + 30, 1, -113.4, -179.8 , 0 );
setMoveKey( spep_11-3 + 32, 1, -112.7, -180.1 , 0 );
setMoveKey( spep_11-3 + 34, 1, -99.9, -172 , 0 );
setMoveKey( spep_11-3 + 36, 1, -109.5, -159.5 , 0 );
setMoveKey( spep_11-3 + 38, 1, -99.6, -165.4 , 0 );
setMoveKey( spep_11-3 + 40, 1, -101.7, -145.4 , 0 );
setMoveKey( spep_11 + 42, 1, -109.7, -151.9 , 0 );

setScaleKey( spep_11 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_11-3 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_11-3 + 6, 1, 0.32, 0.32 );
setScaleKey( spep_11-3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_11-3 + 10, 1, 0.35, 0.35 );
setScaleKey( spep_11-3 + 12, 1, 0.36, 0.36 );
setScaleKey( spep_11-3 + 14, 1, 0.38, 0.38 );
setScaleKey( spep_11-3 + 16, 1, 0.4, 0.4 );
setScaleKey( spep_11-3 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_11-3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_11-3 + 22, 1, 0.45, 0.45 );
setScaleKey( spep_11-3 + 24, 1, 0.46, 0.46 );
setScaleKey( spep_11-3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_11-3 + 28, 1, 0.49, 0.49 );
setScaleKey( spep_11-3 + 30, 1, 0.51, 0.51 );
setScaleKey( spep_11-3 + 32, 1, 0.53, 0.53 );
setScaleKey( spep_11-3 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_11-3 + 36, 1, 0.56, 0.56 );
setScaleKey( spep_11-3 + 38, 1, 0.58, 0.58 );
setScaleKey( spep_11-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_11 + 42, 1, 0.61, 0.61 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 42, 1, 0 );

--SE
--飛んでいく
SE037 = playSeVer2( spep_11 + 0, 1121, "",spep_11 + 124, 0, 14, -1);
setSeVolumeByWorkId( spep_11 + 0, SE037, 67 );
SE038 = playSeVer2( spep_11 + 0, 1183, "",spep_11 + 124, 0, 14, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12 = spep_11 + 40;
-------------------------------------------------------------
--落下するゴテンクス
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall2 = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, fall2, 0, 0, 0 );
setEffMoveKey( spep_12 + 40, fall2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, fall2, 1.0, 1.0 );
setEffScaleKey( spep_12 + 40, fall2, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, fall2, 0 );
setEffRotateKey( spep_12 + 40, fall2, 0 );
setEffAlphaKey( spep_12 + 0, fall2, 255 );
setEffAlphaKey( spep_12 + 38, fall2, 255 );
setEffAlphaKey( spep_12 + 39, fall2, 255 );
setEffAlphaKey( spep_12 + 40, fall2, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13 = spep_12 + 40;
-------------------------------------------------------------
--敵に上からぶつかり頭突き
-------------------------------------------------------------
-- ** エフェクト等 ** --
headbutting_f = entryEffect( spep_13 + 0, SP_16, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, headbutting_f, 0, 0, 0 );
setEffMoveKey( spep_13 + 50, headbutting_f, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, headbutting_f, 1.0, 1.0 );
setEffScaleKey( spep_13 + 50, headbutting_f, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, headbutting_f, 0 );
setEffRotateKey( spep_13 + 50, headbutting_f, 0 );
setEffAlphaKey( spep_13 + 0, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 48, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 49, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 50, headbutting_f, 0 );

-- ** エフェクト等 ** --
headbutting_b = entryEffect( spep_13 + 0, SP_17, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, headbutting_b, 0, 0, 0 );
setEffMoveKey( spep_13 + 50, headbutting_b, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, headbutting_b, 1.0, 1.0 );
setEffScaleKey( spep_13 + 50, headbutting_b, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, headbutting_b, 0 );
setEffRotateKey( spep_13 + 50, headbutting_b, 0 );
setEffAlphaKey( spep_13 + 0, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 48, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 49, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 50, headbutting_b, 0 );

--敵の動き
setDisp( spep_13 + 0, 1, 1 );

changeAnime( spep_13 + 0, 1, 100 );
changeAnime( spep_13-1 + 32, 1, 108 );

setMoveKey( spep_13 + 0, 1, -29.8, -605.9 , 0 );
setMoveKey( spep_13-3 + 4, 1, -29.8, -605.9 , 0 );
setMoveKey( spep_13-3 + 6, 1, -29.8, -577.9 , 0 );
setMoveKey( spep_13-3 + 8, 1, -29.8, -549.8 , 0 );
setMoveKey( spep_13-3 + 10, 1, -29.8, -521.8 , 0 );
setMoveKey( spep_13-3 + 12, 1, -29.8, -493.8 , 0 );
setMoveKey( spep_13-3 + 14, 1, -29.8, -465.7 , 0 );
setMoveKey( spep_13-3 + 16, 1, -29.8, -437.7 , 0 );
setMoveKey( spep_13-3 + 18, 1, -29.8, -409.7 , 0 );
setMoveKey( spep_13-3 + 20, 1, -29.8, -381.6 , 0 );
setMoveKey( spep_13-3 + 22, 1, -29.8, -353.6 , 0 );
setMoveKey( spep_13-3 + 24, 1, -29.8, -325.6 , 0 );
setMoveKey( spep_13-3 + 26, 1, -29.8, -297.5 , 0 );
setMoveKey( spep_13-3 + 28, 1, -29.8, -269.5 , 0 );
setMoveKey( spep_13-1 + 31, 1, -29.8, -241.5 , 0 );
setMoveKey( spep_13-1 + 32, 1, 29, -56.8 , 0 );
setMoveKey( spep_13-3 + 34, 1, 35.7, -54.7 , 0 );
setMoveKey( spep_13-3 + 36, 1, 29.8, -175.7 , 0 );
setMoveKey( spep_13-3 + 38, 1, 32.4, -65.3 , 0 );
setMoveKey( spep_13-3 + 40, 1, 27.8, -159.4 , 0 );
setMoveKey( spep_13-3 + 42, 1, 30.2, -84.8 , 0 );
setMoveKey( spep_13-3 + 44, 1, 29.3, -153.1 , 0 );
setMoveKey( spep_13-3 + 46, 1, 30.7, -87.2 , 0 );
setMoveKey( spep_13-3 + 48, 1, 27, -144.3 , 0 );
setMoveKey( spep_13-3 + 50, 1, 30.1, -152 , 0 );

setScaleKey( spep_13 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_13-3 + 50, 1, 2.52, 2.52 );

setRotateKey( spep_13 + 0, 1, 0 );
setRotateKey( spep_13-3 + 50, 1, 0 );

--SE
--頭突き
SE039 = playSeVer2( spep_13 + 32, 1359, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_13 + 32, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 32, SE040, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_14 = spep_13 + 48;
-------------------------------------------------------------
--頭突きが敵にめり込む
-------------------------------------------------------------
-- ** エフェクト等 ** --
immerse_f = entryEffect( spep_14 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, immerse_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 50, immerse_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, immerse_f, 1.0, 1.0 );
setEffScaleKey( spep_14 + 50, immerse_f, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, immerse_f, 0 );
setEffRotateKey( spep_14 + 50, immerse_f, 0 );
setEffAlphaKey( spep_14 + 0, immerse_f, 255 );
setEffAlphaKey( spep_14 + 48, immerse_f, 255 );
setEffAlphaKey( spep_14 + 49, immerse_f, 255 );
setEffAlphaKey( spep_14 + 50, immerse_f, 0 );

-- ** エフェクト等 ** --
immerse_b = entryEffect( spep_14 + 0, SP_19, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, immerse_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 50, immerse_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, immerse_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 50, immerse_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, immerse_b, 0 );
setEffRotateKey( spep_14 + 50, immerse_b, 0 );
setEffAlphaKey( spep_14 + 0, immerse_b, 255 );
setEffAlphaKey( spep_14 + 48, immerse_b, 255 );
setEffAlphaKey( spep_14 + 49, immerse_b, 255 );
setEffAlphaKey( spep_14 + 50, immerse_b, 0 );

--敵の動き
setDisp( spep_14-3 + 52, 1, 0 );

setBlendColor(spep_14 + 0, 1, 3, 0, 0, 0, 1);
setBlendColor(spep_14 + 38, 1, 3, 0, 0, 0, 0);

changeAnime( spep_14 + 0, 1, 108 );

setMoveKey( spep_14 + 0, 1, 164.5, -519.8 , 0 );
--setMoveKey( spep_14-3 + 2, 1, 164.5, -519.7 , 0 );
setMoveKey( spep_14-3 + 4, 1, 164.5, -519.7 , 0 );
setMoveKey( spep_14-3 + 6, 1, 165.3, -520.7 , 0 );
setMoveKey( spep_14-3 + 8, 1, 166.1, -521.6 , 0 );
setMoveKey( spep_14-3 + 10, 1, 166.8, -522.6 , 0 );
setMoveKey( spep_14-3 + 12, 1, 167.6, -523.5 , 0 );
setMoveKey( spep_14-3 + 14, 1, 168.3, -524.4 , 0 );
setMoveKey( spep_14-3 + 16, 1, 169.1, -525.3 , 0 );
setMoveKey( spep_14-3 + 18, 1, 169.8, -526.3 , 0 );
setMoveKey( spep_14-3 + 20, 1, 170.6, -527.2 , 0 );
setMoveKey( spep_14-3 + 22, 1, 171.3, -528.1 , 0 );
setMoveKey( spep_14-3 + 24, 1, 172.1, -529.1 , 0 );
setMoveKey( spep_14-3 + 26, 1, 172.8, -530 , 0 );
setMoveKey( spep_14-3 + 28, 1, 173.6, -530.9 , 0 );
setMoveKey( spep_14-3 + 30, 1, 174.3, -531.9 , 0 );
setMoveKey( spep_14-3 + 32, 1, 175.1, -532.8 , 0 );
setMoveKey( spep_14-3 + 34, 1, 175.8, -533.8 , 0 );
setMoveKey( spep_14-3 + 36, 1, 176.6, -534.7 , 0 );
setMoveKey( spep_14-3 + 38, 1, 177.3, -535.6 , 0 );
setMoveKey( spep_14-3 + 40, 1, 178.1, -536.5 , 0 );
setMoveKey( spep_14-3 + 42, 1, 176.9, -535.9 , 0 );
setMoveKey( spep_14-3 + 44, 1, 160.6, -555.9 , 0 );
setMoveKey( spep_14-3 + 46, 1, 198.8, -514.1 , 0 );
setMoveKey( spep_14-3 + 48, 1, 198.6, -569.3 , 0 );
setMoveKey( spep_14-3 + 50, 1, 156, -515.1 , 0 );
--setMoveKey( spep_14-3 + 52, 1, 176.8, -534.7 , 0 );

setScaleKey( spep_14 + 0, 1, 9.58,9.58);
setScaleKey( spep_14-3 + 6, 1, 9.63,9.63);
setScaleKey( spep_14-3 + 8, 1, 9.67,9.67);
setScaleKey( spep_14-3 + 10, 1, 9.72,9.72);
setScaleKey( spep_14-3 + 12, 1, 9.76,9.76);
setScaleKey( spep_14-3 + 14, 1, 9.81,9.81);
setScaleKey( spep_14-3 + 16, 1, 9.85,9.85);
setScaleKey( spep_14-3 + 18, 1, 9.9,9.9);
setScaleKey( spep_14-3 + 20, 1, 9.94,9.94);
setScaleKey( spep_14-3 + 22, 1, 9.99,9.99);
setScaleKey( spep_14-3 + 24, 1, 10.03,10.03);
setScaleKey( spep_14-3 + 26, 1, 10.08,10.08);
setScaleKey( spep_14-3 + 28, 1, 10.12,10.12);
setScaleKey( spep_14-3 + 30, 1, 10.16,10.16);
setScaleKey( spep_14-3 + 32, 1, 10.21,10.21);
setScaleKey( spep_14-3 + 34, 1, 10.26,10.26);
setScaleKey( spep_14-3 + 36, 1, 10.3,10.3);
setScaleKey( spep_14-3 + 38, 1, 10.34,10.34);
setScaleKey( spep_14-3 + 40, 1, 10.39,10.39);
setScaleKey( spep_14-3 + 42, 1, 10.51,10.51);
setScaleKey( spep_14-3 + 44, 1, 10.56,10.56);
setScaleKey( spep_14-3 + 46, 1, 10.6,10.6);
setScaleKey( spep_14-3 + 48, 1, 10.65,10.65);
setScaleKey( spep_14-3 + 50, 1, 10.69,10.69);
--setScaleKey( spep_14-3 + 52, 1, 10.74,10.74);

setRotateKey( spep_14 + 0, 1, 0 );
setRotateKey( spep_14-3 + 50, 1, 0 );

--SE
--ヒビ入る
SE041 = playSeVer2( spep_14 + 0, 1250, "",spep_14 + 42, 0, 16, -1);
SE042 = playSeVer2( spep_14 + 0, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE042, 73 );
SE043 = playSeVer2( spep_14 + 0, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE043, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_15 = spep_14 + 48;
-------------------------------------------------------------
--爆発で吹き飛んでくる
-------------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_15 + 0, SP_20, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_15 + 114, finish_f, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_15 + 114, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish_f, 0 );
setEffRotateKey( spep_15 + 114, finish_f, 0 );
setEffAlphaKey( spep_15 + 0, finish_f, 255 );
setEffAlphaKey( spep_15 + 114, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_15 + 0, SP_21, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_15 + 114, finish_b, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_15 + 114, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish_b, 0 );
setEffRotateKey( spep_15 + 114, finish_b, 0 );
setEffAlphaKey( spep_15 + 0, finish_b, 255 );
setEffAlphaKey( spep_15 + 114, finish_b, 255 );

--敵の動き
setDisp( spep_15-3 + 14, 1, 1 );

changeAnime( spep_15-3 + 14, 1, 107 );
setBlendColor(spep_15-3 + 14, 1, 3, 0, 0, 0, 0.2);

setMoveKey( spep_15-3 + 14, 1, -30.1, -13.8 , 0 );
setMoveKey( spep_15-3 + 16, 1, 9.3, -85.3 , 0 );
setMoveKey( spep_15-3 + 18, 1, 13.2, -4.4 , 0 );
setMoveKey( spep_15-3 + 20, 1, -34.9, -105.5 , 0 );
setMoveKey( spep_15-3 + 22, 1, 20.1, -74.3 , 0 );
setMoveKey( spep_15-3 + 24, 1, -13, -99.2 , 0 );
setMoveKey( spep_15-3 + 26, 1, 0.9, -152.9 , 0 );
setMoveKey( spep_15-3 + 28, 1, 5.8, -122.1 , 0 );
setMoveKey( spep_15-3 + 30, 1, -33.5, -163.6 , 0 );
setMoveKey( spep_15-3 + 32, 1, 15.3, -173.6 , 0 );
setMoveKey( spep_15-3 + 34, 1, 6, -162.7 , 0 );
setMoveKey( spep_15-3 + 36, 1, -2.3, -188.5 , 0 );
setMoveKey( spep_15-3 + 38, 1, -0.7, -165.7 , 0 );
setMoveKey( spep_15-3 + 40, 1, 5.7, -182 , 0 );
setMoveKey( spep_15-3 + 42, 1, -6.8, -175.4 , 0 );
setMoveKey( spep_15-3 + 44, 1, 14.6, -166.3 , 0 );
setMoveKey( spep_15-3 + 46, 1, -3.6, -175.3 , 0 );
setMoveKey( spep_15-3 + 48, 1, 5.5, -168.3 , 0 );
setMoveKey( spep_15-3 + 50, 1, 4.2, -178.2 , 0 );
setMoveKey( spep_15-3 + 52, 1, -2.1, -171.6 , 0 );
setMoveKey( spep_15-3 + 54, 1, 8.8, -173.5 , 0 );
setMoveKey( spep_15-3 + 56, 1, 8.9, -173.6 , 0 );
setMoveKey( spep_15-3 + 58, 1, 9, -173.8 , 0 );
setMoveKey( spep_15-3 + 60, 1, 9, -174 , 0 );
setMoveKey( spep_15-3 + 62, 1, 9.1, -174.1 , 0 );
setMoveKey( spep_15-3 + 64, 1, 9.2, -174.3 , 0 );
setMoveKey( spep_15-3 + 66, 1, 9.2, -174.5 , 0 );
setMoveKey( spep_15-3 + 68, 1, 9.3, -174.6 , 0 );
setMoveKey( spep_15-3 + 70, 1, 9.4, -174.8 , 0 );
setMoveKey( spep_15-3 + 72, 1, 9.4, -175 , 0 );
setMoveKey( spep_15-3 + 74, 1, 9.5, -175.1 , 0 );
setMoveKey( spep_15-3 + 76, 1, 9.5, -175.4 , 0 );
setMoveKey( spep_15-3 + 78, 1, 9.7, -175.5 , 0 );
setMoveKey( spep_15-3 + 80, 1, 9.7, -175.7 , 0 );
setMoveKey( spep_15-3 + 82, 1, 9.8, -175.9 , 0 );
setMoveKey( spep_15-3 + 84, 1, 9.8, -176 , 0 );
setMoveKey( spep_15-3 + 86, 1, 9.9, -176.2 , 0 );
setMoveKey( spep_15-3 + 88, 1, 10, -176.4 , 0 );
setMoveKey( spep_15-3 + 90, 1, 10, -176.5 , 0 );
setMoveKey( spep_15-3 + 92, 1, 10.1, -176.7 , 0 );
setMoveKey( spep_15-3 + 94, 1, 10.2, -176.9 , 0 );
setMoveKey( spep_15-3 + 96, 1, 10.2, -177 , 0 );
setMoveKey( spep_15-3 + 98, 1, 10.3, -177.3 , 0 );
setMoveKey( spep_15-3 + 100, 1, 10.3, -177.4 , 0 );
setMoveKey( spep_15-3 + 102, 1, 10.4, -177.6 , 0 );
setMoveKey( spep_15-3 + 104, 1, 10.4, -177.8 , 0 );
setMoveKey( spep_15-3 + 106, 1, 10.5, -177.9 , 0 );
setMoveKey( spep_15-3 + 108, 1, 10.6, -178.1 , 0 );
setMoveKey( spep_15-3 + 110, 1, 10.6, -178.3 , 0 );
setMoveKey( spep_15-3 + 112, 1, 10.7, -178.4 , 0 );

setScaleKey( spep_15-3 + 14, 1, 0.2, 0.2 );
setScaleKey( spep_15-3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_15-3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_15-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_15-3 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_15-3 + 24, 1, 1.06, 1.06 );
setScaleKey( spep_15-3 + 26, 1, 1.23, 1.23 );
setScaleKey( spep_15-3 + 28, 1, 1.4, 1.4 );
setScaleKey( spep_15-3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_15-3 + 32, 1, 1.74, 1.74 );
setScaleKey( spep_15-3 + 38, 1, 1.74, 1.74 );
setScaleKey( spep_15-3 + 40, 1, 1.75, 1.75 );
setScaleKey( spep_15-3 + 50, 1, 1.75, 1.75 );
setScaleKey( spep_15-3 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_15-3 + 64, 1, 1.76, 1.76 );
setScaleKey( spep_15-3 + 66, 1, 1.77, 1.77 );
setScaleKey( spep_15-3 + 76, 1, 1.77, 1.77 );
setScaleKey( spep_15-3 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_15-3 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_15-3 + 90, 1, 1.79, 1.79 );
setScaleKey( spep_15-3 + 102, 1, 1.79, 1.79 );
setScaleKey( spep_15-3 + 104, 1, 1.8, 1.8 );
setScaleKey( spep_15-3 + 112, 1, 1.8, 1.8 );

setRotateKey( spep_15-3 + 14, 1, 0 );
setRotateKey( spep_15-3 + 112, 1, 0 );

--SE
--爆発
SE044 = playSeVer2( spep_15 + 0, 1024, "", 0, 0, 0, -1);

--画面割れる
SE045 = playSeVer2( spep_15 + 32, 1025, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_15 + 32, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_15 + 10 ); -- ダメージ表示フレーム
endPhase( spep_15 + 102 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------
--背後カットで中央と奥に小さく敵がいるカット　力を込める様に脇を締める
-------------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
side_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, side_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 54, side_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, side_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 54, side_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, side_f, 0 );
setEffRotateKey( spep_0 + 54, side_f, 0 );
setEffAlphaKey( spep_0 + 0, side_f, 255 );
setEffAlphaKey( spep_0 + 54, side_f, 255 );
setEffAlphaKey( spep_0 + 55, side_f, 0 );
setEffAlphaKey( spep_0 + 56, side_f, 0 );

-- ** エフェクト等 ** --
side_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, side_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 54, side_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, side_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 54, side_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, side_b, 0 );
setEffRotateKey( spep_0 + 54, side_b, 0 );
setEffAlphaKey( spep_0 + 0, side_b, 255 );
setEffAlphaKey( spep_0 + 54, side_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 54, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setBlendColor(spep_0 + 0, 1, 3, 0, 0, 0, 0.2);
setBlendColor(spep_0 + 56, 1, 3, 0, 0, 0, 0);

a=15;

setMoveKey( spep_0 + 0, 1, 17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, 17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 5, 1, 17.5+a, -31.4 , 0 );
setMoveKey( spep_0-3 + 6, 1, 16.9+a, -30.3 , 0 );
setMoveKey( spep_0-3 + 7, 1, 16.9+a, -30.3 , 0 );
setMoveKey( spep_0-3 + 8, 1, 16.4+a, -29.3 , 0 );
setMoveKey( spep_0-3 + 9, 1, 16.4+a, -29.3 , 0 );
setMoveKey( spep_0-3 + 10, 1, 15.8+a, -28.3 , 0 );
setMoveKey( spep_0-3 + 11, 1, 15.8+a, -28.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, 15.2+a, -27.2 , 0 );
setMoveKey( spep_0-3 + 13, 1, 15.2+a, -27.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, 13+a, -23.2 , 0 );
setMoveKey( spep_0-3 + 15, 1, 13+a, -23.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 10.8+a, -19.1 , 0 );
setMoveKey( spep_0-3 + 17, 1, 10.8+a, -19.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, 8.7+a, -15.1 , 0 );
setMoveKey( spep_0-3 + 19, 1, 8.7+a, -15.1 , 0 );
setMoveKey( spep_0-3 + 20, 1, 6.5+a, -11 , 0 );
setMoveKey( spep_0-3 + 21, 1, 6.5+a, -11 , 0 );
setMoveKey( spep_0-3 + 22, 1, 4.3+a, -7 , 0 );
setMoveKey( spep_0-3 + 23, 1, 4.3+a, -7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 2.1+a, -2.9 , 0 );
setMoveKey( spep_0-3 + 25, 1, 2.1+a, -2.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, 1.9+a, -2.6 , 0 );
setMoveKey( spep_0-3 + 27, 1, 1.9+a, -2.6 , 0 );
setMoveKey( spep_0-3 + 28, 1, 1.8+a, -2.3 , 0 );
setMoveKey( spep_0-3 + 29, 1, 1.8+a, -2.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 1.7+a, -2 , 0 );
setMoveKey( spep_0-3 + 31, 1, 1.7+a, -2 , 0 );
setMoveKey( spep_0-3 + 32, 1, 1.5+a, -1.7 , 0 );
setMoveKey( spep_0 + 54, 1, 1.5+a, -1.7 , 0 );

setScaleKey( spep_0-3 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 4, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 5, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 6, 1, 0.85, 0.86 );
setScaleKey( spep_0-3 + 7, 1, 0.85, 0.86 );
setScaleKey( spep_0-3 + 8, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 9, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 11, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 13, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 14, 1, 0.7, 0.71 );
setScaleKey( spep_0-3 + 15, 1, 0.7, 0.71 );
setScaleKey( spep_0-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 17, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 18, 1, 0.53, 0.54 );
setScaleKey( spep_0-3 + 19, 1, 0.53, 0.54 );
setScaleKey( spep_0-3 + 20, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 21, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 22, 1, 0.36, 0.37 );
setScaleKey( spep_0-3 + 23, 1, 0.36, 0.37 );
setScaleKey( spep_0-3 + 24, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 25, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 27, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 29, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 54, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 54, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );

--構える
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 60 );

--白フェード
entryFade( spep_0 +46 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 + 54;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--次の準備
spep_2 = spep_1 + 94;
-------------------------------------------------------------
--フュージョンする二人正面からのカット
-------------------------------------------------------------
-- ** エフェクト等 ** --
fusion = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fusion, 0, 0, 0 );
setEffMoveKey( spep_2 + 114, fusion, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fusion, -1.0, 1.0 );
setEffScaleKey( spep_2 + 114, fusion, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fusion, 0 );
setEffRotateKey( spep_2 + 114, fusion, 0 );
setEffAlphaKey( spep_2 + 0, fusion, 255 );
setEffAlphaKey( spep_2 + 112, fusion, 255 );
setEffAlphaKey( spep_2 + 113, fusion, 255 );
setEffAlphaKey( spep_2 + 114, fusion, 0 );

--SE
--二人駆け寄る
SE004 = playSeVer2( spep_2 + 4, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 8, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 12, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE006, 79 );
SE007 = playSeVer2( spep_2 + 14, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 18, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 20, 1107, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 24, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 28, 1108, "", 0, 0, 0, -1);

--ポーズ
SE012 = playSeVer2( spep_2 + 48, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 52, 1013, "", 0, 0, 0, -1);

--指合わせる
SE014 = playSeVer2( spep_2 + 80, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 84, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE016, 73 );

--合体
SE015 = playSeVer2( spep_2 + 96, 1200, "",spep_2 + 224, 6, 46, -1);
setStartTimeMs( SE015,  417 );
SE017 = playSeVer2( spep_2 + 96, 1264, "",spep_2 + 224, 0, 46, -1);
SE018 = playSeVer2( spep_2 + 96, 1289, "",spep_2 + 224, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 96, SE018, 75 );
setPitch( spep_2 + 96, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 114;
-------------------------------------------------------------
--フュージョンする二人の手をアップ
-------------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_3 + 50, hand, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hand, -1.0, 1.0 );
setEffScaleKey( spep_3 + 50, hand, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hand, 0 );
setEffRotateKey( spep_3 + 50, hand, 0 );
setEffAlphaKey( spep_3 + 0, hand, 255 );
setEffAlphaKey( spep_3 + 48, hand, 255 );
setEffAlphaKey( spep_3 + 49, hand, 255 );
setEffAlphaKey( spep_3 + 50, hand, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 50;
-------------------------------------------------------------
--フュージョン失敗ゴテンクスの足元UPからズームアウトで中心に全身
-------------------------------------------------------------
-- ** エフェクト等 ** --
failure = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, failure, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, failure, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, failure, -1.0, 1.0 );
setEffScaleKey( spep_4 + 70, failure, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, failure, 0 );
setEffRotateKey( spep_4 + 70, failure, 0 );
setEffAlphaKey( spep_4 + 0, failure, 255 );
setEffAlphaKey( spep_4 + 68, failure, 255 );
setEffAlphaKey( spep_4 + 69, failure, 255 );
setEffAlphaKey( spep_4 + 70, failure, 0 );

--SE
--風音
SE019 = playSeVer2( spep_4 + 0 -10, 1259, "",spep_4 + 130, 0, 74, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 70;
-------------------------------------------------------------
--突撃しに行く
-------------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_5 + 134, rush, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_5 + 134, rush, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush, 0 );
setEffRotateKey( spep_5 + 134, rush, 0 );
setEffAlphaKey( spep_5 + 0, rush, 255 );
setEffAlphaKey( spep_5 + 132, rush, 255 );
setEffAlphaKey( spep_5 + 133, rush, 255 );
setEffAlphaKey( spep_5 + 134, rush, 0 );

--SE
--集中線
SE021 = playSeVer2( spep_5 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    
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
--顔カットインのタイミング指定
spep_x=spep_5 -10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 70, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
setEffMoveKey(  spep_x +12,  ctgogo, 70,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  70,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
SE020 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かっていく
SE022 = playSeVer2( spep_5 + 100, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 100, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 100, 9, "", 0, 0, 0, -1);

entryFade( spep_5 + 120, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5 + 134;
-------------------------------------------------------------
--敵に殴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 60, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 60, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 58, panting_f, 255 );
setEffAlphaKey( spep_6 + 59, panting_f, 255 );
setEffAlphaKey( spep_6 + 60, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 60, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 60, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 58, panting_b, 255 );
setEffAlphaKey( spep_6 + 59, panting_b, 255 );
setEffAlphaKey( spep_6 + 60, panting_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 62, 1, 0 );

changeAnime( spep_6 + 0, 1, 100 );
changeAnime( spep_6-3 + 26, 1, 101 );
changeAnime( spep_6-3 + 34, 1, 109 );

setMoveKey( spep_6 + 0, 1, 173.9, 126.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 173.9, 126.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, 175.9, 121.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, 176.7, 115.3 , 0 );
setMoveKey( spep_6-3 + 10, 1, 176.6, 107.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 175.3, 97.9 , 0 );
setMoveKey( spep_6-3 + 14, 1, 173.1, 87.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, 170.1, 75.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, 166, 61.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, 161.1, 47.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, 155.4, 32 , 0 );
setMoveKey( spep_6-3 + 25, 1, 148.8, 15.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, 155.6, 6.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, 156.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 157, 1 , 0 );
setMoveKey( spep_6-3 + 33, 1, 157, -1.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, 107.7, -78.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 136.5, -121.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 91.6, -120.3 , 0 );
setMoveKey( spep_6-3 + 40, 1, 181.1, -105.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, 159.6, -135.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 189.9, -156.8 , 0 );
setMoveKey( spep_6-3 + 46, 1, 178.6, -151.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 198.9, -130 , 0 );
setMoveKey( spep_6-3 + 50, 1, 210.9, -163.3 , 0 );
setMoveKey( spep_6-3 + 52, 1, 202.7, -161.1 , 0 );
setMoveKey( spep_6-3 + 54, 1, 206.8, -166.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, 210.4, -171.6 , 0 );
setMoveKey( spep_6-3 + 58, 1, 213.7, -176.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 216.5, -181.6 , 0 );
setMoveKey( spep_6 + 62, 1, 218.7, -186.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_6-3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_6-3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_6-3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_6-3 + 20, 1, 2, 2 );
setScaleKey( spep_6-3 + 22, 1, 2.23, 2.23 );
setScaleKey( spep_6-3 + 25, 1, 2.47, 2.47 );
setScaleKey( spep_6-3 + 26, 1, 2.55, 2.55 );
setScaleKey( spep_6-3 + 28, 1, 2.62, 2.62 );
setScaleKey( spep_6-3 + 30, 1, 2.69, 2.69 );
setScaleKey( spep_6-3 + 33, 1, 2.74, 2.74 );
setScaleKey( spep_6-3 + 34, 1, 3.02, 3.02 );
setScaleKey( spep_6-3 + 36, 1, 3.05, 3.05 );
setScaleKey( spep_6-3 + 38, 1, 3.07, 3.07 );
setScaleKey( spep_6-3 + 40, 1, 2.01, 2.01 );
setScaleKey( spep_6-3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 44, 1, 1.27, 1.27 );
setScaleKey( spep_6-3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_6-3 + 52, 1, 0.65, 0.65 );
setScaleKey( spep_6-3 + 54, 1, 0.58, 0.58 );
setScaleKey( spep_6-3 + 56, 1, 0.53, 0.53 );
setScaleKey( spep_6-3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 60, 1, 0.47, 0.47 );
setScaleKey( spep_6 + 62, 1, 0.46, 0.46 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 4, 1, 0 );
setRotateKey( spep_6-3 + 6, 1, 0.2 );
setRotateKey( spep_6-3 + 8, 1, 0.4 );
setRotateKey( spep_6-3 + 10, 1, 0.6 );
setRotateKey( spep_6-3 + 12, 1, 0.8 );
setRotateKey( spep_6-3 + 14, 1, 1 );
setRotateKey( spep_6-3 + 16, 1, 1.2 );
setRotateKey( spep_6-3 + 18, 1, 1.4 );
setRotateKey( spep_6-3 + 20, 1, 1.6 );
setRotateKey( spep_6-3 + 22, 1, 1.8 );
setRotateKey( spep_6-3 + 25, 1, 2 );
setRotateKey( spep_6-3 + 26, 1, 9.3 );
setRotateKey( spep_6 + 62, 1, 9.3 );

--SE
--蹴られる
SE025 = playSeVer2( spep_6 + 22, 1010, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_6 + 30, 1251, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_6 + 30, 1246, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_6 + 30, 1118, "",spep_6 + 130, 0, 20, 0.6);
setSeVolumeByWorkId( spep_6 + 30, SE028, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 60;
-------------------------------------------------------------
--18号に殴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
panting2 = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, panting2, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, panting2, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, panting2, -1.0, 1.0 );
setEffScaleKey( spep_7 + 72, panting2, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, panting2, 0 );
setEffRotateKey( spep_7 + 72, panting2, 0 );
setEffAlphaKey( spep_7 + 0, panting2, 255 );
setEffAlphaKey( spep_7 + 70, panting2, 255 );
setEffAlphaKey( spep_7 + 71, panting2, 255 );
setEffAlphaKey( spep_7 + 72, panting2, 0 );

--SE
--18号に殴られる
SE029 = playSeVer2( spep_7 + 50, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_7 + 50, 1119, "",spep_7 + 118, 0, 10, 0.6);
setSeVolumeByWorkId( spep_7 + 50, SE030, 65 );
SE031 = playSeVer2( spep_7 + 56, 1251, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_7 + 56, 1246, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 72, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 72;
-------------------------------------------------------------
--ガンマ2号に蹴られる
-------------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, kick, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_8 + 60, kick, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick, 0 );
setEffRotateKey( spep_8 + 60, kick, 0 );
setEffAlphaKey( spep_8 + 0, kick, 255 );
setEffAlphaKey( spep_8 + 58, kick, 255 );
setEffAlphaKey( spep_8 + 59, kick, 255 );
setEffAlphaKey( spep_8 + 60, kick, 0 );

--SE
--ガンマ２号に蹴られる
SE033 = playSeVer2( spep_8 + 36, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9 = spep_8 + 60;
-------------------------------------------------------------
--ゴテンクスが回る
-------------------------------------------------------------
-- ** エフェクト等 ** --
spin = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, spin, 0, 0, 0 );
setEffMoveKey( spep_9 + 70, spin, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, spin, -1.0, 1.0 );
setEffScaleKey( spep_9 + 70, spin, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, spin, 0 );
setEffRotateKey( spep_9 + 70, spin, 0 );
setEffAlphaKey( spep_9 + 0, spin, 255 );
setEffAlphaKey( spep_9 + 68, spin, 255 );
setEffAlphaKey( spep_9 + 69, spin, 255 );
setEffAlphaKey( spep_9 + 70, spin, 0 );

--SE
--回転しながら飛んでいく
SE034 = playSeVer2( spep_9 + 0, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 0, 1388, "",spep_9 + 110, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10 = spep_9 + 70;
-------------------------------------------------------------
--ガンマ1号に撃ち落される
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, fall, 0, 0, 0 );
setEffMoveKey( spep_10 + 60, fall, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fall, -1.0, 1.0 );
setEffScaleKey( spep_10 + 60, fall, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fall, 0 );
setEffRotateKey( spep_10 + 60, fall, 0 );
setEffAlphaKey( spep_10 + 0, fall, 255 );
setEffAlphaKey( spep_10 + 58, fall, 255 );
setEffAlphaKey( spep_10 + 59, fall, 255 );
setEffAlphaKey( spep_10 + 60, fall, 0 );

--SE
--ガンマ１号に叩き落とされる
SE036 = playSeVer2( spep_10 + 32, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 32, SE036, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11 = spep_10 + 60;
-------------------------------------------------------------
--敵めがけて落ちていく
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall_f = entryEffect( spep_11 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fall_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, fall_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fall_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 40, fall_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall_f, 0 );
setEffRotateKey( spep_11 + 40, fall_f, 0 );
setEffAlphaKey( spep_11 + 0, fall_f, 255 );
setEffAlphaKey( spep_11 + 38, fall_f, 255 );
setEffAlphaKey( spep_11 + 39, fall_f, 255 );
setEffAlphaKey( spep_11 + 40, fall_f, 0 );

-- ** エフェクト等 ** --
fall_b = entryEffect( spep_11 + 0, SP_14, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fall_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, fall_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fall_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 40, fall_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall_b, 0 );
setEffRotateKey( spep_11 + 40, fall_b, 0 );
setEffAlphaKey( spep_11 + 0, fall_b, 255 );
setEffAlphaKey( spep_11 + 38, fall_b, 255 );
setEffAlphaKey( spep_11 + 39, fall_b, 255 );
setEffAlphaKey( spep_11 + 40, fall_b, 0 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 42, 1, 0 );

changeAnime( spep_11 + 0, 1, 0 );

setMoveKey( spep_11 + 0, 1, 115.2, -259.9 , 0 );
setMoveKey( spep_11-3 + 4, 1, 115.2, -259.9 , 0 );
setMoveKey( spep_11-3 + 6, 1, 114.4, -253.9 , 0 );
setMoveKey( spep_11-3 + 8, 1, 110.2, -242.4 , 0 );
setMoveKey( spep_11-3 + 10, 1, 117.7, -245.4 , 0 );
setMoveKey( spep_11-3 + 12, 1, 108.1, -239.9 , 0 );
setMoveKey( spep_11-3 + 14, 1, 115.8, -223.6 , 0 );
setMoveKey( spep_11-3 + 16, 1, 108, -229.7 , 0 );
setMoveKey( spep_11-3 + 18, 1, 110.1, -211.5 , 0 );
setMoveKey( spep_11-3 + 20, 1, 114.5, -217.9 , 0 );
setMoveKey( spep_11-3 + 22, 1, 105.1, -201.5 , 0 );
setMoveKey( spep_11-3 + 24, 1, 111.8, -205.8 , 0 );
setMoveKey( spep_11-3 + 26, 1, 115.2, -188.5 , 0 );
setMoveKey( spep_11-3 + 28, 1, 104.2, -188.5 , 0 );
setMoveKey( spep_11-3 + 30, 1, 113.4, -179.8 , 0 );
setMoveKey( spep_11-3 + 32, 1, 112.7, -180.1 , 0 );
setMoveKey( spep_11-3 + 34, 1, 99.9, -172 , 0 );
setMoveKey( spep_11-3 + 36, 1, 109.5, -159.5 , 0 );
setMoveKey( spep_11-3 + 38, 1, 99.6, -165.4 , 0 );
setMoveKey( spep_11-3 + 40, 1, 101.7, -145.4 , 0 );
setMoveKey( spep_11 + 42, 1, 109.7, -151.9 , 0 );

setScaleKey( spep_11 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_11-3 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_11-3 + 6, 1, 0.32, 0.32 );
setScaleKey( spep_11-3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_11-3 + 10, 1, 0.35, 0.35 );
setScaleKey( spep_11-3 + 12, 1, 0.36, 0.36 );
setScaleKey( spep_11-3 + 14, 1, 0.38, 0.38 );
setScaleKey( spep_11-3 + 16, 1, 0.4, 0.4 );
setScaleKey( spep_11-3 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_11-3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_11-3 + 22, 1, 0.45, 0.45 );
setScaleKey( spep_11-3 + 24, 1, 0.46, 0.46 );
setScaleKey( spep_11-3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_11-3 + 28, 1, 0.49, 0.49 );
setScaleKey( spep_11-3 + 30, 1, 0.51, 0.51 );
setScaleKey( spep_11-3 + 32, 1, 0.53, 0.53 );
setScaleKey( spep_11-3 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_11-3 + 36, 1, 0.56, 0.56 );
setScaleKey( spep_11-3 + 38, 1, 0.58, 0.58 );
setScaleKey( spep_11-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_11 + 42, 1, 0.61, 0.61 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 42, 1, 0 );

--SE
--飛んでいく
SE037 = playSeVer2( spep_11 + 0, 1121, "",spep_11 + 124, 0, 14, -1);
setSeVolumeByWorkId( spep_11 + 0, SE037, 67 );
SE038 = playSeVer2( spep_11 + 0, 1183, "",spep_11 + 124, 0, 14, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12 = spep_11 + 40;
-------------------------------------------------------------
--落下するゴテンクス
-------------------------------------------------------------
-- ** エフェクト等 ** --
fall2 = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, fall2, 0, 0, 0 );
setEffMoveKey( spep_12 + 40, fall2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, fall2, -1.0, 1.0 );
setEffScaleKey( spep_12 + 40, fall2, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, fall2, 0 );
setEffRotateKey( spep_12 + 40, fall2, 0 );
setEffAlphaKey( spep_12 + 0, fall2, 255 );
setEffAlphaKey( spep_12 + 38, fall2, 255 );
setEffAlphaKey( spep_12 + 39, fall2, 255 );
setEffAlphaKey( spep_12 + 40, fall2, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13 = spep_12 + 40;
-------------------------------------------------------------
--敵に上からぶつかり頭突き
-------------------------------------------------------------
-- ** エフェクト等 ** --
headbutting_f = entryEffect( spep_13 + 0, SP_16, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, headbutting_f, 0, 0, 0 );
setEffMoveKey( spep_13 + 50, headbutting_f, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, headbutting_f, -1.0, 1.0 );
setEffScaleKey( spep_13 + 50, headbutting_f, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, headbutting_f, 0 );
setEffRotateKey( spep_13 + 50, headbutting_f, 0 );
setEffAlphaKey( spep_13 + 0, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 48, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 49, headbutting_f, 255 );
setEffAlphaKey( spep_13 + 50, headbutting_f, 0 );

-- ** エフェクト等 ** --
headbutting_b = entryEffect( spep_13 + 0, SP_17, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, headbutting_b, 0, 0, 0 );
setEffMoveKey( spep_13 + 50, headbutting_b, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, headbutting_b, -1.0, 1.0 );
setEffScaleKey( spep_13 + 50, headbutting_b, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, headbutting_b, 0 );
setEffRotateKey( spep_13 + 50, headbutting_b, 0 );
setEffAlphaKey( spep_13 + 0, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 48, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 49, headbutting_b, 255 );
setEffAlphaKey( spep_13 + 50, headbutting_b, 0 );

--敵の動き
setDisp( spep_13 + 0, 1, 1 );

changeAnime( spep_13 + 0, 1, 0 );
changeAnime( spep_13-1 + 32, 1, 8 );

setMoveKey( spep_13 + 0, 1, 29.8, -605.9 , 0 );
setMoveKey( spep_13-3 + 4, 1, 29.8, -605.9 , 0 );
setMoveKey( spep_13-3 + 6, 1, 29.8, -577.9 , 0 );
setMoveKey( spep_13-3 + 8, 1, 29.8, -549.8 , 0 );
setMoveKey( spep_13-3 + 10, 1, 29.8, -521.8 , 0 );
setMoveKey( spep_13-3 + 12, 1, 29.8, -493.8 , 0 );
setMoveKey( spep_13-3 + 14, 1, 29.8, -465.7 , 0 );
setMoveKey( spep_13-3 + 16, 1, 29.8, -437.7 , 0 );
setMoveKey( spep_13-3 + 18, 1, 29.8, -409.7 , 0 );
setMoveKey( spep_13-3 + 20, 1, 29.8, -381.6 , 0 );
setMoveKey( spep_13-3 + 22, 1, 29.8, -353.6 , 0 );
setMoveKey( spep_13-3 + 24, 1, 29.8, -325.6 , 0 );
setMoveKey( spep_13-3 + 26, 1, 29.8, -297.5 , 0 );
setMoveKey( spep_13-3 + 28, 1, 29.8, -269.5 , 0 );
setMoveKey( spep_13-1 + 31, 1, 29.8, -241.5 , 0 );
setMoveKey( spep_13-1 + 32, 1, -29, -56.8 , 0 );
setMoveKey( spep_13-3 + 34, 1, -35.7, -54.7 , 0 );
setMoveKey( spep_13-3 + 36, 1, -29.8, -175.7 , 0 );
setMoveKey( spep_13-3 + 38, 1, -32.4, -65.3 , 0 );
setMoveKey( spep_13-3 + 40, 1, -27.8, -159.4 , 0 );
setMoveKey( spep_13-3 + 42, 1, -30.2, -84.8 , 0 );
setMoveKey( spep_13-3 + 44, 1, -29.3, -153.1 , 0 );
setMoveKey( spep_13-3 + 46, 1, -30.7, -87.2 , 0 );
setMoveKey( spep_13-3 + 48, 1, -27, -144.3 , 0 );
setMoveKey( spep_13-3 + 50, 1, -30.1, -152 , 0 );
--setMoveKey( spep_13-3 + 52, 1, -27.7, -108.3 , 0 );

setScaleKey( spep_13 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_13-3 + 50, 1, 2.52, 2.52 );

setRotateKey( spep_13 + 0, 1, 0 );
setRotateKey( spep_13-3 + 50, 1, 0 );

--SE
--頭突き
SE039 = playSeVer2( spep_13 + 32, 1359, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_13 + 32, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 32, SE040, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_14 = spep_13 + 48;
-------------------------------------------------------------
--頭突きが敵にめり込む
-------------------------------------------------------------
-- ** エフェクト等 ** --
immerse_f = entryEffect( spep_14 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, immerse_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 50, immerse_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, immerse_f, -1.0, 1.0 );
setEffScaleKey( spep_14 + 50, immerse_f, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0, immerse_f, 0 );
setEffRotateKey( spep_14 + 50, immerse_f, 0 );
setEffAlphaKey( spep_14 + 0, immerse_f, 255 );
setEffAlphaKey( spep_14 + 48, immerse_f, 255 );
setEffAlphaKey( spep_14 + 49, immerse_f, 255 );
setEffAlphaKey( spep_14 + 50, immerse_f, 0 );

-- ** エフェクト等 ** --
immerse_b = entryEffect( spep_14 + 0, SP_19, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, immerse_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 50, immerse_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, immerse_b, -1.0, 1.0 );
setEffScaleKey( spep_14 + 50, immerse_b, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0, immerse_b, 0 );
setEffRotateKey( spep_14 + 50, immerse_b, 0 );
setEffAlphaKey( spep_14 + 0, immerse_b, 255 );
setEffAlphaKey( spep_14 + 48, immerse_b, 255 );
setEffAlphaKey( spep_14 + 49, immerse_b, 255 );
setEffAlphaKey( spep_14 + 50, immerse_b, 0 );

--敵の動き
setDisp( spep_14-3 + 48, 1, 0 );

setBlendColor(spep_14 + 0, 1, 3, 0, 0, 0, 1);
setBlendColor(spep_14 + 38, 1, 3, 0, 0, 0, 0);

changeAnime( spep_14 + 0, 1, 8 );

setMoveKey( spep_14 + 0, 1, -164.5, -519.8 , 0 );
--setMoveKey( spep_14-3 + 2, 1, 164.5, -519.7 , 0 );
setMoveKey( spep_14-3 + 4, 1, -164.5, -519.7 , 0 );
setMoveKey( spep_14-3 + 6, 1, -165.3, -520.7 , 0 );
setMoveKey( spep_14-3 + 8, 1, -166.1, -521.6 , 0 );
setMoveKey( spep_14-3 + 10, 1, -166.8, -522.6 , 0 );
setMoveKey( spep_14-3 + 12, 1, -167.6, -523.5 , 0 );
setMoveKey( spep_14-3 + 14, 1, -168.3, -524.4 , 0 );
setMoveKey( spep_14-3 + 16, 1, -169.1, -525.3 , 0 );
setMoveKey( spep_14-3 + 18, 1, -169.8, -526.3 , 0 );
setMoveKey( spep_14-3 + 20, 1, -170.6, -527.2 , 0 );
setMoveKey( spep_14-3 + 22, 1, -171.3, -528.1 , 0 );
setMoveKey( spep_14-3 + 24, 1, -172.1, -529.1 , 0 );
setMoveKey( spep_14-3 + 26, 1, -172.8, -530 , 0 );
setMoveKey( spep_14-3 + 28, 1, -173.6, -530.9 , 0 );
setMoveKey( spep_14-3 + 30, 1, -174.3, -531.9 , 0 );
setMoveKey( spep_14-3 + 32, 1, -175.1, -532.8 , 0 );
setMoveKey( spep_14-3 + 34, 1, -175.8, -533.8 , 0 );
setMoveKey( spep_14-3 + 36, 1, -176.6, -534.7 , 0 );
setMoveKey( spep_14-3 + 38, 1, -177.3, -535.6 , 0 );
setMoveKey( spep_14-3 + 40, 1, -178.1, -536.5 , 0 );
setMoveKey( spep_14-3 + 42, 1, -176.9, -535.9 , 0 );
setMoveKey( spep_14-3 + 44, 1, -160.6, -555.9 , 0 );
setMoveKey( spep_14-3 + 46, 1, -198.8, -514.1 , 0 );
setMoveKey( spep_14-3 + 48, 1, -198.6, -569.3 , 0 );
--setMoveKey( spep_14-3 + 50, 1, -156, -515.1 , 0 );
--setMoveKey( spep_14-3 + 52, 1, -176.8, -534.7 , 0 );

setScaleKey( spep_14 + 0, 1, 9.58,9.58);
setScaleKey( spep_14-3 + 6, 1, 9.63,9.63);
setScaleKey( spep_14-3 + 8, 1, 9.67,9.67);
setScaleKey( spep_14-3 + 10, 1, 9.72,9.72);
setScaleKey( spep_14-3 + 12, 1, 9.76,9.76);
setScaleKey( spep_14-3 + 14, 1, 9.81,9.81);
setScaleKey( spep_14-3 + 16, 1, 9.85,9.85);
setScaleKey( spep_14-3 + 18, 1, 9.9,9.9);
setScaleKey( spep_14-3 + 20, 1, 9.94,9.94);
setScaleKey( spep_14-3 + 22, 1, 9.99,9.99);
setScaleKey( spep_14-3 + 24, 1, 10.03,10.03);
setScaleKey( spep_14-3 + 26, 1, 10.08,10.08);
setScaleKey( spep_14-3 + 28, 1, 10.12,10.12);
setScaleKey( spep_14-3 + 30, 1, 10.16,10.16);
setScaleKey( spep_14-3 + 32, 1, 10.21,10.21);
setScaleKey( spep_14-3 + 34, 1, 10.26,10.26);
setScaleKey( spep_14-3 + 36, 1, 10.3,10.3);
setScaleKey( spep_14-3 + 38, 1, 10.34,10.34);
setScaleKey( spep_14-3 + 40, 1, 10.39,10.39);
setScaleKey( spep_14-3 + 42, 1, 10.51,10.51);
setScaleKey( spep_14-3 + 44, 1, 10.56,10.56);
setScaleKey( spep_14-3 + 46, 1, 10.6,10.6);
setScaleKey( spep_14-3 + 48, 1, 10.65,10.65);
--setScaleKey( spep_14-3 + 50, 1, 10.69,10.69);
--setScaleKey( spep_14-3 + 52, 1, 10.74,10.74);

setRotateKey( spep_14 + 0, 1, 0 );
setRotateKey( spep_14-3 + 48, 1, 0 );

--SE
--ヒビ入る
SE041 = playSeVer2( spep_14 + 0, 1250, "",spep_14 + 42, 0, 16, -1);
SE042 = playSeVer2( spep_14 + 0, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE042, 73 );
SE043 = playSeVer2( spep_14 + 0, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE043, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_15 = spep_14 + 46;
-------------------------------------------------------------
--爆発で吹き飛んでくる
-------------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_15 + 0, SP_20, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_15 + 114, finish_f, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_15 + 114, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish_f, 0 );
setEffRotateKey( spep_15 + 114, finish_f, 0 );
setEffAlphaKey( spep_15 + 0, finish_f, 255 );
setEffAlphaKey( spep_15 + 114, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_15 + 0, SP_21, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_15 + 114, finish_b, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_15 + 114, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish_b, 0 );
setEffRotateKey( spep_15 + 114, finish_b, 0 );
setEffAlphaKey( spep_15 + 0, finish_b, 255 );
setEffAlphaKey( spep_15 + 114, finish_b, 255 );

--敵の動き
setDisp( spep_15-3 + 14, 1, 1 );

changeAnime( spep_15-3 + 14, 1, 7 );
setBlendColor(spep_15-3 + 14, 1, 3, 0, 0, 0, 0.2);

setMoveKey( spep_15-3 + 14, 1, 30.1, -13.8 , 0 );
setMoveKey( spep_15-3 + 16, 1, -9.3, -85.3 , 0 );
setMoveKey( spep_15-3 + 18, 1, -13.2, -4.4 , 0 );
setMoveKey( spep_15-3 + 20, 1, 34.9, -105.5 , 0 );
setMoveKey( spep_15-3 + 22, 1, -20.1, -74.3 , 0 );
setMoveKey( spep_15-3 + 24, 1, 13, -99.2 , 0 );
setMoveKey( spep_15-3 + 26, 1, -0.9, -152.9 , 0 );
setMoveKey( spep_15-3 + 28, 1, -5.8, -122.1 , 0 );
setMoveKey( spep_15-3 + 30, 1, 33.5, -163.6 , 0 );
setMoveKey( spep_15-3 + 32, 1, -15.3, -173.6 , 0 );
setMoveKey( spep_15-3 + 34, 1, -6, -162.7 , 0 );
setMoveKey( spep_15-3 + 36, 1, 2.3, -188.5 , 0 );
setMoveKey( spep_15-3 + 38, 1, 0.7, -165.7 , 0 );
setMoveKey( spep_15-3 + 40, 1, -5.7, -182 , 0 );
setMoveKey( spep_15-3 + 42, 1, 6.8, -175.4 , 0 );
setMoveKey( spep_15-3 + 44, 1, -14.6, -166.3 , 0 );
setMoveKey( spep_15-3 + 46, 1, 3.6, -175.3 , 0 );
setMoveKey( spep_15-3 + 48, 1, -5.5, -168.3 , 0 );
setMoveKey( spep_15-3 + 50, 1, -4.2, -178.2 , 0 );
setMoveKey( spep_15-3 + 52, 1, 2.1, -171.6 , 0 );
setMoveKey( spep_15-3 + 54, 1, -8.8, -173.5 , 0 );
setMoveKey( spep_15-3 + 56, 1, -8.9, -173.6 , 0 );
setMoveKey( spep_15-3 + 58, 1, -9, -173.8 , 0 );
setMoveKey( spep_15-3 + 60, 1, -9, -174 , 0 );
setMoveKey( spep_15-3 + 62, 1, -9.1, -174.1 , 0 );
setMoveKey( spep_15-3 + 64, 1, -9.2, -174.3 , 0 );
setMoveKey( spep_15-3 + 66, 1, -9.2, -174.5 , 0 );
setMoveKey( spep_15-3 + 68, 1, -9.3, -174.6 , 0 );
setMoveKey( spep_15-3 + 70, 1, -9.4, -174.8 , 0 );
setMoveKey( spep_15-3 + 72, 1, -9.4, -175 , 0 );
setMoveKey( spep_15-3 + 74, 1, -9.5, -175.1 , 0 );
setMoveKey( spep_15-3 + 76, 1, -9.5, -175.4 , 0 );
setMoveKey( spep_15-3 + 78, 1, -9.7, -175.5 , 0 );
setMoveKey( spep_15-3 + 80, 1, -9.7, -175.7 , 0 );
setMoveKey( spep_15-3 + 82, 1, -9.8, -175.9 , 0 );
setMoveKey( spep_15-3 + 84, 1, -9.8, -176 , 0 );
setMoveKey( spep_15-3 + 86, 1, -9.9, -176.2 , 0 );
setMoveKey( spep_15-3 + 88, 1, -10, -176.4 , 0 );
setMoveKey( spep_15-3 + 90, 1, -10, -176.5 , 0 );
setMoveKey( spep_15-3 + 92, 1, -10.1, -176.7 , 0 );
setMoveKey( spep_15-3 + 94, 1, -10.2, -176.9 , 0 );
setMoveKey( spep_15-3 + 96, 1, -10.2, -177 , 0 );
setMoveKey( spep_15-3 + 98, 1, -10.3, -177.3 , 0 );
setMoveKey( spep_15-3 + 100, 1, -10.3, -177.4 , 0 );
setMoveKey( spep_15-3 + 102, 1, -10.4, -177.6 , 0 );
setMoveKey( spep_15-3 + 104, 1, -10.4, -177.8 , 0 );
setMoveKey( spep_15-3 + 106, 1, -10.5, -177.9 , 0 );
setMoveKey( spep_15-3 + 108, 1, -10.6, -178.1 , 0 );
setMoveKey( spep_15-3 + 110, 1, -10.6, -178.3 , 0 );
setMoveKey( spep_15-3 + 112, 1, -10.7, -178.4 , 0 );

setScaleKey( spep_15-3 + 14, 1, 0.2, 0.2 );
setScaleKey( spep_15-3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_15-3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_15-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_15-3 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_15-3 + 24, 1, 1.06, 1.06 );
setScaleKey( spep_15-3 + 26, 1, 1.23, 1.23 );
setScaleKey( spep_15-3 + 28, 1, 1.4, 1.4 );
setScaleKey( spep_15-3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_15-3 + 32, 1, 1.74, 1.74 );
setScaleKey( spep_15-3 + 38, 1, 1.74, 1.74 );
setScaleKey( spep_15-3 + 40, 1, 1.75, 1.75 );
setScaleKey( spep_15-3 + 50, 1, 1.75, 1.75 );
setScaleKey( spep_15-3 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_15-3 + 64, 1, 1.76, 1.76 );
setScaleKey( spep_15-3 + 66, 1, 1.77, 1.77 );
setScaleKey( spep_15-3 + 76, 1, 1.77, 1.77 );
setScaleKey( spep_15-3 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_15-3 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_15-3 + 90, 1, 1.79, 1.79 );
setScaleKey( spep_15-3 + 102, 1, 1.79, 1.79 );
setScaleKey( spep_15-3 + 104, 1, 1.8, 1.8 );
setScaleKey( spep_15-3 + 112, 1, 1.8, 1.8 );

setRotateKey( spep_15-3 + 14, 1, 0 );
setRotateKey( spep_15-3 + 112, 1, 0 );

--SE
--爆発
SE044 = playSeVer2( spep_15 + 0, 1024, "", 0, 0, 0, -1);

--画面割れる
SE045 = playSeVer2( spep_15 + 32, 1025, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_15 + 32, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_15 + 10 ); -- ダメージ表示フレーム
endPhase( spep_15 + 102 ); -- 終了フレーム
end

