--1021970:タピオン&ミノシア_ブレイブソードアタック
--sp_effect_b2_00041

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
SP_01=	157171	;--	気をためる〜敵が岩山に激突
SP_02=	157173	;--	気をためる〜敵が岩山に激突
SP_03=	157175	;--	剣を構える〜岩山爆発
SP_04=	157176	;--	剣を構える〜岩山爆発

--エフェクト(てき)
SP_01x=	157172	;--	気をためる〜敵が岩山に激突	(敵)
SP_02x=	157174	;--	気をためる〜敵が岩山に激突	(敵)
SP_03x=	157175	;--	剣を構える〜岩山爆発	
SP_04x=	157176	;--	剣を構える〜岩山爆発	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 気をためる〜敵が岩山に激突
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 430, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 430, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 430, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 430, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 430, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 430, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 430, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 430, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
SE001 = playSe( spep_x + 12, 1018 );

--タピオン気弾溜め
SE002 = playSe( spep_0 + 8, 1239 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 126 );
stopSe( spep_0 + 94, SE002, 14 );
SE003 = playSe( spep_0 + 8, 1199 );
SE004 = playSe( spep_0 + 8, 1262 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 141 );
SE005 = playSe( spep_0 + 8, 1295 );
setSeVolumeByWorkId( spep_0 + 8, SE005, 77 );
stopSe( spep_0 + 98, SE005, 12 );

--連続気弾
SE006 = playSe( spep_0 + 96, 1155 );
stopSe( spep_0 + 118, SE006, 4 );
SE007 = playSe( spep_0 + 98, 1027 );
setSeVolumeByWorkId( spep_0 + 98, SE007, 41 );
stopSe( spep_0 + 110, SE007, 12 );
SE008 = playSe( spep_0 + 100, 1016 );
setSeVolumeByWorkId( spep_0 + 100, SE008, 122 );
stopSe( spep_0 + 118, SE008, 4 );
SE009 = playSe( spep_0 + 110, 1155 );
stopSe( spep_0 + 132, SE009, 8 );
SE010 = playSe( spep_0 + 112, 1027 );
setSeVolumeByWorkId( spep_0 + 112, SE010, 43 );
stopSe( spep_0 + 124, SE010, 10 );
SE011 = playSe( spep_0 + 114, 1016 );
stopSe( spep_0 + 132, SE011, 8 );
SE012 = playSe( spep_0 + 126, 1155 );
SE013 = playSe( spep_0 + 128, 1027 );
setSeVolumeByWorkId( spep_0 + 128, SE013, 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 152; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 160, 1, 1);
setDisp( spep_0-1 + 238, 1, 0);

changeAnime( spep_0-3 + 160, 1, 100);
changeAnime( spep_0-3 + 186, 1, 104);
changeAnime( spep_0-3 + 222, 1, 5);

setMoveKey( spep_0-3 + 160, 1, 225.4, -21.5 , 0 );
setMoveKey( spep_0-3 + 162, 1, 221.9, -20.8 , 0 );
setMoveKey( spep_0-3 + 164, 1, 218.3, -20.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 214.7, -19.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 211.1, -18.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 207.5, -18.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 203.9, -17.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 200.3, -16.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 196.7, -16.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 193.1, -15.5 , 0 );
setMoveKey( spep_0-3 + 180, 1, 189.5, -14.9 , 0 );
setMoveKey( spep_0-3 + 182, 1, 185.9, -14.2 , 0 );
setMoveKey( spep_0-3 + 184, 1, 182.3, -13.6 , 0 );
setMoveKey( spep_0-3 + 185, 1, 182.3, -13.6 , 0 );

setMoveKey( spep_0-3 + 186, 1, 178.7, -12.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, 175.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 158.1, -37.4 , 0 );
setMoveKey( spep_0-3 + 192, 1, 175.2, -50.6 , 0 );
setMoveKey( spep_0-3 + 194, 1, 175, -46 , 0 );
setMoveKey( spep_0-3 + 196, 1, 175.9, -44.1 , 0 );
setMoveKey( spep_0-3 + 198, 1, 170.3, -39.4 , 0 );
setMoveKey( spep_0-3 + 200, 1, 175.9, -40.9 , 0 );
setMoveKey( spep_0-3 + 202, 1, 163.5, -45.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, 161.5, -47 , 0 );
setMoveKey( spep_0-3 + 206, 1, 147.7, -41.5 , 0 );
setMoveKey( spep_0-3 + 208, 1, 147.3, -43.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, 143.4, -51.5 , 0 );
setMoveKey( spep_0-3 + 212, 1, 151.2, -38.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, 153.4, -48.7 , 0 );
setMoveKey( spep_0-3 + 216, 1, 144.4, -47.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, 137.5, -38.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 129.6, -36.1 , 0 );
setMoveKey( spep_0-3 + 221, 1, 129.6, -36.1 , 0 );

setMoveKey( spep_0-3 + 222, 1, 117.4, -1.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, 143.9, -1.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, 163.7, -1.4 , 0 );
setMoveKey( spep_0-3 + 228, 1, 177.9, -1.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 187.5, -1.5 , 0 );
setMoveKey( spep_0-3 + 232, 1, 193.3, -1.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, 196.2, -1.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 197.3, -1.5 , 0 );
setMoveKey( spep_0-1 + 238, 1, 197.5, -1.5 , 0 );

setScaleKey( spep_0-3 + 160, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 162, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 164, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 166, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 168, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 172, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 174, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 176, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 178, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 180, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 182, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 184, 1, 0.89, 0.89 );
setScaleKey( spep_0-3 + 185, 1, 0.89, 0.89 );

setScaleKey( spep_0-3 + 186, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 188, 1, 0.97, 0.97 );
setScaleKey( spep_0-3 + 190, 1, 1.01, 1.01 );
setScaleKey( spep_0-3 + 192, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 194, 1, 1.09, 1.09 );
setScaleKey( spep_0-3 + 196, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 198, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 200, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 202, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 204, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 206, 1, 1.33, 1.33 );
setScaleKey( spep_0-3 + 208, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 210, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 212, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 214, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 216, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 218, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 220, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 221, 1, 1.62, 1.62 );

setScaleKey( spep_0-3 + 222, 1, 1.28, 1.28 );
setScaleKey( spep_0-3 + 224, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 226, 1, 0.91, 0.91 );
setScaleKey( spep_0-3 + 228, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 230, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 232, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 234, 1, 0.66, 0.66 );
setScaleKey( spep_0-1 + 238, 1, 0.65, 0.65 );

setRotateKey( spep_0-3 + 160, 1, 3.7 );
setRotateKey( spep_0-3 + 185, 1, 3.7 );

setRotateKey( spep_0-3 + 186, 1, 3.7 );
setRotateKey( spep_0-3 + 221, 1, 3.7 );

setRotateKey( spep_0-3 + 222, 1, 70.4 );
setRotateKey( spep_0-3 + 224, 1, 78.1 );
setRotateKey( spep_0-3 + 226, 1, 83.9 );
setRotateKey( spep_0-3 + 228, 1, 88.1 );
setRotateKey( spep_0-3 + 230, 1, 90.8 );
setRotateKey( spep_0-3 + 232, 1, 92.5 );
setRotateKey( spep_0-3 + 234, 1, 93.4 );
setRotateKey( spep_0-1 + 238, 1, 93.7 );

--敵の動き
setDisp( spep_0-3 + 286, 1, 1);
setDisp( spep_0-1 + 368, 1, 0);

changeAnime( spep_0-3 + 286, 1, 106);
changeAnime( spep_0-3 + 294, 1, 108);

setMoveKey( spep_0-3 + 286, 1, 681.8, 348.1 , 0 );
setMoveKey( spep_0-3 + 288, 1, 535.3, 272 , 0 );
setMoveKey( spep_0-3 + 290, 1, 388.8, 196 , 0 );
setMoveKey( spep_0-3 + 292, 1, 242.4, 120 , 0 );
setMoveKey( spep_0-3 + 293, 1, 242.4, 120 , 0 );

setMoveKey( spep_0-3 + 294, 1, 95.9, 44 , 0 );
setMoveKey( spep_0-3 + 296, 1, 95.9, 44 , 0 );
setMoveKey( spep_0-3 + 298, 1, 104.9, 53.5 , 0 );
setMoveKey( spep_0-3 + 300, 1, 94, 43.1 , 0 );
setMoveKey( spep_0-3 + 302, 1, 89.8, 39.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, 88.7, 46.8 , 0 );
setMoveKey( spep_0-3 + 306, 1, 92.6, 32.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, 96.3, 44.6 , 0 );
setMoveKey( spep_0-3 + 310, 1, 108.6, 27.4 , 0 );
setMoveKey( spep_0-3 + 312, 1, 113.7, 38.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, 118.8, 36.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, 122.1, 35.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, 124.1, 34.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 125.2, 34.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, 125.8, 34.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, 126, 34.1 , 0 );
setMoveKey( spep_0-3 + 330, 1, 126, 34.1 , 0 );
setMoveKey( spep_0-3 + 332, 1, 125.9, 34.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, 125.7, 34.1 , 0 );
setMoveKey( spep_0-3 + 336, 1, 125.4, 34 , 0 );
setMoveKey( spep_0-3 + 338, 1, 124.7, 33.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, 123.8, 33.8 , 0 );
setMoveKey( spep_0-3 + 342, 1, 122.5, 33.6 , 0 );
setMoveKey( spep_0-3 + 344, 1, 120.8, 33.4 , 0 );
setMoveKey( spep_0-3 + 346, 1, 118.6, 33 , 0 );
setMoveKey( spep_0-3 + 348, 1, 115.8, 32.6 , 0 );
setMoveKey( spep_0-3 + 350, 1, 112.4, 32.2 , 0 );
setMoveKey( spep_0-3 + 352, 1, 108.4, 31.6 , 0 );
setMoveKey( spep_0-3 + 354, 1, 103.6, 30.9 , 0 );
setMoveKey( spep_0-3 + 356, 1, 98, 30.1 , 0 );
setMoveKey( spep_0-3 + 358, 1, 91.5, 29.1 , 0 );
setMoveKey( spep_0-3 + 360, 1, 84.2, 28.1 , 0 );
setMoveKey( spep_0-3 + 362, 1, 75.8, 26.9 , 0 );
setMoveKey( spep_0-3 + 364, 1, 66.4, 25.5 , 0 );
setMoveKey( spep_0-3 + 366, 1, 55.4, 27.7 , 0 );
setMoveKey( spep_0-1 + 368, 1, 54.7, 31.4 , 0 );

setScaleKey( spep_0-3 + 286, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 293, 1, 1.8, 1.8 );

setScaleKey( spep_0-3 + 294, 1,2.25,2.25);
setScaleKey( spep_0-3 + 308, 1,2.25,2.25);
setScaleKey( spep_0-3 + 310, 1,1.86,1.86);
setScaleKey( spep_0-3 + 312, 1,1.57,1.57);
setScaleKey( spep_0-3 + 314, 1,1.37,1.37);
setScaleKey( spep_0-3 + 316, 1,1.25,1.25);
setScaleKey( spep_0-3 + 318, 1,1.17,1.17);
setScaleKey( spep_0-3 + 320, 1,1.12,1.12);
setScaleKey( spep_0-3 + 322, 1,1.11,1.11);
setScaleKey( spep_0-3 + 324, 1,1.1,1.1);
setScaleKey( spep_0-3 + 336, 1,1.1,1.1);
setScaleKey( spep_0-3 + 338, 1,1.08,1.08);
setScaleKey( spep_0-3 + 342, 1,1.08,1.08);
setScaleKey( spep_0-3 + 344, 1,1.07,1.07);
setScaleKey( spep_0-3 + 346, 1,1.06,1.06);
setScaleKey( spep_0-3 + 348, 1,1.05,1.05);
setScaleKey( spep_0-3 + 350, 1,1.03,1.03);
setScaleKey( spep_0-3 + 352, 1,1.01,1.01);
setScaleKey( spep_0-3 + 354, 1,0.98,0.98);
setScaleKey( spep_0-3 + 356, 1,0.96,0.96);
setScaleKey( spep_0-3 + 358, 1,0.93,0.93);
setScaleKey( spep_0-3 + 360, 1,0.9,0.9);
setScaleKey( spep_0-3 + 362, 1,0.85,0.85);
setScaleKey( spep_0-3 + 364, 1,0.81,0.81);
setScaleKey( spep_0-1 + 368, 1,0.76,0.76);

setRotateKey( spep_0-3 + 286, 1, -17.7 );
setRotateKey( spep_0-3 + 293, 1, -17.7 );

setRotateKey( spep_0-3 + 294, 1, -17.7 );
setRotateKey( spep_0-3 + 334, 1, -17.7 );
setRotateKey( spep_0-3 + 336, 1, -17.8 );
setRotateKey( spep_0-3 + 338, 1, -17.9 );
setRotateKey( spep_0-3 + 340, 1, -18.1 );
setRotateKey( spep_0-3 + 342, 1, -18.4 );
setRotateKey( spep_0-3 + 344, 1, -18.8 );
setRotateKey( spep_0-3 + 346, 1, -19.2 );
setRotateKey( spep_0-3 + 348, 1, -19.8 );
setRotateKey( spep_0-3 + 350, 1, -20.5 );
setRotateKey( spep_0-3 + 352, 1, -21.4 );
setRotateKey( spep_0-3 + 354, 1, -22.4 );
setRotateKey( spep_0-3 + 356, 1, -23.6 );
setRotateKey( spep_0-3 + 358, 1, -24.9 );
setRotateKey( spep_0-3 + 360, 1, -26.4 );
setRotateKey( spep_0-3 + 362, 1, -28.2 );
setRotateKey( spep_0-3 + 364, 1, -30.2 );
setRotateKey( spep_0-1 + 368, 1, -32.4 );

--SE
----連続気弾
stopSe( spep_0 + 148, SE012, 4 );
stopSe( spep_0 + 140, SE013, 8 );
SE014 = playSe( spep_0 + 130, 1016 );
stopSe( spep_0 + 148, SE014, 4 );
SE015 = playSe( spep_0 + 140, 1155 );
stopSe( spep_0 + 158, SE015, 6 );
SE016 = playSe( spep_0 + 142, 1027 );
setSeVolumeByWorkId( spep_0 + 142, SE016, 42 );
stopSe( spep_0 + 152, SE016, 14 );
SE017 = playSe( spep_0 + 144, 1016 );
stopSe( spep_0 + 158, SE017, 6 );
SE018 = playSe( spep_0 + 152, 1155 );
stopSe( spep_0 + 188, SE018, 6 );
SE019 = playSe( spep_0 + 154, 1027 );
setSeVolumeByWorkId( spep_0 + 154, SE019, 42 );
SE020 = playSe( spep_0 + 158, 1016 );

--気弾飛んでいく
SE021 = playSe( spep_0 + 158, 1021 );
setSeVolumeByWorkId( spep_0 + 158, SE021, 78 );

--気弾ヒット
SE022 = playSe( spep_0 + 184, 1023 );
SE023 = playSe( spep_0 + 198, 1014 );
setSeVolumeByWorkId( spep_0 + 198, SE023, 77 );
stopSe( spep_0 + 214, SE023, 18 );
SE024 = playSe( spep_0 + 208, 1014 );
setSeVolumeByWorkId( spep_0 + 208, SE024, 80 );
stopSe( spep_0 + 228, SE024, 18 );
SE025 = playSe( spep_0 + 218, 1011 );

--ミノシア迫ってくる
SE026 = playSe( spep_0 + 236, 1167 );
setSeVolumeByWorkId( spep_0 + 236, SE026, 45 );
SE027 = playSe( spep_0 + 236, 1182 );
SE028 = playSe( spep_0 + 236, 1183 );
stopSe( spep_0 + 292, SE028, 4 );

--ミノシア突き
SE029 = playSe( spep_0 + 288, 1180 );
setSeVolumeByWorkId( spep_0 + 292, SE029, 0 );
setSeVolumeByWorkId( spep_0 + 293, SE029, 25 );
setSeVolumeByWorkId( spep_0 + 294, SE029, 50 );
setSeVolumeByWorkId( spep_0 + 295, SE029, 75 );
setSeVolumeByWorkId( spep_0 + 296, SE029, 100 );
setStartTimeMs( SE029,  550 );
setPitch( spep_0 + 288, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );
SE030 = playSe( spep_0 + 294, 1141 );
setSeVolumeByWorkId( spep_0 + 298, SE030, 100 );
SE031 = playSe( spep_0 + 294, 1142 );
SE032 = playSe( spep_0 + 296, 1032 );

--敵飛んでいく
SE033 = playSe( spep_0 + 310, 1121 );
setSeVolumeByWorkId( spep_0 + 310, SE033, 53 );
stopSe( spep_0 + 366, SE033, 8 );
SE034 = playSe( spep_0 + 310, 1183 );
setSeVolumeByWorkId( spep_0 + 310, SE034, 66 );
stopSe( spep_0 + 366, SE034, 8 );

--岩激突
SE035 = playSe( spep_0 + 364, 1159 );
setSeVolumeByWorkId( spep_0 + 364, SE035, 72 );

--白フェード
entryFade( spep_0 + 424, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+430;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--岩激突
stopSe( spep_1 + 4, SE035, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 , 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 剣を構える〜岩山爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 478, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 478, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 478, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 478, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 478, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 478, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 478, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 478, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 284, 1, 1);
setDisp( spep_2-1 + 314, 1, 0);

changeAnime( spep_2-3 + 284, 1, 5);

setMoveKey( spep_2-3 + 284, 1, -3.8, -1.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, -3.8, -1.3 , 0 );
setMoveKey( spep_2-3 + 292, 1, -3.9, -1.8 , 0 );
setMoveKey( spep_2-3 + 294, 1, -4, -2 , 0 );
setMoveKey( spep_2-1 + 314, 1, -4, -2 , 0 );

setScaleKey( spep_2-3 + 284, 1, 4.09, 4.66 );
setScaleKey( spep_2-3 + 290, 1, 4.09, 4.66 );
setScaleKey( spep_2-3 + 292, 1, 2.52, 2.87 );
setScaleKey( spep_2-3 + 294, 1, 1.99, 2.27 );
setScaleKey( spep_2-3 + 296, 1, 1.96, 2.23 );
setScaleKey( spep_2-3 + 298, 1, 1.93, 2.2 );
setScaleKey( spep_2-3 + 300, 1, 1.9, 2.16 );
setScaleKey( spep_2-3 + 302, 1, 1.87, 2.13 );
setScaleKey( spep_2-3 + 304, 1, 1.84, 2.09 );
setScaleKey( spep_2-3 + 306, 1, 1.8, 2.05 );
setScaleKey( spep_2-3 + 308, 1, 1.77, 2.02 );
setScaleKey( spep_2-3 + 310, 1, 1.74, 1.98 );
setScaleKey( spep_2-3 + 312, 1, 1.71, 1.94 );
setScaleKey( spep_2-1 + 314, 1, 1.68, 1.91 );

setRotateKey( spep_2-3 + 284, 1, 0.3 );
setRotateKey( spep_2-1 + 314, 1, 0.3 );

--SE
--カメラズーム
SE037 = playSe( spep_2 + 0, 1072 );
setSeVolumeByWorkId( spep_2 + 0, SE037, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE037, 12.5 );
setSeVolumeByWorkId( spep_2 + 2, SE037, 25 );
setSeVolumeByWorkId( spep_2 + 3, SE037, 37.5 );
setSeVolumeByWorkId( spep_2 + 4, SE037, 50 );
setSeVolumeByWorkId( spep_2 + 5, SE037, 62.5 );
setSeVolumeByWorkId( spep_2 + 6, SE037, 75 );
setSeVolumeByWorkId( spep_2 + 7, SE037, 87.5 );
setSeVolumeByWorkId( spep_2 + 8, SE037, 100 );
setStartTimeMs( SE037,  217 );
SE038 = playSe( spep_2 + 2, 44 );
setSeVolumeByWorkId( spep_2 + 2, SE038, 38 );
stopSe( spep_2 + 36, SE038, 26 );
SE039 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE039, 82 );
setPitch( spep_2 + 8, SE039, -300 );
setTimeStretch( SE039, 0.8, 10, 1 );

--ミノシア構える
SE040 = playSe( spep_2 + 48, 1061 );
SE041 = playSe( spep_2 + 48, 1179 );
stopSe( spep_2 + 92, SE041, 30 );
setPitch( spep_2 + 48, SE041, 200 );
setTimeStretch( SE041, 1.13, 10, 1 );
SE042 = playSe( spep_2 + 48, 1026 );
setSeVolumeByWorkId( spep_2 + 48, SE042, 73 );

--タピオン構える
SE043 = playSe( spep_2 + 102, 1061 );
SE044 = playSe( spep_2 + 102, 1179 );
stopSe( spep_2 + 146, SE044, 30 );
SE045 = playSe( spep_2 + 102, 1274 );
setSeVolumeByWorkId( spep_2 + 102, SE045, 58 );
SE046 = playSe( spep_2 + 102, 1026 );
setSeVolumeByWorkId( spep_2 + 102, SE046, 77 );

--タピオン構え外す
SE047 = playSe( spep_2 + 172, 1198 );
setSeVolumeByWorkId( spep_2 + 172, SE047, 0 );
setSeVolumeByWorkId( spep_2 + 173, SE047, 6.1 );
setSeVolumeByWorkId( spep_2 + 174, SE047, 12.2 );
setSeVolumeByWorkId( spep_2 + 175, SE047, 18.3 );
setSeVolumeByWorkId( spep_2 + 176, SE047, 24.4 );
setSeVolumeByWorkId( spep_2 + 177, SE047, 30.5 );
setSeVolumeByWorkId( spep_2 + 178, SE047, 36.6 );
setSeVolumeByWorkId( spep_2 + 179, SE047, 42.7 );
setSeVolumeByWorkId( spep_2 + 180, SE047, 48.8 );
setSeVolumeByWorkId( spep_2 + 181, SE047, 54.9 );
setSeVolumeByWorkId( spep_2 + 182, SE047, 61 );
setStartTimeMs( SE047,  433 );
setPitch( spep_2 + 172, SE047, 100 );
setTimeStretch( SE047, 1.07, 10, 1 );
SE048 = playSe( spep_2 + 170, 1289 );
setSeVolumeByWorkId( spep_2 + 170, SE048, 51 );
stopSe( spep_2 + 190, SE048, 50 );
setPitch( spep_2 + 170, SE048, 800 );
setTimeStretch( SE048, 1.53, 10, 1 );
SE049 = playSe( spep_2 + 172, 1003 );
setSeVolumeByWorkId( spep_2 + 172, SE049, 78 );

--2人向かっていく
SE050 = playSe( spep_2 + 202, 1182 ,"",0.7);
stopSe( spep_2 + 280, SE050, 18 );
SE051 = playSe( spep_2 + 202, 9 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 202, SE051, 77 );
stopSe( spep_2 + 280, SE051, 18 );
SE052 = playSe( spep_2 + 202, 1314 ,"",0.7);
stopSe( spep_2 + 280, SE052, 18 );

--2人さらに奥へ
SE053 = playSe( spep_2 + 258, 1116 ,"",0.7);
stopSe( spep_2 + 280, SE053, 22 );

--クロス斬り
SE054 = playSe( spep_2 + 282, 1142 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 282, SE054, 94 );
SE055 = playSe( spep_2 + 282, 1032 ,"",0.6);
stopSe( spep_2 + 302, SE055, 6 );
SE056 = playSe( spep_2 + 282, 1153 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 282, SE056, 92 );
stopSe( spep_2 + 312, SE056, 6 );
SE057 = playSe( spep_2 + 286, 1172 );
setSeVolumeByWorkId( spep_2 + 286, SE057, 94 );
stopSe( spep_2 + 332, SE057, 32 );
SE058 = playSe( spep_2 + 288, 1143 );
setSeVolumeByWorkId( spep_2 + 288, SE058, 94 );
SE059 = playSe( spep_2 + 296, 1179 ,"",0.6);
stopSe( spep_2 + 320, SE059, 6 );

--岩光る
SE060 = playSe( spep_2 + 314, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 314, SE060, 0 );
setSeVolumeByWorkId( spep_2 + 315, SE060, 8.1 );
setSeVolumeByWorkId( spep_2 + 316, SE060, 16.2 );
setSeVolumeByWorkId( spep_2 + 317, SE060, 24.3 );
setSeVolumeByWorkId( spep_2 + 318, SE060, 32.4 );
setSeVolumeByWorkId( spep_2 + 319, SE060, 40.5 );
setSeVolumeByWorkId( spep_2 + 320, SE060, 48.6 );
setSeVolumeByWorkId( spep_2 + 321, SE060, 56.7 );
setSeVolumeByWorkId( spep_2 + 322, SE060, 65 );
stopSe( spep_2 + 334, SE060, 4 );
SE061 = playSe( spep_2 + 314, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 314, SE061, 72 );
SE062 = playSe( spep_2 + 326, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 326, SE062, 0 );
setSeVolumeByWorkId( spep_2 + 327, SE062, 6.9 );
setSeVolumeByWorkId( spep_2 + 328, SE062, 13.8 );
setSeVolumeByWorkId( spep_2 + 329, SE062, 20.7 );
setSeVolumeByWorkId( spep_2 + 330, SE062, 27.6 );
setSeVolumeByWorkId( spep_2 + 331, SE062, 34.5 );
setSeVolumeByWorkId( spep_2 + 332, SE062, 41.4 );
setSeVolumeByWorkId( spep_2 + 333, SE062, 48.3 );
setSeVolumeByWorkId( spep_2 + 334, SE062, 55 );
stopSe( spep_2 + 348, SE062, 4 );
SE063 = playSe( spep_2 + 326, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 326, SE063, 68 );
SE064 = playSe( spep_2 + 334, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE064, 0 );
setSeVolumeByWorkId( spep_2 + 335, SE064, 7.3 );
setSeVolumeByWorkId( spep_2 + 336, SE064, 14.6 );
setSeVolumeByWorkId( spep_2 + 337, SE064, 21.9 );
setSeVolumeByWorkId( spep_2 + 338, SE064, 29.2 );
setSeVolumeByWorkId( spep_2 + 339, SE064, 36.5 );
setSeVolumeByWorkId( spep_2 + 340, SE064, 43.8 );
setSeVolumeByWorkId( spep_2 + 341, SE064, 51.1 );
setSeVolumeByWorkId( spep_2 + 342, SE064, 58.4 );
setSeVolumeByWorkId( spep_2 + 343, SE064, 65.7 );
setSeVolumeByWorkId( spep_2 + 344, SE064, 73 );
SE065 = playSe( spep_2 + 334, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE065, 79 );

--ラスト爆発
SE066 = playSe( spep_2 + 350, 1067 );
SE067 = playSe( spep_2 + 360, 1023 );
setSeVolumeByWorkId( spep_2 + 360, SE067, 68 );
SE068 = playSe( spep_2 + 364, 1159 );
setSeVolumeByWorkId( spep_2 + 364, SE068, 79 );

--終わり
dealDamage( spep_2 +364 );
endPhase( spep_2 + 468 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気をためる〜敵が岩山に激突
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 430, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 430, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 430, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 430, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 430, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 236, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 237, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 238, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 282, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 283, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 284, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 430, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 430, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 430, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
SE001 = playSe( spep_x + 12, 1018 );

--タピオン気弾溜め
SE002 = playSe( spep_0 + 8, 1239 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 126 );
stopSe( spep_0 + 94, SE002, 14 );
SE003 = playSe( spep_0 + 8, 1199 );
SE004 = playSe( spep_0 + 8, 1262 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 141 );
SE005 = playSe( spep_0 + 8, 1295 );
setSeVolumeByWorkId( spep_0 + 8, SE005, 77 );
stopSe( spep_0 + 98, SE005, 12 );

--連続気弾
SE006 = playSe( spep_0 + 96, 1155 );
stopSe( spep_0 + 118, SE006, 4 );
SE007 = playSe( spep_0 + 98, 1027 );
setSeVolumeByWorkId( spep_0 + 98, SE007, 41 );
stopSe( spep_0 + 110, SE007, 12 );
SE008 = playSe( spep_0 + 100, 1016 );
setSeVolumeByWorkId( spep_0 + 100, SE008, 122 );
stopSe( spep_0 + 118, SE008, 4 );
SE009 = playSe( spep_0 + 110, 1155 );
stopSe( spep_0 + 132, SE009, 8 );
SE010 = playSe( spep_0 + 112, 1027 );
setSeVolumeByWorkId( spep_0 + 112, SE010, 43 );
stopSe( spep_0 + 124, SE010, 10 );
SE011 = playSe( spep_0 + 114, 1016 );
stopSe( spep_0 + 132, SE011, 8 );
SE012 = playSe( spep_0 + 126, 1155 );
SE013 = playSe( spep_0 + 128, 1027 );
setSeVolumeByWorkId( spep_0 + 128, SE013, 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 152; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 160, 1, 1);
setDisp( spep_0-1 + 238, 1, 0);

changeAnime( spep_0-3 + 160, 1, 100);
changeAnime( spep_0-3 + 186, 1, 104);
changeAnime( spep_0-3 + 222, 1, 5);

setMoveKey( spep_0-3 + 160, 1, 225.4, -21.5 , 0 );
setMoveKey( spep_0-3 + 162, 1, 221.9, -20.8 , 0 );
setMoveKey( spep_0-3 + 164, 1, 218.3, -20.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 214.7, -19.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 211.1, -18.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 207.5, -18.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 203.9, -17.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 200.3, -16.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 196.7, -16.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 193.1, -15.5 , 0 );
setMoveKey( spep_0-3 + 180, 1, 189.5, -14.9 , 0 );
setMoveKey( spep_0-3 + 182, 1, 185.9, -14.2 , 0 );
setMoveKey( spep_0-3 + 184, 1, 182.3, -13.6 , 0 );
setMoveKey( spep_0-3 + 185, 1, 182.3, -13.6 , 0 );

setMoveKey( spep_0-3 + 186, 1, 178.7, -12.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, 175.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 158.1, -37.4 , 0 );
setMoveKey( spep_0-3 + 192, 1, 175.2, -50.6 , 0 );
setMoveKey( spep_0-3 + 194, 1, 175, -46 , 0 );
setMoveKey( spep_0-3 + 196, 1, 175.9, -44.1 , 0 );
setMoveKey( spep_0-3 + 198, 1, 170.3, -39.4 , 0 );
setMoveKey( spep_0-3 + 200, 1, 175.9, -40.9 , 0 );
setMoveKey( spep_0-3 + 202, 1, 163.5, -45.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, 161.5, -47 , 0 );
setMoveKey( spep_0-3 + 206, 1, 147.7, -41.5 , 0 );
setMoveKey( spep_0-3 + 208, 1, 147.3, -43.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, 143.4, -51.5 , 0 );
setMoveKey( spep_0-3 + 212, 1, 151.2, -38.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, 153.4, -48.7 , 0 );
setMoveKey( spep_0-3 + 216, 1, 144.4, -47.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, 137.5, -38.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 129.6, -36.1 , 0 );
setMoveKey( spep_0-3 + 221, 1, 129.6, -36.1 , 0 );

setMoveKey( spep_0-3 + 222, 1, 117.4, -1.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, 143.9, -1.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, 163.7, -1.4 , 0 );
setMoveKey( spep_0-3 + 228, 1, 177.9, -1.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 187.5, -1.5 , 0 );
setMoveKey( spep_0-3 + 232, 1, 193.3, -1.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, 196.2, -1.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 197.3, -1.5 , 0 );
setMoveKey( spep_0-1 + 238, 1, 197.5, -1.5 , 0 );

setScaleKey( spep_0-3 + 160, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 162, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 164, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 166, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 168, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 172, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 174, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 176, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 178, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 180, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 182, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 184, 1, 0.89, 0.89 );
setScaleKey( spep_0-3 + 185, 1, 0.89, 0.89 );

setScaleKey( spep_0-3 + 186, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 188, 1, 0.97, 0.97 );
setScaleKey( spep_0-3 + 190, 1, 1.01, 1.01 );
setScaleKey( spep_0-3 + 192, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 194, 1, 1.09, 1.09 );
setScaleKey( spep_0-3 + 196, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 198, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 200, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 202, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 204, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 206, 1, 1.33, 1.33 );
setScaleKey( spep_0-3 + 208, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 210, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 212, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 214, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 216, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 218, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 220, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 221, 1, 1.62, 1.62 );

setScaleKey( spep_0-3 + 222, 1, 1.28, 1.28 );
setScaleKey( spep_0-3 + 224, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 226, 1, 0.91, 0.91 );
setScaleKey( spep_0-3 + 228, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 230, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 232, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 234, 1, 0.66, 0.66 );
setScaleKey( spep_0-1 + 238, 1, 0.65, 0.65 );

setRotateKey( spep_0-3 + 160, 1, 3.7 );
setRotateKey( spep_0-3 + 185, 1, 3.7 );

setRotateKey( spep_0-3 + 186, 1, 3.7 );
setRotateKey( spep_0-3 + 221, 1, 3.7 );

setRotateKey( spep_0-3 + 222, 1, 70.4 );
setRotateKey( spep_0-3 + 224, 1, 78.1 );
setRotateKey( spep_0-3 + 226, 1, 83.9 );
setRotateKey( spep_0-3 + 228, 1, 88.1 );
setRotateKey( spep_0-3 + 230, 1, 90.8 );
setRotateKey( spep_0-3 + 232, 1, 92.5 );
setRotateKey( spep_0-3 + 234, 1, 93.4 );
setRotateKey( spep_0-1 + 238, 1, 93.7 );

--敵の動き
setDisp( spep_0-3 + 286, 1, 1);
setDisp( spep_0-1 + 368, 1, 0);

changeAnime( spep_0-3 + 286, 1, 106);
changeAnime( spep_0-3 + 294, 1, 108);

setMoveKey( spep_0-3 + 286, 1, 681.8, 348.1 , 0 );
setMoveKey( spep_0-3 + 288, 1, 535.3, 272 , 0 );
setMoveKey( spep_0-3 + 290, 1, 388.8, 196 , 0 );
setMoveKey( spep_0-3 + 292, 1, 242.4, 120 , 0 );
setMoveKey( spep_0-3 + 293, 1, 242.4, 120 , 0 );

setMoveKey( spep_0-3 + 294, 1, 95.9, 44 , 0 );
setMoveKey( spep_0-3 + 296, 1, 95.9, 44 , 0 );
setMoveKey( spep_0-3 + 298, 1, 104.9, 53.5 , 0 );
setMoveKey( spep_0-3 + 300, 1, 94, 43.1 , 0 );
setMoveKey( spep_0-3 + 302, 1, 89.8, 39.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, 88.7, 46.8 , 0 );
setMoveKey( spep_0-3 + 306, 1, 92.6, 32.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, 96.3, 44.6 , 0 );
setMoveKey( spep_0-3 + 310, 1, 108.6, 27.4 , 0 );
setMoveKey( spep_0-3 + 312, 1, 113.7, 38.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, 118.8, 36.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, 122.1, 35.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, 124.1, 34.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 125.2, 34.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, 125.8, 34.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, 126, 34.1 , 0 );
setMoveKey( spep_0-3 + 330, 1, 126, 34.1 , 0 );
setMoveKey( spep_0-3 + 332, 1, 125.9, 34.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, 125.7, 34.1 , 0 );
setMoveKey( spep_0-3 + 336, 1, 125.4, 34 , 0 );
setMoveKey( spep_0-3 + 338, 1, 124.7, 33.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, 123.8, 33.8 , 0 );
setMoveKey( spep_0-3 + 342, 1, 122.5, 33.6 , 0 );
setMoveKey( spep_0-3 + 344, 1, 120.8, 33.4 , 0 );
setMoveKey( spep_0-3 + 346, 1, 118.6, 33 , 0 );
setMoveKey( spep_0-3 + 348, 1, 115.8, 32.6 , 0 );
setMoveKey( spep_0-3 + 350, 1, 112.4, 32.2 , 0 );
setMoveKey( spep_0-3 + 352, 1, 108.4, 31.6 , 0 );
setMoveKey( spep_0-3 + 354, 1, 103.6, 30.9 , 0 );
setMoveKey( spep_0-3 + 356, 1, 98, 30.1 , 0 );
setMoveKey( spep_0-3 + 358, 1, 91.5, 29.1 , 0 );
setMoveKey( spep_0-3 + 360, 1, 84.2, 28.1 , 0 );
setMoveKey( spep_0-3 + 362, 1, 75.8, 26.9 , 0 );
setMoveKey( spep_0-3 + 364, 1, 66.4, 25.5 , 0 );
setMoveKey( spep_0-3 + 366, 1, 55.4, 27.7 , 0 );
setMoveKey( spep_0-1 + 368, 1, 54.7, 31.4 , 0 );

setScaleKey( spep_0-3 + 286, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 293, 1, 1.8, 1.8 );

setScaleKey( spep_0-3 + 294, 1,2.25,2.25);
setScaleKey( spep_0-3 + 308, 1,2.25,2.25);
setScaleKey( spep_0-3 + 310, 1,1.86,1.86);
setScaleKey( spep_0-3 + 312, 1,1.57,1.57);
setScaleKey( spep_0-3 + 314, 1,1.37,1.37);
setScaleKey( spep_0-3 + 316, 1,1.25,1.25);
setScaleKey( spep_0-3 + 318, 1,1.17,1.17);
setScaleKey( spep_0-3 + 320, 1,1.12,1.12);
setScaleKey( spep_0-3 + 322, 1,1.11,1.11);
setScaleKey( spep_0-3 + 324, 1,1.1,1.1);
setScaleKey( spep_0-3 + 336, 1,1.1,1.1);
setScaleKey( spep_0-3 + 338, 1,1.08,1.08);
setScaleKey( spep_0-3 + 342, 1,1.08,1.08);
setScaleKey( spep_0-3 + 344, 1,1.07,1.07);
setScaleKey( spep_0-3 + 346, 1,1.06,1.06);
setScaleKey( spep_0-3 + 348, 1,1.05,1.05);
setScaleKey( spep_0-3 + 350, 1,1.03,1.03);
setScaleKey( spep_0-3 + 352, 1,1.01,1.01);
setScaleKey( spep_0-3 + 354, 1,0.98,0.98);
setScaleKey( spep_0-3 + 356, 1,0.96,0.96);
setScaleKey( spep_0-3 + 358, 1,0.93,0.93);
setScaleKey( spep_0-3 + 360, 1,0.9,0.9);
setScaleKey( spep_0-3 + 362, 1,0.85,0.85);
setScaleKey( spep_0-3 + 364, 1,0.81,0.81);
setScaleKey( spep_0-1 + 368, 1,0.76,0.76);

setRotateKey( spep_0-3 + 286, 1, -17.7 );
setRotateKey( spep_0-3 + 293, 1, -17.7 );

setRotateKey( spep_0-3 + 294, 1, -17.7 );
setRotateKey( spep_0-3 + 334, 1, -17.7 );
setRotateKey( spep_0-3 + 336, 1, -17.8 );
setRotateKey( spep_0-3 + 338, 1, -17.9 );
setRotateKey( spep_0-3 + 340, 1, -18.1 );
setRotateKey( spep_0-3 + 342, 1, -18.4 );
setRotateKey( spep_0-3 + 344, 1, -18.8 );
setRotateKey( spep_0-3 + 346, 1, -19.2 );
setRotateKey( spep_0-3 + 348, 1, -19.8 );
setRotateKey( spep_0-3 + 350, 1, -20.5 );
setRotateKey( spep_0-3 + 352, 1, -21.4 );
setRotateKey( spep_0-3 + 354, 1, -22.4 );
setRotateKey( spep_0-3 + 356, 1, -23.6 );
setRotateKey( spep_0-3 + 358, 1, -24.9 );
setRotateKey( spep_0-3 + 360, 1, -26.4 );
setRotateKey( spep_0-3 + 362, 1, -28.2 );
setRotateKey( spep_0-3 + 364, 1, -30.2 );
setRotateKey( spep_0-1 + 368, 1, -32.4 );

--SE
----連続気弾
stopSe( spep_0 + 148, SE012, 4 );
stopSe( spep_0 + 140, SE013, 8 );
SE014 = playSe( spep_0 + 130, 1016 );
stopSe( spep_0 + 148, SE014, 4 );
SE015 = playSe( spep_0 + 140, 1155 );
stopSe( spep_0 + 158, SE015, 6 );
SE016 = playSe( spep_0 + 142, 1027 );
setSeVolumeByWorkId( spep_0 + 142, SE016, 42 );
stopSe( spep_0 + 152, SE016, 14 );
SE017 = playSe( spep_0 + 144, 1016 );
stopSe( spep_0 + 158, SE017, 6 );
SE018 = playSe( spep_0 + 152, 1155 );
stopSe( spep_0 + 188, SE018, 6 );
SE019 = playSe( spep_0 + 154, 1027 );
setSeVolumeByWorkId( spep_0 + 154, SE019, 42 );
SE020 = playSe( spep_0 + 158, 1016 );

--気弾飛んでいく
SE021 = playSe( spep_0 + 158, 1021 );
setSeVolumeByWorkId( spep_0 + 158, SE021, 78 );

--気弾ヒット
SE022 = playSe( spep_0 + 184, 1023 );
SE023 = playSe( spep_0 + 198, 1014 );
setSeVolumeByWorkId( spep_0 + 198, SE023, 77 );
stopSe( spep_0 + 214, SE023, 18 );
SE024 = playSe( spep_0 + 208, 1014 );
setSeVolumeByWorkId( spep_0 + 208, SE024, 80 );
stopSe( spep_0 + 228, SE024, 18 );
SE025 = playSe( spep_0 + 218, 1011 );

--ミノシア迫ってくる
SE026 = playSe( spep_0 + 236, 1167 );
setSeVolumeByWorkId( spep_0 + 236, SE026, 45 );
SE027 = playSe( spep_0 + 236, 1182 );
SE028 = playSe( spep_0 + 236, 1183 );
stopSe( spep_0 + 292, SE028, 4 );

--ミノシア突き
SE029 = playSe( spep_0 + 288, 1180 );
setSeVolumeByWorkId( spep_0 + 292, SE029, 0 );
setSeVolumeByWorkId( spep_0 + 293, SE029, 25 );
setSeVolumeByWorkId( spep_0 + 294, SE029, 50 );
setSeVolumeByWorkId( spep_0 + 295, SE029, 75 );
setSeVolumeByWorkId( spep_0 + 296, SE029, 100 );
setStartTimeMs( SE029,  550 );
setPitch( spep_0 + 288, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );
SE030 = playSe( spep_0 + 294, 1141 );
setSeVolumeByWorkId( spep_0 + 298, SE030, 100 );
SE031 = playSe( spep_0 + 294, 1142 );
SE032 = playSe( spep_0 + 296, 1032 );

--敵飛んでいく
SE033 = playSe( spep_0 + 310, 1121 );
setSeVolumeByWorkId( spep_0 + 310, SE033, 53 );
stopSe( spep_0 + 366, SE033, 8 );
SE034 = playSe( spep_0 + 310, 1183 );
setSeVolumeByWorkId( spep_0 + 310, SE034, 66 );
stopSe( spep_0 + 366, SE034, 8 );

--岩激突
SE035 = playSe( spep_0 + 364, 1159 );
setSeVolumeByWorkId( spep_0 + 364, SE035, 72 );

--白フェード
entryFade( spep_0 + 424, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+430;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--岩激突
stopSe( spep_1 + 4, SE035, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 , 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 剣を構える〜岩山爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 478, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 478, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 478, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 478, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 478, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 478, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 478, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 478, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 284, 1, 1);
setDisp( spep_2-1 + 314, 1, 0);

changeAnime( spep_2-3 + 284, 1, 105);

setMoveKey( spep_2-3 + 284, 1, 3.8, -1.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, 3.8, -1.3 , 0 );
setMoveKey( spep_2-3 + 292, 1, 3.9, -1.8 , 0 );
setMoveKey( spep_2-3 + 294, 1, 4, -2 , 0 );
setMoveKey( spep_2-1 + 314, 1, 4, -2 , 0 );

setScaleKey( spep_2-3 + 284, 1, 4.09, 4.66 );
setScaleKey( spep_2-3 + 290, 1, 4.09, 4.66 );
setScaleKey( spep_2-3 + 292, 1, 2.52, 2.87 );
setScaleKey( spep_2-3 + 294, 1, 1.99, 2.27 );
setScaleKey( spep_2-3 + 296, 1, 1.96, 2.23 );
setScaleKey( spep_2-3 + 298, 1, 1.93, 2.2 );
setScaleKey( spep_2-3 + 300, 1, 1.9, 2.16 );
setScaleKey( spep_2-3 + 302, 1, 1.87, 2.13 );
setScaleKey( spep_2-3 + 304, 1, 1.84, 2.09 );
setScaleKey( spep_2-3 + 306, 1, 1.8, 2.05 );
setScaleKey( spep_2-3 + 308, 1, 1.77, 2.02 );
setScaleKey( spep_2-3 + 310, 1, 1.74, 1.98 );
setScaleKey( spep_2-3 + 312, 1, 1.71, 1.94 );
setScaleKey( spep_2-1 + 314, 1, 1.68, 1.91 );

setRotateKey( spep_2-3 + 284, 1, -0.3 );
setRotateKey( spep_2-1 + 314, 1, -0.3 );

--SE
--カメラズーム
SE037 = playSe( spep_2 + 0, 1072 );
setSeVolumeByWorkId( spep_2 + 0, SE037, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE037, 12.5 );
setSeVolumeByWorkId( spep_2 + 2, SE037, 25 );
setSeVolumeByWorkId( spep_2 + 3, SE037, 37.5 );
setSeVolumeByWorkId( spep_2 + 4, SE037, 50 );
setSeVolumeByWorkId( spep_2 + 5, SE037, 62.5 );
setSeVolumeByWorkId( spep_2 + 6, SE037, 75 );
setSeVolumeByWorkId( spep_2 + 7, SE037, 87.5 );
setSeVolumeByWorkId( spep_2 + 8, SE037, 100 );
setStartTimeMs( SE037,  217 );
SE038 = playSe( spep_2 + 2, 44 );
setSeVolumeByWorkId( spep_2 + 2, SE038, 38 );
stopSe( spep_2 + 36, SE038, 26 );
SE039 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE039, 82 );
setPitch( spep_2 + 8, SE039, -300 );
setTimeStretch( SE039, 0.8, 10, 1 );

--ミノシア構える
SE040 = playSe( spep_2 + 48, 1061 );
SE041 = playSe( spep_2 + 48, 1179 );
stopSe( spep_2 + 92, SE041, 30 );
setPitch( spep_2 + 48, SE041, 200 );
setTimeStretch( SE041, 1.13, 10, 1 );
SE042 = playSe( spep_2 + 48, 1026 );
setSeVolumeByWorkId( spep_2 + 48, SE042, 73 );

--タピオン構える
SE043 = playSe( spep_2 + 102, 1061 );
SE044 = playSe( spep_2 + 102, 1179 );
stopSe( spep_2 + 146, SE044, 30 );
SE045 = playSe( spep_2 + 102, 1274 );
setSeVolumeByWorkId( spep_2 + 102, SE045, 58 );
SE046 = playSe( spep_2 + 102, 1026 );
setSeVolumeByWorkId( spep_2 + 102, SE046, 77 );

--タピオン構え外す
SE047 = playSe( spep_2 + 172, 1198 );
setSeVolumeByWorkId( spep_2 + 172, SE047, 0 );
setSeVolumeByWorkId( spep_2 + 173, SE047, 6.1 );
setSeVolumeByWorkId( spep_2 + 174, SE047, 12.2 );
setSeVolumeByWorkId( spep_2 + 175, SE047, 18.3 );
setSeVolumeByWorkId( spep_2 + 176, SE047, 24.4 );
setSeVolumeByWorkId( spep_2 + 177, SE047, 30.5 );
setSeVolumeByWorkId( spep_2 + 178, SE047, 36.6 );
setSeVolumeByWorkId( spep_2 + 179, SE047, 42.7 );
setSeVolumeByWorkId( spep_2 + 180, SE047, 48.8 );
setSeVolumeByWorkId( spep_2 + 181, SE047, 54.9 );
setSeVolumeByWorkId( spep_2 + 182, SE047, 61 );
setStartTimeMs( SE047,  433 );
setPitch( spep_2 + 172, SE047, 100 );
setTimeStretch( SE047, 1.07, 10, 1 );
SE048 = playSe( spep_2 + 170, 1289 );
setSeVolumeByWorkId( spep_2 + 170, SE048, 51 );
stopSe( spep_2 + 190, SE048, 50 );
setPitch( spep_2 + 170, SE048, 800 );
setTimeStretch( SE048, 1.53, 10, 1 );
SE049 = playSe( spep_2 + 172, 1003 );
setSeVolumeByWorkId( spep_2 + 172, SE049, 78 );

--2人向かっていく
SE050 = playSe( spep_2 + 202, 1182 ,"",0.7);
stopSe( spep_2 + 280, SE050, 18 );
SE051 = playSe( spep_2 + 202, 9 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 202, SE051, 77 );
stopSe( spep_2 + 280, SE051, 18 );
SE052 = playSe( spep_2 + 202, 1314 ,"",0.7);
stopSe( spep_2 + 280, SE052, 18 );

--2人さらに奥へ
SE053 = playSe( spep_2 + 258, 1116 ,"",0.7);
stopSe( spep_2 + 280, SE053, 22 );

--クロス斬り
SE054 = playSe( spep_2 + 282, 1142 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 282, SE054, 94 );
SE055 = playSe( spep_2 + 282, 1032 ,"",0.6);
stopSe( spep_2 + 302, SE055, 6 );
SE056 = playSe( spep_2 + 282, 1153 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 282, SE056, 92 );
stopSe( spep_2 + 312, SE056, 6 );
SE057 = playSe( spep_2 + 286, 1172 );
setSeVolumeByWorkId( spep_2 + 286, SE057, 94 );
stopSe( spep_2 + 332, SE057, 32 );
SE058 = playSe( spep_2 + 288, 1143 );
setSeVolumeByWorkId( spep_2 + 288, SE058, 94 );
SE059 = playSe( spep_2 + 296, 1179 ,"",0.6);
stopSe( spep_2 + 320, SE059, 6 );

--岩光る
SE060 = playSe( spep_2 + 314, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 314, SE060, 0 );
setSeVolumeByWorkId( spep_2 + 315, SE060, 8.1 );
setSeVolumeByWorkId( spep_2 + 316, SE060, 16.2 );
setSeVolumeByWorkId( spep_2 + 317, SE060, 24.3 );
setSeVolumeByWorkId( spep_2 + 318, SE060, 32.4 );
setSeVolumeByWorkId( spep_2 + 319, SE060, 40.5 );
setSeVolumeByWorkId( spep_2 + 320, SE060, 48.6 );
setSeVolumeByWorkId( spep_2 + 321, SE060, 56.7 );
setSeVolumeByWorkId( spep_2 + 322, SE060, 65 );
stopSe( spep_2 + 334, SE060, 4 );
SE061 = playSe( spep_2 + 314, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 314, SE061, 72 );
SE062 = playSe( spep_2 + 326, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 326, SE062, 0 );
setSeVolumeByWorkId( spep_2 + 327, SE062, 6.9 );
setSeVolumeByWorkId( spep_2 + 328, SE062, 13.8 );
setSeVolumeByWorkId( spep_2 + 329, SE062, 20.7 );
setSeVolumeByWorkId( spep_2 + 330, SE062, 27.6 );
setSeVolumeByWorkId( spep_2 + 331, SE062, 34.5 );
setSeVolumeByWorkId( spep_2 + 332, SE062, 41.4 );
setSeVolumeByWorkId( spep_2 + 333, SE062, 48.3 );
setSeVolumeByWorkId( spep_2 + 334, SE062, 55 );
stopSe( spep_2 + 348, SE062, 4 );
SE063 = playSe( spep_2 + 326, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 326, SE063, 68 );
SE064 = playSe( spep_2 + 334, 1141 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE064, 0 );
setSeVolumeByWorkId( spep_2 + 335, SE064, 7.3 );
setSeVolumeByWorkId( spep_2 + 336, SE064, 14.6 );
setSeVolumeByWorkId( spep_2 + 337, SE064, 21.9 );
setSeVolumeByWorkId( spep_2 + 338, SE064, 29.2 );
setSeVolumeByWorkId( spep_2 + 339, SE064, 36.5 );
setSeVolumeByWorkId( spep_2 + 340, SE064, 43.8 );
setSeVolumeByWorkId( spep_2 + 341, SE064, 51.1 );
setSeVolumeByWorkId( spep_2 + 342, SE064, 58.4 );
setSeVolumeByWorkId( spep_2 + 343, SE064, 65.7 );
setSeVolumeByWorkId( spep_2 + 344, SE064, 73 );
SE065 = playSe( spep_2 + 334, 1055 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE065, 79 );

--ラスト爆発
SE066 = playSe( spep_2 + 350, 1067 );
SE067 = playSe( spep_2 + 360, 1023 );
setSeVolumeByWorkId( spep_2 + 360, SE067, 68 );
SE068 = playSe( spep_2 + 364, 1159 );
setSeVolumeByWorkId( spep_2 + 364, SE068, 79 );

--終わり
dealDamage( spep_2 +364 );
endPhase( spep_2 + 468 );
end