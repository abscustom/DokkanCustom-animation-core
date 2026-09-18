--1023150:ハッチャン(暴走)_モンスタークラッシュ
--sp_effect_b4_00202

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
SP_01=	158521	;--	セリフカットイン、画面手前に迫る
SP_02=	158522	;--	遠くの敵に駆け寄る→ジェット噴射
SP_03=	158523	;--	遠くの敵に駆け寄る→ジェット噴射(影、背景)
SP_04=	158525	;--	手前に迫るはっちゃん（文字、手前エフェクト）
SP_05=	158526	;--	手前に迫るはっちゃん（エフェクト、キャラ、背景）
SP_06=	158527	;--	敵を蹴る（エフェクト、キャラ）
SP_07=	158529	;--	敵を蹴る(影、背景)
SP_08=	158531	;--	ダメージ表示時背景着弾～フィニッシュ

--エフェクト(てき)
SP_01x=	158521	;--	セリフカットイン、画面手前に迫る		
SP_02x=	158522	;--	遠くの敵に駆け寄る→ジェット噴射		
SP_03x=	158524	;--	遠くの敵に駆け寄る→ジェット噴射(影、背景)		(敵)
SP_04x=	158525	;--	手前に迫るはっちゃん（文字、手前エフェクト）		
SP_05x=	158526	;--	手前に迫るはっちゃん（エフェクト、キャラ、背景）		
SP_06x=	158528	;--	敵を蹴る（エフェクト、キャラ）	(敵)	
SP_07x=	158530	;--	敵を蹴る(影、背景)	(敵)	
SP_08x=	158531	;--	ダメージ表示時背景		

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
--セリフカットイン、画面手前に迫る
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, fast, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, fast, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast, 0 );
setEffRotateKey( spep_0 + 120, fast, 0 );
setEffAlphaKey( spep_0 + 0, fast, 255 );
setEffAlphaKey( spep_0 + 120, fast, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

--SE
--電気走る
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 126, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE002 = playSeVer2( spep_0 + 0, 1243, "",spep_0 + 126, 0, 8, -1);

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  

--次の準備
spep_1=spep_0+120;
------------------------------------------------------
--遠くの敵に駆け寄る→ジェット噴射
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 140, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 140, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 140, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 140, dash_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 134, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 19.7, 492.6 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 19.4, 491.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 19.1, 489.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 18.7, 488.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 18.4, 487.2 , 0 );
setMoveKey( spep_1-3 + 10, 1, 18.1, 485.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, 17.8, 484.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 17.4, 483.5 , 0 );
setMoveKey( spep_1-3 + 16, 1, 17.1, 482.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, 16.8, 481.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 17, 473.7 , 0 );
setMoveKey( spep_1-3 + 22, 1, 17.2, 466.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 17.4, 458.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 17.6, 451.2 , 0 );
setMoveKey( spep_1-3 + 28, 1, 17.9, 443.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 18.1, 436.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 18.3, 429.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 18.5, 421.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, 18.7, 414.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 18.9, 407.4 , 0 );
setMoveKey( spep_1-3 + 40, 1, 19.1, 400.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, 19.3, 393.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 19.5, 386 , 0 );
setMoveKey( spep_1-3 + 46, 1, 19.7, 379 , 0 );
setMoveKey( spep_1-3 + 48, 1, 19.9, 372 , 0 );
setMoveKey( spep_1-3 + 50, 1, 19.8, 367 , 0 );
setMoveKey( spep_1-3 + 52, 1, 19.8, 362.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 19.7, 357.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 19.6, 352.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 19.6, 347.8 , 0 );
setMoveKey( spep_1-3 + 60, 1, 19.5, 343.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, 19.4, 338.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 19.3, 334.1 , 0 );
setMoveKey( spep_1-3 + 66, 1, 19.2, 329.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 19.1, 325.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 19, 321.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 18.9, 317 , 0 );
setMoveKey( spep_1-3 + 74, 1, 18.8, 312.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, 18.7, 308.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 18.6, 305 , 0 );
setMoveKey( spep_1-3 + 80, 1, 18.5, 301.1 , 0 );
setMoveKey( spep_1-3 + 82, 1, 18.4, 297.3 , 0 );
setMoveKey( spep_1-3 + 84, 1, 18.3, 293.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, 18.1, 289.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 18, 286.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 18.1, 284.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 18.2, 282.3 , 0 );
setMoveKey( spep_1-3 + 94, 1, 18.3, 280.3 , 0 );
setMoveKey( spep_1-3 + 96, 1, 18.3, 278.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, 18.3, 277.1 , 0 );
setMoveKey( spep_1-3 + 100, 1, 18.3, 275.6 , 0 );
setMoveKey( spep_1-3 + 102, 1, 21.6, 281.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 18.2, 273.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 18.6, 272 , 0 );
setMoveKey( spep_1-3 + 108, 1, 18.9, 270.6 , 0 );
setMoveKey( spep_1-3 + 110, 1, 19.2, 269.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 19.5, 267.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 19.8, 266.3 , 0 );
setMoveKey( spep_1-3 + 116, 1, 19.8, 265.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 19.7, 264.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 19.7, 264.8 , 0 );
setMoveKey( spep_1-3 + 122, 1, 19.6, 265.1 , 0 );
setMoveKey( spep_1-3 + 124, 1, 19.6, 265.3 , 0 );
setMoveKey( spep_1-3 + 126, 1, 19.6, 265.4 , 0 );
setMoveKey( spep_1-3 + 128, 1, 19.6, 265.5 , 0 );
setMoveKey( spep_1+ 134, 1, 19.6, 265.5 , 0 );

setScaleKey( spep_1 + 0, 1, 0.67, 0.67 );
--setScaleKey( spep_1-3 + 2, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 12, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 18, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 26, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_1-3 + 30, 1, 0.61, 0.61 );
setScaleKey( spep_1-3 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 38, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 50, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 52, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 54, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 58, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 60, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 62, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 64, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_1-3 + 68, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 70, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 72, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 78, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 80, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 82, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 84, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 100, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 101, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 102, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 103, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 104, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 106, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 114, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 116, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 118, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 120, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 122, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 124, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 128, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 134, 1, 0.35, 0.35 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 134, 1, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1 + 0,  10014, 96-3, 0x100, -1, 0, -192.9, -142.5 );--ズドドドッ
setEffShake( spep_1 + 0, ctzudodo, 96-3, 20 );
setEffMoveKey( spep_1 + 0, ctzudodo, -192.9, -142.5 , 0 );
setEffMoveKey( spep_1-3 + 2, ctzudodo, -179.7, -90.3 , 0 );
setEffMoveKey( spep_1-3 + 4, ctzudodo, -163.7, -43.6 , 0 );
setEffMoveKey( spep_1-3 + 6, ctzudodo, -151.4, 8.4 , 0 );
setEffMoveKey( spep_1-3 + 8, ctzudodo, -149.7, 6.4 , 0 );
setEffMoveKey( spep_1-3 + 10, ctzudodo, -152.7, 12.2 , 0 );
setEffMoveKey( spep_1-3 + 12, ctzudodo, -151, 10.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzudodo, -154, 16.1 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzudodo, -152.3, 14.2 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzudodo, -155.3, 20 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzudodo, -153.6, 18.1 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzudodo, -156.5, 23.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzudodo, -154.9, 21.9 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzudodo, -157.8, 27.8 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzudodo, -156.2, 25.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzudodo, -159.1, 31.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzudodo, -157.5, 29.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzudodo, -160.4, 35.6 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzudodo, -158.8, 33.6 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzudodo, -161.7, 39.5 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzudodo, -160.1, 37.5 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzudodo, -163, 43.4 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzudodo, -161.4, 41.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzudodo, -164.3, 47.3 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzudodo, -162.7, 45.3 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzudodo, -165.6, 51.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzudodo, -164, 49.2 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzudodo, -166.9, 55 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzudodo, -165.2, 53.1 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzudodo, -168.2, 58.9 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzudodo, -166.5, 57 , 0 );
setEffMoveKey( spep_1-3 + 62, ctzudodo, -169.5, 62.8 , 0 );
setEffMoveKey( spep_1-3 + 64, ctzudodo, -167.8, 60.8 , 0 );
setEffMoveKey( spep_1-3 + 66, ctzudodo, -170.8, 66.7 , 0 );
setEffMoveKey( spep_1-3 + 68, ctzudodo, -169.1, 64.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctzudodo, -172.1, 70.6 , 0 );
setEffMoveKey( spep_1-3 + 72, ctzudodo, -170.4, 68.6 , 0 );
setEffMoveKey( spep_1-3 + 74, ctzudodo, -173.4, 74.5 , 0 );
setEffMoveKey( spep_1-3 + 76, ctzudodo, -171.7, 72.5 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzudodo, -174.7, 78.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzudodo, -173, 76.4 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzudodo, -176, 82.3 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzudodo, -174.3, 80.3 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzudodo, -177.3, 86.2 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzudodo, -177.9, 88.1 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzudodo, -174.8, 137.3 , 0 );
setEffMoveKey( spep_1-3 + 92, ctzudodo, -176.1, 193.8 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzudodo, -173.3, 243.1 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzudodo, -172.5, 295.7 , 0 );

setEffScaleKey( spep_1 + 0, ctzudodo, 0.88,0.88);
setEffScaleKey( spep_1 + 2, ctzudodo, 1.36,1.36);
setEffScaleKey( spep_1 + 4, ctzudodo, 1.8,1.8);
setEffScaleKey( spep_1 + 6, ctzudodo, 2.27,2.27);
setEffScaleKey( spep_1-3 + 88, ctzudodo, 2.27,2.27);
setEffScaleKey( spep_1-3 + 90, ctzudodo, 2.17,2.17);
setEffScaleKey( spep_1-3 + 92, ctzudodo, 2.04,2.04);
setEffScaleKey( spep_1-3 + 94, ctzudodo, 1.93,1.93);
setEffScaleKey( spep_1-3 + 96, ctzudodo, 1.83,1.83);

setEffRotateKey( spep_1 + 0, ctzudodo, 5.5 );
setEffRotateKey( spep_1-3 + 96, ctzudodo, 5.5 );

setEffAlphaKey( spep_1 + 0, ctzudodo, 51 );
setEffAlphaKey( spep_1 + 2, ctzudodo, 119 );
setEffAlphaKey( spep_1 + 4, ctzudodo, 187 );
setEffAlphaKey( spep_1 + 6, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 88, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 90, ctzudodo, 191 );
setEffAlphaKey( spep_1-3 + 92, ctzudodo, 128 );
setEffAlphaKey( spep_1-3 + 94, ctzudodo, 64 );
setEffAlphaKey( spep_1-3 + 96, ctzudodo, 0 );

--SE
--走る
SE005 = playSeVer2( spep_1 + 0, 1111, "",spep_1 + 18, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 195 );
SE006 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 24, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 60 );

--電気走る
SE007 = playSeVer2( spep_1 + 0, 1243, "",spep_1 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 57 );

--走る
SE008 = playSeVer2( spep_1 + 18, 1111, "",spep_1 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 18, SE008, 197 );
SE009 = playSeVer2( spep_1 + 18, 1182, "",spep_1 + 40, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 18, SE009, 58 );
SE010 = playSeVer2( spep_1 + 34, 1111, "",spep_1 + 52, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 34, SE010, 186 );
SE011 = playSeVer2( spep_1 + 34, 1182, "",spep_1 + 56, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 34, SE011, 52 );
SE012 = playSeVer2( spep_1 + 52, 1111, "",spep_1 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 52, SE012, 186 );
SE013 = playSeVer2( spep_1 + 52, 1182, "",spep_1 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 52, SE013, 61 );
SE014 = playSeVer2( spep_1 + 68, 1111, "",spep_1 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 68, SE014, 170 );
SE015 = playSeVer2( spep_1 + 68, 1182, "",spep_1 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 68, SE015, 56 );

--飛ぶ
SE016 = playSeVer2( spep_1 + 80, 1024, "",spep_1 + 138, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 71 );
SE017 = playSeVer2( spep_1 + 100, 9, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 100, 1314, "",spep_1 + 200, 0, 12, -1);

--白フェード
entryFade( spep_1 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 255 );  

--次の準備
spep_2=spep_1+140;
------------------------------------------------------
--手前に迫るはっちゃん（文字、手前エフェクト）
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching_f, 0 );
setEffRotateKey( spep_2 + 60, approaching_f, 0 );
setEffAlphaKey( spep_2 + 0, approaching_f, 255 );
setEffAlphaKey( spep_2 + 60, approaching_f, 255 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching_b, 0 );
setEffRotateKey( spep_2 + 60, approaching_b, 0 );
setEffAlphaKey( spep_2 + 0, approaching_b, 255 );
setEffAlphaKey( spep_2 + 60, approaching_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
   
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

--敵の動き
setDisp( spep_2-3 + 26, 1, 1 );
setDisp( spep_2-3 + 50, 1, 0 );

changeAnime( spep_2-3 + 26, 1, 102 );
changeAnime( spep_2-3 + 38, 1, 107 );

setMoveKey( spep_2-3 + 26, 1, 305.8, -421.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 242.3, -380.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 178.8, -339.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 115.3, -299.2 , 0 );
setMoveKey( spep_2-3 + 34, 1, 51.8, -258.6 , 0 );
setMoveKey( spep_2-3 + 37, 1, 51.8, -258.6 , 0 );

setMoveKey( spep_2-3 + 38, 1, 41, -29 , 0 );
setMoveKey( spep_2-3 + 40, 1, 702.1, -449.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1145.3, -730.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, 1414.1, -901.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, 1552.1, -989.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 1603, -1021.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 1610.3, -1026.1 , 0 );

setScaleKey( spep_2-3 + 26, 1, 5, 5 );
setScaleKey( spep_2-3 + 28, 1, 4.75, 4.75 );
setScaleKey( spep_2-3 + 30, 1, 4.5, 4.5 );
setScaleKey( spep_2-3 + 32, 1, 4.25, 4.25 );
setScaleKey( spep_2-3 + 34, 1, 4, 4 );
setScaleKey( spep_2-3 + 37, 1, 4, 4 );

setScaleKey( spep_2-3 + 38, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 40, 1, 3.27, 3.27 );
setScaleKey( spep_2-3 + 42, 1, 4.29, 4.29 );
setScaleKey( spep_2-3 + 44, 1, 4.91, 4.91 );
setScaleKey( spep_2-3 + 46, 1, 5.23, 5.23 );
setScaleKey( spep_2-3 + 48, 1, 5.34, 5.34 );
setScaleKey( spep_2-3 + 50, 1, 5.36, 5.36 );

setRotateKey( spep_2-3 + 26, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

--SE
--頭突き
SE019 = playSeVer2( spep_2 + 24, 19, "",spep_2 + 70, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 69 );
SE020 = playSeVer2( spep_2 + 24, 1060, "",spep_2 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 24, SE020, 76 );
SE021 = playSeVer2( spep_2 + 24, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 26, 1109, "",spep_2 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 26, SE022, 68 );

--白フェード
entryFade( spep_2 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94; 
------------------------------------------------------
--敵を蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 70, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 70, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 70, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 70, kick_b, 255 );

--敵の動き
ctbaki = entryEffectLife( spep_4-3 + 24,  10020, 34, 0x100, -1, 0, 32.5, 143.6 );--バキッ

setEffMoveKey( spep_4-3 + 24, ctbaki, 32.5, 143.6 , 0 );
setEffMoveKey( spep_4-3 + 26, ctbaki, 98.7, 246.2 , 0 );
setEffMoveKey( spep_4-3 + 28, ctbaki, 84.2, 252.2 , 0 );
setEffMoveKey( spep_4-3 + 30, ctbaki, 91.9, 261.7 , 0 );
setEffMoveKey( spep_4-3 + 32, ctbaki, 86.9, 251.5 , 0 );
setEffMoveKey( spep_4-3 + 34, ctbaki, 85.3, 270.5 , 0 );
setEffMoveKey( spep_4-3 + 36, ctbaki, 86.7, 262.1 , 0 );
setEffMoveKey( spep_4-3 + 38, ctbaki, 79, 271.5 , 0 );
setEffMoveKey( spep_4-3 + 40, ctbaki, 80.8, 267.3 , 0 );
setEffMoveKey( spep_4-3 + 42, ctbaki, 82.2, 278.2 , 0 );
setEffMoveKey( spep_4-3 + 44, ctbaki, 77.3, 273.2 , 0 );
setEffMoveKey( spep_4-3 + 46, ctbaki, 74.9, 286.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctbaki, 74.1, 282.4 , 0 );
setEffMoveKey( spep_4-3 + 50, ctbaki, 70.9, 291.4 , 0 );
setEffMoveKey( spep_4-3 + 52, ctbaki, 73, 282.8 , 0 );
setEffMoveKey( spep_4-3 + 54, ctbaki, 66.7, 320.3 , 0 );
setEffMoveKey( spep_4-3 + 56, ctbaki, 64.6, 324.4 , 0 );
setEffMoveKey( spep_4-3 + 58, ctbaki, 155.7, 147.5 , 0 );

setEffScaleKey( spep_4-3 + 24, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4-3 + 26, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 28, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 30, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 32, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 34, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4-3 + 36, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_4-3 + 38, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 40, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_4-3 + 42, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_4-3 + 44, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_4-3 + 46, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_4-3 + 48, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_4-3 + 50, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_4-3 + 52, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_4-3 + 54, ctbaki, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 56, ctbaki, 3.29, 3.29 );
setEffScaleKey( spep_4-3 + 58, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_4-3 + 24, ctbaki, 16 );
setEffRotateKey( spep_4-3 + 58, ctbaki, 16 );

setEffAlphaKey( spep_4-3 + 24, ctbaki, 26 );
setEffAlphaKey( spep_4-3 + 26, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 54, ctbaki, 169 );
setEffAlphaKey( spep_4-3 + 56, ctbaki, 84 );
setEffAlphaKey( spep_4-3 + 58, ctbaki, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 20, 1, 108 );

setMoveKey( spep_4 + 0, 1, -8.3, -131.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 17.6, -152.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 25, -159.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 29.2, -163.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 31.5, -165.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 32.8, -166.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 33.1, -167 , 0 );
setMoveKey( spep_4-3 + 14, 1, 41.4, -180.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 43.1, -183.3 , 0 );
setMoveKey( spep_4-3 + 19, 1, 43.5, -184 , 0 );
setMoveKey( spep_4-3 + 20, 1, 195.5, -73.9 , 0 );
setMoveKey( spep_4-3 + 22, 1, 176, -104.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 168.6, -77.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 187.6, -113.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, 179.9, -67.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 171.8, -115.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 187.7, -71.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, 176.8, -109.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 159.3, -71.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 157, -107.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 154.7, -80.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 152.2, -101.4 , 0 );
setMoveKey( spep_4-3 + 44, 1, 175.9, -76 , 0 );
setMoveKey( spep_4-3 + 46, 1, 212.2, -81.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 261.3, -67.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 321.4, -55.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 387.3, -41.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, 451.3, -28.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 505.3, -15.4 , 0 );
setMoveKey( spep_4-3 + 58, 1, 575.5, -4.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 632.1, 4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 675.3, 10.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, 705.9, 15.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 725.4, 18 , 0 );
setMoveKey( spep_4-3 + 68, 1, 580.8, -4.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 19, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 20, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 30, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 34, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 36, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 68, 1, 1.84, 1.84 );

setRotateKey( spep_4 + 0, 1, -43.8 );
setRotateKey( spep_4-3 + 2, 1, -36.1 );
setRotateKey( spep_4-3 + 4, 1, -33.8 );
setRotateKey( spep_4-3 + 6, 1, -32.6 );
setRotateKey( spep_4-3 + 8, 1, -31.9 );
setRotateKey( spep_4-3 + 10, 1, -31.5 );
setRotateKey( spep_4-3 + 12, 1, -31.4 );
setRotateKey( spep_4-3 + 19, 1, -31.4 );
setRotateKey( spep_4-3 + 20, 1, -13.6 );
setRotateKey( spep_4-3 + 30, 1, -13.6 );
setRotateKey( spep_4-3 + 32, 1, -13.7 );
setRotateKey( spep_4-3 + 34, 1, -13.7 );
setRotateKey( spep_4-3 + 36, 1, -13.8 );
setRotateKey( spep_4-3 + 38, 1, -13.9 );
setRotateKey( spep_4-3 + 40, 1, -14.1 );
setRotateKey( spep_4-3 + 42, 1, -14.3 );
setRotateKey( spep_4-3 + 44, 1, -15 );
setRotateKey( spep_4-3 + 46, 1, -16.1 );
setRotateKey( spep_4-3 + 48, 1, -17.6 );
setRotateKey( spep_4-3 + 50, 1, -19.3 );
setRotateKey( spep_4-3 + 52, 1, -21.2 );
setRotateKey( spep_4-3 + 54, 1, -23.2 );
setRotateKey( spep_4-3 + 56, 1, -25 );
setRotateKey( spep_4-3 + 58, 1, -26.5 );
setRotateKey( spep_4-3 + 60, 1, -27.8 );
setRotateKey( spep_4-3 + 62, 1, -28.7 );
setRotateKey( spep_4-3 + 64, 1, -29.4 );
setRotateKey( spep_4-3 + 66, 1, -29.8 );
setRotateKey( spep_4-3 + 68, 1, -26.5 );

--SE
--キック
SE024 = playSeVer2( spep_4 -4 + 0, 8, "",spep_4 + 42, 0, 18, -1);
SE025 = playSeVer2( spep_4 -4 + 8, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE026, 89 );
SE027 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 70; 
------------------------------------------------------
--ガッ  
------------------------------------------------------
-- ** エフェクト等 ** --
ga = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, ga, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, ga, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga, 0 );
setEffRotateKey( spep_5 + 120, ga, 0 );
setEffAlphaKey( spep_5 + 0, ga, 255 );
setEffAlphaKey( spep_5 + 120, ga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 14, 1054 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン、画面手前に迫る
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, fast, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, fast, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast, 0 );
setEffRotateKey( spep_0 + 120, fast, 0 );
setEffAlphaKey( spep_0 + 0, fast, 255 );
setEffAlphaKey( spep_0 + 120, fast, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--電気走る
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 126, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE002 = playSeVer2( spep_0 + 0, 1243, "",spep_0 + 126, 0, 8, -1);

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  

--次の準備
spep_1=spep_0+120;
------------------------------------------------------
--遠くの敵に駆け寄る→ジェット噴射
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 140, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 140, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 140, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 140, dash_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 134, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 19.7, 492.6 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 19.4, 491.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 19.1, 489.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 18.7, 488.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 18.4, 487.2 , 0 );
setMoveKey( spep_1-3 + 10, 1, 18.1, 485.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, 17.8, 484.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 17.4, 483.5 , 0 );
setMoveKey( spep_1-3 + 16, 1, 17.1, 482.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, 16.8, 481.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 17, 473.7 , 0 );
setMoveKey( spep_1-3 + 22, 1, 17.2, 466.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 17.4, 458.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 17.6, 451.2 , 0 );
setMoveKey( spep_1-3 + 28, 1, 17.9, 443.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 18.1, 436.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 18.3, 429.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 18.5, 421.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, 18.7, 414.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 18.9, 407.4 , 0 );
setMoveKey( spep_1-3 + 40, 1, 19.1, 400.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, 19.3, 393.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 19.5, 386 , 0 );
setMoveKey( spep_1-3 + 46, 1, 19.7, 379 , 0 );
setMoveKey( spep_1-3 + 48, 1, 19.9, 372 , 0 );
setMoveKey( spep_1-3 + 50, 1, 19.8, 367 , 0 );
setMoveKey( spep_1-3 + 52, 1, 19.8, 362.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 19.7, 357.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 19.6, 352.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 19.6, 347.8 , 0 );
setMoveKey( spep_1-3 + 60, 1, 19.5, 343.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, 19.4, 338.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 19.3, 334.1 , 0 );
setMoveKey( spep_1-3 + 66, 1, 19.2, 329.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 19.1, 325.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 19, 321.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 18.9, 317 , 0 );
setMoveKey( spep_1-3 + 74, 1, 18.8, 312.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, 18.7, 308.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 18.6, 305 , 0 );
setMoveKey( spep_1-3 + 80, 1, 18.5, 301.1 , 0 );
setMoveKey( spep_1-3 + 82, 1, 18.4, 297.3 , 0 );
setMoveKey( spep_1-3 + 84, 1, 18.3, 293.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, 18.1, 289.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 18, 286.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 18.1, 284.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 18.2, 282.3 , 0 );
setMoveKey( spep_1-3 + 94, 1, 18.3, 280.3 , 0 );
setMoveKey( spep_1-3 + 96, 1, 18.3, 278.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, 18.3, 277.1 , 0 );
setMoveKey( spep_1-3 + 100, 1, 18.3, 275.6 , 0 );
setMoveKey( spep_1-3 + 102, 1, 21.6, 281.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 18.2, 273.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 18.6, 272 , 0 );
setMoveKey( spep_1-3 + 108, 1, 18.9, 270.6 , 0 );
setMoveKey( spep_1-3 + 110, 1, 19.2, 269.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 19.5, 267.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 19.8, 266.3 , 0 );
setMoveKey( spep_1-3 + 116, 1, 19.8, 265.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 19.7, 264.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 19.7, 264.8 , 0 );
setMoveKey( spep_1-3 + 122, 1, 19.6, 265.1 , 0 );
setMoveKey( spep_1-3 + 124, 1, 19.6, 265.3 , 0 );
setMoveKey( spep_1-3 + 126, 1, 19.6, 265.4 , 0 );
setMoveKey( spep_1-3 + 128, 1, 19.6, 265.5 , 0 );
setMoveKey( spep_1+ 134, 1, 19.6, 265.5 , 0 );

setScaleKey( spep_1 + 0, 1, 0.67, 0.67 );
--setScaleKey( spep_1-3 + 2, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 12, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 18, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 26, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_1-3 + 30, 1, 0.61, 0.61 );
setScaleKey( spep_1-3 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 38, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 50, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 52, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 54, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 58, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 60, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 62, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 64, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_1-3 + 68, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 70, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 72, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 78, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 80, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 82, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 84, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 86, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 100, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 101, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 102, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 103, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 104, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 106, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 114, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 116, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 118, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 120, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 122, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 124, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 128, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 134, 1, 0.35, 0.35 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 134, 1, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1 + 0,  10014, 96-3, 0x100, -1, 0, 192.9, -142.5 );--ズドドドッ
setEffShake( spep_1 + 0, ctzudodo, 96-3, 20 );
setEffMoveKey( spep_1 + 0, ctzudodo, 192.9, -142.5 , 0 );
setEffMoveKey( spep_1-3 + 2, ctzudodo, 179.7, -90.3 , 0 );
setEffMoveKey( spep_1-3 + 4, ctzudodo, 163.7, -43.6 , 0 );
setEffMoveKey( spep_1-3 + 6, ctzudodo, 151.4, 8.4 , 0 );
setEffMoveKey( spep_1-3 + 8, ctzudodo, 149.7, 6.4 , 0 );
setEffMoveKey( spep_1-3 + 10, ctzudodo, 152.7, 12.2 , 0 );
setEffMoveKey( spep_1-3 + 12, ctzudodo, 151, 10.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzudodo, 154, 16.1 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzudodo, 152.3, 14.2 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzudodo, 155.3, 20 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzudodo, 153.6, 18.1 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzudodo, 156.5, 23.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzudodo, 154.9, 21.9 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzudodo, 157.8, 27.8 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzudodo, 156.2, 25.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzudodo, 159.1, 31.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzudodo, 157.5, 29.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzudodo, 160.4, 35.6 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzudodo, 158.8, 33.6 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzudodo, 161.7, 39.5 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzudodo, 160.1, 37.5 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzudodo, 163, 43.4 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzudodo, 161.4, 41.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzudodo, 164.3, 47.3 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzudodo, 162.7, 45.3 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzudodo, 165.6, 51.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzudodo, 164, 49.2 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzudodo, 166.9, 55 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzudodo, 165.2, 53.1 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzudodo, 168.2, 58.9 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzudodo, 166.5, 57 , 0 );
setEffMoveKey( spep_1-3 + 62, ctzudodo, 169.5, 62.8 , 0 );
setEffMoveKey( spep_1-3 + 64, ctzudodo, 167.8, 60.8 , 0 );
setEffMoveKey( spep_1-3 + 66, ctzudodo, 170.8, 66.7 , 0 );
setEffMoveKey( spep_1-3 + 68, ctzudodo, 169.1, 64.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctzudodo, 172.1, 70.6 , 0 );
setEffMoveKey( spep_1-3 + 72, ctzudodo, 170.4, 68.6 , 0 );
setEffMoveKey( spep_1-3 + 74, ctzudodo, 173.4, 74.5 , 0 );
setEffMoveKey( spep_1-3 + 76, ctzudodo, 171.7, 72.5 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzudodo, 174.7, 78.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzudodo, 173, 76.4 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzudodo, 176, 82.3 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzudodo, 174.3, 80.3 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzudodo, 177.3, 86.2 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzudodo, 177.9, 88.1 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzudodo, 174.8, 137.3 , 0 );
setEffMoveKey( spep_1-3 + 92, ctzudodo, 176.1, 193.8 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzudodo, 173.3, 243.1 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzudodo, 172.5, 295.7 , 0 );

setEffScaleKey( spep_1 + 0, ctzudodo, 0.88,0.88);
setEffScaleKey( spep_1 + 2, ctzudodo, 1.36,1.36);
setEffScaleKey( spep_1 + 4, ctzudodo, 1.8,1.8);
setEffScaleKey( spep_1 + 6, ctzudodo, 2.27,2.27);
setEffScaleKey( spep_1-3 + 88, ctzudodo, 2.27,2.27);
setEffScaleKey( spep_1-3 + 90, ctzudodo, 2.17,2.17);
setEffScaleKey( spep_1-3 + 92, ctzudodo, 2.04,2.04);
setEffScaleKey( spep_1-3 + 94, ctzudodo, 1.93,1.93);
setEffScaleKey( spep_1-3 + 96, ctzudodo, 1.83,1.83);

setEffRotateKey( spep_1 + 0, ctzudodo, -5.5 );
setEffRotateKey( spep_1-3 + 96, ctzudodo, -5.5 );

setEffAlphaKey( spep_1 + 0, ctzudodo, 51 );
setEffAlphaKey( spep_1 + 2, ctzudodo, 119 );
setEffAlphaKey( spep_1 + 4, ctzudodo, 187 );
setEffAlphaKey( spep_1 + 6, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 88, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 90, ctzudodo, 191 );
setEffAlphaKey( spep_1-3 + 92, ctzudodo, 128 );
setEffAlphaKey( spep_1-3 + 94, ctzudodo, 64 );
setEffAlphaKey( spep_1-3 + 96, ctzudodo, 0 );

--SE
--走る
SE005 = playSeVer2( spep_1 + 0, 1111, "",spep_1 + 18, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 195 );
SE006 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 24, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 60 );

--電気走る
SE007 = playSeVer2( spep_1 + 0, 1243, "",spep_1 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 57 );

--走る
SE008 = playSeVer2( spep_1 + 18, 1111, "",spep_1 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 18, SE008, 197 );
SE009 = playSeVer2( spep_1 + 18, 1182, "",spep_1 + 40, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 18, SE009, 58 );
SE010 = playSeVer2( spep_1 + 34, 1111, "",spep_1 + 52, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 34, SE010, 186 );
SE011 = playSeVer2( spep_1 + 34, 1182, "",spep_1 + 56, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 34, SE011, 52 );
SE012 = playSeVer2( spep_1 + 52, 1111, "",spep_1 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 52, SE012, 186 );
SE013 = playSeVer2( spep_1 + 52, 1182, "",spep_1 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 52, SE013, 61 );
SE014 = playSeVer2( spep_1 + 68, 1111, "",spep_1 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 68, SE014, 170 );
SE015 = playSeVer2( spep_1 + 68, 1182, "",spep_1 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 68, SE015, 56 );

--飛ぶ
SE016 = playSeVer2( spep_1 + 80, 1024, "",spep_1 + 138, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 71 );
SE017 = playSeVer2( spep_1 + 100, 9, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 100, 1314, "",spep_1 + 200, 0, 12, -1);

--白フェード
entryFade( spep_1 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 255 );  

--次の準備
spep_2=spep_1+140;
------------------------------------------------------
--手前に迫るはっちゃん（文字、手前エフェクト）
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, approaching_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching_f, 0 );
setEffRotateKey( spep_2 + 60, approaching_f, 0 );
setEffAlphaKey( spep_2 + 0, approaching_f, 255 );
setEffAlphaKey( spep_2 + 60, approaching_f, 255 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, approaching_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching_b, 0 );
setEffRotateKey( spep_2 + 60, approaching_b, 0 );
setEffAlphaKey( spep_2 + 0, approaching_b, 255 );
setEffAlphaKey( spep_2 + 60, approaching_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
   
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

--敵の動き
setDisp( spep_2-3 + 26, 1, 1 );
setDisp( spep_2-3 + 50, 1, 0 );

changeAnime( spep_2-3 + 26, 1, 102 );
changeAnime( spep_2-3 + 38, 1, 107 );

setMoveKey( spep_2-3 + 26, 1, 305.8, -421.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 242.3, -380.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 178.8, -339.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 115.3, -299.2 , 0 );
setMoveKey( spep_2-3 + 34, 1, 51.8, -258.6 , 0 );
setMoveKey( spep_2-3 + 37, 1, 51.8, -258.6 , 0 );

setMoveKey( spep_2-3 + 38, 1, 41, -29 , 0 );
setMoveKey( spep_2-3 + 40, 1, 702.1, -449.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1145.3, -730.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, 1414.1, -901.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, 1552.1, -989.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 1603, -1021.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 1610.3, -1026.1 , 0 );

setScaleKey( spep_2-3 + 26, 1, 5, 5 );
setScaleKey( spep_2-3 + 28, 1, 4.75, 4.75 );
setScaleKey( spep_2-3 + 30, 1, 4.5, 4.5 );
setScaleKey( spep_2-3 + 32, 1, 4.25, 4.25 );
setScaleKey( spep_2-3 + 34, 1, 4, 4 );
setScaleKey( spep_2-3 + 37, 1, 4, 4 );

setScaleKey( spep_2-3 + 38, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 40, 1, 3.27, 3.27 );
setScaleKey( spep_2-3 + 42, 1, 4.29, 4.29 );
setScaleKey( spep_2-3 + 44, 1, 4.91, 4.91 );
setScaleKey( spep_2-3 + 46, 1, 5.23, 5.23 );
setScaleKey( spep_2-3 + 48, 1, 5.34, 5.34 );
setScaleKey( spep_2-3 + 50, 1, 5.36, 5.36 );

setRotateKey( spep_2-3 + 26, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

--SE
--頭突き
SE019 = playSeVer2( spep_2 + 24, 19, "",spep_2 + 70, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 69 );
SE020 = playSeVer2( spep_2 + 24, 1060, "",spep_2 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 24, SE020, 76 );
SE021 = playSeVer2( spep_2 + 24, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 26, 1109, "",spep_2 + 72, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 26, SE022, 68 );

--白フェード
entryFade( spep_2 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94; 
------------------------------------------------------
--敵を蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 70, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 70, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 70, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 70, kick_b, 255 );

--敵の動き
ctbaki = entryEffectLife( spep_4-3 + 24,  10020, 34, 0x100, -1, 0, 32.5, 143.6 );--バキッ

setEffMoveKey( spep_4-3 + 24, ctbaki, 32.5, 143.6 , 0 );
setEffMoveKey( spep_4-3 + 26, ctbaki, 98.7, 246.2 , 0 );
setEffMoveKey( spep_4-3 + 28, ctbaki, 84.2, 252.2 , 0 );
setEffMoveKey( spep_4-3 + 30, ctbaki, 91.9, 261.7 , 0 );
setEffMoveKey( spep_4-3 + 32, ctbaki, 86.9, 251.5 , 0 );
setEffMoveKey( spep_4-3 + 34, ctbaki, 85.3, 270.5 , 0 );
setEffMoveKey( spep_4-3 + 36, ctbaki, 86.7, 262.1 , 0 );
setEffMoveKey( spep_4-3 + 38, ctbaki, 79, 271.5 , 0 );
setEffMoveKey( spep_4-3 + 40, ctbaki, 80.8, 267.3 , 0 );
setEffMoveKey( spep_4-3 + 42, ctbaki, 82.2, 278.2 , 0 );
setEffMoveKey( spep_4-3 + 44, ctbaki, 77.3, 273.2 , 0 );
setEffMoveKey( spep_4-3 + 46, ctbaki, 74.9, 286.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctbaki, 74.1, 282.4 , 0 );
setEffMoveKey( spep_4-3 + 50, ctbaki, 70.9, 291.4 , 0 );
setEffMoveKey( spep_4-3 + 52, ctbaki, 73, 282.8 , 0 );
setEffMoveKey( spep_4-3 + 54, ctbaki, 66.7, 320.3 , 0 );
setEffMoveKey( spep_4-3 + 56, ctbaki, 64.6, 324.4 , 0 );
setEffMoveKey( spep_4-3 + 58, ctbaki, 155.7, 147.5 , 0 );

setEffScaleKey( spep_4-3 + 24, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4-3 + 26, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 28, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 30, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 32, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 34, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4-3 + 36, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_4-3 + 38, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 40, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_4-3 + 42, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_4-3 + 44, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_4-3 + 46, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_4-3 + 48, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_4-3 + 50, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_4-3 + 52, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_4-3 + 54, ctbaki, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 56, ctbaki, 3.29, 3.29 );
setEffScaleKey( spep_4-3 + 58, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_4-3 + 24, ctbaki, 16 );
setEffRotateKey( spep_4-3 + 58, ctbaki, 16 );

setEffAlphaKey( spep_4-3 + 24, ctbaki, 26 );
setEffAlphaKey( spep_4-3 + 26, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 54, ctbaki, 169 );
setEffAlphaKey( spep_4-3 + 56, ctbaki, 84 );
setEffAlphaKey( spep_4-3 + 58, ctbaki, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 20, 1, 108 );

setMoveKey( spep_4 + 0, 1, -8.3, -131.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 17.6, -152.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 25, -159.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 29.2, -163.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 31.5, -165.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 32.8, -166.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 33.1, -167 , 0 );
setMoveKey( spep_4-3 + 14, 1, 41.4, -180.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 43.1, -183.3 , 0 );
setMoveKey( spep_4-3 + 19, 1, 43.5, -184 , 0 );
setMoveKey( spep_4-3 + 20, 1, 195.5, -73.9 , 0 );
setMoveKey( spep_4-3 + 22, 1, 176, -104.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 168.6, -77.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 187.6, -113.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, 179.9, -67.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 171.8, -115.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 187.7, -71.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, 176.8, -109.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 159.3, -71.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 157, -107.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 154.7, -80.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 152.2, -101.4 , 0 );
setMoveKey( spep_4-3 + 44, 1, 175.9, -76 , 0 );
setMoveKey( spep_4-3 + 46, 1, 212.2, -81.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 261.3, -67.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 321.4, -55.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 387.3, -41.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, 451.3, -28.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 505.3, -15.4 , 0 );
setMoveKey( spep_4-3 + 58, 1, 575.5, -4.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 632.1, 4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 675.3, 10.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, 705.9, 15.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 725.4, 18 , 0 );
setMoveKey( spep_4-3 + 68, 1, 580.8, -4.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 19, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 20, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 30, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 34, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 36, 1, 1.84, 1.84 );
setScaleKey( spep_4-3 + 68, 1, 1.84, 1.84 );

setRotateKey( spep_4 + 0, 1, -43.8 );
setRotateKey( spep_4-3 + 2, 1, -36.1 );
setRotateKey( spep_4-3 + 4, 1, -33.8 );
setRotateKey( spep_4-3 + 6, 1, -32.6 );
setRotateKey( spep_4-3 + 8, 1, -31.9 );
setRotateKey( spep_4-3 + 10, 1, -31.5 );
setRotateKey( spep_4-3 + 12, 1, -31.4 );
setRotateKey( spep_4-3 + 19, 1, -31.4 );
setRotateKey( spep_4-3 + 20, 1, -13.6 );
setRotateKey( spep_4-3 + 30, 1, -13.6 );
setRotateKey( spep_4-3 + 32, 1, -13.7 );
setRotateKey( spep_4-3 + 34, 1, -13.7 );
setRotateKey( spep_4-3 + 36, 1, -13.8 );
setRotateKey( spep_4-3 + 38, 1, -13.9 );
setRotateKey( spep_4-3 + 40, 1, -14.1 );
setRotateKey( spep_4-3 + 42, 1, -14.3 );
setRotateKey( spep_4-3 + 44, 1, -15 );
setRotateKey( spep_4-3 + 46, 1, -16.1 );
setRotateKey( spep_4-3 + 48, 1, -17.6 );
setRotateKey( spep_4-3 + 50, 1, -19.3 );
setRotateKey( spep_4-3 + 52, 1, -21.2 );
setRotateKey( spep_4-3 + 54, 1, -23.2 );
setRotateKey( spep_4-3 + 56, 1, -25 );
setRotateKey( spep_4-3 + 58, 1, -26.5 );
setRotateKey( spep_4-3 + 60, 1, -27.8 );
setRotateKey( spep_4-3 + 62, 1, -28.7 );
setRotateKey( spep_4-3 + 64, 1, -29.4 );
setRotateKey( spep_4-3 + 66, 1, -29.8 );
setRotateKey( spep_4-3 + 68, 1, -26.5 );

--SE
--キック
SE024 = playSeVer2( spep_4 -4 + 0, 8, "",spep_4 + 42, 0, 18, -1);
SE025 = playSeVer2( spep_4 -4 + 8, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE026, 89 );
SE027 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 70; 
------------------------------------------------------
--ガッ  
------------------------------------------------------
-- ** エフェクト等 ** --
ga = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, ga, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, ga, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga, 0 );
setEffRotateKey( spep_5 + 120, ga, 0 );
setEffAlphaKey( spep_5 + 0, ga, 255 );
setEffAlphaKey( spep_5 + 120, ga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 14, 1054 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );
end