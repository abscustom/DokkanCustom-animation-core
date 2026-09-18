--1022260:孫悟空_神速乱舞
--sp_effect_b1_00157

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
SP_01=	157692	;--	構え
SP_02=	157693	;--	ダッシュ
SP_03=	157694	;--	高速で攻撃
SP_04=	157695	;--	高速で攻撃
SP_05=	157698	;--	横滑りしてくる孫悟空
SP_06=	157700	;--	蹴り
SP_07=	157701	;--	蹴り
SP_08=	157704	;--	フィニッシュ　吹っ飛んでくる敵
SP_09=	157705	;--	フィニッシュ　吹っ飛んでくる敵

--エフェクト(敵)
SP_01x=	157692	;--	構え	
SP_02x=	157693	;--	ダッシュ	
SP_03x=	157696	;--	高速で攻撃	(敵)
SP_04x=	157697	;--	高速で攻撃	(敵)
SP_05x=	157699	;--	横滑りしてくる孫悟空	
SP_06x=	157702	;--	蹴り	(敵)
SP_07x=	157703	;--	蹴り	(敵)
SP_08x=	157704	;--	フィニッシュ　吹っ飛んでくる敵	
SP_09x=	157705	;--	フィニッシュ　吹っ飛んでくる敵	

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
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ready, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 90, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 90, ready, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  522);

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
--雨
SE001 = playSe( spep_0 + 0, 1165 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 45 );
setBandpassFilter	( spep_0 + 0, SE001, 2500, 24000 );
stopSe( spep_0 + 90, SE001, 10 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_2 + 74, dash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 74, dash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 74, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 72, dash, 255 );
setEffAlphaKey( spep_2 + 73, dash, 255 );
setEffAlphaKey( spep_2 + 74, dash, 0 );

--SE
--雨
SE004 = playSe( spep_2 + 0, 1165 );
setSeVolumeByWorkId( spep_2 + 0, SE004, 45 );
setBandpassFilter	( spep_2 + 0, SE004, 2500, 24000 );

--向かってくる
SE005 = playSe( spep_2 + 4, 1182 );
SE006 = playSe( spep_2 + 4, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

   
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
--SE
--向かってくる
stopSe( spep_2 + 64, SE006, 36 );

--瞬間移動
SE007 = playSe( spep_2 + 56, 1109 );

--水しぶき１
SE008 = playSe( spep_2 + 56, 1163 );
setSeVolumeByWorkId( spep_2 + 56, SE008, 145 );
SE009 = playSe( spep_2 + 74, 1166 );
setSeVolumeByWorkId( spep_2 + 74, SE009, 133 );

--次の準備
spep_3=spep_2+74;
------------------------------------------------------
-- 高速で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 176, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 174, attack_f, 255 );
setEffAlphaKey( spep_3 + 175, attack_f, 255 );
setEffAlphaKey( spep_3 + 176, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 176, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 174, attack_b, 255 );
setEffAlphaKey( spep_3 + 175, attack_b, 255 );
setEffAlphaKey( spep_3 + 176, attack_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 178, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 30, 1, 106 );
changeAnime( spep_3-3 + 66, 1, 6 );
changeAnime( spep_3-3 + 88, 1, 108 );
changeAnime( spep_3-3 + 136, 1, 7 );

setMoveKey( spep_3 + 0, 1, 256.2, 14.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 245.3, 10.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 234.4, 6.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 223.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 212.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 201.7, -5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 190.8, -8.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 179.9, -12.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 169, -16.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 158.1, -20.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 147.2, -24.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 136.3, -28.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 125.5, -32.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 98.7, -31.2 , 0 );
setMoveKey( spep_3-3 + 29, 1, 160.4, -1.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 140.5, -93.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 100.4, -61 , 0 );
setMoveKey( spep_3-3 + 34, 1, 96.7, -86.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, 44.2, -45.5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 32.8, -74.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 21.9, -49.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 11.8, -54.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, 2.2, -52.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, -6.7, -49.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, -14.9, -47.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, -22.6, -45.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, -29.5, -43.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, -35.9, -42.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, -41.7, -41.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -46.7, -40.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -51.2, -39.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -55, -39.2 , 0 );
setMoveKey( spep_3-3 + 65, 1, -58.2, -39 , 0 );
setMoveKey( spep_3-3 + 66, 1, -253.1, 30.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, -181.9, -2 , 0 );
setMoveKey( spep_3-3 + 70, 1, -148.9, 34.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, -85.3, 12.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, -58, 41.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, -82.8, 15.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, -74.2, 41.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -48.9, 21.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, -56.3, 33.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, -52.4, 34.4 , 0 );
setMoveKey( spep_3-3 + 87, 1, -48.2, 35.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 189.9, 70.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 128.1, 69.3 , 0 );
setMoveKey( spep_3-3 + 92, 1, 66.2, 67.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 4, 79.6 , 0 );
setMoveKey( spep_3-3 + 96, 1, -58.4, 50.3 , 0 );
setMoveKey( spep_3-3 + 98, 1, -67.5, 64.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, -43.8, 64.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, -53.3, 70.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, -52, 65 , 0 );
setMoveKey( spep_3-3 + 106, 1, -51, 65.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -50.2, 65.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, -49.6, 65.5 , 0 );
setMoveKey( spep_3-3 + 112, 1, -49.2, 65.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, -49, 65.8 , 0 );
setMoveKey( spep_3-3 + 116, 1, -49.1, 66 , 0 );
setMoveKey( spep_3-3 + 118, 1, -49.3, 66.1 , 0 );
setMoveKey( spep_3-3 + 120, 1, -49.8, 66.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -50.5, 66.3 , 0 );
setMoveKey( spep_3-3 + 124, 1, -51.4, 66.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -52.6, 66.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, -53.9, 66.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, -55.5, 66.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, 64.9, 74.4 , 0 );
setMoveKey( spep_3-3 + 135, 1, 185, 82.4 , 0 );
setMoveKey( spep_3-3 + 136, 1, -161.1, -17.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, -97.8, -18.3 , 0 );
setMoveKey( spep_3-3 + 140, 1, -103.1, -1.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, -108.2, -29.4 , 0 );
setMoveKey( spep_3-3 + 144, 1, -129.5, -10.3 , 0 );
setMoveKey( spep_3-3 + 146, 1, -101.1, -7.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, -122, 5.5 , 0 );
setMoveKey( spep_3-3 + 150, 1, -126.1, -14.2 , 0 );
setMoveKey( spep_3-3 + 152, 1, -138.1, -1 , 0 );
setMoveKey( spep_3-3 + 154, 1, -125.2, 1.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, -136.7, 3 , 0 );
setMoveKey( spep_3-3 + 158, 1, -139.7, 4.9 , 0 );
setMoveKey( spep_3-3 + 160, 1, -142.6, 6.6 , 0 );
setMoveKey( spep_3-3 + 162, 1, -145, 8.3 , 0 );
setMoveKey( spep_3-3 + 164, 1, -147.2, 9.9 , 0 );
setMoveKey( spep_3-3 + 166, 1, -149.1, 11.3 , 0 );
setMoveKey( spep_3-3 + 168, 1, -150.8, 12.6 , 0 );
setMoveKey( spep_3-3 + 170, 1, -152.2, 13.9 , 0 );
setMoveKey( spep_3-3 + 172, 1, -153.3, 15 , 0 );
setMoveKey( spep_3-3 + 174, 1, -154, 16 , 0 );
setMoveKey( spep_3-3 + 176, 1, -154.5, 16.9 , 0 );
setMoveKey( spep_3-1 + 178, 1, -154.7, 17.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 130, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 131, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 135, 1, 2.24,2.24);
setScaleKey( spep_3-3 + 136, 1, 1.02,1.02);
setScaleKey( spep_3-3 + 138, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 140, 1, 1.15,1.15);
setScaleKey( spep_3-1 + 178, 1, 1.18,1.18);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 29, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, -38 );
setRotateKey( spep_3-3 + 32, 1, -35.9 );
setRotateKey( spep_3-3 + 34, 1, -34 );
setRotateKey( spep_3-3 + 36, 1, -32.2 );
setRotateKey( spep_3-3 + 38, 1, -30.5 );
setRotateKey( spep_3-3 + 40, 1, -29 );
setRotateKey( spep_3-3 + 42, 1, -27.5 );
setRotateKey( spep_3-3 + 44, 1, -26.2 );
setRotateKey( spep_3-3 + 46, 1, -25 );
setRotateKey( spep_3-3 + 48, 1, -24 );
setRotateKey( spep_3-3 + 50, 1, -23.1 );
setRotateKey( spep_3-3 + 52, 1, -22.3 );
setRotateKey( spep_3-3 + 54, 1, -21.6 );
setRotateKey( spep_3-3 + 56, 1, -21 );
setRotateKey( spep_3-3 + 58, 1, -20.6 );
setRotateKey( spep_3-3 + 60, 1, -20.3 );
setRotateKey( spep_3-3 + 62, 1, -20.1 );
setRotateKey( spep_3-3 + 65, 1, -20 );
setRotateKey( spep_3-3 + 66, 1, 53 );
setRotateKey( spep_3-3 + 68, 1, 51 );
setRotateKey( spep_3-3 + 70, 1, 49.1 );
setRotateKey( spep_3-3 + 72, 1, 47.4 );
setRotateKey( spep_3-3 + 74, 1, 45.8 );
setRotateKey( spep_3-3 + 76, 1, 44.3 );
setRotateKey( spep_3-3 + 78, 1, 43 );
setRotateKey( spep_3-3 + 80, 1, 41.7 );
setRotateKey( spep_3-3 + 82, 1, 40.6 );
setRotateKey( spep_3-3 + 84, 1, 39.7 );
setRotateKey( spep_3-3 + 87, 1, 38.8 );
setRotateKey( spep_3-3 + 88, 1, 19 );
setRotateKey( spep_3-3 + 90, 1, 20 );
setRotateKey( spep_3-3 + 92, 1, 21 );
setRotateKey( spep_3-3 + 94, 1, 22 );
setRotateKey( spep_3-3 + 96, 1, 22.9 );
setRotateKey( spep_3-3 + 98, 1, 23.7 );
setRotateKey( spep_3-3 + 100, 1, 24.5 );
setRotateKey( spep_3-3 + 102, 1, 25.3 );
setRotateKey( spep_3-3 + 104, 1, 26 );
setRotateKey( spep_3-3 + 106, 1, 26.7 );
setRotateKey( spep_3-3 + 108, 1, 27.3 );
setRotateKey( spep_3-3 + 110, 1, 27.9 );
setRotateKey( spep_3-3 + 112, 1, 28.4 );
setRotateKey( spep_3-3 + 114, 1, 28.9 );
setRotateKey( spep_3-3 + 116, 1, 29.3 );
setRotateKey( spep_3-3 + 118, 1, 29.7 );
setRotateKey( spep_3-3 + 120, 1, 30.1 );
setRotateKey( spep_3-3 + 122, 1, 30.4 );
setRotateKey( spep_3-3 + 124, 1, 30.6 );
setRotateKey( spep_3-3 + 126, 1, 30.8 );
setRotateKey( spep_3-3 + 128, 1, 31 );
setRotateKey( spep_3-3 + 130, 1, 31.1 );
setRotateKey( spep_3-3 + 132, 1, 31.2 );
setRotateKey( spep_3-3 + 135, 1, 31.2 );
setRotateKey( spep_3-3 + 136, 1, 60.5 );
setRotateKey( spep_3-1 + 178, 1, 60.5 );

--SE
--水しぶき１
stopSe( spep_3 + 34, SE009, 26 );

--ヒット１
SE010 = playSe( spep_3 + 26, 1009 );
SE011 = playSe( spep_3 + 26, 1110 );
setSeVolumeByWorkId( spep_3 + 26, SE011, 83 );

--水しぶき２
SE012 = playSe( spep_3 + 26, 1163 );
setSeVolumeByWorkId( spep_3 + 26, SE012, 160 );
SE013 = playSe( spep_3 + 42, 1166 );
setSeVolumeByWorkId( spep_3 + 42, SE013, 153 );
stopSe( spep_3 + 74, SE013, 20 );
SE014 = playSe( spep_3 + 52, 1163 );
setSeVolumeByWorkId( spep_3 + 52, SE014, 164 );

--ヒット２
SE015 = playSe( spep_3 + 64, 1008 );
SE016 = playSe( spep_3 + 64, 1110 );
setSeVolumeByWorkId( spep_3 + 64, SE016, 85 );

--水しぶき３
SE017 = playSe( spep_3 + 70, 1166 );
setSeVolumeByWorkId( spep_3 + 70, SE017, 132 );
stopSe( spep_3 + 106, SE017, 28 );

--ヒット３
SE018 = playSe( spep_3 + 86, 1009 );
SE019 = playSe( spep_3 + 86, 1110 );

--水しぶき４
SE020 = playSe( spep_3 + 98, 1163 );
setSeVolumeByWorkId( spep_3 + 98, SE020, 160 );
SE021 = playSe( spep_3 + 114, 1166 );
setSeVolumeByWorkId( spep_3 + 114, SE021, 160 );
stopSe( spep_3 + 150, SE021, 28 );

--ヒット４
SE022 = playSe( spep_3 + 134, 1009 );
SE023 = playSe( spep_3 + 134, 1110 );
setSeVolumeByWorkId( spep_3 + 134, SE023, 79 );
SE024 = playSe( spep_3 + 134, 1187 );
setSeVolumeByWorkId( spep_3 + 134, SE024, 61 );

--水走り
SE025 = playSe( spep_3 + 162, 1166 );
setSeVolumeByWorkId( spep_3 + 162, SE025, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+176;
------------------------------------------------------
-- 横滑りしてくる孫悟空
------------------------------------------------------
-- ** エフェクト等 ** --
sliding = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, sliding, 0, 0, 0 );
setEffMoveKey( spep_4 + 64, sliding, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, sliding, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, sliding, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, sliding, 0 );
setEffRotateKey( spep_4 + 64, sliding, 0 );
setEffAlphaKey( spep_4 + 0, sliding, 255 );
setEffAlphaKey( spep_4 + 62, sliding, 255 );
setEffAlphaKey( spep_4 + 63, sliding, 255 );
setEffAlphaKey( spep_4 + 64, sliding, 0 );

--SE
--水走り
stopSe( spep_4 + 36, SE025, 18 );

--水走り止まる
SE026 = playSe( spep_4 + 24, 1192 );
setSeVolumeByWorkId( spep_4 + 24, SE026, 257 );

--雨
SE026_02 = playSe( spep_4 + 18, 1165 );
setSeVolumeByWorkId( spep_4 + 18, SE026_02, 45 );
setBandpassFilter   ( spep_4 + 18, SE026_02, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+64;
------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 102, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 100, kick_f, 255 );
setEffAlphaKey( spep_5 + 101, kick_f, 255 );
setEffAlphaKey( spep_5 + 102, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 102, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 100, kick_b, 255 );
setEffAlphaKey( spep_5 + 101, kick_b, 255 );
setEffAlphaKey( spep_5 + 102, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 56, 1, 1 );
setDisp( spep_5-1 + 64, 1, 0 );

setBlendColor(spep_5-1 + 62, 1, 3, 0, 0, 0, 0.35);
setBlendColor(spep_5-1 + 63, 1, 3, 0, 0, 0, 0.7);
setBlendColor(spep_5-1 + 64, 1, 3, 0, 0, 0, 0.7);
setBlendColor(spep_5 + 64, 1, 3, 0, 0, 0, 0);

changeAnime( spep_5-3 + 56, 1, 7 );
changeAnime( spep_5-3 + 60, 1, 107 );

setMoveKey( spep_5-3 + 56, 1, 946.4, -513.3 , 0 );
setMoveKey( spep_5-3 + 59, 1, 662.4, -535.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 255.5, -470.1 , 0 );
setMoveKey( spep_5-3 + 62, 1, 393, -437 , 0 );
setMoveKey( spep_5-1 + 64, 1, 753.5, -452.6 , 0 );

setScaleKey( spep_5-3 + 56, 1,2.7,2.7);
setScaleKey( spep_5-3 + 59, 1,2.64,2.64);
setScaleKey( spep_5-3 + 60, 1,2.24,2.24);
setScaleKey( spep_5-3 + 62, 1,2.44,2.44);
setScaleKey( spep_5-1 + 64, 1,3.06,3.06);

setRotateKey( spep_5-3 + 56, 1, -5.7 );
setRotateKey( spep_5-3 + 59, 1, -5.7 );
setRotateKey( spep_5-3 + 60, 1, -37.1 );
setRotateKey( spep_5-3 + 62, 1, -40.3 );
setRotateKey( spep_5-1 + 64, 1, -49.9 );

--SE
--振りかぶる
SE027 = playSe( spep_5 + 0, 1117 );
stopSe( spep_5 + 32, SE027, 20 );

--蹴り
SE028 = playSe( spep_5 + 46, 1003 );
SE029 = playSe( spep_5 + 52, 1120 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 106, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+102;
------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6  +   0, 1, 1 );
setDisp( spep_6  + 100, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--雨
stopSe( spep_6 + 18, SE004, 66 );
stopSe( spep_6 + 18, SE026_02, 66 );

--ガッ
playSe( spep_6 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ready, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 90, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 90, ready, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  522);

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
--雨
SE001 = playSe( spep_0 + 0, 1165 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 45 );
setBandpassFilter	( spep_0 + 0, SE001, 2500, 24000 );
stopSe( spep_0 + 90, SE001, 10 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_2 + 74, dash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 74, dash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 74, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 72, dash, 255 );
setEffAlphaKey( spep_2 + 73, dash, 255 );
setEffAlphaKey( spep_2 + 74, dash, 0 );

--SE
--雨
SE004 = playSe( spep_2 + 0, 1165 );
setSeVolumeByWorkId( spep_2 + 0, SE004, 45 );
setBandpassFilter	( spep_2 + 0, SE004, 2500, 24000 );

--向かってくる
SE005 = playSe( spep_2 + 4, 1182 );
SE006 = playSe( spep_2 + 4, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

   
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
--SE
--向かってくる
stopSe( spep_2 + 64, SE006, 36 );

--瞬間移動
SE007 = playSe( spep_2 + 56, 1109 );

--水しぶき１
SE008 = playSe( spep_2 + 56, 1163 );
setSeVolumeByWorkId( spep_2 + 56, SE008, 145 );
SE009 = playSe( spep_2 + 74, 1166 );
setSeVolumeByWorkId( spep_2 + 74, SE009, 133 );

--次の準備
spep_3=spep_2+74;
------------------------------------------------------
-- 高速で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 176, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 174, attack_f, 255 );
setEffAlphaKey( spep_3 + 175, attack_f, 255 );
setEffAlphaKey( spep_3 + 176, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 176, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 174, attack_b, 255 );
setEffAlphaKey( spep_3 + 175, attack_b, 255 );
setEffAlphaKey( spep_3 + 176, attack_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 178, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 30, 1, 106 );
changeAnime( spep_3-3 + 66, 1, 6 );
changeAnime( spep_3-3 + 88, 1, 108 );
changeAnime( spep_3-3 + 136, 1, 7 );

setMoveKey( spep_3 + 0, 1, 256.2, 14.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 245.3, 10.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 234.4, 6.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 223.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 212.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 201.7, -5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 190.8, -8.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 179.9, -12.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 169, -16.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 158.1, -20.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 147.2, -24.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 136.3, -28.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 125.5, -32.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 98.7, -31.2 , 0 );
setMoveKey( spep_3-3 + 29, 1, 160.4, -1.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 140.5, -93.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 100.4, -61 , 0 );
setMoveKey( spep_3-3 + 34, 1, 96.7, -86.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, 44.2, -45.5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 32.8, -74.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 21.9, -49.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 11.8, -54.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, 2.2, -52.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, -6.7, -49.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, -14.9, -47.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, -22.6, -45.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, -29.5, -43.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, -35.9, -42.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, -41.7, -41.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -46.7, -40.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -51.2, -39.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -55, -39.2 , 0 );
setMoveKey( spep_3-3 + 65, 1, -58.2, -39 , 0 );
setMoveKey( spep_3-3 + 66, 1, -253.1, 30.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, -181.9, -2 , 0 );
setMoveKey( spep_3-3 + 70, 1, -148.9, 34.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, -85.3, 12.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, -58, 41.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, -82.8, 15.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, -74.2, 41.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -48.9, 21.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, -56.3, 33.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, -52.4, 34.4 , 0 );
setMoveKey( spep_3-3 + 87, 1, -48.2, 35.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 189.9, 70.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 128.1, 69.3 , 0 );
setMoveKey( spep_3-3 + 92, 1, 66.2, 67.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 4, 79.6 , 0 );
setMoveKey( spep_3-3 + 96, 1, -58.4, 50.3 , 0 );
setMoveKey( spep_3-3 + 98, 1, -67.5, 64.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, -43.8, 64.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, -53.3, 70.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, -52, 65 , 0 );
setMoveKey( spep_3-3 + 106, 1, -51, 65.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -50.2, 65.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, -49.6, 65.5 , 0 );
setMoveKey( spep_3-3 + 112, 1, -49.2, 65.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, -49, 65.8 , 0 );
setMoveKey( spep_3-3 + 116, 1, -49.1, 66 , 0 );
setMoveKey( spep_3-3 + 118, 1, -49.3, 66.1 , 0 );
setMoveKey( spep_3-3 + 120, 1, -49.8, 66.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -50.5, 66.3 , 0 );
setMoveKey( spep_3-3 + 124, 1, -51.4, 66.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -52.6, 66.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, -53.9, 66.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, -55.5, 66.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, 64.9, 74.4 , 0 );
setMoveKey( spep_3-3 + 135, 1, 185, 82.4 , 0 );
setMoveKey( spep_3-3 + 136, 1, -161.1, -17.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, -97.8, -18.3 , 0 );
setMoveKey( spep_3-3 + 140, 1, -103.1, -1.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, -108.2, -29.4 , 0 );
setMoveKey( spep_3-3 + 144, 1, -129.5, -10.3 , 0 );
setMoveKey( spep_3-3 + 146, 1, -101.1, -7.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, -122, 5.5 , 0 );
setMoveKey( spep_3-3 + 150, 1, -126.1, -14.2 , 0 );
setMoveKey( spep_3-3 + 152, 1, -138.1, -1 , 0 );
setMoveKey( spep_3-3 + 154, 1, -125.2, 1.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, -136.7, 3 , 0 );
setMoveKey( spep_3-3 + 158, 1, -139.7, 4.9 , 0 );
setMoveKey( spep_3-3 + 160, 1, -142.6, 6.6 , 0 );
setMoveKey( spep_3-3 + 162, 1, -145, 8.3 , 0 );
setMoveKey( spep_3-3 + 164, 1, -147.2, 9.9 , 0 );
setMoveKey( spep_3-3 + 166, 1, -149.1, 11.3 , 0 );
setMoveKey( spep_3-3 + 168, 1, -150.8, 12.6 , 0 );
setMoveKey( spep_3-3 + 170, 1, -152.2, 13.9 , 0 );
setMoveKey( spep_3-3 + 172, 1, -153.3, 15 , 0 );
setMoveKey( spep_3-3 + 174, 1, -154, 16 , 0 );
setMoveKey( spep_3-3 + 176, 1, -154.5, 16.9 , 0 );
setMoveKey( spep_3-1 + 178, 1, -154.7, 17.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 130, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 131, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 135, 1, 2.24,2.24);
setScaleKey( spep_3-3 + 136, 1, 1.02,1.02);
setScaleKey( spep_3-3 + 138, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 140, 1, 1.15,1.15);
setScaleKey( spep_3-1 + 178, 1, 1.18,1.18);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 29, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, -38 );
setRotateKey( spep_3-3 + 32, 1, -35.9 );
setRotateKey( spep_3-3 + 34, 1, -34 );
setRotateKey( spep_3-3 + 36, 1, -32.2 );
setRotateKey( spep_3-3 + 38, 1, -30.5 );
setRotateKey( spep_3-3 + 40, 1, -29 );
setRotateKey( spep_3-3 + 42, 1, -27.5 );
setRotateKey( spep_3-3 + 44, 1, -26.2 );
setRotateKey( spep_3-3 + 46, 1, -25 );
setRotateKey( spep_3-3 + 48, 1, -24 );
setRotateKey( spep_3-3 + 50, 1, -23.1 );
setRotateKey( spep_3-3 + 52, 1, -22.3 );
setRotateKey( spep_3-3 + 54, 1, -21.6 );
setRotateKey( spep_3-3 + 56, 1, -21 );
setRotateKey( spep_3-3 + 58, 1, -20.6 );
setRotateKey( spep_3-3 + 60, 1, -20.3 );
setRotateKey( spep_3-3 + 62, 1, -20.1 );
setRotateKey( spep_3-3 + 65, 1, -20 );
setRotateKey( spep_3-3 + 66, 1, 53 );
setRotateKey( spep_3-3 + 68, 1, 51 );
setRotateKey( spep_3-3 + 70, 1, 49.1 );
setRotateKey( spep_3-3 + 72, 1, 47.4 );
setRotateKey( spep_3-3 + 74, 1, 45.8 );
setRotateKey( spep_3-3 + 76, 1, 44.3 );
setRotateKey( spep_3-3 + 78, 1, 43 );
setRotateKey( spep_3-3 + 80, 1, 41.7 );
setRotateKey( spep_3-3 + 82, 1, 40.6 );
setRotateKey( spep_3-3 + 84, 1, 39.7 );
setRotateKey( spep_3-3 + 87, 1, 38.8 );
setRotateKey( spep_3-3 + 88, 1, 19 );
setRotateKey( spep_3-3 + 90, 1, 20 );
setRotateKey( spep_3-3 + 92, 1, 21 );
setRotateKey( spep_3-3 + 94, 1, 22 );
setRotateKey( spep_3-3 + 96, 1, 22.9 );
setRotateKey( spep_3-3 + 98, 1, 23.7 );
setRotateKey( spep_3-3 + 100, 1, 24.5 );
setRotateKey( spep_3-3 + 102, 1, 25.3 );
setRotateKey( spep_3-3 + 104, 1, 26 );
setRotateKey( spep_3-3 + 106, 1, 26.7 );
setRotateKey( spep_3-3 + 108, 1, 27.3 );
setRotateKey( spep_3-3 + 110, 1, 27.9 );
setRotateKey( spep_3-3 + 112, 1, 28.4 );
setRotateKey( spep_3-3 + 114, 1, 28.9 );
setRotateKey( spep_3-3 + 116, 1, 29.3 );
setRotateKey( spep_3-3 + 118, 1, 29.7 );
setRotateKey( spep_3-3 + 120, 1, 30.1 );
setRotateKey( spep_3-3 + 122, 1, 30.4 );
setRotateKey( spep_3-3 + 124, 1, 30.6 );
setRotateKey( spep_3-3 + 126, 1, 30.8 );
setRotateKey( spep_3-3 + 128, 1, 31 );
setRotateKey( spep_3-3 + 130, 1, 31.1 );
setRotateKey( spep_3-3 + 132, 1, 31.2 );
setRotateKey( spep_3-3 + 135, 1, 31.2 );
setRotateKey( spep_3-3 + 136, 1, 60.5 );
setRotateKey( spep_3-1 + 178, 1, 60.5 );

--SE
--水しぶき１
stopSe( spep_3 + 34, SE009, 26 );

--ヒット１
SE010 = playSe( spep_3 + 26, 1009 );
SE011 = playSe( spep_3 + 26, 1110 );
setSeVolumeByWorkId( spep_3 + 26, SE011, 83 );

--水しぶき２
SE012 = playSe( spep_3 + 26, 1163 );
setSeVolumeByWorkId( spep_3 + 26, SE012, 160 );
SE013 = playSe( spep_3 + 42, 1166 );
setSeVolumeByWorkId( spep_3 + 42, SE013, 153 );
stopSe( spep_3 + 74, SE013, 20 );
SE014 = playSe( spep_3 + 52, 1163 );
setSeVolumeByWorkId( spep_3 + 52, SE014, 164 );

--ヒット２
SE015 = playSe( spep_3 + 64, 1008 );
SE016 = playSe( spep_3 + 64, 1110 );
setSeVolumeByWorkId( spep_3 + 64, SE016, 85 );

--水しぶき３
SE017 = playSe( spep_3 + 70, 1166 );
setSeVolumeByWorkId( spep_3 + 70, SE017, 132 );
stopSe( spep_3 + 106, SE017, 28 );

--ヒット３
SE018 = playSe( spep_3 + 86, 1009 );
SE019 = playSe( spep_3 + 86, 1110 );

--水しぶき４
SE020 = playSe( spep_3 + 98, 1163 );
setSeVolumeByWorkId( spep_3 + 98, SE020, 160 );
SE021 = playSe( spep_3 + 114, 1166 );
setSeVolumeByWorkId( spep_3 + 114, SE021, 160 );
stopSe( spep_3 + 150, SE021, 28 );

--ヒット４
SE022 = playSe( spep_3 + 134, 1009 );
SE023 = playSe( spep_3 + 134, 1110 );
setSeVolumeByWorkId( spep_3 + 134, SE023, 79 );
SE024 = playSe( spep_3 + 134, 1187 );
setSeVolumeByWorkId( spep_3 + 134, SE024, 61 );

--水走り
SE025 = playSe( spep_3 + 162, 1166 );
setSeVolumeByWorkId( spep_3 + 162, SE025, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+176;
------------------------------------------------------
-- 横滑りしてくる孫悟空
------------------------------------------------------
-- ** エフェクト等 ** --
sliding = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, sliding, 0, 0, 0 );
setEffMoveKey( spep_4 + 64, sliding, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, sliding, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, sliding, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, sliding, 0 );
setEffRotateKey( spep_4 + 64, sliding, 0 );
setEffAlphaKey( spep_4 + 0, sliding, 255 );
setEffAlphaKey( spep_4 + 62, sliding, 255 );
setEffAlphaKey( spep_4 + 63, sliding, 255 );
setEffAlphaKey( spep_4 + 64, sliding, 0 );

--SE
--水走り止まる
SE026 = playSe( spep_4 + 24, 1192 );
setSeVolumeByWorkId( spep_4 + 24, SE026, 257 );

--雨
SE026_02 = playSe( spep_4 + 18, 1165 );
setSeVolumeByWorkId( spep_4 + 18, SE026_02, 45 );
setBandpassFilter   ( spep_4 + 18, SE026_02, 2500, 24000 );
-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+64;
------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 102, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 100, kick_f, 255 );
setEffAlphaKey( spep_5 + 101, kick_f, 255 );
setEffAlphaKey( spep_5 + 102, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 102, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 100, kick_b, 255 );
setEffAlphaKey( spep_5 + 101, kick_b, 255 );
setEffAlphaKey( spep_5 + 102, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 56, 1, 1 );
setDisp( spep_5-1 + 64, 1, 0 );

setBlendColor(spep_5-1 + 62, 1, 3, 0, 0, 0, 0.35);
setBlendColor(spep_5-1 + 63, 1, 3, 0, 0, 0, 0.7);
setBlendColor(spep_5-1 + 64, 1, 3, 0, 0, 0, 0.7);
setBlendColor(spep_5 + 64, 1, 3, 0, 0, 0, 0);

changeAnime( spep_5-3 + 56, 1, 7 );
changeAnime( spep_5-3 + 60, 1, 107 );

setMoveKey( spep_5-3 + 56, 1, 946.4, -513.3 , 0 );
setMoveKey( spep_5-3 + 59, 1, 662.4, -535.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 255.5, -470.1 , 0 );
setMoveKey( spep_5-3 + 62, 1, 393, -437 , 0 );
setMoveKey( spep_5-1 + 64, 1, 753.5, -452.6 , 0 );

setScaleKey( spep_5-3 + 56, 1,2.7,2.7);
setScaleKey( spep_5-3 + 59, 1,2.64,2.64);
setScaleKey( spep_5-3 + 60, 1,2.24,2.24);
setScaleKey( spep_5-3 + 62, 1,2.44,2.44);
setScaleKey( spep_5-1 + 64, 1,3.06,3.06);

setRotateKey( spep_5-3 + 56, 1, -5.7 );
setRotateKey( spep_5-3 + 59, 1, -5.7 );
setRotateKey( spep_5-3 + 60, 1, -37.1 );
setRotateKey( spep_5-3 + 62, 1, -40.3 );
setRotateKey( spep_5-1 + 64, 1, -49.9 );

--SE
--振りかぶる
SE027 = playSe( spep_5 + 0, 1117 );
stopSe( spep_5 + 32, SE027, 20 );

--蹴り
SE028 = playSe( spep_5 + 46, 1003 );
SE029 = playSe( spep_5 + 52, 1120 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 106, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+102;
------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6  +   0, 1, 1 );
setDisp( spep_6  + 100, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--雨
stopSe( spep_6 + 18, SE004, 66 );
stopSe( spep_6 + 18, SE026_02, 66 );

--ガッ
playSe( spep_6 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );
end