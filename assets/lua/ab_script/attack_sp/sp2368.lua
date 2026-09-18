--1024310:超サイヤ人ベジータ_マキシマムフラッシャー
--sp_effect_a1_00349

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
SP_01=	159722	;--	冒頭気溜め
SP_02=	159723	;--	ジャンプ
SP_03=	159724	;--	正面接近
SP_04=	159725	;--	顔アップ正面接近
SP_05=	159726	;--	ビーム発射
SP_06=	159727	;--	敵ビーム被弾：敵より前
SP_07=	159728	;--	敵ビーム被弾：敵より後ろ
SP_08=	159729	;--	ドーム状爆発
SP_09=	159730	;--	ラスト爆発シーン

--エフェクト(てき)
SP_01x=	159722	;--	冒頭気溜め	
SP_02x=	159731	;--	ジャンプ	(敵)
SP_03x=	159724	;--	正面接近	
SP_04x=	159725	;--	顔アップ正面接近	
SP_05x=	159732	;--	ビーム発射	(敵)
SP_06x=	159727	;--	敵ビーム被弾：敵より前	
SP_07x=	159728	;--	敵ビーム被弾：敵より後ろ	
SP_08x=	159775	;--	ドーム状爆発	
SP_09x=	159776	;--	ラスト爆発シーン	

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
SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 8, SE010, 53 );
setTimeStretch( SE010, 1.43, 30, 4 );
SE011 = playSeVer2( spep_2 + 20, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 46;
------------------------------------------------------
--顔アップ正面接近
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, face, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, face, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, face, 0 );
setEffRotateKey( spep_3 + 40, face, 0 );
setEffAlphaKey( spep_3 + 0, face, 255 );
setEffAlphaKey( spep_3 + 40, face, 255 );

--白フェード
entryFade( spep_3 +32 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 36;
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
--ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 62, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 62, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 62, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 60, beam, 255 );
setEffAlphaKey( spep_5 + 61, beam, 255 );
setEffAlphaKey( spep_5 + 62, beam, 0 );

--SE
--気弾発射
SE013 = playSeVer2( spep_5 + 12, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_5 + 34, 1145, "",spep_5 + 100, 6, 20, -1);
setSeVolumeByWorkId( spep_5 + 34, SE014, 82 );
setStartTimeMs( SE014,  300 );
SE015 = playSeVer2( spep_5 + 30, 1022, "",spep_5 + 96, 0, 12, -1);
SE016 = playSeVer2( spep_5 + 30, 1021, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 30, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 30, SE017, 130 );
SE018 = playSeVer2( spep_5 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 30, SE018, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
spep_6= spep_5 + 62;
------------------------------------------------------
--敵ビーム被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 56, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 54, hit_f, 255 );
setEffAlphaKey( spep_6 + 55, hit_f, 255 );
setEffAlphaKey( spep_6 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 56, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 54, hit_b, 255 );
setEffAlphaKey( spep_6 + 55, hit_b, 255 );
setEffAlphaKey( spep_6 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 58, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6-3 + 36, 1, 106 );
changeAnime( spep_6-3 + 40, 1, 108 );

setMoveKey( spep_6 + 0, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 14, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 20, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_6-3 + 24, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_6-3 + 30, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 35, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 36, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_6-3 + 39, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_6-3 + 40, 1, 251.4, 169.3 , 0 );
setMoveKey( spep_6-3 + 42, 1, 322.6, 193.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 393.8, 218.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, 465.1, 243 , 0 );
setMoveKey( spep_6-3 + 48, 1, 536.3, 267.6 , 0 );
setMoveKey( spep_6-3 + 50, 1, 607.5, 292.2 , 0 );
setMoveKey( spep_6-3 + 52, 1, 678.7, 316.8 , 0 );
setMoveKey( spep_6-3 + 54, 1, 750, 341.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, 821.2, 366 , 0 );
setMoveKey( spep_6-1 + 58, 1, 892.4, 390.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.37, 2.37 );
setScaleKey( spep_6-3 + 35, 1, 2.37, 2.37 );
setScaleKey( spep_6-3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 39, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 40, 1, 2.59, 2.59 );
setScaleKey( spep_6-1 + 58, 1, 2.59, 2.59 );

setRotateKey( spep_6 + 0, 1, -18.8 );
setRotateKey( spep_6-3 + 35, 1, -18.8 );
setRotateKey( spep_6-3 + 36, 1, -41.3 );
setRotateKey( spep_6-3 + 39, 1, -41.3 );
setRotateKey( spep_6-3 + 40, 1, -5.8 );
setRotateKey( spep_6-3 + 42, 1, -5.6 );
setRotateKey( spep_6-3 + 44, 1, -5.5 );
setRotateKey( spep_6-3 + 46, 1, -5.3 );
setRotateKey( spep_6-3 + 48, 1, -5.2 );
setRotateKey( spep_6-3 + 50, 1, -5 );
setRotateKey( spep_6-3 + 52, 1, -4.8 );
setRotateKey( spep_6-3 + 54, 1, -4.7 );
setRotateKey( spep_6-3 + 56, 1, -4.5 );
setRotateKey( spep_6-1 + 58, 1, -4.3 );

--SE
--気弾ヒット
SE019 = playSeVer2( spep_6 + 6, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_6 + 6, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 56;
------------------------------------------------------
--ドーム状爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 56, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 54, explosion, 255 );
setEffAlphaKey( spep_7 + 55, explosion, 255 );
setEffAlphaKey( spep_7 + 56, explosion, 0 );

--SE
--爆発
SE021 = playSeVer2( spep_7 + 0, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_7 + 0, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 56;
------------------------------------------------------
--ラスト爆発シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish , 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish , 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish , 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish , 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish , 0 );
setEffRotateKey( spep_8 + 150, finish , 0 );
setEffAlphaKey( spep_8 + 0, finish , 255 );
setEffAlphaKey( spep_8 + 150, finish , 255 );

--SE
--ラスト爆発
SE023 = playSeVer2( spep_8 + 0, 1168, "", 0, 12, 0, -1);
setStartTimeMs( SE023,  767 );
SE024 = playSeVer2( spep_7 + 52, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE024, 72 );
setPitch( spep_7 + 52, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );
SE025 = playSeVer2( spep_8 + 6, 1067, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8+28);
endPhase( spep_8 + 140 ); 
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
SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 8, SE010, 53 );
setTimeStretch( SE010, 1.43, 30, 4 );
SE011 = playSeVer2( spep_2 + 20, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 46;
------------------------------------------------------
--顔アップ正面接近
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, face, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, face, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, face, 0 );
setEffRotateKey( spep_3 + 40, face, 0 );
setEffAlphaKey( spep_3 + 0, face, 255 );
setEffAlphaKey( spep_3 + 40, face, 255 );

--白フェード
entryFade( spep_3 +32 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 36;
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
--ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 62, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 62, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 62, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 60, beam, 255 );
setEffAlphaKey( spep_5 + 61, beam, 255 );
setEffAlphaKey( spep_5 + 62, beam, 0 );

--SE
--気弾発射
SE013 = playSeVer2( spep_5 + 12, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_5 + 34, 1145, "",spep_5 + 100, 6, 20, -1);
setSeVolumeByWorkId( spep_5 + 34, SE014, 82 );
setStartTimeMs( SE014,  300 );
SE015 = playSeVer2( spep_5 + 30, 1022, "",spep_5 + 96, 0, 12, -1);
SE016 = playSeVer2( spep_5 + 30, 1021, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 30, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 30, SE017, 130 );
SE018 = playSeVer2( spep_5 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 30, SE018, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
spep_6= spep_5 + 62;
------------------------------------------------------
--敵ビーム被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 56, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 54, hit_f, 255 );
setEffAlphaKey( spep_6 + 55, hit_f, 255 );
setEffAlphaKey( spep_6 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 56, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 54, hit_b, 255 );
setEffAlphaKey( spep_6 + 55, hit_b, 255 );
setEffAlphaKey( spep_6 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 58, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6-3 + 36, 1, 106 );
changeAnime( spep_6-3 + 40, 1, 108 );

setMoveKey( spep_6 + 0, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 14, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 20, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, 29.1, 43.7 , 0 );
setMoveKey( spep_6-3 + 24, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 29.1, 15.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_6-3 + 30, 1, 106.1, 54.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 35, 1, 67.6, 54.2 , 0 );
setMoveKey( spep_6-3 + 36, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_6-3 + 39, 1, 167.5, 136.4 , 0 );
setMoveKey( spep_6-3 + 40, 1, 251.4, 169.3 , 0 );
setMoveKey( spep_6-3 + 42, 1, 322.6, 193.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 393.8, 218.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, 465.1, 243 , 0 );
setMoveKey( spep_6-3 + 48, 1, 536.3, 267.6 , 0 );
setMoveKey( spep_6-3 + 50, 1, 607.5, 292.2 , 0 );
setMoveKey( spep_6-3 + 52, 1, 678.7, 316.8 , 0 );
setMoveKey( spep_6-3 + 54, 1, 750, 341.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, 821.2, 366 , 0 );
setMoveKey( spep_6-1 + 58, 1, 892.4, 390.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.37, 2.37 );
setScaleKey( spep_6-3 + 35, 1, 2.37, 2.37 );
setScaleKey( spep_6-3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 39, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 40, 1, 2.59, 2.59 );
setScaleKey( spep_6-1 + 58, 1, 2.59, 2.59 );

setRotateKey( spep_6 + 0, 1, -18.8 );
setRotateKey( spep_6-3 + 35, 1, -18.8 );
setRotateKey( spep_6-3 + 36, 1, -41.3 );
setRotateKey( spep_6-3 + 39, 1, -41.3 );
setRotateKey( spep_6-3 + 40, 1, -5.8 );
setRotateKey( spep_6-3 + 42, 1, -5.6 );
setRotateKey( spep_6-3 + 44, 1, -5.5 );
setRotateKey( spep_6-3 + 46, 1, -5.3 );
setRotateKey( spep_6-3 + 48, 1, -5.2 );
setRotateKey( spep_6-3 + 50, 1, -5 );
setRotateKey( spep_6-3 + 52, 1, -4.8 );
setRotateKey( spep_6-3 + 54, 1, -4.7 );
setRotateKey( spep_6-3 + 56, 1, -4.5 );
setRotateKey( spep_6-1 + 58, 1, -4.3 );

--SE
--気弾ヒット
SE019 = playSeVer2( spep_6 + 6, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_6 + 6, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 56;
------------------------------------------------------
--ドーム状爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 56, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 54, explosion, 255 );
setEffAlphaKey( spep_7 + 55, explosion, 255 );
setEffAlphaKey( spep_7 + 56, explosion, 0 );

--SE
--爆発
SE021 = playSeVer2( spep_7 + 0, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_7 + 0, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 56;
------------------------------------------------------
--ラスト爆発シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish , 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish , 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish , 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish , 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish , 0 );
setEffRotateKey( spep_8 + 150, finish , 0 );
setEffAlphaKey( spep_8 + 0, finish , 255 );
setEffAlphaKey( spep_8 + 150, finish , 255 );

--SE
--ラスト爆発
SE023 = playSeVer2( spep_8 + 0, 1168, "", 0, 12, 0, -1);
setStartTimeMs( SE023,  767 );
SE024 = playSeVer2( spep_7 + 52, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE024, 72 );
setPitch( spep_7 + 52, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );
SE025 = playSeVer2( spep_8 + 6, 1067, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8+28);
endPhase( spep_8 + 140 ); 
end