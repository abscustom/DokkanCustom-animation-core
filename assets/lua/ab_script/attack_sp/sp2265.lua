--4023120:超サイヤ人トランクス(青年期)_シャイニングソードアタック
--sp_effect_a9_00087
--sp2265

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
SP_01=	158461	;--	対峙
SP_02=	158463	;--	セリフカットイン 
SP_03=	158465	;--	バババッ
SP_04=	158467	;--	カッ
SP_05=	158468	;--	気弾発射
SP_06=	158470	;--	迫る 前面
SP_07=	158472	;--	迫る 背面
SP_08=	158474	;--	顔アップ
SP_09=	158475	;--	切り刻み
SP_10=	158476	;--	ボウッ 前面
SP_11=	158478	;--	ボウッ 背面
SP_12=	158480	;--	KO

--エフェクト(てき)
SP_01x=	158462	;--	対峙	(敵)
SP_02x=	158464	;--	セリフカットイン 	(敵)
SP_03x=	158466	;--	バババッ	(敵)
SP_04x=	158467	;--	カッ	
SP_05x=	158469	;--	気弾発射	(敵)
SP_06x=	158471	;--	迫る 前面	(敵)
SP_07x=	158473	;--	迫る 背面	(敵)
SP_08x=	158474	;--	顔アップ	
SP_09x=	158475	;--	切り刻み	
SP_10x=	158477	;--	ボウッ 前面	(敵)
SP_11x=	158479	;--	ボウッ 背面	(敵)
SP_12x=	158480	;--	KO	

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
------------------------------------------------------
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 76, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 74, confrontation, 255 );
setEffAlphaKey( spep_0 + 75, confrontation, 255 );
setEffAlphaKey( spep_0 + 76, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 136.4, -147.6 , 0 );
setMoveKey( spep_0 + 1, 1, 136.4, -147.6 , 0 );
setMoveKey( spep_0 + 2, 1, 151, -161 , 0 );
setMoveKey( spep_0 + 3, 1, 151, -161 , 0 );
setMoveKey( spep_0 + 4, 1, 165.5, -174.3 , 0 );
setMoveKey( spep_0 + 5, 1, 165.5, -174.3 , 0 );
setMoveKey( spep_0 + 6, 1, 180, -187.7 , 0 );
setMoveKey( spep_0 + 8, 1, 194.5, -201.1 , 0 );
setMoveKey( spep_0 + 10, 1, 209, -214.4 , 0 );
setMoveKey( spep_0 + 12, 1, 223.5, -227.8 , 0 );
setMoveKey( spep_0 + 14, 1, 238, -241.2 , 0 );
setMoveKey( spep_0 + 16, 1, 252.6, -254.5 , 0 );
setMoveKey( spep_0 + 18, 1, 267.1, -267.9 , 0 );
setMoveKey( spep_0 + 20, 1, 281.6, -281.3 , 0 );
setMoveKey( spep_0 + 22, 1, 296.1, -294.7 , 0 );
setMoveKey( spep_0 + 24, 1, 310.6, -308 , 0 );
setMoveKey( spep_0 + 26, 1, 325.1, -321.4 , 0 );
setMoveKey( spep_0 + 28, 1, 339.6, -334.8 , 0 );
setMoveKey( spep_0 + 30, 1, 354.2, -348.1 , 0 );
setMoveKey( spep_0 + 32, 1, 368.7, -361.5 , 0 );
setMoveKey( spep_0 + 34, 1, 383.2, -374.9 , 0 );
setMoveKey( spep_0 + 36, 1, 397.7, -388.2 , 0 );
setMoveKey( spep_0 + 38, 1, 412.2, -401.6 , 0 );
setMoveKey( spep_0 + 40, 1, 426.7, -415 , 0 );
setMoveKey( spep_0 + 42, 1, 441.2, -428.3 , 0 );
setMoveKey( spep_0 + 44, 1, 455.7, -441.7 , 0 );
setMoveKey( spep_0 + 46, 1, 470.3, -455.1 , 0 );
setMoveKey( spep_0 + 48, 1, 484.8, -468.4 , 0 );
setMoveKey( spep_0 + 50, 1, 499.3, -481.8 , 0 );
setMoveKey( spep_0 + 52, 1, 513.8, -495.2 , 0 );
setMoveKey( spep_0 + 54, 1, 528.3, -508.5 , 0 );
setMoveKey( spep_0 + 56, 1, 542.8, -521.9 , 0 );
setMoveKey( spep_0 + 58, 1, 557.3, -535.3 , 0 );
setMoveKey( spep_0 + 60, 1, 571.9, -548.7 , 0 );
setMoveKey( spep_0 + 62, 1, 586.4, -562 , 0 );
setMoveKey( spep_0 + 64, 1, 600.9, -575.4 , 0 );
setMoveKey( spep_0 + 66, 1, 615.4, -588.8 , 0 );
setMoveKey( spep_0 + 68, 1, 629.9, -602.1 , 0 );
setMoveKey( spep_0 + 70, 1, 644.4, -615.5 , 0 );
setMoveKey( spep_0 + 72, 1, 658.9, -628.9 , 0 );
setMoveKey( spep_0 + 74, 1, 673.4, -642.2 , 0 );
setMoveKey( spep_0 + 76, 1, 688, -655.6 , 0 );

setScaleKey( spep_0 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 1, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 3, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 4, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 5, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 6, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 8, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 10, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 12, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 14, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 16, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 18, 1, 3, 3 );
setScaleKey( spep_0 + 20, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 22, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 24, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 26, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 28, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 30, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 32, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 34, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 36, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 38, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 40, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 42, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 44, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 46, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 48, 1, 4, 4 );
setScaleKey( spep_0 + 50, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 54, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 56, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 58, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 60, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 62, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 64, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 66, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 68, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 70, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 72, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 74, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 76, 1, 4.93, 4.93 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 76, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 222, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
look = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, look, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, look, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, look, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, look, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, look, 0 );
setEffRotateKey( spep_1 + 96, look, 0 );
setEffAlphaKey( spep_1 + 0, look, 255 );
setEffAlphaKey( spep_1 + 96, look, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
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

--SE
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +88 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
--バババッ
------------------------------------------------------
-- ** エフェクト等 ** --
bababa = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bababa, 0, 0, 0 );
setEffMoveKey( spep_2 + 154, bababa, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bababa, 1.0, 1.0 );
setEffScaleKey( spep_2 + 154, bababa, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bababa, 0 );
setEffRotateKey( spep_2 + 154, bababa, 0 );
setEffAlphaKey( spep_2 + 0, bababa, 255 );
setEffAlphaKey( spep_2 + 152, bababa, 255 );
setEffAlphaKey( spep_2 + 153, bababa, 255 );
setEffAlphaKey( spep_2 + 154, bababa, 0 );

--SE
--腕前に出す
SE005 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 4, 1145, "",spep_2 + 48, 4, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE004, 32 );
setStartTimeMs( SE004,  733 );
SE006 = playSeVer2( spep_2 + 4, 1155, "", 0, 0, 0, -1);

--腕高速動かし
SE007 = playSeVer2( spep_2 + 48, 1235, "",spep_2 + 90, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 48, SE007, 45 );
setPitch( spep_2 + 48, SE007, 1200 );
setTimeStretch( SE007, 1.8, 30, 4 );
SE008 = playSeVer2( spep_2 + 58, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE008, 119 );
SE009 = playSeVer2( spep_2 + 64, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE009, 115 );
SE010 = playSeVer2( spep_2 + 68, 1235, "",spep_2 + 104, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 50 );
setPitch( spep_2 + 68, SE010, 1200 );
setTimeStretch( SE010, 1.8, 30, 4 );
SE011 = playSeVer2( spep_2 + 76, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE011, 114 );
SE012 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE012, 114 );
SE013 = playSeVer2( spep_2 + 86, 1235, "",spep_2 + 122, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 45 );
setPitch( spep_2 + 86, SE013, 1200 );
setTimeStretch( SE013, 1.8, 30, 4 );
SE014 = playSeVer2( spep_2 + 88, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE014, 155 );
SE015 = playSeVer2( spep_2 + 98, 1235, "",spep_2 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 98, SE015, 50 );
setPitch( spep_2 + 98, SE015, 1200 );
setTimeStretch( SE015, 1.8, 30, 4 );
SE016 = playSeVer2( spep_2 + 100, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 107 );
SE017 = playSeVer2( spep_2 + 110, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE017, 117 );
SE018 = playSeVer2( spep_2 + 112, 1235, "",spep_2 + 148, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 112, SE018, 40 );
setPitch( spep_2 + 112, SE018, 1200 );
setTimeStretch( SE018, 1.8, 30, 4 );
SE019 = playSeVer2( spep_2 + 118, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 124 );
SE020 = playSeVer2( spep_2 + 122, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE020, 114 );
SE021 = playSeVer2( spep_2 + 124, 1235, "",spep_2 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 124, SE021, 40 );
setPitch( spep_2 + 124, SE021, 1200 );
setTimeStretch( SE021, 1.8, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 160, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_3=spep_2+154;
------------------------------------------------------
--カッ
------------------------------------------------------
-- ** エフェクト等 ** --
ka = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ka, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, ka, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ka, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, ka, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ka, 0 );
setEffRotateKey( spep_3 + 82, ka, 0 );
setEffAlphaKey( spep_3 + 0, ka, 255 );
setEffAlphaKey( spep_3 + 82, ka, 255 );

--SE
--腕前に出す
SE022 = playSeVer2( spep_3 + 0, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE022, 74 );
SE023 = playSeVer2( spep_3 + 0, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 10, 1240, "",spep_3 + 102, 0, 26, -1);
setPitch( spep_3 + 10, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );

--白フェード
entryFade( spep_3 +74 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 82, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_4=spep_3+82;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_4, SE_05);
	speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_4, SE_05);
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
--playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94; 
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 76, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 74, beam, 255 );
setEffAlphaKey( spep_5 + 75, beam, 255 );
setEffAlphaKey( spep_5 + 76, beam, 0 );

--SE
--気弾溜め
SE026 = playSeVer2( spep_5 + 0, 1311, "",spep_5 + 60, 0, 8, -1);
SE027 = playSeVer2( spep_5 + 0, 1276, "",spep_5 + 60, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    
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
--文字エントリー
ctdon = entryEffectLife( spep_5-3 + 52,  10019, 24, 0x100, -1, 0, 81.8, -60.6 );--ドンッ
setEffShake( spep_5-3 + 52, ctdon, 24, 10 );
setEffMoveKey( spep_5-3 + 52, ctdon, 81.8, -60.6 , 0 );
setEffMoveKey( spep_5-3 + 54, ctdon, 70.9, -55.2 , 0 );
setEffMoveKey( spep_5-3 + 56, ctdon, 80.4, -57.9 , 0 );
setEffMoveKey( spep_5-3 + 58, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 60, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 62, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 64, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 66, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 68, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 70, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 72, ctdon, 78.2, -54 , 0 );
setEffMoveKey( spep_5-3 + 74, ctdon, 37.7, -35.8 , 0 );
setEffMoveKey( spep_5-3 + 76, ctdon, 26.5, -29.3 , 0 );

setEffScaleKey( spep_5-3 + 52, ctdon, 0.69, 0.69 );
setEffScaleKey( spep_5-3 + 54, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_5-3 + 56, ctdon, 1.89, 1.89 );
setEffScaleKey( spep_5-3 + 58, ctdon, 2.49, 2.49 );
setEffScaleKey( spep_5-3 + 70, ctdon, 2.49, 2.49 );
setEffScaleKey( spep_5-3 + 72, ctdon, 3.72, 3.72 );
setEffScaleKey( spep_5-3 + 74, ctdon, 4.96, 4.96 );
setEffScaleKey( spep_5-3 + 76, ctdon, 6.19, 6.19 );

setEffRotateKey( spep_5-3 + 52, ctdon, -23.3 );
setEffRotateKey( spep_5-3 + 54, ctdon, -23.5 );
setEffRotateKey( spep_5-3 + 76, ctdon, -23.5 );

setEffAlphaKey( spep_5-3 + 52, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 70, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 72, ctdon, 170 );
setEffAlphaKey( spep_5-3 + 74, ctdon, 85 );
setEffAlphaKey( spep_5-3 + 76, ctdon, 0 );

--SE
--気弾発射
SE028 = playSeVer2( spep_5 + 50, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE028, 69 );
SE029 = playSeVer2( spep_5 + 50, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE029, 114 );
SE030 = playSeVer2( spep_5 + 50, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE030, 66 );

--次の準備
spep_6=spep_5+76;
------------------------------------------------------
--迫る
------------------------------------------------------
-- ** エフェクト等 ** --
pproaching_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pproaching_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, pproaching_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pproaching_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, pproaching_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pproaching_f, 0 );
setEffRotateKey( spep_6 + 180, pproaching_f, 0 );
setEffAlphaKey( spep_6 + 0, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 178, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 179, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 180, pproaching_f, 0 );

-- ** エフェクト等 ** --
pproaching_b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pproaching_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, pproaching_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pproaching_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, pproaching_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pproaching_b, 0 );
setEffRotateKey( spep_6 + 180, pproaching_b, 0 );
setEffAlphaKey( spep_6 + 0, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 178, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 179, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 180, pproaching_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_6-3 + 32,  10018, 56, 0x100, -1, 0, 59.5, -147 );--ドゴォンッ
setEffShake( spep_6-3 + 32, ctdogon, 56, 10 );
setEffMoveKey( spep_6-3 + 32, ctdogon, 59.5, -147 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdogon, 59.5, -147 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdogon, 59.5, -151.8 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdogon, 59.5, -166.6 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdogon, 59.5, -192.5 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdogon, 59.5, -230.6 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdogon, 59.5, -282.1 , 0 );
setEffMoveKey( spep_6-3 + 74, ctdogon, 59.5, -348.6 , 0 );
setEffMoveKey( spep_6-3 + 76, ctdogon, 59.5, -432.4 , 0 );
setEffMoveKey( spep_6-3 + 78, ctdogon, 59.5, -536.2 , 0 );
setEffMoveKey( spep_6-3 + 80, ctdogon, 59.5, -663.6 , 0 );
setEffMoveKey( spep_6-3 + 82, ctdogon, 59.5, -820.2 , 0 );
setEffMoveKey( spep_6-3 + 84, ctdogon, 59.5, -1014.7 , 0 );
setEffMoveKey( spep_6-3 + 86, ctdogon, 59.5, -1263.7 , 0 );
setEffMoveKey( spep_6-3 + 88, ctdogon, 59.5, -1622 , 0 );

setEffScaleKey( spep_6-3 + 32, ctdogon, 0.88, 0.88 );
setEffScaleKey( spep_6-3 + 34, ctdogon, 1.58, 1.58 );
setEffScaleKey( spep_6-3 + 36, ctdogon, 2.1, 2.1 );
setEffScaleKey( spep_6-3 + 38, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 40, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 42, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 44, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 46, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 48, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 50, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 52, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 54, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 56, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 58, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 60, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 62, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 64, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 66, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 68, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 70, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 72, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 74, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 76, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 78, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 80, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 82, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 84, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 86, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 88, ctdogon, 2.71, 2.71 );

setEffRotateKey( spep_6-3 + 32, ctdogon, -6.6 );
setEffRotateKey( spep_6-3 + 34, ctdogon, -6.7 );
setEffRotateKey( spep_6-3 + 88, ctdogon, -6.7 );

setEffAlphaKey( spep_6-3 + 32, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 88, ctdogon, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 46, 1, 0 );

changeAnime( spep_6 + 0, 1, 102 );

setMoveKey( spep_6 + 0, 1, 197, -135.6 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 192.6, -132.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 188.3, -129.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, 184, -126.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, 179.7, -123.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, 175.4, -120.9 , 0 );
setMoveKey( spep_6-3 + 12, 1, 171.1, -118 , 0 );
setMoveKey( spep_6-3 + 14, 1, 166.8, -115 , 0 );
setMoveKey( spep_6-3 + 16, 1, 162.5, -112.1 , 0 );
setMoveKey( spep_6-3 + 18, 1, 158.1, -109.2 , 0 );
setMoveKey( spep_6-3 + 20, 1, 153.8, -106.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, 149.5, -103.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 145.2, -100.4 , 0 );
setMoveKey( spep_6-3 + 26, 1, 140.9, -97.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 136.6, -94.5 , 0 );
setMoveKey( spep_6-3 + 30, 1, 132.3, -91.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, 128, -88.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 128, -88.6 , 0 );
setMoveKey( spep_6-3 + 46, 1, 120, -80.6 , 0 );

setScaleKey( spep_6 + 0, 1, 2.66, 2.66 );
--setScaleKey( spep_6-3 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 4, 1, 2.54, 2.54 );
setScaleKey( spep_6-3 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_6-3 + 8, 1, 2.42, 2.42 );
setScaleKey( spep_6-3 + 10, 1, 2.36, 2.36 );
setScaleKey( spep_6-3 + 12, 1, 2.3, 2.3 );
setScaleKey( spep_6-3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_6-3 + 16, 1, 2.18, 2.18 );
setScaleKey( spep_6-3 + 18, 1, 2.12, 2.12 );
setScaleKey( spep_6-3 + 20, 1, 2.06, 2.06 );
setScaleKey( spep_6-3 + 22, 1, 2, 2 );
setScaleKey( spep_6-3 + 24, 1, 1.94, 1.94 );
setScaleKey( spep_6-3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_6-3 + 30, 1, 1.76, 1.76 );
setScaleKey( spep_6-3 + 32, 1, 1.7, 1.7 );
setScaleKey( spep_6-3 + 46, 1, 1.7, 1.7 );

setRotateKey( spep_6 + 0, 1, 6.6 );
--setRotateKey( spep_6-3 + 2, 1, 6.8 );
setRotateKey( spep_6-3 + 4, 1, 6.9 );
setRotateKey( spep_6-3 + 6, 1, 7 );
setRotateKey( spep_6-3 + 8, 1, 7 );
setRotateKey( spep_6-3 + 10, 1, 7.1 );
setRotateKey( spep_6-3 + 12, 1, 7.2 );
setRotateKey( spep_6-3 + 14, 1, 7.3 );
setRotateKey( spep_6-3 + 16, 1, 7.3 );
setRotateKey( spep_6-3 + 18, 1, 7.4 );
setRotateKey( spep_6-3 + 20, 1, 7.5 );
setRotateKey( spep_6-3 + 22, 1, 7.6 );
setRotateKey( spep_6-3 + 24, 1, 7.7 );
setRotateKey( spep_6-3 + 26, 1, 7.7 );
setRotateKey( spep_6-3 + 28, 1, 7.8 );
setRotateKey( spep_6-3 + 30, 1, 7.9 );
setRotateKey( spep_6-3 + 32, 1, 8 );
setRotateKey( spep_6-1 + 46, 1, 8 );

--SE
--敵ヒット
SE031 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);

--ジャンプ
SE032 = playSeVer2( spep_6 + 64, 1117, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_6 + 100, 1116, "",spep_6 + 138, 0, 16, -1);

--斬りつける
SE034 = playSeVer2( spep_6 + 124, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 124, SE034, 76 );
SE035 = playSeVer2( spep_6 + 124, 1318, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 124, 1319, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_6 + 126, 1032, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 184, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_7=spep_6+180;
------------------------------------------------------
--顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, face, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_7 + 72, face, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, face, 0 );
setEffRotateKey( spep_7 + 72, face, 0 );
setEffAlphaKey( spep_7 + 0, face, 255 );
setEffAlphaKey( spep_7 + 70, face, 255 );
setEffAlphaKey( spep_7 + 71, face, 255 );
setEffAlphaKey( spep_7 + 72, face, 0 );

--SE
--アップ
SE038 = playSeVer2( spep_6 + 172, 1072, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_6 + 172, SE038, 65 );  
setStartTimeMs( SE038,  283 );
SE039 = playSeVer2( spep_6 + 176, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 176, SE039, 46 );  

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_8=spep_7+72;
------------------------------------------------------
--切り刻み
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, cut, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, cut, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, cut, 0 );
setEffRotateKey( spep_8 + 116, cut, 0 );
setEffAlphaKey( spep_8 + 0, cut, 255 );
setEffAlphaKey( spep_8 + 114, cut, 255 );
setEffAlphaKey( spep_8 + 115, cut, 255 );
setEffAlphaKey( spep_8 + 116, cut, 0 );

--もじエントリー
ctzan = entryEffectLife( spep_8-3 + 26,  10010, 22, 0x100, -1, 0, -43.9, -173.7 );--ザンッ
setEffShake( spep_8-3 + 26, ctzan, 22, 10 );
setEffMoveKey( spep_8-3 + 26, ctzan, -43.9, -173.7 , 0 );
setEffMoveKey( spep_8-3 + 28, ctzan, -48.1, -216.4 , 0 );
setEffMoveKey( spep_8-3 + 30, ctzan, -60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 32, ctzan, -54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 34, ctzan, -60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 36, ctzan, -54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 38, ctzan, -60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 40, ctzan, -54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 42, ctzan, -60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 44, ctzan, -54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 46, ctzan, -60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 48, ctzan, -54.3, -257.5 , 0 );

setEffScaleKey( spep_8-3 + 26, ctzan, 0.93, 0.93 );
setEffScaleKey( spep_8-3 + 28, ctzan, 1.93, 1.93 );
setEffScaleKey( spep_8-3 + 30, ctzan, 2.92, 2.92 );
setEffScaleKey( spep_8-3 + 48, ctzan, 2.92, 2.92 );

setEffRotateKey( spep_8-3 + 26, ctzan, -14.8 );
setEffRotateKey( spep_8-3 + 28, ctzan, -14.9 );
setEffRotateKey( spep_8-3 + 48, ctzan, -14.9 );

setEffAlphaKey( spep_8-3 + 26, ctzan, 255 );
setEffAlphaKey( spep_8-3 + 48, ctzan, 255 );

--もじエントリー
ctzazan = entryEffectLife( spep_8-3 + 50,  10009, 22, 0x100, -1, 0, 62.2, -204 );--ザザザンッ
setEffShake( spep_8-3 + 50, ctzazan, 22, 10 );
setEffMoveKey( spep_8-3 + 50, ctzazan, 62.2, -204 , 0 );
setEffMoveKey( spep_8-3 + 52, ctzazan, 44.9, -234.2 , 0 );
setEffMoveKey( spep_8-3 + 54, ctzazan, 36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 56, ctzazan, 30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 58, ctzazan, 36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 60, ctzazan, 30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 62, ctzazan, 36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 64, ctzazan, 30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 66, ctzazan, 36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 68, ctzazan, 30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 70, ctzazan, 36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 72, ctzazan, 30.2, -264.7 , 0 );

setEffScaleKey( spep_8-3 + 50, ctzazan, 1.37, 1.37 );
setEffScaleKey( spep_8-3 + 52, ctzazan, 2.2, 2.2 );
setEffScaleKey( spep_8-3 + 54, ctzazan, 3.02, 3.02 );
setEffScaleKey( spep_8-3 + 72, ctzazan, 3.02, 3.02 );

setEffRotateKey( spep_8-3 + 50, ctzazan, -24.1 );
setEffRotateKey( spep_8-3 + 52, ctzazan, -24.2 );
setEffRotateKey( spep_8-3 + 72, ctzazan, -24.2 );

setEffAlphaKey( spep_8-3 + 50, ctzazan, 255 );
setEffAlphaKey( spep_8-3 + 72, ctzazan, 255 );

--もじエントリー
ctzan2 = entryEffectLife( spep_8-3 + 74,  10010, 22, 0x100, -1, 0, -137.2, 393.9 );--ザンッ
setEffShake( spep_8-3 + 74, ctzan2, 22, 10 );
setEffMoveKey( spep_8-3 + 74, ctzan2, -137.2, 393.9 , 0 );
setEffMoveKey( spep_8-3 + 76, ctzan2, -141.4, 402.4 , 0 );
setEffMoveKey( spep_8-3 + 78, ctzan2, -151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 80, ctzan2, -147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 82, ctzan2, -151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 84, ctzan2, -147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 86, ctzan2, -151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 88, ctzan2, -147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 90, ctzan2, -151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 92, ctzan2, -147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 94, ctzan2, -151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 96, ctzan2, -147.4, 412.5 , 0 );

setEffScaleKey( spep_8-3 + 74, ctzan2, 0.93, 0.93 );
setEffScaleKey( spep_8-3 + 76, ctzan2, 1.44, 1.44 );
setEffScaleKey( spep_8-3 + 78, ctzan2, 1.95, 1.95 );
setEffScaleKey( spep_8-3 + 96, ctzan2, 1.95, 1.95 );

setEffRotateKey( spep_8-3 + 74, ctzan2, -14.8 );
setEffRotateKey( spep_8-3 + 76, ctzan2, -14.9 );
setEffRotateKey( spep_8-3 + 96, ctzan2, -14.9 );

setEffAlphaKey( spep_8-3 + 74, ctzan2, 255 );
setEffAlphaKey( spep_8-3 + 96, ctzan2, 255 );

--もじエントリー
ctzazan2 = entryEffectLife( spep_8-3 + 98,  10009, 22-1, 0x100, -1, 0, 63, -201.8 );--ザザザンッ
setEffShake( spep_8-3 + 98, ctzazan2, 22, 10 );
setEffMoveKey( spep_8-3 + 98, ctzazan2, 63, -201.8 , 0 );
setEffMoveKey( spep_8-3 + 100, ctzazan2, 46.2, -230.9 , 0 );
setEffMoveKey( spep_8-3 + 102, ctzazan2, 38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 104, ctzazan2, 32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 106, ctzazan2, 38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 108, ctzazan2, 32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 110, ctzazan2, 38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 112, ctzazan2, 32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 114, ctzazan2, 38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 116, ctzazan2, 32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 118, ctzazan2, 38.2, -260.9 , 0 );
setEffMoveKey( spep_8-4 + 120, ctzazan2, 32, -260.2 , 0 );

setEffScaleKey( spep_8-3 + 98, ctzazan2, 1.37, 1.37 );
setEffScaleKey( spep_8-3 + 100, ctzazan2, 2.2, 2.2 );
setEffScaleKey( spep_8-3 + 102, ctzazan2, 3.02, 3.02 );
setEffScaleKey( spep_8-4 + 120, ctzazan2, 3.02, 3.02 );

setEffRotateKey( spep_8-3 + 98, ctzazan2, -24.1 );
setEffRotateKey( spep_8-3 + 100, ctzazan2, -24.2 );
setEffRotateKey( spep_8-4 + 120, ctzazan2, -24.2 );

setEffAlphaKey( spep_8-3 + 98, ctzazan2, 255 );
setEffAlphaKey( spep_8-4 + 120, ctzazan2, 255 );

--SE
--連続斬り
SE040 = playSeVer2( spep_8 + 18, 1189, "", 0, 0, 0, 0.8);
SE041 = playSeVer2( spep_8 + 24, 1032, "", 0, 0, 0, 0.8);
SE042 = playSeVer2( spep_8 + 24, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 24, SE042, 56 );
SE043 = playSeVer2( spep_8 + 30, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 30, SE043, -100 );
setTimeStretch( SE043, 0.93, 30, 4 );
SE044 = playSeVer2( spep_8 + 46, 1032, "", 0, 0, 0, 0.8);
SE045 = playSeVer2( spep_8 + 46, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 46, SE045, 63 );
SE046 = playSeVer2( spep_8 + 52, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 52, SE046, 100 );
setTimeStretch( SE046, 1.07, 30, 4 );
SE047 = playSeVer2( spep_8 + 60, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 60, SE047, 56 );
SE048 = playSeVer2( spep_8 + 72, 1032, "", 0, 0, 0, 0.8);
SE049 = playSeVer2( spep_8 + 82, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 82, SE049, -200 );
setTimeStretch( SE049, 0.87, 30, 4 );
SE050 = playSeVer2( spep_8 + 84, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 84, SE050, 52 );
setPitch( spep_8 + 84, SE050, -200 );
setTimeStretch( SE050, 0.87, 30, 4 );
SE052 = playSeVer2( spep_8 + 100, 1032, "", 0, 0, 0, 0.8);
SE053 = playSeVer2( spep_8 + 100, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 100, SE053, 56 );
SE054 = playSeVer2( spep_8 + 110, 1032, "", 0, 0, 0, 0.8);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景

--次の準備
spep_9=spep_8+116;

------------------------------------------------------
--ボウッ 前面
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 144, finish_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 144, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 144, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 144, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_9 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 144, finish_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 144, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 144, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 144, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_9 + 136, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 136, KO, 0, 0, 0 );
setEffMoveKey( spep_9 + 386, KO, 0, 0, 0 );
setEffScaleKey( spep_9 + 136, KO, 1.0, 1.0 );
setEffScaleKey( spep_9 + 386, KO, 1.0, 1.0 );
setEffRotateKey( spep_9 + 136, KO, 0 );
setEffRotateKey( spep_9 + 386, KO, 0 );
setEffAlphaKey( spep_9 + 136, KO, 255 );
setEffAlphaKey( spep_9 + 386, KO, 255 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );

setBlendColor(spep_9-3 + 48,1,3,0,0,0,1);
setBlendColor(spep_9-3 + 136,1,3,0,0,0,0);

changeAnime( spep_9 + 0, 1, 6 );
changeAnime( spep_9-3 + 48, 1, 8 );

setMoveKey( spep_9 + 0, 1, -113, -25.1 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -114.5, -24.4 , 0 );
setMoveKey( spep_9-3 + 4, 1, -115.9, -23.8 , 0 );
setMoveKey( spep_9-3 + 6, 1, -117.4, -23.1 , 0 );
setMoveKey( spep_9-3 + 8, 1, -118.8, -22.4 , 0 );
setMoveKey( spep_9-3 + 10, 1, -120.3, -21.8 , 0 );
setMoveKey( spep_9-3 + 12, 1, -121.7, -21.1 , 0 );
setMoveKey( spep_9-3 + 14, 1, -123.2, -20.4 , 0 );
setMoveKey( spep_9-3 + 16, 1, -124.7, -19.8 , 0 );
setMoveKey( spep_9-3 + 18, 1, -126.1, -19.1 , 0 );
setMoveKey( spep_9-3 + 20, 1, -127.5, -18.4 , 0 );
setMoveKey( spep_9-3 + 22, 1, -129, -17.8 , 0 );
setMoveKey( spep_9-3 + 24, 1, -130.4, -17.1 , 0 );
setMoveKey( spep_9-3 + 26, 1, -131.9, -16.4 , 0 );
setMoveKey( spep_9-3 + 28, 1, -133.3, -15.8 , 0 );
setMoveKey( spep_9-3 + 30, 1, -134.8, -15.1 , 0 );
setMoveKey( spep_9-3 + 32, 1, -136.3, -14.4 , 0 );
setMoveKey( spep_9-3 + 34, 1, -137.7, -13.8 , 0 );
setMoveKey( spep_9-3 + 36, 1, -139.2, -13.1 , 0 );
setMoveKey( spep_9-3 + 38, 1, -140.6, -12.4 , 0 );
setMoveKey( spep_9-3 + 40, 1, -142, -11.8 , 0 );
setMoveKey( spep_9-3 + 42, 1, -143.5, -11.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, -144.9, -10.4 , 0 );
setMoveKey( spep_9-3 + 47, 1, -146.4, -9.8 , 0 );
setMoveKey( spep_9-3 + 48, 1, -177.9, 9.9 , 0 );
setMoveKey( spep_9-3 + 50, 1, -151.1, -16.1 , 0 );
setMoveKey( spep_9-3 + 52, 1, -124.2, 9.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, -171.3, -28.1 , 0 );
setMoveKey( spep_9-3 + 56, 1, -202.3, 1.9 , 0 );
setMoveKey( spep_9-3 + 58, 1, -161.5, -6.1 , 0 );
setMoveKey( spep_9-3 + 60, 1, -174.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 62, 1, -177.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 64, 1, -180.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 66, 1, -183.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 68, 1, -186.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 70, 1, -189.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 72, 1, -192.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 74, 1, -196.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 76, 1, -199.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 78, 1, -202.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 80, 1, -205.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 82, 1, -208.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 84, 1, -211.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 86, 1, -214.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 88, 1, -217.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 90, 1, -220.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 92, 1, -223.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 94, 1, -226.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 96, 1, -229.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 98, 1, -233, -30.1 , 0 );
setMoveKey( spep_9-3 + 100, 1, -236, -30.1 , 0 );
setMoveKey( spep_9-3 + 102, 1, -239.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 104, 1, -242.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 106, 1, -245.3, -30.1 , 0 );
setMoveKey( spep_9-3 + 108, 1, -248.3, -30.1 , 0 );
setMoveKey( spep_9-3 + 110, 1, -251.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 112, 1, -254.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 114, 1, -257.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 116, 1, -260.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 118, 1, -263.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 120, 1, -266.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 122, 1, -269.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 124, 1, -272.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 126, 1, -276.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 128, 1, -279.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 130, 1, -282.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 132, 1, -285.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 134, 1, -288.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 136, 1, -291.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 138, 1, -294.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 140, 1, -297.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 142, 1, -300.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 144, 1, -303.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 146, 1, -306.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 148, 1, -309.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 150, 1, -313, -30.1 , 0 );
setMoveKey( spep_9-3 + 152, 1, -316, -30.1 , 0 );

setScaleKey( spep_9-3 + 0, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 50, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 52, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 56, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 60, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 62, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 66, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 70, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 72, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 74, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 76, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 78, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 80, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 82, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 90, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 92, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 96, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 100, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 104, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 106, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 108, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 110, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 112, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 114, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 118, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 122, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 124, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 130, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 132, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 134, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 138, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 140, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 142, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 144, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 146, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 148, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 150, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 152, 1, 1.41, 1.41 );

setRotateKey( spep_9 + 0, 1, 19.8 );
--setRotateKey( spep_9-3 + 2, 1, 19.7 );
setRotateKey( spep_9-3 + 4, 1, 19.5 );
setRotateKey( spep_9-3 + 6, 1, 19.2 );
setRotateKey( spep_9-3 + 8, 1, 19 );
setRotateKey( spep_9-3 + 10, 1, 18.8 );
setRotateKey( spep_9-3 + 12, 1, 18.5 );
setRotateKey( spep_9-3 + 14, 1, 18.3 );
setRotateKey( spep_9-3 + 16, 1, 18 );
setRotateKey( spep_9-3 + 18, 1, 17.8 );
setRotateKey( spep_9-3 + 20, 1, 17.6 );
setRotateKey( spep_9-3 + 22, 1, 17.3 );
setRotateKey( spep_9-3 + 24, 1, 17.1 );
setRotateKey( spep_9-3 + 26, 1, 16.9 );
setRotateKey( spep_9-3 + 28, 1, 16.6 );
setRotateKey( spep_9-3 + 30, 1, 16.4 );
setRotateKey( spep_9-3 + 32, 1, 16.1 );
setRotateKey( spep_9-3 + 34, 1, 15.9 );
setRotateKey( spep_9-3 + 36, 1, 15.7 );
setRotateKey( spep_9-3 + 38, 1, 15.4 );
setRotateKey( spep_9-3 + 40, 1, 15.2 );
setRotateKey( spep_9-3 + 42, 1, 14.9 );
setRotateKey( spep_9-3 + 44, 1, 14.7 );
setRotateKey( spep_9-3 + 47, 1, 14.5 );
setRotateKey( spep_9-3 + 48, 1, 0 );

--SE
--気弾溜め
SE051 = playSeVer2( spep_9 + 0, 1144, "",spep_9 + 54, 8, 10, -1);
setSeVolumeByWorkId( spep_9 + 0, SE051, 43 );
setStartTimeMs( SE051,  400 );
SE055 = playSeVer2( spep_9 + 2, 1262, "",spep_9 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_9 + 2, SE055, 188 );	
setPitch( spep_9 + 2, SE055, 300 );
setTimeStretch( SE055, 1.2, 30, 4 );

--気弾発射
SE056 = playSeVer2( spep_9 + 46, 1213, "",spep_9 + 238, 0, 100, -1);
setSeVolumeByWorkId( spep_9 + 46, SE056, 79 );
SE057 = playSeVer2( spep_9 + 46, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 46, SE057, 92 );

--敵散る
SE058 = playSeVer2( spep_9 + 134, 1168, "", 0, 46, 0, -1);
setSeVolumeByWorkId( spep_9 + 134, SE058, 56 );
setStartTimeMs( SE058,  517 );
setBandpassFilter  ( spep_9 + 134, SE058, 500, 24000 );
SE059 = playSeVer2( spep_9 + 148, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 148, SE059, 32 );


-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
hideKoScreen();
entryFade( spep_9 + 134, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage(spep_9+46);
endPhase( spep_9 + 138 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 76, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 74, confrontation, 255 );
setEffAlphaKey( spep_0 + 75, confrontation, 255 );
setEffAlphaKey( spep_0 + 76, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 136.4, -147.6 , 0 );
setMoveKey( spep_0 + 1, 1, 136.4, -147.6 , 0 );
setMoveKey( spep_0 + 2, 1, 151, -161 , 0 );
setMoveKey( spep_0 + 3, 1, 151, -161 , 0 );
setMoveKey( spep_0 + 4, 1, 165.5, -174.3 , 0 );
setMoveKey( spep_0 + 5, 1, 165.5, -174.3 , 0 );
setMoveKey( spep_0 + 6, 1, 180, -187.7 , 0 );
setMoveKey( spep_0 + 8, 1, 194.5, -201.1 , 0 );
setMoveKey( spep_0 + 10, 1, 209, -214.4 , 0 );
setMoveKey( spep_0 + 12, 1, 223.5, -227.8 , 0 );
setMoveKey( spep_0 + 14, 1, 238, -241.2 , 0 );
setMoveKey( spep_0 + 16, 1, 252.6, -254.5 , 0 );
setMoveKey( spep_0 + 18, 1, 267.1, -267.9 , 0 );
setMoveKey( spep_0 + 20, 1, 281.6, -281.3 , 0 );
setMoveKey( spep_0 + 22, 1, 296.1, -294.7 , 0 );
setMoveKey( spep_0 + 24, 1, 310.6, -308 , 0 );
setMoveKey( spep_0 + 26, 1, 325.1, -321.4 , 0 );
setMoveKey( spep_0 + 28, 1, 339.6, -334.8 , 0 );
setMoveKey( spep_0 + 30, 1, 354.2, -348.1 , 0 );
setMoveKey( spep_0 + 32, 1, 368.7, -361.5 , 0 );
setMoveKey( spep_0 + 34, 1, 383.2, -374.9 , 0 );
setMoveKey( spep_0 + 36, 1, 397.7, -388.2 , 0 );
setMoveKey( spep_0 + 38, 1, 412.2, -401.6 , 0 );
setMoveKey( spep_0 + 40, 1, 426.7, -415 , 0 );
setMoveKey( spep_0 + 42, 1, 441.2, -428.3 , 0 );
setMoveKey( spep_0 + 44, 1, 455.7, -441.7 , 0 );
setMoveKey( spep_0 + 46, 1, 470.3, -455.1 , 0 );
setMoveKey( spep_0 + 48, 1, 484.8, -468.4 , 0 );
setMoveKey( spep_0 + 50, 1, 499.3, -481.8 , 0 );
setMoveKey( spep_0 + 52, 1, 513.8, -495.2 , 0 );
setMoveKey( spep_0 + 54, 1, 528.3, -508.5 , 0 );
setMoveKey( spep_0 + 56, 1, 542.8, -521.9 , 0 );
setMoveKey( spep_0 + 58, 1, 557.3, -535.3 , 0 );
setMoveKey( spep_0 + 60, 1, 571.9, -548.7 , 0 );
setMoveKey( spep_0 + 62, 1, 586.4, -562 , 0 );
setMoveKey( spep_0 + 64, 1, 600.9, -575.4 , 0 );
setMoveKey( spep_0 + 66, 1, 615.4, -588.8 , 0 );
setMoveKey( spep_0 + 68, 1, 629.9, -602.1 , 0 );
setMoveKey( spep_0 + 70, 1, 644.4, -615.5 , 0 );
setMoveKey( spep_0 + 72, 1, 658.9, -628.9 , 0 );
setMoveKey( spep_0 + 74, 1, 673.4, -642.2 , 0 );
setMoveKey( spep_0 + 76, 1, 688, -655.6 , 0 );

setScaleKey( spep_0 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 1, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 3, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 4, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 5, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 6, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 8, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 10, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 12, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 14, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 16, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 18, 1, 3, 3 );
setScaleKey( spep_0 + 20, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 22, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 24, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 26, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 28, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 30, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 32, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 34, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 36, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 38, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 40, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 42, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 44, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 46, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 48, 1, 4, 4 );
setScaleKey( spep_0 + 50, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 54, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 56, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 58, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 60, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 62, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 64, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 66, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 68, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 70, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 72, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 74, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 76, 1, 4.93, 4.93 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 76, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 222, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
look = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, look, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, look, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, look, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, look, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, look, 0 );
setEffRotateKey( spep_1 + 96, look, 0 );
setEffAlphaKey( spep_1 + 0, look, 255 );
setEffAlphaKey( spep_1 + 96, look, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
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

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
--SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +88 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
--バババッ
------------------------------------------------------
-- ** エフェクト等 ** --
bababa = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bababa, 0, 0, 0 );
setEffMoveKey( spep_2 + 154, bababa, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bababa, 1.0, 1.0 );
setEffScaleKey( spep_2 + 154, bababa, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bababa, 0 );
setEffRotateKey( spep_2 + 154, bababa, 0 );
setEffAlphaKey( spep_2 + 0, bababa, 255 );
setEffAlphaKey( spep_2 + 152, bababa, 255 );
setEffAlphaKey( spep_2 + 153, bababa, 255 );
setEffAlphaKey( spep_2 + 154, bababa, 0 );

--SE
--腕前に出す
SE005 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 4, 1145, "",spep_2 + 48, 4, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE004, 32 );
setStartTimeMs( SE004,  733 );
SE006 = playSeVer2( spep_2 + 4, 1155, "", 0, 0, 0, -1);

--腕高速動かし
SE007 = playSeVer2( spep_2 + 48, 1235, "",spep_2 + 90, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 48, SE007, 45 );
setPitch( spep_2 + 48, SE007, 1200 );
setTimeStretch( SE007, 1.8, 30, 4 );
SE008 = playSeVer2( spep_2 + 58, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE008, 119 );
SE009 = playSeVer2( spep_2 + 64, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE009, 115 );
SE010 = playSeVer2( spep_2 + 68, 1235, "",spep_2 + 104, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 50 );
setPitch( spep_2 + 68, SE010, 1200 );
setTimeStretch( SE010, 1.8, 30, 4 );
SE011 = playSeVer2( spep_2 + 76, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE011, 114 );
SE012 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE012, 114 );
SE013 = playSeVer2( spep_2 + 86, 1235, "",spep_2 + 122, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 45 );
setPitch( spep_2 + 86, SE013, 1200 );
setTimeStretch( SE013, 1.8, 30, 4 );
SE014 = playSeVer2( spep_2 + 88, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE014, 155 );
SE015 = playSeVer2( spep_2 + 98, 1235, "",spep_2 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 98, SE015, 50 );
setPitch( spep_2 + 98, SE015, 1200 );
setTimeStretch( SE015, 1.8, 30, 4 );
SE016 = playSeVer2( spep_2 + 100, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 107 );
SE017 = playSeVer2( spep_2 + 110, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE017, 117 );
SE018 = playSeVer2( spep_2 + 112, 1235, "",spep_2 + 148, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 112, SE018, 40 );
setPitch( spep_2 + 112, SE018, 1200 );
setTimeStretch( SE018, 1.8, 30, 4 );
SE019 = playSeVer2( spep_2 + 118, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 124 );
SE020 = playSeVer2( spep_2 + 122, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE020, 114 );
SE021 = playSeVer2( spep_2 + 124, 1235, "",spep_2 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 124, SE021, 40 );
setPitch( spep_2 + 124, SE021, 1200 );
setTimeStretch( SE021, 1.8, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 160, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_3=spep_2+154;
------------------------------------------------------
--カッ
------------------------------------------------------
-- ** エフェクト等 ** --
ka = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ka, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, ka, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ka, -1.0, 1.0 );
setEffScaleKey( spep_3 + 82, ka, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ka, 0 );
setEffRotateKey( spep_3 + 82, ka, 0 );
setEffAlphaKey( spep_3 + 0, ka, 255 );
setEffAlphaKey( spep_3 + 82, ka, 255 );

--SE
--腕前に出す
SE022 = playSeVer2( spep_3 + 0, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE022, 74 );
SE023 = playSeVer2( spep_3 + 0, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 10, 1240, "",spep_3 + 102, 0, 26, -1);
setPitch( spep_3 + 10, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );

--白フェード
entryFade( spep_3 +74 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 82, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_4=spep_3+82;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
SE_CUTIN = playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade



-- ** 次の準備 ** --
spep_5= spep_4 + 94; 
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 76, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 74, beam, 255 );
setEffAlphaKey( spep_5 + 75, beam, 255 );
setEffAlphaKey( spep_5 + 76, beam, 0 );

--SE
--気弾溜め
SE026 = playSeVer2( spep_5 + 0, 1311, "",spep_5 + 60, 0, 8, -1);
SE027 = playSeVer2( spep_5 + 0, 1276, "",spep_5 + 60, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    
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
--文字エントリー
ctdon = entryEffectLife( spep_5-3 + 52,  10019, 24, 0x100, -1, 0, 81.8, -60.6 );--ドンッ
setEffShake( spep_5-3 + 52, ctdon, 24, 10 );
setEffMoveKey( spep_5-3 + 52, ctdon, 81.8, -60.6 , 0 );
setEffMoveKey( spep_5-3 + 54, ctdon, 70.9, -55.2 , 0 );
setEffMoveKey( spep_5-3 + 56, ctdon, 80.4, -57.9 , 0 );
setEffMoveKey( spep_5-3 + 58, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 60, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 62, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 64, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 66, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 68, ctdon, 79.7, -56.6 , 0 );
setEffMoveKey( spep_5-3 + 70, ctdon, 60.1, -48.8 , 0 );
setEffMoveKey( spep_5-3 + 72, ctdon, 78.2, -54 , 0 );
setEffMoveKey( spep_5-3 + 74, ctdon, 37.7, -35.8 , 0 );
setEffMoveKey( spep_5-3 + 76, ctdon, 26.5, -29.3 , 0 );

setEffScaleKey( spep_5-3 + 52, ctdon, 0.69, 0.69 );
setEffScaleKey( spep_5-3 + 54, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_5-3 + 56, ctdon, 1.89, 1.89 );
setEffScaleKey( spep_5-3 + 58, ctdon, 2.49, 2.49 );
setEffScaleKey( spep_5-3 + 70, ctdon, 2.49, 2.49 );
setEffScaleKey( spep_5-3 + 72, ctdon, 3.72, 3.72 );
setEffScaleKey( spep_5-3 + 74, ctdon, 4.96, 4.96 );
setEffScaleKey( spep_5-3 + 76, ctdon, 6.19, 6.19 );

setEffRotateKey( spep_5-3 + 52, ctdon, -23.3 );
setEffRotateKey( spep_5-3 + 54, ctdon, -23.5 );
setEffRotateKey( spep_5-3 + 76, ctdon, -23.5 );

setEffAlphaKey( spep_5-3 + 52, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 70, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 72, ctdon, 170 );
setEffAlphaKey( spep_5-3 + 74, ctdon, 85 );
setEffAlphaKey( spep_5-3 + 76, ctdon, 0 );

--SE
--気弾発射
SE028 = playSeVer2( spep_5 + 50, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE028, 69 );
SE029 = playSeVer2( spep_5 + 50, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE029, 114 );
SE030 = playSeVer2( spep_5 + 50, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE030, 66 );

--次の準備
spep_6=spep_5+76;
------------------------------------------------------
--迫る
------------------------------------------------------
-- ** エフェクト等 ** --
pproaching_f = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pproaching_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, pproaching_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pproaching_f,  -1.0, 1.0 );
setEffScaleKey( spep_6 + 180, pproaching_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pproaching_f, 0 );
setEffRotateKey( spep_6 + 180, pproaching_f, 0 );
setEffAlphaKey( spep_6 + 0, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 178, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 179, pproaching_f, 255 );
setEffAlphaKey( spep_6 + 180, pproaching_f, 0 );

-- ** エフェクト等 ** --
pproaching_b = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pproaching_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, pproaching_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pproaching_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 180, pproaching_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pproaching_b, 0 );
setEffRotateKey( spep_6 + 180, pproaching_b, 0 );
setEffAlphaKey( spep_6 + 0, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 178, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 179, pproaching_b, 255 );
setEffAlphaKey( spep_6 + 180, pproaching_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_6-3 + 32,  10018, 56, 0x100, -1, 0, 59.5, -147 );--ドゴォンッ
setEffShake( spep_6-3 + 32, ctdogon, 56, 10 );
setEffMoveKey( spep_6-3 + 32, ctdogon, 59.5, -147 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdogon, 59.5, -147 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdogon, 59.5, -151.8 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdogon, 59.5, -166.6 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdogon, 59.5, -192.5 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdogon, 59.5, -230.6 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdogon, 59.5, -282.1 , 0 );
setEffMoveKey( spep_6-3 + 74, ctdogon, 59.5, -348.6 , 0 );
setEffMoveKey( spep_6-3 + 76, ctdogon, 59.5, -432.4 , 0 );
setEffMoveKey( spep_6-3 + 78, ctdogon, 59.5, -536.2 , 0 );
setEffMoveKey( spep_6-3 + 80, ctdogon, 59.5, -663.6 , 0 );
setEffMoveKey( spep_6-3 + 82, ctdogon, 59.5, -820.2 , 0 );
setEffMoveKey( spep_6-3 + 84, ctdogon, 59.5, -1014.7 , 0 );
setEffMoveKey( spep_6-3 + 86, ctdogon, 59.5, -1263.7 , 0 );
setEffMoveKey( spep_6-3 + 88, ctdogon, 59.5, -1622 , 0 );

setEffScaleKey( spep_6-3 + 32, ctdogon, 0.88, 0.88 );
setEffScaleKey( spep_6-3 + 34, ctdogon, 1.58, 1.58 );
setEffScaleKey( spep_6-3 + 36, ctdogon, 2.1, 2.1 );
setEffScaleKey( spep_6-3 + 38, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 40, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 42, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 44, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 46, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 48, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 50, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 52, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 54, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 56, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 58, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 60, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 62, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 64, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 66, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 68, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 70, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 72, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 74, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 76, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 78, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 80, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 82, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 84, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_6-3 + 86, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6-3 + 88, ctdogon, 2.71, 2.71 );

setEffRotateKey( spep_6-3 + 32, ctdogon, -6.6 );
setEffRotateKey( spep_6-3 + 34, ctdogon, -6.7 );
setEffRotateKey( spep_6-3 + 88, ctdogon, -6.7 );

setEffAlphaKey( spep_6-3 + 32, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 88, ctdogon, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 46, 1, 0 );

changeAnime( spep_6 + 0, 1, 102 );

setMoveKey( spep_6 + 0, 1, 197, -135.6 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 192.6, -132.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 188.3, -129.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, 184, -126.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, 179.7, -123.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, 175.4, -120.9 , 0 );
setMoveKey( spep_6-3 + 12, 1, 171.1, -118 , 0 );
setMoveKey( spep_6-3 + 14, 1, 166.8, -115 , 0 );
setMoveKey( spep_6-3 + 16, 1, 162.5, -112.1 , 0 );
setMoveKey( spep_6-3 + 18, 1, 158.1, -109.2 , 0 );
setMoveKey( spep_6-3 + 20, 1, 153.8, -106.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, 149.5, -103.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 145.2, -100.4 , 0 );
setMoveKey( spep_6-3 + 26, 1, 140.9, -97.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 136.6, -94.5 , 0 );
setMoveKey( spep_6-3 + 30, 1, 132.3, -91.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, 128, -88.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 128, -88.6 , 0 );
setMoveKey( spep_6-3 + 46, 1, 120, -80.6 , 0 );

setScaleKey( spep_6 + 0, 1, 2.66, 2.66 );
--setScaleKey( spep_6-3 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 4, 1, 2.54, 2.54 );
setScaleKey( spep_6-3 + 6, 1, 2.48, 2.48 );
setScaleKey( spep_6-3 + 8, 1, 2.42, 2.42 );
setScaleKey( spep_6-3 + 10, 1, 2.36, 2.36 );
setScaleKey( spep_6-3 + 12, 1, 2.3, 2.3 );
setScaleKey( spep_6-3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_6-3 + 16, 1, 2.18, 2.18 );
setScaleKey( spep_6-3 + 18, 1, 2.12, 2.12 );
setScaleKey( spep_6-3 + 20, 1, 2.06, 2.06 );
setScaleKey( spep_6-3 + 22, 1, 2, 2 );
setScaleKey( spep_6-3 + 24, 1, 1.94, 1.94 );
setScaleKey( spep_6-3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_6-3 + 30, 1, 1.76, 1.76 );
setScaleKey( spep_6-3 + 32, 1, 1.7, 1.7 );
setScaleKey( spep_6-3 + 46, 1, 1.7, 1.7 );

setRotateKey( spep_6 + 0, 1, 6.6 );
--setRotateKey( spep_6-3 + 2, 1, 6.8 );
setRotateKey( spep_6-3 + 4, 1, 6.9 );
setRotateKey( spep_6-3 + 6, 1, 7 );
setRotateKey( spep_6-3 + 8, 1, 7 );
setRotateKey( spep_6-3 + 10, 1, 7.1 );
setRotateKey( spep_6-3 + 12, 1, 7.2 );
setRotateKey( spep_6-3 + 14, 1, 7.3 );
setRotateKey( spep_6-3 + 16, 1, 7.3 );
setRotateKey( spep_6-3 + 18, 1, 7.4 );
setRotateKey( spep_6-3 + 20, 1, 7.5 );
setRotateKey( spep_6-3 + 22, 1, 7.6 );
setRotateKey( spep_6-3 + 24, 1, 7.7 );
setRotateKey( spep_6-3 + 26, 1, 7.7 );
setRotateKey( spep_6-3 + 28, 1, 7.8 );
setRotateKey( spep_6-3 + 30, 1, 7.9 );
setRotateKey( spep_6-3 + 32, 1, 8 );
setRotateKey( spep_6-1 + 46, 1, 8 );

--SE
--敵ヒット
SE031 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);

--ジャンプ
SE032 = playSeVer2( spep_6 + 64, 1117, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_6 + 100, 1116, "",spep_6 + 138, 0, 16, -1);

--斬りつける
SE034 = playSeVer2( spep_6 + 124, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 124, SE034, 76 );
SE035 = playSeVer2( spep_6 + 124, 1318, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 124, 1319, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_6 + 126, 1032, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 184, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_7=spep_6+180;
------------------------------------------------------
--顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, face, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, face, -1.0, 1.0 );
setEffScaleKey( spep_7 + 72, face, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, face, 0 );
setEffRotateKey( spep_7 + 72, face, 0 );
setEffAlphaKey( spep_7 + 0, face, 255 );
setEffAlphaKey( spep_7 + 70, face, 255 );
setEffAlphaKey( spep_7 + 71, face, 255 );
setEffAlphaKey( spep_7 + 72, face, 0 );

--SE
--アップ
SE038 = playSeVer2( spep_6 + 172, 1072, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_6 + 172, SE038, 65 );  
setStartTimeMs( SE038,  283 );
SE039 = playSeVer2( spep_6 + 176, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 176, SE039, 46 );  

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --白 背景

--次の準備
spep_8=spep_7+72;
------------------------------------------------------
--切り刻み
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, cut, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, cut, -1.0, 1.0 );
setEffScaleKey( spep_8 + 116, cut, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, cut, 0 );
setEffRotateKey( spep_8 + 116, cut, 0 );
setEffAlphaKey( spep_8 + 0, cut, 255 );
setEffAlphaKey( spep_8 + 114, cut, 255 );
setEffAlphaKey( spep_8 + 115, cut, 255 );
setEffAlphaKey( spep_8 + 116, cut, 0 );

--もじエントリー
ctzan = entryEffectLife( spep_8-3 + 26,  10010, 22, 0x100, -1, 0, 43.9, -173.7 );--ザンッ
setEffShake( spep_8-3 + 26, ctzan, 22, 10 );
setEffMoveKey( spep_8-3 + 26, ctzan, 43.9, -173.7 , 0 );
setEffMoveKey( spep_8-3 + 28, ctzan, 48.1, -216.4 , 0 );
setEffMoveKey( spep_8-3 + 30, ctzan, 60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 32, ctzan, 54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 34, ctzan, 60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 36, ctzan, 54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 38, ctzan, 60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 40, ctzan, 54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 42, ctzan, 60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 44, ctzan, 54.3, -257.5 , 0 );
setEffMoveKey( spep_8-3 + 46, ctzan, 60.4, -252.7 , 0 );
setEffMoveKey( spep_8-3 + 48, ctzan, 54.3, -257.5 , 0 );

setEffScaleKey( spep_8-3 + 26, ctzan, 0.93, 0.93 );
setEffScaleKey( spep_8-3 + 28, ctzan, 1.93, 1.93 );
setEffScaleKey( spep_8-3 + 30, ctzan, 2.92, 2.92 );
setEffScaleKey( spep_8-3 + 48, ctzan, 2.92, 2.92 );

setEffRotateKey( spep_8-3 + 26, ctzan, 14.8 );
setEffRotateKey( spep_8-3 + 28, ctzan, 14.9 );
setEffRotateKey( spep_8-3 + 48, ctzan, 14.9 );

setEffAlphaKey( spep_8-3 + 26, ctzan, 255 );
setEffAlphaKey( spep_8-3 + 48, ctzan, 255 );

--もじエントリー
ctzazan = entryEffectLife( spep_8-3 + 50,  10009, 22, 0x100, -1, 0, -62.2, -204 );--ザザザンッ
setEffShake( spep_8-3 + 50, ctzazan, 22, 10 );
setEffMoveKey( spep_8-3 + 50, ctzazan, -62.2, -204 , 0 );
setEffMoveKey( spep_8-3 + 52, ctzazan, -44.9, -234.2 , 0 );
setEffMoveKey( spep_8-3 + 54, ctzazan, -36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 56, ctzazan, -30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 58, ctzazan, -36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 60, ctzazan, -30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 62, ctzazan, -36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 64, ctzazan, -30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 66, ctzazan, -36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 68, ctzazan, -30.2, -264.7 , 0 );
setEffMoveKey( spep_8-3 + 70, ctzazan, -36.4, -265.4 , 0 );
setEffMoveKey( spep_8-3 + 72, ctzazan, -30.2, -264.7 , 0 );

setEffScaleKey( spep_8-3 + 50, ctzazan, 1.37, 1.37 );
setEffScaleKey( spep_8-3 + 52, ctzazan, 2.2, 2.2 );
setEffScaleKey( spep_8-3 + 54, ctzazan, 3.02, 3.02 );
setEffScaleKey( spep_8-3 + 72, ctzazan, 3.02, 3.02 );

setEffRotateKey( spep_8-3 + 50, ctzazan, 24.1 );
setEffRotateKey( spep_8-3 + 52, ctzazan, 24.2 );
setEffRotateKey( spep_8-3 + 72, ctzazan, 24.2 );

setEffAlphaKey( spep_8-3 + 50, ctzazan, 255 );
setEffAlphaKey( spep_8-3 + 72, ctzazan, 255 );

--もじエントリー
ctzan2 = entryEffectLife( spep_8-3 + 74,  10010, 22, 0x100, -1, 0, 137.2, 393.9 );--ザンッ
setEffShake( spep_8-3 + 74, ctzan2, 22, 10 );
setEffMoveKey( spep_8-3 + 74, ctzan2, 137.2, 393.9 , 0 );
setEffMoveKey( spep_8-3 + 76, ctzan2, 141.4, 402.4 , 0 );
setEffMoveKey( spep_8-3 + 78, ctzan2, 151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 80, ctzan2, 147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 82, ctzan2, 151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 84, ctzan2, 147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 86, ctzan2, 151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 88, ctzan2, 147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 90, ctzan2, 151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 92, ctzan2, 147.4, 412.5 , 0 );
setEffMoveKey( spep_8-3 + 94, ctzan2, 151.5, 415.6 , 0 );
setEffMoveKey( spep_8-3 + 96, ctzan2, 147.4, 412.5 , 0 );

setEffScaleKey( spep_8-3 + 74, ctzan2, 0.93, 0.93 );
setEffScaleKey( spep_8-3 + 76, ctzan2, 1.44, 1.44 );
setEffScaleKey( spep_8-3 + 78, ctzan2, 1.95, 1.95 );
setEffScaleKey( spep_8-3 + 96, ctzan2, 1.95, 1.95 );

setEffRotateKey( spep_8-3 + 74, ctzan2, 14.8 );
setEffRotateKey( spep_8-3 + 76, ctzan2, 14.9 );
setEffRotateKey( spep_8-3 + 96, ctzan2, 14.9 );

setEffAlphaKey( spep_8-3 + 74, ctzan2, 255 );
setEffAlphaKey( spep_8-3 + 96, ctzan2, 255 );

--もじエントリー
ctzazan2 = entryEffectLife( spep_8-3 + 98,  10009, 22-1, 0x100, -1, 0, -63, -201.8 );--ザザザンッ
setEffShake( spep_8-3 + 98, ctzazan2, 22, 10 );
setEffMoveKey( spep_8-3 + 98, ctzazan2, -63, -201.8 , 0 );
setEffMoveKey( spep_8-3 + 100, ctzazan2, -46.2, -230.9 , 0 );
setEffMoveKey( spep_8-3 + 102, ctzazan2, -38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 104, ctzazan2, -32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 106, ctzazan2, -38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 108, ctzazan2, -32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 110, ctzazan2, -38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 112, ctzazan2, -32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 114, ctzazan2, -38.2, -260.9 , 0 );
setEffMoveKey( spep_8-3 + 116, ctzazan2, -32, -260.2 , 0 );
setEffMoveKey( spep_8-3 + 118, ctzazan2, -38.2, -260.9 , 0 );
setEffMoveKey( spep_8-4 + 120, ctzazan2, -32, -260.2 , 0 );

setEffScaleKey( spep_8-3 + 98, ctzazan2, 1.37, 1.37 );
setEffScaleKey( spep_8-3 + 100, ctzazan2, 2.2, 2.2 );
setEffScaleKey( spep_8-3 + 102, ctzazan2, 3.02, 3.02 );
setEffScaleKey( spep_8-4 + 120, ctzazan2, 3.02, 3.02 );

setEffRotateKey( spep_8-3 + 98, ctzazan2, 24.1 );
setEffRotateKey( spep_8-3 + 100, ctzazan2, 24.2 );
setEffRotateKey( spep_8-4 + 120, ctzazan2, 24.2 );

setEffAlphaKey( spep_8-3 + 98, ctzazan2, 255 );
setEffAlphaKey( spep_8-4 + 120, ctzazan2, 255 );

--SE
--連続斬り
SE040 = playSeVer2( spep_8 + 18, 1189, "", 0, 0, 0, 0.8);
SE041 = playSeVer2( spep_8 + 24, 1032, "", 0, 0, 0, 0.8);
SE042 = playSeVer2( spep_8 + 24, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 24, SE042, 56 );
SE043 = playSeVer2( spep_8 + 30, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 30, SE043, -100 );
setTimeStretch( SE043, 0.93, 30, 4 );
SE044 = playSeVer2( spep_8 + 46, 1032, "", 0, 0, 0, 0.8);
SE045 = playSeVer2( spep_8 + 46, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 46, SE045, 63 );
SE046 = playSeVer2( spep_8 + 52, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 52, SE046, 100 );
setTimeStretch( SE046, 1.07, 30, 4 );
SE047 = playSeVer2( spep_8 + 60, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 60, SE047, 56 );
SE048 = playSeVer2( spep_8 + 72, 1032, "", 0, 0, 0, 0.8);
SE049 = playSeVer2( spep_8 + 82, 1032, "", 0, 0, 0, 0.8);
setPitch( spep_8 + 82, SE049, -200 );
setTimeStretch( SE049, 0.87, 30, 4 );
SE050 = playSeVer2( spep_8 + 84, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 84, SE050, 52 );
setPitch( spep_8 + 84, SE050, -200 );
setTimeStretch( SE050, 0.87, 30, 4 );
SE052 = playSeVer2( spep_8 + 100, 1032, "", 0, 0, 0, 0.8);
SE053 = playSeVer2( spep_8 + 100, 1141, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_8 + 100, SE053, 56 );
SE054 = playSeVer2( spep_8 + 110, 1032, "", 0, 0, 0, 0.8);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景

--次の準備
spep_9=spep_8+116;

------------------------------------------------------
--ボウッ 前面
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 144, finish_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 144, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 144, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 144, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_9 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 144, finish_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 144, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 144, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 144, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_9 + 136, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 136, KO, 0, 0, 0 );
setEffMoveKey( spep_9 + 386, KO, 0, 0, 0 );
setEffScaleKey( spep_9 + 136, KO, -1.0, 1.0 );
setEffScaleKey( spep_9 + 386, KO, -1.0, 1.0 );
setEffRotateKey( spep_9 + 136, KO, 0 );
setEffRotateKey( spep_9 + 386, KO, 0 );
setEffAlphaKey( spep_9 + 136, KO, 255 );
setEffAlphaKey( spep_9 + 386, KO, 255 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );

setBlendColor(spep_9-3 + 48,1,3,0,0,0,1);
setBlendColor(spep_9-3 + 136,1,3,0,0,0,0);

changeAnime( spep_9 + 0, 1, 6 );
changeAnime( spep_9-3 + 48, 1, 8 );

setMoveKey( spep_9 + 0, 1, -113, -25.1 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -114.5, -24.4 , 0 );
setMoveKey( spep_9-3 + 4, 1, -115.9, -23.8 , 0 );
setMoveKey( spep_9-3 + 6, 1, -117.4, -23.1 , 0 );
setMoveKey( spep_9-3 + 8, 1, -118.8, -22.4 , 0 );
setMoveKey( spep_9-3 + 10, 1, -120.3, -21.8 , 0 );
setMoveKey( spep_9-3 + 12, 1, -121.7, -21.1 , 0 );
setMoveKey( spep_9-3 + 14, 1, -123.2, -20.4 , 0 );
setMoveKey( spep_9-3 + 16, 1, -124.7, -19.8 , 0 );
setMoveKey( spep_9-3 + 18, 1, -126.1, -19.1 , 0 );
setMoveKey( spep_9-3 + 20, 1, -127.5, -18.4 , 0 );
setMoveKey( spep_9-3 + 22, 1, -129, -17.8 , 0 );
setMoveKey( spep_9-3 + 24, 1, -130.4, -17.1 , 0 );
setMoveKey( spep_9-3 + 26, 1, -131.9, -16.4 , 0 );
setMoveKey( spep_9-3 + 28, 1, -133.3, -15.8 , 0 );
setMoveKey( spep_9-3 + 30, 1, -134.8, -15.1 , 0 );
setMoveKey( spep_9-3 + 32, 1, -136.3, -14.4 , 0 );
setMoveKey( spep_9-3 + 34, 1, -137.7, -13.8 , 0 );
setMoveKey( spep_9-3 + 36, 1, -139.2, -13.1 , 0 );
setMoveKey( spep_9-3 + 38, 1, -140.6, -12.4 , 0 );
setMoveKey( spep_9-3 + 40, 1, -142, -11.8 , 0 );
setMoveKey( spep_9-3 + 42, 1, -143.5, -11.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, -144.9, -10.4 , 0 );
setMoveKey( spep_9-3 + 47, 1, -146.4, -9.8 , 0 );
setMoveKey( spep_9-3 + 48, 1, -177.9, 9.9 , 0 );
setMoveKey( spep_9-3 + 50, 1, -151.1, -16.1 , 0 );
setMoveKey( spep_9-3 + 52, 1, -124.2, 9.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, -171.3, -28.1 , 0 );
setMoveKey( spep_9-3 + 56, 1, -202.3, 1.9 , 0 );
setMoveKey( spep_9-3 + 58, 1, -161.5, -6.1 , 0 );
setMoveKey( spep_9-3 + 60, 1, -174.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 62, 1, -177.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 64, 1, -180.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 66, 1, -183.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 68, 1, -186.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 70, 1, -189.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 72, 1, -192.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 74, 1, -196.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 76, 1, -199.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 78, 1, -202.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 80, 1, -205.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 82, 1, -208.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 84, 1, -211.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 86, 1, -214.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 88, 1, -217.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 90, 1, -220.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 92, 1, -223.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 94, 1, -226.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 96, 1, -229.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 98, 1, -233, -30.1 , 0 );
setMoveKey( spep_9-3 + 100, 1, -236, -30.1 , 0 );
setMoveKey( spep_9-3 + 102, 1, -239.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 104, 1, -242.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 106, 1, -245.3, -30.1 , 0 );
setMoveKey( spep_9-3 + 108, 1, -248.3, -30.1 , 0 );
setMoveKey( spep_9-3 + 110, 1, -251.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 112, 1, -254.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 114, 1, -257.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 116, 1, -260.6, -30.1 , 0 );
setMoveKey( spep_9-3 + 118, 1, -263.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 120, 1, -266.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 122, 1, -269.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 124, 1, -272.9, -30.1 , 0 );
setMoveKey( spep_9-3 + 126, 1, -276.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 128, 1, -279.1, -30.1 , 0 );
setMoveKey( spep_9-3 + 130, 1, -282.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 132, 1, -285.2, -30.1 , 0 );
setMoveKey( spep_9-3 + 134, 1, -288.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 136, 1, -291.4, -30.1 , 0 );
setMoveKey( spep_9-3 + 138, 1, -294.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 140, 1, -297.5, -30.1 , 0 );
setMoveKey( spep_9-3 + 142, 1, -300.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 144, 1, -303.7, -30.1 , 0 );
setMoveKey( spep_9-3 + 146, 1, -306.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 148, 1, -309.8, -30.1 , 0 );
setMoveKey( spep_9-3 + 150, 1, -313, -30.1 , 0 );
setMoveKey( spep_9-3 + 152, 1, -316, -30.1 , 0 );

setScaleKey( spep_9-3 + 0, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 50, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 52, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 56, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 60, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 62, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 66, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 70, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 72, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 74, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 76, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 78, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 80, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 82, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 90, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 92, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 96, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 100, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 104, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 106, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 108, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 110, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 112, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 114, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 118, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 122, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 124, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 130, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 132, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 134, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 138, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 140, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 142, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 144, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 146, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 148, 1, 1.41, 1.41 );
setScaleKey( spep_9-3 + 150, 1, 1.34, 1.34 );
setScaleKey( spep_9-3 + 152, 1, 1.41, 1.41 );

setRotateKey( spep_9 + 0, 1, 19.8 );
--setRotateKey( spep_9-3 + 2, 1, 19.7 );
setRotateKey( spep_9-3 + 4, 1, 19.5 );
setRotateKey( spep_9-3 + 6, 1, 19.2 );
setRotateKey( spep_9-3 + 8, 1, 19 );
setRotateKey( spep_9-3 + 10, 1, 18.8 );
setRotateKey( spep_9-3 + 12, 1, 18.5 );
setRotateKey( spep_9-3 + 14, 1, 18.3 );
setRotateKey( spep_9-3 + 16, 1, 18 );
setRotateKey( spep_9-3 + 18, 1, 17.8 );
setRotateKey( spep_9-3 + 20, 1, 17.6 );
setRotateKey( spep_9-3 + 22, 1, 17.3 );
setRotateKey( spep_9-3 + 24, 1, 17.1 );
setRotateKey( spep_9-3 + 26, 1, 16.9 );
setRotateKey( spep_9-3 + 28, 1, 16.6 );
setRotateKey( spep_9-3 + 30, 1, 16.4 );
setRotateKey( spep_9-3 + 32, 1, 16.1 );
setRotateKey( spep_9-3 + 34, 1, 15.9 );
setRotateKey( spep_9-3 + 36, 1, 15.7 );
setRotateKey( spep_9-3 + 38, 1, 15.4 );
setRotateKey( spep_9-3 + 40, 1, 15.2 );
setRotateKey( spep_9-3 + 42, 1, 14.9 );
setRotateKey( spep_9-3 + 44, 1, 14.7 );
setRotateKey( spep_9-3 + 47, 1, 14.5 );
setRotateKey( spep_9-3 + 48, 1, 0 );

--SE
--気弾溜め
SE051 = playSeVer2( spep_9 + 0, 1144, "",spep_9 + 54, 8, 10, -1);
setSeVolumeByWorkId( spep_9 + 0, SE051, 43 );
setStartTimeMs( SE051,  400 );
SE055 = playSeVer2( spep_9 + 2, 1262, "",spep_9 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_9 + 2, SE055, 188 );	
setPitch( spep_9 + 2, SE055, 300 );
setTimeStretch( SE055, 1.2, 30, 4 );

--気弾発射
SE056 = playSeVer2( spep_9 + 46, 1213, "",spep_9 + 238, 0, 100, -1);
setSeVolumeByWorkId( spep_9 + 46, SE056, 79 );
SE057 = playSeVer2( spep_9 + 46, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 46, SE057, 92 );

--敵散る
SE058 = playSeVer2( spep_9 + 134, 1168, "", 0, 46, 0, -1);
setSeVolumeByWorkId( spep_9 + 134, SE058, 56 );
setStartTimeMs( SE058,  517 );
setBandpassFilter  ( spep_9 + 134, SE058, 500, 24000 );
SE059 = playSeVer2( spep_9 + 148, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 148, SE059, 32 );


-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
hideKoScreen();
entryFade( spep_9 + 134, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage(spep_9+46);
endPhase( spep_9 + 138 );
end