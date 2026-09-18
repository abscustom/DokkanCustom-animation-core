--1020990:超サイヤ人4ゴジータ_ビッグバンかめはめ波
--sp_effect_a1_00256
--sp2094

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
SP_01=	156276	;--	前半　手前
SP_02=	156277	;--	前半　奥
SP_03=	156278	;--	後半
SP_04=	156312	;--	後半

--エフェクト(てき)
SP_01x=	156279	;--	前半　手前
SP_02x=	156280	;--	前半　奥
SP_03x=	156281	;--	後半
SP_04x=	156331	;--	後半
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半　手前
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 718, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 718, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 718, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 718, first_f, 255 );
setEffAlphaKey( spep_0 + 719, first_f, 0 );
setEffAlphaKey( spep_0 + 720, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 718, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 718, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 718, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 718, first_b, 255 );
setEffAlphaKey( spep_0 + 719, first_b, 0 );
setEffAlphaKey( spep_0 + 720, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0-3 + 42, 1, 0);

changeAnime( spep_0 + 0, 1, 102);

setMoveKey( spep_0 + 0, 1, 228.2, 6 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 229.3, 6.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 232.8, 6.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, 238.7, 8.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, 247.3, 10 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.8, 12.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, 273.3, 15.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 291.2, 19.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 312.7, 23.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 338.3, 28.9 , 0 );
setMoveKey( spep_0-3 + 20, 1, 368.2, 35.2 , 0 );
setMoveKey( spep_0-3 + 22, 1, 403.2, 42.5 , 0 );
setMoveKey( spep_0-3 + 24, 1, 443.7, 51 , 0 );
setMoveKey( spep_0-3 + 26, 1, 490.7, 60.8 , 0 );
setMoveKey( spep_0-3 + 28, 1, 545.2, 72.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 608.6, 85.4 , 0 );
setMoveKey( spep_0-3 + 32, 1, 682.9, 100.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 770.6, 119.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 876.1, 141.3 , 0 );
setMoveKey( spep_0-3 + 38, 1, 1006.3, 168.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, 1174.4, 203.6 , 0 );
setMoveKey( spep_0-3 + 42, 1, 1413.4, 253.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.43, 2.43 );
--setScaleKey( spep_0-3 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 4, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_0-3 + 12, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 14, 1, 2.86, 2.86 );
setScaleKey( spep_0-3 + 16, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 18, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 20, 1, 3.38, 3.38 );
setScaleKey( spep_0-3 + 22, 1, 3.62, 3.62 );
setScaleKey( spep_0-3 + 24, 1, 3.9, 3.9 );
setScaleKey( spep_0-3 + 26, 1, 4.22, 4.22 );
setScaleKey( spep_0-3 + 28, 1, 4.59, 4.59 );
setScaleKey( spep_0-3 + 30, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 32, 1, 5.53, 5.53 );
setScaleKey( spep_0-3 + 34, 1, 6.12, 6.12 );
setScaleKey( spep_0-3 + 36, 1, 6.84, 6.84 );
setScaleKey( spep_0-3 + 38, 1, 7.73, 7.73 );
setScaleKey( spep_0-3 + 40, 1, 8.87, 8.87 );
setScaleKey( spep_0-3 + 42, 1, 10.5, 10.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0-3 + 42, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0-3 + 36, 1, 255 );
setAlphaKey( spep_0-3 + 38, 1, 193 );
setAlphaKey( spep_0-3 + 40, 1, 113 );
setAlphaKey( spep_0-3 + 42, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);

changeAnime( spep_0-3 + 80, 1, 100);

setMoveKey( spep_0-3 + 80, 1, 6, 8.2 , 0 );
setMoveKey( spep_0 + 88, 1, 6, 8.2 , 0 );

setScaleKey( spep_0-3 + 80, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 82, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 84, 1, 0.91, 0.91 );
setScaleKey( spep_0-3 + 86, 1, 0.95, 0.95 );
setScaleKey( spep_0-3 + 88, 1, 1, 1 );
setScaleKey( spep_0-3 + 90, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 91, 1, 1.08, 1.08 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0 + 88, 1, 0 );

setAlphaKey( spep_0-3 + 80, 1, 255 );
setAlphaKey( spep_0 + 88, 1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 1.26, 10, 1 );

--回転
SE002 = playSe( spep_0 + 68, 1278 );
setSeVolumeByWorkId(spep_0+68,SE002,0);
setSeVolumeByWorkId(spep_0+69,SE002,1.5);
setSeVolumeByWorkId(spep_0+70,SE002,3);
setSeVolumeByWorkId(spep_0+71,SE002,4.5);
setSeVolumeByWorkId(spep_0+72,SE002,6);
setSeVolumeByWorkId(spep_0+73,SE002,7.5);
setSeVolumeByWorkId(spep_0+74,SE002,9);
setSeVolumeByWorkId(spep_0+75,SE002,10.5);
setSeVolumeByWorkId(spep_0+76,SE002,12);
setSeVolumeByWorkId(spep_0+77,SE002,13.5);
setSeVolumeByWorkId(spep_0+78,SE002,15);
setSeVolumeByWorkId(spep_0+79,SE002,16.5);
setSeVolumeByWorkId(spep_0+80,SE002,18);
setSeVolumeByWorkId(spep_0+81,SE002,19.5);
setSeVolumeByWorkId(spep_0+82,SE002,21);
setSeVolumeByWorkId(spep_0+83,SE002,22.5);
setSeVolumeByWorkId(spep_0+84,SE002,24);
setSeVolumeByWorkId(spep_0+85,SE002,25.5);
setSeVolumeByWorkId(spep_0+86,SE002,27);
setSeVolumeByWorkId(spep_0+87,SE002,28.5);
setSeVolumeByWorkId(spep_0+88,SE002,30);
setSeVolumeByWorkId(spep_0+89,SE002,31.5);
setSeVolumeByWorkId(spep_0+90,SE002,32);
setStartTimeMs( SE002,  1133 );
SE006 = playSe( spep_0 + 78, 9 );
setSeVolumeByWorkId( spep_0 + 78, SE006, 84 );
SE007 = playSe( spep_0 + 78, 1167 );
setSeVolumeByWorkId( spep_0 + 78, SE007, 48 );

--前方ダッシュ
SE003 = playSe( spep_0 + 44, 1182 );
SE004 = playSe( spep_0 + 44, 9 );

--瞬間移動
SE005 = playSe( spep_0 + 68, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 720, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 23, SE003, 11 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 6, 8.2 , 0 );
    setScaleKey( SP_dodge+9, 1, 1.08, 1.08 );
    setRotateKey( SP_dodge+9, 1, 0 );
    
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

--敵の動き
setDisp( spep_0-1 + 344, 1, 0);

changeAnime( spep_0-3 + 110, 1, 18);
changeAnime( spep_0-3 + 166, 1, 17);
changeAnime( spep_0-3 + 182, 1, 104);
changeAnime( spep_0-3 + 196, 1, 107);
changeAnime( spep_0-3 + 248, 1, 106);
changeAnime( spep_0-3 + 308, 1, 108);
changeAnime( spep_0-3 + 312, 1, 5);


setMoveKey( spep_0-3 + 92, 1, 6, 8.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 6, 8.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, 6, 8.1 , 0 );
setMoveKey( spep_0-3 + 108, 1, 6, 8 , 0 );
setMoveKey( spep_0-3 + 109, 1, 6, 8 , 0 );

setMoveKey( spep_0-3 + 110, 1, 109, 110.2 , 0 );
setMoveKey( spep_0-3 + 165, 1, 109, 110.2 , 0 );

setMoveKey( spep_0-3 + 166, 1, 110.8, 77.9 , 0 );
setMoveKey( spep_0-3 + 168, 1, 110.9, 77.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 111, 77.7 , 0 );
setMoveKey( spep_0-3 + 172, 1, 111.5, 77.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 112.3, 76.7 , 0 );
setMoveKey( spep_0-3 + 176, 1, 113.6, 75.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 116.7, 74.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 128.7, 72.5 , 0 );
setMoveKey( spep_0-3 + 181, 1, 128.7, 72.5 , 0 );

setMoveKey( spep_0-3 + 182, 1, 153.6, 70 , 0 );
setMoveKey( spep_0-3 + 184, 1, 169.2, 66.8 , 0 );
setMoveKey( spep_0-3 + 186, 1, 178.4, 62.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 188.8, 56.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, 203.4, 48.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 226, 36.1 , 0 );
setMoveKey( spep_0-3 + 194, 1, 297.4, -3.5 , 0 );
setMoveKey( spep_0-3 + 195, 1, 297.4, -3.5 , 0 );

b=35;
c=10;

setMoveKey( spep_0-3 + 196, 1, -141.2+b, -392.9+c , 0 );
setMoveKey( spep_0-3 + 204, 1, -141.2+b, -392.9+c , 0 );
setMoveKey( spep_0-3 + 206, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 208, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 212, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 214, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 216, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 218, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 222, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 224, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 226, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 228, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 232, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 234, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 236, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 238, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 242, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 244, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 247, 1, -151.2+b, -397.9+c , 0 );

setMoveKey( spep_0-3 + 248, 1, 149.2, -461 , 0 );
setMoveKey( spep_0-3 + 250, 1, 149, -454 , 0 );
setMoveKey( spep_0-3 + 252, 1, 148.3, -432.3 , 0 );
setMoveKey( spep_0-3 + 254, 1, 147, -395 , 0 );
setMoveKey( spep_0-3 + 256, 1, 145.2, -342.6 , 0 );
setMoveKey( spep_0-3 + 258, 1, 143, -278.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, 140.7, -210.2 , 0 );
setMoveKey( spep_0-3 + 262, 1, 138.5, -146.6 , 0 );
setMoveKey( spep_0-3 + 264, 1, 136.8, -96.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 135.8, -66.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 135.5, -56.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 135.5, -56.2 , 0 );
setMoveKey( spep_0-3 + 282, 1, 137.6, -49 , 0 );
setMoveKey( spep_0-3 + 284, 1, 139.5, -42.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 141.3, -36.5 , 0 );
setMoveKey( spep_0-3 + 288, 1, 142.9, -31.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, 144.3, -26.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, 145.5, -22 , 0 );
setMoveKey( spep_0-3 + 294, 1, 146.6, -18.2 , 0 );
setMoveKey( spep_0-3 + 296, 1, 147.5, -15.1 , 0 );
setMoveKey( spep_0-3 + 298, 1, 148.2, -12.5 , 0 );
setMoveKey( spep_0-3 + 300, 1, 148.8, -10.5 , 0 );
setMoveKey( spep_0-3 + 302, 1, 149.2, -9.1 , 0 );
setMoveKey( spep_0-3 + 304, 1, 149.4, -8.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 149.4, -8 , 0 );
setMoveKey( spep_0-3 + 307, 1, 149.4, -8 , 0 );

setMoveKey( spep_0-3 + 308, 1, 227.7, 56.4 , 0 );
setMoveKey( spep_0-3 + 311, 1, 227.7, 56.4 , 0 );

setMoveKey( spep_0-3 + 312, 1, 125.7, 67.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, 111.2, -8.9 , 0 );
setMoveKey( spep_0-3 + 316, 1, 92.1, 46.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 92.6, 36.3 , 0 );
setMoveKey( spep_0-3 + 320, 1, 86.9, 59 , 0 );
setMoveKey( spep_0-3 + 322, 1, 82.1, 54.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, 84, 62.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, 82, 59.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, 82.6, 63.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, 81.9, 65 , 0 );
setMoveKey( spep_0-3 + 332, 1, 81.4, 66.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, 81, 66.9 , 0 );
setMoveKey( spep_0-3 + 336, 1, 80.7, 67.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, 80.5, 67.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, 80.4, 68 , 0 );
setMoveKey( spep_0-3 + 342, 1, 80.3, 68.1 , 0 );
setMoveKey( spep_0-1 + 344, 1, 80.4, 68.1 , 0 );

setScaleKey( spep_0-3 + 92, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 100, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 102, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 104, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 106, 1, 2.24, 2.24 );
setScaleKey( spep_0-3 + 108, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 109, 1, 2.45, 2.45 );

setScaleKey( spep_0-3 + 110, 1, 4.6, 4.6 );
setScaleKey( spep_0-3 + 165, 1, 4.6, 4.6 );

a=0.2;

setScaleKey( spep_0-3 + 166, 1, 1.52+a, 1.52+a );
setScaleKey( spep_0-3 + 168, 1, 1.52+a, 1.52+a );
setScaleKey( spep_0-3 + 170, 1, 1.53+a, 1.53+a );
setScaleKey( spep_0-3 + 172, 1, 1.53+a, 1.53+a );
setScaleKey( spep_0-3 + 174, 1, 1.54+a, 1.54+a );
setScaleKey( spep_0-3 + 176, 1, 1.56+a, 1.56+a );
setScaleKey( spep_0-3 + 178, 1, 1.58+a, 1.58+a );
setScaleKey( spep_0-3 + 180, 1, 1.62+a, 1.62+a );
setScaleKey( spep_0-3 + 181, 1, 1.62+a, 1.62+a );

setScaleKey( spep_0-3 + 182, 1, 1.66+a, 1.66+a );
setScaleKey( spep_0-3 + 184, 1, 1.72+a, 1.72+a );
setScaleKey( spep_0-3 + 186, 1, 1.8+a, 1.8+a );
setScaleKey( spep_0-3 + 188, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 190, 1, 2.05+a, 2.05+a );
setScaleKey( spep_0-3 + 192, 1, 2.27+a, 2.27+a );
setScaleKey( spep_0-3 + 194, 1, 2.98+a, 2.98+a );
setScaleKey( spep_0-3 + 195, 1, 2.98+a, 2.98+a );

setScaleKey( spep_0-3 + 196, 1, 3.8, 3.8 );
setScaleKey( spep_0-3 + 247, 1, 3.8, 3.8 );

setScaleKey( spep_0-3 + 248, 1, 6.9, 6.9 );
setScaleKey( spep_0-3 + 250, 1, 6.83, 6.83 );
setScaleKey( spep_0-3 + 252, 1, 6.6, 6.6 );
setScaleKey( spep_0-3 + 254, 1, 6.22, 6.22 );
setScaleKey( spep_0-3 + 256, 1, 5.68, 5.68 );
setScaleKey( spep_0-3 + 258, 1, 5.03, 5.03 );
setScaleKey( spep_0-3 + 260, 1, 4.33, 4.33 );
setScaleKey( spep_0-3 + 262, 1, 3.68, 3.68 );
setScaleKey( spep_0-3 + 264, 1, 3.17, 3.17 );
setScaleKey( spep_0-3 + 266, 1, 2.85, 2.85 );
setScaleKey( spep_0-3 + 268, 1, 2.75, 2.75 );

setScaleKey( spep_0-3 + 308, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 311, 1, 2.75, 2.75 );

setScaleKey( spep_0-3 + 312, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 314, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 316, 1, 1.11, 1.11 );
setScaleKey( spep_0-3 + 318, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 320, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 322, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 324, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 326, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 328, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 330, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 332, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 334, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 336, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 338, 1, 0.15, 0.15 );
setScaleKey( spep_0-1 + 344, 1, 0.14, 0.14 );


setRotateKey( spep_0-3 + 109, 1, 0 );

setRotateKey( spep_0-3 + 110, 1, 16 );
setRotateKey( spep_0-3 + 165, 1, 16 );

setRotateKey( spep_0-3 + 166, 1, 3 );
setRotateKey( spep_0-3 + 181, 1, 3 );

setRotateKey( spep_0-3 + 182, 1, 0 );
setRotateKey( spep_0-3 + 195, 1, 0 );

setRotateKey( spep_0-3 + 196, 1, -92 );
setRotateKey( spep_0-3 + 247, 1, -92 );

setRotateKey( spep_0-3 + 248, 1, -78.9 );
setRotateKey( spep_0-3 + 280, 1, -78.9 );
setRotateKey( spep_0-3 + 282, 1, -77.3 );
setRotateKey( spep_0-3 + 284, 1, -75.7 );
setRotateKey( spep_0-3 + 286, 1, -74.3 );
setRotateKey( spep_0-3 + 288, 1, -73 );
setRotateKey( spep_0-3 + 290, 1, -71.9 );
setRotateKey( spep_0-3 + 292, 1, -70.9 );
setRotateKey( spep_0-3 + 294, 1, -70 );
setRotateKey( spep_0-3 + 296, 1, -69.2 );
setRotateKey( spep_0-3 + 298, 1, -68.6 );
setRotateKey( spep_0-3 + 300, 1, -68.2 );
setRotateKey( spep_0-3 + 302, 1, -67.8 );
setRotateKey( spep_0-3 + 304, 1, -67.6 );
setRotateKey( spep_0-3 + 307, 1, -67.6 );

setRotateKey( spep_0-3 + 308, 1, -33.6 );
setRotateKey( spep_0-3 + 311, 1, -33.6 );

setRotateKey( spep_0-3 + 312, 1, -33.6 );
setRotateKey( spep_0-3 + 314, 1, -30.6 );
setRotateKey( spep_0-3 + 316, 1, -30.6 );
setRotateKey( spep_0-3 + 318, 1, -30.7 );
setRotateKey( spep_0-1 + 344, 1, -30.7 );

setAlphaKey( spep_0-1 + 344, 1, 255 );

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 122,  10011, 20, 0x100, -1, 0, -165.9, 409.1 );
setEffShake( spep_0-3 + 122, ctsyun, 20, 10 );
setEffMoveKey( spep_0-3 + 122, ctsyun, -165.9, 409.1 , 0 );
setEffMoveKey( spep_0-3 + 124, ctsyun, -167.7, 420.5 , 0 );
setEffMoveKey( spep_0-3 + 126, ctsyun, -168.4, 424.3 , 0 );
setEffMoveKey( spep_0-3 + 128, ctsyun, -168.4, 424.8 , 0 );
setEffMoveKey( spep_0-3 + 130, ctsyun, -168.5, 425.4 , 0 );
setEffMoveKey( spep_0-3 + 132, ctsyun, -168.5, 426 , 0 );
setEffMoveKey( spep_0-3 + 134, ctsyun, -168.6, 426.5 , 0 );
setEffMoveKey( spep_0-3 + 136, ctsyun, -168.7, 427.1 , 0 );
setEffMoveKey( spep_0-3 + 138, ctsyun, -169.5, 432.1 , 0 );
setEffMoveKey( spep_0-3 + 140, ctsyun, -170.3, 437 , 0 );
setEffMoveKey( spep_0-3 + 142, ctsyun, -171.1, 442 , 0 );

setEffScaleKey( spep_0-3 + 122, ctsyun, 0.96, 0.96 );
setEffScaleKey( spep_0-3 + 124, ctsyun, 1.08, 1.08 );
setEffScaleKey( spep_0-3 + 126, ctsyun, 1.12, 1.12 );
setEffScaleKey( spep_0-3 + 128, ctsyun, 1.13, 1.13 );
setEffScaleKey( spep_0-3 + 130, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 132, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 134, ctsyun, 1.15, 1.15 );
setEffScaleKey( spep_0-3 + 136, ctsyun, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 138, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_0-3 + 140, ctsyun, 1.26, 1.26 );
setEffScaleKey( spep_0-3 + 142, ctsyun, 1.32, 1.32 );

setEffRotateKey( spep_0-3 + 122, ctsyun, -7.8 );
setEffRotateKey( spep_0-3 + 142, ctsyun, -7.8 );

setEffAlphaKey( spep_0-3 + 122, ctsyun, 142 );
setEffAlphaKey( spep_0-3 + 124, ctsyun, 227 );
setEffAlphaKey( spep_0-3 + 126, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 136, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 138, ctsyun, 170 );
setEffAlphaKey( spep_0-3 + 140, ctsyun, 85 );
setEffAlphaKey( spep_0-3 + 142, ctsyun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 204,  10020, 24, 0x100, -1, 0, 108.8, 299.2 );--バキ
setEffShake( spep_0-3 + 204, ctbaki, 24, 10 );
setEffMoveKey( spep_0-3 + 204, ctbaki, 108.8, 299.2 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbaki, 120.4, 301.3 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbaki, 117.9, 319 , 0 );
setEffMoveKey( spep_0-3 + 210, ctbaki, 121.4, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 212, ctbaki, 115.4, 301.7 , 0 );
setEffMoveKey( spep_0-3 + 214, ctbaki, 123.9, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 216, ctbaki, 117.7, 298.8 , 0 );
setEffMoveKey( spep_0-3 + 218, ctbaki, 140.4, 314.7 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbaki, 115.1, 307.2 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbaki, 114.3, 306.6 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbaki, 135.1, 319.8 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbaki, 140.8, 350.9 , 0 );
setEffMoveKey( spep_0-3 + 228, ctbaki, 150, 363.7 , 0 );

setEffScaleKey( spep_0-3 + 204, ctbaki, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 206, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 208, ctbaki, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 210, ctbaki, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 212, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_0-3 + 214, ctbaki, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 216, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 218, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 220, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_0-3 + 222, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 224, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 226, ctbaki, 2.94, 2.94 );
setEffScaleKey( spep_0-3 + 228, ctbaki, 3.08, 3.08 );

setEffRotateKey( spep_0-3 + 204, ctbaki, 36.7 );
setEffRotateKey( spep_0-3 + 228, ctbaki, 36.7 );

setEffAlphaKey( spep_0-3 + 204, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 222, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 224, ctbaki, 170 );
setEffAlphaKey( spep_0-3 + 226, ctbaki, 85 );
setEffAlphaKey( spep_0-3 + 228, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 346,  10018, 58, 0x100, -1, 0, 15.4, 254.6 );
setEffShake( spep_0-3 + 346, ctdogon, 58, 10 );
setEffMoveKey( spep_0-3 + 346, ctdogon, 15.4, 254.6 , 0 );
setEffMoveKey( spep_0-3 + 348, ctdogon, 12.6, 294 , 0 );
setEffMoveKey( spep_0-3 + 350, ctdogon, 24.4, 315.2 , 0 );
setEffMoveKey( spep_0-3 + 352, ctdogon, 27.1, 318.7 , 0 );
setEffMoveKey( spep_0-3 + 354, ctdogon, 16.5, 325.2 , 0 );
setEffMoveKey( spep_0-3 + 356, ctdogon, 25.9, 326.6 , 0 );
setEffMoveKey( spep_0-3 + 358, ctdogon, 17.6, 326.7 , 0 );
setEffMoveKey( spep_0-3 + 360, ctdogon, 26.4, 334.6 , 0 );
setEffMoveKey( spep_0-3 + 362, ctdogon, 17.1, 333.7 , 0 );
setEffMoveKey( spep_0-3 + 364, ctdogon, 25.2, 334.9 , 0 );
setEffMoveKey( spep_0-3 + 366, ctdogon, 17.2, 338.9 , 0 );
setEffMoveKey( spep_0-3 + 368, ctdogon, 25.4, 337.4 , 0 );
setEffMoveKey( spep_0-3 + 370, ctdogon, 16.8, 343.7 , 0 );
setEffMoveKey( spep_0-3 + 372, ctdogon, 27.6, 341 , 0 );
setEffMoveKey( spep_0-3 + 374, ctdogon, 16.5, 345 , 0 );
setEffMoveKey( spep_0-3 + 376, ctdogon, 26.3, 339.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctdogon, 14.9, 346.3 , 0 );
setEffMoveKey( spep_0-3 + 380, ctdogon, 26.5, 344.4 , 0 );
setEffMoveKey( spep_0-3 + 382, ctdogon, 17.2, 339.6 , 0 );
setEffMoveKey( spep_0-3 + 384, ctdogon, 27.3, 348.9 , 0 );
setEffMoveKey( spep_0-3 + 386, ctdogon, 17.5, 347.1 , 0 );
setEffMoveKey( spep_0-3 + 388, ctdogon, 24.6, 340.7 , 0 );
setEffMoveKey( spep_0-3 + 390, ctdogon, 22.1, 351.5 , 0 );
setEffMoveKey( spep_0-3 + 392, ctdogon, 18.8, 341.2 , 0 );
setEffMoveKey( spep_0-3 + 394, ctdogon, 28.8, 341.1 , 0 );
setEffMoveKey( spep_0-3 + 396, ctdogon, 18.4, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 398, ctdogon, 31.2, 359.9 , 0 );
setEffMoveKey( spep_0-3 + 400, ctdogon, 21.2, 362.1 , 0 );
setEffMoveKey( spep_0-3 + 402, ctdogon, 33.6, 373 , 0 );
setEffMoveKey( spep_0-3 + 404, ctdogon, 33.8, 374 , 0 );

setEffScaleKey( spep_0-3 + 346, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 348, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 350, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_0-3 + 352, ctdogon, 3.59, 3.59 );
setEffScaleKey( spep_0-3 + 354, ctdogon, 3.62, 3.62 );
setEffScaleKey( spep_0-3 + 356, ctdogon, 3.65, 3.65 );
setEffScaleKey( spep_0-3 + 358, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_0-3 + 360, ctdogon, 3.7, 3.7 );
setEffScaleKey( spep_0-3 + 362, ctdogon, 3.72, 3.72 );
setEffScaleKey( spep_0-3 + 364, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_0-3 + 366, ctdogon, 3.77, 3.77 );
setEffScaleKey( spep_0-3 + 368, ctdogon, 3.79, 3.79 );
setEffScaleKey( spep_0-3 + 370, ctdogon, 3.81, 3.81 );
setEffScaleKey( spep_0-3 + 372, ctdogon, 3.82, 3.82 );
setEffScaleKey( spep_0-3 + 374, ctdogon, 3.84, 3.84 );
setEffScaleKey( spep_0-3 + 376, ctdogon, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 378, ctdogon, 3.86, 3.86 );
setEffScaleKey( spep_0-3 + 380, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_0-3 + 382, ctdogon, 3.88, 3.88 );
setEffScaleKey( spep_0-3 + 384, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_0-3 + 386, ctdogon, 3.9, 3.9 );
setEffScaleKey( spep_0-3 + 388, ctdogon, 3.9, 3.9 );
setEffScaleKey( spep_0-3 + 390, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_0-3 + 394, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_0-3 + 396, ctdogon, 4.33, 4.33 );
setEffScaleKey( spep_0-3 + 398, ctdogon, 4.65, 4.65 );
setEffScaleKey( spep_0-3 + 400, ctdogon, 4.89, 4.89 );
setEffScaleKey( spep_0-3 + 402, ctdogon, 5.03, 5.03 );
setEffScaleKey( spep_0-3 + 404, ctdogon, 5.07, 5.07 );

setEffRotateKey( spep_0-3 + 346, ctdogon, -0.9 );
setEffRotateKey( spep_0-3 + 404, ctdogon, -0.9 );

setEffAlphaKey( spep_0-3 + 346, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 394, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 396, ctdogon, 163 );
setEffAlphaKey( spep_0-3 + 398, ctdogon, 92 );
setEffAlphaKey( spep_0-3 + 400, ctdogon, 41 );
setEffAlphaKey( spep_0-3 + 402, ctdogon, 10 );
setEffAlphaKey( spep_0-3 + 404, ctdogon, 0 );

--文字エントリー
ctba = entryEffectLife( spep_0-3 + 580,  10022, 26, 0x100, -1, 0, 98.7, 322.5 );
setEffShake( spep_0-3 + 580, ctba, 26, 10 );
setEffMoveKey( spep_0-3 + 580, ctba, 98.7, 322.5 , 0 );
setEffMoveKey( spep_0-3 + 582, ctba, 110.6, 347.8 , 0 );
setEffMoveKey( spep_0-3 + 584, ctba, 106.3, 343.5 , 0 );
setEffMoveKey( spep_0-3 + 586, ctba, 116.3, 349.3 , 0 );
setEffMoveKey( spep_0-3 + 588, ctba, 106.1, 346.9 , 0 );
setEffMoveKey( spep_0-3 + 590, ctba, 114, 353 , 0 );
setEffMoveKey( spep_0-3 + 592, ctba, 110.1, 344.3 , 0 );
setEffMoveKey( spep_0-3 + 594, ctba, 112.7, 353.6 , 0 );
setEffMoveKey( spep_0-3 + 596, ctba, 107.1, 349.2 , 0 );
setEffMoveKey( spep_0-3 + 598, ctba, 117.6, 354.5 , 0 );
setEffMoveKey( spep_0-3 + 600, ctba, 111.3, 347.2 , 0 );
setEffMoveKey( spep_0-3 + 602, ctba, 109.8, 361.6 , 0 );
setEffMoveKey( spep_0-3 + 604, ctba, 117, 355.9 , 0 );
setEffMoveKey( spep_0-3 + 606, ctba, 117.4, 356.9 , 0 );

setEffScaleKey( spep_0-3 + 580, ctba, 0.88, 0.88 );
setEffScaleKey( spep_0-3 + 582, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 584, ctba, 1.13, 1.13 );
setEffScaleKey( spep_0-3 + 586, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 588, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 590, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0-3 + 592, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 594, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 596, ctba, 1.17, 1.17 );
setEffScaleKey( spep_0-3 + 598, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0-3 + 600, ctba, 1.19, 1.19 );
setEffScaleKey( spep_0-3 + 602, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0-3 + 604, ctba, 1.28, 1.28 );
setEffScaleKey( spep_0-3 + 606, ctba, 1.29, 1.29 );

setEffRotateKey( spep_0-3 + 580, ctba, 24.7 );
setEffRotateKey( spep_0-3 + 606, ctba, 24.7 );

setEffAlphaKey( spep_0-3 + 580, ctba, 255 );
setEffAlphaKey( spep_0-3 + 600, ctba, 255 );
setEffAlphaKey( spep_0-3 + 602, ctba, 113 );
setEffAlphaKey( spep_0-3 + 604, ctba, 28 );
setEffAlphaKey( spep_0-3 + 606, ctba, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+452  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+452  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--前方ダッシュ
stopSe( spep_0 + 70, SE003, 20 );
stopSe( spep_0 + 90, SE004, 0 );

--瞬間移動
SE008 = playSe( spep_0 + 128, 1109 );

--回転
stopSe( spep_0 + 130, SE002, 4 );
stopSe( spep_0 + 130, SE006, 4 );
stopSe( spep_0 + 130, SE007, 4 );

--エルボー
SE009 = playSe( spep_0 + 184, 1004 );
setPitch( spep_0 + 184, SE009, -600 );
setTimeStretch( SE009, 0.6, 10, 1 );
SE010 = playSe( spep_0 + 188, 1003 );
SE011 = playSe( spep_0 + 194, 1187 );
setSeVolumeByWorkId( spep_0 + 194, SE011, 84 );
stopSe( spep_0 + 200, SE011, 10 );
SE012 = playSe( spep_0 + 194, 1190 );
SE013 = playSe( spep_0 + 198, 1009 );

--後ろ回し蹴り
SE014 = playSe( spep_0 + 288, 1117 );
setPitch( spep_0 + 288, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );
stopSe( spep_0 + 304, SE014, 14 );
SE015 = playSe( spep_0 + 296, 1003 );
SE016 = playSe( spep_0 + 310, 1120 );
SE017 = playSe( spep_0 + 316, 1183 );
setSeVolumeByWorkId( spep_0 + 316, SE017, 59 );
stopSe( spep_0 + 348, SE017, 10 );
SE018 = playSe( spep_0 + 316, 1121 );
setSeVolumeByWorkId( spep_0 + 316, SE018, 40 );
stopSe( spep_0 + 348, SE018, 10 );

--そしてビルへ
SE019 = playSe( spep_0 + 344, 1023 );
setSeVolumeByWorkId( spep_0 + 344, SE019, 82 );
SE020 = playSe( spep_0 + 344, 1160 );
setSeVolumeByWorkId( spep_0 + 344, SE020, 60 );
SE021 = playSe( spep_0 + 348, 1033 );
setSeVolumeByWorkId( spep_0 + 348, SE021, 68 );

--振り返る
SE022 = playSe( spep_0 + 440, 1116 );
setPitch( spep_0 + 440, SE022, -400 );
setTimeStretch( SE022, 0.73, 10, 1 );
stopSe( spep_0 + 456, SE022, 10 );

--顔カットイン
SE023 = playSe( spep_0 + 464, 1018 );

--腕クロス
SE024 = playSe( spep_0 + 544, 1233 );
setSeVolumeByWorkId( spep_0 + 544, SE024, 78 );
setPitch( spep_0 + 544, SE024, -600 );
setTimeStretch( SE024, 0.6, 10, 1 );
SE025 = playSe( spep_0 + 550, 1007 );
setSeVolumeByWorkId( spep_0 + 550, SE025, 85 );

--手広げる
SE026 = playSe( spep_0 + 576, 1182 );
setSeVolumeByWorkId(spep_0+576,SE026,0);
setSeVolumeByWorkId(spep_0+577,SE026,12.5);
setSeVolumeByWorkId(spep_0+578,SE026,25);
setSeVolumeByWorkId(spep_0+579,SE026,37.5);
setSeVolumeByWorkId(spep_0+580,SE026,50);
setSeVolumeByWorkId(spep_0+581,SE026,62.5);
setSeVolumeByWorkId(spep_0+582,SE026,75);
setSeVolumeByWorkId(spep_0+583,SE026,87.5);
setSeVolumeByWorkId(spep_0+584,SE026,100);
setStartTimeMs( SE026,  100 );
SE027 = playSe( spep_0 + 570, 8 );

--かめはめ波溜める
SE028 = playSe( spep_0 + 622, 1189 );
SE029 = playSe( spep_0 + 626, 1006 );
SE030 = playSe( spep_0 + 628, 1273 );
setSeVolumeByWorkId( spep_0 + 628, SE030, 114 );
SE031 = playSe( spep_0 + 628, 1274,"",0.6 );
setSeVolumeByWorkId( spep_0 + 628, SE031, 140 );
SE032 = playSe( spep_0 + 628, 1275,"",0.6 );
setSeVolumeByWorkId( spep_0 + 628, SE032, 145 );

--次の準備
spep_1=spep_0+718;
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
--playSe( spep_1 + 0, SE_05 );

--かめはめ波溜める
stopSe( spep_1 + 4, SE031, 0 );
stopSe( spep_1 + 4, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 前半　手前
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 164, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 164, 1, 107);

setBlendColor(spep_2-3 + 164,1,3,0,1.0,1.0,0.8);
setBlendColor(spep_2 + 220,1,3,0,1.0,1.0,0);

setMoveKey( spep_2-3 + 164, 1, 50.3, -4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 77.2, 7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 50.1, 11.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 73.9, 22.2 , 0 );
setMoveKey( spep_2-3 + 172, 1, 55.2, 22.8 , 0 );
setMoveKey( spep_2-3 + 174, 1, 74.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 176, 1, 48.1, 39.8 , 0 );
setMoveKey( spep_2-3 + 178, 1, 81.2, 18.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 49.1, 45.5 , 0 );
setMoveKey( spep_2-3 + 182, 1, 89.6, 43.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 54.6, 26.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 75, 83 , 0 );
setMoveKey( spep_2-3 + 188, 1, 74.4, 52.6 , 0 );
setMoveKey( spep_2-3 + 190, 1, 59.8, 38.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 88.4, 69.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, 63.9, 50.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 90.2, 61.3 , 0 );
setMoveKey( spep_2-3 + 198, 1, 64.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, 84.5, 76.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 81.4, 63.2 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.7, 80.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, 81.1, 71.8 , 0 );
setMoveKey( spep_2-3 + 208, 1, 77.4, 79.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 77.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 212, 1, 73.5, 73.6 , 0 );
setMoveKey( spep_2-3 + 214, 1, 67.1, 69 , 0 );
setMoveKey( spep_2-3 + 216, 1, 57.6, 61.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 44.4, 51.3 , 0 );
--setMoveKey( spep_2-1 + 220, 1, 61.4, 60.2 , 0 );
--setMoveKey( spep_2-1 + 348, 1, 61.4, 60.2 , 0 );

setScaleKey( spep_2-3 + 164, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 166, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 168, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 170, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 172, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 174, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 176, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 178, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 180, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 182, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 184, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 186, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 188, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 190, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 194, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 196, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 202, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 204, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 216, 1, 0.25, 0.25 );
setScaleKey( spep_2-1 + 218, 1, 0.24, 0.24 );
--setScaleKey( spep_2-1 + 220, 1, 0.25, 0.25 );
--setScaleKey( spep_2-1 + 348, 1, 0.25, 0.25 );

setRotateKey( spep_2-3 + 164, 1, -41.7 );
setRotateKey( spep_2-1 + 218, 1, -41.7 );

--SE
--かめはめ波溜め続き
SE034 = playSe( spep_2 + 0, 1275 );
setSeVolumeByWorkId(spep_2+0,SE034,0);
setSeVolumeByWorkId(spep_2+1,SE034,25);
setSeVolumeByWorkId(spep_2+2,SE034,50);
setSeVolumeByWorkId(spep_2+3,SE034,75);
setSeVolumeByWorkId(spep_2+4,SE034,100);
setStartTimeMs( SE034,  500 );
stopSe( spep_2 + 58, SE034, 0 );

--かめはめ波発射
SE035 = playSe( spep_2 + 48, 1231 );
setSeVolumeByWorkId( spep_2 + 48, SE035, 168 );
setPitch( spep_2 + 48, SE035, 200 );
setTimeStretch( SE035, 1.13, 10, 1 );
SE036 = playSe( spep_2 + 50, 1284 );
setSeVolumeByWorkId( spep_2 + 50, SE036, 122 );
SE037 = playSe( spep_2 + 50, 1285 );
setSeVolumeByWorkId( spep_2 + 50, SE037, 170 );
setPitch( spep_2 + 50, SE037, -100 );
setTimeStretch( SE037, 0.93, 10, 1 );
SE038 = playSe( spep_2 + 50, 1027 );
setSeVolumeByWorkId( spep_2 + 50, SE038, 50 );
SE039 = playSe( spep_2 + 56, 1176 );
setSeVolumeByWorkId( spep_2 + 56, SE039, 69 );
SE040 = playSe( spep_2 + 78, 1124 );
setSeVolumeByWorkId( spep_2 + 78, SE040, 79 );
SE041 = playSe( spep_2 + 78, 1213 );
setSeVolumeByWorkId(spep_2+78,SE041,0);
setSeVolumeByWorkId(spep_2+79,SE041,0.95);
setSeVolumeByWorkId(spep_2+80,SE041,1.9);
setSeVolumeByWorkId(spep_2+81,SE041,2.85);
setSeVolumeByWorkId(spep_2+82,SE041,3.8);
setSeVolumeByWorkId(spep_2+83,SE041,4.75);
setSeVolumeByWorkId(spep_2+84,SE041,5.7);
setSeVolumeByWorkId(spep_2+85,SE041,6.65);
setSeVolumeByWorkId(spep_2+86,SE041,7.6);
setSeVolumeByWorkId(spep_2+87,SE041,8.55);
setSeVolumeByWorkId(spep_2+88,SE041,9.5);
setSeVolumeByWorkId(spep_2+89,SE041,10.45);
setSeVolumeByWorkId(spep_2+90,SE041,11.4);
setSeVolumeByWorkId(spep_2+91,SE041,12.35);
setSeVolumeByWorkId(spep_2+92,SE041,13.3);
setSeVolumeByWorkId(spep_2+93,SE041,14.25);
setSeVolumeByWorkId(spep_2+94,SE041,15.2);
setSeVolumeByWorkId(spep_2+95,SE041,16.15);
setSeVolumeByWorkId(spep_2+96,SE041,17.1);
setSeVolumeByWorkId(spep_2+97,SE041,18.05);
setSeVolumeByWorkId(spep_2+98,SE041,19);
setSeVolumeByWorkId(spep_2+99,SE041,19.95);
setSeVolumeByWorkId(spep_2+100,SE041,20.9);
setSeVolumeByWorkId(spep_2+101,SE041,21.85);
setSeVolumeByWorkId(spep_2+102,SE041,22.8);
setSeVolumeByWorkId(spep_2+103,SE041,23.75);
setSeVolumeByWorkId(spep_2+104,SE041,24.7);
setSeVolumeByWorkId(spep_2+105,SE041,25.65);
setSeVolumeByWorkId(spep_2+106,SE041,26.6);
setSeVolumeByWorkId(spep_2+107,SE041,27.55);
setSeVolumeByWorkId(spep_2+108,SE041,28.5);
setSeVolumeByWorkId(spep_2+109,SE041,29.45);
setSeVolumeByWorkId(spep_2+110,SE041,30.4);
setSeVolumeByWorkId(spep_2+111,SE041,31.35);
setSeVolumeByWorkId(spep_2+112,SE041,32.3);
setSeVolumeByWorkId(spep_2+113,SE041,33.25);
setSeVolumeByWorkId(spep_2+114,SE041,34.2);
setSeVolumeByWorkId(spep_2+115,SE041,35.15);
setSeVolumeByWorkId(spep_2+116,SE041,36.1);
setSeVolumeByWorkId(spep_2+117,SE041,37.05);
setSeVolumeByWorkId(spep_2+118,SE041,38);
setSeVolumeByWorkId(spep_2+119,SE041,38.95);
setSeVolumeByWorkId(spep_2+120,SE041,39.9);
setSeVolumeByWorkId(spep_2+121,SE041,40.85);
setSeVolumeByWorkId(spep_2+122,SE041,41.8);
setSeVolumeByWorkId(spep_2+123,SE041,42.75);
setSeVolumeByWorkId(spep_2+124,SE041,44);

--ビル壊れる
SE042 = playSe( spep_2 + 166, 1067 );
SE043 = playSe( spep_2 + 168, 1188 );

--宇宙へ
SE044 = playSe( spep_2 + 206, 1211 );
setSeVolumeByWorkId(spep_2+206,SE044,0);
setSeVolumeByWorkId(spep_2+207,SE044,6.14);
setSeVolumeByWorkId(spep_2+208,SE044,12.28);
setSeVolumeByWorkId(spep_2+209,SE044,18.42);
setSeVolumeByWorkId(spep_2+210,SE044,24.56);
setSeVolumeByWorkId(spep_2+211,SE044,30.7);
setSeVolumeByWorkId(spep_2+212,SE044,36.84);
setSeVolumeByWorkId(spep_2+213,SE044,42.98);
setSeVolumeByWorkId(spep_2+214,SE044,49.12);
setSeVolumeByWorkId(spep_2+215,SE044,55.26);
setSeVolumeByWorkId(spep_2+216,SE044,61.4);
setSeVolumeByWorkId(spep_2+217,SE044,67.54);
setSeVolumeByWorkId(spep_2+218,SE044,73.68);
setSeVolumeByWorkId(spep_2+219,SE044,79.82);
setSeVolumeByWorkId(spep_2+220,SE044,85.96);
setSeVolumeByWorkId(spep_2+221,SE044,92.1);
setSeVolumeByWorkId(spep_2+222,SE044,98.24);
setSeVolumeByWorkId(spep_2+223,SE044,104.38);
setSeVolumeByWorkId(spep_2+224,SE044,110.52);
setSeVolumeByWorkId(spep_2+225,SE044,116.66);
setSeVolumeByWorkId(spep_2+226,SE044,122.8);
setSeVolumeByWorkId(spep_2+227,SE044,128.94);
setSeVolumeByWorkId(spep_2+228,SE044,135.08);
setSeVolumeByWorkId(spep_2+229,SE044,141.22);
setSeVolumeByWorkId(spep_2+230,SE044,147.36);
setSeVolumeByWorkId(spep_2+231,SE044,153.5);
setSeVolumeByWorkId(spep_2+232,SE044,159.64);
setSeVolumeByWorkId(spep_2+233,SE044,165.78);
setSeVolumeByWorkId(spep_2+234,SE044,172);
SE045 = playSe( spep_2 + 228, 1146 );
setSeVolumeByWorkId( spep_2 + 228, SE045, 84 );
setPitch( spep_2 + 228, SE045, -400 );
setTimeStretch( SE045, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 350, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage( spep_2 +240 );
endPhase( spep_2 + 340 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半　手前
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 718, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 718, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 718, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 718, first_f, 255 );
setEffAlphaKey( spep_0 + 719, first_f, 0 );
setEffAlphaKey( spep_0 + 720, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 718, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 718, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 718, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 718, first_b, 255 );
setEffAlphaKey( spep_0 + 719, first_b, 0 );
setEffAlphaKey( spep_0 + 720, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0-3 + 42, 1, 0);

changeAnime( spep_0 + 0, 1, 102);

setMoveKey( spep_0 + 0, 1, 228.2, 6 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 229.3, 6.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 232.8, 6.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, 238.7, 8.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, 247.3, 10 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.8, 12.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, 273.3, 15.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 291.2, 19.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 312.7, 23.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 338.3, 28.9 , 0 );
setMoveKey( spep_0-3 + 20, 1, 368.2, 35.2 , 0 );
setMoveKey( spep_0-3 + 22, 1, 403.2, 42.5 , 0 );
setMoveKey( spep_0-3 + 24, 1, 443.7, 51 , 0 );
setMoveKey( spep_0-3 + 26, 1, 490.7, 60.8 , 0 );
setMoveKey( spep_0-3 + 28, 1, 545.2, 72.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 608.6, 85.4 , 0 );
setMoveKey( spep_0-3 + 32, 1, 682.9, 100.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 770.6, 119.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 876.1, 141.3 , 0 );
setMoveKey( spep_0-3 + 38, 1, 1006.3, 168.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, 1174.4, 203.6 , 0 );
setMoveKey( spep_0-3 + 42, 1, 1413.4, 253.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.43, 2.43 );
--setScaleKey( spep_0-3 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 4, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_0-3 + 12, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 14, 1, 2.86, 2.86 );
setScaleKey( spep_0-3 + 16, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 18, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 20, 1, 3.38, 3.38 );
setScaleKey( spep_0-3 + 22, 1, 3.62, 3.62 );
setScaleKey( spep_0-3 + 24, 1, 3.9, 3.9 );
setScaleKey( spep_0-3 + 26, 1, 4.22, 4.22 );
setScaleKey( spep_0-3 + 28, 1, 4.59, 4.59 );
setScaleKey( spep_0-3 + 30, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 32, 1, 5.53, 5.53 );
setScaleKey( spep_0-3 + 34, 1, 6.12, 6.12 );
setScaleKey( spep_0-3 + 36, 1, 6.84, 6.84 );
setScaleKey( spep_0-3 + 38, 1, 7.73, 7.73 );
setScaleKey( spep_0-3 + 40, 1, 8.87, 8.87 );
setScaleKey( spep_0-3 + 42, 1, 10.5, 10.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0-3 + 42, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0-3 + 36, 1, 255 );
setAlphaKey( spep_0-3 + 38, 1, 193 );
setAlphaKey( spep_0-3 + 40, 1, 113 );
setAlphaKey( spep_0-3 + 42, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);

changeAnime( spep_0-3 + 80, 1, 100);

setMoveKey( spep_0-3 + 80, 1, 6, 8.2 , 0 );
setMoveKey( spep_0 + 88, 1, 6, 8.2 , 0 );

setScaleKey( spep_0-3 + 80, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 82, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 84, 1, 0.91, 0.91 );
setScaleKey( spep_0-3 + 86, 1, 0.95, 0.95 );
setScaleKey( spep_0-3 + 88, 1, 1, 1 );
setScaleKey( spep_0-3 + 90, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 91, 1, 1.08, 1.08 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0 + 88, 1, 0 );

setAlphaKey( spep_0-3 + 80, 1, 255 );
setAlphaKey( spep_0 + 88, 1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 1.26, 10, 1 );

--回転
SE002 = playSe( spep_0 + 68, 1278 );
setSeVolumeByWorkId(spep_0+68,SE002,0);
setSeVolumeByWorkId(spep_0+69,SE002,1.5);
setSeVolumeByWorkId(spep_0+70,SE002,3);
setSeVolumeByWorkId(spep_0+71,SE002,4.5);
setSeVolumeByWorkId(spep_0+72,SE002,6);
setSeVolumeByWorkId(spep_0+73,SE002,7.5);
setSeVolumeByWorkId(spep_0+74,SE002,9);
setSeVolumeByWorkId(spep_0+75,SE002,10.5);
setSeVolumeByWorkId(spep_0+76,SE002,12);
setSeVolumeByWorkId(spep_0+77,SE002,13.5);
setSeVolumeByWorkId(spep_0+78,SE002,15);
setSeVolumeByWorkId(spep_0+79,SE002,16.5);
setSeVolumeByWorkId(spep_0+80,SE002,18);
setSeVolumeByWorkId(spep_0+81,SE002,19.5);
setSeVolumeByWorkId(spep_0+82,SE002,21);
setSeVolumeByWorkId(spep_0+83,SE002,22.5);
setSeVolumeByWorkId(spep_0+84,SE002,24);
setSeVolumeByWorkId(spep_0+85,SE002,25.5);
setSeVolumeByWorkId(spep_0+86,SE002,27);
setSeVolumeByWorkId(spep_0+87,SE002,28.5);
setSeVolumeByWorkId(spep_0+88,SE002,30);
setSeVolumeByWorkId(spep_0+89,SE002,31.5);
setSeVolumeByWorkId(spep_0+90,SE002,32);
setStartTimeMs( SE002,  1133 );
SE006 = playSe( spep_0 + 78, 9 );
setSeVolumeByWorkId( spep_0 + 78, SE006, 84 );
SE007 = playSe( spep_0 + 78, 1167 );
setSeVolumeByWorkId( spep_0 + 78, SE007, 48 );

--前方ダッシュ
SE003 = playSe( spep_0 + 44, 1182 );
SE004 = playSe( spep_0 + 44, 9 );

--瞬間移動
SE005 = playSe( spep_0 + 68, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 720, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 23, SE003, 11 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 6, 8.2 , 0 );
    setScaleKey( SP_dodge+9, 1, 1.08, 1.08 );
    setRotateKey( SP_dodge+9, 1, 0 );
    
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

--敵の動き
setDisp( spep_0-1 + 344, 1, 0);

changeAnime( spep_0-3 + 110, 1, 18);
changeAnime( spep_0-3 + 166, 1, 17);
changeAnime( spep_0-3 + 182, 1, 104);
changeAnime( spep_0-3 + 196, 1, 107);
changeAnime( spep_0-3 + 248, 1, 106);
changeAnime( spep_0-3 + 308, 1, 108);
changeAnime( spep_0-3 + 312, 1, 5);


setMoveKey( spep_0-3 + 92, 1, 6, 8.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 6, 8.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, 6, 8.1 , 0 );
setMoveKey( spep_0-3 + 108, 1, 6, 8 , 0 );
setMoveKey( spep_0-3 + 109, 1, 6, 8 , 0 );

setMoveKey( spep_0-3 + 110, 1, 109, 110.2 , 0 );
setMoveKey( spep_0-3 + 165, 1, 109, 110.2 , 0 );

setMoveKey( spep_0-3 + 166, 1, 110.8, 77.9 , 0 );
setMoveKey( spep_0-3 + 168, 1, 110.9, 77.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 111, 77.7 , 0 );
setMoveKey( spep_0-3 + 172, 1, 111.5, 77.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 112.3, 76.7 , 0 );
setMoveKey( spep_0-3 + 176, 1, 113.6, 75.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 116.7, 74.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 128.7, 72.5 , 0 );
setMoveKey( spep_0-3 + 181, 1, 128.7, 72.5 , 0 );

setMoveKey( spep_0-3 + 182, 1, 153.6, 70 , 0 );
setMoveKey( spep_0-3 + 184, 1, 169.2, 66.8 , 0 );
setMoveKey( spep_0-3 + 186, 1, 178.4, 62.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 188.8, 56.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, 203.4, 48.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 226, 36.1 , 0 );
setMoveKey( spep_0-3 + 194, 1, 297.4, -3.5 , 0 );
setMoveKey( spep_0-3 + 195, 1, 297.4, -3.5 , 0 );

b=35;
c=10;

setMoveKey( spep_0-3 + 196, 1, -141.2+b, -392.9+c , 0 );
setMoveKey( spep_0-3 + 204, 1, -141.2+b, -392.9+c , 0 );
setMoveKey( spep_0-3 + 206, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 208, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 212, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 214, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 216, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 218, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 222, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 224, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 226, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 228, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 232, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 234, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 236, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 238, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 242, 1, -123.3+b, -378.9+c , 0 );
setMoveKey( spep_0-3 + 244, 1, -151.2+b, -397.9+c , 0 );
setMoveKey( spep_0-3 + 247, 1, -151.2+b, -397.9+c , 0 );

setMoveKey( spep_0-3 + 248, 1, 149.2, -461 , 0 );
setMoveKey( spep_0-3 + 250, 1, 149, -454 , 0 );
setMoveKey( spep_0-3 + 252, 1, 148.3, -432.3 , 0 );
setMoveKey( spep_0-3 + 254, 1, 147, -395 , 0 );
setMoveKey( spep_0-3 + 256, 1, 145.2, -342.6 , 0 );
setMoveKey( spep_0-3 + 258, 1, 143, -278.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, 140.7, -210.2 , 0 );
setMoveKey( spep_0-3 + 262, 1, 138.5, -146.6 , 0 );
setMoveKey( spep_0-3 + 264, 1, 136.8, -96.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 135.8, -66.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 135.5, -56.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 135.5, -56.2 , 0 );
setMoveKey( spep_0-3 + 282, 1, 137.6, -49 , 0 );
setMoveKey( spep_0-3 + 284, 1, 139.5, -42.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 141.3, -36.5 , 0 );
setMoveKey( spep_0-3 + 288, 1, 142.9, -31.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, 144.3, -26.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, 145.5, -22 , 0 );
setMoveKey( spep_0-3 + 294, 1, 146.6, -18.2 , 0 );
setMoveKey( spep_0-3 + 296, 1, 147.5, -15.1 , 0 );
setMoveKey( spep_0-3 + 298, 1, 148.2, -12.5 , 0 );
setMoveKey( spep_0-3 + 300, 1, 148.8, -10.5 , 0 );
setMoveKey( spep_0-3 + 302, 1, 149.2, -9.1 , 0 );
setMoveKey( spep_0-3 + 304, 1, 149.4, -8.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 149.4, -8 , 0 );
setMoveKey( spep_0-3 + 307, 1, 149.4, -8 , 0 );

setMoveKey( spep_0-3 + 308, 1, 227.7, 56.4 , 0 );
setMoveKey( spep_0-3 + 311, 1, 227.7, 56.4 , 0 );

setMoveKey( spep_0-3 + 312, 1, 125.7, 67.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, 111.2, -8.9 , 0 );
setMoveKey( spep_0-3 + 316, 1, 92.1, 46.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 92.6, 36.3 , 0 );
setMoveKey( spep_0-3 + 320, 1, 86.9, 59 , 0 );
setMoveKey( spep_0-3 + 322, 1, 82.1, 54.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, 84, 62.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, 82, 59.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, 82.6, 63.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, 81.9, 65 , 0 );
setMoveKey( spep_0-3 + 332, 1, 81.4, 66.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, 81, 66.9 , 0 );
setMoveKey( spep_0-3 + 336, 1, 80.7, 67.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, 80.5, 67.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, 80.4, 68 , 0 );
setMoveKey( spep_0-3 + 342, 1, 80.3, 68.1 , 0 );
setMoveKey( spep_0-1 + 344, 1, 80.4, 68.1 , 0 );

setScaleKey( spep_0-3 + 92, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 100, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 102, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 104, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 106, 1, 2.24, 2.24 );
setScaleKey( spep_0-3 + 108, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 109, 1, 2.45, 2.45 );

setScaleKey( spep_0-3 + 110, 1, 4.6, 4.6 );
setScaleKey( spep_0-3 + 165, 1, 4.6, 4.6 );

a=0.2;

setScaleKey( spep_0-3 + 166, 1, 1.52+a, 1.52+a );
setScaleKey( spep_0-3 + 168, 1, 1.52+a, 1.52+a );
setScaleKey( spep_0-3 + 170, 1, 1.53+a, 1.53+a );
setScaleKey( spep_0-3 + 172, 1, 1.53+a, 1.53+a );
setScaleKey( spep_0-3 + 174, 1, 1.54+a, 1.54+a );
setScaleKey( spep_0-3 + 176, 1, 1.56+a, 1.56+a );
setScaleKey( spep_0-3 + 178, 1, 1.58+a, 1.58+a );
setScaleKey( spep_0-3 + 180, 1, 1.62+a, 1.62+a );
setScaleKey( spep_0-3 + 181, 1, 1.62+a, 1.62+a );

setScaleKey( spep_0-3 + 182, 1, 1.66+a, 1.66+a );
setScaleKey( spep_0-3 + 184, 1, 1.72+a, 1.72+a );
setScaleKey( spep_0-3 + 186, 1, 1.8+a, 1.8+a );
setScaleKey( spep_0-3 + 188, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 190, 1, 2.05+a, 2.05+a );
setScaleKey( spep_0-3 + 192, 1, 2.27+a, 2.27+a );
setScaleKey( spep_0-3 + 194, 1, 2.98+a, 2.98+a );
setScaleKey( spep_0-3 + 195, 1, 2.98+a, 2.98+a );

setScaleKey( spep_0-3 + 182, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 184, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 186, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 188, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 190, 1, 2.05, 2.05 );
setScaleKey( spep_0-3 + 192, 1, 2.27, 2.27 );
setScaleKey( spep_0-3 + 194, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 195, 1, 2.98, 2.98 );

setScaleKey( spep_0-3 + 196, 1, 3.8, 3.8 );
setScaleKey( spep_0-3 + 247, 1, 3.8, 3.8 );

setScaleKey( spep_0-3 + 248, 1, 6.9, 6.9 );
setScaleKey( spep_0-3 + 250, 1, 6.83, 6.83 );
setScaleKey( spep_0-3 + 252, 1, 6.6, 6.6 );
setScaleKey( spep_0-3 + 254, 1, 6.22, 6.22 );
setScaleKey( spep_0-3 + 256, 1, 5.68, 5.68 );
setScaleKey( spep_0-3 + 258, 1, 5.03, 5.03 );
setScaleKey( spep_0-3 + 260, 1, 4.33, 4.33 );
setScaleKey( spep_0-3 + 262, 1, 3.68, 3.68 );
setScaleKey( spep_0-3 + 264, 1, 3.17, 3.17 );
setScaleKey( spep_0-3 + 266, 1, 2.85, 2.85 );
setScaleKey( spep_0-3 + 268, 1, 2.75, 2.75 );

setScaleKey( spep_0-3 + 308, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 311, 1, 2.75, 2.75 );

setScaleKey( spep_0-3 + 312, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 314, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 316, 1, 1.11, 1.11 );
setScaleKey( spep_0-3 + 318, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 320, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 322, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 324, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 326, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 328, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 330, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 332, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 334, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 336, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 338, 1, 0.15, 0.15 );
setScaleKey( spep_0-1 + 344, 1, 0.14, 0.14 );


setRotateKey( spep_0-3 + 109, 1, 0 );

setRotateKey( spep_0-3 + 110, 1, 16 );
setRotateKey( spep_0-3 + 165, 1, 16 );

setRotateKey( spep_0-3 + 166, 1, 3 );
setRotateKey( spep_0-3 + 181, 1, 3 );

setRotateKey( spep_0-3 + 182, 1, 0 );
setRotateKey( spep_0-3 + 195, 1, 0 );

setRotateKey( spep_0-3 + 196, 1, -92 );
setRotateKey( spep_0-3 + 247, 1, -92 );

setRotateKey( spep_0-3 + 248, 1, -78.9 );
setRotateKey( spep_0-3 + 280, 1, -78.9 );
setRotateKey( spep_0-3 + 282, 1, -77.3 );
setRotateKey( spep_0-3 + 284, 1, -75.7 );
setRotateKey( spep_0-3 + 286, 1, -74.3 );
setRotateKey( spep_0-3 + 288, 1, -73 );
setRotateKey( spep_0-3 + 290, 1, -71.9 );
setRotateKey( spep_0-3 + 292, 1, -70.9 );
setRotateKey( spep_0-3 + 294, 1, -70 );
setRotateKey( spep_0-3 + 296, 1, -69.2 );
setRotateKey( spep_0-3 + 298, 1, -68.6 );
setRotateKey( spep_0-3 + 300, 1, -68.2 );
setRotateKey( spep_0-3 + 302, 1, -67.8 );
setRotateKey( spep_0-3 + 304, 1, -67.6 );
setRotateKey( spep_0-3 + 307, 1, -67.6 );

setRotateKey( spep_0-3 + 308, 1, -33.6 );
setRotateKey( spep_0-3 + 311, 1, -33.6 );

setRotateKey( spep_0-3 + 312, 1, -33.6 );
setRotateKey( spep_0-3 + 314, 1, -30.6 );
setRotateKey( spep_0-3 + 316, 1, -30.6 );
setRotateKey( spep_0-3 + 318, 1, -30.7 );
setRotateKey( spep_0-1 + 344, 1, -30.7 );

setAlphaKey( spep_0-1 + 344, 1, 255 );

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 122,  10011, 20, 0x100, -1, 0, -165.9, 409.1 );
setEffShake( spep_0-3 + 122, ctsyun, 20, 10 );
setEffMoveKey( spep_0-3 + 122, ctsyun, -165.9, 409.1 , 0 );
setEffMoveKey( spep_0-3 + 124, ctsyun, -167.7, 420.5 , 0 );
setEffMoveKey( spep_0-3 + 126, ctsyun, -168.4, 424.3 , 0 );
setEffMoveKey( spep_0-3 + 128, ctsyun, -168.4, 424.8 , 0 );
setEffMoveKey( spep_0-3 + 130, ctsyun, -168.5, 425.4 , 0 );
setEffMoveKey( spep_0-3 + 132, ctsyun, -168.5, 426 , 0 );
setEffMoveKey( spep_0-3 + 134, ctsyun, -168.6, 426.5 , 0 );
setEffMoveKey( spep_0-3 + 136, ctsyun, -168.7, 427.1 , 0 );
setEffMoveKey( spep_0-3 + 138, ctsyun, -169.5, 432.1 , 0 );
setEffMoveKey( spep_0-3 + 140, ctsyun, -170.3, 437 , 0 );
setEffMoveKey( spep_0-3 + 142, ctsyun, -171.1, 442 , 0 );

setEffScaleKey( spep_0-3 + 122, ctsyun, 0.96, 0.96 );
setEffScaleKey( spep_0-3 + 124, ctsyun, 1.08, 1.08 );
setEffScaleKey( spep_0-3 + 126, ctsyun, 1.12, 1.12 );
setEffScaleKey( spep_0-3 + 128, ctsyun, 1.13, 1.13 );
setEffScaleKey( spep_0-3 + 130, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 132, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 134, ctsyun, 1.15, 1.15 );
setEffScaleKey( spep_0-3 + 136, ctsyun, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 138, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_0-3 + 140, ctsyun, 1.26, 1.26 );
setEffScaleKey( spep_0-3 + 142, ctsyun, 1.32, 1.32 );

setEffRotateKey( spep_0-3 + 122, ctsyun, -7.8 );
setEffRotateKey( spep_0-3 + 142, ctsyun, -7.8 );

setEffAlphaKey( spep_0-3 + 122, ctsyun, 142 );
setEffAlphaKey( spep_0-3 + 124, ctsyun, 227 );
setEffAlphaKey( spep_0-3 + 126, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 136, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 138, ctsyun, 170 );
setEffAlphaKey( spep_0-3 + 140, ctsyun, 85 );
setEffAlphaKey( spep_0-3 + 142, ctsyun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 204,  10020, 24, 0x100, -1, 0, 108.8, 299.2 );--バキ
setEffShake( spep_0-3 + 204, ctbaki, 24, 10 );
setEffMoveKey( spep_0-3 + 204, ctbaki, 108.8, 299.2 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbaki, 120.4, 301.3 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbaki, 117.9, 319 , 0 );
setEffMoveKey( spep_0-3 + 210, ctbaki, 121.4, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 212, ctbaki, 115.4, 301.7 , 0 );
setEffMoveKey( spep_0-3 + 214, ctbaki, 123.9, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 216, ctbaki, 117.7, 298.8 , 0 );
setEffMoveKey( spep_0-3 + 218, ctbaki, 140.4, 314.7 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbaki, 115.1, 307.2 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbaki, 114.3, 306.6 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbaki, 135.1, 319.8 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbaki, 140.8, 350.9 , 0 );
setEffMoveKey( spep_0-3 + 228, ctbaki, 150, 363.7 , 0 );

setEffScaleKey( spep_0-3 + 204, ctbaki, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 206, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 208, ctbaki, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 210, ctbaki, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 212, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_0-3 + 214, ctbaki, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 216, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 218, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 220, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_0-3 + 222, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 224, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 226, ctbaki, 2.94, 2.94 );
setEffScaleKey( spep_0-3 + 228, ctbaki, 3.08, 3.08 );

setEffRotateKey( spep_0-3 + 204, ctbaki, 36.7 );
setEffRotateKey( spep_0-3 + 228, ctbaki, 36.7 );

setEffAlphaKey( spep_0-3 + 204, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 222, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 224, ctbaki, 170 );
setEffAlphaKey( spep_0-3 + 226, ctbaki, 85 );
setEffAlphaKey( spep_0-3 + 228, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 346,  10018, 58, 0x100, -1, 0, 15.4, 254.6 );
setEffShake( spep_0-3 + 346, ctdogon, 58, 10 );
setEffMoveKey( spep_0-3 + 346, ctdogon, 15.4, 254.6 , 0 );
setEffMoveKey( spep_0-3 + 348, ctdogon, 12.6, 294 , 0 );
setEffMoveKey( spep_0-3 + 350, ctdogon, 24.4, 315.2 , 0 );
setEffMoveKey( spep_0-3 + 352, ctdogon, 27.1, 318.7 , 0 );
setEffMoveKey( spep_0-3 + 354, ctdogon, 16.5, 325.2 , 0 );
setEffMoveKey( spep_0-3 + 356, ctdogon, 25.9, 326.6 , 0 );
setEffMoveKey( spep_0-3 + 358, ctdogon, 17.6, 326.7 , 0 );
setEffMoveKey( spep_0-3 + 360, ctdogon, 26.4, 334.6 , 0 );
setEffMoveKey( spep_0-3 + 362, ctdogon, 17.1, 333.7 , 0 );
setEffMoveKey( spep_0-3 + 364, ctdogon, 25.2, 334.9 , 0 );
setEffMoveKey( spep_0-3 + 366, ctdogon, 17.2, 338.9 , 0 );
setEffMoveKey( spep_0-3 + 368, ctdogon, 25.4, 337.4 , 0 );
setEffMoveKey( spep_0-3 + 370, ctdogon, 16.8, 343.7 , 0 );
setEffMoveKey( spep_0-3 + 372, ctdogon, 27.6, 341 , 0 );
setEffMoveKey( spep_0-3 + 374, ctdogon, 16.5, 345 , 0 );
setEffMoveKey( spep_0-3 + 376, ctdogon, 26.3, 339.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctdogon, 14.9, 346.3 , 0 );
setEffMoveKey( spep_0-3 + 380, ctdogon, 26.5, 344.4 , 0 );
setEffMoveKey( spep_0-3 + 382, ctdogon, 17.2, 339.6 , 0 );
setEffMoveKey( spep_0-3 + 384, ctdogon, 27.3, 348.9 , 0 );
setEffMoveKey( spep_0-3 + 386, ctdogon, 17.5, 347.1 , 0 );
setEffMoveKey( spep_0-3 + 388, ctdogon, 24.6, 340.7 , 0 );
setEffMoveKey( spep_0-3 + 390, ctdogon, 22.1, 351.5 , 0 );
setEffMoveKey( spep_0-3 + 392, ctdogon, 18.8, 341.2 , 0 );
setEffMoveKey( spep_0-3 + 394, ctdogon, 28.8, 341.1 , 0 );
setEffMoveKey( spep_0-3 + 396, ctdogon, 18.4, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 398, ctdogon, 31.2, 359.9 , 0 );
setEffMoveKey( spep_0-3 + 400, ctdogon, 21.2, 362.1 , 0 );
setEffMoveKey( spep_0-3 + 402, ctdogon, 33.6, 373 , 0 );
setEffMoveKey( spep_0-3 + 404, ctdogon, 33.8, 374 , 0 );

setEffScaleKey( spep_0-3 + 346, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 348, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 350, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_0-3 + 352, ctdogon, 3.59, 3.59 );
setEffScaleKey( spep_0-3 + 354, ctdogon, 3.62, 3.62 );
setEffScaleKey( spep_0-3 + 356, ctdogon, 3.65, 3.65 );
setEffScaleKey( spep_0-3 + 358, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_0-3 + 360, ctdogon, 3.7, 3.7 );
setEffScaleKey( spep_0-3 + 362, ctdogon, 3.72, 3.72 );
setEffScaleKey( spep_0-3 + 364, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_0-3 + 366, ctdogon, 3.77, 3.77 );
setEffScaleKey( spep_0-3 + 368, ctdogon, 3.79, 3.79 );
setEffScaleKey( spep_0-3 + 370, ctdogon, 3.81, 3.81 );
setEffScaleKey( spep_0-3 + 372, ctdogon, 3.82, 3.82 );
setEffScaleKey( spep_0-3 + 374, ctdogon, 3.84, 3.84 );
setEffScaleKey( spep_0-3 + 376, ctdogon, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 378, ctdogon, 3.86, 3.86 );
setEffScaleKey( spep_0-3 + 380, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_0-3 + 382, ctdogon, 3.88, 3.88 );
setEffScaleKey( spep_0-3 + 384, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_0-3 + 386, ctdogon, 3.9, 3.9 );
setEffScaleKey( spep_0-3 + 388, ctdogon, 3.9, 3.9 );
setEffScaleKey( spep_0-3 + 390, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_0-3 + 394, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_0-3 + 396, ctdogon, 4.33, 4.33 );
setEffScaleKey( spep_0-3 + 398, ctdogon, 4.65, 4.65 );
setEffScaleKey( spep_0-3 + 400, ctdogon, 4.89, 4.89 );
setEffScaleKey( spep_0-3 + 402, ctdogon, 5.03, 5.03 );
setEffScaleKey( spep_0-3 + 404, ctdogon, 5.07, 5.07 );

setEffRotateKey( spep_0-3 + 346, ctdogon, -0.9 );
setEffRotateKey( spep_0-3 + 404, ctdogon, -0.9 );

setEffAlphaKey( spep_0-3 + 346, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 394, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 396, ctdogon, 163 );
setEffAlphaKey( spep_0-3 + 398, ctdogon, 92 );
setEffAlphaKey( spep_0-3 + 400, ctdogon, 41 );
setEffAlphaKey( spep_0-3 + 402, ctdogon, 10 );
setEffAlphaKey( spep_0-3 + 404, ctdogon, 0 );

--文字エントリー
ctba = entryEffectLife( spep_0-3 + 580,  10022, 26, 0x100, -1, 0, 98.7, 322.5 );
setEffShake( spep_0-3 + 580, ctba, 26, 10 );
setEffMoveKey( spep_0-3 + 580, ctba, 98.7, 322.5 , 0 );
setEffMoveKey( spep_0-3 + 582, ctba, 110.6, 347.8 , 0 );
setEffMoveKey( spep_0-3 + 584, ctba, 106.3, 343.5 , 0 );
setEffMoveKey( spep_0-3 + 586, ctba, 116.3, 349.3 , 0 );
setEffMoveKey( spep_0-3 + 588, ctba, 106.1, 346.9 , 0 );
setEffMoveKey( spep_0-3 + 590, ctba, 114, 353 , 0 );
setEffMoveKey( spep_0-3 + 592, ctba, 110.1, 344.3 , 0 );
setEffMoveKey( spep_0-3 + 594, ctba, 112.7, 353.6 , 0 );
setEffMoveKey( spep_0-3 + 596, ctba, 107.1, 349.2 , 0 );
setEffMoveKey( spep_0-3 + 598, ctba, 117.6, 354.5 , 0 );
setEffMoveKey( spep_0-3 + 600, ctba, 111.3, 347.2 , 0 );
setEffMoveKey( spep_0-3 + 602, ctba, 109.8, 361.6 , 0 );
setEffMoveKey( spep_0-3 + 604, ctba, 117, 355.9 , 0 );
setEffMoveKey( spep_0-3 + 606, ctba, 117.4, 356.9 , 0 );

setEffScaleKey( spep_0-3 + 580, ctba, 0.88, 0.88 );
setEffScaleKey( spep_0-3 + 582, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 584, ctba, 1.13, 1.13 );
setEffScaleKey( spep_0-3 + 586, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 588, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0-3 + 590, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0-3 + 592, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 594, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0-3 + 596, ctba, 1.17, 1.17 );
setEffScaleKey( spep_0-3 + 598, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0-3 + 600, ctba, 1.19, 1.19 );
setEffScaleKey( spep_0-3 + 602, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0-3 + 604, ctba, 1.28, 1.28 );
setEffScaleKey( spep_0-3 + 606, ctba, 1.29, 1.29 );

setEffRotateKey( spep_0-3 + 580, ctba, 24.7 );
setEffRotateKey( spep_0-3 + 606, ctba, 24.7 );

setEffAlphaKey( spep_0-3 + 580, ctba, 255 );
setEffAlphaKey( spep_0-3 + 600, ctba, 255 );
setEffAlphaKey( spep_0-3 + 602, ctba, 113 );
setEffAlphaKey( spep_0-3 + 604, ctba, 28 );
setEffAlphaKey( spep_0-3 + 606, ctba, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+460  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+460  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--前方ダッシュ
stopSe( spep_0 + 70, SE003, 20 );
stopSe( spep_0 + 90, SE004, 0 );

--瞬間移動
SE008 = playSe( spep_0 + 128, 1109 );

--回転
stopSe( spep_0 + 130, SE002, 4 );
stopSe( spep_0 + 130, SE006, 4 );
stopSe( spep_0 + 130, SE007, 4 );

--エルボー
SE009 = playSe( spep_0 + 184, 1004 );
setPitch( spep_0 + 184, SE009, -600 );
setTimeStretch( SE009, 0.6, 10, 1 );
SE010 = playSe( spep_0 + 188, 1003 );
SE011 = playSe( spep_0 + 194, 1187 );
setSeVolumeByWorkId( spep_0 + 194, SE011, 84 );
stopSe( spep_0 + 200, SE011, 10 );
SE012 = playSe( spep_0 + 194, 1190 );
SE013 = playSe( spep_0 + 198, 1009 );

--後ろ回し蹴り
SE014 = playSe( spep_0 + 288, 1117 );
setPitch( spep_0 + 288, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );
stopSe( spep_0 + 304, SE014, 14 );
SE015 = playSe( spep_0 + 296, 1003 );
SE016 = playSe( spep_0 + 310, 1120 );
SE017 = playSe( spep_0 + 316, 1183 );
setSeVolumeByWorkId( spep_0 + 316, SE017, 59 );
stopSe( spep_0 + 348, SE017, 10 );
SE018 = playSe( spep_0 + 316, 1121 );
setSeVolumeByWorkId( spep_0 + 316, SE018, 40 );
stopSe( spep_0 + 348, SE018, 10 );

--そしてビルへ
SE019 = playSe( spep_0 + 344, 1023 );
setSeVolumeByWorkId( spep_0 + 344, SE019, 82 );
SE020 = playSe( spep_0 + 344, 1160 );
setSeVolumeByWorkId( spep_0 + 344, SE020, 60 );
SE021 = playSe( spep_0 + 348, 1033 );
setSeVolumeByWorkId( spep_0 + 348, SE021, 68 );

--振り返る
SE022 = playSe( spep_0 + 440, 1116 );
setPitch( spep_0 + 440, SE022, -400 );
setTimeStretch( SE022, 0.73, 10, 1 );
stopSe( spep_0 + 456, SE022, 10 );

--顔カットイン
--SE023 = playSe( spep_0 + 464, 1018 );

--腕クロス
SE024 = playSe( spep_0 + 544, 1233 );
setSeVolumeByWorkId( spep_0 + 544, SE024, 78 );
setPitch( spep_0 + 544, SE024, -600 );
setTimeStretch( SE024, 0.6, 10, 1 );
SE025 = playSe( spep_0 + 550, 1007 );
setSeVolumeByWorkId( spep_0 + 550, SE025, 85 );

--手広げる
SE026 = playSe( spep_0 + 576, 1182 );
setSeVolumeByWorkId(spep_0+576,SE026,0);
setSeVolumeByWorkId(spep_0+577,SE026,12.5);
setSeVolumeByWorkId(spep_0+578,SE026,25);
setSeVolumeByWorkId(spep_0+579,SE026,37.5);
setSeVolumeByWorkId(spep_0+580,SE026,50);
setSeVolumeByWorkId(spep_0+581,SE026,62.5);
setSeVolumeByWorkId(spep_0+582,SE026,75);
setSeVolumeByWorkId(spep_0+583,SE026,87.5);
setSeVolumeByWorkId(spep_0+584,SE026,100);
setStartTimeMs( SE026,  100 );
SE027 = playSe( spep_0 + 570, 8 );

--かめはめ波溜める
SE028 = playSe( spep_0 + 622, 1189 );
SE029 = playSe( spep_0 + 626, 1006 );
SE030 = playSe( spep_0 + 628, 1273 );
setSeVolumeByWorkId( spep_0 + 628, SE030, 114 );
SE031 = playSe( spep_0 + 628, 1274,"",0.6 );
setSeVolumeByWorkId( spep_0 + 628, SE031, 140 );
SE032 = playSe( spep_0 + 628, 1275,"",0.6 );
setSeVolumeByWorkId( spep_0 + 628, SE032, 145 );

--次の準備
spep_1=spep_0+718;
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

--かめはめ波溜める
stopSe( spep_1 + 4, SE031, 0 );
stopSe( spep_1 + 4, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 前半　手前
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 164, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 164, 1, 107);

setBlendColor(spep_2-3 + 164,1,3,0,1.0,1.0,0.8);
setBlendColor(spep_2 + 220,1,3,0,1.0,1.0,0);

setMoveKey( spep_2-3 + 164, 1, 50.3, -4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 77.2, 7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 50.1, 11.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 73.9, 22.2 , 0 );
setMoveKey( spep_2-3 + 172, 1, 55.2, 22.8 , 0 );
setMoveKey( spep_2-3 + 174, 1, 74.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 176, 1, 48.1, 39.8 , 0 );
setMoveKey( spep_2-3 + 178, 1, 81.2, 18.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 49.1, 45.5 , 0 );
setMoveKey( spep_2-3 + 182, 1, 89.6, 43.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 54.6, 26.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 75, 83 , 0 );
setMoveKey( spep_2-3 + 188, 1, 74.4, 52.6 , 0 );
setMoveKey( spep_2-3 + 190, 1, 59.8, 38.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 88.4, 69.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, 63.9, 50.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 90.2, 61.3 , 0 );
setMoveKey( spep_2-3 + 198, 1, 64.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, 84.5, 76.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 81.4, 63.2 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.7, 80.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, 81.1, 71.8 , 0 );
setMoveKey( spep_2-3 + 208, 1, 77.4, 79.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 77.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 212, 1, 73.5, 73.6 , 0 );
setMoveKey( spep_2-3 + 214, 1, 67.1, 69 , 0 );
setMoveKey( spep_2-3 + 216, 1, 57.6, 61.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 44.4, 51.3 , 0 );
--setMoveKey( spep_2-1 + 220, 1, 61.4, 60.2 , 0 );
--setMoveKey( spep_2-1 + 348, 1, 61.4, 60.2 , 0 );

setScaleKey( spep_2-3 + 164, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 166, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 168, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 170, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 172, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 174, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 176, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 178, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 180, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 182, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 184, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 186, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 188, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 190, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 194, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 196, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 202, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 204, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 216, 1, 0.25, 0.25 );
setScaleKey( spep_2-1 + 218, 1, 0.24, 0.24 );
--setScaleKey( spep_2-1 + 220, 1, 0.25, 0.25 );
--setScaleKey( spep_2-1 + 348, 1, 0.25, 0.25 );

setRotateKey( spep_2-3 + 164, 1, -41.7 );
setRotateKey( spep_2-1 + 218, 1, -41.7 );

--SE
--かめはめ波溜め続き
SE034 = playSe( spep_2 + 0, 1275 );
setSeVolumeByWorkId(spep_2+0,SE034,0);
setSeVolumeByWorkId(spep_2+1,SE034,25);
setSeVolumeByWorkId(spep_2+2,SE034,50);
setSeVolumeByWorkId(spep_2+3,SE034,75);
setSeVolumeByWorkId(spep_2+4,SE034,100);
setStartTimeMs( SE034,  500 );
stopSe( spep_2 + 58, SE034, 0 );

--かめはめ波発射
SE035 = playSe( spep_2 + 48, 1231 );
setSeVolumeByWorkId( spep_2 + 48, SE035, 168 );
setPitch( spep_2 + 48, SE035, 200 );
setTimeStretch( SE035, 1.13, 10, 1 );
SE036 = playSe( spep_2 + 50, 1284 );
setSeVolumeByWorkId( spep_2 + 50, SE036, 122 );
SE037 = playSe( spep_2 + 50, 1285 );
setSeVolumeByWorkId( spep_2 + 50, SE037, 170 );
setPitch( spep_2 + 50, SE037, -100 );
setTimeStretch( SE037, 0.93, 10, 1 );
SE038 = playSe( spep_2 + 50, 1027 );
setSeVolumeByWorkId( spep_2 + 50, SE038, 50 );
SE039 = playSe( spep_2 + 56, 1176 );
setSeVolumeByWorkId( spep_2 + 56, SE039, 69 );
SE040 = playSe( spep_2 + 78, 1124 );
setSeVolumeByWorkId( spep_2 + 78, SE040, 79 );
SE041 = playSe( spep_2 + 78, 1213 );
setSeVolumeByWorkId(spep_2+78,SE041,0);
setSeVolumeByWorkId(spep_2+79,SE041,0.95);
setSeVolumeByWorkId(spep_2+80,SE041,1.9);
setSeVolumeByWorkId(spep_2+81,SE041,2.85);
setSeVolumeByWorkId(spep_2+82,SE041,3.8);
setSeVolumeByWorkId(spep_2+83,SE041,4.75);
setSeVolumeByWorkId(spep_2+84,SE041,5.7);
setSeVolumeByWorkId(spep_2+85,SE041,6.65);
setSeVolumeByWorkId(spep_2+86,SE041,7.6);
setSeVolumeByWorkId(spep_2+87,SE041,8.55);
setSeVolumeByWorkId(spep_2+88,SE041,9.5);
setSeVolumeByWorkId(spep_2+89,SE041,10.45);
setSeVolumeByWorkId(spep_2+90,SE041,11.4);
setSeVolumeByWorkId(spep_2+91,SE041,12.35);
setSeVolumeByWorkId(spep_2+92,SE041,13.3);
setSeVolumeByWorkId(spep_2+93,SE041,14.25);
setSeVolumeByWorkId(spep_2+94,SE041,15.2);
setSeVolumeByWorkId(spep_2+95,SE041,16.15);
setSeVolumeByWorkId(spep_2+96,SE041,17.1);
setSeVolumeByWorkId(spep_2+97,SE041,18.05);
setSeVolumeByWorkId(spep_2+98,SE041,19);
setSeVolumeByWorkId(spep_2+99,SE041,19.95);
setSeVolumeByWorkId(spep_2+100,SE041,20.9);
setSeVolumeByWorkId(spep_2+101,SE041,21.85);
setSeVolumeByWorkId(spep_2+102,SE041,22.8);
setSeVolumeByWorkId(spep_2+103,SE041,23.75);
setSeVolumeByWorkId(spep_2+104,SE041,24.7);
setSeVolumeByWorkId(spep_2+105,SE041,25.65);
setSeVolumeByWorkId(spep_2+106,SE041,26.6);
setSeVolumeByWorkId(spep_2+107,SE041,27.55);
setSeVolumeByWorkId(spep_2+108,SE041,28.5);
setSeVolumeByWorkId(spep_2+109,SE041,29.45);
setSeVolumeByWorkId(spep_2+110,SE041,30.4);
setSeVolumeByWorkId(spep_2+111,SE041,31.35);
setSeVolumeByWorkId(spep_2+112,SE041,32.3);
setSeVolumeByWorkId(spep_2+113,SE041,33.25);
setSeVolumeByWorkId(spep_2+114,SE041,34.2);
setSeVolumeByWorkId(spep_2+115,SE041,35.15);
setSeVolumeByWorkId(spep_2+116,SE041,36.1);
setSeVolumeByWorkId(spep_2+117,SE041,37.05);
setSeVolumeByWorkId(spep_2+118,SE041,38);
setSeVolumeByWorkId(spep_2+119,SE041,38.95);
setSeVolumeByWorkId(spep_2+120,SE041,39.9);
setSeVolumeByWorkId(spep_2+121,SE041,40.85);
setSeVolumeByWorkId(spep_2+122,SE041,41.8);
setSeVolumeByWorkId(spep_2+123,SE041,42.75);
setSeVolumeByWorkId(spep_2+124,SE041,44);

--ビル壊れる
SE042 = playSe( spep_2 + 166, 1067 );
SE043 = playSe( spep_2 + 168, 1188 );

--宇宙へ
SE044 = playSe( spep_2 + 206, 1211 );
setSeVolumeByWorkId(spep_2+206,SE044,0);
setSeVolumeByWorkId(spep_2+207,SE044,6.14);
setSeVolumeByWorkId(spep_2+208,SE044,12.28);
setSeVolumeByWorkId(spep_2+209,SE044,18.42);
setSeVolumeByWorkId(spep_2+210,SE044,24.56);
setSeVolumeByWorkId(spep_2+211,SE044,30.7);
setSeVolumeByWorkId(spep_2+212,SE044,36.84);
setSeVolumeByWorkId(spep_2+213,SE044,42.98);
setSeVolumeByWorkId(spep_2+214,SE044,49.12);
setSeVolumeByWorkId(spep_2+215,SE044,55.26);
setSeVolumeByWorkId(spep_2+216,SE044,61.4);
setSeVolumeByWorkId(spep_2+217,SE044,67.54);
setSeVolumeByWorkId(spep_2+218,SE044,73.68);
setSeVolumeByWorkId(spep_2+219,SE044,79.82);
setSeVolumeByWorkId(spep_2+220,SE044,85.96);
setSeVolumeByWorkId(spep_2+221,SE044,92.1);
setSeVolumeByWorkId(spep_2+222,SE044,98.24);
setSeVolumeByWorkId(spep_2+223,SE044,104.38);
setSeVolumeByWorkId(spep_2+224,SE044,110.52);
setSeVolumeByWorkId(spep_2+225,SE044,116.66);
setSeVolumeByWorkId(spep_2+226,SE044,122.8);
setSeVolumeByWorkId(spep_2+227,SE044,128.94);
setSeVolumeByWorkId(spep_2+228,SE044,135.08);
setSeVolumeByWorkId(spep_2+229,SE044,141.22);
setSeVolumeByWorkId(spep_2+230,SE044,147.36);
setSeVolumeByWorkId(spep_2+231,SE044,153.5);
setSeVolumeByWorkId(spep_2+232,SE044,159.64);
setSeVolumeByWorkId(spep_2+233,SE044,165.78);
setSeVolumeByWorkId(spep_2+234,SE044,172);
SE045 = playSe( spep_2 + 228, 1146 );
setSeVolumeByWorkId( spep_2 + 228, SE045, 84 );
setPitch( spep_2 + 228, SE045, -400 );
setTimeStretch( SE045, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 350, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage( spep_2 +240 );
endPhase( spep_2 + 340 );
end