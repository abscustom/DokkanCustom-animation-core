--1023210:時の界王神(洗脳)_闇の裁き
--sp_effect_a7_00045

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
SP_01=	158600	;--	構える
SP_02=	158602	;--	構えアップ　カットイン
SP_03=	158604	;--	攻撃を当てる（手前）
SP_04=	158605	;--	攻撃を当てる（奥）

--エフェクト(てき)
SP_01x=	158601	;--	構える	(敵)
SP_02x=	158603	;--	構えアップ　カットイン	(敵)
SP_03x=	158606	;--	攻撃を当てる（手前）	(敵)
SP_04x=	158607	;--	攻撃を当てる（奥）	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 126, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, hold, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 126, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 124, hold, 255 );
setEffAlphaKey( spep_0 + 125, hold, 255 );
setEffAlphaKey( spep_0 + 126, hold, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--腕あげる
SE002 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);

--空に魔法陣出る
SE003 = playSeVer2( spep_0 + 34, 1271, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 145 );
setPitch( spep_0 + 34, SE003, -100 );
setTimeStretch( SE003, 0.93, 30, 4 );
SE004 = playSeVer2( spep_0 + 34, 1176, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 47 );
SE005 = playSeVer2( spep_0 + 34, 1214, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 155 );
SE006 = playSeVer2( spep_0 + 34, 1240, "",spep_0 + 118, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 40, 1325, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 71 );
setPitch( spep_0 + 40, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );

--魔法陣色変わる
SE008 = playSeVer2( spep_0 + 90, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 73 );
SE009 = playSeVer2( spep_0 + 90, 1265, "",spep_0 + 250, 0, 8, 0.6);

--次の準備
spep_1=spep_0+126;
------------------------------------------------------
--構えアップ　カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, cut, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, cut, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cut, 0 );
setEffRotateKey( spep_1 + 112, cut, 0 );
setEffAlphaKey( spep_1 + 0, cut, 255 );
setEffAlphaKey( spep_1 + 112, cut, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 20,  906, 92, 0x100, -1, 0, 0, -55.8 );
setEffShake( spep_1-3 + 20, shuchusen1, 92, 20 );

setEffMoveKey( spep_1-3 + 20, shuchusen1, 0, -55.8 , 0 );
setEffMoveKey( spep_1-3 + 112, shuchusen1, 0, -55.8 , 0 );

setEffScaleKey( spep_1-3 + 20, shuchusen1, 1.57, 2.04 );
setEffScaleKey( spep_1-3 + 112, shuchusen1, 1.57, 2.04 );

setEffRotateKey( spep_1-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_1-3 + 112, shuchusen1, 0 );

setEffAlphaKey( spep_1-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 112, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, -100, 518, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -100,  518);
setEffMoveKey(  spep_x +84,  ctgogo,  -100,  518);

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
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--攻撃を当てる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 292, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 292, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 290, hit_f, 255 );
setEffAlphaKey( spep_3 + 292, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 292, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 292, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 290, hit_b, 255 );
setEffAlphaKey( spep_3 + 292, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3-3 + 0, 1, 118 );

setMoveKey( spep_3 + 0, 1, 2266.3, -2943.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 1970.6, -2562 , 0 );
setMoveKey( spep_3-3 + 4, 1, 1674.9, -2180.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 1379.3, -1798.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 1083.6, -1417.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 788, -1035.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 492.3, -654.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 196.8, -272.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 196.2, -272.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 195.6, -271.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 195, -270.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 194.4, -269.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 193.8, -268.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 193.2, -268 , 0 );
setMoveKey( spep_3-3 + 28, 1, 192.6, -267.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 192.1, -266.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 191.5, -265.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 190.9, -264.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 190.3, -264 , 0 );
setMoveKey( spep_3-3 + 38, 1, 189.7, -263.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 189.1, -262.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 188.5, -261.5 , 0 );

setScaleKey( spep_3 + 0, 1, 13.81, 13.81 );
--setScaleKey( spep_3-3 + 2, 1, 12.19, 12.19 );
setScaleKey( spep_3-3 + 4, 1, 10.57, 10.57 );
setScaleKey( spep_3-3 + 6, 1, 8.94, 8.94 );
setScaleKey( spep_3-3 + 8, 1, 7.32, 7.32 );
setScaleKey( spep_3-3 + 10, 1, 5.7, 5.7 );
setScaleKey( spep_3-3 + 12, 1, 4.08, 4.08 );
setScaleKey( spep_3-3 + 14, 1, 2.46, 2.46 );
setScaleKey( spep_3-3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_3-3 + 18, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 20, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 22, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 26, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 28, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 30, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 32, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 34, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 38, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 40, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 42, 1, 2.35, 2.35 );

setRotateKey( spep_3 + 0, 1, 21.4 );
setRotateKey( spep_3-3 + 42, 1, 21.4 );

--SE
--発射前溜め
SE012 = playSeVer2( spep_3 + 0, 1271, "",spep_3 + 152, 8, 30, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 153 );
setStartTimeMs( SE012,  583 );
SE013 = playSeVer2( spep_3 + 4, 1325, "",spep_3 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 4, SE013, 71 );
setPitch( spep_3 + 4, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );
SE014 = playSeVer2( spep_3 + 4, 1176, "",spep_3 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 4, SE014, 45 );
SE015 = playSeVer2( spep_3 + 4, 1240, "",spep_3 + 86, 0, 10, -1);
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 188.5, -261.5 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.35, 2.35 );
    setRotateKey( SP_dodge + 9, 1, 21.4 );
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵の動き
setDisp( spep_3-1 + 126, 1, 0 );

changeAnime( spep_3-3 + 78, 1, 108 );
changeAnime( spep_3-3 + 122, 1, 107 );

setMoveKey( spep_3-3 + 44, 1, 187.9, -260.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 187.4, -259.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 186.8, -259.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 186.2, -258.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 185.6, -257.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 185, -256.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 184.5, -255.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 184.5, -255.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 224.5, -287.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 172.5, -243.9 , 0 );
setMoveKey( spep_3-3 + 77, 1, 180.5, -283.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 215.7, -211.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 196.7, -266.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, 189.8, -225 , 0 );
setMoveKey( spep_3-3 + 84, 1, 234.8, -279.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 204.6, -346.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 270.4, -261.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 264.1, -312.5 , 0 );
setMoveKey( spep_3-3 + 92, 1, 218, -243.3 , 0 );
setMoveKey( spep_3-3 + 94, 1, 275.7, -310.2 , 0 );
setMoveKey( spep_3-3 + 96, 1, 245.5, -273 , 0 );
setMoveKey( spep_3-3 + 98, 1, 231.3, -323.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 273.1, -302.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, 250.9, -273.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 228.7, -308.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 254.4, -311.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 255.5, -370.2 , 0 );
setMoveKey( spep_3-3 + 110, 1, 280.5, -345.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, 319.5, -405.3 , 0 );
setMoveKey( spep_3-3 + 114, 1, 312.8, -384.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, 334.5, -445.4 , 0 );
setMoveKey( spep_3-3 + 118, 1, 399.4, -505.4 , 0 );
setMoveKey( spep_3-3 + 121, 1, 432.2, -549.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 535.5, -580.9 , 0 );
setMoveKey( spep_3-1 + 126, 1, 944.3, -794.6 , 0 );

setScaleKey( spep_3-3 + 44, 1, 2.35, 2.35 );
setScaleKey( spep_3-3 + 46, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 48, 1, 2.33, 2.33 );
setScaleKey( spep_3-3 + 50, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 52, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 54, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 56, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 78, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 80, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 82, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 84, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 86, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 88, 1, 2.51, 2.51 );
setScaleKey( spep_3-3 + 90, 1, 2.56, 2.56 );
setScaleKey( spep_3-3 + 92, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 94, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 96, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 98, 1, 2.73, 2.73 );
setScaleKey( spep_3-3 + 100, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 102, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 104, 1, 2.85, 2.85 );
setScaleKey( spep_3-3 + 106, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 108, 1, 2.94, 2.94 );
setScaleKey( spep_3-3 + 110, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 112, 1, 3.13, 3.13 );
setScaleKey( spep_3-3 + 114, 1, 3.29, 3.29 );
setScaleKey( spep_3-3 + 116, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 118, 1, 3.83, 3.83 );
setScaleKey( spep_3-3 + 121, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 122, 1, 1.59, 1.59 );
setScaleKey( spep_3-1 + 126, 1, 3.29, 3.29 );

setRotateKey( spep_3-3 + 77, 1, 21.4 );
setRotateKey( spep_3-3 + 78, 1, 60 );
setRotateKey( spep_3-3 + 121, 1, 60 );
setRotateKey( spep_3-3 + 122, 1, 48 );
setRotateKey( spep_3-1 + 126, 1, 48 );

--敵の動き
setDisp( spep_3-3 + 150, 1, 1 );

changeAnime( spep_3-3 + 150, 1, 107 );

setMoveKey( spep_3-3 + 150, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3-3 + 151, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3-3 + 152, 1, 31, -3.9 , 0 );
setMoveKey( spep_3-3 + 153, 1, 31, -3.9 , 0 );
setMoveKey( spep_3-3 + 154, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3-3 + 155, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3-3 + 156, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3-3 + 157, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, 15, -65.4 , 0 );
setMoveKey( spep_3-3 + 159, 1, 15, -65.4 , 0 );
setMoveKey( spep_3-3 + 160, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3-3 + 161, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3-3 + 162, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 292, 1, -45.3, -142.1 , 0 );


setScaleKey( spep_3-3 + 150, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 152, 1, 0.36, 0.36 );
setScaleKey( spep_3-3 + 154, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 156, 1, 0.77, 0.77 );
setScaleKey( spep_3-3 + 158, 1, 1.03, 1.03 );
setScaleKey( spep_3-3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 164, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 166, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 168, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 170, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 174, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 176, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 178, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 292, 1, 1.79, 1.79 );

setRotateKey( spep_3-3 + 150, 1, 0 );
setRotateKey( spep_3-3 + 152, 1, 105 );
setRotateKey( spep_3-3 + 154, 1, 240 );
setRotateKey( spep_3-3 + 156, 1, 405 );
setRotateKey( spep_3-3 + 158, 1, 600 );
setRotateKey( spep_3-3 + 160, 1, 825 );
setRotateKey( spep_3-3 + 162, 1, 1080 );
setRotateKey( spep_3 + 292, 1, 1080 );

--SE
--腕前へ
SE016 = playSeVer2( spep_3 + 60, 1003, "", 0, 0, 0, -1);

--敵ヒット
SE017 = playSeVer2( spep_3 + 72, 1017, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 72, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE018, 76 );
SE019 = playSeVer2( spep_3 + 72, 1284, "",spep_3 + 158, 0, 58, 0.6);
setSeVolumeByWorkId( spep_3 + 72, SE019, 112 );
setPitch( spep_3 + 72, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );

--敵飛んでいく
SE020 = playSeVer2( spep_3 + 116, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE020, 79 );

--画面割れる
SE021 = playSeVer2( spep_3 + 164, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 166 );
endPhase( spep_3 + 266 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 126, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, hold, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 126, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 124, hold, 255 );
setEffAlphaKey( spep_0 + 125, hold, 255 );
setEffAlphaKey( spep_0 + 126, hold, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--腕あげる
SE002 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);

--空に魔法陣出る
SE003 = playSeVer2( spep_0 + 34, 1271, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 145 );
setPitch( spep_0 + 34, SE003, -100 );
setTimeStretch( SE003, 0.93, 30, 4 );
SE004 = playSeVer2( spep_0 + 34, 1176, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 47 );
SE005 = playSeVer2( spep_0 + 34, 1214, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 155 );
SE006 = playSeVer2( spep_0 + 34, 1240, "",spep_0 + 118, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 40, 1325, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 71 );
setPitch( spep_0 + 40, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );

--魔法陣色変わる
SE008 = playSeVer2( spep_0 + 90, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 73 );
SE009 = playSeVer2( spep_0 + 90, 1265, "",spep_0 + 250, 0, 8, 0.6);

--次の準備
spep_1=spep_0+126;
------------------------------------------------------
--構えアップ　カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, cut, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, cut, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cut, 0 );
setEffRotateKey( spep_1 + 112, cut, 0 );
setEffAlphaKey( spep_1 + 0, cut, 255 );
setEffAlphaKey( spep_1 + 112, cut, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 20,  906, 92, 0x100, -1, 0, 0, -55.8 );
setEffShake( spep_1-3 + 20, shuchusen1, 92, 20 );

setEffMoveKey( spep_1-3 + 20, shuchusen1, 0, -55.8 , 0 );
setEffMoveKey( spep_1-3 + 112, shuchusen1, 0, -55.8 , 0 );

setEffScaleKey( spep_1-3 + 20, shuchusen1, 1.57, 2.04 );
setEffScaleKey( spep_1-3 + 112, shuchusen1, 1.57, 2.04 );

setEffRotateKey( spep_1-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_1-3 + 112, shuchusen1, 0 );

setEffAlphaKey( spep_1-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 112, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 140, 518, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  140,  518);
setEffMoveKey(  spep_x +84,  ctgogo,  140,  518);

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
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--攻撃を当てる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 292, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 292, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 290, hit_f, 255 );
setEffAlphaKey( spep_3 + 292, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 292, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 292, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 290, hit_b, 255 );
setEffAlphaKey( spep_3 + 292, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3-3 + 0, 1, 118 );

setMoveKey( spep_3 + 0, 1, 2266.3, -2943.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 1970.6, -2562 , 0 );
setMoveKey( spep_3-3 + 4, 1, 1674.9, -2180.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 1379.3, -1798.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 1083.6, -1417.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 788, -1035.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 492.3, -654.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 196.8, -272.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 196.2, -272.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 195.6, -271.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 195, -270.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 194.4, -269.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 193.8, -268.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 193.2, -268 , 0 );
setMoveKey( spep_3-3 + 28, 1, 192.6, -267.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 192.1, -266.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 191.5, -265.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 190.9, -264.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 190.3, -264 , 0 );
setMoveKey( spep_3-3 + 38, 1, 189.7, -263.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 189.1, -262.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 188.5, -261.5 , 0 );

setScaleKey( spep_3 + 0, 1, 13.81, 13.81 );
--setScaleKey( spep_3-3 + 2, 1, 12.19, 12.19 );
setScaleKey( spep_3-3 + 4, 1, 10.57, 10.57 );
setScaleKey( spep_3-3 + 6, 1, 8.94, 8.94 );
setScaleKey( spep_3-3 + 8, 1, 7.32, 7.32 );
setScaleKey( spep_3-3 + 10, 1, 5.7, 5.7 );
setScaleKey( spep_3-3 + 12, 1, 4.08, 4.08 );
setScaleKey( spep_3-3 + 14, 1, 2.46, 2.46 );
setScaleKey( spep_3-3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_3-3 + 18, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 20, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 22, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 26, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 28, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 30, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 32, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 34, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 38, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 40, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 42, 1, 2.35, 2.35 );

setRotateKey( spep_3 + 0, 1, 21.4 );
setRotateKey( spep_3-3 + 42, 1, 21.4 );

--SE
--発射前溜め
SE012 = playSeVer2( spep_3 + 0, 1271, "",spep_3 + 152, 8, 30, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 153 );
setStartTimeMs( SE012,  583 );
SE013 = playSeVer2( spep_3 + 4, 1325, "",spep_3 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 4, SE013, 71 );
setPitch( spep_3 + 4, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );
SE014 = playSeVer2( spep_3 + 4, 1176, "",spep_3 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 4, SE014, 45 );
SE015 = playSeVer2( spep_3 + 4, 1240, "",spep_3 + 86, 0, 10, -1);
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 188.5, -261.5 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.35, 2.35 );
    setRotateKey( SP_dodge + 9, 1, 21.4 );
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵の動き
setDisp( spep_3-1 + 126, 1, 0 );

changeAnime( spep_3-3 + 78, 1, 108 );
changeAnime( spep_3-3 + 122, 1, 107 );

setMoveKey( spep_3-3 + 44, 1, 187.9, -260.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 187.4, -259.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 186.8, -259.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 186.2, -258.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 185.6, -257.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 185, -256.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 184.5, -255.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 184.5, -255.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 224.5, -287.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 172.5, -243.9 , 0 );
setMoveKey( spep_3-3 + 77, 1, 180.5, -283.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 215.7, -211.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 196.7, -266.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, 189.8, -225 , 0 );
setMoveKey( spep_3-3 + 84, 1, 234.8, -279.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 204.6, -346.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 270.4, -261.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 264.1, -312.5 , 0 );
setMoveKey( spep_3-3 + 92, 1, 218, -243.3 , 0 );
setMoveKey( spep_3-3 + 94, 1, 275.7, -310.2 , 0 );
setMoveKey( spep_3-3 + 96, 1, 245.5, -273 , 0 );
setMoveKey( spep_3-3 + 98, 1, 231.3, -323.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 273.1, -302.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, 250.9, -273.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 228.7, -308.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 254.4, -311.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 255.5, -370.2 , 0 );
setMoveKey( spep_3-3 + 110, 1, 280.5, -345.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, 319.5, -405.3 , 0 );
setMoveKey( spep_3-3 + 114, 1, 312.8, -384.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, 334.5, -445.4 , 0 );
setMoveKey( spep_3-3 + 118, 1, 399.4, -505.4 , 0 );
setMoveKey( spep_3-3 + 121, 1, 432.2, -549.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 535.5, -580.9 , 0 );
setMoveKey( spep_3-1 + 126, 1, 944.3, -794.6 , 0 );

setScaleKey( spep_3-3 + 44, 1, 2.35, 2.35 );
setScaleKey( spep_3-3 + 46, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 48, 1, 2.33, 2.33 );
setScaleKey( spep_3-3 + 50, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 52, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 54, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 56, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 78, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 80, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 82, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 84, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 86, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 88, 1, 2.51, 2.51 );
setScaleKey( spep_3-3 + 90, 1, 2.56, 2.56 );
setScaleKey( spep_3-3 + 92, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 94, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 96, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 98, 1, 2.73, 2.73 );
setScaleKey( spep_3-3 + 100, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 102, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 104, 1, 2.85, 2.85 );
setScaleKey( spep_3-3 + 106, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 108, 1, 2.94, 2.94 );
setScaleKey( spep_3-3 + 110, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 112, 1, 3.13, 3.13 );
setScaleKey( spep_3-3 + 114, 1, 3.29, 3.29 );
setScaleKey( spep_3-3 + 116, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 118, 1, 3.83, 3.83 );
setScaleKey( spep_3-3 + 121, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 122, 1, 1.59, 1.59 );
setScaleKey( spep_3-1 + 126, 1, 3.29, 3.29 );

setRotateKey( spep_3-3 + 77, 1, 21.4 );
setRotateKey( spep_3-3 + 78, 1, 60 );
setRotateKey( spep_3-3 + 121, 1, 60 );
setRotateKey( spep_3-3 + 122, 1, 48 );
setRotateKey( spep_3-1 + 126, 1, 48 );

--敵の動き
setDisp( spep_3-3 + 150, 1, 1 );

changeAnime( spep_3-3 + 150, 1, 107 );

setMoveKey( spep_3-3 + 150, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3-3 + 151, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3-3 + 152, 1, 31, -3.9 , 0 );
setMoveKey( spep_3-3 + 153, 1, 31, -3.9 , 0 );
setMoveKey( spep_3-3 + 154, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3-3 + 155, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3-3 + 156, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3-3 + 157, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, 15, -65.4 , 0 );
setMoveKey( spep_3-3 + 159, 1, 15, -65.4 , 0 );
setMoveKey( spep_3-3 + 160, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3-3 + 161, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3-3 + 162, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 292, 1, -45.3, -142.1 , 0 );


setScaleKey( spep_3-3 + 150, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 152, 1, 0.36, 0.36 );
setScaleKey( spep_3-3 + 154, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 156, 1, 0.77, 0.77 );
setScaleKey( spep_3-3 + 158, 1, 1.03, 1.03 );
setScaleKey( spep_3-3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 164, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 166, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 168, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 170, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 174, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 176, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 178, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 292, 1, 1.79, 1.79 );

setRotateKey( spep_3-3 + 150, 1, 0 );
setRotateKey( spep_3-3 + 152, 1, 105 );
setRotateKey( spep_3-3 + 154, 1, 240 );
setRotateKey( spep_3-3 + 156, 1, 405 );
setRotateKey( spep_3-3 + 158, 1, 600 );
setRotateKey( spep_3-3 + 160, 1, 825 );
setRotateKey( spep_3-3 + 162, 1, 1080 );
setRotateKey( spep_3 + 292, 1, 1080 );

--SE
--腕前へ
SE016 = playSeVer2( spep_3 + 60, 1003, "", 0, 0, 0, -1);

--敵ヒット
SE017 = playSeVer2( spep_3 + 72, 1017, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 72, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE018, 76 );
SE019 = playSeVer2( spep_3 + 72, 1284, "",spep_3 + 158, 0, 58, 0.6);
setSeVolumeByWorkId( spep_3 + 72, SE019, 112 );
setPitch( spep_3 + 72, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );

--敵飛んでいく
SE020 = playSeVer2( spep_3 + 116, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE020, 79 );

--画面割れる
SE021 = playSeVer2( spep_3 + 164, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 166 );
endPhase( spep_3 + 266 );

end