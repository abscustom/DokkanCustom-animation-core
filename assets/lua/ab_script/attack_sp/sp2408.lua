--1024860:超サイヤ人孫悟空_超かめはめ波
--sp_effect_b4_00250
--sp2408

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
SP_01=	160427	;--	冒頭～タメまで・手前
SP_02=	160428	;--	冒頭～タメまで・奥
SP_03=	160429	;--	発射～ラスト・手前
SP_04=	160430	;--	発射～ラスト・奥

--エフェクト(敵)
SP_01x=	160431	;--	冒頭～タメまで・手前	(敵)
SP_02x=	160432	;--	冒頭～タメまで・奥	(敵)
SP_03x=	160433	;--	発射～ラスト・手前	(敵)
SP_04x=	160446	;--	発射～ラスト・奥	(敵)
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

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 600, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 600, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 600, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 600, first_f, 255 );

--SE
--気ダメ
SE001 = playSeVer2( spep_0 + 0, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 0, 1168, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 118, 1172, "",spep_0 + 162, 6, 10, -1);
setStartTimeMs( SE004,  167 );
SE005 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 118, 9, "",spep_0 + 162, 0, 10, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 600, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

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
--顔カットイン
spep_x=spep_0 +412;

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

--敵の動き
setDisp( spep_0-3 + 172, 1, 1);
setDisp( spep_0-1 + 264, 1, 0);

changeAnime( spep_0-3 + 172, 1, 106);
changeAnime( spep_0-3 + 220, 1, 108);
changeAnime( spep_0-3 + 258, 1, 5);

setMoveKey( spep_0-3 + 172, 1, 53.4, -102.4 , 0 );
setMoveKey( spep_0-3 + 174, 1, 62, -88.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, 55.7, -81.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 65.9, -87.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, 61.3, -91.4 , 0 );
setMoveKey( spep_0-3 + 182, 1, 69.9, -85.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, 63.7, -88.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, 73.9, -84.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 72.6, -87.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, 77.9, -83.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, 74.9, -75.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 81.9, -81.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, 80.6, -82.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 85.9, -80.5 , 0 );
setMoveKey( spep_0-3 + 200, 1, 86.2, -81.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, 89.8, -79.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, 91.8, -78.5 , 0 );
setMoveKey( spep_0-3 + 206, 1, 93.8, -77.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, 95.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 209, 1, 95.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 61.2, 34.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, 64.1, 36.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, 67, 37.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, 69.9, 39.5 , 0 );
setMoveKey( spep_0-3 + 218, 1, 72.8, 41.2 , 0 );
setMoveKey( spep_0-3 + 219, 1, 72.8, 41.2 , 0 );

setMoveKey( spep_0-3 + 220, 1, 97.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, 109.2, 99.1 , 0 );
setMoveKey( spep_0-3 + 224, 1, 103.1, 114.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, 113, 105.8 , 0 );
setMoveKey( spep_0-3 + 228, 1, 107.2, 100.2 , 0 );
setMoveKey( spep_0-3 + 230, 1, 113.9, 107.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, 108, 101.4 , 0 );
setMoveKey( spep_0-3 + 234, 1, 114.8, 108.3 , 0 );
setMoveKey( spep_0-3 + 236, 1, 115.2, 109 , 0 );
setMoveKey( spep_0-3 + 238, 1, 115.6, 109.6 , 0 );
setMoveKey( spep_0-3 + 240, 1, 116.1, 110.2 , 0 );
setMoveKey( spep_0-3 + 242, 1, 116.5, 110.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, 117, 111.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, 117.4, 112.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, 117.8, 112.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, 118.3, 113.4 , 0 );
setMoveKey( spep_0-3 + 252, 1, 118.7, 114 , 0 );
setMoveKey( spep_0-3 + 254, 1, 119.1, 114.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, 119.6, 115.3 , 0 );
setMoveKey( spep_0-3 + 257, 1, 119.6, 115.3 , 0 );

setMoveKey( spep_0-3 + 258, 1, 133.1, 59.6 , 0 );
setMoveKey( spep_0-3 + 260, 1, 139.4, 53.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, 378.6, -6.2 , 0 );
setMoveKey( spep_0-1 + 264, 1, 560.8, -44.1 , 0 );

setScaleKey( spep_0-3 + 172, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 208, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 209, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 219, 1, 1.57, 1.57 );

setScaleKey( spep_0-3 + 220, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 257, 1, 1.95, 1.95 );

setScaleKey( spep_0-3 + 258, 1, 1.67, 1.67 );
setScaleKey( spep_0-1 + 264, 1, 1.67, 1.67 );

setRotateKey( spep_0-3 + 172, 1, -32.9 );
setRotateKey( spep_0-3 + 174, 1, -32.7 );
setRotateKey( spep_0-3 + 176, 1, -32.5 );
setRotateKey( spep_0-3 + 178, 1, -32.3 );
setRotateKey( spep_0-3 + 180, 1, -32.1 );
setRotateKey( spep_0-3 + 182, 1, -31.9 );
setRotateKey( spep_0-3 + 184, 1, -31.7 );
setRotateKey( spep_0-3 + 186, 1, -31.5 );
setRotateKey( spep_0-3 + 188, 1, -31.3 );
setRotateKey( spep_0-3 + 190, 1, -31.1 );
setRotateKey( spep_0-3 + 192, 1, -30.9 );
setRotateKey( spep_0-3 + 194, 1, -30.7 );
setRotateKey( spep_0-3 + 196, 1, -30.5 );
setRotateKey( spep_0-3 + 198, 1, -30.3 );
setRotateKey( spep_0-3 + 200, 1, -30.1 );
setRotateKey( spep_0-3 + 202, 1, -29.9 );
setRotateKey( spep_0-3 + 204, 1, -29.7 );
setRotateKey( spep_0-3 + 206, 1, -29.5 );
setRotateKey( spep_0-3 + 208, 1, -29.3 );
setRotateKey( spep_0-3 + 209, 1, -29.3 );
setRotateKey( spep_0-3 + 210, 1, -64 );
setRotateKey( spep_0-3 + 212, 1, -63.1 );
setRotateKey( spep_0-3 + 214, 1, -62.3 );
setRotateKey( spep_0-3 + 216, 1, -61.4 );
setRotateKey( spep_0-3 + 218, 1, -60.5 );
setRotateKey( spep_0-3 + 219, 1, -60.5 );

setRotateKey( spep_0-3 + 220, 1, -13.1 );
setRotateKey( spep_0-3 + 257, 1, -13.1 );

setRotateKey( spep_0-3 + 258, 1, 80 );
setRotateKey( spep_0-1 + 264, 1, 80 );

--敵の動き
setDisp( spep_0-3 + 300, 1, 1);
setDisp( spep_0-1 + 334, 1, 0);

changeAnime( spep_0-3 + 300, 1, 5);
changeAnime( spep_0-3 + 332, 1, 107);

setMoveKey( spep_0-3 + 300, 1, -666.3, 439.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, -666.3, 439.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, -217.1, 256.8 , 0 );
setMoveKey( spep_0-3 + 306, 1, -217.1, 256.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, -84.3, 155 , 0 );
setMoveKey( spep_0-3 + 310, 1, -84.3, 155 , 0 );
setMoveKey( spep_0-3 + 312, 1, -38.8, 128 , 0 );
setMoveKey( spep_0-3 + 314, 1, -38.8, 128 , 0 );
setMoveKey( spep_0-3 + 316, 1, -27.5, 125 , 0 );
setMoveKey( spep_0-3 + 318, 1, -27.5, 125 , 0 );
setMoveKey( spep_0-3 + 320, 1, -16.2, 121.9 , 0 );
setMoveKey( spep_0-3 + 322, 1, -16.2, 121.9 , 0 );
setMoveKey( spep_0-3 + 324, 1, -4.8, 118.8 , 0 );
setMoveKey( spep_0-3 + 326, 1, -4.8, 118.8 , 0 );
setMoveKey( spep_0-3 + 328, 1, 6.5, 115.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 6.5, 115.7 , 0 );
setMoveKey( spep_0-3 + 331, 1, 6.5, 115.7 , 0 );

setMoveKey( spep_0-3 + 332, 1, -102.2, 405 , 0 );
setMoveKey( spep_0-1 + 334, 1, -92.7, 420.7 , 0 );

setScaleKey( spep_0-3 + 300, 1, 8.01, 8.01 );
setScaleKey( spep_0-3 + 302, 1, 8.01, 8.01 );
setScaleKey( spep_0-3 + 304, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 306, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 308, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 310, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 312, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 318, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 320, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 326, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 328, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 331, 1, 1.87, 1.87 );

setScaleKey( spep_0-3 + 332, 1, 1.45, 1.45 );
setScaleKey( spep_0-1 + 334, 1, 1.45, 1.45 );

setRotateKey( spep_0-3 + 300, 1, 140 );
setRotateKey( spep_0-3 + 331, 1, 140 );

setRotateKey( spep_0-3 + 332, 1, -56.2 );
setRotateKey( spep_0-1 + 334, 1, -56.2 );

--敵の動き
setDisp( spep_0-3 + 342, 1, 1);
setDisp( spep_0-3 + 356, 1, 0);

changeAnime( spep_0-3 + 342, 1, 107);

setMoveKey( spep_0-3 + 342, 1, -76.1, 382.5 , 0 );
setMoveKey( spep_0-3 + 344, 1, -95, 369.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, -76.1, 684.1 , 0 );
setMoveKey( spep_0-3 + 348, 1, -91.9, 853.6 , 0 );
setMoveKey( spep_0-3 + 350, 1, -76.1, 981.3 , 0 );
setMoveKey( spep_0-3 + 352, 1, -82.4, 1076.7 , 0 );
setMoveKey( spep_0-3 + 354, 1, -76.1, 1187.1 , 0 );
setMoveKey( spep_0-3 + 356, 1, -85.6, 1249.3 , 0 );

setScaleKey( spep_0-3 + 342, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 356, 1, 1.71, 1.71 );

setRotateKey( spep_0-3 + 342, 1, -63.3 );
setRotateKey( spep_0-3 + 344, 1, -63.3 );
setRotateKey( spep_0-3 + 346, 1, -63.4 );
setRotateKey( spep_0-3 + 348, 1, -63.3 );
setRotateKey( spep_0-3 + 356, 1, -63.3 );

--敵の動き
setDisp( spep_0-3 + 358, 1, 1);
setDisp( spep_0-1 + 418, 1, 0);

changeAnime( spep_0-3 + 358, 1, 5);

setMoveKey( spep_0-3 + 358, 1, -2.2, 13.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, -1.6, 151.3 , 0 );
setMoveKey( spep_0-3 + 362, 1, -1, 273.4 , 0 );
setMoveKey( spep_0-3 + 364, 1, -1, 301.4 , 0 );
setMoveKey( spep_0-3 + 366, 1, -0.9, 325.3 , 0 );
setMoveKey( spep_0-3 + 368, 1, -0.9, 345.1 , 0 );
setMoveKey( spep_0-3 + 370, 1, -0.8, 360.8 , 0 );
setMoveKey( spep_0-3 + 372, 1, -0.8, 372.5 , 0 );
setMoveKey( spep_0-3 + 374, 1, -0.6, 380 , 0 );
setMoveKey( spep_0-3 + 376, 1, -0.7, 382.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, -0.7, 384.7 , 0 );
setMoveKey( spep_0-3 + 380, 1, -0.7, 387 , 0 );
setMoveKey( spep_0-3 + 382, 1, -0.7, 389.3 , 0 );
setMoveKey( spep_0-3 + 384, 1, -0.7, 391.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, -0.7, 394 , 0 );
setMoveKey( spep_0-3 + 388, 1, -0.7, 396.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, -0.7, 398.6 , 0 );
setMoveKey( spep_0-3 + 392, 1, -0.7, 401 , 0 );
setMoveKey( spep_0-3 + 394, 1, -0.7, 403.3 , 0 );
setMoveKey( spep_0-3 + 396, 1, -0.7, 405.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, -0.7, 407.9 , 0 );
setMoveKey( spep_0-3 + 400, 1, -0.7, 410.3 , 0 );
setMoveKey( spep_0-3 + 402, 1, -0.7, 412.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, -0.7, 414.9 , 0 );
setMoveKey( spep_0-3 + 406, 1, -0.7, 417.2 , 0 );
setMoveKey( spep_0-3 + 408, 1, -0.7, 419.6 , 0 );
setMoveKey( spep_0-3 + 410, 1, -0.7, 421.9 , 0 );
setMoveKey( spep_0-3 + 412, 1, -0.8, 424.2 , 0 );
setMoveKey( spep_0-3 + 414, 1, -0.8, 426.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, -0.8, 428.9 , 0 );
setMoveKey( spep_0-1 + 418, 1, -0.8, 431.2 , 0 );

setScaleKey( spep_0-3 + 358, 1, 4.24, 4.24 );
setScaleKey( spep_0-3 + 360, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 362, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 364, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 366, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 368, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 370, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 372, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 374, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 380, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 382, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 390, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 392, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 400, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 402, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 410, 1, 0.13, 0.13 );
setScaleKey( spep_0-1 + 418, 1, 0.12, 0.12 );

setRotateKey( spep_0-3 + 358, 1, 30 );
setRotateKey( spep_0-1 + 418, 1, 30 );

--SE
--岩壊して殴る
SE007 = playSeVer2( spep_0 + 150, 1049, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 156, 1159, "",spep_0 + 240, 10, 58, -1);
SE009 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1359, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);

--ボディブロー
SE012 = playSeVer2( spep_0 + 212, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 218, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE014, 73 );
SE015 = playSeVer2( spep_0 + 220, 1110, "", 0, 0, 0, -1);

--蹴り飛ばし
SE016 = playSeVer2( spep_0 + 252, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 256, 1123, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_0 + 282, 1109, "", 0, 0, 0, -1);

--回り込む
SE019 = playSeVer2( spep_0 + 312, 1182, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  83 );
SE020 = playSeVer2( spep_0 + 312, 1116, "",spep_0 + 346, 0, 12, -1);

--蹴り上げ
SE021 = playSeVer2( spep_0 + 330, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE021, 82 );
SE022 = playSeVer2( spep_0 + 330, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 90 );

--敵飛んでいく
SE023 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 456, 0, 60, -1);

--瞬間移動
SE024 = playSeVer2( spep_0 + 386, 1109, "", 0, 0, 0, -1);

--集中線
SE025 = playSeVer2( spep_0 + 418, 1278, "",spep_0 + 510, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 418, SE025, 83 );

--顔カットイン
SE026 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE027 = playSeVer2( spep_0 + 472, 1210, "",spep_0 + 626, 54, 24, -1);   
setStartTimeMs( SE027,  583 );

--気ダメ
SE028 = playSeVer2( spep_0 + 474, 1035, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 474, 1209, "",spep_0 + 616, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 474, SE029, 56 );

--ズーム
SE031 = playSeVer2( spep_0 + 502, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE031, 43 );
setTimeStretch( SE031, 1.67, 30, 4 );
SE032 = playSeVer2( spep_0 + 506, 1072, "", 0, 0, 0, -1);

--顔アップ
SE033 = playSeVer2( spep_0 + 540, 1068, "",spep_0 + 620, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 540, SE033, 82 );
SE034 = playSeVer2( spep_0 + 540, 1264, "",spep_0 + 620, 0, 18, -1);

--白フェード
entryFade( spep_0 +596 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 600;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--発射～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 510, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 510, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 510, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 510, finish_f, 255 );

--敵の動き
setDisp( spep_2-3 + 208, 1, 1);
setDisp( spep_2-1 + 386, 1, 0);

setBlendColor( spep_2-3 + 208, 1, 3, 0, 0.6, 0.93, 0.66);
setBlendColor( spep_2-1 + 386, 1, 3, 0, 0.6, 0.93, 0.66);
setBlendColor( spep_2 + 390, 1, 3, 0, 0.6, 0.93, 0);

changeAnime( spep_2-3 + 208, 1,107 );
changeAnime( spep_2-3 + 298, 1,108 );

setMoveKey( spep_2-3 + 208, 1, -3.2, 5.4 , 0 );
setMoveKey( spep_2-3 + 242, 1, -3.2, 5.4 , 0 );
setMoveKey( spep_2-3 + 244, 1, -3.2, 5.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, -3.2, 5.5 , 0 );
setMoveKey( spep_2-3 + 266, 1, -7.1, -2.5 , 0 );
setMoveKey( spep_2-3 + 268, 1, -3.1, 5.4 , 0 );
setMoveKey( spep_2-3 + 270, 1, -18.9, 21.4 , 0 );
setMoveKey( spep_2-3 + 272, 1, -3.1, 5.8 , 0 );
setMoveKey( spep_2-3 + 274, 1, -7, -5.9 , 0 );
setMoveKey( spep_2-3 + 276, 1, -3.1, 6.2 , 0 );
setMoveKey( spep_2-3 + 278, 1, -14.9, 2.4 , 0 );
setMoveKey( spep_2-3 + 280, 1, -3.1, 6.5 , 0 );
setMoveKey( spep_2-3 + 282, 1, -7, -5.1 , 0 );
setMoveKey( spep_2-3 + 284, 1, -3.1, 6.9 , 0 );
setMoveKey( spep_2-3 + 286, 1, -11, 3.1 , 0 );
setMoveKey( spep_2-3 + 288, 1, -3.1, 7.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, -24, 31.3 , 0 );
setMoveKey( spep_2-3 + 292, 1, -15.9, 29.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, -48.7, 42.7 , 0 );
setMoveKey( spep_2-3 + 296, 1, -235.7, 101.4 , 0 );
setMoveKey( spep_2-3 + 297, 1, -235.7, 101.4 , 0 );

setMoveKey( spep_2-3 + 298, 1, 49.2, -28.3 , 0 );
setMoveKey( spep_2-3 + 300, 1, 57.5, -17 , 0 );
setMoveKey( spep_2-3 + 302, 1, 53.2, -8.9 , 0 );
setMoveKey( spep_2-3 + 304, 1, 61.5, -13.4 , 0 );
setMoveKey( spep_2-3 + 306, 1, 57.2, -17.9 , 0 );
setMoveKey( spep_2-3 + 308, 1, 65.5, -9.8 , 0 );
setMoveKey( spep_2-3 + 310, 1, 58, 1.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, 69.5, -6.2 , 0 );
setMoveKey( spep_2-3 + 314, 1, 68.3, -13.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, 73.5, -2.6 , 0 );
setMoveKey( spep_2-3 + 318, 1, 66, -4 , 0 );
setMoveKey( spep_2-3 + 320, 1, 77.5, 1 , 0 );
setMoveKey( spep_2-3 + 322, 1, 73.2, 9.1 , 0 );
setMoveKey( spep_2-3 + 324, 1, 81.5, 4.6 , 0 );
setMoveKey( spep_2-3 + 326, 1, 80.3, -3.1 , 0 );
setMoveKey( spep_2-3 + 328, 1, 85.4, 8.2 , 0 );
setMoveKey( spep_2-3 + 330, 1, 78, 6.8 , 0 );
setMoveKey( spep_2-3 + 332, 1, 89.4, 11.8 , 0 );
setMoveKey( spep_2-3 + 334, 1, 88.3, 7.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, 93.4, 15.4 , 0 );
setMoveKey( spep_2-3 + 338, 1, 86, 14.1 , 0 );
setMoveKey( spep_2-3 + 340, 1, 97.4, 19 , 0 );
setMoveKey( spep_2-3 + 342, 1, 89.9, 33.4 , 0 );
setMoveKey( spep_2-3 + 344, 1, 101.4, 22.6 , 0 );
setMoveKey( spep_2-3 + 346, 1, 97.1, 15 , 0 );
setMoveKey( spep_2-3 + 348, 1, 105.4, 26.2 , 0 );
setMoveKey( spep_2-3 + 350, 1, 101.1, 24.9 , 0 );
setMoveKey( spep_2-3 + 352, 1, 109.4, 29.8 , 0 );
setMoveKey( spep_2-3 + 354, 1, 105, 28.5 , 0 );
setMoveKey( spep_2-3 + 356, 1, 113.3, 33.4 , 0 );
setMoveKey( spep_2-3 + 358, 1, 109, 28.9 , 0 );
setMoveKey( spep_2-3 + 360, 1, 117.3, 37 , 0 );
setMoveKey( spep_2-3 + 362, 1, 106.7, 45.1 , 0 );
setMoveKey( spep_2-3 + 364, 1, 121.3, 40.6 , 0 );
setMoveKey( spep_2-3 + 366, 1, 120.2, 36.1 , 0 );
setMoveKey( spep_2-3 + 368, 1, 125.3, 44.2 , 0 );
setMoveKey( spep_2-3 + 370, 1, 124.1, 39.7 , 0 );
setMoveKey( spep_2-3 + 372, 1, 129.3, 47.8 , 0 );
setMoveKey( spep_2-3 + 374, 1, 125, 46.5 , 0 );
setMoveKey( spep_2-3 + 376, 1, 133.3, 51.4 , 0 );
setMoveKey( spep_2-3 + 378, 1, 129, 46.9 , 0 );
setMoveKey( spep_2-3 + 380, 1, 137.3, 55 , 0 );
setMoveKey( spep_2-3 + 382, 1, 133, 63.2 , 0 );
setMoveKey( spep_2-3 + 384, 1, 141.2, 58.7 , 0 );
setMoveKey( spep_2-1 + 386, 1, 136.9, 54.2 , 0 );

setScaleKey( spep_2-3 + 208, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 212, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 214, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 220, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 222, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 226, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 228, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 232, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 234, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 238, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 240, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 244, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 246, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 250, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 252, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 256, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 258, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 262, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 264, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 266, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 268, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 270, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 272, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 274, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 276, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 278, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 280, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 282, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 284, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 286, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 290, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 292, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 294, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 296, 1, 4.39, 4.39 );
setScaleKey( spep_2-3 + 297, 1, 4.39, 4.39 );

setScaleKey( spep_2-3 + 298, 1, 1.99, 1.99 );
setScaleKey( spep_2-1 + 386, 1, 1.99, 1.99 );

setRotateKey( spep_2-3 + 208, 1, -24 );
setRotateKey( spep_2-3 + 288, 1, -24 );
setRotateKey( spep_2-3 + 290, 1, -23.1 );
setRotateKey( spep_2-3 + 292, 1, -22.1 );
setRotateKey( spep_2-3 + 294, 1, -21.2 );
setRotateKey( spep_2-3 + 296, 1, -20.3 );
setRotateKey( spep_2-3 + 297, 1, -20.3 );

setRotateKey( spep_2-3 + 298, 1, 8.7 );
setRotateKey( spep_2-1 + 386, 1, 8.7 );

--SE
--発射前溜め
SE036 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 86, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 0, SE036, 75 );
SE037 = playSeVer2( spep_2 + 0, 1044, "",spep_2 + 86, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 0, SE037, 91 );
SE030 = playSeVer2( spep_2 + 2, 1210, "",spep_2 + 86, 4, 14, -1);
setStartTimeMs( SE030,  2933 );

--気弾発射
SE038 = playSeVer2( spep_2 + 64, 1213, "",spep_2 + 298, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 64, SE038, 84 );
SE039 = playSeVer2( spep_2 + 64, 1284, "",spep_2 + 298, 0, 24, -1);
SE040 = playSeVer2( spep_2 + 64, 1133, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 64, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE042 = playSeVer2( spep_2 + 64, 1215, "",spep_2 + 298, 0, 24, -1);
SE043 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 298, 32, 24, -1);
setStartTimeMs( SE043,  617 );

--気弾向かってくる
SE044 = playSeVer2( spep_2 + 206, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE045 = playSeVer2( spep_2 + 258, 1213, "",spep_2 + 418, 0, 28, -1);
SE046 = playSeVer2( spep_2 + 258, 1024, "", 0, 0, 0, -1);

--気弾が敵を押す
SE047 = playSeVer2( spep_2 + 286, 1023, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 286, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 286, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 286, SE049, 94 );

--気弾中音
SE050 = playSeVer2( spep_2 + 296, 1161, "",spep_2 + 404, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 296, SE050, 83 );
SE051 = playSeVer2( spep_2 + 296, 1211, "",spep_2 + 404, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 296, SE051, 202 );

--爆発前予兆
SE052 = playSeVer2( spep_2 + 386, 1157, "",spep_2 + 448, 0, 20, -1);

--爆発
SE053 = playSeVer2( spep_2 + 426, 1069, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE054, 78 );
SE055 = playSeVer2( spep_2 + 444, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 600, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+390);
endPhase( spep_2 + 500 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～目アップまで
------------------------------------------------------
--はじめの準備

spep_0=0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 600, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 600, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 600, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 600, first_f, 255 );

--SE
--気ダメ
SE001 = playSeVer2( spep_0 + 0, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 0, 1168, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 118, 1172, "",spep_0 + 162, 6, 10, -1);
setStartTimeMs( SE004,  167 );
SE005 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 118, 9, "",spep_0 + 162, 0, 10, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 600, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

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
--顔カットイン
spep_x=spep_0 +412;

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

--敵の動き
setDisp( spep_0-3 + 172, 1, 1);
setDisp( spep_0-1 + 264, 1, 0);

changeAnime( spep_0-3 + 172, 1,6 );
changeAnime( spep_0-3 + 220, 1,8 );
changeAnime( spep_0-3 + 258, 1,105 );

setMoveKey( spep_0-3 + 172, 1, -53.4, -102.4 , 0 );
setMoveKey( spep_0-3 + 174, 1, -62, -88.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, -55.7, -81.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, -65.9, -87.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, -61.3, -91.4 , 0 );
setMoveKey( spep_0-3 + 182, 1, -69.9, -85.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, -63.7, -88.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, -73.9, -84.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, -72.6, -87.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, -77.9, -83.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, -74.9, -75.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, -81.9, -81.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, -80.6, -82.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, -85.9, -80.5 , 0 );
setMoveKey( spep_0-3 + 200, 1, -86.2, -81.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, -89.8, -79.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, -91.8, -78.5 , 0 );
setMoveKey( spep_0-3 + 206, 1, -93.8, -77.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, -95.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 209, 1, -95.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, -61.2, 34.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, -64.1, 36.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, -67, 37.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, -69.9, 39.5 , 0 );
setMoveKey( spep_0-3 + 218, 1, -72.8, 41.2 , 0 );
setMoveKey( spep_0-3 + 219, 1, -72.8, 41.2 , 0 );

setMoveKey( spep_0-3 + 220, 1, -97.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, -109.2, 99.1 , 0 );
setMoveKey( spep_0-3 + 224, 1, -103.1, 114.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, -113, 105.8 , 0 );
setMoveKey( spep_0-3 + 228, 1, -107.2, 100.2 , 0 );
setMoveKey( spep_0-3 + 230, 1, -113.9, 107.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, -108, 101.4 , 0 );
setMoveKey( spep_0-3 + 234, 1, -114.8, 108.3 , 0 );
setMoveKey( spep_0-3 + 236, 1, -115.2, 109 , 0 );
setMoveKey( spep_0-3 + 238, 1, -115.6, 109.6 , 0 );
setMoveKey( spep_0-3 + 240, 1, -116.1, 110.2 , 0 );
setMoveKey( spep_0-3 + 242, 1, -116.5, 110.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, -117, 111.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -117.4, 112.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, -117.8, 112.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -118.3, 113.4 , 0 );
setMoveKey( spep_0-3 + 252, 1, -118.7, 114 , 0 );
setMoveKey( spep_0-3 + 254, 1, -119.1, 114.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, -119.6, 115.3 , 0 );
setMoveKey( spep_0-3 + 257, 1, -119.6, 115.3 , 0 );

setMoveKey( spep_0-3 + 258, 1, -133.1, 59.6 , 0 );
setMoveKey( spep_0-3 + 260, 1, -139.4, 53.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -378.6, -6.2 , 0 );
setMoveKey( spep_0-1 + 264, 1, -560.8, -44.1 , 0 );

setScaleKey( spep_0-3 + 172, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 208, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 209, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 219, 1, 1.57, 1.57 );

setScaleKey( spep_0-3 + 220, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 257, 1, 1.95, 1.95 );

setScaleKey( spep_0-3 + 258, 1, 1.67, 1.67 );
setScaleKey( spep_0-1 + 264, 1, 1.67, 1.67 );

setRotateKey( spep_0-3 + 172, 1, 32.9 );
setRotateKey( spep_0-3 + 174, 1, 32.7 );
setRotateKey( spep_0-3 + 176, 1, 32.5 );
setRotateKey( spep_0-3 + 178, 1, 32.3 );
setRotateKey( spep_0-3 + 180, 1, 32.1 );
setRotateKey( spep_0-3 + 182, 1, 31.9 );
setRotateKey( spep_0-3 + 184, 1, 31.7 );
setRotateKey( spep_0-3 + 186, 1, 31.5 );
setRotateKey( spep_0-3 + 188, 1, 31.3 );
setRotateKey( spep_0-3 + 190, 1, 31.1 );
setRotateKey( spep_0-3 + 192, 1, 30.9 );
setRotateKey( spep_0-3 + 194, 1, 30.7 );
setRotateKey( spep_0-3 + 196, 1, 30.5 );
setRotateKey( spep_0-3 + 198, 1, 30.3 );
setRotateKey( spep_0-3 + 200, 1, 30.1 );
setRotateKey( spep_0-3 + 202, 1, 29.9 );
setRotateKey( spep_0-3 + 204, 1, 29.7 );
setRotateKey( spep_0-3 + 206, 1, 29.5 );
setRotateKey( spep_0-3 + 208, 1, 29.3 );
setRotateKey( spep_0-3 + 209, 1, 29.3 );
setRotateKey( spep_0-3 + 210, 1, 64 );
setRotateKey( spep_0-3 + 212, 1, 63.1 );
setRotateKey( spep_0-3 + 214, 1, 62.3 );
setRotateKey( spep_0-3 + 216, 1, 61.4 );
setRotateKey( spep_0-3 + 218, 1, 60.5 );
setRotateKey( spep_0-3 + 219, 1, 60.5 );

setRotateKey( spep_0-3 + 220, 1, 13.1 );
setRotateKey( spep_0-3 + 257, 1, 13.1 );

setRotateKey( spep_0-3 + 258, 1, -80 );
setRotateKey( spep_0-1 + 264, 1, -80 );

--敵の動き
setDisp( spep_0-3 + 300, 1, 1);
setDisp( spep_0-1 + 334, 1, 0);

changeAnime( spep_0-3 + 300, 1,105 );
changeAnime( spep_0-3 + 332, 1,7 );

setMoveKey( spep_0-3 + 300, 1, 666.3, 439.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 666.3, 439.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, 217.1, 256.8 , 0 );
setMoveKey( spep_0-3 + 306, 1, 217.1, 256.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, 84.3, 155 , 0 );
setMoveKey( spep_0-3 + 310, 1, 84.3, 155 , 0 );
setMoveKey( spep_0-3 + 312, 1, 38.8, 128 , 0 );
setMoveKey( spep_0-3 + 314, 1, 38.8, 128 , 0 );
setMoveKey( spep_0-3 + 316, 1, 27.5, 125 , 0 );
setMoveKey( spep_0-3 + 318, 1, 27.5, 125 , 0 );
setMoveKey( spep_0-3 + 320, 1, 16.2, 121.9 , 0 );
setMoveKey( spep_0-3 + 322, 1, 16.2, 121.9 , 0 );
setMoveKey( spep_0-3 + 324, 1, 4.8, 118.8 , 0 );
setMoveKey( spep_0-3 + 326, 1, 4.8, 118.8 , 0 );
setMoveKey( spep_0-3 + 328, 1, -6.5, 115.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, -6.5, 115.7 , 0 );
setMoveKey( spep_0-3 + 331, 1, -6.5, 115.7 , 0 );

setMoveKey( spep_0-3 + 332, 1, 102.2, 405 , 0 );
setMoveKey( spep_0-1 + 334, 1, 92.7, 420.7 , 0 );

setScaleKey( spep_0-3 + 300, 1, 8.01, 8.01 );
setScaleKey( spep_0-3 + 302, 1, 8.01, 8.01 );
setScaleKey( spep_0-3 + 304, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 306, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 308, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 310, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 312, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 318, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 320, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 326, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 328, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 331, 1, 1.87, 1.87 );

setScaleKey( spep_0-3 + 332, 1, 1.45, 1.45 );
setScaleKey( spep_0-1 + 334, 1, 1.45, 1.45 );

setRotateKey( spep_0-3 + 300, 1, -140 );
setRotateKey( spep_0-3 + 331, 1, -140 );

setRotateKey( spep_0-3 + 332, 1, 56.2 );
setRotateKey( spep_0-1 + 334, 1, 56.2 );

--敵の動き
setDisp( spep_0-3 + 342, 1, 1);
setDisp( spep_0-3 + 356, 1, 0);

changeAnime( spep_0-3 + 342, 1,7 );

setMoveKey( spep_0-3 + 342, 1, 76.1, 382.5 , 0 );
setMoveKey( spep_0-3 + 344, 1, 95, 369.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, 76.1, 684.1 , 0 );
setMoveKey( spep_0-3 + 348, 1, 91.9, 853.6 , 0 );
setMoveKey( spep_0-3 + 350, 1, 76.1, 981.3 , 0 );
setMoveKey( spep_0-3 + 352, 1, 82.4, 1076.7 , 0 );
setMoveKey( spep_0-3 + 354, 1, 76.1, 1187.1 , 0 );
setMoveKey( spep_0-3 + 356, 1, 85.6, 1249.3 , 0 );

setScaleKey( spep_0-3 + 342, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 356, 1, 1.71, 1.71 );

setRotateKey( spep_0-3 + 342, 1, 63.3 );
setRotateKey( spep_0-3 + 344, 1, 63.3 );
setRotateKey( spep_0-3 + 346, 1, 63.4 );
setRotateKey( spep_0-3 + 348, 1, 63.3 );
setRotateKey( spep_0-3 + 356, 1, 63.3 );

--敵の動き
setDisp( spep_0-3 + 358, 1, 1);
setDisp( spep_0-1 + 418, 1, 0);

changeAnime( spep_0-3 + 358, 1,105 );

setMoveKey( spep_0-3 + 358, 1, 2.2, 13.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, 1.6, 151.3 , 0 );
setMoveKey( spep_0-3 + 362, 1, 1, 273.4 , 0 );
setMoveKey( spep_0-3 + 364, 1, 1, 301.4 , 0 );
setMoveKey( spep_0-3 + 366, 1, 0.9, 325.3 , 0 );
setMoveKey( spep_0-3 + 368, 1, 0.9, 345.1 , 0 );
setMoveKey( spep_0-3 + 370, 1, 0.8, 360.8 , 0 );
setMoveKey( spep_0-3 + 372, 1, 0.8, 372.5 , 0 );
setMoveKey( spep_0-3 + 374, 1, 0.6, 380 , 0 );
setMoveKey( spep_0-3 + 376, 1, 0.7, 382.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, 0.7, 384.7 , 0 );
setMoveKey( spep_0-3 + 380, 1, 0.7, 387 , 0 );
setMoveKey( spep_0-3 + 382, 1, 0.7, 389.3 , 0 );
setMoveKey( spep_0-3 + 384, 1, 0.7, 391.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 0.7, 394 , 0 );
setMoveKey( spep_0-3 + 388, 1, 0.7, 396.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, 0.7, 398.6 , 0 );
setMoveKey( spep_0-3 + 392, 1, 0.7, 401 , 0 );
setMoveKey( spep_0-3 + 394, 1, 0.7, 403.3 , 0 );
setMoveKey( spep_0-3 + 396, 1, 0.7, 405.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, 0.7, 407.9 , 0 );
setMoveKey( spep_0-3 + 400, 1, 0.7, 410.3 , 0 );
setMoveKey( spep_0-3 + 402, 1, 0.7, 412.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, 0.7, 414.9 , 0 );
setMoveKey( spep_0-3 + 406, 1, 0.7, 417.2 , 0 );
setMoveKey( spep_0-3 + 408, 1, 0.7, 419.6 , 0 );
setMoveKey( spep_0-3 + 410, 1, 0.7, 421.9 , 0 );
setMoveKey( spep_0-3 + 412, 1, 0.8, 424.2 , 0 );
setMoveKey( spep_0-3 + 414, 1, 0.8, 426.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, 0.8, 428.9 , 0 );
setMoveKey( spep_0-1 + 418, 1, 0.8, 431.2 , 0 );

setScaleKey( spep_0-3 + 358, 1, 4.24, 4.24 );
setScaleKey( spep_0-3 + 360, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 362, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 364, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 366, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 368, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 370, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 372, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 374, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 380, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 382, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 390, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 392, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 400, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 402, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 410, 1, 0.13, 0.13 );
setScaleKey( spep_0-1 + 418, 1, 0.12, 0.12 );

setRotateKey( spep_0-3 + 358, 1, -30 );
setRotateKey( spep_0-1 + 418, 1, -30 );

--SE
--岩壊して殴る
SE007 = playSeVer2( spep_0 + 150, 1049, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 156, 1159, "",spep_0 + 240, 10, 58, -1);
SE009 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1359, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);

--ボディブロー
SE012 = playSeVer2( spep_0 + 212, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 218, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE014, 73 );
SE015 = playSeVer2( spep_0 + 220, 1110, "", 0, 0, 0, -1);

--蹴り飛ばし
SE016 = playSeVer2( spep_0 + 252, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 256, 1123, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_0 + 282, 1109, "", 0, 0, 0, -1);

--回り込む
SE019 = playSeVer2( spep_0 + 312, 1182, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  83 );
SE020 = playSeVer2( spep_0 + 312, 1116, "",spep_0 + 346, 0, 12, -1);

--蹴り上げ
SE021 = playSeVer2( spep_0 + 330, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE021, 82 );
SE022 = playSeVer2( spep_0 + 330, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 90 );

--敵飛んでいく
SE023 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 456, 0, 60, -1);

--瞬間移動
SE024 = playSeVer2( spep_0 + 386, 1109, "", 0, 0, 0, -1);

--集中線
SE025 = playSeVer2( spep_0 + 418, 1278, "",spep_0 + 510, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 418, SE025, 83 );

--顔カットイン
-- SE026 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE027 = playSeVer2( spep_0 + 472, 1210, "",spep_0 + 626, 54, 24, -1);   
setStartTimeMs( SE027,  583 );

--気ダメ
SE028 = playSeVer2( spep_0 + 474, 1035, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 474, 1209, "",spep_0 + 616, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 474, SE029, 56 );

--ズーム
SE031 = playSeVer2( spep_0 + 502, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE031, 43 );
setTimeStretch( SE031, 1.67, 30, 4 );
SE032 = playSeVer2( spep_0 + 506, 1072, "", 0, 0, 0, -1);

--顔アップ
SE033 = playSeVer2( spep_0 + 540, 1068, "",spep_0 + 620, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 540, SE033, 82 );
SE034 = playSeVer2( spep_0 + 540, 1264, "",spep_0 + 620, 0, 18, -1);

--白フェード
entryFade( spep_0 +596 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 600;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;

------------------------------------------------------
--発射～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 510, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 510, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 510, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 510, finish_f, 255 );

--敵の動き
setDisp( spep_2-3 + 208, 1, 1);
setDisp( spep_2-1 + 386, 1, 0);

setBlendColor( spep_2-3 + 208, 1, 3, 0, 0.6, 0.93, 0.66);
setBlendColor( spep_2-1 + 386, 1, 3, 0, 0.6, 0.93, 0.66);
setBlendColor( spep_2 + 390, 1, 3, 0, 0.6, 0.93, 0);

changeAnime( spep_2-3 + 208, 1,7 );
changeAnime( spep_2-3 + 298, 1,8 );

setMoveKey( spep_2-3 + 208, 1, 3.2, 5.4 , 0 );
setMoveKey( spep_2-3 + 242, 1, 3.2, 5.4 , 0 );
setMoveKey( spep_2-3 + 244, 1, 3.2, 5.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, 3.2, 5.5 , 0 );
setMoveKey( spep_2-3 + 266, 1, 7.1, -2.5 , 0 );
setMoveKey( spep_2-3 + 268, 1, 3.1, 5.4 , 0 );
setMoveKey( spep_2-3 + 270, 1, 18.9, 21.4 , 0 );
setMoveKey( spep_2-3 + 272, 1, 3.1, 5.8 , 0 );
setMoveKey( spep_2-3 + 274, 1, 7, -5.9 , 0 );
setMoveKey( spep_2-3 + 276, 1, 3.1, 6.2 , 0 );
setMoveKey( spep_2-3 + 278, 1, 14.9, 2.4 , 0 );
setMoveKey( spep_2-3 + 280, 1, 3.1, 6.5 , 0 );
setMoveKey( spep_2-3 + 282, 1, 7, -5.1 , 0 );
setMoveKey( spep_2-3 + 284, 1, 3.1, 6.9 , 0 );
setMoveKey( spep_2-3 + 286, 1, 11, 3.1 , 0 );
setMoveKey( spep_2-3 + 288, 1, 3.1, 7.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, 24, 31.3 , 0 );
setMoveKey( spep_2-3 + 292, 1, 15.9, 29.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, 48.7, 42.7 , 0 );
setMoveKey( spep_2-3 + 296, 1, 235.7, 101.4 , 0 );
setMoveKey( spep_2-3 + 297, 1, 235.7, 101.4 , 0 );

setMoveKey( spep_2-3 + 298, 1, -49.2, -28.3 , 0 );
setMoveKey( spep_2-3 + 300, 1, -57.5, -17 , 0 );
setMoveKey( spep_2-3 + 302, 1, -53.2, -8.9 , 0 );
setMoveKey( spep_2-3 + 304, 1, -61.5, -13.4 , 0 );
setMoveKey( spep_2-3 + 306, 1, -57.2, -17.9 , 0 );
setMoveKey( spep_2-3 + 308, 1, -65.5, -9.8 , 0 );
setMoveKey( spep_2-3 + 310, 1, -58, 1.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, -69.5, -6.2 , 0 );
setMoveKey( spep_2-3 + 314, 1, -68.3, -13.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, -73.5, -2.6 , 0 );
setMoveKey( spep_2-3 + 318, 1, -66, -4 , 0 );
setMoveKey( spep_2-3 + 320, 1, -77.5, 1 , 0 );
setMoveKey( spep_2-3 + 322, 1, -73.2, 9.1 , 0 );
setMoveKey( spep_2-3 + 324, 1, -81.5, 4.6 , 0 );
setMoveKey( spep_2-3 + 326, 1, -80.3, -3.1 , 0 );
setMoveKey( spep_2-3 + 328, 1, -85.4, 8.2 , 0 );
setMoveKey( spep_2-3 + 330, 1, -78, 6.8 , 0 );
setMoveKey( spep_2-3 + 332, 1, -89.4, 11.8 , 0 );
setMoveKey( spep_2-3 + 334, 1, -88.3, 7.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, -93.4, 15.4 , 0 );
setMoveKey( spep_2-3 + 338, 1, -86, 14.1 , 0 );
setMoveKey( spep_2-3 + 340, 1, -97.4, 19 , 0 );
setMoveKey( spep_2-3 + 342, 1, -89.9, 33.4 , 0 );
setMoveKey( spep_2-3 + 344, 1, -101.4, 22.6 , 0 );
setMoveKey( spep_2-3 + 346, 1, -97.1, 15 , 0 );
setMoveKey( spep_2-3 + 348, 1, -105.4, 26.2 , 0 );
setMoveKey( spep_2-3 + 350, 1, -101.1, 24.9 , 0 );
setMoveKey( spep_2-3 + 352, 1, -109.4, 29.8 , 0 );
setMoveKey( spep_2-3 + 354, 1, -105, 28.5 , 0 );
setMoveKey( spep_2-3 + 356, 1, -113.3, 33.4 , 0 );
setMoveKey( spep_2-3 + 358, 1, -109, 28.9 , 0 );
setMoveKey( spep_2-3 + 360, 1, -117.3, 37 , 0 );
setMoveKey( spep_2-3 + 362, 1, -106.7, 45.1 , 0 );
setMoveKey( spep_2-3 + 364, 1, -121.3, 40.6 , 0 );
setMoveKey( spep_2-3 + 366, 1, -120.2, 36.1 , 0 );
setMoveKey( spep_2-3 + 368, 1, -125.3, 44.2 , 0 );
setMoveKey( spep_2-3 + 370, 1, -124.1, 39.7 , 0 );
setMoveKey( spep_2-3 + 372, 1, -129.3, 47.8 , 0 );
setMoveKey( spep_2-3 + 374, 1, -125, 46.5 , 0 );
setMoveKey( spep_2-3 + 376, 1, -133.3, 51.4 , 0 );
setMoveKey( spep_2-3 + 378, 1, -129, 46.9 , 0 );
setMoveKey( spep_2-3 + 380, 1, -137.3, 55 , 0 );
setMoveKey( spep_2-3 + 382, 1, -133, 63.2 , 0 );
setMoveKey( spep_2-3 + 384, 1, -141.2, 58.7 , 0 );
setMoveKey( spep_2-1 + 386, 1, -136.9, 54.2 , 0 );

setScaleKey( spep_2-3 + 208, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 212, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 214, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 220, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 222, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 226, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 228, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 232, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 234, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 238, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 240, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 244, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 246, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 250, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 252, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 256, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 258, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 262, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 264, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 266, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 268, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 270, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 272, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 274, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 276, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 278, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 280, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 282, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 284, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 286, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 290, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 292, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 294, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 296, 1, 4.39, 4.39 );
setScaleKey( spep_2-3 + 297, 1, 4.39, 4.39 );

setScaleKey( spep_2-3 + 298, 1, 1.99, 1.99 );
setScaleKey( spep_2-1 + 386, 1, 1.99, 1.99 );

setRotateKey( spep_2-3 + 208, 1, 24 );
setRotateKey( spep_2-3 + 288, 1, 24 );
setRotateKey( spep_2-3 + 290, 1, 23.1 );
setRotateKey( spep_2-3 + 292, 1, 22.1 );
setRotateKey( spep_2-3 + 294, 1, 21.2 );
setRotateKey( spep_2-3 + 296, 1, 20.3 );
setRotateKey( spep_2-3 + 297, 1, 20.3 );

setRotateKey( spep_2-3 + 298, 1, -8.7 );
setRotateKey( spep_2-1 + 386, 1, -8.7 );

--SE
--発射前溜め
SE036 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 86, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 0, SE036, 75 );
SE037 = playSeVer2( spep_2 + 0, 1044, "",spep_2 + 86, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 0, SE037, 91 );
SE030 = playSeVer2( spep_2 + 2, 1210, "",spep_2 + 86, 4, 14, -1);
setStartTimeMs( SE030,  2933 );

--気弾発射
SE038 = playSeVer2( spep_2 + 64, 1213, "",spep_2 + 298, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 64, SE038, 84 );
SE039 = playSeVer2( spep_2 + 64, 1284, "",spep_2 + 298, 0, 24, -1);
SE040 = playSeVer2( spep_2 + 64, 1133, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 64, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE042 = playSeVer2( spep_2 + 64, 1215, "",spep_2 + 298, 0, 24, -1);
SE043 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 298, 32, 24, -1);
setStartTimeMs( SE043,  617 );

--気弾向かってくる
SE044 = playSeVer2( spep_2 + 206, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE045 = playSeVer2( spep_2 + 258, 1213, "",spep_2 + 418, 0, 28, -1);
SE046 = playSeVer2( spep_2 + 258, 1024, "", 0, 0, 0, -1);

--気弾が敵を押す
SE047 = playSeVer2( spep_2 + 286, 1023, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 286, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 286, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 286, SE049, 94 );

--気弾中音
SE050 = playSeVer2( spep_2 + 296, 1161, "",spep_2 + 404, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 296, SE050, 83 );
SE051 = playSeVer2( spep_2 + 296, 1211, "",spep_2 + 404, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 296, SE051, 202 );

--爆発前予兆
SE052 = playSeVer2( spep_2 + 386, 1157, "",spep_2 + 448, 0, 20, -1);

--爆発
SE053 = playSeVer2( spep_2 + 426, 1069, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE054, 78 );
SE055 = playSeVer2( spep_2 + 444, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 600, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_2+390);
endPhase( spep_2 + 500 );
end