--1024880:超サイヤ人孫悟空&超サイヤ人ベジータ_ライバル同士の共闘(簡易版)
--sp_effect_b4_00256

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
SP_01=	160528	;--	セリフカットイン〜画面手前ダッシュ
SP_02=	160529	;--	悟空ラッシュ〜敵崖に激突フィニッシュ
SP_03=	160531	;--	悟空ラッシュ〜敵崖に激突フィニッシュ

--エフェクト(敵)
SP_01x=	160528	;--	セリフカットイン〜画面手前ダッシュ	
SP_02x=	160530	;--	悟空ラッシュ〜敵崖に激突フィニッシュ	(敵)
SP_03x=	160532	;--	悟空ラッシュ〜敵崖に激突フィニッシュ	(敵)

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
changeAnime( 0, 1, 0);

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
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 122, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 122, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 122, tame, 255 );

--SE
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--悟空向かってくる
SE005 = playSeVer2( spep_0 + 52, 1182, "",spep_0 + 134, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 52, 9, "",spep_0 + 134, 0, 10, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

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
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 134, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 134, 0, 10, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +118 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+122;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟空ラッシュ〜敵崖に激突フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 338, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 338, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 338, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 338, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 338, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 338, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 338, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 338, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 102, 1, 0);

changeAnime( spep_2 + 0, 1, 17);
changeAnime( spep_2-3 + 20, 1, 6);
changeAnime( spep_2-3 + 24, 1, 8);
changeAnime( spep_2-3 + 28, 1, 6);
changeAnime( spep_2-3 + 32, 1, 8);
changeAnime( spep_2-3 + 36, 1, 6);
changeAnime( spep_2-3 + 40, 1, 8);
changeAnime( spep_2-3 + 44, 1, 6);
changeAnime( spep_2-3 + 48, 1, 8);
changeAnime( spep_2-3 + 52, 1, 6);
changeAnime( spep_2-3 + 56, 1, 8);
changeAnime( spep_2-3 + 60, 1, 6);
changeAnime( spep_2-3 + 64, 1, 8);
changeAnime( spep_2-3 + 90, 1, 6);

setMoveKey( spep_2 + 0, 1, 9.4, -15.1 , 0 );
setMoveKey( spep_2-3 + 19, 1, 9.4, -15.1 , 0 );

setMoveKey( spep_2-3 + 20, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 23, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 24, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 27, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 28, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 32, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 36, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 39, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 40, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 43, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 44, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 48, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 51, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 52, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 56, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 59, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 60, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 63, 1, -79.4, 54.3 , 0 );

setMoveKey( spep_2-3 + 64, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 65, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 67, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 69, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 71, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 75, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 77, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 81, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 83, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 84, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 85, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 86, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 87, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 88, 1, -390.8, 14 , 0 );
setMoveKey( spep_2-3 + 89, 1, -390.8, 14 , 0 );

a = -500 +200;
a1 = -500 +130;
a2 = -500 +370;

b1 = 30;
setMoveKey( spep_2-3 + 90, 1, 560.9+a1, -1149 , 0 );
setMoveKey( spep_2-3 + 92, 1, 538.3+a1, -1150.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 95, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 97, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 98, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 99, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 1196.8+a2, -1183.6 , 0 );
setMoveKey( spep_2-1 + 102, 1, 1203.8+a2, -1180.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 19, 1, 1.87, 1.87 );

setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 23, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 27, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 31, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 35, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 39, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 47, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 51, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 52, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 55, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 59, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 60, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 63, 1, 1.97, 1.97 );

setScaleKey( spep_2-3 + 64, 1, 2.66, 2.66 );
setScaleKey( spep_2-3 + 66, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 89, 1, 2.12, 2.12 );

setScaleKey( spep_2-3 + 90, 1, 12.99, 12.99 );
setScaleKey( spep_2-1 + 102, 1, 12.99, 12.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 19, 1, 0 );

setRotateKey( spep_2-3 + 20, 1, 14 );
setRotateKey( spep_2-3 + 23, 1, 14 );

setRotateKey( spep_2-3 + 24, 1, -8.6 );
setRotateKey( spep_2-3 + 27, 1, -8.6 );

setRotateKey( spep_2-3 + 28, 1, 14 );
setRotateKey( spep_2-3 + 31, 1, 14 );

setRotateKey( spep_2-3 + 32, 1, -8.6 );
setRotateKey( spep_2-3 + 35, 1, -8.6 );

setRotateKey( spep_2-3 + 36, 1, 14 );
setRotateKey( spep_2-3 + 39, 1, 14 );

setRotateKey( spep_2-3 + 40, 1, -8.6 );
setRotateKey( spep_2-3 + 43, 1, -8.6 );

setRotateKey( spep_2-3 + 44, 1, 14 );
setRotateKey( spep_2-3 + 47, 1, 14 );

setRotateKey( spep_2-3 + 48, 1, -8.6 );
setRotateKey( spep_2-3 + 51, 1, -8.6 );

setRotateKey( spep_2-3 + 52, 1, 14 );
setRotateKey( spep_2-3 + 55, 1, 14 );

setRotateKey( spep_2-3 + 56, 1, -8.6 );
setRotateKey( spep_2-3 + 59, 1, -8.6 );

setRotateKey( spep_2-3 + 60, 1, 14 );
setRotateKey( spep_2-3 + 63, 1, 14 );

setRotateKey( spep_2-3 + 64, 1, -8.6 );
setRotateKey( spep_2-3 + 66, 1, -10 );
setRotateKey( spep_2-3 + 89, 1, -10 );

setRotateKey( spep_2-3 + 90, 1, 75 );
setRotateKey( spep_2-3 + 92, 1, 74 );
setRotateKey( spep_2-3 + 94, 1, 73 );
setRotateKey( spep_2-3 + 96, 1, 72 );
setRotateKey( spep_2-1 + 102, 1, 72 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 116, 1, 6);

setMoveKey( spep_2-3 + 116, 1, -29.6, -22.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, -29.5, -22.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, -29.3, -22.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, -40.7, -21.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -40.6, -21.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, -40.5, -21.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, -40.4, -21.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, -40.3, -21.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, -55.3, -21.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, -55.2, -21.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, -55.1, -21 , 0 );
setMoveKey( spep_2-3 + 142, 1, -54.9, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, -54.8, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, -54.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 148, 1, -70.3, -22.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, -70.2, -22.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, -70, -22.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -69.9, -22.6 , 0 );
setMoveKey( spep_2-3 + 156, 1, -69.7, -22.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, -84.3, -22 , 0 );
setMoveKey( spep_2-3 + 160, 1, -87.7, -21.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, -282, -19.2 , 0 );
setMoveKey( spep_2-1 + 164, 1, -457.3, -19.3 , 0 );

setScaleKey( spep_2-3 + 116, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 120, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 126, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 128, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 130, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 136, 1, 2, 2 );
setScaleKey( spep_2-3 + 140, 1, 2, 2 );
setScaleKey( spep_2-3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 146, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 148, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 150, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 152, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 156, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 158, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 162, 1, 1.96, 1.96 );
setScaleKey( spep_2-1 + 164, 1, 1.95, 1.95 );

setRotateKey( spep_2-3 + 116, 1, 45 );
setRotateKey( spep_2-3 + 124, 1, 45 );
setRotateKey( spep_2-3 + 126, 1, 43 );
setRotateKey( spep_2-3 + 134, 1, 43 );
setRotateKey( spep_2-3 + 136, 1, 42.9 );
setRotateKey( spep_2-3 + 146, 1, 42.9 );
setRotateKey( spep_2-3 + 148, 1, 41.2 );
setRotateKey( spep_2-3 + 156, 1, 41.2 );
setRotateKey( spep_2-3 + 158, 1, 39.9 );
setRotateKey( spep_2-3 + 160, 1, 39.9 );
setRotateKey( spep_2-1 + 164, 1, 39.6 );

--敵の動き
setDisp( spep_2-3 + 170, 1, 1);
setDisp( spep_2-1 + 198, 1, 0);

changeAnime( spep_2-3 + 170, 1, 5);

setMoveKey( spep_2-3 + 170, 1, -2.5, 2.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 0.1, 79.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 0.7, 69.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 1.2, 60.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 1.6, 49.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 2.1, 39.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 2.6, 28.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, 3.1, 18 , 0 );
setMoveKey( spep_2-3 + 186, 1, 3.5, 7.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, 4, -3.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 4.5, -13.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, 5, -24.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, 5.5, -35 , 0 );
setMoveKey( spep_2-3 + 196, 1, 6, -45.6 , 0 );
setMoveKey( spep_2-1 + 198, 1, 6.5, -56.2 , 0 );

setScaleKey( spep_2-3 + 170, 1, 3.59, 3.59 );
setScaleKey( spep_2-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 174, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 176, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 178, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 180, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 186, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 188, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 194, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 196, 1, 0.62, 0.62 );
setScaleKey( spep_2-1 + 198, 1, 0.53, 0.53 );

setRotateKey( spep_2-3 + 170, 1, 10.8 );
setRotateKey( spep_2-1 + 198, 1, 10.8 );

--敵の動き
setDisp( spep_2-3 + 204, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);


changeAnime( spep_2-3 + 204, 1, 6);

setMoveKey( spep_2-3 + 204, 1, 390.7, -32.1 , 0 );
setMoveKey( spep_2-3 + 206, 1, 320, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, 249.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, 181.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 113.2, -32.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 45, -32.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, -23.9, -31.5 , 0 );
setMoveKey( spep_2-1 + 218, 1, -21.5, -33.7 , 0 );

setScaleKey( spep_2-3 + 204, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 218, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 204, 1, -4.3 );
setRotateKey( spep_2-1 + 218, 1, -4.3 );

--SE
--悟空ラッシュ
SE013 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 6, 1110, "",spep_2 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 6, SE014, 82 );
SE015 = playSeVer2( spep_2 + 6, 1009, "",spep_2 + 34, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 6, SE015, 89 );
SE016 = playSeVer2( spep_2 + 20, 1110, "",spep_2 + 44, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 20, SE016, 79 );
SE017 = playSeVer2( spep_2 + 20, 1009, "",spep_2 + 44, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 20, SE017, 80 );
SE018 = playSeVer2( spep_2 + 26, 1000, "",spep_2 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 26, SE018, 75 );
SE019 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE019, 84 );
SE020 = playSeVer2( spep_2 + 40, 1010, "",spep_2 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 40, SE020, 92 );
SE021 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 69 );
SE022 = playSeVer2( spep_2 + 52, 1009, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 52, SE022, 79 );
SE023 = playSeVer2( spep_2 + 58, 1000, "",spep_2 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 58, SE023, 67 );
SE024 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE024, 86 );

--ベジータ蹴り
SE025 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);	
SE026 = playSeVer2( spep_2 + 94, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE026, 86 );
SE027 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE027, 83 );
SE028 = playSeVer2( spep_2 + 100, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE028, 89 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 158, 1121, "",spep_2 + 224, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 158, 1183, "",spep_2 + 224, 0, 18, -1);

--岩場激突
SE032 = playSeVer2( spep_2 + 214, 1159, "",0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 812, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+214);
endPhase( spep_2 + 328 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 122, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 122, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 122, tame, 255 );

--SE
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--悟空向かってくる
SE005 = playSeVer2( spep_0 + 52, 1182, "",spep_0 + 134, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 52, 9, "",spep_0 + 134, 0, 10, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

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
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 134, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 134, 0, 10, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +118 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+122;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟空ラッシュ〜敵崖に激突フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 338, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 338, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 338, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 338, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 338, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 338, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 338, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 338, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 102, 1, 0);

changeAnime( spep_2 + 0, 1, 17);
changeAnime( spep_2-3 + 20, 1, 6);
changeAnime( spep_2-3 + 24, 1, 8);
changeAnime( spep_2-3 + 28, 1, 6);
changeAnime( spep_2-3 + 32, 1, 8);
changeAnime( spep_2-3 + 36, 1, 6);
changeAnime( spep_2-3 + 40, 1, 8);
changeAnime( spep_2-3 + 44, 1, 6);
changeAnime( spep_2-3 + 48, 1, 8);
changeAnime( spep_2-3 + 52, 1, 6);
changeAnime( spep_2-3 + 56, 1, 8);
changeAnime( spep_2-3 + 60, 1, 6);
changeAnime( spep_2-3 + 64, 1, 8);
changeAnime( spep_2-3 + 90, 1, 6);

setMoveKey( spep_2 + 0, 1, 9.4, -15.1 , 0 );
setMoveKey( spep_2-3 + 19, 1, 9.4, -15.1 , 0 );

setMoveKey( spep_2-3 + 20, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 23, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 24, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 27, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 28, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 32, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 36, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 39, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 40, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 43, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 44, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 48, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 51, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 52, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 56, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 59, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 60, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 63, 1, -79.4, 54.3 , 0 );

setMoveKey( spep_2-3 + 64, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 65, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 67, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 69, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 71, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 75, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 77, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 81, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 83, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 84, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 85, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 86, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 87, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 88, 1, -390.8, 14 , 0 );
setMoveKey( spep_2-3 + 89, 1, -390.8, 14 , 0 );

a = -500 +200;
a1 = -500 +130;
a2 = -500 +370;

b1 = 30;
setMoveKey( spep_2-3 + 90, 1, 560.9+a1, -1149 , 0 );
setMoveKey( spep_2-3 + 92, 1, 538.3+a1, -1150.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 95, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 97, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 98, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 99, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 1196.8+a2, -1183.6 , 0 );
setMoveKey( spep_2-1 + 102, 1, 1203.8+a2, -1180.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 19, 1, 1.87, 1.87 );

setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 23, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 27, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 31, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 35, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 39, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 47, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 51, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 52, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 55, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 59, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 60, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 63, 1, 1.97, 1.97 );

setScaleKey( spep_2-3 + 64, 1, 2.66, 2.66 );
setScaleKey( spep_2-3 + 66, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 89, 1, 2.12, 2.12 );

setScaleKey( spep_2-3 + 90, 1, 12.99, 12.99 );
setScaleKey( spep_2-1 + 102, 1, 12.99, 12.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 19, 1, 0 );

setRotateKey( spep_2-3 + 20, 1, 14 );
setRotateKey( spep_2-3 + 23, 1, 14 );

setRotateKey( spep_2-3 + 24, 1, -8.6 );
setRotateKey( spep_2-3 + 27, 1, -8.6 );

setRotateKey( spep_2-3 + 28, 1, 14 );
setRotateKey( spep_2-3 + 31, 1, 14 );

setRotateKey( spep_2-3 + 32, 1, -8.6 );
setRotateKey( spep_2-3 + 35, 1, -8.6 );

setRotateKey( spep_2-3 + 36, 1, 14 );
setRotateKey( spep_2-3 + 39, 1, 14 );

setRotateKey( spep_2-3 + 40, 1, -8.6 );
setRotateKey( spep_2-3 + 43, 1, -8.6 );

setRotateKey( spep_2-3 + 44, 1, 14 );
setRotateKey( spep_2-3 + 47, 1, 14 );

setRotateKey( spep_2-3 + 48, 1, -8.6 );
setRotateKey( spep_2-3 + 51, 1, -8.6 );

setRotateKey( spep_2-3 + 52, 1, 14 );
setRotateKey( spep_2-3 + 55, 1, 14 );

setRotateKey( spep_2-3 + 56, 1, -8.6 );
setRotateKey( spep_2-3 + 59, 1, -8.6 );

setRotateKey( spep_2-3 + 60, 1, 14 );
setRotateKey( spep_2-3 + 63, 1, 14 );

setRotateKey( spep_2-3 + 64, 1, -8.6 );
setRotateKey( spep_2-3 + 66, 1, -10 );
setRotateKey( spep_2-3 + 89, 1, -10 );

setRotateKey( spep_2-3 + 90, 1, 75 );
setRotateKey( spep_2-3 + 92, 1, 74 );
setRotateKey( spep_2-3 + 94, 1, 73 );
setRotateKey( spep_2-3 + 96, 1, 72 );
setRotateKey( spep_2-1 + 102, 1, 72 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 116, 1, 6);

setMoveKey( spep_2-3 + 116, 1, -29.6, -22.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, -29.5, -22.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, -29.3, -22.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, -40.7, -21.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -40.6, -21.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, -40.5, -21.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, -40.4, -21.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, -40.3, -21.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, -55.3, -21.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, -55.2, -21.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, -55.1, -21 , 0 );
setMoveKey( spep_2-3 + 142, 1, -54.9, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, -54.8, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, -54.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 148, 1, -70.3, -22.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, -70.2, -22.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, -70, -22.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -69.9, -22.6 , 0 );
setMoveKey( spep_2-3 + 156, 1, -69.7, -22.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, -84.3, -22 , 0 );
setMoveKey( spep_2-3 + 160, 1, -87.7, -21.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, -282, -19.2 , 0 );
setMoveKey( spep_2-1 + 164, 1, -457.3, -19.3 , 0 );

setScaleKey( spep_2-3 + 116, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 120, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 126, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 128, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 130, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 136, 1, 2, 2 );
setScaleKey( spep_2-3 + 140, 1, 2, 2 );
setScaleKey( spep_2-3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 146, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 148, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 150, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 152, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 156, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 158, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 162, 1, 1.96, 1.96 );
setScaleKey( spep_2-1 + 164, 1, 1.95, 1.95 );

setRotateKey( spep_2-3 + 116, 1, 45 );
setRotateKey( spep_2-3 + 124, 1, 45 );
setRotateKey( spep_2-3 + 126, 1, 43 );
setRotateKey( spep_2-3 + 134, 1, 43 );
setRotateKey( spep_2-3 + 136, 1, 42.9 );
setRotateKey( spep_2-3 + 146, 1, 42.9 );
setRotateKey( spep_2-3 + 148, 1, 41.2 );
setRotateKey( spep_2-3 + 156, 1, 41.2 );
setRotateKey( spep_2-3 + 158, 1, 39.9 );
setRotateKey( spep_2-3 + 160, 1, 39.9 );
setRotateKey( spep_2-1 + 164, 1, 39.6 );

--敵の動き
setDisp( spep_2-3 + 170, 1, 1);
setDisp( spep_2-1 + 198, 1, 0);

changeAnime( spep_2-3 + 170, 1, 5);

setMoveKey( spep_2-3 + 170, 1, -2.5, 2.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 0.1, 79.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 0.7, 69.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 1.2, 60.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 1.6, 49.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 2.1, 39.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 2.6, 28.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, 3.1, 18 , 0 );
setMoveKey( spep_2-3 + 186, 1, 3.5, 7.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, 4, -3.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 4.5, -13.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, 5, -24.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, 5.5, -35 , 0 );
setMoveKey( spep_2-3 + 196, 1, 6, -45.6 , 0 );
setMoveKey( spep_2-1 + 198, 1, 6.5, -56.2 , 0 );

setScaleKey( spep_2-3 + 170, 1, 3.59, 3.59 );
setScaleKey( spep_2-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 174, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 176, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 178, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 180, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 186, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 188, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 194, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 196, 1, 0.62, 0.62 );
setScaleKey( spep_2-1 + 198, 1, 0.53, 0.53 );

setRotateKey( spep_2-3 + 170, 1, 10.8 );
setRotateKey( spep_2-1 + 198, 1, 10.8 );

--敵の動き
setDisp( spep_2-3 + 204, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);


changeAnime( spep_2-3 + 204, 1, 6);

setMoveKey( spep_2-3 + 204, 1, 390.7, -32.1 , 0 );
setMoveKey( spep_2-3 + 206, 1, 320, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, 249.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, 181.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 113.2, -32.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 45, -32.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, -23.9, -31.5 , 0 );
setMoveKey( spep_2-1 + 218, 1, -21.5, -33.7 , 0 );

setScaleKey( spep_2-3 + 204, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 218, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 204, 1, -4.3 );
setRotateKey( spep_2-1 + 218, 1, -4.3 );

--SE
--悟空ラッシュ
SE013 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 6, 1110, "",spep_2 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 6, SE014, 82 );
SE015 = playSeVer2( spep_2 + 6, 1009, "",spep_2 + 34, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 6, SE015, 89 );
SE016 = playSeVer2( spep_2 + 20, 1110, "",spep_2 + 44, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 20, SE016, 79 );
SE017 = playSeVer2( spep_2 + 20, 1009, "",spep_2 + 44, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 20, SE017, 80 );
SE018 = playSeVer2( spep_2 + 26, 1000, "",spep_2 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 26, SE018, 75 );
SE019 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE019, 84 );
SE020 = playSeVer2( spep_2 + 40, 1010, "",spep_2 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 40, SE020, 92 );
SE021 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 69 );
SE022 = playSeVer2( spep_2 + 52, 1009, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 52, SE022, 79 );
SE023 = playSeVer2( spep_2 + 58, 1000, "",spep_2 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 58, SE023, 67 );
SE024 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE024, 86 );

--ベジータ蹴り
SE025 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);	
SE026 = playSeVer2( spep_2 + 94, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE026, 86 );
SE027 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE027, 83 );
SE028 = playSeVer2( spep_2 + 100, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE028, 89 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 158, 1121, "",spep_2 + 224, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 158, 1183, "",spep_2 + 224, 0, 18, -1);

--岩場激突
SE032 = playSeVer2( spep_2 + 214, 1159, "",0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 812, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+214);
endPhase( spep_2 + 328 );
end