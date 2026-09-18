--1024320:超サイヤ人ベジータ_ファイナルブリッドアタック
--sp_effect_a1_00350

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
SP_01=	159733	;--	冒頭気溜め
SP_02=	159734	;--	ジャンプ
SP_03=	159735	;--	正面接近
SP_04=	159736	;--	顔アップ接近→ビーム発射
SP_05=	159737	;--	敵ビーム被弾：敵より前
SP_06=	159738	;--	敵ビーム被弾：敵より後ろ
SP_07=	159739	;--	ドーム状爆発
SP_08=	159740	;--	ベジータ正面顔アップ
SP_09=	159741	;--	気弾連打
SP_10=	159742	;--	爆発煙へ気弾着弾ラッシュ
SP_11=	159743	;--	正面向き気弾連打
SP_12=	159744	;--	ラスト爆発シーン

--エフェクト(てき)
SP_01x=	159733	;--	冒頭気溜め	
SP_02x=	159745	;--	ジャンプ	(敵)
SP_03x=	159735	;--	正面接近	
SP_04x=	159746	;--	顔アップ接近→ビーム発射	(敵)
SP_05x=	159737	;--	敵ビーム被弾：敵より前	
SP_06x=	159738	;--	敵ビーム被弾：敵より後ろ	
SP_07x=	159777	;--	ドーム状爆発	
SP_08x=	159740	;--	ベジータ正面顔アップ	
SP_09x=	159747	;--	気弾連打	(敵)
SP_10x=	159778	;--	爆発煙へ気弾着弾ラッシュ	
SP_11x=	159743	;--	正面向き気弾連打	
SP_12x=	159744	;--	ラスト爆発シーン	

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
--冒頭気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 74, tame, 255 );
setEffAlphaKey( spep_0 + 75, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );

--気ダメ
SE002 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1024, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 1147, "",spep_0 + 112, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 76;
------------------------------------------------------
--ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_1 + 32, jump, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 32, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 32, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 30, jump, 255 );
setEffAlphaKey( spep_1 + 31, jump, 255 );
setEffAlphaKey( spep_1 + 32, jump, 0 );

--SE
--踏み出す
SE005 = playSeVer2( spep_1 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE005, 119 );
SE006 = playSeVer2( spep_1 + 6, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 6, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 32;
------------------------------------------------------
--正面接近
------------------------------------------------------
-- ** エフェクト等 ** --
approach = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approach, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, approach, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approach, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, approach, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approach, 0 );
setEffRotateKey( spep_2 + 46, approach, 0 );
setEffAlphaKey( spep_2 + 0, approach, 255 );
setEffAlphaKey( spep_2 + 44, approach, 255 );
setEffAlphaKey( spep_2 + 45, approach, 255 );
setEffAlphaKey( spep_2 + 46, approach, 0 );

--顔カットインのタイミング指定
spep_x=spep_2 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);
]]
--SE
--向かってくる
SE008 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

--顔カットイン
SE009 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かってくる
SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE010, 53 );
setTimeStretch( SE010, 1.43, 30, 4 );
SE011 = playSeVer2( spep_2 + 20, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 46;
------------------------------------------------------
--顔アップ接近→ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 90, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 88, beam, 255 );
setEffAlphaKey( spep_3 + 89, beam, 255 );
setEffAlphaKey( spep_3 + 90, beam, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE001, 0 );
    
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

--SE
--気弾発射
SE012 = playSeVer2( spep_3 + 44, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 66, 1145, "",spep_3 + 132, 6, 20, -1);
setSeVolumeByWorkId( spep_3 + 66, SE013, 82 );
setStartTimeMs( SE013,  300 );
SE014 = playSeVer2( spep_3 + 62, 1022, "",spep_3 + 128, 0, 12, -1);
SE015 = playSeVer2( spep_3 + 62, 1021, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 62, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE017, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 90;
------------------------------------------------------
--敵ビーム被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 255 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 255 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 106 );
changeAnime( spep_4-3 + 40, 1, 108 );

setMoveKey( spep_4 + 0, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_4-3 + 32, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 35, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 36, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_4-3 + 39, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 251.4, 169.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 322.6, 193.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 393.8, 218.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 465.1, 243 , 0 );
setMoveKey( spep_4-3 + 48, 1, 536.3, 267.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 607.5, 292.2 , 0 );
setMoveKey( spep_4-3 + 52, 1, 678.7, 316.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 750, 341.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, 821.2, 366 , 0 );
setMoveKey( spep_4-1 + 58, 1, 892.4, 390.5 , 0 );

setScaleKey( spep_4 + 0, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 35, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 39, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 40, 1, 2.59, 2.59 );
setScaleKey( spep_4-1 + 58, 1, 2.59, 2.59 );

setRotateKey( spep_4 + 0, 1, -18.8 );
setRotateKey( spep_4-3 + 35, 1, -18.8 );
setRotateKey( spep_4-3 + 36, 1, -41.3 );
setRotateKey( spep_4-3 + 39, 1, -41.3 );
setRotateKey( spep_4-3 + 40, 1, -5.8 );
setRotateKey( spep_4-3 + 42, 1, -5.6 );
setRotateKey( spep_4-3 + 44, 1, -5.5 );
setRotateKey( spep_4-3 + 46, 1, -5.3 );
setRotateKey( spep_4-3 + 48, 1, -5.2 );
setRotateKey( spep_4-3 + 50, 1, -5 );
setRotateKey( spep_4-3 + 52, 1, -4.8 );
setRotateKey( spep_4-3 + 54, 1, -4.7 );
setRotateKey( spep_4-3 + 56, 1, -4.5 );
setRotateKey( spep_4-1 + 58, 1, -4.3 );

--SE
--敵ヒット
SE018 = playSeVer2( spep_4 + 6, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 6, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 56;
------------------------------------------------------
--ドーム状爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 56, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 54, explosion, 255 );
setEffAlphaKey( spep_5 + 55, explosion, 255 );
setEffAlphaKey( spep_5 + 56, explosion, 0 );

--SE
--爆発
SE021 = playSeVer2( spep_5 + 0, 1159, "",spep_5 + 132, 0, 84, -1);
SE022 = playSeVer2( spep_5 + 0, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56;

------------------------------------------------------
--ベジータ正面顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, face , 0, 0, 0 );
setEffMoveKey( spep_6 + 80, face , 0, 0, 0 );
setEffScaleKey( spep_6 + 0, face , 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, face , 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, face , 0 );
setEffRotateKey( spep_6 + 80, face , 0 );
setEffAlphaKey( spep_6 + 0, face , 255 );
setEffAlphaKey( spep_6 + 80, face , 255 );

--SE
--顔アップ
SE023 = playSeVer2( spep_6 + 0, 1068, "",spep_6 + 100, 0, 14, -1);
SE024 = playSeVer2( spep_6 + 0, 1264, "",spep_6 + 100, 0, 14, -1);

--白フェード
entryFade( spep_6 +72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 86, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8= spep_7 + 94;
------------------------------------------------------
--気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, kidan2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan2, 0 );
setEffRotateKey( spep_8 + 76, kidan2, 0 );
setEffAlphaKey( spep_8 + 0, kidan2, 255 );
setEffAlphaKey( spep_8 + 74, kidan2, 255 );
setEffAlphaKey( spep_8 + 75, kidan2, 255 );
setEffAlphaKey( spep_8 + 76, kidan2, 0 );

--SE
--連続気弾
SE026 = playSeVer2( spep_8 + 0, 1021, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_8 + 0, 1016, "",spep_8 + 18, 0, 8, -1);
SE028 = playSeVer2( spep_8 + 0, 1358, "",spep_8 + 18, 0, 8, -1);
SE029 = playSeVer2( spep_8 + 10, 1016, "",spep_8 + 28, 0, 6, -1);
SE030 = playSeVer2( spep_8 + 10, 1358, "",spep_8 + 28, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 10, SE030, 88 );
SE031 = playSeVer2( spep_8 + 18, 1016, "",spep_8 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 18, SE031, 81 );
SE032 = playSeVer2( spep_8 + 18, 1358, "",spep_8 + 36, 0, 6, -1);
SE033 = playSeVer2( spep_8 + 28, 1016, "",spep_8 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 28, SE033, 86 );
SE034 = playSeVer2( spep_8 + 28, 1358, "",spep_8 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 28, SE034, 81 );
SE035 = playSeVer2( spep_8 + 38, 1016, "",spep_8 + 54, 0, 6, -1);
SE036 = playSeVer2( spep_8 + 38, 1358, "",spep_8 + 54, 0, 6, -1);
SE037 = playSeVer2( spep_8 + 46, 1016, "",spep_8 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_8 + 46, SE037, 82 );
SE038 = playSeVer2( spep_8 + 46, 1358, "",spep_8 + 64, 0, 8, -1);
SE020 = playSeVer2( spep_8 + 56, 1016, "",spep_8 + 72, 0, 6, -1);
SE039 = playSeVer2( spep_8 + 56, 1358, "",spep_8 + 72, 0, 6, -1);
SE040 = playSeVer2( spep_8 + 68, 1016, "",spep_8 + 84, 0, 6, -1);
SE041 = playSeVer2( spep_8 + 68, 1358, "",spep_8 + 84, 0, 6, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9= spep_8 + 76;
------------------------------------------------------
--爆発煙へ気弾着弾ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
hit2 = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_9 + 84, hit2, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_9 + 84, hit2, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit2, 0 );
setEffRotateKey( spep_9 + 84, hit2, 0 );
setEffAlphaKey( spep_9 + 0, hit2, 255 );
setEffAlphaKey( spep_9 + 82, hit2, 255 );
setEffAlphaKey( spep_9 + 83, hit2, 255 );
setEffAlphaKey( spep_9 + 84, hit2, 0 );

--SE
--爆発
SE042 = playSeVer2( spep_9 + 0, 1023, "", 0, 0, 0, -1);

--爆発中連続気弾
SE043 = playSeVer2( spep_9 + 12, 1016, "",spep_9 + 28, 0, 8, -1);

--爆発
SE044 = playSeVer2( spep_9 + 20, 1024, "", 0, 0, 0, -1);

--爆発中連続気弾
SE045 = playSeVer2( spep_9 + 22, 1016, "",spep_9 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_9 + 22, SE045, 79 );
SE046 = playSeVer2( spep_9 + 32, 1016, "",spep_9 + 48, 0, 6, -1);

--爆発
SE047 = playSeVer2( spep_9 + 36, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 36, SE047, 74 );

--爆発中連続気弾
SE048 = playSeVer2( spep_9 + 40, 1016, "",spep_9 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_9 + 40, SE048, 84 );
SE049 = playSeVer2( spep_9 + 48, 1016, "",spep_9 + 64, 0, 6, -1);

--爆発中連続気弾
SE050 = playSeVer2( spep_9 + 58, 1016, "",spep_9 + 74, 0, 8, -1);
setSeVolumeByWorkId( spep_9 + 58, SE050, 91 );
SE051 = playSeVer2( spep_9 + 68, 1016, "",spep_9 + 84, 0, 8, -1);

--爆発中連続気弾
SE052 = playSeVer2( spep_9 + 76, 1016, "",spep_9 + 92, 0, 6, -1);
SE053 = playSeVer2( spep_9 + 86, 1016, "",spep_9 + 102, 0, 6, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10= spep_9 + 84;
------------------------------------------------------
--正面向き気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
kidan3 = entryEffect( spep_10 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kidan3, 0, 0, 0 );
setEffMoveKey( spep_10 + 74, kidan3, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kidan3, 1.0, 1.0 );
setEffScaleKey( spep_10 + 74, kidan3, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kidan3, 0 );
setEffRotateKey( spep_10 + 74, kidan3, 0 );
setEffAlphaKey( spep_10 + 0, kidan3, 255 );
setEffAlphaKey( spep_10 + 72, kidan3, 255 );
setEffAlphaKey( spep_10 + 73, kidan3, 255 );
setEffAlphaKey( spep_10 + 74, kidan3, 0 );

--SE
--連続気弾２
SE054 = playSeVer2( spep_10 + 0, 1016, "",spep_10 + 16, 0, 6, -1);
SE055 = playSeVer2( spep_10 + 0, 1358, "",spep_10 + 16, 0, 6, -1);
SE056 = playSeVer2( spep_10 + 10, 1016, "",spep_10 + 26, 0, 6, -1);
SE057 = playSeVer2( spep_10 + 10, 1358, "",spep_10 + 26, 0, 6, -1);
SE058 = playSeVer2( spep_10 + 20, 1016, "",spep_10 + 36, 0, 6, -1);
SE059 = playSeVer2( spep_10 + 20, 1358, "",spep_10 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 20, SE059, 88 );
SE060 = playSeVer2( spep_10 + 30, 1016, "",spep_10 + 46, 0, 6, -1);
SE061 = playSeVer2( spep_10 + 30, 1358, "",spep_10 + 46, 0, 6, -1);
SE062 = playSeVer2( spep_10 + 40, 1016, "",spep_10 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 40, SE062, 88 );
SE063 = playSeVer2( spep_10 + 40, 1358, "",spep_10 + 56, 0, 6, -1);

--連続気弾２
SE065 = playSeVer2( spep_10 + 50, 1016, "",spep_10 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 50, SE065, 86 );
SE066 = playSeVer2( spep_10 + 50, 1358, "",spep_10 + 66, 0, 6, -1);
SE067 = playSeVer2( spep_10 + 60, 1016, "",spep_10 + 76, 0, 6, -1);
SE068 = playSeVer2( spep_10 + 60, 1358, "",spep_10 + 76, 0, 6, -1);
SE069 = playSeVer2( spep_10 + 70, 1016, "",spep_10 + 86, 0, 6, -1);
SE070 = playSeVer2( spep_10 + 70, 1358, "",spep_10 + 86, 0, 6, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11= spep_10 + 72;
------------------------------------------------------
--ラスト爆発シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish , 0, 0, 0 );
setEffMoveKey( spep_11 + 150, finish , 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish , 1.0, 1.0 );
setEffScaleKey( spep_11 + 150, finish , 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish , 0 );
setEffRotateKey( spep_11 + 150, finish , 0 );
setEffAlphaKey( spep_11 + 0, finish , 255 );
setEffAlphaKey( spep_11 + 150, finish , 255 );

--SE
--ラスト爆発
SE071 = playSeVer2( spep_11 + 0, 1159, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_11 + 4, 1067, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_11 + 8, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 8, SE073, 72 );
setPitch( spep_11 + 8, SE073, -600 );
setTimeStretch( SE073, 0.6, 30, 4 );
SE064 = playSeVer2( spep_11 + 8, 1168, "", 0, 12, 0, -1);
setStartTimeMs( SE064,  750 );

--終わり
dealDamage(spep_11+28);
endPhase( spep_11 + 140 ); 
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 74, tame, 255 );
setEffAlphaKey( spep_0 + 75, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );

--気ダメ
SE002 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1024, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 1147, "",spep_0 + 112, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 76;
------------------------------------------------------
--ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_1 + 32, jump, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 32, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 32, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 30, jump, 255 );
setEffAlphaKey( spep_1 + 31, jump, 255 );
setEffAlphaKey( spep_1 + 32, jump, 0 );

--SE
--踏み出す
SE005 = playSeVer2( spep_1 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE005, 119 );
SE006 = playSeVer2( spep_1 + 6, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 6, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 32;
------------------------------------------------------
--正面接近
------------------------------------------------------
-- ** エフェクト等 ** --
approach = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approach, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, approach, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approach, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, approach, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approach, 0 );
setEffRotateKey( spep_2 + 46, approach, 0 );
setEffAlphaKey( spep_2 + 0, approach, 255 );
setEffAlphaKey( spep_2 + 44, approach, 255 );
setEffAlphaKey( spep_2 + 45, approach, 255 );
setEffAlphaKey( spep_2 + 46, approach, 0 );

--顔カットインのタイミング指定
spep_x=spep_2 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);
]]
--SE
--向かってくる
SE008 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

--顔カットイン
SE009 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かってくる
SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE010, 53 );
setTimeStretch( SE010, 1.43, 30, 4 );
SE011 = playSeVer2( spep_2 + 20, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 46;
------------------------------------------------------
--顔アップ接近→ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 90, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 88, beam, 255 );
setEffAlphaKey( spep_3 + 89, beam, 255 );
setEffAlphaKey( spep_3 + 90, beam, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE001, 0 );
    
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

--SE
--気弾発射
SE012 = playSeVer2( spep_3 + 44, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 66, 1145, "",spep_3 + 132, 6, 20, -1);
setSeVolumeByWorkId( spep_3 + 66, SE013, 82 );
setStartTimeMs( SE013,  300 );
SE014 = playSeVer2( spep_3 + 62, 1022, "",spep_3 + 128, 0, 12, -1);
SE015 = playSeVer2( spep_3 + 62, 1021, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 62, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE017, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 90;
------------------------------------------------------
--敵ビーム被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 255 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 255 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 106 );
changeAnime( spep_4-3 + 40, 1, 108 );

setMoveKey( spep_4 + 0, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_4-3 + 32, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 35, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_4-3 + 36, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_4-3 + 39, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 251.4, 169.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 322.6, 193.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 393.8, 218.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 465.1, 243 , 0 );
setMoveKey( spep_4-3 + 48, 1, 536.3, 267.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 607.5, 292.2 , 0 );
setMoveKey( spep_4-3 + 52, 1, 678.7, 316.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 750, 341.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, 821.2, 366 , 0 );
setMoveKey( spep_4-1 + 58, 1, 892.4, 390.5 , 0 );

setScaleKey( spep_4 + 0, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 35, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 39, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 40, 1, 2.59, 2.59 );
setScaleKey( spep_4-1 + 58, 1, 2.59, 2.59 );

setRotateKey( spep_4 + 0, 1, -18.8 );
setRotateKey( spep_4-3 + 35, 1, -18.8 );
setRotateKey( spep_4-3 + 36, 1, -41.3 );
setRotateKey( spep_4-3 + 39, 1, -41.3 );
setRotateKey( spep_4-3 + 40, 1, -5.8 );
setRotateKey( spep_4-3 + 42, 1, -5.6 );
setRotateKey( spep_4-3 + 44, 1, -5.5 );
setRotateKey( spep_4-3 + 46, 1, -5.3 );
setRotateKey( spep_4-3 + 48, 1, -5.2 );
setRotateKey( spep_4-3 + 50, 1, -5 );
setRotateKey( spep_4-3 + 52, 1, -4.8 );
setRotateKey( spep_4-3 + 54, 1, -4.7 );
setRotateKey( spep_4-3 + 56, 1, -4.5 );
setRotateKey( spep_4-1 + 58, 1, -4.3 );

--SE
--敵ヒット
SE018 = playSeVer2( spep_4 + 6, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 6, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 56;
------------------------------------------------------
--ドーム状爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 56, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 54, explosion, 255 );
setEffAlphaKey( spep_5 + 55, explosion, 255 );
setEffAlphaKey( spep_5 + 56, explosion, 0 );

--SE
--爆発
SE021 = playSeVer2( spep_5 + 0, 1159, "",spep_5 + 132, 0, 84, -1);
SE022 = playSeVer2( spep_5 + 0, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56;

------------------------------------------------------
--ベジータ正面顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, face , 0, 0, 0 );
setEffMoveKey( spep_6 + 80, face , 0, 0, 0 );
setEffScaleKey( spep_6 + 0, face , 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, face , 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, face , 0 );
setEffRotateKey( spep_6 + 80, face , 0 );
setEffAlphaKey( spep_6 + 0, face , 255 );
setEffAlphaKey( spep_6 + 80, face , 255 );

--SE
--顔アップ
SE023 = playSeVer2( spep_6 + 0, 1068, "",spep_6 + 100, 0, 14, -1);
SE024 = playSeVer2( spep_6 + 0, 1264, "",spep_6 + 100, 0, 14, -1);

--白フェード
entryFade( spep_6 +72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 86, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8= spep_7 + 94;
------------------------------------------------------
--気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, kidan2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan2, 0 );
setEffRotateKey( spep_8 + 76, kidan2, 0 );
setEffAlphaKey( spep_8 + 0, kidan2, 255 );
setEffAlphaKey( spep_8 + 74, kidan2, 255 );
setEffAlphaKey( spep_8 + 75, kidan2, 255 );
setEffAlphaKey( spep_8 + 76, kidan2, 0 );

--SE
--連続気弾
SE026 = playSeVer2( spep_8 + 0, 1021, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_8 + 0, 1016, "",spep_8 + 18, 0, 8, -1);
SE028 = playSeVer2( spep_8 + 0, 1358, "",spep_8 + 18, 0, 8, -1);
SE029 = playSeVer2( spep_8 + 10, 1016, "",spep_8 + 28, 0, 6, -1);
SE030 = playSeVer2( spep_8 + 10, 1358, "",spep_8 + 28, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 10, SE030, 88 );
SE031 = playSeVer2( spep_8 + 18, 1016, "",spep_8 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 18, SE031, 81 );
SE032 = playSeVer2( spep_8 + 18, 1358, "",spep_8 + 36, 0, 6, -1);
SE033 = playSeVer2( spep_8 + 28, 1016, "",spep_8 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 28, SE033, 86 );
SE034 = playSeVer2( spep_8 + 28, 1358, "",spep_8 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 28, SE034, 81 );
SE035 = playSeVer2( spep_8 + 38, 1016, "",spep_8 + 54, 0, 6, -1);
SE036 = playSeVer2( spep_8 + 38, 1358, "",spep_8 + 54, 0, 6, -1);
SE037 = playSeVer2( spep_8 + 46, 1016, "",spep_8 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_8 + 46, SE037, 82 );
SE038 = playSeVer2( spep_8 + 46, 1358, "",spep_8 + 64, 0, 8, -1);
SE020 = playSeVer2( spep_8 + 56, 1016, "",spep_8 + 72, 0, 6, -1);
SE039 = playSeVer2( spep_8 + 56, 1358, "",spep_8 + 72, 0, 6, -1);
SE040 = playSeVer2( spep_8 + 68, 1016, "",spep_8 + 84, 0, 6, -1);
SE041 = playSeVer2( spep_8 + 68, 1358, "",spep_8 + 84, 0, 6, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9= spep_8 + 76;
------------------------------------------------------
--爆発煙へ気弾着弾ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
hit2 = entryEffect( spep_9 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_9 + 84, hit2, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_9 + 84, hit2, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit2, 0 );
setEffRotateKey( spep_9 + 84, hit2, 0 );
setEffAlphaKey( spep_9 + 0, hit2, 255 );
setEffAlphaKey( spep_9 + 82, hit2, 255 );
setEffAlphaKey( spep_9 + 83, hit2, 255 );
setEffAlphaKey( spep_9 + 84, hit2, 0 );

--SE
--爆発
SE042 = playSeVer2( spep_9 + 0, 1023, "", 0, 0, 0, -1);

--爆発中連続気弾
SE043 = playSeVer2( spep_9 + 12, 1016, "",spep_9 + 28, 0, 8, -1);

--爆発
SE044 = playSeVer2( spep_9 + 20, 1024, "", 0, 0, 0, -1);

--爆発中連続気弾
SE045 = playSeVer2( spep_9 + 22, 1016, "",spep_9 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_9 + 22, SE045, 79 );
SE046 = playSeVer2( spep_9 + 32, 1016, "",spep_9 + 48, 0, 6, -1);

--爆発
SE047 = playSeVer2( spep_9 + 36, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 36, SE047, 74 );

--爆発中連続気弾
SE048 = playSeVer2( spep_9 + 40, 1016, "",spep_9 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_9 + 40, SE048, 84 );
SE049 = playSeVer2( spep_9 + 48, 1016, "",spep_9 + 64, 0, 6, -1);

--爆発中連続気弾
SE050 = playSeVer2( spep_9 + 58, 1016, "",spep_9 + 74, 0, 8, -1);
setSeVolumeByWorkId( spep_9 + 58, SE050, 91 );
SE051 = playSeVer2( spep_9 + 68, 1016, "",spep_9 + 84, 0, 8, -1);

--爆発中連続気弾
SE052 = playSeVer2( spep_9 + 76, 1016, "",spep_9 + 92, 0, 6, -1);
SE053 = playSeVer2( spep_9 + 86, 1016, "",spep_9 + 102, 0, 6, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10= spep_9 + 84;
------------------------------------------------------
--正面向き気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
kidan3 = entryEffect( spep_10 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kidan3, 0, 0, 0 );
setEffMoveKey( spep_10 + 74, kidan3, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kidan3, 1.0, 1.0 );
setEffScaleKey( spep_10 + 74, kidan3, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kidan3, 0 );
setEffRotateKey( spep_10 + 74, kidan3, 0 );
setEffAlphaKey( spep_10 + 0, kidan3, 255 );
setEffAlphaKey( spep_10 + 72, kidan3, 255 );
setEffAlphaKey( spep_10 + 73, kidan3, 255 );
setEffAlphaKey( spep_10 + 74, kidan3, 0 );

--SE
--連続気弾２
SE054 = playSeVer2( spep_10 + 0, 1016, "",spep_10 + 16, 0, 6, -1);
SE055 = playSeVer2( spep_10 + 0, 1358, "",spep_10 + 16, 0, 6, -1);
SE056 = playSeVer2( spep_10 + 10, 1016, "",spep_10 + 26, 0, 6, -1);
SE057 = playSeVer2( spep_10 + 10, 1358, "",spep_10 + 26, 0, 6, -1);
SE058 = playSeVer2( spep_10 + 20, 1016, "",spep_10 + 36, 0, 6, -1);
SE059 = playSeVer2( spep_10 + 20, 1358, "",spep_10 + 36, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 20, SE059, 88 );
SE060 = playSeVer2( spep_10 + 30, 1016, "",spep_10 + 46, 0, 6, -1);
SE061 = playSeVer2( spep_10 + 30, 1358, "",spep_10 + 46, 0, 6, -1);
SE062 = playSeVer2( spep_10 + 40, 1016, "",spep_10 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 40, SE062, 88 );
SE063 = playSeVer2( spep_10 + 40, 1358, "",spep_10 + 56, 0, 6, -1);

--連続気弾２
SE065 = playSeVer2( spep_10 + 50, 1016, "",spep_10 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 50, SE065, 86 );
SE066 = playSeVer2( spep_10 + 50, 1358, "",spep_10 + 66, 0, 6, -1);
SE067 = playSeVer2( spep_10 + 60, 1016, "",spep_10 + 76, 0, 6, -1);
SE068 = playSeVer2( spep_10 + 60, 1358, "",spep_10 + 76, 0, 6, -1);
SE069 = playSeVer2( spep_10 + 70, 1016, "",spep_10 + 86, 0, 6, -1);
SE070 = playSeVer2( spep_10 + 70, 1358, "",spep_10 + 86, 0, 6, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11= spep_10 + 72;
------------------------------------------------------
--ラスト爆発シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish , 0, 0, 0 );
setEffMoveKey( spep_11 + 150, finish , 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish , -1.0, 1.0 );
setEffScaleKey( spep_11 + 150, finish , -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish , 0 );
setEffRotateKey( spep_11 + 150, finish , 0 );
setEffAlphaKey( spep_11 + 0, finish , 255 );
setEffAlphaKey( spep_11 + 150, finish , 255 );

--SE
--ラスト爆発
SE071 = playSeVer2( spep_11 + 0, 1159, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_11 + 4, 1067, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_11 + 8, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 8, SE073, 72 );
setPitch( spep_11 + 8, SE073, -600 );
setTimeStretch( SE073, 0.6, 30, 4 );
SE064 = playSeVer2( spep_11 + 8, 1168, "", 0, 12, 0, -1);
setStartTimeMs( SE064,  750 );

--終わり
dealDamage(spep_11+28);
endPhase( spep_11 + 140 ); 
end