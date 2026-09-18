--1023240:超サイヤ人ゴッドトランクス(ゼノ)_キーソードブレイカー
--sp_effect_b2_00049
--sp2296

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
SP_01= 158573 ;-- 前方突進
SP_02= 158574 ;-- ラッシュ　前面
SP_03= 158576 ;-- ラッシュ　背面
SP_04= 158577 ;-- 剣を出して突進
SP_05= 158578 ;-- 縦斬撃
SP_06= 158579 ;-- フィニッシュ

--エフェクト(てき)
SP_01x= 158573 ;-- 前方突進
SP_02x= 158575 ;-- ラッシュ　前面
SP_03x= 158576 ;-- ラッシュ　背面
SP_04x= 158577 ;-- 剣を出して突進
SP_05x= 158578 ;-- 縦斬撃
SP_06x= 158579 ;-- フィニッシュ

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
--前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 112, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 112, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 112, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 112, rush, 255 );

--SE
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 140, 0, 16, -1);

--突っ込んでくる
SE002 = playSeVer2( spep_0 + 28, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1314, "",spep_0 + 136, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 28, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE004, 59 );
setTimeStretch( SE004, 1.67, 30, 4 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 56 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
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

--顔カットインのタイミング指定
spep_x=spep_0 +22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

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
]]

--SE
--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 104, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+112;
------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 24, 1, 108 );
changeAnime( spep_1-3 + 38, 1, 106 );
changeAnime( spep_1-3 + 52, 1, 108 );
changeAnime( spep_1-3 + 66, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 128, 1, 106 );

setMoveKey( spep_1 + 0, 1, 287.7, 382.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 263.8, 347.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 239.9, 311.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 216, 276.4 , 0 );
setMoveKey( spep_1-3 + 8, 1, 192.1, 241 , 0 );
setMoveKey( spep_1-3 + 10, 1, 168.2, 205.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 144.3, 170.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 120.4, 134.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 96.6, 99.3 , 0 );
setMoveKey( spep_1-3 + 23, 1, 96.6, 99.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 138.5, 144.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 144, 133.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 138.5, 142 , 0 );
setMoveKey( spep_1-3 + 30, 1, 144, 136.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 141.3, 139.2 , 0 );
setMoveKey( spep_1-3 + 37, 1, 141.3, 139.2 , 0 );
setMoveKey( spep_1-3 + 38, 1, 122.2, 112 , 0 );
setMoveKey( spep_1-3 + 40, 1, 127.6, 101 , 0 );
setMoveKey( spep_1-3 + 42, 1, 122.2, 109.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 127.6, 103.8 , 0 );
setMoveKey( spep_1-3 + 46, 1, 124.9, 106.5 , 0 );
setMoveKey( spep_1-3 + 51, 1, 124.9, 106.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 150.3, 189.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, 155.8, 178.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 150.3, 186.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, 155.8, 181.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 153, 184 , 0 );
setMoveKey( spep_1-3 + 65, 1, 153, 184 , 0 );
setMoveKey( spep_1-3 + 66, 1, 138.6, 135.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 144.1, 124.6 , 0 );
setMoveKey( spep_1-3 + 70, 1, 138.6, 132.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, 144.1, 127.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 141.3, 130 , 0 );
setMoveKey( spep_1-3 + 76, 1, 139.7, 131.5 , 0 );
setMoveKey( spep_1-3 + 78, 1, 138, 133.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 136.3, 134.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 134.7, 136.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 133.1, 137.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 131.4, 139.3 , 0 );
setMoveKey( spep_1-3 + 88, 1, 129.7, 140.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 128.1, 142.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 126.4, 143.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 124.7, 145.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 123, 147.1 , 0 );
setMoveKey( spep_1-3 + 99, 1, 121.5, 148.6 , 0 );
setMoveKey( spep_1-3 + 100, 1, 102.7, 244.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 107.4, 204.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 142.1, 238.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 114.2, 221.1 , 0 );
setMoveKey( spep_1-3 + 108, 1, 138.7, 212.9 , 0 );
setMoveKey( spep_1-3 + 110, 1, 138.7, 248.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 138.7, 221.1 , 0 );
setMoveKey( spep_1-3 + 127, 1, 138.7, 221.1 , 0 );
setMoveKey( spep_1-3 + 128, 1, 120.6, 223.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 113.6, 166.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 132.1, 177.5 , 0 );
setMoveKey( spep_1-3 + 134, 1, 90.5, 138.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, 141.4, 200.2 , 0 );
setMoveKey( spep_1-3 + 138, 1, 167, 294.6 , 0 );
setMoveKey( spep_1-3 + 140, 1, 190.4, 328.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, 211.3, 381.5 , 0 );
setMoveKey( spep_1-3 + 144, 1, 202.3, 366.4 , 0 );
setMoveKey( spep_1-3 + 146, 1, 202.1, 366.9 , 0 );
setMoveKey( spep_1-3 + 148, 1, 201.8, 367.5 , 0 );
setMoveKey( spep_1-3 + 150, 1, 201.5, 368.1 , 0 );
setMoveKey( spep_1-3 + 152, 1, 201.2, 368.7 , 0 );
setMoveKey( spep_1-3 + 154, 1, 201, 369.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 200.6, 369.8 , 0 );
setMoveKey( spep_1-3 + 158, 1, 200.4, 370.4 , 0 );
setMoveKey( spep_1-3 + 160, 1, 200.1, 371 , 0 );
setMoveKey( spep_1-3 + 162, 1, 199.8, 371.6 , 0 );
setMoveKey( spep_1-3 + 164, 1, 199.5, 372.1 , 0 );
setMoveKey( spep_1-3 + 166, 1, 199.3, 372.7 , 0 );
setMoveKey( spep_1-3 + 168, 1, 198.9, 373.3 , 0 );
setMoveKey( spep_1-3 + 170, 1, 198.7, 373.9 , 0 );
setMoveKey( spep_1-3 + 172, 1, 198.4, 374.4 , 0 );
setMoveKey( spep_1-3 + 174, 1, 198.1, 375 , 0 );
setMoveKey( spep_1-3 + 176, 1, 197.8, 375.6 , 0 );
setMoveKey( spep_1-3 + 178, 1, 197.6, 376.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 23, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 24, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 37, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 38, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 51, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 52, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 65, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 66, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 74, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 76, 1, 1.66,1.66);
setScaleKey( spep_1-3 + 78, 1, 1.69,1.69);
setScaleKey( spep_1-3 + 80, 1, 1.72,1.72);
setScaleKey( spep_1-3 + 82, 1, 1.74,1.74);
setScaleKey( spep_1-3 + 84, 1, 1.77,1.77);
setScaleKey( spep_1-3 + 86, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 88, 1, 1.82,1.82);
setScaleKey( spep_1-3 + 90, 1, 1.85,1.85);
setScaleKey( spep_1-3 + 92, 1, 1.87,1.87);
setScaleKey( spep_1-3 + 94, 1, 1.91,1.91);
setScaleKey( spep_1-3 + 96, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 99, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 100, 1, 2.28,2.28);
setScaleKey( spep_1-3 + 102, 1, 2.18,2.18);
setScaleKey( spep_1-3 + 104, 1, 2.07,2.07);
setScaleKey( spep_1-3 + 106, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 127, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 128, 1, 2.45,2.45);
setScaleKey( spep_1-3 + 130, 1, 2.28,2.28);
setScaleKey( spep_1-3 + 132, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 134, 1, 1.83,1.83);
setScaleKey( spep_1-3 + 136, 1, 1.51,1.51);
setScaleKey( spep_1-3 + 138, 1, 1.2,1.2);
setScaleKey( spep_1-3 + 140, 1, 0.92,0.92);
setScaleKey( spep_1-3 + 142, 1, 0.66,0.66);
setScaleKey( spep_1-3 + 144, 1, 0.59,0.59);
setScaleKey( spep_1-3 + 146, 1, 0.57,0.57);
setScaleKey( spep_1-3 + 148, 1, 0.54,0.54);
setScaleKey( spep_1-3 + 150, 1, 0.51,0.51);
setScaleKey( spep_1-3 + 152, 1, 0.49,0.49);
setScaleKey( spep_1-3 + 154, 1, 0.46,0.46);
setScaleKey( spep_1-3 + 156, 1, 0.43,0.43);
setScaleKey( spep_1-3 + 158, 1, 0.4,0.4);
setScaleKey( spep_1-3 + 160, 1, 0.37,0.37);
setScaleKey( spep_1-3 + 162, 1, 0.34,0.34);
setScaleKey( spep_1-3 + 164, 1, 0.32,0.32);
setScaleKey( spep_1-3 + 166, 1, 0.29,0.29);
setScaleKey( spep_1-3 + 168, 1, 0.26,0.26);
setScaleKey( spep_1-3 + 170, 1, 0.24,0.24);
setScaleKey( spep_1-3 + 172, 1, 0.21,0.21);
setScaleKey( spep_1-3 + 174, 1, 0.17,0.17);
setScaleKey( spep_1-3 + 176, 1, 0.15,0.15);
setScaleKey( spep_1-3 + 178, 1, 0.12,0.12);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 37, 1, 0 );
setRotateKey( spep_1-3 + 38, 1, -41.9 );
setRotateKey( spep_1-3 + 51, 1, -41.9 );
setRotateKey( spep_1-3 + 52, 1, 0 );
setRotateKey( spep_1-3 + 65, 1, 0 );
setRotateKey( spep_1-3 + 66, 1, -41.9 );
setRotateKey( spep_1-3 + 99, 1, -41.9 );
setRotateKey( spep_1-3 + 100, 1, -16 );
setRotateKey( spep_1-3 + 127, 1, -16 );
setRotateKey( spep_1-3 + 128, 1, -41.9 );
setRotateKey( spep_1-3 + 178, 1, -41.9 );

--SE
--ラッシュ
SE006 = playSeVer2( spep_1 + 14, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 22, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 22, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 22, SE009, 83 );
SE010 = playSeVer2( spep_1 + 36, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 36, SE010, -100 );
setTimeStretch( SE010, 0.93, 30, 4 );
SE011 = playSeVer2( spep_1 + 36, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE011, 89 );
SE012 = playSeVer2( spep_1 + 50, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 70, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 79 );
SE015 = playSeVer2( spep_1 + 96, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE016, 72 );
SE017 = playSeVer2( spep_1 + 102, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 102, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE019 = playSeVer2( spep_1 + 126, 1120, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_1 + 172, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+180;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--剣を出して突進
------------------------------------------------------
-- ** エフェクト等 ** --
sword = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sword, 0, 0, 0 );
setEffMoveKey( spep_3 + 296, sword, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sword, 1.0, 1.0 );
setEffScaleKey( spep_3 + 296, sword, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword, 0 );
setEffRotateKey( spep_3 + 296, sword, 0 );
setEffAlphaKey( spep_3 + 0, sword, 255 );
setEffAlphaKey( spep_3 + 294, sword, 255 );
setEffAlphaKey( spep_3 + 295, sword, 255 );
setEffAlphaKey( spep_3 + 296, sword, 0 );

--敵の動き
setDisp( spep_3-3 + 252, 1, 1 );
setDisp( spep_3-3 + 298, 1, 0 );

changeAnime( spep_3-3 + 252, 1, 107 );

setMoveKey( spep_3-3 + 252, 1, 203.9, -1088.1 , 0 );
setMoveKey( spep_3-3 + 254, 1, 189.6, -1000.6 , 0 );
setMoveKey( spep_3-3 + 256, 1, 175.3, -913 , 0 );
setMoveKey( spep_3-3 + 258, 1, 161, -825.5 , 0 );
setMoveKey( spep_3-3 + 260, 1, 146.7, -738 , 0 );
setMoveKey( spep_3-3 + 262, 1, 132.4, -650.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, 118.1, -562.8 , 0 );
setMoveKey( spep_3-3 + 266, 1, 103.8, -475.3 , 0 );
setMoveKey( spep_3-3 + 268, 1, 103.8, -471.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, 103.7, -467.9 , 0 );
setMoveKey( spep_3-3 + 272, 1, 103.7, -464.2 , 0 );
setMoveKey( spep_3-3 + 274, 1, 103.7, -460.5 , 0 );
setMoveKey( spep_3-3 + 276, 1, 103.7, -456.8 , 0 );
setMoveKey( spep_3-3 + 278, 1, 103.7, -453.1 , 0 );
setMoveKey( spep_3-3 + 280, 1, 103.7, -449.4 , 0 );
setMoveKey( spep_3-3 + 282, 1, 103.7, -445.8 , 0 );
setMoveKey( spep_3-3 + 284, 1, 103.7, -442.1 , 0 );
setMoveKey( spep_3-3 + 286, 1, 103.7, -438.4 , 0 );
setMoveKey( spep_3-3 + 288, 1, 134, -660.4 , 0 );
setMoveKey( spep_3-3 + 290, 1, 164.2, -880.5 , 0 );
setMoveKey( spep_3-3 + 292, 1, 194.4, -1098.2 , 0 );
setMoveKey( spep_3-3 + 294, 1, 224.6, -1313.9 , 0 );
setMoveKey( spep_3-3 + 296, 1, 254.8, -1527.3 , 0 );
setMoveKey( spep_3-3 + 298, 1, 285, -1738.6 , 0 );

setScaleKey( spep_3-3 + 252, 1, 3.24, 3.24 );
setScaleKey( spep_3-3 + 254, 1, 3.08, 3.08 );
setScaleKey( spep_3-3 + 256, 1, 2.93, 2.93 );
setScaleKey( spep_3-3 + 258, 1, 2.78, 2.78 );
setScaleKey( spep_3-3 + 260, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 262, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 264, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 266, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 268, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 270, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 272, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 274, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 276, 1, 2.13, 2.13 );
setScaleKey( spep_3-3 + 278, 1, 2.13, 2.13 );
setScaleKey( spep_3-3 + 280, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 282, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 284, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 286, 1, 2.1, 2.1 );
setScaleKey( spep_3-3 + 288, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 290, 1, 3.33, 3.33 );
setScaleKey( spep_3-3 + 292, 1, 3.94, 3.94 );
setScaleKey( spep_3-3 + 294, 1, 4.55, 4.55 );
setScaleKey( spep_3-3 + 296, 1, 5.15, 5.15 );
setScaleKey( spep_3-3 + 298, 1, 5.75, 5.75 );

setRotateKey( spep_3-3 + 252, 1, 90 );
setRotateKey( spep_3-3 + 298, 1, 90 );

--SE
--炎
SE021 = playSeVer2( spep_3 + 0, 1268, "",spep_3 + 220, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 0, SE021, 45 );

--手広げる
SE022 = playSeVer2( spep_3 + 8, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE022, 78 );
SE023 = playSeVer2( spep_3 + 8, 1305, "",spep_3 + 102, 0, 28, -1);
SE024 = playSeVer2( spep_3 + 8, 1307, "",spep_3 + 102, 0, 28, -1);
SE025 = playSeVer2( spep_3 + 8, 1221, "", 0, 0, 0, -1);
setPitch( spep_3 + 8, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );

--剣取る
SE026 = playSeVer2( spep_3 + 70, 1006, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 70, 3, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE027, 74 );
SE028 = playSeVer2( spep_3 + 70, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE028, 89 );

--剣構える
SE029 = playSeVer2( spep_3 + 108, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 112, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 112, SE030, 79 );
SE031 = playSeVer2( spep_3 + 112, 1288, "",spep_3 + 194, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 112, SE031, 178 );
setPitch( spep_3 + 112, SE031, 1000 );
setTimeStretch( SE031, 1.67, 30, 4 );

--ズームアウト
SE032 = playSeVer2( spep_3 + 140, 1072, "", 0, 0, 0, 0.5);

--斬る前構え
SE033 = playSeVer2( spep_3 + 206, 1265, "",spep_3 + 366, 10, 82, -1);
setSeVolumeByWorkId( spep_3 + 206, SE033, 84 );
setStartTimeMs( SE033,  333 );
SE034 = playSeVer2( spep_3 + 192, 1271, "",spep_3 + 384, 0, 86, -1);
setSeVolumeByWorkId( spep_3 + 192, SE034, 132 );
SE035 = playSeVer2( spep_3 + 204, 1278, "",spep_3 + 384, 0, 86, -1);
setSeVolumeByWorkId( spep_3 + 204, SE035, 85 );

--振りかぶる
SE036 = playSeVer2( spep_3 + 252, 1116, "",spep_3 + 292, 0, 6, -1);
SE037 = playSeVer2( spep_3 + 258, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4= spep_3 + 296; 
------------------------------------------------------
--縦斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, cut, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, cut, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut, 0 );
setEffRotateKey( spep_4 + 56, cut, 0 );
setEffAlphaKey( spep_4 + 0, cut, 255 );
setEffAlphaKey( spep_4 + 54, cut, 255 );
setEffAlphaKey( spep_4 + 55, cut, 255 );
setEffAlphaKey( spep_4 + 56, cut, 0 );

--SE
--斬る
SE038 = playSeVer2( spep_4 + 0, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE038, 50 );
SE039 = playSeVer2( spep_4 + 0, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE039, 59 );
SE040 = playSeVer2( spep_4 + 6, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 6, SE040, 115 );

-- ** 次の準備 ** --
spep_5= spep_4 + 56; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 170, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 170, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 170, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 170, finish, 255 );

--SE
SE041 = playSeVer2( spep_5 + 0, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_5 + 0, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 12, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE043, 56 );
SE044 = playSeVer2( spep_5 + 24, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE044, 52 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
endPhase( spep_5 + 160 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 112, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 112, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 112, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 112, rush, 255 );

--SE
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 140, 0, 16, -1);

--突っ込んでくる
SE002 = playSeVer2( spep_0 + 28, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1314, "",spep_0 + 136, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 28, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE004, 59 );
setTimeStretch( SE004, 1.67, 30, 4 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 56 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
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

--顔カットインのタイミング指定
spep_x=spep_0 +22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

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
]]

--SE
--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 104, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+112;
------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 24, 1, 108 );
changeAnime( spep_1-3 + 38, 1, 106 );
changeAnime( spep_1-3 + 52, 1, 108 );
changeAnime( spep_1-3 + 66, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 128, 1, 106 );

setMoveKey( spep_1 + 0, 1, 287.7, 382.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 263.8, 347.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 239.9, 311.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 216, 276.4 , 0 );
setMoveKey( spep_1-3 + 8, 1, 192.1, 241 , 0 );
setMoveKey( spep_1-3 + 10, 1, 168.2, 205.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 144.3, 170.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 120.4, 134.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 96.6, 99.3 , 0 );
setMoveKey( spep_1-3 + 23, 1, 96.6, 99.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 138.5, 144.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 144, 133.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 138.5, 142 , 0 );
setMoveKey( spep_1-3 + 30, 1, 144, 136.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 141.3, 139.2 , 0 );
setMoveKey( spep_1-3 + 37, 1, 141.3, 139.2 , 0 );
setMoveKey( spep_1-3 + 38, 1, 122.2, 112 , 0 );
setMoveKey( spep_1-3 + 40, 1, 127.6, 101 , 0 );
setMoveKey( spep_1-3 + 42, 1, 122.2, 109.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 127.6, 103.8 , 0 );
setMoveKey( spep_1-3 + 46, 1, 124.9, 106.5 , 0 );
setMoveKey( spep_1-3 + 51, 1, 124.9, 106.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 150.3, 189.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, 155.8, 178.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 150.3, 186.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, 155.8, 181.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 153, 184 , 0 );
setMoveKey( spep_1-3 + 65, 1, 153, 184 , 0 );
setMoveKey( spep_1-3 + 66, 1, 138.6, 135.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 144.1, 124.6 , 0 );
setMoveKey( spep_1-3 + 70, 1, 138.6, 132.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, 144.1, 127.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 141.3, 130 , 0 );
setMoveKey( spep_1-3 + 76, 1, 139.7, 131.5 , 0 );
setMoveKey( spep_1-3 + 78, 1, 138, 133.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 136.3, 134.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 134.7, 136.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 133.1, 137.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 131.4, 139.3 , 0 );
setMoveKey( spep_1-3 + 88, 1, 129.7, 140.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 128.1, 142.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 126.4, 143.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 124.7, 145.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 123, 147.1 , 0 );
setMoveKey( spep_1-3 + 99, 1, 121.5, 148.6 , 0 );
setMoveKey( spep_1-3 + 100, 1, 102.7, 244.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 107.4, 204.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 142.1, 238.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 114.2, 221.1 , 0 );
setMoveKey( spep_1-3 + 108, 1, 138.7, 212.9 , 0 );
setMoveKey( spep_1-3 + 110, 1, 138.7, 248.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 138.7, 221.1 , 0 );
setMoveKey( spep_1-3 + 127, 1, 138.7, 221.1 , 0 );
setMoveKey( spep_1-3 + 128, 1, 120.6, 223.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 113.6, 166.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 132.1, 177.5 , 0 );
setMoveKey( spep_1-3 + 134, 1, 90.5, 138.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, 141.4, 200.2 , 0 );
setMoveKey( spep_1-3 + 138, 1, 167, 294.6 , 0 );
setMoveKey( spep_1-3 + 140, 1, 190.4, 328.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, 211.3, 381.5 , 0 );
setMoveKey( spep_1-3 + 144, 1, 202.3, 366.4 , 0 );
setMoveKey( spep_1-3 + 146, 1, 202.1, 366.9 , 0 );
setMoveKey( spep_1-3 + 148, 1, 201.8, 367.5 , 0 );
setMoveKey( spep_1-3 + 150, 1, 201.5, 368.1 , 0 );
setMoveKey( spep_1-3 + 152, 1, 201.2, 368.7 , 0 );
setMoveKey( spep_1-3 + 154, 1, 201, 369.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 200.6, 369.8 , 0 );
setMoveKey( spep_1-3 + 158, 1, 200.4, 370.4 , 0 );
setMoveKey( spep_1-3 + 160, 1, 200.1, 371 , 0 );
setMoveKey( spep_1-3 + 162, 1, 199.8, 371.6 , 0 );
setMoveKey( spep_1-3 + 164, 1, 199.5, 372.1 , 0 );
setMoveKey( spep_1-3 + 166, 1, 199.3, 372.7 , 0 );
setMoveKey( spep_1-3 + 168, 1, 198.9, 373.3 , 0 );
setMoveKey( spep_1-3 + 170, 1, 198.7, 373.9 , 0 );
setMoveKey( spep_1-3 + 172, 1, 198.4, 374.4 , 0 );
setMoveKey( spep_1-3 + 174, 1, 198.1, 375 , 0 );
setMoveKey( spep_1-3 + 176, 1, 197.8, 375.6 , 0 );
setMoveKey( spep_1-3 + 178, 1, 197.6, 376.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 23, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 24, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 37, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 38, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 51, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 52, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 65, 1, 1.73,1.73);
setScaleKey( spep_1-3 + 66, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 74, 1, 1.63,1.63);
setScaleKey( spep_1-3 + 76, 1, 1.66,1.66);
setScaleKey( spep_1-3 + 78, 1, 1.69,1.69);
setScaleKey( spep_1-3 + 80, 1, 1.72,1.72);
setScaleKey( spep_1-3 + 82, 1, 1.74,1.74);
setScaleKey( spep_1-3 + 84, 1, 1.77,1.77);
setScaleKey( spep_1-3 + 86, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 88, 1, 1.82,1.82);
setScaleKey( spep_1-3 + 90, 1, 1.85,1.85);
setScaleKey( spep_1-3 + 92, 1, 1.87,1.87);
setScaleKey( spep_1-3 + 94, 1, 1.91,1.91);
setScaleKey( spep_1-3 + 96, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 99, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 100, 1, 2.28,2.28);
setScaleKey( spep_1-3 + 102, 1, 2.18,2.18);
setScaleKey( spep_1-3 + 104, 1, 2.07,2.07);
setScaleKey( spep_1-3 + 106, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 127, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 128, 1, 2.45,2.45);
setScaleKey( spep_1-3 + 130, 1, 2.28,2.28);
setScaleKey( spep_1-3 + 132, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 134, 1, 1.83,1.83);
setScaleKey( spep_1-3 + 136, 1, 1.51,1.51);
setScaleKey( spep_1-3 + 138, 1, 1.2,1.2);
setScaleKey( spep_1-3 + 140, 1, 0.92,0.92);
setScaleKey( spep_1-3 + 142, 1, 0.66,0.66);
setScaleKey( spep_1-3 + 144, 1, 0.59,0.59);
setScaleKey( spep_1-3 + 146, 1, 0.57,0.57);
setScaleKey( spep_1-3 + 148, 1, 0.54,0.54);
setScaleKey( spep_1-3 + 150, 1, 0.51,0.51);
setScaleKey( spep_1-3 + 152, 1, 0.49,0.49);
setScaleKey( spep_1-3 + 154, 1, 0.46,0.46);
setScaleKey( spep_1-3 + 156, 1, 0.43,0.43);
setScaleKey( spep_1-3 + 158, 1, 0.4,0.4);
setScaleKey( spep_1-3 + 160, 1, 0.37,0.37);
setScaleKey( spep_1-3 + 162, 1, 0.34,0.34);
setScaleKey( spep_1-3 + 164, 1, 0.32,0.32);
setScaleKey( spep_1-3 + 166, 1, 0.29,0.29);
setScaleKey( spep_1-3 + 168, 1, 0.26,0.26);
setScaleKey( spep_1-3 + 170, 1, 0.24,0.24);
setScaleKey( spep_1-3 + 172, 1, 0.21,0.21);
setScaleKey( spep_1-3 + 174, 1, 0.17,0.17);
setScaleKey( spep_1-3 + 176, 1, 0.15,0.15);
setScaleKey( spep_1-3 + 178, 1, 0.12,0.12);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 37, 1, 0 );
setRotateKey( spep_1-3 + 38, 1, -41.9 );
setRotateKey( spep_1-3 + 51, 1, -41.9 );
setRotateKey( spep_1-3 + 52, 1, 0 );
setRotateKey( spep_1-3 + 65, 1, 0 );
setRotateKey( spep_1-3 + 66, 1, -41.9 );
setRotateKey( spep_1-3 + 99, 1, -41.9 );
setRotateKey( spep_1-3 + 100, 1, -16 );
setRotateKey( spep_1-3 + 127, 1, -16 );
setRotateKey( spep_1-3 + 128, 1, -41.9 );
setRotateKey( spep_1-3 + 178, 1, -41.9 );

--SE
--ラッシュ
SE006 = playSeVer2( spep_1 + 14, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 22, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 22, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 22, SE009, 83 );
SE010 = playSeVer2( spep_1 + 36, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 36, SE010, -100 );
setTimeStretch( SE010, 0.93, 30, 4 );
SE011 = playSeVer2( spep_1 + 36, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE011, 89 );
SE012 = playSeVer2( spep_1 + 50, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 70, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 79 );
SE015 = playSeVer2( spep_1 + 96, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE016, 72 );
SE017 = playSeVer2( spep_1 + 102, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 102, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE019 = playSeVer2( spep_1 + 126, 1120, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_1 + 172, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+180;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--剣を出して突進
------------------------------------------------------
-- ** エフェクト等 ** --
sword = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sword, 0, 0, 0 );
setEffMoveKey( spep_3 + 296, sword, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sword, -1.0, 1.0 );
setEffScaleKey( spep_3 + 296, sword, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword, 0 );
setEffRotateKey( spep_3 + 296, sword, 0 );
setEffAlphaKey( spep_3 + 0, sword, 255 );
setEffAlphaKey( spep_3 + 294, sword, 255 );
setEffAlphaKey( spep_3 + 295, sword, 255 );
setEffAlphaKey( spep_3 + 296, sword, 0 );

--敵の動き
setDisp( spep_3-3 + 252, 1, 1 );
setDisp( spep_3-3 + 298, 1, 0 );

changeAnime( spep_3-3 + 252, 1, 107 );

setMoveKey( spep_3-3 + 252, 1, 203.9, -1088.1 , 0 );
setMoveKey( spep_3-3 + 254, 1, 189.6, -1000.6 , 0 );
setMoveKey( spep_3-3 + 256, 1, 175.3, -913 , 0 );
setMoveKey( spep_3-3 + 258, 1, 161, -825.5 , 0 );
setMoveKey( spep_3-3 + 260, 1, 146.7, -738 , 0 );
setMoveKey( spep_3-3 + 262, 1, 132.4, -650.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, 118.1, -562.8 , 0 );
setMoveKey( spep_3-3 + 266, 1, 103.8, -475.3 , 0 );
setMoveKey( spep_3-3 + 268, 1, 103.8, -471.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, 103.7, -467.9 , 0 );
setMoveKey( spep_3-3 + 272, 1, 103.7, -464.2 , 0 );
setMoveKey( spep_3-3 + 274, 1, 103.7, -460.5 , 0 );
setMoveKey( spep_3-3 + 276, 1, 103.7, -456.8 , 0 );
setMoveKey( spep_3-3 + 278, 1, 103.7, -453.1 , 0 );
setMoveKey( spep_3-3 + 280, 1, 103.7, -449.4 , 0 );
setMoveKey( spep_3-3 + 282, 1, 103.7, -445.8 , 0 );
setMoveKey( spep_3-3 + 284, 1, 103.7, -442.1 , 0 );
setMoveKey( spep_3-3 + 286, 1, 103.7, -438.4 , 0 );
setMoveKey( spep_3-3 + 288, 1, 134, -660.4 , 0 );
setMoveKey( spep_3-3 + 290, 1, 164.2, -880.5 , 0 );
setMoveKey( spep_3-3 + 292, 1, 194.4, -1098.2 , 0 );
setMoveKey( spep_3-3 + 294, 1, 224.6, -1313.9 , 0 );
setMoveKey( spep_3-3 + 296, 1, 254.8, -1527.3 , 0 );
setMoveKey( spep_3-3 + 298, 1, 285, -1738.6 , 0 );

setScaleKey( spep_3-3 + 252, 1, 3.24, 3.24 );
setScaleKey( spep_3-3 + 254, 1, 3.08, 3.08 );
setScaleKey( spep_3-3 + 256, 1, 2.93, 2.93 );
setScaleKey( spep_3-3 + 258, 1, 2.78, 2.78 );
setScaleKey( spep_3-3 + 260, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 262, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 264, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 266, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 268, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 270, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 272, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 274, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 276, 1, 2.13, 2.13 );
setScaleKey( spep_3-3 + 278, 1, 2.13, 2.13 );
setScaleKey( spep_3-3 + 280, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 282, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 284, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 286, 1, 2.1, 2.1 );
setScaleKey( spep_3-3 + 288, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 290, 1, 3.33, 3.33 );
setScaleKey( spep_3-3 + 292, 1, 3.94, 3.94 );
setScaleKey( spep_3-3 + 294, 1, 4.55, 4.55 );
setScaleKey( spep_3-3 + 296, 1, 5.15, 5.15 );
setScaleKey( spep_3-3 + 298, 1, 5.75, 5.75 );

setRotateKey( spep_3-3 + 252, 1, 90 );
setRotateKey( spep_3-3 + 298, 1, 90 );

--SE
--炎
SE021 = playSeVer2( spep_3 + 0, 1268, "",spep_3 + 220, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 0, SE021, 45 );

--手広げる
SE022 = playSeVer2( spep_3 + 8, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE022, 78 );
SE023 = playSeVer2( spep_3 + 8, 1305, "",spep_3 + 102, 0, 28, -1);
SE024 = playSeVer2( spep_3 + 8, 1307, "",spep_3 + 102, 0, 28, -1);
SE025 = playSeVer2( spep_3 + 8, 1221, "", 0, 0, 0, -1);
setPitch( spep_3 + 8, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );

--剣取る
SE026 = playSeVer2( spep_3 + 70, 1006, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 70, 3, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE027, 74 );
SE028 = playSeVer2( spep_3 + 70, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE028, 89 );

--剣構える
SE029 = playSeVer2( spep_3 + 108, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 112, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 112, SE030, 79 );
SE031 = playSeVer2( spep_3 + 112, 1288, "",spep_3 + 194, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 112, SE031, 178 );
setPitch( spep_3 + 112, SE031, 1000 );
setTimeStretch( SE031, 1.67, 30, 4 );

--ズームアウト
SE032 = playSeVer2( spep_3 + 140, 1072, "", 0, 0, 0, 0.5);

--斬る前構え
SE033 = playSeVer2( spep_3 + 206, 1265, "",spep_3 + 366, 10, 82, -1);
setSeVolumeByWorkId( spep_3 + 206, SE033, 84 );
setStartTimeMs( SE033,  333 );
SE034 = playSeVer2( spep_3 + 192, 1271, "",spep_3 + 384, 0, 86, -1);
setSeVolumeByWorkId( spep_3 + 192, SE034, 132 );
SE035 = playSeVer2( spep_3 + 204, 1278, "",spep_3 + 384, 0, 86, -1);
setSeVolumeByWorkId( spep_3 + 204, SE035, 85 );

--振りかぶる
SE036 = playSeVer2( spep_3 + 252, 1116, "",spep_3 + 292, 0, 6, -1);
SE037 = playSeVer2( spep_3 + 258, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4= spep_3 + 296; 
------------------------------------------------------
--縦斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, cut, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, cut, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut, 0 );
setEffRotateKey( spep_4 + 56, cut, 0 );
setEffAlphaKey( spep_4 + 0, cut, 255 );
setEffAlphaKey( spep_4 + 54, cut, 255 );
setEffAlphaKey( spep_4 + 55, cut, 255 );
setEffAlphaKey( spep_4 + 56, cut, 0 );

--SE
--斬る
SE038 = playSeVer2( spep_4 + 0, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE038, 50 );
SE039 = playSeVer2( spep_4 + 0, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE039, 59 );
SE040 = playSeVer2( spep_4 + 6, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 6, SE040, 115 );

-- ** 次の準備 ** --
spep_5= spep_4 + 56; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 170, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_5 + 170, finish, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 170, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 170, finish, 255 );

--SE
SE041 = playSeVer2( spep_5 + 0, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_5 + 0, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 12, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE043, 56 );
SE044 = playSeVer2( spep_5 + 24, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE044, 52 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
endPhase( spep_5 + 160 );
end