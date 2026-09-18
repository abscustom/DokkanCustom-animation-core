--1024430:超サイヤ人ゴッドSS孫悟空_神空メテオスマッシュ
--sp_effect_b4_00237

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
SP_01=	159890	;--	構え～突撃
SP_02=	159892	;--	パンチ→キック→肘うち
SP_03=	159894	;--	敵が吹っ飛んでいる
SP_04=	159896	;--	波打つ
SP_05=	159897	;--	飛んでいく敵を追撃
SP_06=	159899	;--	回転蹴りヒット時
SP_07=	159900	;--	回転蹴り回転時
SP_08=	159903	;--	蹴りで敵が飛ばされている
SP_09=	159904	;--	蹴りで敵が飛ばされている
SP_10=	159906	;--	敵が飛ばされて崖に激突する
SP_11=	159907	;--	敵が飛ばされて崖に激突する
SP_12=	159925	;--	パンチ→キック→肘うち

--エフェクト(てき)
SP_01x=	159891	;--	構え～突撃	(敵)
SP_02x=	159893	;--	パンチ→キック→肘うち	(敵)
SP_03x=	159895	;--	敵が吹っ飛んでいる	(敵)
SP_04x=	159898	;--	波打つ	(敵)
SP_05x=	159897	;--	飛んでいく敵を追撃	
SP_06x=	159901	;--	回転蹴りヒット時	(敵)
SP_07x=	159902	;--	回転蹴り回転時	(敵)
SP_08x=	159903	;--	蹴りで敵が飛ばされている	
SP_09x=	159905	;--	蹴りで敵が飛ばされている	(敵)
SP_10x=	159908	;--	敵が飛ばされて崖に激突する	(敵)
SP_11x=	159907	;--	敵が飛ばされて崖に激突する	
SP_12x=	159925	;--	パンチ→キック→肘うち
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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
--構え～突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 122, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122, style, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 122, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 120, style, 255 );
setEffAlphaKey( spep_0 + 121, style, 255 );
setEffAlphaKey( spep_0 + 122, style, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 108, 10, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 124 );
setStartTimeMs( SE001,  200 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 180 );

--構える
SE003 = playSeVer2( spep_0 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 75 );
SE005 = playSeVer2( spep_0 + 16, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 16, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE006 = playSeVer2( spep_0 + 24, 1072, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 86, 1182, "",spep_0 + 140, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 86, 1117, "",spep_0 + 140, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 86, 9, "",spep_0 + 140, 0, 8, -1);
SE010 = playSeVer2( spep_0 + 88, 1167, "",spep_0 + 140, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 88, SE010, 54 );

--白フェード
entryFade( spep_0 +78 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
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
-- ** 次の準備 ** --
spep_1= spep_0 + 122;
------------------------------------------------------
--パンチ→キック→肘うち
------------------------------------------------------
-- ** エフェクト等 ** --
panti_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panti_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panti_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panti_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panti_f, 0 );
setEffRotateKey( spep_1 + 96, panti_f, 0 );
setEffAlphaKey( spep_1 + 0, panti_f, 255 );
setEffAlphaKey( spep_1 + 94, panti_f, 255 );
setEffAlphaKey( spep_1 + 95, panti_f, 255 );
setEffAlphaKey( spep_1 + 96, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_1 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panti_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panti_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panti_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panti_b, 0 );
setEffRotateKey( spep_1 + 96, panti_b, 0 );
setEffAlphaKey( spep_1 + 0, panti_b, 255 );
setEffAlphaKey( spep_1 + 94, panti_b, 255 );
setEffAlphaKey( spep_1 + 95, panti_b, 255 );
setEffAlphaKey( spep_1 + 96, panti_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 6, 1, 106 );
changeAnime( spep_1-3 + 34, 1, 108 );
changeAnime( spep_1-3 + 76, 1, 107 );

setMoveKey( spep_1 + 0, 1, 124.3, -50.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 122.6, -51 , 0 );
setMoveKey( spep_1-3 + 5, 1, 120.9, -51.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, 28.4, 23.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, 85.5, -29.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, -11, -31.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 49.6, -14.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, 56.6, -48.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 20.7, -30.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, -17.2, -32.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 43.5, -15.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 16.1, -31 , 0 );
setMoveKey( spep_1-3 + 24, 1, 14.5, -31.1 , 0 );
setMoveKey( spep_1-3 + 26, 1, 13, -31.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 11.5, -31.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 9.9, -31.7 , 0 );
setMoveKey( spep_1-3 + 33, 1, 8.4, -31.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 97.8, 44.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 155, -7.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 58.7, -9.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 119.6, 7.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 126.7, -26.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 91.1, -8.4 , 0 );
setMoveKey( spep_1-3 + 46, 1, 115.5, 6.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, 52.1, -10.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 87.1, -8.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 85.7, -8.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, 84.4, -9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 83.1, -9.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 81.7, -9.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 105.9, -21.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 130.1, -32.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 154.4, -44.8 , 0 );
setMoveKey( spep_1-3 + 66, 1, 155.3, -45 , 0 );
setMoveKey( spep_1-3 + 68, 1, 156.3, -45.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, 157.3, -45.4 , 0 );
setMoveKey( spep_1-3 + 72, 1, 158.2, -45.6 , 0 );
setMoveKey( spep_1-3 + 75, 1, 159.1, -45.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, 75.1, 125.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 152.9, 47 , 0 );
setMoveKey( spep_1-3 + 80, 1, 14.2, 44.9 , 0 );
setMoveKey( spep_1-3 + 82, 1, 133.4, 88.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 117.1, 12.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, 76.4, 46.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 114.7, 69 , 0 );
setMoveKey( spep_1-3 + 90, 1, 175.8, 21 , 0 );
setMoveKey( spep_1-3 + 92, 1, 234.2, 21.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 251.9, 46.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 351.7, 21 , 0 );
setMoveKey( spep_1-3 + 98, 1, 410.9, 21 , 0 );

setScaleKey( spep_1 + 0, 1, 2.24,2.24);
setScaleKey( spep_1-3 + 5, 1, 2.25,2.25);
setScaleKey( spep_1-3 + 6, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 10, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 12, 1, 1.95,1.95);
setScaleKey( spep_1-3 + 14, 1, 1.95,1.95);
setScaleKey( spep_1-3 + 16, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 20, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 22, 1, 1.98,1.98);
setScaleKey( spep_1-3 + 24, 1, 1.98,1.98);
setScaleKey( spep_1-3 + 26, 1, 1.99,1.99);
setScaleKey( spep_1-3 + 30, 1, 1.99,1.99);
setScaleKey( spep_1-3 + 33, 1, 2,2);
setScaleKey( spep_1-3 + 36, 1, 2,2);
setScaleKey( spep_1-3 + 38, 1, 2.01,2.01);
setScaleKey( spep_1-3 + 40, 1, 2.01,2.01);
setScaleKey( spep_1-3 + 42, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 46, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 48, 1, 2.03,2.03);
setScaleKey( spep_1-3 + 50, 1, 2.03,2.03);
setScaleKey( spep_1-3 + 52, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 56, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 58, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 60, 1, 2.46,2.46);
setScaleKey( spep_1-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_1-3 + 64, 1, 3.26,3.26);
setScaleKey( spep_1-3 + 66, 1, 3.27,3.27);
setScaleKey( spep_1-3 + 68, 1, 3.27,3.27);
setScaleKey( spep_1-3 + 70, 1, 3.28,3.28);
setScaleKey( spep_1-3 + 72, 1, 3.3,3.3);
setScaleKey( spep_1-3 + 75, 1, 3.3,3.3);
setScaleKey( spep_1-3 + 76, 1, 1.02,1.02);
setScaleKey( spep_1-3 + 78, 1, 1.03,1.03);
setScaleKey( spep_1-3 + 86, 1, 1.03,1.03);
setScaleKey( spep_1-3 + 88, 1, 1.04,1.04);
setScaleKey( spep_1-3 + 98, 1, 1.04,1.04);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 5, 1, 0 );
setRotateKey( spep_1-3 + 6, 1, -6.1 );
setRotateKey( spep_1-3 + 8, 1, -6.2 );
setRotateKey( spep_1-3 + 33, 1, -6.2 );
setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 75, 1, 0 );
setRotateKey( spep_1-3 + 76, 1, -28.1 );
setRotateKey( spep_1-3 + 78, 1, -28.2 );
setRotateKey( spep_1-3 + 88, 1, -28.2 );
setRotateKey( spep_1-3 + 90, 1, -25.8 );
setRotateKey( spep_1-3 + 92, 1, -23.4 );
setRotateKey( spep_1-3 + 94, 1, -21 );
setRotateKey( spep_1-3 + 96, 1, -18.6 );
setRotateKey( spep_1-3 + 98, 1, -16.2 );

--SE
--初手パンチ
SE011 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_1 + 32, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE013, 79 );
SE014 = playSeVer2( spep_1 + 32, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE014, 80 );
SE015 = playSeVer2( spep_1 + 32, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE016 = playSeVer2( spep_1 + 64, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE016, 71 );

--ひじうち
SE017 = playSeVer2( spep_1 + 74, 1187, "",spep_1 + 122, 0, 20, -1);
SE018 = playSeVer2( spep_1 + 74, 1190, "",spep_1 + 108, 0, 14, -1);

--敵とんでいく
SE019 = playSeVer2( spep_1 + 88, 1183, "",spep_1 + 236, 0, 36, -1);
SE020 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 96;
------------------------------------------------------
--敵が吹っ飛んでいる
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, fly, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, fly, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fly, 0 );
setEffRotateKey( spep_2 + 36, fly, 0 );
setEffAlphaKey( spep_2 + 0, fly, 255 );
setEffAlphaKey( spep_2 + 34, fly, 255 );
setEffAlphaKey( spep_2 + 35, fly, 255 );
setEffAlphaKey( spep_2 + 36, fly, 0 );

--敵側の動き
changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1, -286.4, -65.6 , 0 );
setMoveKey( spep_2 + 2, 1, -280.6, -55.3 , 0 );
setMoveKey( spep_2 + 4, 1, -255, -50.6 , 0 );
setMoveKey( spep_2 + 6, 1, -238.5, -52.3 , 0 );
setMoveKey( spep_2 + 8, 1, -202, -34.6 , 0 );
setMoveKey( spep_2 + 10, 1, -202.6, -47.4 , 0 );
setMoveKey( spep_2 + 12, 1, -161, -24.3 , 0 );
setMoveKey( spep_2 + 14, 1, -172.4, -37.4 , 0 );
setMoveKey( spep_2 + 16, 1, -112.3, -6.4 , 0 );
setMoveKey( spep_2 + 18, 1, -136.1, -39.6 , 0 );
setMoveKey( spep_2 + 20, 1, -69.4, -24.3 , 0 );
setMoveKey( spep_2 + 22, 1, -96.4, -21.3 , 0 );
setMoveKey( spep_2 + 24, 1, -29.9, 24.3 , 0 );
setMoveKey( spep_2 + 26, 1, -51.7, -18.7 , 0 );
setMoveKey( spep_2 + 28, 1, 8.1, -7.2 , 0 );
setMoveKey( spep_2 + 30, 1, 39.9, 2.8 , 0 );
setMoveKey( spep_2 + 32, 1, 13.2, 5.9 , 0 );
setMoveKey( spep_2 + 34, 1, 79.8, 51.7 , 0 );
setMoveKey( spep_2 + 35, 1, 58.3, 8.7 , 0 );

setScaleKey( spep_2 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 4, 1, 0.26, 0.27 );
setScaleKey( spep_2 + 6, 1, 0.3, 0.31 );
setScaleKey( spep_2 + 8, 1, 0.35, 0.37 );
setScaleKey( spep_2 + 10, 1, 0.41, 0.43 );
setScaleKey( spep_2 + 12, 1, 0.47, 0.49 );
setScaleKey( spep_2 + 14, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 16, 1, 0.6, 0.63 );
setScaleKey( spep_2 + 18, 1, 0.68, 0.7 );
setScaleKey( spep_2 + 20, 1, 0.75, 0.78 );
setScaleKey( spep_2 + 22, 1, 0.83, 0.86 );
setScaleKey( spep_2 + 24, 1, 0.91, 0.94 );
setScaleKey( spep_2 + 26, 1, 1, 1.02 );
setScaleKey( spep_2 + 28, 1, 1.08, 1.1 );
setScaleKey( spep_2 + 30, 1, 1.17, 1.19 );
setScaleKey( spep_2 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_2 + 34, 1, 1.35, 1.36 );
setScaleKey( spep_2 + 35, 1, 1.44, 1.45 );

setRotateKey( spep_2 + 0, 1, -13.8 );
setRotateKey( spep_2 + 2, 1, -13.2 );
setRotateKey( spep_2 + 4, 1, -12.5 );
setRotateKey( spep_2 + 6, 1, -11.7 );
setRotateKey( spep_2 + 8, 1, -11 );
setRotateKey( spep_2 + 10, 1, -10.3 );
setRotateKey( spep_2 + 12, 1, -9.5 );
setRotateKey( spep_2 + 14, 1, -8.8 );
setRotateKey( spep_2 + 16, 1, -8.1 );
setRotateKey( spep_2 + 18, 1, -7.3 );
setRotateKey( spep_2 + 20, 1, -6.6 );
setRotateKey( spep_2 + 22, 1, -5.9 );
setRotateKey( spep_2 + 24, 1, -5.1 );
setRotateKey( spep_2 + 26, 1, -4.4 );
setRotateKey( spep_2 + 28, 1, -3.7 );
setRotateKey( spep_2 + 30, 1, -2.9 );
setRotateKey( spep_2 + 32, 1, -2.2 );
setRotateKey( spep_2 + 34, 1, -1.5 );
setRotateKey( spep_2 + 35, 1, -0.7 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 36;
------------------------------------------------------
--波打つ
------------------------------------------------------
-- ** エフェクト等 ** --
wave_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, wave_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, wave_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, wave_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, wave_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave_f, 0 );
setEffRotateKey( spep_3 + 60, wave_f, 0 );
setEffAlphaKey( spep_3 + 0, wave_f, 255 );
setEffAlphaKey( spep_3 + 60, wave_f, 255 );

-- ** エフェクト等 ** --
wave_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, wave_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, wave_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, wave_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, wave_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave_b, 0 );
setEffRotateKey( spep_3 + 60, wave_b, 0 );
setEffAlphaKey( spep_3 + 0, wave_b, 255 );
setEffAlphaKey( spep_3 + 60, wave_b, 255 );

--敵側の動き
setDisp( spep_3 + 55, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -312.5, 275.5 , 0 );
setMoveKey( spep_3 + 2, 1, -286.8, 258.6 , 0 );
setMoveKey( spep_3 + 4, 1, -260.9, 241.6 , 0 );
setMoveKey( spep_3 + 6, 1, -234.9, 224.6 , 0 );
setMoveKey( spep_3 + 8, 1, -208.7, 207.3 , 0 );
setMoveKey( spep_3 + 10, 1, -182.4, 190 , 0 );
setMoveKey( spep_3 + 12, 1, -155.8, 172.6 , 0 );
setMoveKey( spep_3 + 14, 1, -129.1, 155 , 0 );
setMoveKey( spep_3 + 16, 1, -102.3, 137.3 , 0 );
setMoveKey( spep_3 + 18, 1, -75.2, 119.5 , 0 );
setMoveKey( spep_3 + 20, 1, -48, 101.6 , 0 );
setMoveKey( spep_3 + 22, 1, -20.7, 83.6 , 0 );
setMoveKey( spep_3 + 24, 1, 6.9, 65.4 , 0 );
setMoveKey( spep_3 + 26, 1, 34.5, 47.2 , 0 );
setMoveKey( spep_3 + 28, 1, 62.5, 28.8 , 0 );
setMoveKey( spep_3 + 30, 1, 90.5, 10.4 , 0 );
setMoveKey( spep_3 + 32, 1, 118.7, -8.2 , 0 );
setMoveKey( spep_3 + 34, 1, 147.1, -26.9 , 0 );
setMoveKey( spep_3 + 36, 1, 175.6, -45.7 , 0 );
setMoveKey( spep_3 + 38, 1, 204.4, -64.7 , 0 );
setMoveKey( spep_3 + 40, 1, 206.8, -65.7 , 0 );
setMoveKey( spep_3 + 42, 1, 209.3, -66.7 , 0 );
setMoveKey( spep_3 + 44, 1, 211.8, -67.7 , 0 );
setMoveKey( spep_3 + 46, 1, 214.4, -68.8 , 0 );
setMoveKey( spep_3 + 48, 1, 216.9, -69.8 , 0 );
setMoveKey( spep_3 + 50, 1, 219.5, -70.8 , 0 );
setMoveKey( spep_3 + 52, 1, 222, -71.8 , 0 );
setMoveKey( spep_3 + 54, 1, 224.6, -72.9 , 0 );
setMoveKey( spep_3 + 55, 1, 227.2, -73.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 2, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 4, 1, 0.58, 0.57 );
setScaleKey( spep_3 + 6, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 8, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 18, 1, 0.27, 0.28 );
setScaleKey( spep_3 + 20, 1, 0.25, 0.26 );
setScaleKey( spep_3 + 22, 1, 0.23, 0.24 );
setScaleKey( spep_3 + 24, 1, 0.21, 0.22 );
setScaleKey( spep_3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 28, 1, 0.18, 0.19 );
setScaleKey( spep_3 + 30, 1, 0.17, 0.18 );
setScaleKey( spep_3 + 32, 1, 0.16, 0.17 );
setScaleKey( spep_3 + 34, 1, 0.15, 0.16 );
setScaleKey( spep_3 + 36, 1, 0.15, 0.16 );
setScaleKey( spep_3 + 38, 1, 0.14, 0.15 );
setScaleKey( spep_3 + 40, 1, 0.14, 0.15 );
setScaleKey( spep_3 + 42, 1, 0.13, 0.14 );
setScaleKey( spep_3 + 44, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 46, 1, 0.12, 0.13 );
setScaleKey( spep_3 + 48, 1, 0.11, 0.12 );
setScaleKey( spep_3 + 50, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 52, 1, 0.1, 0.11 );
setScaleKey( spep_3 + 54, 1, 0.1, 0.1 );
setScaleKey( spep_3 + 55, 1, 0.09, 0.1 );

setRotateKey( spep_3 + 0, 1, 86.5 );
setRotateKey( spep_3 + 55, 1, 86.5 );

--SE
--水しぶき
SE021 = playSeVer2( spep_3 + 14, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE021, 172 );
setStartTimeMs( SE021,  350 );

--悟空追いかける
SE022 = playSeVer2( spep_3 + 12, 1172, "",spep_3 + 114, 6, 48, -1);
setSeVolumeByWorkId( spep_3 + 12, SE022, 82 );
setStartTimeMs( SE022,  150 );
setPitch( spep_3 + 12, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );
SE023 = playSeVer2( spep_3 + 16, 1312, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 16, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE024, 119 );
SE025 = playSeVer2( spep_3 + 16, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE025, 145 );

--白フェード
entryFade( spep_3 +52 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
------------------------------------------------------
--回転蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 84, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 82, kick_f, 255 );
setEffAlphaKey( spep_5 + 83, kick_f, 255 );
setEffAlphaKey( spep_5 + 84, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 84, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 82, kick_b, 255 );
setEffAlphaKey( spep_5 + 83, kick_b, 255 );
setEffAlphaKey( spep_5 + 84, kick_b, 0 );

--敵側の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 42, 1, 108 );

setMoveKey( spep_5 + 0, 1, -423.5, 56.7 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -403.6, 54.3 , 0 );
setMoveKey( spep_5-3 + 4, 1, -383.8, 52 , 0 );
setMoveKey( spep_5-3 + 6, 1, -363.9, 49.6 , 0 );
setMoveKey( spep_5-3 + 8, 1, -344.1, 47.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, -324.2, 44.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, -304.3, 42.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -284.5, 40.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, -264.6, 37.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, -244.7, 35.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, -224.9, 33 , 0 );
setMoveKey( spep_5-3 + 22, 1, -205, 30.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, -185.2, 28.3 , 0 );
setMoveKey( spep_5-3 + 26, 1, -165.3, 25.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, -145.4, 23.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, -125.6, 21.1 , 0 );
setMoveKey( spep_5-3 + 32, 1, -105.7, 18.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, -85.8, 16.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, -66, 14 , 0 );
setMoveKey( spep_5-3 + 38, 1, -46.1, 11.7 , 0 );
setMoveKey( spep_5-3 + 41, 1, -26.2, 9.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 118.4, -80.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, -11.1, -82.7 , 0 );
setMoveKey( spep_5-3 + 46, 1, 58.3, -138.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 61.1, -41.6 , 0 );
setMoveKey( spep_5-3 + 50, 1, 10.2, -135.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 106.1, -66.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 69, -49.4 , 0 );
setMoveKey( spep_5-3 + 56, 1, 72.4, -98.3 , 0 );
setMoveKey( spep_5-3 + 58, 1, 73.9, -54.4 , 0 );
setMoveKey( spep_5-3 + 60, 1, 77.4, -103.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 96.6, -94.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, 81.4, -95.5 , 0 );
setMoveKey( spep_5-3 + 66, 1, 83.6, -109.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 84.8, -110.7 , 0 );
setMoveKey( spep_5-3 + 70, 1, 86, -111.9 , 0 );
setMoveKey( spep_5-3 + 72, 1, 87.2, -113.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 76.9, -84.4 , 0 );
setMoveKey( spep_5-3 + 76, 1, 158.2, -186.3 , 0 );
setMoveKey( spep_5-3 + 78, 1, 239.5, -288.2 , 0 );
setMoveKey( spep_5-3 + 80, 1, 331, -416.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 422.6, -545.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 514.1, -673.9 , 0 );
setMoveKey( spep_5-3 + 86, 1, 605.6, -802.5 , 0 );

setScaleKey( spep_5 + 0, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 41, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 42, 1, 2.88,2.88);
setScaleKey( spep_5-3 + 86, 1, 2.88,2.88);

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 41, 1, 0 );
setRotateKey( spep_5-3 + 42, 1, 86 );
setRotateKey( spep_5-3 + 86, 1, 86 );

--SE
--体翻す
SE026 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);

--蹴り
SE027 = playSeVer2( spep_5 + 40, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE027, 90 );
SE028 = playSeVer2( spep_5 + 40, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE029 = playSeVer2( spep_5 + 72, 1183, "",spep_5 + 130, 0, 6, -1);
SE030 = playSeVer2( spep_5 + 72, 1121, "",spep_5 + 130, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 72, SE030, 65 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 84;
------------------------------------------------------
--蹴りで敵が飛ばされている
------------------------------------------------------
-- ** エフェクト等 ** --
falling_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, falling_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 20, falling_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, falling_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 20, falling_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, falling_f, 0 );
setEffRotateKey( spep_6 + 20, falling_f, 0 );
setEffAlphaKey( spep_6 + 0, falling_f, 255 );
setEffAlphaKey( spep_6 + 18, falling_f, 255 );
setEffAlphaKey( spep_6 + 19, falling_f, 255 );
setEffAlphaKey( spep_6 + 20, falling_f, 0 );

-- ** エフェクト等 ** --
falling_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, falling_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 20, falling_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, falling_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 20, falling_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, falling_b, 0 );
setEffRotateKey( spep_6 + 20, falling_b, 0 );
setEffAlphaKey( spep_6 + 0, falling_b, 255 );
setEffAlphaKey( spep_6 + 18, falling_b, 255 );
setEffAlphaKey( spep_6 + 19, falling_b, 255 );
setEffAlphaKey( spep_6 + 20, falling_b, 0 );

--敵の動き
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -149, 357.7 , 0 );
setMoveKey( spep_6 + 2, 1, -114.9, 289.3 , 0 );
setMoveKey( spep_6 + 4, 1, -83.5, 225.4 , 0 );
setMoveKey( spep_6 + 6, 1, -51.6, 174.6 , 0 );
setMoveKey( spep_6 + 8, 1, -30.7, 119.9 , 0 );
setMoveKey( spep_6 + 10, 1, -0.6, 64.7 , 0 );
setMoveKey( spep_6 + 12, 1, 32.2, 27.1 , 0 );
setMoveKey( spep_6 + 14, 1, 50.9, -12 , 0 );
setMoveKey( spep_6 + 16, 1, 68.1, -64.7 , 0 );
setMoveKey( spep_6 + 18, 1, 97.1, -112 , 0 );
setMoveKey( spep_6 + 19, 1, 131.3, -145.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.15,0.15);
setScaleKey( spep_6 + 2, 1, 0.35,0.35);
setScaleKey( spep_6 + 4, 1, 0.56,0.56);
setScaleKey( spep_6 + 6, 1, 0.77,0.77);
setScaleKey( spep_6 + 8, 1, 0.96,0.96);
setScaleKey( spep_6 + 10, 1, 1.16,1.16);
setScaleKey( spep_6 + 12, 1, 1.37,1.37);
setScaleKey( spep_6 + 14, 1, 1.57,1.57);
setScaleKey( spep_6 + 16, 1, 1.76,1.76);
setScaleKey( spep_6 + 18, 1, 1.95,1.95);
setScaleKey( spep_6 + 19, 1, 2.14,2.14);

setRotateKey( spep_6 + 0, 1, 82 );
setRotateKey( spep_6 + 19, 1, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 24, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 20;
------------------------------------------------------
--敵が飛ばされて崖に激突する
------------------------------------------------------
-- ** エフェクト等 ** --
collision_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, collision_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, collision_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision_f, 0 );
setEffRotateKey( spep_7 + 120, collision_f, 0 );
setEffAlphaKey( spep_7 + 0, collision_f, 255 );
setEffAlphaKey( spep_7 + 120, collision_f, 255 );

-- ** エフェクト等 ** --
collision_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, collision_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, collision_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision_b, 0 );
setEffRotateKey( spep_7 + 120, collision_b, 0 );
setEffAlphaKey( spep_7 + 0, collision_b, 255 );
setEffAlphaKey( spep_7 + 120, collision_b, 255 );

--敵の動き
setDisp( spep_7-3 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -351.9, 193.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -302.6, 150.6 , 0 );
setMoveKey( spep_7-3 + 4, 1, -253.2, 107.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -203.9, 63.8 , 0 );
setMoveKey( spep_7-3 + 8, 1, -154.5, 20.4 , 0 );
setMoveKey( spep_7-3 + 10, 1, -105.2, -23 , 0 );
setMoveKey( spep_7-3 + 12, 1, -55.8, -66.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, -6.5, -109.8 , 0 );
setMoveKey( spep_7-3 + 16, 1, 42.9, -153.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, 42.9, -153.2 , 0 );

setScaleKey( spep_7 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_7 + 2, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 18, 1, 0.32, 0.32 );

setRotateKey( spep_7 + 0, 1, 54.2 );
--setRotateKey( spep_7-3 + 2, 1, 54.8 );
setRotateKey( spep_7-3 + 4, 1, 55.5 );
setRotateKey( spep_7-3 + 6, 1, 56.1 );
setRotateKey( spep_7-3 + 8, 1, 56.7 );
setRotateKey( spep_7-3 + 10, 1, 57.3 );
setRotateKey( spep_7-3 + 12, 1, 58 );
setRotateKey( spep_7-3 + 14, 1, 58.6 );
setRotateKey( spep_7-3 + 16, 1, 59.2 );
setRotateKey( spep_7-3 + 18, 1, 59.2 );

--SE
--岩激突
SE031 = playSeVer2( spep_7 + 10, 1159, "",0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage(spep_7 +16);
endPhase( spep_7 + 116 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構え～突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 122, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122, style, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 122, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 120, style, 255 );
setEffAlphaKey( spep_0 + 121, style, 255 );
setEffAlphaKey( spep_0 + 122, style, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 108, 10, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 124 );
setStartTimeMs( SE001,  200 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 180 );

--構える
SE003 = playSeVer2( spep_0 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 75 );
SE005 = playSeVer2( spep_0 + 16, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 16, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE006 = playSeVer2( spep_0 + 24, 1072, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 86, 1182, "",spep_0 + 140, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 86, 1117, "",spep_0 + 140, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 86, 9, "",spep_0 + 140, 0, 8, -1);
SE010 = playSeVer2( spep_0 + 88, 1167, "",spep_0 + 140, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 88, SE010, 54 );

--白フェード
entryFade( spep_0 +78 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
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
-- ** 次の準備 ** --
spep_1= spep_0 + 122;
------------------------------------------------------
--パンチ→キック→肘うち
------------------------------------------------------
-- ** エフェクト等 ** --
panti_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panti_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panti_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panti_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panti_f, 0 );
setEffRotateKey( spep_1 + 96, panti_f, 0 );
setEffAlphaKey( spep_1 + 0, panti_f, 255 );
setEffAlphaKey( spep_1 + 94, panti_f, 255 );
setEffAlphaKey( spep_1 + 95, panti_f, 255 );
setEffAlphaKey( spep_1 + 96, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_1 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, panti_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panti_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panti_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panti_b, 0 );
setEffRotateKey( spep_1 + 96, panti_b, 0 );
setEffAlphaKey( spep_1 + 0, panti_b, 255 );
setEffAlphaKey( spep_1 + 94, panti_b, 255 );
setEffAlphaKey( spep_1 + 95, panti_b, 255 );
setEffAlphaKey( spep_1 + 96, panti_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 6, 1, 106 );
changeAnime( spep_1-3 + 34, 1, 108 );
changeAnime( spep_1-3 + 76, 1, 107 );

setMoveKey( spep_1 + 0, 1, 124.3, -50.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 122.6, -51 , 0 );
setMoveKey( spep_1-3 + 5, 1, 120.9, -51.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, 28.4, 23.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, 85.5, -29.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, -11, -31.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 49.6, -14.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, 56.6, -48.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 20.7, -30.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, -17.2, -32.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 43.5, -15.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 16.1, -31 , 0 );
setMoveKey( spep_1-3 + 24, 1, 14.5, -31.1 , 0 );
setMoveKey( spep_1-3 + 26, 1, 13, -31.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 11.5, -31.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 9.9, -31.7 , 0 );
setMoveKey( spep_1-3 + 33, 1, 8.4, -31.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 97.8, 44.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 155, -7.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 58.7, -9.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 119.6, 7.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 126.7, -26.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 91.1, -8.4 , 0 );
setMoveKey( spep_1-3 + 46, 1, 115.5, 6.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, 52.1, -10.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 87.1, -8.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 85.7, -8.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, 84.4, -9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 83.1, -9.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 81.7, -9.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 105.9, -21.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 130.1, -32.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 154.4, -44.8 , 0 );
setMoveKey( spep_1-3 + 66, 1, 155.3, -45 , 0 );
setMoveKey( spep_1-3 + 68, 1, 156.3, -45.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, 157.3, -45.4 , 0 );
setMoveKey( spep_1-3 + 72, 1, 158.2, -45.6 , 0 );
setMoveKey( spep_1-3 + 75, 1, 159.1, -45.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, 75.1, 125.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 152.9, 47 , 0 );
setMoveKey( spep_1-3 + 80, 1, 14.2, 44.9 , 0 );
setMoveKey( spep_1-3 + 82, 1, 133.4, 88.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 117.1, 12.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, 76.4, 46.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 114.7, 69 , 0 );
setMoveKey( spep_1-3 + 90, 1, 175.8, 21 , 0 );
setMoveKey( spep_1-3 + 92, 1, 234.2, 21.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 251.9, 46.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 351.7, 21 , 0 );
setMoveKey( spep_1-3 + 98, 1, 410.9, 21 , 0 );

setScaleKey( spep_1 + 0, 1, 2.24,2.24);
setScaleKey( spep_1-3 + 5, 1, 2.25,2.25);
setScaleKey( spep_1-3 + 6, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 10, 1, 1.94,1.94);
setScaleKey( spep_1-3 + 12, 1, 1.95,1.95);
setScaleKey( spep_1-3 + 14, 1, 1.95,1.95);
setScaleKey( spep_1-3 + 16, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 20, 1, 1.96,1.96);
setScaleKey( spep_1-3 + 22, 1, 1.98,1.98);
setScaleKey( spep_1-3 + 24, 1, 1.98,1.98);
setScaleKey( spep_1-3 + 26, 1, 1.99,1.99);
setScaleKey( spep_1-3 + 30, 1, 1.99,1.99);
setScaleKey( spep_1-3 + 33, 1, 2,2);
setScaleKey( spep_1-3 + 36, 1, 2,2);
setScaleKey( spep_1-3 + 38, 1, 2.01,2.01);
setScaleKey( spep_1-3 + 40, 1, 2.01,2.01);
setScaleKey( spep_1-3 + 42, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 46, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 48, 1, 2.03,2.03);
setScaleKey( spep_1-3 + 50, 1, 2.03,2.03);
setScaleKey( spep_1-3 + 52, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 56, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 58, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 60, 1, 2.46,2.46);
setScaleKey( spep_1-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_1-3 + 64, 1, 3.26,3.26);
setScaleKey( spep_1-3 + 66, 1, 3.27,3.27);
setScaleKey( spep_1-3 + 68, 1, 3.27,3.27);
setScaleKey( spep_1-3 + 70, 1, 3.28,3.28);
setScaleKey( spep_1-3 + 72, 1, 3.3,3.3);
setScaleKey( spep_1-3 + 75, 1, 3.3,3.3);
setScaleKey( spep_1-3 + 76, 1, 1.02,1.02);
setScaleKey( spep_1-3 + 78, 1, 1.03,1.03);
setScaleKey( spep_1-3 + 86, 1, 1.03,1.03);
setScaleKey( spep_1-3 + 88, 1, 1.04,1.04);
setScaleKey( spep_1-3 + 98, 1, 1.04,1.04);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 5, 1, 0 );
setRotateKey( spep_1-3 + 6, 1, -6.1 );
setRotateKey( spep_1-3 + 8, 1, -6.2 );
setRotateKey( spep_1-3 + 33, 1, -6.2 );
setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 75, 1, 0 );
setRotateKey( spep_1-3 + 76, 1, -28.1 );
setRotateKey( spep_1-3 + 78, 1, -28.2 );
setRotateKey( spep_1-3 + 88, 1, -28.2 );
setRotateKey( spep_1-3 + 90, 1, -25.8 );
setRotateKey( spep_1-3 + 92, 1, -23.4 );
setRotateKey( spep_1-3 + 94, 1, -21 );
setRotateKey( spep_1-3 + 96, 1, -18.6 );
setRotateKey( spep_1-3 + 98, 1, -16.2 );

--SE
--初手パンチ
SE011 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_1 + 32, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE013, 79 );
SE014 = playSeVer2( spep_1 + 32, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 32, SE014, 80 );
SE015 = playSeVer2( spep_1 + 32, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE016 = playSeVer2( spep_1 + 64, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE016, 71 );

--ひじうち
SE017 = playSeVer2( spep_1 + 74, 1187, "",spep_1 + 122, 0, 20, -1);
SE018 = playSeVer2( spep_1 + 74, 1190, "",spep_1 + 108, 0, 14, -1);

--敵とんでいく
SE019 = playSeVer2( spep_1 + 88, 1183, "",spep_1 + 236, 0, 36, -1);
SE020 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 96;
------------------------------------------------------
--敵が吹っ飛んでいる
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, fly, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fly, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, fly, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fly, 0 );
setEffRotateKey( spep_2 + 36, fly, 0 );
setEffAlphaKey( spep_2 + 0, fly, 255 );
setEffAlphaKey( spep_2 + 34, fly, 255 );
setEffAlphaKey( spep_2 + 35, fly, 255 );
setEffAlphaKey( spep_2 + 36, fly, 0 );

--敵側の動き
changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1, -286.4, -65.6 , 0 );
setMoveKey( spep_2 + 2, 1, -280.6, -55.3 , 0 );
setMoveKey( spep_2 + 4, 1, -255, -50.6 , 0 );
setMoveKey( spep_2 + 6, 1, -238.5, -52.3 , 0 );
setMoveKey( spep_2 + 8, 1, -202, -34.6 , 0 );
setMoveKey( spep_2 + 10, 1, -202.6, -47.4 , 0 );
setMoveKey( spep_2 + 12, 1, -161, -24.3 , 0 );
setMoveKey( spep_2 + 14, 1, -172.4, -37.4 , 0 );
setMoveKey( spep_2 + 16, 1, -112.3, -6.4 , 0 );
setMoveKey( spep_2 + 18, 1, -136.1, -39.6 , 0 );
setMoveKey( spep_2 + 20, 1, -69.4, -24.3 , 0 );
setMoveKey( spep_2 + 22, 1, -96.4, -21.3 , 0 );
setMoveKey( spep_2 + 24, 1, -29.9, 24.3 , 0 );
setMoveKey( spep_2 + 26, 1, -51.7, -18.7 , 0 );
setMoveKey( spep_2 + 28, 1, 8.1, -7.2 , 0 );
setMoveKey( spep_2 + 30, 1, 39.9, 2.8 , 0 );
setMoveKey( spep_2 + 32, 1, 13.2, 5.9 , 0 );
setMoveKey( spep_2 + 34, 1, 79.8, 51.7 , 0 );
setMoveKey( spep_2 + 35, 1, 58.3, 8.7 , 0 );

setScaleKey( spep_2 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 4, 1, 0.26, 0.27 );
setScaleKey( spep_2 + 6, 1, 0.3, 0.31 );
setScaleKey( spep_2 + 8, 1, 0.35, 0.37 );
setScaleKey( spep_2 + 10, 1, 0.41, 0.43 );
setScaleKey( spep_2 + 12, 1, 0.47, 0.49 );
setScaleKey( spep_2 + 14, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 16, 1, 0.6, 0.63 );
setScaleKey( spep_2 + 18, 1, 0.68, 0.7 );
setScaleKey( spep_2 + 20, 1, 0.75, 0.78 );
setScaleKey( spep_2 + 22, 1, 0.83, 0.86 );
setScaleKey( spep_2 + 24, 1, 0.91, 0.94 );
setScaleKey( spep_2 + 26, 1, 1, 1.02 );
setScaleKey( spep_2 + 28, 1, 1.08, 1.1 );
setScaleKey( spep_2 + 30, 1, 1.17, 1.19 );
setScaleKey( spep_2 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_2 + 34, 1, 1.35, 1.36 );
setScaleKey( spep_2 + 35, 1, 1.44, 1.45 );

setRotateKey( spep_2 + 0, 1, -13.8 );
setRotateKey( spep_2 + 2, 1, -13.2 );
setRotateKey( spep_2 + 4, 1, -12.5 );
setRotateKey( spep_2 + 6, 1, -11.7 );
setRotateKey( spep_2 + 8, 1, -11 );
setRotateKey( spep_2 + 10, 1, -10.3 );
setRotateKey( spep_2 + 12, 1, -9.5 );
setRotateKey( spep_2 + 14, 1, -8.8 );
setRotateKey( spep_2 + 16, 1, -8.1 );
setRotateKey( spep_2 + 18, 1, -7.3 );
setRotateKey( spep_2 + 20, 1, -6.6 );
setRotateKey( spep_2 + 22, 1, -5.9 );
setRotateKey( spep_2 + 24, 1, -5.1 );
setRotateKey( spep_2 + 26, 1, -4.4 );
setRotateKey( spep_2 + 28, 1, -3.7 );
setRotateKey( spep_2 + 30, 1, -2.9 );
setRotateKey( spep_2 + 32, 1, -2.2 );
setRotateKey( spep_2 + 34, 1, -1.5 );
setRotateKey( spep_2 + 35, 1, -0.7 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 36;
------------------------------------------------------
--波打つ
------------------------------------------------------
-- ** エフェクト等 ** --
wave_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, wave_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, wave_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, wave_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, wave_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave_f, 0 );
setEffRotateKey( spep_3 + 60, wave_f, 0 );
setEffAlphaKey( spep_3 + 0, wave_f, 255 );
setEffAlphaKey( spep_3 + 60, wave_f, 255 );

-- ** エフェクト等 ** --
wave_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, wave_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, wave_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, wave_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, wave_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave_b, 0 );
setEffRotateKey( spep_3 + 60, wave_b, 0 );
setEffAlphaKey( spep_3 + 0, wave_b, 255 );
setEffAlphaKey( spep_3 + 60, wave_b, 255 );

--敵側の動き
setDisp( spep_3 + 55, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -312.5, 275.5 , 0 );
setMoveKey( spep_3 + 2, 1, -286.8, 258.6 , 0 );
setMoveKey( spep_3 + 4, 1, -260.9, 241.6 , 0 );
setMoveKey( spep_3 + 6, 1, -234.9, 224.6 , 0 );
setMoveKey( spep_3 + 8, 1, -208.7, 207.3 , 0 );
setMoveKey( spep_3 + 10, 1, -182.4, 190 , 0 );
setMoveKey( spep_3 + 12, 1, -155.8, 172.6 , 0 );
setMoveKey( spep_3 + 14, 1, -129.1, 155 , 0 );
setMoveKey( spep_3 + 16, 1, -102.3, 137.3 , 0 );
setMoveKey( spep_3 + 18, 1, -75.2, 119.5 , 0 );
setMoveKey( spep_3 + 20, 1, -48, 101.6 , 0 );
setMoveKey( spep_3 + 22, 1, -20.7, 83.6 , 0 );
setMoveKey( spep_3 + 24, 1, 6.9, 65.4 , 0 );
setMoveKey( spep_3 + 26, 1, 34.5, 47.2 , 0 );
setMoveKey( spep_3 + 28, 1, 62.5, 28.8 , 0 );
setMoveKey( spep_3 + 30, 1, 90.5, 10.4 , 0 );
setMoveKey( spep_3 + 32, 1, 118.7, -8.2 , 0 );
setMoveKey( spep_3 + 34, 1, 147.1, -26.9 , 0 );
setMoveKey( spep_3 + 36, 1, 175.6, -45.7 , 0 );
setMoveKey( spep_3 + 38, 1, 204.4, -64.7 , 0 );
setMoveKey( spep_3 + 40, 1, 206.8, -65.7 , 0 );
setMoveKey( spep_3 + 42, 1, 209.3, -66.7 , 0 );
setMoveKey( spep_3 + 44, 1, 211.8, -67.7 , 0 );
setMoveKey( spep_3 + 46, 1, 214.4, -68.8 , 0 );
setMoveKey( spep_3 + 48, 1, 216.9, -69.8 , 0 );
setMoveKey( spep_3 + 50, 1, 219.5, -70.8 , 0 );
setMoveKey( spep_3 + 52, 1, 222, -71.8 , 0 );
setMoveKey( spep_3 + 54, 1, 224.6, -72.9 , 0 );
setMoveKey( spep_3 + 55, 1, 227.2, -73.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 2, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 4, 1, 0.58, 0.57 );
setScaleKey( spep_3 + 6, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 8, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 18, 1, 0.27, 0.28 );
setScaleKey( spep_3 + 20, 1, 0.25, 0.26 );
setScaleKey( spep_3 + 22, 1, 0.23, 0.24 );
setScaleKey( spep_3 + 24, 1, 0.21, 0.22 );
setScaleKey( spep_3 + 26, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 28, 1, 0.18, 0.19 );
setScaleKey( spep_3 + 30, 1, 0.17, 0.18 );
setScaleKey( spep_3 + 32, 1, 0.16, 0.17 );
setScaleKey( spep_3 + 34, 1, 0.15, 0.16 );
setScaleKey( spep_3 + 36, 1, 0.15, 0.16 );
setScaleKey( spep_3 + 38, 1, 0.14, 0.15 );
setScaleKey( spep_3 + 40, 1, 0.14, 0.15 );
setScaleKey( spep_3 + 42, 1, 0.13, 0.14 );
setScaleKey( spep_3 + 44, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 46, 1, 0.12, 0.13 );
setScaleKey( spep_3 + 48, 1, 0.11, 0.12 );
setScaleKey( spep_3 + 50, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 52, 1, 0.1, 0.11 );
setScaleKey( spep_3 + 54, 1, 0.1, 0.1 );
setScaleKey( spep_3 + 55, 1, 0.09, 0.1 );

setRotateKey( spep_3 + 0, 1, 86.5 );
setRotateKey( spep_3 + 55, 1, 86.5 );

--SE
--水しぶき
SE021 = playSeVer2( spep_3 + 14, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE021, 172 );
setStartTimeMs( SE021,  350 );

--悟空追いかける
SE022 = playSeVer2( spep_3 + 12, 1172, "",spep_3 + 114, 6, 48, -1);
setSeVolumeByWorkId( spep_3 + 12, SE022, 82 );
setStartTimeMs( SE022,  150 );
setPitch( spep_3 + 12, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );
SE023 = playSeVer2( spep_3 + 16, 1312, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 16, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE024, 119 );
SE025 = playSeVer2( spep_3 + 16, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE025, 145 );

--白フェード
entryFade( spep_3 +52 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
------------------------------------------------------
--回転蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 84, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 84, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 82, kick_f, 255 );
setEffAlphaKey( spep_5 + 83, kick_f, 255 );
setEffAlphaKey( spep_5 + 84, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 84, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 84, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 82, kick_b, 255 );
setEffAlphaKey( spep_5 + 83, kick_b, 255 );
setEffAlphaKey( spep_5 + 84, kick_b, 0 );

--敵側の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 42, 1, 108 );

setMoveKey( spep_5 + 0, 1, -423.5, 56.7 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -403.6, 54.3 , 0 );
setMoveKey( spep_5-3 + 4, 1, -383.8, 52 , 0 );
setMoveKey( spep_5-3 + 6, 1, -363.9, 49.6 , 0 );
setMoveKey( spep_5-3 + 8, 1, -344.1, 47.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, -324.2, 44.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, -304.3, 42.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -284.5, 40.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, -264.6, 37.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, -244.7, 35.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, -224.9, 33 , 0 );
setMoveKey( spep_5-3 + 22, 1, -205, 30.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, -185.2, 28.3 , 0 );
setMoveKey( spep_5-3 + 26, 1, -165.3, 25.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, -145.4, 23.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, -125.6, 21.1 , 0 );
setMoveKey( spep_5-3 + 32, 1, -105.7, 18.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, -85.8, 16.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, -66, 14 , 0 );
setMoveKey( spep_5-3 + 38, 1, -46.1, 11.7 , 0 );
setMoveKey( spep_5-3 + 41, 1, -26.2, 9.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 118.4, -80.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, -11.1, -82.7 , 0 );
setMoveKey( spep_5-3 + 46, 1, 58.3, -138.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 61.1, -41.6 , 0 );
setMoveKey( spep_5-3 + 50, 1, 10.2, -135.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 106.1, -66.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 69, -49.4 , 0 );
setMoveKey( spep_5-3 + 56, 1, 72.4, -98.3 , 0 );
setMoveKey( spep_5-3 + 58, 1, 73.9, -54.4 , 0 );
setMoveKey( spep_5-3 + 60, 1, 77.4, -103.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 96.6, -94.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, 81.4, -95.5 , 0 );
setMoveKey( spep_5-3 + 66, 1, 83.6, -109.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 84.8, -110.7 , 0 );
setMoveKey( spep_5-3 + 70, 1, 86, -111.9 , 0 );
setMoveKey( spep_5-3 + 72, 1, 87.2, -113.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 76.9, -84.4 , 0 );
setMoveKey( spep_5-3 + 76, 1, 158.2, -186.3 , 0 );
setMoveKey( spep_5-3 + 78, 1, 239.5, -288.2 , 0 );
setMoveKey( spep_5-3 + 80, 1, 331, -416.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 422.6, -545.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 514.1, -673.9 , 0 );
setMoveKey( spep_5-3 + 86, 1, 605.6, -802.5 , 0 );

setScaleKey( spep_5 + 0, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 41, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 42, 1, 2.88,2.88);
setScaleKey( spep_5-3 + 86, 1, 2.88,2.88);

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 41, 1, 0 );
setRotateKey( spep_5-3 + 42, 1, 86 );
setRotateKey( spep_5-3 + 86, 1, 86 );

--SE
--体翻す
SE026 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);

--蹴り
SE027 = playSeVer2( spep_5 + 40, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE027, 90 );
SE028 = playSeVer2( spep_5 + 40, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE029 = playSeVer2( spep_5 + 72, 1183, "",spep_5 + 130, 0, 6, -1);
SE030 = playSeVer2( spep_5 + 72, 1121, "",spep_5 + 130, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 72, SE030, 65 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 84;
------------------------------------------------------
--蹴りで敵が飛ばされている
------------------------------------------------------
-- ** エフェクト等 ** --
falling_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, falling_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 20, falling_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, falling_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 20, falling_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, falling_f, 0 );
setEffRotateKey( spep_6 + 20, falling_f, 0 );
setEffAlphaKey( spep_6 + 0, falling_f, 255 );
setEffAlphaKey( spep_6 + 18, falling_f, 255 );
setEffAlphaKey( spep_6 + 19, falling_f, 255 );
setEffAlphaKey( spep_6 + 20, falling_f, 0 );

-- ** エフェクト等 ** --
falling_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, falling_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 20, falling_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, falling_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 20, falling_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, falling_b, 0 );
setEffRotateKey( spep_6 + 20, falling_b, 0 );
setEffAlphaKey( spep_6 + 0, falling_b, 255 );
setEffAlphaKey( spep_6 + 18, falling_b, 255 );
setEffAlphaKey( spep_6 + 19, falling_b, 255 );
setEffAlphaKey( spep_6 + 20, falling_b, 0 );

--敵の動き
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -149, 357.7 , 0 );
setMoveKey( spep_6 + 2, 1, -114.9, 289.3 , 0 );
setMoveKey( spep_6 + 4, 1, -83.5, 225.4 , 0 );
setMoveKey( spep_6 + 6, 1, -51.6, 174.6 , 0 );
setMoveKey( spep_6 + 8, 1, -30.7, 119.9 , 0 );
setMoveKey( spep_6 + 10, 1, -0.6, 64.7 , 0 );
setMoveKey( spep_6 + 12, 1, 32.2, 27.1 , 0 );
setMoveKey( spep_6 + 14, 1, 50.9, -12 , 0 );
setMoveKey( spep_6 + 16, 1, 68.1, -64.7 , 0 );
setMoveKey( spep_6 + 18, 1, 97.1, -112 , 0 );
setMoveKey( spep_6 + 19, 1, 131.3, -145.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.15,0.15);
setScaleKey( spep_6 + 2, 1, 0.35,0.35);
setScaleKey( spep_6 + 4, 1, 0.56,0.56);
setScaleKey( spep_6 + 6, 1, 0.77,0.77);
setScaleKey( spep_6 + 8, 1, 0.96,0.96);
setScaleKey( spep_6 + 10, 1, 1.16,1.16);
setScaleKey( spep_6 + 12, 1, 1.37,1.37);
setScaleKey( spep_6 + 14, 1, 1.57,1.57);
setScaleKey( spep_6 + 16, 1, 1.76,1.76);
setScaleKey( spep_6 + 18, 1, 1.95,1.95);
setScaleKey( spep_6 + 19, 1, 2.14,2.14);

setRotateKey( spep_6 + 0, 1, 82 );
setRotateKey( spep_6 + 19, 1, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 24, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 20;
------------------------------------------------------
--敵が飛ばされて崖に激突する
------------------------------------------------------
-- ** エフェクト等 ** --
collision_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, collision_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 120, collision_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision_f, 0 );
setEffRotateKey( spep_7 + 120, collision_f, 0 );
setEffAlphaKey( spep_7 + 0, collision_f, 255 );
setEffAlphaKey( spep_7 + 120, collision_f, 255 );

-- ** エフェクト等 ** --
collision_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, collision_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, collision_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision_b, 0 );
setEffRotateKey( spep_7 + 120, collision_b, 0 );
setEffAlphaKey( spep_7 + 0, collision_b, 255 );
setEffAlphaKey( spep_7 + 120, collision_b, 255 );

--敵の動き
setDisp( spep_7-3 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -351.9, 193.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -302.6, 150.6 , 0 );
setMoveKey( spep_7-3 + 4, 1, -253.2, 107.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -203.9, 63.8 , 0 );
setMoveKey( spep_7-3 + 8, 1, -154.5, 20.4 , 0 );
setMoveKey( spep_7-3 + 10, 1, -105.2, -23 , 0 );
setMoveKey( spep_7-3 + 12, 1, -55.8, -66.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, -6.5, -109.8 , 0 );
setMoveKey( spep_7-3 + 16, 1, 42.9, -153.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, 42.9, -153.2 , 0 );

setScaleKey( spep_7 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_7 + 2, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 18, 1, 0.32, 0.32 );

setRotateKey( spep_7 + 0, 1, 54.2 );
--setRotateKey( spep_7-3 + 2, 1, 54.8 );
setRotateKey( spep_7-3 + 4, 1, 55.5 );
setRotateKey( spep_7-3 + 6, 1, 56.1 );
setRotateKey( spep_7-3 + 8, 1, 56.7 );
setRotateKey( spep_7-3 + 10, 1, 57.3 );
setRotateKey( spep_7-3 + 12, 1, 58 );
setRotateKey( spep_7-3 + 14, 1, 58.6 );
setRotateKey( spep_7-3 + 16, 1, 59.2 );
setRotateKey( spep_7-3 + 18, 1, 59.2 );

--SE
--岩激突
SE031 = playSeVer2( spep_7 + 10, 1159, "",0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage(spep_7 +16);
endPhase( spep_7 + 116 );
end