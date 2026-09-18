--1022340:桃白白_必殺どどん波
--sp_effect_a3_00080
--sp2219

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
SP_01= 157598 ;-- 構え～突っ込む
SP_02= 157599 ;-- 敵を蹴り上げ～殴る　手前
SP_03= 157600 ;-- 敵を蹴り上げ～殴る　奥
SP_04= 157603 ;-- 敵吹っ飛ぶ　手前
SP_05= 157604 ;-- 敵吹っ飛ぶ　奥
SP_06= 157605 ;-- 構える
SP_07= 157606 ;-- 手を上げる
SP_08= 157607 ;-- ドドンパ発射
SP_09= 157608 ;-- 気弾が敵にせまる～爆発　手前
SP_10= 157609 ;-- 気弾が敵にせまる～爆発　奥

--エフェクト(敵)
SP_01x= 157598 ;-- 構え～突っ込む 
SP_02x= 157601 ;-- 敵を蹴り上げ～殴る　手前 (敵)
SP_03x= 157602 ;-- 敵を蹴り上げ～殴る　奥 (敵)
SP_04x= 157603 ;-- 敵吹っ飛ぶ　手前 
SP_05x= 157604 ;-- 敵吹っ飛ぶ　奥 
SP_06x= 157605 ;-- 構える 
SP_07x= 157606 ;-- 手を上げる 
SP_08x= 157607 ;-- ドドンパ発射 
SP_09x= 157608 ;-- 気弾が敵にせまる～爆発　手前 
SP_10x= 157609 ;-- 気弾が敵にせまる～爆発　奥 

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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
-- 構え～突っ込む
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, ready, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 136, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 134, ready, 255 );
setEffAlphaKey( spep_0 + 135, ready, 255 );
setEffAlphaKey( spep_0 + 136, ready, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

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
]]--

--SE
--構える
SE001 = playSe( spep_0 + 0, 1233 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--向かってくる
SE003 = playSe( spep_0 + 92, 1182 );
SE004 = playSe( spep_0 + 92, 1117 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 118 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--次の準備
spep_1=spep_0+136;
------------------------------------------------------
-- 敵を蹴り上げ～殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 96, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 94, panting_f, 255 );
setEffAlphaKey( spep_1 + 95, panting_f, 255 );
setEffAlphaKey( spep_1 + 96, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 96, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 94, panting_b, 255 );
setEffAlphaKey( spep_1 + 95, panting_b, 255 );
setEffAlphaKey( spep_1 + 96, panting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 88, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1-3 + 16, 1, 107 );
changeAnime( spep_1-3 + 74, 1, 105 );

setMoveKey( spep_1 + 0, 1, 176.7, -30.4 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 166.5, -30.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 156.2, -30 , 0 );
setMoveKey( spep_1-3 + 6, 1, 146, -29.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 135.7, -29.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 125.5, -29.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 115.3, -29.3 , 0 );
setMoveKey( spep_1-3 + 15, 1, 105.1, -29.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 106.1, 73.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 127.7, 102.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 145.2, 82.3 , 0 );
setMoveKey( spep_1-3 + 22, 1, 128.1, 57.7 , 0 );
setMoveKey( spep_1-3 + 24, 1, 119.3, 12.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 99.7, -54.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 72.1, -129.6 , 0 );
setMoveKey( spep_1-3 + 30, 1, 65.7, -113.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 63.4, -102.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 65, -97.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 65.2, -90.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 65.1, -85.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 64.6, -81.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 63.9, -78.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, 62.8, -76.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 61.6, -74.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 60.3, -74.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 58.8, -74.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 57.3, -75 , 0 );
setMoveKey( spep_1-3 + 54, 1, 55.7, -76.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 54.1, -77.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 52.4, -80 , 0 );
setMoveKey( spep_1-3 + 60, 1, 50.9, -82.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, 49.4, -85.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 48, -88.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 46.6, -92.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, 45.4, -95.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 44.3, -99.9 , 0 );
setMoveKey( spep_1-3 + 73, 1, 43.2, -104.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -24.9, -204.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, -67.5, -406.8 , 0 );
setMoveKey( spep_1-3 + 78, 1, -7.1, -554.6 , 0 );
setMoveKey( spep_1-3 + 80, 1, -34.7, -651.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 2.2, -805.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, -2.4, -942.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, 43.6, -1117.8 , 0 );
setMoveKey( spep_1-1 + 88, 1, 44.3, -1236 , 0 );

setScaleKey( spep_1 + 0, 1, 2.21, 2.21 );
--setScaleKey( spep_1-3 + 2, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 4, 1, 2.18, 2.18 );
setScaleKey( spep_1-3 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 8, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 10, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 15, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 18, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 20, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 28, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 30, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 32, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 38, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 42, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 50, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 56, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 58, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 64, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 66, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 68, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 73, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_1-3 + 76, 1, 4.67, 4.67 );
setScaleKey( spep_1-3 + 78, 1, 5.57, 5.57 );
setScaleKey( spep_1-3 + 80, 1, 6.48, 6.48 );
setScaleKey( spep_1-3 + 82, 1, 7.38, 7.38 );
setScaleKey( spep_1-3 + 84, 1, 8.29, 8.29 );
setScaleKey( spep_1-3 + 86, 1, 9.2, 9.2 );
setScaleKey( spep_1-1 + 88, 1, 10.12, 10.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 15, 1, 0 );
setRotateKey( spep_1-3 + 16, 1, -90.1 );
setRotateKey( spep_1-3 + 18, 1, -87.1 );
setRotateKey( spep_1-3 + 20, 1, -85.3 );
setRotateKey( spep_1-3 + 22, 1, -83.7 );
setRotateKey( spep_1-3 + 24, 1, -82.1 );
setRotateKey( spep_1-3 + 26, 1, -80.7 );
setRotateKey( spep_1-3 + 28, 1, -79.2 );
setRotateKey( spep_1-3 + 30, 1, -77.8 );
setRotateKey( spep_1-3 + 32, 1, -76.4 );
setRotateKey( spep_1-3 + 34, 1, -75.1 );
setRotateKey( spep_1-3 + 36, 1, -73.7 );
setRotateKey( spep_1-3 + 38, 1, -72.3 );
setRotateKey( spep_1-3 + 40, 1, -71 );
setRotateKey( spep_1-3 + 42, 1, -69.6 );
setRotateKey( spep_1-3 + 44, 1, -68.3 );
setRotateKey( spep_1-3 + 46, 1, -67 );
setRotateKey( spep_1-3 + 48, 1, -65.7 );
setRotateKey( spep_1-3 + 50, 1, -64.3 );
setRotateKey( spep_1-3 + 52, 1, -63 );
setRotateKey( spep_1-3 + 54, 1, -61.7 );
setRotateKey( spep_1-3 + 56, 1, -60.4 );
setRotateKey( spep_1-3 + 58, 1, -59.1 );
setRotateKey( spep_1-3 + 60, 1, -57.8 );
setRotateKey( spep_1-3 + 62, 1, -56.5 );
setRotateKey( spep_1-3 + 64, 1, -55.2 );
setRotateKey( spep_1-3 + 66, 1, -53.9 );
setRotateKey( spep_1-3 + 68, 1, -52.6 );
setRotateKey( spep_1-3 + 70, 1, -51.3 );
setRotateKey( spep_1-3 + 73, 1, -50 );
setRotateKey( spep_1-3 + 74, 1, 166 );
setRotateKey( spep_1-1 + 88, 1, 166 );

--SE
--向かってくる
stopSe( spep_1 + 2, SE003, 14 );
stopSe( spep_1 + 2, SE004, 14 );

--着地
SE005 = playSe( spep_1 + 2, 1106 );
setSeVolumeByWorkId( spep_1 + 2, SE005, 164 );
SE006 = playSe( spep_1 + 2, 1108 );
setSeVolumeByWorkId( spep_1 + 2, SE006, 197 );

--蹴り上げる
SE007 = playSe( spep_1 + 14, 1003 );
SE008 = playSe( spep_1 + 18, 1187 );

--敵に向かっていく
SE009 = playSe( spep_1 + 42, 1116 );
stopSe( spep_1 + 64, SE009, 14 );
SE010 = playSe( spep_1 + 42, 44 );

--パンチ
SE011 = playSe( spep_1 + 68, 1189 );
SE012 = playSe( spep_1 + 72, 1009 );
SE013 = playSe( spep_1 + 72, 1120 );
setSeVolumeByWorkId( spep_1 + 72, SE013, 55 );
SE014 = playSe( spep_1 + 72, 1000 );
setSeVolumeByWorkId( spep_1 + 72, SE014, 82 );
SE015 = playSe( spep_1 + 74, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
-- 敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fri_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fri_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 34, fri_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fri_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, fri_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fri_f, 0 );
setEffRotateKey( spep_2 + 34, fri_f, 0 );
setEffAlphaKey( spep_2 + 0, fri_f, 255 );
setEffAlphaKey( spep_2 + 32, fri_f, 255 );
setEffAlphaKey( spep_2 + 33, fri_f, 255 );
setEffAlphaKey( spep_2 + 34, fri_f, 0 );

-- ** エフェクト等 ** --
fri_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fri_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 34, fri_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fri_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, fri_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fri_b, 0 );
setEffRotateKey( spep_2 + 34, fri_b, 0 );
setEffAlphaKey( spep_2 + 0, fri_b, 255 );
setEffAlphaKey( spep_2 + 32, fri_b, 255 );
setEffAlphaKey( spep_2 + 33, fri_b, 255 );
setEffAlphaKey( spep_2 + 34, fri_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 34, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -284.1, -48.3 , 0 );
setMoveKey( spep_2 + 2, 1, -200.5, -34.7 , 0 );
setMoveKey( spep_2 + 4, 1, -164.5, -28.3 , 0 );
setMoveKey( spep_2 + 6, 1, -136.7, -23.2 , 0 );
setMoveKey( spep_2 + 8, 1, -113, -18.6 , 0 );
setMoveKey( spep_2 + 10, 1, -92.1, -14.5 , 0 );
setMoveKey( spep_2 + 12, 1, -73.1, -10.7 , 0 );
setMoveKey( spep_2 + 14, 1, -55.7, -7.2 , 0 );
setMoveKey( spep_2 + 16, 1, -39.4, -3.8 , 0 );
setMoveKey( spep_2 + 18, 1, -24.3, -0.6 , 0 );
setMoveKey( spep_2 + 20, 1, -10, 2.4 , 0 );
setMoveKey( spep_2 + 22, 1, 3.5, 5.4 , 0 );
setMoveKey( spep_2 + 24, 1, 16.3, 8.2 , 0 );
setMoveKey( spep_2 + 26, 1, 28.6, 11 , 0 );
setMoveKey( spep_2 + 28, 1, 40.1, 13.5 , 0 );
setMoveKey( spep_2 + 30, 1, 51.3, 16.1 , 0 );
setMoveKey( spep_2 + 32, 1, 61.8, 18.5 , 0 );
setMoveKey( spep_2 + 34, 1, 71.8, 20.9 , 0 );

setScaleKey( spep_2 + 0, 1, 10.4, 10.38 );
setScaleKey( spep_2 + 2, 1, 8.24, 8.25 );
setScaleKey( spep_2 + 4, 1, 7.33, 7.35 );
setScaleKey( spep_2 + 6, 1, 6.64, 6.66 );
setScaleKey( spep_2 + 8, 1, 6.05, 6.07 );
setScaleKey( spep_2 + 10, 1, 5.54, 5.56 );
setScaleKey( spep_2 + 12, 1, 5.08, 5.1 );
setScaleKey( spep_2 + 14, 1, 4.66, 4.68 );
setScaleKey( spep_2 + 16, 1, 4.27, 4.29 );
setScaleKey( spep_2 + 18, 1, 3.9, 3.92 );
setScaleKey( spep_2 + 20, 1, 3.56, 3.58 );
setScaleKey( spep_2 + 22, 1, 3.24, 3.26 );
setScaleKey( spep_2 + 24, 1, 2.94, 2.96 );
setScaleKey( spep_2 + 26, 1, 2.65, 2.67 );
setScaleKey( spep_2 + 28, 1, 2.38, 2.39 );
setScaleKey( spep_2 + 30, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 32, 1, 1.88, 1.89 );
setScaleKey( spep_2 + 34, 1, 1.65, 1.66 );

setRotateKey( spep_2 + 0, 1, 71 );
setRotateKey( spep_2 + 34, 1, 71 );

--SE
--敵飛んでいく
SE016 = playSe( spep_2 + 0, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+32;
------------------------------------------------------
-- 構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 80, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 80, tame, 255 );

--SE
--敵飛んでいく
stopSe( spep_3 + 2, SE016, 28 );

--構える
SE017 = playSe( spep_3 + 0, 1330 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 79 );
stopSe( spep_3 + 72, SE017, 6 );
SE018 = playSe( spep_3 + 0, 8 );
stopSe( spep_3 + 72, SE018, 6 );
setPitch( spep_3 + 0, SE018, -400 );
setTimeStretch( SE018, 0.73, 10, 1 );
SE019 = playSe( spep_3 + 8, 1192 );
setSeVolumeByWorkId( spep_3 + 8, SE019, 195 );

--白フェード
entryFade( spep_3 + 72, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+80;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 手を上げる
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, up, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, up, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up, 0 );
setEffRotateKey( spep_5 + 86, up, 0 );
setEffAlphaKey( spep_5 + 0, up, 255 );
setEffAlphaKey( spep_5 + 84, up, 255 );
setEffAlphaKey( spep_5 + 85, up, 255 );
setEffAlphaKey( spep_5 + 86, up, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5-3 + 78,  906, 10, 0x100, -1, 0, 0, 90.6 );
setEffShake( spep_5-3 + 78, shuchusen1, 10, 20 );
setEffMoveKey( spep_5-3 + 78, shuchusen1, 0, 90.6 , 0 );
setEffMoveKey( spep_5-3 + 88, shuchusen1, 0, 90.6 , 0 );

setEffScaleKey( spep_5-3 + 78, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_5-3 + 80, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_5-3 + 82, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_5-3 + 84, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_5-3 + 86, shuchusen1, 1.29, 1.29 );
setEffScaleKey( spep_5-3 + 88, shuchusen1, 1.33, 1.33 );

setEffRotateKey( spep_5-3 + 78, shuchusen1, 180 );
setEffRotateKey( spep_5-3 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_5-3 + 78, shuchusen1, 255 );
setEffAlphaKey( spep_5-3 + 88, shuchusen1, 255 );

--SE
--気弾打ち前溜め
SE022 = playSe( spep_5 + 0, 1278 );
setSeVolumeByWorkId( spep_5 + 0, SE022, 50 );
SE021 = playSe( spep_5 + 4, 1271 );
setSeVolumeByWorkId( spep_5 + 4, SE021, 0 );
setSeVolumeByWorkId( spep_5 + 5, SE021, 8.3 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 16.6 );
setSeVolumeByWorkId( spep_5 + 7, SE021, 24.9 );
setSeVolumeByWorkId( spep_5 + 8, SE021, 33.2 );
setSeVolumeByWorkId( spep_5 + 9, SE021, 41.5 );
setSeVolumeByWorkId( spep_5 + 10, SE021, 49.8 );
setSeVolumeByWorkId( spep_5 + 11, SE021, 58.1 );
setSeVolumeByWorkId( spep_5 + 12, SE021, 66.4 );
setSeVolumeByWorkId( spep_5 + 13, SE021, 74.7 );
setSeVolumeByWorkId( spep_5 + 14, SE021, 83 );
setSeVolumeByWorkId( spep_5 + 15, SE021, 91.3 );
setSeVolumeByWorkId( spep_5 + 16, SE021, 100 );
setStartTimeMs( SE021,  550 );
stopSe( spep_5 + 84, SE021, 30 );
SE023 = playSe( spep_5 + 68, 1004 );
setPitch( spep_5 + 68, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+86;
------------------------------------------------------
-- ドドンパ発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_6 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 66, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 64, beam, 255 );
setEffAlphaKey( spep_6 + 65, beam, 255 );
setEffAlphaKey( spep_6 + 66, beam, 0 );

--SE
--気弾打ち前溜め
stopSe( spep_6 + 2, SE022, 32 );

--気弾溜め
SE024 = playSe( spep_6 + 0, 49 );

--気弾発射
SE026 = playSe( spep_6 + 24, 1312 );
setSeVolumeByWorkId( spep_6 + 24, SE026, 132 );
stopSe( spep_6 + 46, SE026, 30 );
SE027 = playSe( spep_6 + 24, 1027 );
setSeVolumeByWorkId( spep_6 + 24, SE027, 59 );
SE028 = playSe( spep_6 + 24, 1193,"",0.6 );
setSeVolumeByWorkId( spep_6 + 24, SE028, 168 );
stopSe( spep_6 + 84, SE028, 36 );
SE025 = playSe( spep_6 + 40, 1145 );
setSeVolumeByWorkId( spep_6 + 40, SE025, 0 );
setSeVolumeByWorkId( spep_6 + 41, SE025, 5 );
setSeVolumeByWorkId( spep_6 + 42, SE025, 10 );
setSeVolumeByWorkId( spep_6 + 43, SE025, 15 );
setSeVolumeByWorkId( spep_6 + 44, SE025, 20 );
setSeVolumeByWorkId( spep_6 + 45, SE025, 25 );
setSeVolumeByWorkId( spep_6 + 46, SE025, 30 );
setSeVolumeByWorkId( spep_6 + 47, SE025, 35 );
setSeVolumeByWorkId( spep_6 + 48, SE025, 40 );
setSeVolumeByWorkId( spep_6 + 49, SE025, 45 );
setSeVolumeByWorkId( spep_6 + 50, SE025, 50 );
setSeVolumeByWorkId( spep_6 + 51, SE025, 55 );
setSeVolumeByWorkId( spep_6 + 52, SE025, 60 );
setSeVolumeByWorkId( spep_6 + 53, SE025, 65 );
setSeVolumeByWorkId( spep_6 + 54, SE025, 70 );
setSeVolumeByWorkId( spep_6 + 55, SE025, 75 );
setSeVolumeByWorkId( spep_6 + 56, SE025, 80 );
setSeVolumeByWorkId( spep_6 + 57, SE025, 85 );
setSeVolumeByWorkId( spep_6 + 58, SE025, 90 );
setSeVolumeByWorkId( spep_6 + 59, SE025, 95 );
setSeVolumeByWorkId( spep_6 + 60, SE025, 100 );
setStartTimeMs( SE025,  283 );
stopSe( spep_6 + 60, SE025, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+66;
------------------------------------------------------
-- 気弾が敵にせまる～爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 150, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 150, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 150, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 150, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 36, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );
changeAnime( spep_7-3 + 20, 1, 108 );

setMoveKey( spep_7 + 0, 1, -37.6, -99.4 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -32.8, -93.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -27.5, -86.1 , 0 );
setMoveKey( spep_7-3 + 6, 1, -21.3, -78.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, -14.5, -69.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, -6.8, -59.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 1.6, -49.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, 10.6, -38.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 20.6, -26.1 , 0 );
setMoveKey( spep_7-3 + 19, 1, 31.3, -13.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, 71, -23.9 , 0 );
setMoveKey( spep_7-3 + 22, 1, 71.4, -23.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 72.2, -22.7 , 0 );
setMoveKey( spep_7-3 + 26, 1, 73.2, -21.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, 74.4, -20.1 , 0 );
setMoveKey( spep_7-3 + 30, 1, 76.1, -18.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 78.1, -16.1 , 0 );
setMoveKey( spep_7-3 + 34, 1, 86.8, -6.2 , 0 );
setMoveKey( spep_7-1 + 36, 1, 97.9, 6.4 , 0 );

setScaleKey( spep_7 + 0, 1, 5.67, 5.67 );
--setScaleKey( spep_7-3 + 2, 1, 5.49, 5.49 );
setScaleKey( spep_7-3 + 4, 1, 5.28, 5.28 );
setScaleKey( spep_7-3 + 6, 1, 5.06, 5.06 );
setScaleKey( spep_7-3 + 8, 1, 4.83, 4.83 );
setScaleKey( spep_7-3 + 10, 1, 4.58, 4.58 );
setScaleKey( spep_7-3 + 12, 1, 4.31, 4.31 );
setScaleKey( spep_7-3 + 14, 1, 4.03, 4.03 );
setScaleKey( spep_7-3 + 16, 1, 3.74, 3.74 );
setScaleKey( spep_7-3 + 19, 1, 3.43, 3.43 );
setScaleKey( spep_7-3 + 20, 1, 2.95, 2.95 );
setScaleKey( spep_7-3 + 22, 1, 2.76, 2.76 );
setScaleKey( spep_7-3 + 24, 1, 2.56, 2.56 );
setScaleKey( spep_7-3 + 26, 1, 2.36, 2.36 );
setScaleKey( spep_7-3 + 28, 1, 2.14, 2.14 );
setScaleKey( spep_7-3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_7-3 + 32, 1, 1.69, 1.69 );
setScaleKey( spep_7-3 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_7-1 + 36, 1, 1.16, 1.16 );

setRotateKey( spep_7 + 0, 1, 60.4 );
setRotateKey( spep_7 + 2, 1, 60.5 );
setRotateKey( spep_7-3 + 19, 1, 60.5 );
setRotateKey( spep_7-3 + 20, 1, -2.5 );
setRotateKey( spep_7-1 + 36, 1, -2.5 );

--SE
--気弾飛んでいく
SE029 = playSe( spep_7 + 0, 1304 );
setSeVolumeByWorkId( spep_7 + 0, SE029, 72 );
stopSe( spep_7 + 52, SE029, 10 );
SE030 = playSe( spep_7 + 24, 1021 ,"",0.6);

--爆発
SE031 = playSe( spep_7 + 36, 1033 );
SE032 = playSe( spep_7 + 36, 1159 );

--終わり
dealDamage( spep_7 +36 );
endPhase( spep_7 + 136 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え～突っ込む
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, -1.0, 1.0 );
setEffScaleKey( spep_0 + 136, ready, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 136, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 134, ready, 255 );
setEffAlphaKey( spep_0 + 135, ready, 255 );
setEffAlphaKey( spep_0 + 136, ready, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

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
]]--

--SE
--構える
SE001 = playSe( spep_0 + 0, 1233 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--向かってくる
SE003 = playSe( spep_0 + 92, 1182 );
SE004 = playSe( spep_0 + 92, 1117 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 118 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--次の準備
spep_1=spep_0+136;
------------------------------------------------------
-- 敵を蹴り上げ～殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 96, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 94, panting_f, 255 );
setEffAlphaKey( spep_1 + 95, panting_f, 255 );
setEffAlphaKey( spep_1 + 96, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 96, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 94, panting_b, 255 );
setEffAlphaKey( spep_1 + 95, panting_b, 255 );
setEffAlphaKey( spep_1 + 96, panting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 88, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1-3 + 16, 1, 107 );
changeAnime( spep_1-3 + 74, 1, 105 );

setMoveKey( spep_1 + 0, 1, 176.7, -30.4 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 166.5, -30.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 156.2, -30 , 0 );
setMoveKey( spep_1-3 + 6, 1, 146, -29.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 135.7, -29.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 125.5, -29.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 115.3, -29.3 , 0 );
setMoveKey( spep_1-3 + 15, 1, 105.1, -29.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 106.1, 73.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 127.7, 102.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 145.2, 82.3 , 0 );
setMoveKey( spep_1-3 + 22, 1, 128.1, 57.7 , 0 );
setMoveKey( spep_1-3 + 24, 1, 119.3, 12.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 99.7, -54.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 72.1, -129.6 , 0 );
setMoveKey( spep_1-3 + 30, 1, 65.7, -113.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 63.4, -102.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 65, -97.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 65.2, -90.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 65.1, -85.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 64.6, -81.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 63.9, -78.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, 62.8, -76.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 61.6, -74.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 60.3, -74.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 58.8, -74.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 57.3, -75 , 0 );
setMoveKey( spep_1-3 + 54, 1, 55.7, -76.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 54.1, -77.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 52.4, -80 , 0 );
setMoveKey( spep_1-3 + 60, 1, 50.9, -82.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, 49.4, -85.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 48, -88.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 46.6, -92.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, 45.4, -95.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 44.3, -99.9 , 0 );
setMoveKey( spep_1-3 + 73, 1, 43.2, -104.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -24.9, -204.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, -67.5, -406.8 , 0 );
setMoveKey( spep_1-3 + 78, 1, -7.1, -554.6 , 0 );
setMoveKey( spep_1-3 + 80, 1, -34.7, -651.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 2.2, -805.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, -2.4, -942.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, 43.6, -1117.8 , 0 );
setMoveKey( spep_1-1 + 88, 1, 44.3, -1236 , 0 );

setScaleKey( spep_1 + 0, 1, 2.21, 2.21 );
--setScaleKey( spep_1-3 + 2, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 4, 1, 2.18, 2.18 );
setScaleKey( spep_1-3 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 8, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 10, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 15, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 18, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 20, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 28, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 30, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 32, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 38, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 42, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 50, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 56, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 58, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 64, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 66, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 68, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 73, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_1-3 + 76, 1, 4.67, 4.67 );
setScaleKey( spep_1-3 + 78, 1, 5.57, 5.57 );
setScaleKey( spep_1-3 + 80, 1, 6.48, 6.48 );
setScaleKey( spep_1-3 + 82, 1, 7.38, 7.38 );
setScaleKey( spep_1-3 + 84, 1, 8.29, 8.29 );
setScaleKey( spep_1-3 + 86, 1, 9.2, 9.2 );
setScaleKey( spep_1-1 + 88, 1, 10.12, 10.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 15, 1, 0 );
setRotateKey( spep_1-3 + 16, 1, -90.1 );
setRotateKey( spep_1-3 + 18, 1, -87.1 );
setRotateKey( spep_1-3 + 20, 1, -85.3 );
setRotateKey( spep_1-3 + 22, 1, -83.7 );
setRotateKey( spep_1-3 + 24, 1, -82.1 );
setRotateKey( spep_1-3 + 26, 1, -80.7 );
setRotateKey( spep_1-3 + 28, 1, -79.2 );
setRotateKey( spep_1-3 + 30, 1, -77.8 );
setRotateKey( spep_1-3 + 32, 1, -76.4 );
setRotateKey( spep_1-3 + 34, 1, -75.1 );
setRotateKey( spep_1-3 + 36, 1, -73.7 );
setRotateKey( spep_1-3 + 38, 1, -72.3 );
setRotateKey( spep_1-3 + 40, 1, -71 );
setRotateKey( spep_1-3 + 42, 1, -69.6 );
setRotateKey( spep_1-3 + 44, 1, -68.3 );
setRotateKey( spep_1-3 + 46, 1, -67 );
setRotateKey( spep_1-3 + 48, 1, -65.7 );
setRotateKey( spep_1-3 + 50, 1, -64.3 );
setRotateKey( spep_1-3 + 52, 1, -63 );
setRotateKey( spep_1-3 + 54, 1, -61.7 );
setRotateKey( spep_1-3 + 56, 1, -60.4 );
setRotateKey( spep_1-3 + 58, 1, -59.1 );
setRotateKey( spep_1-3 + 60, 1, -57.8 );
setRotateKey( spep_1-3 + 62, 1, -56.5 );
setRotateKey( spep_1-3 + 64, 1, -55.2 );
setRotateKey( spep_1-3 + 66, 1, -53.9 );
setRotateKey( spep_1-3 + 68, 1, -52.6 );
setRotateKey( spep_1-3 + 70, 1, -51.3 );
setRotateKey( spep_1-3 + 73, 1, -50 );
setRotateKey( spep_1-3 + 74, 1, 166 );
setRotateKey( spep_1-1 + 88, 1, 166 );

--SE
--向かってくる
stopSe( spep_1 + 2, SE003, 14 );
stopSe( spep_1 + 2, SE004, 14 );

--着地
SE005 = playSe( spep_1 + 2, 1106 );
setSeVolumeByWorkId( spep_1 + 2, SE005, 164 );
SE006 = playSe( spep_1 + 2, 1108 );
setSeVolumeByWorkId( spep_1 + 2, SE006, 197 );

--蹴り上げる
SE007 = playSe( spep_1 + 14, 1003 );
SE008 = playSe( spep_1 + 18, 1187 );

--敵に向かっていく
SE009 = playSe( spep_1 + 42, 1116 );
stopSe( spep_1 + 64, SE009, 14 );
SE010 = playSe( spep_1 + 42, 44 );

--パンチ
SE011 = playSe( spep_1 + 68, 1189 );
SE012 = playSe( spep_1 + 72, 1009 );
SE013 = playSe( spep_1 + 72, 1120 );
setSeVolumeByWorkId( spep_1 + 72, SE013, 55 );
SE014 = playSe( spep_1 + 72, 1000 );
setSeVolumeByWorkId( spep_1 + 72, SE014, 82 );
SE015 = playSe( spep_1 + 74, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
-- 敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fri_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fri_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 34, fri_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fri_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, fri_f,1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fri_f, 0 );
setEffRotateKey( spep_2 + 34, fri_f, 0 );
setEffAlphaKey( spep_2 + 0, fri_f, 255 );
setEffAlphaKey( spep_2 + 32, fri_f, 255 );
setEffAlphaKey( spep_2 + 33, fri_f, 255 );
setEffAlphaKey( spep_2 + 34, fri_f, 0 );

-- ** エフェクト等 ** --
fri_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fri_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 34, fri_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fri_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, fri_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fri_b, 0 );
setEffRotateKey( spep_2 + 34, fri_b, 0 );
setEffAlphaKey( spep_2 + 0, fri_b, 255 );
setEffAlphaKey( spep_2 + 32, fri_b, 255 );
setEffAlphaKey( spep_2 + 33, fri_b, 255 );
setEffAlphaKey( spep_2 + 34, fri_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 34, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -284.1, -48.3 , 0 );
setMoveKey( spep_2 + 2, 1, -200.5, -34.7 , 0 );
setMoveKey( spep_2 + 4, 1, -164.5, -28.3 , 0 );
setMoveKey( spep_2 + 6, 1, -136.7, -23.2 , 0 );
setMoveKey( spep_2 + 8, 1, -113, -18.6 , 0 );
setMoveKey( spep_2 + 10, 1, -92.1, -14.5 , 0 );
setMoveKey( spep_2 + 12, 1, -73.1, -10.7 , 0 );
setMoveKey( spep_2 + 14, 1, -55.7, -7.2 , 0 );
setMoveKey( spep_2 + 16, 1, -39.4, -3.8 , 0 );
setMoveKey( spep_2 + 18, 1, -24.3, -0.6 , 0 );
setMoveKey( spep_2 + 20, 1, -10, 2.4 , 0 );
setMoveKey( spep_2 + 22, 1, 3.5, 5.4 , 0 );
setMoveKey( spep_2 + 24, 1, 16.3, 8.2 , 0 );
setMoveKey( spep_2 + 26, 1, 28.6, 11 , 0 );
setMoveKey( spep_2 + 28, 1, 40.1, 13.5 , 0 );
setMoveKey( spep_2 + 30, 1, 51.3, 16.1 , 0 );
setMoveKey( spep_2 + 32, 1, 61.8, 18.5 , 0 );
setMoveKey( spep_2 + 34, 1, 71.8, 20.9 , 0 );

setScaleKey( spep_2 + 0, 1, 10.4, 10.38 );
setScaleKey( spep_2 + 2, 1, 8.24, 8.25 );
setScaleKey( spep_2 + 4, 1, 7.33, 7.35 );
setScaleKey( spep_2 + 6, 1, 6.64, 6.66 );
setScaleKey( spep_2 + 8, 1, 6.05, 6.07 );
setScaleKey( spep_2 + 10, 1, 5.54, 5.56 );
setScaleKey( spep_2 + 12, 1, 5.08, 5.1 );
setScaleKey( spep_2 + 14, 1, 4.66, 4.68 );
setScaleKey( spep_2 + 16, 1, 4.27, 4.29 );
setScaleKey( spep_2 + 18, 1, 3.9, 3.92 );
setScaleKey( spep_2 + 20, 1, 3.56, 3.58 );
setScaleKey( spep_2 + 22, 1, 3.24, 3.26 );
setScaleKey( spep_2 + 24, 1, 2.94, 2.96 );
setScaleKey( spep_2 + 26, 1, 2.65, 2.67 );
setScaleKey( spep_2 + 28, 1, 2.38, 2.39 );
setScaleKey( spep_2 + 30, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 32, 1, 1.88, 1.89 );
setScaleKey( spep_2 + 34, 1, 1.65, 1.66 );

setRotateKey( spep_2 + 0, 1, 71 );
setRotateKey( spep_2 + 34, 1, 71 );

--SE
--敵飛んでいく
SE016 = playSe( spep_2 + 0, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+32;
------------------------------------------------------
-- 構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 80, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 80, tame, 255 );

--SE
--敵飛んでいく
stopSe( spep_3 + 2, SE016, 28 );

--構える
SE017 = playSe( spep_3 + 0, 1330 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 79 );
stopSe( spep_3 + 72, SE017, 6 );
SE018 = playSe( spep_3 + 0, 8 );
stopSe( spep_3 + 72, SE018, 6 );
setPitch( spep_3 + 0, SE018, -400 );
setTimeStretch( SE018, 0.73, 10, 1 );
SE019 = playSe( spep_3 + 8, 1192 );
setSeVolumeByWorkId( spep_3 + 8, SE019, 195 );

--白フェード
entryFade( spep_3 + 72, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+80;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 手を上げる
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, up, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, up, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up, 0 );
setEffRotateKey( spep_5 + 86, up, 0 );
setEffAlphaKey( spep_5 + 0, up, 255 );
setEffAlphaKey( spep_5 + 84, up, 255 );
setEffAlphaKey( spep_5 + 85, up, 255 );
setEffAlphaKey( spep_5 + 86, up, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5-3 + 78,  906, 10, 0x100, -1, 0, 0, 90.6 );
setEffShake( spep_5-3 + 78, shuchusen1, 10, 20 );
setEffMoveKey( spep_5-3 + 78, shuchusen1, 0, 90.6 , 0 );
setEffMoveKey( spep_5-3 + 88, shuchusen1, 0, 90.6 , 0 );

setEffScaleKey( spep_5-3 + 78, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_5-3 + 80, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_5-3 + 82, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_5-3 + 84, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_5-3 + 86, shuchusen1, 1.29, 1.29 );
setEffScaleKey( spep_5-3 + 88, shuchusen1, 1.33, 1.33 );

setEffRotateKey( spep_5-3 + 78, shuchusen1, 180 );
setEffRotateKey( spep_5-3 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_5-3 + 78, shuchusen1, 255 );
setEffAlphaKey( spep_5-3 + 88, shuchusen1, 255 );

--SE
--気弾打ち前溜め
SE022 = playSe( spep_5 + 0, 1278 );
setSeVolumeByWorkId( spep_5 + 0, SE022, 50 );
SE021 = playSe( spep_5 + 4, 1271 );
setSeVolumeByWorkId( spep_5 + 4, SE021, 0 );
setSeVolumeByWorkId( spep_5 + 5, SE021, 8.3 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 16.6 );
setSeVolumeByWorkId( spep_5 + 7, SE021, 24.9 );
setSeVolumeByWorkId( spep_5 + 8, SE021, 33.2 );
setSeVolumeByWorkId( spep_5 + 9, SE021, 41.5 );
setSeVolumeByWorkId( spep_5 + 10, SE021, 49.8 );
setSeVolumeByWorkId( spep_5 + 11, SE021, 58.1 );
setSeVolumeByWorkId( spep_5 + 12, SE021, 66.4 );
setSeVolumeByWorkId( spep_5 + 13, SE021, 74.7 );
setSeVolumeByWorkId( spep_5 + 14, SE021, 83 );
setSeVolumeByWorkId( spep_5 + 15, SE021, 91.3 );
setSeVolumeByWorkId( spep_5 + 16, SE021, 100 );
setStartTimeMs( SE021,  550 );
stopSe( spep_5 + 84, SE021, 30 );
SE023 = playSe( spep_5 + 68, 1004 );
setPitch( spep_5 + 68, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+86;
------------------------------------------------------
-- ドドンパ発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_6 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_6 + 66, beam, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 66, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 64, beam, 255 );
setEffAlphaKey( spep_6 + 65, beam, 255 );
setEffAlphaKey( spep_6 + 66, beam, 0 );

--SE
--気弾打ち前溜め
stopSe( spep_6 + 2, SE022, 32 );

--気弾溜め
SE024 = playSe( spep_6 + 0, 49 );

--気弾発射
SE026 = playSe( spep_6 + 24, 1312 );
setSeVolumeByWorkId( spep_6 + 24, SE026, 132 );
stopSe( spep_6 + 46, SE026, 30 );
SE027 = playSe( spep_6 + 24, 1027 );
setSeVolumeByWorkId( spep_6 + 24, SE027, 59 );
SE028 = playSe( spep_6 + 24, 1193,"",0.6 );
setSeVolumeByWorkId( spep_6 + 24, SE028, 168 );
stopSe( spep_6 + 84, SE028, 36 );
SE025 = playSe( spep_6 + 40, 1145 );
setSeVolumeByWorkId( spep_6 + 40, SE025, 0 );
setSeVolumeByWorkId( spep_6 + 41, SE025, 5 );
setSeVolumeByWorkId( spep_6 + 42, SE025, 10 );
setSeVolumeByWorkId( spep_6 + 43, SE025, 15 );
setSeVolumeByWorkId( spep_6 + 44, SE025, 20 );
setSeVolumeByWorkId( spep_6 + 45, SE025, 25 );
setSeVolumeByWorkId( spep_6 + 46, SE025, 30 );
setSeVolumeByWorkId( spep_6 + 47, SE025, 35 );
setSeVolumeByWorkId( spep_6 + 48, SE025, 40 );
setSeVolumeByWorkId( spep_6 + 49, SE025, 45 );
setSeVolumeByWorkId( spep_6 + 50, SE025, 50 );
setSeVolumeByWorkId( spep_6 + 51, SE025, 55 );
setSeVolumeByWorkId( spep_6 + 52, SE025, 60 );
setSeVolumeByWorkId( spep_6 + 53, SE025, 65 );
setSeVolumeByWorkId( spep_6 + 54, SE025, 70 );
setSeVolumeByWorkId( spep_6 + 55, SE025, 75 );
setSeVolumeByWorkId( spep_6 + 56, SE025, 80 );
setSeVolumeByWorkId( spep_6 + 57, SE025, 85 );
setSeVolumeByWorkId( spep_6 + 58, SE025, 90 );
setSeVolumeByWorkId( spep_6 + 59, SE025, 95 );
setSeVolumeByWorkId( spep_6 + 60, SE025, 100 );
setStartTimeMs( SE025,  283 );
stopSe( spep_6 + 60, SE025, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+66;
------------------------------------------------------
-- 気弾が敵にせまる～爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 150, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 150, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 150, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 150, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 36, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );
changeAnime( spep_7-3 + 20, 1, 108 );

setMoveKey( spep_7 + 0, 1, -37.6, -99.4 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -32.8, -93.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -27.5, -86.1 , 0 );
setMoveKey( spep_7-3 + 6, 1, -21.3, -78.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, -14.5, -69.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, -6.8, -59.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 1.6, -49.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, 10.6, -38.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 20.6, -26.1 , 0 );
setMoveKey( spep_7-3 + 19, 1, 31.3, -13.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, 71, -23.9 , 0 );
setMoveKey( spep_7-3 + 22, 1, 71.4, -23.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 72.2, -22.7 , 0 );
setMoveKey( spep_7-3 + 26, 1, 73.2, -21.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, 74.4, -20.1 , 0 );
setMoveKey( spep_7-3 + 30, 1, 76.1, -18.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 78.1, -16.1 , 0 );
setMoveKey( spep_7-3 + 34, 1, 86.8, -6.2 , 0 );
setMoveKey( spep_7-1 + 36, 1, 97.9, 6.4 , 0 );

setScaleKey( spep_7 + 0, 1, 5.67, 5.67 );
--setScaleKey( spep_7-3 + 2, 1, 5.49, 5.49 );
setScaleKey( spep_7-3 + 4, 1, 5.28, 5.28 );
setScaleKey( spep_7-3 + 6, 1, 5.06, 5.06 );
setScaleKey( spep_7-3 + 8, 1, 4.83, 4.83 );
setScaleKey( spep_7-3 + 10, 1, 4.58, 4.58 );
setScaleKey( spep_7-3 + 12, 1, 4.31, 4.31 );
setScaleKey( spep_7-3 + 14, 1, 4.03, 4.03 );
setScaleKey( spep_7-3 + 16, 1, 3.74, 3.74 );
setScaleKey( spep_7-3 + 19, 1, 3.43, 3.43 );
setScaleKey( spep_7-3 + 20, 1, 2.95, 2.95 );
setScaleKey( spep_7-3 + 22, 1, 2.76, 2.76 );
setScaleKey( spep_7-3 + 24, 1, 2.56, 2.56 );
setScaleKey( spep_7-3 + 26, 1, 2.36, 2.36 );
setScaleKey( spep_7-3 + 28, 1, 2.14, 2.14 );
setScaleKey( spep_7-3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_7-3 + 32, 1, 1.69, 1.69 );
setScaleKey( spep_7-3 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_7-1 + 36, 1, 1.16, 1.16 );

setRotateKey( spep_7 + 0, 1, 60.4 );
setRotateKey( spep_7 + 2, 1, 60.5 );
setRotateKey( spep_7-3 + 19, 1, 60.5 );
setRotateKey( spep_7-3 + 20, 1, -2.5 );
setRotateKey( spep_7-1 + 36, 1, -2.5 );

--SE
--気弾飛んでいく
SE029 = playSe( spep_7 + 0, 1304 );
setSeVolumeByWorkId( spep_7 + 0, SE029, 72 );
stopSe( spep_7 + 52, SE029, 10 );
SE030 = playSe( spep_7 + 24, 1021 ,"",0.6);

--爆発
SE031 = playSe( spep_7 + 36, 1033 );
SE032 = playSe( spep_7 + 36, 1159 );

--終わり
dealDamage( spep_7 +36 );
endPhase( spep_7 + 136 );
end