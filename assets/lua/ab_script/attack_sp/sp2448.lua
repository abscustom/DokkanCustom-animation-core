--1025490:セルマックス_マキシマムブラスター
--sp_effect_a1_00367

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
SP_01=	160340	;--	冒頭～目アップまで
SP_02=	160341	;--	パンチ～ラスト・手前
SP_03=	160342	;--	パンチ～ラスト・奥

--エフェクト(敵)
SP_01x=	160340	;--	冒頭～目アップまで	
SP_02x=	160343	;--	パンチ～ラスト・手前	(敵)
SP_03x=	160344	;--	パンチ～ラスト・奥	(敵)

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
--冒頭～目アップまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 100, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 100, first, 255 );
setEffAlphaKey( spep_0 + 101, first, 0 );
setEffAlphaKey( spep_0 + 102, first, 0 );

--SE
--走り込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 22, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "",spep_0 + 32, 0, 12, -1);
SE003 = playSeVer2( spep_0 + 4, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 4, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 14, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 14, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 14, 1182, "",spep_0 + 36, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 14, 1024, "",spep_0 + 46, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    
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
--走り込んでくる
SE007 = playSeVer2( spep_0 + 30, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 30, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 30, 1182, "",spep_0 + 52, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 30, 1024, "",spep_0 + 62, 0, 12, -1);
SE010 = playSeVer2( spep_0 + 44, 1024, "",spep_0 + 76, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 48, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 48, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 48, 1182, "",spep_0 + 70, 0, 12, -1);

--突っ込んでくる
SE013 = playSeVer2( spep_0 + 64, 1182, "",spep_0 + 104, 0, 4, -1);
SE014 = playSeVer2( spep_0 + 64, 9, "",spep_0 + 104, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 64, 1167, "",spep_0 + 104, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 64, SE015, 58 );
setPitch( spep_0 + 64, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );

--白フェード
entryFade( spep_0 +92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--パンチ～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 576, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 576, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 576, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 576, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 576, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 576, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 56, 1, 0);

changeAnime( spep_2 + 0, 1, 117);
changeAnime( spep_2-3 + 26, 1, 107);
changeAnime( spep_2-3 + 36, 1, 105);

setMoveKey( spep_2 + 0, 1, 3, 210.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 5, 210.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 7, 209.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 9, 209.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, 11, 208.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 13, 208.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 15, 207.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 17, 207.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 14.5, 200.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 11.1, 192.2 , 0 );
setMoveKey( spep_2-3 + 20, 1, 7, 181.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 2, 168.9 , 0 );
setMoveKey( spep_2-3 + 24, 1, -3.8, 154 , 0 );
setMoveKey( spep_2-3 + 25, 1, -3.8, 154 , 0 );

setMoveKey( spep_2-3 + 26, 1, 6.9, -7.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 10.2, 12.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, -6.3, -7.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 13.2, 18.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, -13.5, 43.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, -13.5, 43.8 , 0 );

setMoveKey( spep_2-3 + 36, 1, 117.8, 372.6 , 0 );
setMoveKey( spep_2-3 + 38, 1, 139.1, 393.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, 184.4, 435.6 , 0 );
setMoveKey( spep_2-3 + 42, 1, 203.5, 460.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 253.1, 454.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 268, 441.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 303, 443.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 302.2, 418.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 329.1, 427.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 321.7, 419.1 , 0 );
setMoveKey( spep_2-1 + 56, 1, 336.8, 420.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2-3 + 14, 1, 1, 1 );
setScaleKey( spep_2-3 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 20, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 22, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 24, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 25, 1, 1.17, 1.17 );

setScaleKey( spep_2-3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 35, 1, 0.85, 0.85 );

setScaleKey( spep_2-3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 42, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 46, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 48, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 52, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 54, 1, 0.19, 0.19 );
setScaleKey( spep_2-1 + 56, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );

setRotateKey( spep_2-3 + 26, 1, -86.3 );
setRotateKey( spep_2-3 + 30, 1, -86.3 );
setRotateKey( spep_2-3 + 32, 1, -86.4 );
setRotateKey( spep_2-3 + 34, 1, -86.6 );
setRotateKey( spep_2-3 + 35, 1, -86.6 );

setRotateKey( spep_2-3 + 36, 1, -3 );
setRotateKey( spep_2-3 + 38, 1, 8.8 );
setRotateKey( spep_2-3 + 40, 1, 19.3 );
setRotateKey( spep_2-3 + 42, 1, 28.6 );
setRotateKey( spep_2-3 + 44, 1, 36.6 );
setRotateKey( spep_2-3 + 46, 1, 43.4 );
setRotateKey( spep_2-3 + 48, 1, 49 );
setRotateKey( spep_2-3 + 50, 1, 53.3 );
setRotateKey( spep_2-3 + 52, 1, 56.4 );
setRotateKey( spep_2-3 + 54, 1, 58.3 );
setRotateKey( spep_2-1 + 56, 1, 58.9 );

--敵の動き
setDisp( spep_2-3 + 138, 1, 1);
setDisp( spep_2-1 + 242, 1, 0);

changeAnime( spep_2-3 + 138, 1, 105);
changeAnime( spep_2-3 + 200, 1, 108);
changeAnime( spep_2-3 + 224, 1, 106);

setMoveKey( spep_2-3 + 138, 1, -364.1, -740.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, -242.1, -433.7 , 0 );
setMoveKey( spep_2-3 + 142, 1, -149.1, -200 , 0 );
setMoveKey( spep_2-3 + 144, 1, -85.2, -38.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, -61, -8.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, -42.2, 15.4 , 0 );
setMoveKey( spep_2-3 + 150, 1, -28.7, 32.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, -20.7, 42.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -18.3, 46.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, -17.3, 47.7 , 0 );
setMoveKey( spep_2-3 + 158, 1, -16.4, 49 , 0 );
setMoveKey( spep_2-3 + 160, 1, -15.7, 50.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, -14.8, 51.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, -14.1, 52.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, -13.4, 53.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, -12.7, 54.9 , 0 );
setMoveKey( spep_2-3 + 170, 1, -12.1, 55.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, -11.5, 56.8 , 0 );
setMoveKey( spep_2-3 + 174, 1, -11, 57.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, -10.5, 58.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, -10.1, 59.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, -9.7, 59.8 , 0 );
setMoveKey( spep_2-3 + 182, 1, -9.3, 60.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, -8.9, 60.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -8.7, 61.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, -8.5, 61.7 , 0 );
setMoveKey( spep_2-3 + 190, 1, -8.2, 62.1 , 0 );
setMoveKey( spep_2-3 + 192, 1, -8.1, 62.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, -8, 62.4 , 0 );
setMoveKey( spep_2-3 + 196, 1, -7.9, 62.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, -7.9, 62.7 , 0 );
setMoveKey( spep_2-3 + 199, 1, -7.9, 62.7 , 0 );

setMoveKey( spep_2-3 + 200, 1, -0.3, 50.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 1.5, 52.3 , 0 );
setMoveKey( spep_2-3 + 204, 1, 3.3, 53.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, 5, 55.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 6.8, 57 , 0 );
setMoveKey( spep_2-3 + 210, 1, 8.6, 58.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 10.4, 60.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 12.1, 61.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 13.9, 63.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 15.7, 64.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 17.5, 66.4 , 0 );
setMoveKey( spep_2-3 + 222, 1, 19.3, 68 , 0 );
setMoveKey( spep_2-3 + 223, 1, 19.3, 68 , 0 );

setMoveKey( spep_2-3 + 224, 1, -58.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, -72.5, 35.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, -105.3, 42.8 , 0 );
setMoveKey( spep_2-3 + 230, 1, -90.2, 25.8 , 0 );
setMoveKey( spep_2-3 + 232, 1, -104.7, 12.1 , 0 );
setMoveKey( spep_2-3 + 234, 1, -92.9, 24.8 , 0 );
setMoveKey( spep_2-3 + 236, 1, -107.4, 21.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, -246.6, -7.9 , 0 );
setMoveKey( spep_2-3 + 240, 1, -248.7, -17.8 , 0 );
setMoveKey( spep_2-1 + 242, 1, -481.5, -239.3 , 0 );

setScaleKey( spep_2-3 + 138, 1, 8.5, 8.5 );
setScaleKey( spep_2-3 + 140, 1, 5.57, 5.57 );
setScaleKey( spep_2-3 + 142, 1, 3.33, 3.33 );
setScaleKey( spep_2-3 + 144, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 146, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 148, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 154, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 156, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 158, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 160, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 162, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 168, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 170, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 172, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 174, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 176, 1, 0.65, 0.65 );
setScaleKey( spep_2-3 + 178, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 180, 1, 0.63, 0.63 );
setScaleKey( spep_2-3 + 182, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 184, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 186, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 188, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 190, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 199, 1, 0.6, 0.6 );

setScaleKey( spep_2-3 + 200, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 223, 1, 1.1, 1.1 );

setScaleKey( spep_2-3 + 224, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 226, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 228, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 230, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 234, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 236, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 238, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 240, 1, 1.16, 1.16 );
setScaleKey( spep_2-1 + 242, 1, 1.38, 1.38 );

setRotateKey( spep_2-3 + 138, 1, -1.3 );
setRotateKey( spep_2-3 + 140, 1, -3 );
setRotateKey( spep_2-3 + 142, 1, -4.3 );
setRotateKey( spep_2-3 + 144, 1, -5.2 );
setRotateKey( spep_2-3 + 146, 1, -4.4 );
setRotateKey( spep_2-3 + 148, 1, -3.8 );
setRotateKey( spep_2-3 + 150, 1, -3.3 );
setRotateKey( spep_2-3 + 152, 1, -3 );
setRotateKey( spep_2-3 + 154, 1, -3 );
setRotateKey( spep_2-3 + 156, 1, -2.6 );
setRotateKey( spep_2-3 + 158, 1, -2.3 );
setRotateKey( spep_2-3 + 160, 1, -2 );
setRotateKey( spep_2-3 + 162, 1, -1.7 );
setRotateKey( spep_2-3 + 164, 1, -1.5 );
setRotateKey( spep_2-3 + 166, 1, -1.2 );
setRotateKey( spep_2-3 + 168, 1, -1 );
setRotateKey( spep_2-3 + 170, 1, -0.8 );
setRotateKey( spep_2-3 + 172, 1, -0.6 );
setRotateKey( spep_2-3 + 174, 1, -0.4 );
setRotateKey( spep_2-3 + 176, 1, -0.2 );
setRotateKey( spep_2-3 + 178, 1, 0 );
setRotateKey( spep_2-3 + 180, 1, 0.1 );
setRotateKey( spep_2-3 + 182, 1, 0.2 );
setRotateKey( spep_2-3 + 184, 1, 0.4 );
setRotateKey( spep_2-3 + 186, 1, 0.5 );
setRotateKey( spep_2-3 + 188, 1, 0.5 );
setRotateKey( spep_2-3 + 190, 1, 0.6 );
setRotateKey( spep_2-3 + 192, 1, 0.7 );
setRotateKey( spep_2-3 + 199, 1, 0.7 );

setRotateKey( spep_2-3 + 200, 1, 29.9 );
setRotateKey( spep_2-3 + 202, 1, 30.2 );
setRotateKey( spep_2-3 + 204, 1, 30.4 );
setRotateKey( spep_2-3 + 206, 1, 30.7 );
setRotateKey( spep_2-3 + 208, 1, 31 );
setRotateKey( spep_2-3 + 210, 1, 31.2 );
setRotateKey( spep_2-3 + 212, 1, 31.5 );
setRotateKey( spep_2-3 + 214, 1, 31.8 );
setRotateKey( spep_2-3 + 216, 1, 32.1 );
setRotateKey( spep_2-3 + 218, 1, 32.3 );
setRotateKey( spep_2-3 + 220, 1, 32.6 );
setRotateKey( spep_2-3 + 222, 1, 32.9 );
setRotateKey( spep_2-3 + 223, 1, 32.9 );

setRotateKey( spep_2-3 + 224, 1, -82.5 );
setRotateKey( spep_2-3 + 236, 1, -82.5 );
setRotateKey( spep_2-3 + 238, 1, -80.9 );
setRotateKey( spep_2-3 + 240, 1, -80.9 );
setRotateKey( spep_2-1 + 242, 1, -76.4 );

--敵の動き
setDisp( spep_2-3 + 406, 1, 1);
setDisp( spep_2-1 + 448, 1, 0);

changeAnime( spep_2-3 + 406, 1, 105);

setMoveKey( spep_2-3 + 406, 1, 29.5, -79.4 , 0 );
setMoveKey( spep_2-3 + 408, 1, 27.2, -97.6 , 0 );
setMoveKey( spep_2-3 + 410, 1, 25, -114.9 , 0 );
setMoveKey( spep_2-3 + 412, 1, 22.9, -131.2 , 0 );
setMoveKey( spep_2-3 + 414, 1, 20.9, -146.7 , 0 );
setMoveKey( spep_2-3 + 416, 1, 19, -161.3 , 0 );
setMoveKey( spep_2-3 + 418, 1, 17.3, -175 , 0 );
setMoveKey( spep_2-3 + 420, 1, 15.6, -187.7 , 0 );
setMoveKey( spep_2-3 + 422, 1, 14.1, -199.6 , 0 );
setMoveKey( spep_2-3 + 424, 1, 12.6, -210.6 , 0 );
setMoveKey( spep_2-3 + 426, 1, 11.3, -220.7 , 0 );
setMoveKey( spep_2-3 + 428, 1, 10.1, -229.9 , 0 );
setMoveKey( spep_2-3 + 430, 1, 9, -238.2 , 0 );
setMoveKey( spep_2-3 + 432, 1, 8, -245.7 , 0 );
setMoveKey( spep_2-3 + 434, 1, 7.1, -252.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, 6.4, -257.9 , 0 );
setMoveKey( spep_2-3 + 438, 1, 5.8, -262.7 , 0 );
setMoveKey( spep_2-3 + 440, 1, 5.2, -266.7 , 0 );
setMoveKey( spep_2-3 + 442, 1, 4.8, -269.7 , 0 );
setMoveKey( spep_2-3 + 444, 1, 4.5, -271.9 , 0 );
setMoveKey( spep_2-3 + 446, 1, 4.4, -273.2 , 0 );
setMoveKey( spep_2-1 + 448, 1, 4.3, -273.7 , 0 );

setScaleKey( spep_2-3 + 406, 1, 3.26, 3.26 );
setScaleKey( spep_2-3 + 408, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 410, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 412, 1, 2.42, 2.42 );
setScaleKey( spep_2-3 + 414, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 416, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 418, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 420, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 422, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 424, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 426, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 428, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 430, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 432, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 434, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 436, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 438, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 440, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 442, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 444, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 446, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 448, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 406, 1, -170.7 );
setRotateKey( spep_2-1 + 448, 1, -170.7 );

--SE
--振りかぶる
SE017 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 42, 0, 20, -1);

--パンチ
SE018 = playSeVer2( spep_2 + 24, 1068, "",spep_2 + 104, 0, 46, -1);
SE019 = playSeVer2( spep_2 + 24, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 82 );
SE020 = playSeVer2( spep_2 + 24, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE020, 79 );
SE021 = playSeVer2( spep_2 + 24, 1359, "", 0, 0, 0, -1);

--かがむ
SE022 = playSeVer2( spep_2 + 72, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE022, 89 );
setPitch( spep_2 + 72, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--飛び上がる
SE023 = playSeVer2( spep_2 + 104, 1116, "",spep_2 + 154, 0, 26, -1);
SE024 = playSeVer2( spep_2 + 106, 1182, "", 0, 0, 0, -1);

--背後に回る
SE025 = playSeVer2( spep_2 + 154, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  333 );
SE026 = playSeVer2( spep_2 + 166, 43, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 166, 1003, "", 0, 0, 0, -1);

--パンチ
SE028 = playSeVer2( spep_2 + 214, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 220, 1359, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 222, 1068, "",spep_2 + 328, 0, 54, -1);
SE031 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE031, 91 );
SE032 = playSeVer2( spep_2 + 222, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE032, 68 );

--口気弾溜め
SE033 = playSeVer2( spep_2 + 312, 1020, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 312, 1158, "",spep_2 + 374, 0, 14, -1);
SE035 = playSeVer2( spep_2 + 312, 1204, "",spep_2 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 312, SE035, 180 );
SE036 = playSeVer2( spep_2 + 318, 1144, "",spep_2 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 318, SE036, 67 );

--気弾発射
SE037 = playSeVer2( spep_2 + 354, 1258, "",spep_2 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 354, SE037, 76 );
SE038 = playSeVer2( spep_2 + 360, 1213, "",spep_2 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 360, SE038, 80 );
SE039 = playSeVer2( spep_2 + 360, 1193, "",spep_2 + 478, 0, 26, -1);
SE040 = playSeVer2( spep_2 + 360, 1312, "",spep_2 + 478, 0, 26, -1);

--気弾飛んでいく
SE041 = playSeVer2( spep_2 + 406, 1202, "",spep_2 + 478, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 406, SE041, 211 );

--爆発
SE042 = playSeVer2( spep_2 + 452, 1023, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 456, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 570, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+460);
endPhase( spep_2 + 566 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～目アップまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 100, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 100, first, 255 );
setEffAlphaKey( spep_0 + 101, first, 0 );
setEffAlphaKey( spep_0 + 102, first, 0 );

--SE
--走り込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 22, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "",spep_0 + 32, 0, 12, -1);
SE003 = playSeVer2( spep_0 + 4, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 4, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 14, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 14, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 14, 1182, "",spep_0 + 36, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 14, 1024, "",spep_0 + 46, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    
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
--走り込んでくる
SE007 = playSeVer2( spep_0 + 30, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 30, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 30, 1182, "",spep_0 + 52, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 30, 1024, "",spep_0 + 62, 0, 12, -1);
SE010 = playSeVer2( spep_0 + 44, 1024, "",spep_0 + 76, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 48, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 48, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 48, 1182, "",spep_0 + 70, 0, 12, -1);

--突っ込んでくる
SE013 = playSeVer2( spep_0 + 64, 1182, "",spep_0 + 104, 0, 4, -1);
SE014 = playSeVer2( spep_0 + 64, 9, "",spep_0 + 104, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 64, 1167, "",spep_0 + 104, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 64, SE015, 58 );
setPitch( spep_0 + 64, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );

--白フェード
entryFade( spep_0 +92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--パンチ～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 576, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 576, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 576, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 576, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 576, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 576, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 56, 1, 0);

changeAnime( spep_2 + 0, 1, 117);
changeAnime( spep_2-3 + 26, 1, 107);
changeAnime( spep_2-3 + 36, 1, 105);

setMoveKey( spep_2 + 0, 1, 3, 210.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 5, 210.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 7, 209.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 9, 209.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, 11, 208.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 13, 208.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 15, 207.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 17, 207.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 14.5, 200.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 11.1, 192.2 , 0 );
setMoveKey( spep_2-3 + 20, 1, 7, 181.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 2, 168.9 , 0 );
setMoveKey( spep_2-3 + 24, 1, -3.8, 154 , 0 );
setMoveKey( spep_2-3 + 25, 1, -3.8, 154 , 0 );

setMoveKey( spep_2-3 + 26, 1, 6.9, -7.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 10.2, 12.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, -6.3, -7.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 13.2, 18.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, -13.5, 43.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, -13.5, 43.8 , 0 );

setMoveKey( spep_2-3 + 36, 1, 117.8, 372.6 , 0 );
setMoveKey( spep_2-3 + 38, 1, 139.1, 393.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, 184.4, 435.6 , 0 );
setMoveKey( spep_2-3 + 42, 1, 203.5, 460.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 253.1, 454.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 268, 441.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 303, 443.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 302.2, 418.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 329.1, 427.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 321.7, 419.1 , 0 );
setMoveKey( spep_2-1 + 56, 1, 336.8, 420.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2-3 + 14, 1, 1, 1 );
setScaleKey( spep_2-3 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 20, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 22, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 24, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 25, 1, 1.17, 1.17 );

setScaleKey( spep_2-3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 35, 1, 0.85, 0.85 );

setScaleKey( spep_2-3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 42, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 46, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 48, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 52, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 54, 1, 0.19, 0.19 );
setScaleKey( spep_2-1 + 56, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );

setRotateKey( spep_2-3 + 26, 1, -86.3 );
setRotateKey( spep_2-3 + 30, 1, -86.3 );
setRotateKey( spep_2-3 + 32, 1, -86.4 );
setRotateKey( spep_2-3 + 34, 1, -86.6 );
setRotateKey( spep_2-3 + 35, 1, -86.6 );

setRotateKey( spep_2-3 + 36, 1, -3 );
setRotateKey( spep_2-3 + 38, 1, 8.8 );
setRotateKey( spep_2-3 + 40, 1, 19.3 );
setRotateKey( spep_2-3 + 42, 1, 28.6 );
setRotateKey( spep_2-3 + 44, 1, 36.6 );
setRotateKey( spep_2-3 + 46, 1, 43.4 );
setRotateKey( spep_2-3 + 48, 1, 49 );
setRotateKey( spep_2-3 + 50, 1, 53.3 );
setRotateKey( spep_2-3 + 52, 1, 56.4 );
setRotateKey( spep_2-3 + 54, 1, 58.3 );
setRotateKey( spep_2-1 + 56, 1, 58.9 );

--敵の動き
setDisp( spep_2-3 + 138, 1, 1);
setDisp( spep_2-1 + 242, 1, 0);

changeAnime( spep_2-3 + 138, 1, 105);
changeAnime( spep_2-3 + 200, 1, 108);
changeAnime( spep_2-3 + 224, 1, 106);

setMoveKey( spep_2-3 + 138, 1, -364.1, -740.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, -242.1, -433.7 , 0 );
setMoveKey( spep_2-3 + 142, 1, -149.1, -200 , 0 );
setMoveKey( spep_2-3 + 144, 1, -85.2, -38.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, -61, -8.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, -42.2, 15.4 , 0 );
setMoveKey( spep_2-3 + 150, 1, -28.7, 32.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, -20.7, 42.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -18.3, 46.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, -17.3, 47.7 , 0 );
setMoveKey( spep_2-3 + 158, 1, -16.4, 49 , 0 );
setMoveKey( spep_2-3 + 160, 1, -15.7, 50.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, -14.8, 51.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, -14.1, 52.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, -13.4, 53.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, -12.7, 54.9 , 0 );
setMoveKey( spep_2-3 + 170, 1, -12.1, 55.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, -11.5, 56.8 , 0 );
setMoveKey( spep_2-3 + 174, 1, -11, 57.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, -10.5, 58.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, -10.1, 59.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, -9.7, 59.8 , 0 );
setMoveKey( spep_2-3 + 182, 1, -9.3, 60.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, -8.9, 60.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -8.7, 61.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, -8.5, 61.7 , 0 );
setMoveKey( spep_2-3 + 190, 1, -8.2, 62.1 , 0 );
setMoveKey( spep_2-3 + 192, 1, -8.1, 62.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, -8, 62.4 , 0 );
setMoveKey( spep_2-3 + 196, 1, -7.9, 62.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, -7.9, 62.7 , 0 );
setMoveKey( spep_2-3 + 199, 1, -7.9, 62.7 , 0 );

setMoveKey( spep_2-3 + 200, 1, -0.3, 50.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 1.5, 52.3 , 0 );
setMoveKey( spep_2-3 + 204, 1, 3.3, 53.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, 5, 55.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 6.8, 57 , 0 );
setMoveKey( spep_2-3 + 210, 1, 8.6, 58.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 10.4, 60.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 12.1, 61.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 13.9, 63.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 15.7, 64.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 17.5, 66.4 , 0 );
setMoveKey( spep_2-3 + 222, 1, 19.3, 68 , 0 );
setMoveKey( spep_2-3 + 223, 1, 19.3, 68 , 0 );

setMoveKey( spep_2-3 + 224, 1, -58.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, -72.5, 35.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, -105.3, 42.8 , 0 );
setMoveKey( spep_2-3 + 230, 1, -90.2, 25.8 , 0 );
setMoveKey( spep_2-3 + 232, 1, -104.7, 12.1 , 0 );
setMoveKey( spep_2-3 + 234, 1, -92.9, 24.8 , 0 );
setMoveKey( spep_2-3 + 236, 1, -107.4, 21.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, -246.6, -7.9 , 0 );
setMoveKey( spep_2-3 + 240, 1, -248.7, -17.8 , 0 );
setMoveKey( spep_2-1 + 242, 1, -481.5, -239.3 , 0 );

setScaleKey( spep_2-3 + 138, 1, 8.5, 8.5 );
setScaleKey( spep_2-3 + 140, 1, 5.57, 5.57 );
setScaleKey( spep_2-3 + 142, 1, 3.33, 3.33 );
setScaleKey( spep_2-3 + 144, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 146, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 148, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 154, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 156, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 158, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 160, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 162, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 168, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 170, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 172, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 174, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 176, 1, 0.65, 0.65 );
setScaleKey( spep_2-3 + 178, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 180, 1, 0.63, 0.63 );
setScaleKey( spep_2-3 + 182, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 184, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 186, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 188, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 190, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 199, 1, 0.6, 0.6 );

setScaleKey( spep_2-3 + 200, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 223, 1, 1.1, 1.1 );

setScaleKey( spep_2-3 + 224, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 226, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 228, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 230, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 234, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 236, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 238, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 240, 1, 1.16, 1.16 );
setScaleKey( spep_2-1 + 242, 1, 1.38, 1.38 );

setRotateKey( spep_2-3 + 138, 1, -1.3 );
setRotateKey( spep_2-3 + 140, 1, -3 );
setRotateKey( spep_2-3 + 142, 1, -4.3 );
setRotateKey( spep_2-3 + 144, 1, -5.2 );
setRotateKey( spep_2-3 + 146, 1, -4.4 );
setRotateKey( spep_2-3 + 148, 1, -3.8 );
setRotateKey( spep_2-3 + 150, 1, -3.3 );
setRotateKey( spep_2-3 + 152, 1, -3 );
setRotateKey( spep_2-3 + 154, 1, -3 );
setRotateKey( spep_2-3 + 156, 1, -2.6 );
setRotateKey( spep_2-3 + 158, 1, -2.3 );
setRotateKey( spep_2-3 + 160, 1, -2 );
setRotateKey( spep_2-3 + 162, 1, -1.7 );
setRotateKey( spep_2-3 + 164, 1, -1.5 );
setRotateKey( spep_2-3 + 166, 1, -1.2 );
setRotateKey( spep_2-3 + 168, 1, -1 );
setRotateKey( spep_2-3 + 170, 1, -0.8 );
setRotateKey( spep_2-3 + 172, 1, -0.6 );
setRotateKey( spep_2-3 + 174, 1, -0.4 );
setRotateKey( spep_2-3 + 176, 1, -0.2 );
setRotateKey( spep_2-3 + 178, 1, 0 );
setRotateKey( spep_2-3 + 180, 1, 0.1 );
setRotateKey( spep_2-3 + 182, 1, 0.2 );
setRotateKey( spep_2-3 + 184, 1, 0.4 );
setRotateKey( spep_2-3 + 186, 1, 0.5 );
setRotateKey( spep_2-3 + 188, 1, 0.5 );
setRotateKey( spep_2-3 + 190, 1, 0.6 );
setRotateKey( spep_2-3 + 192, 1, 0.7 );
setRotateKey( spep_2-3 + 199, 1, 0.7 );

setRotateKey( spep_2-3 + 200, 1, 29.9 );
setRotateKey( spep_2-3 + 202, 1, 30.2 );
setRotateKey( spep_2-3 + 204, 1, 30.4 );
setRotateKey( spep_2-3 + 206, 1, 30.7 );
setRotateKey( spep_2-3 + 208, 1, 31 );
setRotateKey( spep_2-3 + 210, 1, 31.2 );
setRotateKey( spep_2-3 + 212, 1, 31.5 );
setRotateKey( spep_2-3 + 214, 1, 31.8 );
setRotateKey( spep_2-3 + 216, 1, 32.1 );
setRotateKey( spep_2-3 + 218, 1, 32.3 );
setRotateKey( spep_2-3 + 220, 1, 32.6 );
setRotateKey( spep_2-3 + 222, 1, 32.9 );
setRotateKey( spep_2-3 + 223, 1, 32.9 );

setRotateKey( spep_2-3 + 224, 1, -82.5 );
setRotateKey( spep_2-3 + 236, 1, -82.5 );
setRotateKey( spep_2-3 + 238, 1, -80.9 );
setRotateKey( spep_2-3 + 240, 1, -80.9 );
setRotateKey( spep_2-1 + 242, 1, -76.4 );

--敵の動き
setDisp( spep_2-3 + 406, 1, 1);
setDisp( spep_2-1 + 448, 1, 0);

changeAnime( spep_2-3 + 406, 1, 105);

setMoveKey( spep_2-3 + 406, 1, 29.5, -79.4 , 0 );
setMoveKey( spep_2-3 + 408, 1, 27.2, -97.6 , 0 );
setMoveKey( spep_2-3 + 410, 1, 25, -114.9 , 0 );
setMoveKey( spep_2-3 + 412, 1, 22.9, -131.2 , 0 );
setMoveKey( spep_2-3 + 414, 1, 20.9, -146.7 , 0 );
setMoveKey( spep_2-3 + 416, 1, 19, -161.3 , 0 );
setMoveKey( spep_2-3 + 418, 1, 17.3, -175 , 0 );
setMoveKey( spep_2-3 + 420, 1, 15.6, -187.7 , 0 );
setMoveKey( spep_2-3 + 422, 1, 14.1, -199.6 , 0 );
setMoveKey( spep_2-3 + 424, 1, 12.6, -210.6 , 0 );
setMoveKey( spep_2-3 + 426, 1, 11.3, -220.7 , 0 );
setMoveKey( spep_2-3 + 428, 1, 10.1, -229.9 , 0 );
setMoveKey( spep_2-3 + 430, 1, 9, -238.2 , 0 );
setMoveKey( spep_2-3 + 432, 1, 8, -245.7 , 0 );
setMoveKey( spep_2-3 + 434, 1, 7.1, -252.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, 6.4, -257.9 , 0 );
setMoveKey( spep_2-3 + 438, 1, 5.8, -262.7 , 0 );
setMoveKey( spep_2-3 + 440, 1, 5.2, -266.7 , 0 );
setMoveKey( spep_2-3 + 442, 1, 4.8, -269.7 , 0 );
setMoveKey( spep_2-3 + 444, 1, 4.5, -271.9 , 0 );
setMoveKey( spep_2-3 + 446, 1, 4.4, -273.2 , 0 );
setMoveKey( spep_2-1 + 448, 1, 4.3, -273.7 , 0 );

setScaleKey( spep_2-3 + 406, 1, 3.26, 3.26 );
setScaleKey( spep_2-3 + 408, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 410, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 412, 1, 2.42, 2.42 );
setScaleKey( spep_2-3 + 414, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 416, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 418, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 420, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 422, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 424, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 426, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 428, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 430, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 432, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 434, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 436, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 438, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 440, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 442, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 444, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 446, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 448, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 406, 1, -170.7 );
setRotateKey( spep_2-1 + 448, 1, -170.7 );

--SE
--振りかぶる
SE017 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 42, 0, 20, -1);

--パンチ
SE018 = playSeVer2( spep_2 + 24, 1068, "",spep_2 + 104, 0, 46, -1);
SE019 = playSeVer2( spep_2 + 24, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 82 );
SE020 = playSeVer2( spep_2 + 24, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE020, 79 );
SE021 = playSeVer2( spep_2 + 24, 1359, "", 0, 0, 0, -1);

--かがむ
SE022 = playSeVer2( spep_2 + 72, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE022, 89 );
setPitch( spep_2 + 72, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--飛び上がる
SE023 = playSeVer2( spep_2 + 104, 1116, "",spep_2 + 154, 0, 26, -1);
SE024 = playSeVer2( spep_2 + 106, 1182, "", 0, 0, 0, -1);

--背後に回る
SE025 = playSeVer2( spep_2 + 154, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  333 );
SE026 = playSeVer2( spep_2 + 166, 43, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 166, 1003, "", 0, 0, 0, -1);

--パンチ
SE028 = playSeVer2( spep_2 + 214, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 220, 1359, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 222, 1068, "",spep_2 + 328, 0, 54, -1);
SE031 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE031, 91 );
SE032 = playSeVer2( spep_2 + 222, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE032, 68 );

--口気弾溜め
SE033 = playSeVer2( spep_2 + 312, 1020, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 312, 1158, "",spep_2 + 374, 0, 14, -1);
SE035 = playSeVer2( spep_2 + 312, 1204, "",spep_2 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 312, SE035, 180 );
SE036 = playSeVer2( spep_2 + 318, 1144, "",spep_2 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 318, SE036, 67 );

--気弾発射
SE037 = playSeVer2( spep_2 + 354, 1258, "",spep_2 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 354, SE037, 76 );
SE038 = playSeVer2( spep_2 + 360, 1213, "",spep_2 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 360, SE038, 80 );
SE039 = playSeVer2( spep_2 + 360, 1193, "",spep_2 + 478, 0, 26, -1);
SE040 = playSeVer2( spep_2 + 360, 1312, "",spep_2 + 478, 0, 26, -1);

--気弾飛んでいく
SE041 = playSeVer2( spep_2 + 406, 1202, "",spep_2 + 478, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 406, SE041, 211 );

--爆発
SE042 = playSeVer2( spep_2 + 452, 1023, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 456, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 570, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+460);
endPhase( spep_2 + 566 );
end