--1025400:超ハーツ_ グラビティ・フィスト(SSR)
--sp_effect_a7_00057

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
SP_01=	160791	;--	ハーツ　構え
SP_02=	160793	;--	ハーツ　移動
SP_03=	160795	;--	ハーツ　攻撃
SP_04=	160797	;--	ハーツ　攻撃

--エフェクト(敵)
SP_01x=	160792	;--	ハーツ　構え	(敵)
SP_02x=	160771	;--	ハーツ　移動	(敵)
SP_03x=	160796	;--	ハーツ　攻撃	(敵)
SP_04x=	160798	;--	ハーツ　攻撃	(敵)	

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
--ハーツ　構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
stance = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stance, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, stance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, stance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stance, 0 );
setEffRotateKey( spep_0 + 146, stance, 0 );
setEffAlphaKey( spep_0 + 0, stance, 255 );
setEffAlphaKey( spep_0 + 144, stance, 255 );
setEffAlphaKey( spep_0 + 145, stance, 255 );
setEffAlphaKey( spep_0 + 146, stance, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +38;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]
--SE
--腕エネルギー溜める
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 62, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 135 );
SE004 = playSeVer2( spep_0 + 68, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 78 );
SE005 = playSeVer2( spep_0 + 70, 1257, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 70, 1200, "",spep_0 + 156, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 178 );
SE007 = playSeVer2( spep_0 + 70, 1265, "",spep_0 + 204, 0, 70, -1);
SE008 = playSeVer2( spep_0 + 74, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE008, 69 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--奥へ
SE009 = playSeVer2( spep_0 + 120, 1072, "", 0, 0, 0, -1);

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
--ハーツ　移動
------------------------------------------------------
-- ** エフェクト等 ** --
movement = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, movement, 0, 0, 0 );
setEffMoveKey( spep_1 + 220, movement, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, movement, 1.0, 1.0 );
setEffScaleKey( spep_1 + 220, movement, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, movement, 0 );
setEffRotateKey( spep_1 + 220, movement, 0 );
setEffAlphaKey( spep_1 + 0, movement, 255 );
setEffAlphaKey( spep_1 + 220, movement, 255 );

--敵の動き
setDisp( spep_1-3 + 144, 1, 1);
setDisp( spep_1-3 + 214, 1, 0);

changeAnime( spep_1-3 + 144, 1, 100);
changeAnime( spep_1-3 + 170, 1, 104);

setMoveKey( spep_1-3 + 144, 1, -13, -32 , 0 );
setMoveKey( spep_1-3 + 169, 1, -13, -32 , 0 );

setMoveKey( spep_1-3 + 170, 1, -4, -32 , 0 );
setMoveKey( spep_1-3 + 200, 1, -4, -32 , 0 );
setMoveKey( spep_1-3 + 202, 1, -2.9, -34.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, 5, -51.5 , 0 );
setMoveKey( spep_1-3 + 206, 1, 26.4, -98 , 0 );
setMoveKey( spep_1-3 + 208, 1, 68, -188.4 , 0 );
setMoveKey( spep_1-3 + 210, 1, 136.7, -337.4 , 0 );
setMoveKey( spep_1-3 + 212, 1, 239.1, -559.7 , 0 );
setMoveKey( spep_1-3 + 214, 1, 382, -870 , 0 );

setScaleKey( spep_1-3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 214, 1, 1.58, 1.58 );

setRotateKey( spep_1-3 + 144, 1, 0 );
setRotateKey( spep_1-3 + 214, 1, 0 );

--SE
--高速移動１
SE010 = playSeVer2( spep_1 + 22, 1373, "",spep_1 + 86, 0, 30, -1);
SE011 = playSeVer2( spep_1 + 34, 1116, "",spep_1 + 86, 0, 30, -1);
SE012 = playSeVer2( spep_1 + 34, 1117, "",spep_1 + 86, 0, 30, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
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
--高速移動２
SE013 = playSeVer2( spep_1 + 62 -6, 1373, "",spep_1 + 126, 0, 32, -1);
SE014 = playSeVer2( spep_1 + 72 -6, 1116, "",spep_1 + 126, 0, 32, -1);
SE015 = playSeVer2( spep_1 + 72 -6, 1117, "",spep_1 + 126, 0, 32, -1);

--高速移動３
SE016 = playSeVer2( spep_1 + 88, 1373, "",spep_1 + 134, 0, 12, -1);
SE017 = playSeVer2( spep_1 + 100, 1116, "",spep_1 + 134, 0, 12, -1);
SE018 = playSeVer2( spep_1 + 100, 1117, "",spep_1 + 134, 0, 12, -1);

--瞬間移動
SE019 = playSeVer2( spep_1 + 116, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 116, SE019, 72 );
SE020 = playSeVer2( spep_1 + 122, 1109, "", 0, 0, 0, -1);

--敵気づく
SE021 = playSeVer2( spep_1 + 168, 20, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 168, SE021, 80 );
SE022 = playSeVer2( spep_1 + 168, 48, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 168, SE022, 87 );

--画面遷移
SE023 = playSeVer2( spep_1 + 192, 44, "",spep_1 + 246, 0, 10, -1)

--白フェード
entryFade( spep_1 +216, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+220;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;
------------------------------------------------------
--ハーツ　攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 191.7, -377.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 190.2, -374.5 , 0 );
setMoveKey( spep_3-3 + 4, 1, 185.9, -364.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, 178.6, -347.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 168.4, -323.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 155.2, -292.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 138.8, -253.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 119.2, -207.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 96.3, -153.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 38.6, -134 , 0 );
setMoveKey( spep_3-3 + 20, 1, 76.9, -49.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 9.7, -237.3 , 0 );
setMoveKey( spep_3-3 + 24, 1, -1.7, -75.6 , 0 );
setMoveKey( spep_3-3 + 26, 1, 105.3, -126.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 3.2, -173 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -138.7 , 0 );
setMoveKey( spep_3-3 + 32, 1, 10.4, -77.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 83.6, -184 , 0 );
setMoveKey( spep_3-3 + 36, 1, 34.5, -132.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, -12.6, -180.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 72.3, -101.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 3.3, -109.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 38.3, -107.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 35.8, -139.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 40.6, -124.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, 41.7, -122.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 42.7, -120.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 43.7, -118.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 44.6, -117.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 45.5, -117.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 46.3, -117.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 48.9, -120.3 , 0 );
setMoveKey( spep_3-3 + 64, 1, 51.5, -123.5 , 0 );
setMoveKey( spep_3-1 + 66, 1, 84.2, -13.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.93,0.93);
setScaleKey( spep_3-3 + 4, 1, 0.96,0.96);
setScaleKey( spep_3-3 + 6, 1, 0.98,0.98);
setScaleKey( spep_3-3 + 8, 1, 1.02,1.02);
setScaleKey( spep_3-3 + 10, 1, 1.06,1.06);
setScaleKey( spep_3-3 + 12, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 14, 1, 1.18,1.18);
setScaleKey( spep_3-3 + 16, 1, 1.27,1.27);
setScaleKey( spep_3-3 + 18, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 20, 1, 1.3,1.3);
setScaleKey( spep_3-3 + 22, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 28, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 30, 1, 1.27,1.27);
setScaleKey( spep_3-3 + 32, 1, 1.25,1.25);
setScaleKey( spep_3-3 + 34, 1, 1.23,1.23);
setScaleKey( spep_3-3 + 36, 1, 1.21,1.21);
setScaleKey( spep_3-3 + 38, 1, 1.18,1.18);
setScaleKey( spep_3-3 + 40, 1, 1.17,1.17);
setScaleKey( spep_3-3 + 42, 1, 1.15,1.15);
setScaleKey( spep_3-3 + 44, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 46, 1, 1.08,1.08);
setScaleKey( spep_3-3 + 48, 1, 1.06,1.06);
setScaleKey( spep_3-3 + 50, 1, 1.03,1.03);
setScaleKey( spep_3-3 + 52, 1, 1,1);
setScaleKey( spep_3-3 + 54, 1, 0.97,0.97);
setScaleKey( spep_3-3 + 56, 1, 0.96,0.96);
setScaleKey( spep_3-3 + 58, 1, 0.93,0.93);
setScaleKey( spep_3-3 + 60, 1, 0.92,0.92);
setScaleKey( spep_3-3 + 62, 1, 0.76,0.76);
setScaleKey( spep_3-3 + 64, 1, 0.6,0.6);
setScaleKey( spep_3-1 + 66, 1, 0.45,0.45);

setRotateKey( spep_3 + 0, 1, 41.4 );
setRotateKey( spep_3-1 + 66, 1, 41.4 );

--SE
--向かっていく
SE025 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 54, 4, 22, -1);
setStartTimeMs( SE025,  683 );
SE026 = playSeVer2( spep_3 + 0, 1167, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE026, 47 );
setStartTimeMs( SE026,  183 );
SE027 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 54, 0, 22, -1);
SE028 = playSeVer2( spep_3 + 2, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE028, 157 );

--敵ヒット
SE029 = playSeVer2( spep_3 + 16, 1011, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 16, 1187, "", 0, 0, 0, -1);

--爆発
SE031 = playSeVer2( spep_3 + 46, 1069, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 62, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 64, 1067, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_3 + 70 ); 
endPhase( spep_3 + 170 ); -- 終了フレーム
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ハーツ　構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
stance = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stance, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, stance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 146, stance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stance, 0 );
setEffRotateKey( spep_0 + 146, stance, 0 );
setEffAlphaKey( spep_0 + 0, stance, 255 );
setEffAlphaKey( spep_0 + 144, stance, 255 );
setEffAlphaKey( spep_0 + 145, stance, 255 );
setEffAlphaKey( spep_0 + 146, stance, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +38;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]
--SE
--腕エネルギー溜める
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 62, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 135 );
SE004 = playSeVer2( spep_0 + 68, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 78 );
SE005 = playSeVer2( spep_0 + 70, 1257, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 70, 1200, "",spep_0 + 156, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 178 );
SE007 = playSeVer2( spep_0 + 70, 1265, "",spep_0 + 204, 0, 70, -1);
SE008 = playSeVer2( spep_0 + 74, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE008, 69 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--奥へ
SE009 = playSeVer2( spep_0 + 120, 1072, "", 0, 0, 0, -1);

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
--ハーツ　移動
------------------------------------------------------
-- ** エフェクト等 ** --
movement = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, movement, 0, 0, 0 );
setEffMoveKey( spep_1 + 220, movement, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, movement, -1.0, 1.0 );
setEffScaleKey( spep_1 + 220, movement, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, movement, 0 );
setEffRotateKey( spep_1 + 220, movement, 0 );
setEffAlphaKey( spep_1 + 0, movement, 255 );
setEffAlphaKey( spep_1 + 220, movement, 255 );

--敵の動き
setDisp( spep_1-3 + 144, 1, 1);
setDisp( spep_1-3 + 214, 1, 0);

changeAnime( spep_1-3 + 144, 1, 100);
changeAnime( spep_1-3 + 170, 1, 104);

setMoveKey( spep_1-3 + 144, 1, -13, -32 , 0 );
setMoveKey( spep_1-3 + 169, 1, -13, -32 , 0 );

setMoveKey( spep_1-3 + 170, 1, -4, -32 , 0 );
setMoveKey( spep_1-3 + 200, 1, -4, -32 , 0 );
setMoveKey( spep_1-3 + 202, 1, -2.9, -34.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, 5, -51.5 , 0 );
setMoveKey( spep_1-3 + 206, 1, 26.4, -98 , 0 );
setMoveKey( spep_1-3 + 208, 1, 68, -188.4 , 0 );
setMoveKey( spep_1-3 + 210, 1, 136.7, -337.4 , 0 );
setMoveKey( spep_1-3 + 212, 1, 239.1, -559.7 , 0 );
setMoveKey( spep_1-3 + 214, 1, 382, -870 , 0 );

setScaleKey( spep_1-3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 214, 1, 1.58, 1.58 );

setRotateKey( spep_1-3 + 144, 1, 0 );
setRotateKey( spep_1-3 + 214, 1, 0 );

--SE
--高速移動１
SE010 = playSeVer2( spep_1 + 22, 1373, "",spep_1 + 86, 0, 30, -1);
SE011 = playSeVer2( spep_1 + 34, 1116, "",spep_1 + 86, 0, 30, -1);
SE012 = playSeVer2( spep_1 + 34, 1117, "",spep_1 + 86, 0, 30, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
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
--高速移動２
SE013 = playSeVer2( spep_1 + 62 -6, 1373, "",spep_1 + 126, 0, 32, -1);
SE014 = playSeVer2( spep_1 + 72 -6, 1116, "",spep_1 + 126, 0, 32, -1);
SE015 = playSeVer2( spep_1 + 72 -6, 1117, "",spep_1 + 126, 0, 32, -1);

--高速移動３
SE016 = playSeVer2( spep_1 + 88, 1373, "",spep_1 + 134, 0, 12, -1);
SE017 = playSeVer2( spep_1 + 100, 1116, "",spep_1 + 134, 0, 12, -1);
SE018 = playSeVer2( spep_1 + 100, 1117, "",spep_1 + 134, 0, 12, -1);

--瞬間移動
SE019 = playSeVer2( spep_1 + 116, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 116, SE019, 72 );
SE020 = playSeVer2( spep_1 + 122, 1109, "", 0, 0, 0, -1);

--敵気づく
SE021 = playSeVer2( spep_1 + 168, 20, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 168, SE021, 80 );
SE022 = playSeVer2( spep_1 + 168, 48, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 168, SE022, 87 );

--画面遷移
SE023 = playSeVer2( spep_1 + 192, 44, "",spep_1 + 246, 0, 10, -1)

--白フェード
entryFade( spep_1 +216, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+220;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;
------------------------------------------------------
--ハーツ　攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 191.7, -377.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 190.2, -374.5 , 0 );
setMoveKey( spep_3-3 + 4, 1, 185.9, -364.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, 178.6, -347.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 168.4, -323.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 155.2, -292.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 138.8, -253.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 119.2, -207.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 96.3, -153.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 38.6, -134 , 0 );
setMoveKey( spep_3-3 + 20, 1, 76.9, -49.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 9.7, -237.3 , 0 );
setMoveKey( spep_3-3 + 24, 1, -1.7, -75.6 , 0 );
setMoveKey( spep_3-3 + 26, 1, 105.3, -126.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 3.2, -173 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -138.7 , 0 );
setMoveKey( spep_3-3 + 32, 1, 10.4, -77.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 83.6, -184 , 0 );
setMoveKey( spep_3-3 + 36, 1, 34.5, -132.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, -12.6, -180.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 72.3, -101.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 3.3, -109.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 38.3, -107.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 35.8, -139.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 40.6, -124.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, 41.7, -122.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 42.7, -120.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 43.7, -118.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 44.6, -117.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 45.5, -117.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 46.3, -117.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 48.9, -120.3 , 0 );
setMoveKey( spep_3-3 + 64, 1, 51.5, -123.5 , 0 );
setMoveKey( spep_3-1 + 66, 1, 84.2, -13.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.93,0.93);
setScaleKey( spep_3-3 + 4, 1, 0.96,0.96);
setScaleKey( spep_3-3 + 6, 1, 0.98,0.98);
setScaleKey( spep_3-3 + 8, 1, 1.02,1.02);
setScaleKey( spep_3-3 + 10, 1, 1.06,1.06);
setScaleKey( spep_3-3 + 12, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 14, 1, 1.18,1.18);
setScaleKey( spep_3-3 + 16, 1, 1.27,1.27);
setScaleKey( spep_3-3 + 18, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 20, 1, 1.3,1.3);
setScaleKey( spep_3-3 + 22, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 28, 1, 1.28,1.28);
setScaleKey( spep_3-3 + 30, 1, 1.27,1.27);
setScaleKey( spep_3-3 + 32, 1, 1.25,1.25);
setScaleKey( spep_3-3 + 34, 1, 1.23,1.23);
setScaleKey( spep_3-3 + 36, 1, 1.21,1.21);
setScaleKey( spep_3-3 + 38, 1, 1.18,1.18);
setScaleKey( spep_3-3 + 40, 1, 1.17,1.17);
setScaleKey( spep_3-3 + 42, 1, 1.15,1.15);
setScaleKey( spep_3-3 + 44, 1, 1.12,1.12);
setScaleKey( spep_3-3 + 46, 1, 1.08,1.08);
setScaleKey( spep_3-3 + 48, 1, 1.06,1.06);
setScaleKey( spep_3-3 + 50, 1, 1.03,1.03);
setScaleKey( spep_3-3 + 52, 1, 1,1);
setScaleKey( spep_3-3 + 54, 1, 0.97,0.97);
setScaleKey( spep_3-3 + 56, 1, 0.96,0.96);
setScaleKey( spep_3-3 + 58, 1, 0.93,0.93);
setScaleKey( spep_3-3 + 60, 1, 0.92,0.92);
setScaleKey( spep_3-3 + 62, 1, 0.76,0.76);
setScaleKey( spep_3-3 + 64, 1, 0.6,0.6);
setScaleKey( spep_3-1 + 66, 1, 0.45,0.45);

setRotateKey( spep_3 + 0, 1, 41.4 );
setRotateKey( spep_3-1 + 66, 1, 41.4 );

--SE
--向かっていく
SE025 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 54, 4, 22, -1);
setStartTimeMs( SE025,  683 );
SE026 = playSeVer2( spep_3 + 0, 1167, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE026, 47 );
setStartTimeMs( SE026,  183 );
SE027 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 54, 0, 22, -1);
SE028 = playSeVer2( spep_3 + 2, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE028, 157 );

--敵ヒット
SE029 = playSeVer2( spep_3 + 16, 1011, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 16, 1187, "", 0, 0, 0, -1);

--爆発
SE031 = playSeVer2( spep_3 + 46, 1069, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 62, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 64, 1067, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_3 + 70 ); 
endPhase( spep_3 + 170 ); -- 終了フレーム
end