--1020670:超サイヤ人4ブロリー_ギガンティックデストラクション
--sp_effect_a2_00148
--sp2093

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
SP_01=	156305	;--	突進ー叩き落としまで(前)
SP_02=	156306	;--	突進ー叩き落としまで(後ろ)
SP_03=	156307	;--	溜めー爆発まで(前)
SP_04=	156308	;--	溜めー爆発まで(後ろ)

--エフェクト(てき)
SP_01x=	156309	;--	突進ー叩き落としまで(前)	(敵)
SP_02x=	156310	;--	突進ー叩き落としまで(後ろ)	(敵)
SP_03x=	156307	;--	溜めー爆発まで(前)	
SP_04x=	156308	;--	溜めー爆発まで(後ろ)	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 突進ー叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, rush_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush_f, 0 );
setEffRotateKey( spep_0 + 310, rush_f, 0 );
setEffAlphaKey( spep_0 + 0, rush_f, 255 );
setEffAlphaKey( spep_0 + 310, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, rush_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush_b, 0 );
setEffRotateKey( spep_0 + 310, rush_b, 0 );
setEffAlphaKey( spep_0 + 0, rush_b, 255 );
setEffAlphaKey( spep_0 + 310, rush_b, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+8  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+8  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +20, 190006, 72, 0x102, -1, 0, 70, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +20,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +92,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +20, ctgogo, 0 );
setEffAlphaKey( spep_0 + 21, ctgogo, 255 );
setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 191 );
setEffAlphaKey( spep_0 + 90, ctgogo, 120 );
setEffAlphaKey( spep_0 + 92, ctgogo, 64 );

setEffRotateKey(  spep_0 +20,  ctgogo,  0);
setEffRotateKey(  spep_0 +92,  ctgogo,  0);

setEffScaleKey(  spep_0 +20,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +82,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +92,  ctgogo, 1.07, 1.07);

--SE
--前方ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setTimeStretch( SE002, 1.54, 10, 1 );
SE003 = playSe( spep_0 + 0, 1183 );

--顔カットイン
SE004 = playSe( spep_0 + 20, 1018 );

--横ダッシュ
SE005 = playSe( spep_0 + 106, 1167 );
setSeVolumeByWorkId( spep_0 + 106, SE005, 35 );
setTimeStretch( SE005, 1.16, 10, 1 );
SE006 = playSe( spep_0 + 106, 1278 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 71 );
SE007 = playSe( spep_0 + 106, 1116 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 310, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 174,  10005, 18, 0x100, -1, 0, 5.7, 334 );
setEffShake( spep_0-3 + 174, ctga, 18, 10 );
setEffMoveKey( spep_0-3 + 174, ctga, 5.7, 334 , 0 );
setEffMoveKey( spep_0-3 + 176, ctga, 1.6, 331.2 , 0 );
setEffMoveKey( spep_0-3 + 178, ctga, 5.3, 333.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctga, 4.1, 328.9 , 0 );
setEffMoveKey( spep_0-3 + 182, ctga, 5.4, 333.7 , 0 );
setEffMoveKey( spep_0-3 + 184, ctga, -2.3, 340.6 , 0 );
setEffMoveKey( spep_0-3 + 186, ctga, 5.4, 333.8 , 0 );
setEffMoveKey( spep_0-3 + 188, ctga, 4.4, 329.7 , 0 );
setEffMoveKey( spep_0-3 + 192, ctga, 5.5, 333.9 , 0 );

setEffScaleKey( spep_0-3 + 174, ctga, 1, 1 );
setEffScaleKey( spep_0-3 + 176, ctga, 2.25, 2.25 );
setEffScaleKey( spep_0-3 + 178, ctga, 3.49, 3.49 );
setEffScaleKey( spep_0-3 + 180, ctga, 2.73, 2.73 );
setEffScaleKey( spep_0-3 + 182, ctga, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 184, ctga, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 186, ctga, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 188, ctga, 2.39, 2.39 );
setEffScaleKey( spep_0-3 + 192, ctga, 2.39, 2.39 );

setEffRotateKey( spep_0-3 + 174, ctga, -19 );
setEffRotateKey( spep_0-3 + 192, ctga, -19 );

setEffAlphaKey( spep_0-3 + 174, ctga, 255 );
setEffAlphaKey( spep_0-3 + 188, ctga, 255 );
setEffAlphaKey( spep_0-3 + 190, ctga, 128 );
setEffAlphaKey( spep_0-3 + 192, ctga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 258,  10021, 34, 0x100, -1, 0, -79.4, 348 );
setEffShake( spep_0-3 + 258, ctbago, 34, 10 );
setEffMoveKey( spep_0-3 + 258, ctbago, -79.4, 348 , 0 );
setEffMoveKey( spep_0-3 + 260, ctbago, -79.5, 347.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbago, -106.7, 364.6 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbago, -79.3, 347.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbago, -102.4, 362.4 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbago, -79.3, 348 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbago, -101.9, 362.1 , 0 );
setEffMoveKey( spep_0-3 + 272, ctbago, -79.3, 348 , 0 );
setEffMoveKey( spep_0-3 + 274, ctbago, -101.4, 361.8 , 0 );
setEffMoveKey( spep_0-3 + 276, ctbago, -79.3, 348.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctbago, -100.8, 361.6 , 0 );
setEffMoveKey( spep_0-3 + 280, ctbago, -79.3, 348.1 , 0 );
setEffMoveKey( spep_0-3 + 282, ctbago, -100.3, 361.3 , 0 );
setEffMoveKey( spep_0-3 + 284, ctbago, -79.3, 348.2 , 0 );
setEffMoveKey( spep_0-3 + 286, ctbago, -99.9, 361.1 , 0 );
setEffMoveKey( spep_0-3 + 288, ctbago, -79.3, 348.2 , 0 );
setEffMoveKey( spep_0-3 + 290, ctbago, -99.7, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 292, ctbago, -99.6, 360.8 , 0 );

setEffScaleKey( spep_0-3 + 258, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 260, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 262, ctbago, 3.74, 3.74 );
setEffScaleKey( spep_0-3 + 264, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 266, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 268, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 270, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 272, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 274, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 276, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 278, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 280, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 282, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 284, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 286, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 288, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 290, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 292, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 258, ctbago, -22.5 );
setEffRotateKey( spep_0-3 + 292, ctbago, -22.5 );

setEffAlphaKey( spep_0-3 + 258, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 284, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 286, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 288, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 290, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 292, ctbago, 0 );

--敵の動き
setDisp( spep_0-3 + 154, 1, 1);
setDisp( spep_0-3 + 268, 1, 0);

changeAnime( spep_0-3 + 154, 1, 101);
changeAnime( spep_0-3 + 164, 1, 104);
changeAnime( spep_0-3 + 172, 1, 108);
changeAnime( spep_0-3 + 194, 1, 106);
changeAnime( spep_0-3 + 258, 1, 108);

setMoveKey( spep_0-3 + 154, 1, 728.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, 624.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, 520.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 416.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 162, 1, 312.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 162, 1, 312.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 163, 1, 312.4, 12.7 , 0 );

setMoveKey( spep_0-3 + 164, 1, 241.1, 11.1 , 0 );
setMoveKey( spep_0-3 + 166, 1, 186.5, 11.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, 131.8, 11.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 77.2, 11.2 , 0 );
setMoveKey( spep_0-3 + 171, 1, 77.2, 11.2 , 0 );

setMoveKey( spep_0-3 + 172, 1, 208.8, 38.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 166.4, 13.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 139.7, 23.9 , 0 );
setMoveKey( spep_0-3 + 178, 1, 116.6, 17.1 , 0 );
setMoveKey( spep_0-3 + 180, 1, 123.9, 19.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, 128.5, 28.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, 145.8, 19.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, 153.6, 9.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 167.7, 19.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, 175.5, 9.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 189.7, 19.1 , 0 );
setMoveKey( spep_0-3 + 193, 1, 189.7, 19.1 , 0 );

setMoveKey( spep_0-3 + 194, 1, 62.6, 40 , 0 );
setMoveKey( spep_0-3 + 196, 1, -4.1, 40 , 0 );
setMoveKey( spep_0-3 + 198, 1, -70.9, 40 , 0 );
setMoveKey( spep_0-3 + 200, 1, -137.6, 40 , 0 );
setMoveKey( spep_0-3 + 202, 1, -132.5, 40 , 0 );
setMoveKey( spep_0-3 + 204, 1, -127.5, 40 , 0 );
setMoveKey( spep_0-3 + 206, 1, -122.5, 40 , 0 );
setMoveKey( spep_0-3 + 208, 1, -117.5, 40 , 0 );
setMoveKey( spep_0-3 + 210, 1, -112.5, 40 , 0 );
setMoveKey( spep_0-3 + 212, 1, -107.5, 40 , 0 );
setMoveKey( spep_0-3 + 214, 1, -102.5, 40 , 0 );
setMoveKey( spep_0-3 + 216, 1, -97.5, 40 , 0 );
setMoveKey( spep_0-3 + 218, 1, -92.4, 40 , 0 );
setMoveKey( spep_0-3 + 220, 1, -87.4, 40 , 0 );
setMoveKey( spep_0-3 + 222, 1, -82.4, 40 , 0 );
setMoveKey( spep_0-3 + 224, 1, -77.4, 40 , 0 );
setMoveKey( spep_0-3 + 226, 1, -72.4, 40 , 0 );
setMoveKey( spep_0-3 + 228, 1, -67.4, 40 , 0 );
setMoveKey( spep_0-3 + 230, 1, -62.4, 40 , 0 );
setMoveKey( spep_0-3 + 232, 1, -57.4, 40 , 0 );
setMoveKey( spep_0-3 + 234, 1, -52.3, 40 , 0 );
setMoveKey( spep_0-3 + 236, 1, -47.3, 40 , 0 );
setMoveKey( spep_0-3 + 238, 1, -42.3, 40 , 0 );
setMoveKey( spep_0-3 + 240, 1, -39.6, 40 , 0 );
setMoveKey( spep_0-3 + 242, 1, -36.8, 40 , 0 );
setMoveKey( spep_0-3 + 244, 1, -34.1, 40 , 0 );
setMoveKey( spep_0-3 + 246, 1, -31.3, 40 , 0 );
setMoveKey( spep_0-3 + 248, 1, -28.5, 40 , 0 );
setMoveKey( spep_0-3 + 250, 1, -25.8, 40 , 0 );
setMoveKey( spep_0-3 + 252, 1, -23, 40 , 0 );
setMoveKey( spep_0-3 + 254, 1, -20.3, 40 , 0 );
setMoveKey( spep_0-3 + 256, 1, -17.5, 40 , 0 );
setMoveKey( spep_0-3 + 257, 1, -17.5, 40 , 0 );

setMoveKey( spep_0-3 + 258, 1, 54.4, -174.5 , 0 );
setMoveKey( spep_0-3 + 260, 1, 44.7, -208.2 , 0 );
setMoveKey( spep_0-3 + 262, 1, 87.3, -674.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, 97.5, -916.1 , 0 );
setMoveKey( spep_0-3 + 266, 1, 120.1, -1076 , 0 );
setMoveKey( spep_0-3 + 268, 1, 123.2, -1149.5 , 0 );

setScaleKey( spep_0-3 + 154, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 163, 1, 1.66, 1.66 );

a=0.4;

setScaleKey( spep_0-3 + 164, 1, 1.56, 1.56 );
setScaleKey( spep_0-3 + 171, 1, 1.56, 1.56 );

setScaleKey( spep_0-3 + 172, 1, 2.94+a, 2.94+a );
setScaleKey( spep_0-3 + 174, 1, 2.3+a, 2.3+a );
setScaleKey( spep_0-3 + 176, 1, 1.84+a, 1.84+a );
setScaleKey( spep_0-3 + 178, 1, 1.56+a, 1.56+a );
setScaleKey( spep_0-3 + 180, 1, 1.47+a, 1.47+a );
setScaleKey( spep_0-3 + 193, 1, 1.47+a, 1.47+a );

setScaleKey( spep_0-3 + 194, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 257, 1, 1.54, 1.54 );

setScaleKey( spep_0-3 + 258, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 260, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 262, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 264, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 268, 1, 1.47, 1.47 );

setRotateKey( spep_0-3 + 154, 1, 0 );
setRotateKey( spep_0-3 + 193, 1, 0 );

setRotateKey( spep_0-3 + 194, 1, -5 );
setRotateKey( spep_0-3 + 196, 1, -1.7 );
setRotateKey( spep_0-3 + 198, 1, 1.7 );
setRotateKey( spep_0-3 + 200, 1, 5 );
setRotateKey( spep_0-3 + 202, 1, 5.1 );
setRotateKey( spep_0-3 + 204, 1, 5.2 );
setRotateKey( spep_0-3 + 206, 1, 5.3 );
setRotateKey( spep_0-3 + 208, 1, 5.4 );
setRotateKey( spep_0-3 + 210, 1, 5.5 );
setRotateKey( spep_0-3 + 212, 1, 5.6 );
setRotateKey( spep_0-3 + 214, 1, 5.7 );
setRotateKey( spep_0-3 + 216, 1, 5.9 );
setRotateKey( spep_0-3 + 218, 1, 6 );
setRotateKey( spep_0-3 + 220, 1, 6.1 );
setRotateKey( spep_0-3 + 222, 1, 6.2 );
setRotateKey( spep_0-3 + 224, 1, 6.3 );
setRotateKey( spep_0-3 + 226, 1, 6.4 );
setRotateKey( spep_0-3 + 228, 1, 6.5 );
setRotateKey( spep_0-3 + 230, 1, 6.6 );
setRotateKey( spep_0-3 + 232, 1, 6.7 );
setRotateKey( spep_0-3 + 234, 1, 6.8 );
setRotateKey( spep_0-3 + 236, 1, 6.9 );
setRotateKey( spep_0-3 + 238, 1, 7.1 );
setRotateKey( spep_0-3 + 240, 1, 7.1 );
setRotateKey( spep_0-3 + 242, 1, 7.2 );
setRotateKey( spep_0-3 + 244, 1, 7.3 );
setRotateKey( spep_0-3 + 246, 1, 7.3 );
setRotateKey( spep_0-3 + 248, 1, 7.4 );
setRotateKey( spep_0-3 + 250, 1, 7.5 );
setRotateKey( spep_0-3 + 252, 1, 7.6 );
setRotateKey( spep_0-3 + 254, 1, 7.6 );
setRotateKey( spep_0-3 + 256, 1, 7.7 );
setRotateKey( spep_0-3 + 257, 1, 7.7 );

setRotateKey( spep_0-3 + 258, 1, 56.7 );
setRotateKey( spep_0-3 + 268, 1, 56.7 );

--SE
--横ダッシュ
stopSe( spep_0 + 164, SE006, 32 );
stopSe( spep_0 + 136, SE007, 20 );

--タックル
SE008 = playSe( spep_0 + 170, 1003 );
SE009 = playSe( spep_0 + 176, 1009 );
SE010 = playSe( spep_0 + 176, 1187 );

--瞬間移動
SE011 = playSe( spep_0 + 240, 1109 );

--叩きつけ
SE012 = playSe( spep_0 + 256, 1123 );

--白フェード
entryFade( spep_0 + 302, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+310;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_1

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- 溜めー爆発まで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 340, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 340, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 340, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 340, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 340, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 340, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 340, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 340, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 176, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 176 , 1, 107);

b=120;
c=5;

setMoveKey( spep_2-3 + 176, 1, 832.1+b, -1215.2+c , 0 );
setMoveKey( spep_2-3 + 178, 1, 587.5+b, -887.6+c , 0 );
setMoveKey( spep_2-3 + 180, 1, 343+b, -559.9+c , 0 );
setMoveKey( spep_2-3 + 182, 1, 98.4+b, -232.3+c , 0 );
setMoveKey( spep_2-3 + 184, 1, 95+b, -227.2+c , 0 );
setMoveKey( spep_2-3 + 186, 1, 91.7+b, -222.1+c , 0 );
setMoveKey( spep_2-3 + 188, 1, 88.3+b, -217.1+c , 0 );
setMoveKey( spep_2-3 + 190, 1, 84.9+b, -212+c , 0 );
setMoveKey( spep_2-3 + 192, 1, 81.5+b, -206.9+c , 0 );
setMoveKey( spep_2-3 + 194, 1, 78.2+b, -201.8+c , 0 );
setMoveKey( spep_2-3 + 196, 1, 74.8+b, -196.7+c , 0 );
setMoveKey( spep_2-3 + 198, 1, 71.4+b, -191.6+c , 0 );
setMoveKey( spep_2-3 + 200, 1, 68+b, -186.6+c , 0 );
setMoveKey( spep_2-3 + 202, 1, 64.7+b, -181.5+c , 0 );
setMoveKey( spep_2-3 + 204, 1, 61.3+b, -176.4+c , 0 );
setMoveKey( spep_2-3 + 206, 1, 57.9+b, -171.3+c , 0 );
setMoveKey( spep_2-3 + 208, 1, 54.5+b, -166.2+c , 0 );
setMoveKey( spep_2-3 + 210, 1, 51.2+b, -161.1+c , 0 );
setMoveKey( spep_2-3 + 212, 1, 47.8+b, -156+c , 0 );
setMoveKey( spep_2-3 + 214, 1, 44.4+b, -151+c , 0 );
setMoveKey( spep_2-3 + 216, 1, 41+b, -145.9+c , 0 );
setMoveKey( spep_2-1 + 218, 1, 37.6+b, -140.8+c , 0 );

setScaleKey( spep_2-3 + 176, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 178, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 180, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 186, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 188, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 190, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 192, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 194, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 196, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 198, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 200, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 202, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 208, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 210, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 212, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 214, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 216, 1, 1.04, 1.04 );
setScaleKey( spep_2-1 + 218, 1, 1.03, 1.03 );

setRotateKey( spep_2-3 + 176, 1, 0 );
setRotateKey( spep_2-1 + 218, 1, 0 );

--SE
--気弾溜め
SE014 = playSe( spep_2 + 0, 1191 );
setSeVolumeByWorkId( spep_2 + 0, SE014, 178 );
stopSe( spep_2 + 176, SE014, 16 );
SE015 = playSe( spep_2 + 0, 1200 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 132 );
stopSe( spep_2 + 176, SE015, 16 );
SE016 = playSe( spep_2 + 0, 1265 );
setSeVolumeByWorkId( spep_2 + 0, SE016, 124 );
stopSe( spep_2 + 176, SE016, 16 );
SE017 = playSe( spep_2 + 44, 49 );
SE018 = playSe( spep_2 + 70, 1199 );
setTimeStretch( SE018, 1.11, 10, 1 );
SE019 = playSe( spep_2 + 70, 1158 );
setSeVolumeByWorkId( spep_2 + 70, SE019, 79 );
stopSe( spep_2 + 172, SE019, 14 );
SE020 = playSe( spep_2 + 70, 1276 );
setSeVolumeByWorkId( spep_2 + 70, SE020, 59 );
setTimeStretch( SE020, 1.4, 10, 1 );

--気弾発射
SE021 = playSe( spep_2 + 172, 1027 );
SE022 = playSe( spep_2 + 172, 1193 );
stopSe( spep_2 + 222, SE022, 14 );
SE023 = playSe( spep_2 + 172, 1022 );

--爆発
SE024 = playSe( spep_2 + 216, 1159 );
SE025 = playSe( spep_2 + 216, 1023 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 340, 0,  0, 0, 0, 180 ); --くろ 背景

--終わり
dealDamage( spep_2 +230 );
endPhase( spep_2 + 330 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進ー叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, rush_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush_f, 0 );
setEffRotateKey( spep_0 + 310, rush_f, 0 );
setEffAlphaKey( spep_0 + 0, rush_f, 255 );
setEffAlphaKey( spep_0 + 310, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, rush_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush_b, 0 );
setEffRotateKey( spep_0 + 310, rush_b, 0 );
setEffAlphaKey( spep_0 + 0, rush_b, 255 );
setEffAlphaKey( spep_0 + 310, rush_b, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+8  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+8  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +20, 190006, 72, 0x102, -1, 0, 70, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +20,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +92,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +20, ctgogo, 0 );
setEffAlphaKey( spep_0 + 21, ctgogo, 255 );
setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 191 );
setEffAlphaKey( spep_0 + 90, ctgogo, 120 );
setEffAlphaKey( spep_0 + 92, ctgogo, 64 );

setEffRotateKey(  spep_0 +20,  ctgogo,  0);
setEffRotateKey(  spep_0 +92,  ctgogo,  0);

setEffScaleKey(  spep_0 +20,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +82,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +92,  ctgogo, -1.07, 1.07);

--SE
--前方ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setTimeStretch( SE002, 1.54, 10, 1 );
SE003 = playSe( spep_0 + 0, 1183 );

--顔カットイン
SE004 = playSe( spep_0 + 20, 1018 );

--横ダッシュ
SE005 = playSe( spep_0 + 106, 1167 );
setSeVolumeByWorkId( spep_0 + 106, SE005, 35 );
setTimeStretch( SE005, 1.16, 10, 1 );
SE006 = playSe( spep_0 + 106, 1278 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 71 );
SE007 = playSe( spep_0 + 106, 1116 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 310, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 174,  10005, 18, 0x100, -1, 0, 5.7, 334 );
setEffShake( spep_0-3 + 174, ctga, 18, 10 );
setEffMoveKey( spep_0-3 + 174, ctga, 5.7, 334 , 0 );
setEffMoveKey( spep_0-3 + 176, ctga, 1.6, 331.2 , 0 );
setEffMoveKey( spep_0-3 + 178, ctga, 5.3, 333.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctga, 4.1, 328.9 , 0 );
setEffMoveKey( spep_0-3 + 182, ctga, 5.4, 333.7 , 0 );
setEffMoveKey( spep_0-3 + 184, ctga, -2.3, 340.6 , 0 );
setEffMoveKey( spep_0-3 + 186, ctga, 5.4, 333.8 , 0 );
setEffMoveKey( spep_0-3 + 188, ctga, 4.4, 329.7 , 0 );
setEffMoveKey( spep_0-3 + 192, ctga, 5.5, 333.9 , 0 );

setEffScaleKey( spep_0-3 + 174, ctga, 1, 1 );
setEffScaleKey( spep_0-3 + 176, ctga, 2.25, 2.25 );
setEffScaleKey( spep_0-3 + 178, ctga, 3.49, 3.49 );
setEffScaleKey( spep_0-3 + 180, ctga, 2.73, 2.73 );
setEffScaleKey( spep_0-3 + 182, ctga, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 184, ctga, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 186, ctga, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 188, ctga, 2.39, 2.39 );
setEffScaleKey( spep_0-3 + 192, ctga, 2.39, 2.39 );

setEffRotateKey( spep_0-3 + 174, ctga, -19 );
setEffRotateKey( spep_0-3 + 192, ctga, -19 );

setEffAlphaKey( spep_0-3 + 174, ctga, 255 );
setEffAlphaKey( spep_0-3 + 188, ctga, 255 );
setEffAlphaKey( spep_0-3 + 190, ctga, 128 );
setEffAlphaKey( spep_0-3 + 192, ctga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 258,  10021, 34, 0x100, -1, 0, -79.4, 348 );
setEffShake( spep_0-3 + 258, ctbago, 34, 10 );
setEffMoveKey( spep_0-3 + 258, ctbago, -79.4, 348 , 0 );
setEffMoveKey( spep_0-3 + 260, ctbago, -79.5, 347.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbago, -106.7, 364.6 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbago, -79.3, 347.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbago, -102.4, 362.4 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbago, -79.3, 348 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbago, -101.9, 362.1 , 0 );
setEffMoveKey( spep_0-3 + 272, ctbago, -79.3, 348 , 0 );
setEffMoveKey( spep_0-3 + 274, ctbago, -101.4, 361.8 , 0 );
setEffMoveKey( spep_0-3 + 276, ctbago, -79.3, 348.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctbago, -100.8, 361.6 , 0 );
setEffMoveKey( spep_0-3 + 280, ctbago, -79.3, 348.1 , 0 );
setEffMoveKey( spep_0-3 + 282, ctbago, -100.3, 361.3 , 0 );
setEffMoveKey( spep_0-3 + 284, ctbago, -79.3, 348.2 , 0 );
setEffMoveKey( spep_0-3 + 286, ctbago, -99.9, 361.1 , 0 );
setEffMoveKey( spep_0-3 + 288, ctbago, -79.3, 348.2 , 0 );
setEffMoveKey( spep_0-3 + 290, ctbago, -99.7, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 292, ctbago, -99.6, 360.8 , 0 );

setEffScaleKey( spep_0-3 + 258, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 260, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 262, ctbago, 3.74, 3.74 );
setEffScaleKey( spep_0-3 + 264, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 266, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 268, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 270, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 272, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 274, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 276, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 278, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 280, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 282, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 284, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 286, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 288, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 290, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 292, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 258, ctbago, -22.5 );
setEffRotateKey( spep_0-3 + 292, ctbago, -22.5 );

setEffAlphaKey( spep_0-3 + 258, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 284, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 286, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 288, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 290, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 292, ctbago, 0 );

--敵の動き
setDisp( spep_0-3 + 154, 1, 1);
setDisp( spep_0-3 + 268, 1, 0);

changeAnime( spep_0-3 + 154, 1, 101);
changeAnime( spep_0-3 + 164, 1, 104);
changeAnime( spep_0-3 + 172, 1, 108);
changeAnime( spep_0-3 + 194, 1, 106);
changeAnime( spep_0-3 + 258, 1, 108);

setMoveKey( spep_0-3 + 154, 1, 728.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, 624.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, 520.5, 12.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 416.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 162, 1, 312.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 162, 1, 312.4, 12.7 , 0 );
setMoveKey( spep_0-3 + 163, 1, 312.4, 12.7 , 0 );

setMoveKey( spep_0-3 + 164, 1, 241.1, 11.1 , 0 );
setMoveKey( spep_0-3 + 166, 1, 186.5, 11.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, 131.8, 11.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 77.2, 11.2 , 0 );
setMoveKey( spep_0-3 + 171, 1, 77.2, 11.2 , 0 );

setMoveKey( spep_0-3 + 172, 1, 208.8, 38.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 166.4, 13.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 139.7, 23.9 , 0 );
setMoveKey( spep_0-3 + 178, 1, 116.6, 17.1 , 0 );
setMoveKey( spep_0-3 + 180, 1, 123.9, 19.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, 128.5, 28.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, 145.8, 19.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, 153.6, 9.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 167.7, 19.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, 175.5, 9.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 189.7, 19.1 , 0 );
setMoveKey( spep_0-3 + 193, 1, 189.7, 19.1 , 0 );

setMoveKey( spep_0-3 + 194, 1, 62.6, 40 , 0 );
setMoveKey( spep_0-3 + 196, 1, -4.1, 40 , 0 );
setMoveKey( spep_0-3 + 198, 1, -70.9, 40 , 0 );
setMoveKey( spep_0-3 + 200, 1, -137.6, 40 , 0 );
setMoveKey( spep_0-3 + 202, 1, -132.5, 40 , 0 );
setMoveKey( spep_0-3 + 204, 1, -127.5, 40 , 0 );
setMoveKey( spep_0-3 + 206, 1, -122.5, 40 , 0 );
setMoveKey( spep_0-3 + 208, 1, -117.5, 40 , 0 );
setMoveKey( spep_0-3 + 210, 1, -112.5, 40 , 0 );
setMoveKey( spep_0-3 + 212, 1, -107.5, 40 , 0 );
setMoveKey( spep_0-3 + 214, 1, -102.5, 40 , 0 );
setMoveKey( spep_0-3 + 216, 1, -97.5, 40 , 0 );
setMoveKey( spep_0-3 + 218, 1, -92.4, 40 , 0 );
setMoveKey( spep_0-3 + 220, 1, -87.4, 40 , 0 );
setMoveKey( spep_0-3 + 222, 1, -82.4, 40 , 0 );
setMoveKey( spep_0-3 + 224, 1, -77.4, 40 , 0 );
setMoveKey( spep_0-3 + 226, 1, -72.4, 40 , 0 );
setMoveKey( spep_0-3 + 228, 1, -67.4, 40 , 0 );
setMoveKey( spep_0-3 + 230, 1, -62.4, 40 , 0 );
setMoveKey( spep_0-3 + 232, 1, -57.4, 40 , 0 );
setMoveKey( spep_0-3 + 234, 1, -52.3, 40 , 0 );
setMoveKey( spep_0-3 + 236, 1, -47.3, 40 , 0 );
setMoveKey( spep_0-3 + 238, 1, -42.3, 40 , 0 );
setMoveKey( spep_0-3 + 240, 1, -39.6, 40 , 0 );
setMoveKey( spep_0-3 + 242, 1, -36.8, 40 , 0 );
setMoveKey( spep_0-3 + 244, 1, -34.1, 40 , 0 );
setMoveKey( spep_0-3 + 246, 1, -31.3, 40 , 0 );
setMoveKey( spep_0-3 + 248, 1, -28.5, 40 , 0 );
setMoveKey( spep_0-3 + 250, 1, -25.8, 40 , 0 );
setMoveKey( spep_0-3 + 252, 1, -23, 40 , 0 );
setMoveKey( spep_0-3 + 254, 1, -20.3, 40 , 0 );
setMoveKey( spep_0-3 + 256, 1, -17.5, 40 , 0 );
setMoveKey( spep_0-3 + 257, 1, -17.5, 40 , 0 );

setMoveKey( spep_0-3 + 258, 1, 54.4, -174.5 , 0 );
setMoveKey( spep_0-3 + 260, 1, 44.7, -208.2 , 0 );
setMoveKey( spep_0-3 + 262, 1, 87.3, -674.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, 97.5, -916.1 , 0 );
setMoveKey( spep_0-3 + 266, 1, 120.1, -1076 , 0 );
setMoveKey( spep_0-3 + 268, 1, 123.2, -1149.5 , 0 );

setScaleKey( spep_0-3 + 154, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 163, 1, 1.66, 1.66 );

a=0.4;

setScaleKey( spep_0-3 + 164, 1, 1.56, 1.56 );
setScaleKey( spep_0-3 + 171, 1, 1.56, 1.56 );

setScaleKey( spep_0-3 + 172, 1, 2.94+a, 2.94+a );
setScaleKey( spep_0-3 + 174, 1, 2.3+a, 2.3+a );
setScaleKey( spep_0-3 + 176, 1, 1.84+a, 1.84+a );
setScaleKey( spep_0-3 + 178, 1, 1.56+a, 1.56+a );
setScaleKey( spep_0-3 + 180, 1, 1.47+a, 1.47+a );
setScaleKey( spep_0-3 + 193, 1, 1.47+a, 1.47+a );

setScaleKey( spep_0-3 + 194, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 257, 1, 1.54, 1.54 );

setScaleKey( spep_0-3 + 258, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 260, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 262, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 264, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 268, 1, 1.47, 1.47 );

setRotateKey( spep_0-3 + 154, 1, 0 );
setRotateKey( spep_0-3 + 193, 1, 0 );

setRotateKey( spep_0-3 + 194, 1, -5 );
setRotateKey( spep_0-3 + 196, 1, -1.7 );
setRotateKey( spep_0-3 + 198, 1, 1.7 );
setRotateKey( spep_0-3 + 200, 1, 5 );
setRotateKey( spep_0-3 + 202, 1, 5.1 );
setRotateKey( spep_0-3 + 204, 1, 5.2 );
setRotateKey( spep_0-3 + 206, 1, 5.3 );
setRotateKey( spep_0-3 + 208, 1, 5.4 );
setRotateKey( spep_0-3 + 210, 1, 5.5 );
setRotateKey( spep_0-3 + 212, 1, 5.6 );
setRotateKey( spep_0-3 + 214, 1, 5.7 );
setRotateKey( spep_0-3 + 216, 1, 5.9 );
setRotateKey( spep_0-3 + 218, 1, 6 );
setRotateKey( spep_0-3 + 220, 1, 6.1 );
setRotateKey( spep_0-3 + 222, 1, 6.2 );
setRotateKey( spep_0-3 + 224, 1, 6.3 );
setRotateKey( spep_0-3 + 226, 1, 6.4 );
setRotateKey( spep_0-3 + 228, 1, 6.5 );
setRotateKey( spep_0-3 + 230, 1, 6.6 );
setRotateKey( spep_0-3 + 232, 1, 6.7 );
setRotateKey( spep_0-3 + 234, 1, 6.8 );
setRotateKey( spep_0-3 + 236, 1, 6.9 );
setRotateKey( spep_0-3 + 238, 1, 7.1 );
setRotateKey( spep_0-3 + 240, 1, 7.1 );
setRotateKey( spep_0-3 + 242, 1, 7.2 );
setRotateKey( spep_0-3 + 244, 1, 7.3 );
setRotateKey( spep_0-3 + 246, 1, 7.3 );
setRotateKey( spep_0-3 + 248, 1, 7.4 );
setRotateKey( spep_0-3 + 250, 1, 7.5 );
setRotateKey( spep_0-3 + 252, 1, 7.6 );
setRotateKey( spep_0-3 + 254, 1, 7.6 );
setRotateKey( spep_0-3 + 256, 1, 7.7 );
setRotateKey( spep_0-3 + 257, 1, 7.7 );

setRotateKey( spep_0-3 + 258, 1, 56.7 );
setRotateKey( spep_0-3 + 268, 1, 56.7 );

--SE
--横ダッシュ
stopSe( spep_0 + 164, SE006, 32 );
stopSe( spep_0 + 136, SE007, 20 );

--タックル
SE008 = playSe( spep_0 + 170, 1003 );
SE009 = playSe( spep_0 + 176, 1009 );
SE010 = playSe( spep_0 + 176, 1187 );

--瞬間移動
SE011 = playSe( spep_0 + 240, 1109 );

--叩きつけ
SE012 = playSe( spep_0 + 256, 1123 );

--白フェード
entryFade( spep_0 + 302, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+310;
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

--腕クロスして溜める
stopSe( spep_1 + 2, SE004, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 溜めー爆発まで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 340, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 340, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 340, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 340, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 340, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 340, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 340, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 340, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 176, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 176 , 1, 107);

b=120;
c=5;

setMoveKey( spep_2-3 + 176, 1, 832.1+b, -1215.2+c , 0 );
setMoveKey( spep_2-3 + 178, 1, 587.5+b, -887.6+c , 0 );
setMoveKey( spep_2-3 + 180, 1, 343+b, -559.9+c , 0 );
setMoveKey( spep_2-3 + 182, 1, 98.4+b, -232.3+c , 0 );
setMoveKey( spep_2-3 + 184, 1, 95+b, -227.2+c , 0 );
setMoveKey( spep_2-3 + 186, 1, 91.7+b, -222.1+c , 0 );
setMoveKey( spep_2-3 + 188, 1, 88.3+b, -217.1+c , 0 );
setMoveKey( spep_2-3 + 190, 1, 84.9+b, -212+c , 0 );
setMoveKey( spep_2-3 + 192, 1, 81.5+b, -206.9+c , 0 );
setMoveKey( spep_2-3 + 194, 1, 78.2+b, -201.8+c , 0 );
setMoveKey( spep_2-3 + 196, 1, 74.8+b, -196.7+c , 0 );
setMoveKey( spep_2-3 + 198, 1, 71.4+b, -191.6+c , 0 );
setMoveKey( spep_2-3 + 200, 1, 68+b, -186.6+c , 0 );
setMoveKey( spep_2-3 + 202, 1, 64.7+b, -181.5+c , 0 );
setMoveKey( spep_2-3 + 204, 1, 61.3+b, -176.4+c , 0 );
setMoveKey( spep_2-3 + 206, 1, 57.9+b, -171.3+c , 0 );
setMoveKey( spep_2-3 + 208, 1, 54.5+b, -166.2+c , 0 );
setMoveKey( spep_2-3 + 210, 1, 51.2+b, -161.1+c , 0 );
setMoveKey( spep_2-3 + 212, 1, 47.8+b, -156+c , 0 );
setMoveKey( spep_2-3 + 214, 1, 44.4+b, -151+c , 0 );
setMoveKey( spep_2-3 + 216, 1, 41+b, -145.9+c , 0 );
setMoveKey( spep_2-1 + 218, 1, 37.6+b, -140.8+c , 0 );

setScaleKey( spep_2-3 + 176, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 178, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 180, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 186, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 188, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 190, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 192, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 194, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 196, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 198, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 200, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 202, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 208, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 210, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 212, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 214, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 216, 1, 1.04, 1.04 );
setScaleKey( spep_2-1 + 218, 1, 1.03, 1.03 );

setRotateKey( spep_2-3 + 176, 1, 0 );
setRotateKey( spep_2-1 + 218, 1, 0 );

--SE
--気弾溜め
SE014 = playSe( spep_2 + 0, 1191 );
setSeVolumeByWorkId( spep_2 + 0, SE014, 178 );
stopSe( spep_2 + 176, SE014, 16 );
SE015 = playSe( spep_2 + 0, 1200 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 132 );
stopSe( spep_2 + 176, SE015, 16 );
SE016 = playSe( spep_2 + 0, 1265 );
setSeVolumeByWorkId( spep_2 + 0, SE016, 124 );
stopSe( spep_2 + 176, SE016, 16 );
SE017 = playSe( spep_2 + 44, 49 );
SE018 = playSe( spep_2 + 70, 1199 );
setTimeStretch( SE018, 1.11, 10, 1 );
SE019 = playSe( spep_2 + 70, 1158 );
setSeVolumeByWorkId( spep_2 + 70, SE019, 79 );
stopSe( spep_2 + 172, SE019, 14 );
SE020 = playSe( spep_2 + 70, 1276 );
setSeVolumeByWorkId( spep_2 + 70, SE020, 59 );
setTimeStretch( SE020, 1.4, 10, 1 );

--気弾発射
SE021 = playSe( spep_2 + 172, 1027 );
SE022 = playSe( spep_2 + 172, 1193 );
stopSe( spep_2 + 222, SE022, 14 );
SE023 = playSe( spep_2 + 172, 1022 );

--爆発
SE024 = playSe( spep_2 + 216, 1159 );
SE025 = playSe( spep_2 + 216, 1023 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 340, 0,  0, 0, 0, 180 ); --くろ 背景

--終わり
dealDamage( spep_2 +230 );
endPhase( spep_2 + 330 );
end