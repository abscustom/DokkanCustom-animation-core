--1020260:孫悟空(少年期)_かめはめ波(SSR)
--sp_effect_a1_00265

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
SP_01=	156489	;--	如意棒を伸ばして敵に接近　手前
SP_02=	156491	;--	如意棒を伸ばして敵に接近　奥
SP_03=	156492	;--	格闘　手前
SP_04=	156494	;--	格闘　奥
SP_05=	156495	;--	気を溜める
SP_06=	156497	;--	気を放つ
SP_07=	156499	;--	気弾が敵に迫る　手前
SP_08=	156500	;--	気弾が敵に迫る　奥
SP_09=	156501	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	156490	;--	如意棒を伸ばして敵に接近　手前	(敵)
SP_02x=	156491	;--	如意棒を伸ばして敵に接近　奥	
SP_03x=	156493	;--	格闘　手前	(敵)
SP_04x=	156494	;--	格闘　奥	
SP_05x=	156496	;--	気を溜める	(敵)
SP_06x=	156498	;--	気を放つ	(敵)
SP_07x=	156499	;--	気弾が敵に迫る　手前	
SP_08x=	156500	;--	気弾が敵に迫る　奥	
SP_09x=	156501	;--	フィニッシュ	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(1.0);


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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 如意棒を伸ばして敵に接近
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
access_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access_f, 0, 0, 0 );
setEffMoveKey( spep_0 +56, access_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access_f, 1.0, 1.0 );
setEffScaleKey( spep_0 +56, access_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access_f, 0 );
setEffRotateKey( spep_0 +56, access_f, 0 );
setEffAlphaKey( spep_0 + 0, access_f, 255 );
setEffAlphaKey( spep_0 + 54, access_f, 255 );
setEffAlphaKey( spep_0 + 55, access_f, 255 );
setEffAlphaKey( spep_0 +56, access_f, 0 );

-- ** エフェクト等 ** --
access_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access_b, 0, 0, 0 );
setEffMoveKey( spep_0 +56, access_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access_b, 1.0, 1.0 );
setEffScaleKey( spep_0 +56, access_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access_b, 0 );
setEffRotateKey( spep_0 +56, access_b, 0 );
setEffAlphaKey( spep_0 + 0, access_b, 255 );
setEffAlphaKey( spep_0 + 54, access_b, 255 );
setEffAlphaKey( spep_0 + 55, access_b, 255 );
setEffAlphaKey( spep_0 +56, access_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 0, 1, 258.9, 207.4 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 258.9, 207.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, 258.9, 207.1 , 0 );
setMoveKey( spep_0-3 + 5, 1, 258.9, 207.1 , 0 );
setMoveKey( spep_0-3 + 6, 1, 258.8, 206.7 , 0 );
setMoveKey( spep_0-3 + 7, 1, 258.8, 206.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, 258.7, 206.1 , 0 );
setMoveKey( spep_0-3 + 9, 1, 258.7, 206.1 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.5, 205.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, 258.2, 204.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 257.8, 203.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 257.2, 201.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 256.5, 200 , 0 );
setMoveKey( spep_0-3 + 20, 1, 255.6, 198 , 0 );
setMoveKey( spep_0-3 + 22, 1, 254.5, 195.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 253.3, 193.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 251.8, 190.3 , 0 );
setMoveKey( spep_0-3 + 28, 1, 250.1, 187.1 , 0 );
setMoveKey( spep_0-3 + 30, 1, 248.1, 183.6 , 0 );
setMoveKey( spep_0-3 + 32, 1, 245.9, 179.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.66 );
--setScaleKey( spep_0-3 + 2, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 4, 1, 0.66, 0.67 );
setScaleKey( spep_0-3 + 5, 1, 0.66, 0.67 );
setScaleKey( spep_0-3 + 6, 1, 0.67, 0.68 );
setScaleKey( spep_0-3 + 7, 1, 0.67, 0.68 );
setScaleKey( spep_0-3 + 8, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 9, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 22, 1, 0.87, 0.86 );
setScaleKey( spep_0-3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 26, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 28, 1, 0.98, 0.98 );
setScaleKey( spep_0-3 + 30, 1, 1.03, 1.02 );
setScaleKey( spep_0-3 + 32, 1, 1.07, 1.06 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--如意棒に乗って
SE001 = playSe( spep_0 + 2, 1117 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 79 );
SE002 = playSe( spep_0 + 2, 63 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 62 );
SE003 = playSe( spep_0 + 2, 44 );
setSeVolumeByWorkId( spep_0 + 2, SE003, 78 );
SE004 = playSe( spep_0 + 2, 1116 );
setSeVolumeByWorkId( spep_0 + 2, SE004, 84 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 245.9, 179.7 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.07, 1.06 );
    setRotateKey( SP_dodge + 9, 1, 0 );

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
setMoveKey( spep_0-3 + 34, 1, 243.3, 175.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 240.5, 170.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 237.3, 165.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 233.7, 160.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, 229.7, 154.1 , 0 );
setMoveKey( spep_0-3 + 44, 1, 225.3, 147.6 , 0 );
setMoveKey( spep_0-3 + 46, 1, 220.4, 140.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 215, 132.7 , 0 );
setMoveKey( spep_0-3 + 50, 1, 209.1, 124.3 , 0 );
setMoveKey( spep_0-3 + 52, 1, 202.5, 115.1 , 0 );
setMoveKey( spep_0-3 + 54, 1, 195.1, 105.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 187, 94.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 177.9, 82.3 , 0 );

setScaleKey( spep_0-3 + 34, 1, 1.12, 1.11 );
setScaleKey( spep_0-3 + 36, 1, 1.17, 1.16 );
setScaleKey( spep_0-3 + 38, 1, 1.22, 1.21 );
setScaleKey( spep_0-3 + 40, 1, 1.28, 1.27 );
setScaleKey( spep_0-3 + 42, 1, 1.33, 1.32 );
setScaleKey( spep_0-3 + 44, 1, 1.39, 1.38 );
setScaleKey( spep_0-3 + 46, 1, 1.45, 1.44 );
setScaleKey( spep_0-3 + 48, 1, 1.51, 1.5 );
setScaleKey( spep_0-3 + 50, 1, 1.57, 1.56 );
setScaleKey( spep_0-3 + 52, 1, 1.64, 1.63 );
setScaleKey( spep_0-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 56, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 58, 1, 1.84, 1.84 );

setRotateKey( spep_0-3 + 58, 1, 0 );

--SE
stopSe( spep_0 + 56, SE001, 10 );
stopSe( spep_0 + 56, SE002, 10 );
stopSe( spep_0 + 56, SE003, 10 );
stopSe( spep_0 + 26, SE004, 18 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 +116, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 +116, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 +116, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 114, fighting_f, 255 );
setEffAlphaKey( spep_1 + 115, fighting_f, 255 );
setEffAlphaKey( spep_1 +116, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 +116, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 +116, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 +116, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 114, fighting_b, 255 );
setEffAlphaKey( spep_1 + 115, fighting_b, 255 );
setEffAlphaKey( spep_1 +116, fighting_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-5 + 10,  906, 8, 0x100, -1, 0, 0,0 );
setEffShake( spep_1-5 + 10, shuchusen1, 8, 20 );
setEffMoveKey( spep_1-5 + 10, shuchusen1, 0,0 , 0 );
setEffMoveKey( spep_1-5 + 18, shuchusen1, 0,0 , 0 );

setEffScaleKey( spep_1-5 + 10, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_1-5 + 18, shuchusen1, 1.12, 1.12 );

setEffRotateKey( spep_1-5 + 10, shuchusen1, 180 );
setEffRotateKey( spep_1-5 + 18, shuchusen1, 180 );

setEffAlphaKey( spep_1-5 +10, shuchusen1, 255 );
setEffAlphaKey( spep_1-5 + 8, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 34,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 34, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 34, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 44, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 34, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 44, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 44, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 34, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 44, shuchusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-1 + 4,  10020, 30, 0x100, -1, 0, -60.8, 257.4, 1000 );--バキッ
setEffShake( spep_1-1 + 4, ctbaki, 30, 10 );
setEffMoveKey( spep_1-1 + 4, ctbaki, -60.8, 257.4 , 0 );
setEffMoveKey( spep_1-1 + 6, ctbaki, -63.1, 270.5 , 0 );
setEffMoveKey( spep_1-1 + 8, ctbaki, -37.8, 277 , 0 );
setEffMoveKey( spep_1-1 + 10, ctbaki, -72.8, 246.3 , 0 );
setEffMoveKey( spep_1-1 + 12, ctbaki, -51.6, 267.4 , 0 );
setEffMoveKey( spep_1-1 + 14, ctbaki, -72.1, 264.8 , 0 );
setEffMoveKey( spep_1-1 + 16, ctbaki, -67.7, 241.2 , 0 );
setEffMoveKey( spep_1-1 + 18, ctbaki, -56.3, 240.2 , 0 );
setEffMoveKey( spep_1-1 + 20, ctbaki, -44.8, 272.2 , 0 );
setEffMoveKey( spep_1-1 + 22, ctbaki, -39.2, 259.3 , 0 );
setEffMoveKey( spep_1-1 + 24, ctbaki, -33.5, 246.4 , 0 );
setEffMoveKey( spep_1-1 + 26, ctbaki, -42.6, 253.4 , 0 );
setEffMoveKey( spep_1-1 + 28, ctbaki, -51.6, 260.3 , 0 );
setEffMoveKey( spep_1-1 + 30, ctbaki, -53.9, 259.9 , 0 );
setEffMoveKey( spep_1-1 + 32, ctbaki, -60.8, 258.3 , 0 );
setEffMoveKey( spep_1-1 + 34, ctbaki, -60.9, 258.5 , 0 );

--setEffScaleKey( spep_1-2 + 4, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_1-1 + 4, ctbaki, 0.92, 0.96 );
setEffScaleKey( spep_1-1 + 8, ctbaki, 1.83, 1.9 );
setEffScaleKey( spep_1-1 + 28, ctbaki, 1.83, 1.9 );
setEffScaleKey( spep_1-1 + 30, ctbaki, 2.78, 2.83 );
setEffScaleKey( spep_1-1 + 32, ctbaki, 3.73, 3.75 );
setEffScaleKey( spep_1-1 + 34, ctbaki, 4.68, 4.68 );

setEffRotateKey( spep_1-1 + 4, ctbaki, 1.8 );
setEffRotateKey( spep_1-1 + 6, ctbaki, 2 );
setEffRotateKey( spep_1-1 + 34, ctbaki,2 );

setEffAlphaKey( spep_1-1 + 4, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 28, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 30, ctbaki, 170 );
setEffAlphaKey( spep_1-1 + 32, ctbaki, 85 );
setEffAlphaKey( spep_1-1 + 33, ctbaki, 0 );
setEffAlphaKey( spep_1-1 + 34, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1-2 + 72,  10018, 30, 0x100, -1, 0, -15.8, 258.4 );--ドゴォンッ
setEffShake( spep_1-2 + 72, ctdogon, 30, 10 );
setEffMoveKey( spep_1-2 + 72, ctdogon, -15.8, 258.4 , 0 );
setEffMoveKey( spep_1-2 + 74, ctdogon, -35.2, 301.8 , 0 );
setEffMoveKey( spep_1-2 + 76, ctdogon, -18.7, 350.4 , 0 );
setEffMoveKey( spep_1-2 + 78, ctdogon, -45.6, 297.3 , 0 );
setEffMoveKey( spep_1-2 + 80, ctdogon, -30.5, 332.5 , 0 );
setEffMoveKey( spep_1-2 + 82, ctdogon, -53.5, 319.6 , 0 );
setEffMoveKey( spep_1-2 + 84, ctdogon, -37.1, 293.8 , 0 );
setEffMoveKey( spep_1-2 + 86, ctdogon, -23.1, 298 , 0 );
setEffMoveKey( spep_1-2 + 88, ctdogon, -24.6, 341.4 , 0 );
setEffMoveKey( spep_1-2 + 90, ctdogon, -11.8, 328.8 , 0 );
setEffMoveKey( spep_1-2 + 92, ctdogon, 1, 316.1 , 0 );
setEffMoveKey( spep_1-2 + 94, ctdogon, -13.1, 320.1 , 0 );
setEffMoveKey( spep_1-2 + 96, ctdogon, -27.1, 324 , 0 );
setEffMoveKey( spep_1-2 + 98, ctdogon, -40.1, 350.7 , 0 );
setEffMoveKey( spep_1-2 + 100, ctdogon, -58.2, 373.9 , 0 );
setEffMoveKey( spep_1-2 + 102, ctdogon, -68.9, 402.5 , 0 );

setEffScaleKey( spep_1-2 + 72, ctdogon, 0.01, 0.02 );
setEffScaleKey( spep_1-2 + 74, ctdogon, 1.17, 1.22 );
setEffScaleKey( spep_1-2 + 76, ctdogon, 2.33, 2.43 );
setEffScaleKey( spep_1-2 + 96, ctdogon, 2.33, 2.43 );
setEffScaleKey( spep_1-2 + 98, ctdogon, 3.55, 3.62 );
setEffScaleKey( spep_1-2 + 100, ctdogon, 4.77, 4.8 );
setEffScaleKey( spep_1-2 + 102, ctdogon, 5.98, 5.98 );

setEffRotateKey( spep_1-2 + 72, ctdogon, -33.7 );
setEffRotateKey( spep_1-2 + 74, ctdogon, -33.8 );
setEffRotateKey( spep_1-2 + 102, ctdogon, -33.8 );

setEffAlphaKey( spep_1-2 + 72, ctdogon, 255 );
setEffAlphaKey( spep_1-2 + 96, ctdogon, 255 );
setEffAlphaKey( spep_1-2 + 98, ctdogon, 170 );
setEffAlphaKey( spep_1-2 + 100, ctdogon, 85 );
setEffAlphaKey( spep_1-2 + 102, ctdogon, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 118, 1,0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 6, 1, 106 );
changeAnime( spep_1-3 + 34, 1, 108 );
changeAnime( spep_1-3 + 74, 1, 5 );

setMoveKey( spep_1 + 0, 1, 101.2, 46.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 70.1, 38.7 , 0 );
setMoveKey( spep_1-3 + 5, 1, 38.9, 30.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, 6.5, 19.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, -2.9, 27.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, -1.2, 7.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, -21, 12.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, -23.9, 30.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, -11.7, 34.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, -13.7, 27 , 0 );
setMoveKey( spep_1-3 + 20, 1, -11.9, 29.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, -3.9, 29.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, -1.3, 35.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 0.6, 38 , 0 );
setMoveKey( spep_1-3 + 28, 1, 2.5, 40.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 10.3, 43.4 , 0 );
setMoveKey( spep_1-3 + 33, 1, 18.1, 46 , 0 );
setMoveKey( spep_1-3 + 34, 1, 86.9, 35 , 0 );
setMoveKey( spep_1-3 + 36, 1, 63.1, 19 , 0 );
setMoveKey( spep_1-3 + 38, 1, 67.7, 29 , 0 );
setMoveKey( spep_1-3 + 40, 1, 47.6, 20.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 34.6, 30.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 25.4, 25.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, 37.1, 33.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 36.6, 35.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 46.1, 33.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 49.5, 25.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 50.5, 23.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 51.6, 25.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 52.6, 27.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 54.5, 27.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 56.4, 27.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 58.2, 27.3 , 0 );
setMoveKey( spep_1-3 + 66, 1, 60.1, 27.3 , 0 );
setMoveKey( spep_1-3 + 68, 1, 61.9, 27.3 , 0 );
setMoveKey( spep_1-3 + 70, 1, 63.8, 27.3 , 0 );
setMoveKey( spep_1-3 + 73, 1, 65.7, 27.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 118.2, 138.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 133.7, 147.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, 150.9, 144.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, 137.5, 164.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 157.2, 170.6 , 0 );
setMoveKey( spep_1-3 + 84, 1, 145.4, 154.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, 137.9, 165.1 , 0 );
setMoveKey( spep_1-3 + 88, 1, 150.5, 158.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 159.9, 157.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 154.7, 158.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 149.6, 158.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 154.2, 161.8 , 0 );
setMoveKey( spep_1-3 + 98, 1, 159, 164.8 , 0 );
setMoveKey( spep_1-3 + 100, 1, 159.8, 165 , 0 );
setMoveKey( spep_1-3 + 102, 1, 160.9, 165.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 167.7, 165.2 , 0 );
setMoveKey( spep_1-3 + 106, 1, 174.8, 165.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 177, 171.3 , 0 );
setMoveKey( spep_1-3 + 110, 1, 179.4, 177.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 187.2, 178.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, 195.1, 180 , 0 );
setMoveKey( spep_1-3 + 116, 1, 200.1, 184.5 , 0 );
setMoveKey( spep_1-1 + 118, 1, 205.1, 189 , 0 );

a=0.8;
b=0.2;

setScaleKey( spep_1 + 0, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 5, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 6, 1, 1.79+a, 1.79+a );
setScaleKey( spep_1-3 + 8, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 33, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 34, 1, 1.75+a+b, 1.75+a+b );
setScaleKey( spep_1-3 + 73, 1, 1.75+a+b, 1.75+a+b );
setScaleKey( spep_1-3 + 74, 1, 1.71+a, 1.71+a );
setScaleKey( spep_1-3 + 76, 1, 1.44+a, 1.44+a );
setScaleKey( spep_1-3 + 78, 1, 1.36+a, 1.35+a );
setScaleKey( spep_1-3 + 80, 1, 1.3+a, 1.29+a );
setScaleKey( spep_1-3 + 82, 1, 1.25+a, 1.24+a );
setScaleKey( spep_1-3 + 84, 1, 1.21+a, 1.2+a );
setScaleKey( spep_1-3 + 86, 1, 1.16+a, 1.15+a );
setScaleKey( spep_1-3 + 88, 1, 1.12+a, 1.11+a );
setScaleKey( spep_1-3 + 90, 1, 1.07+a, 1.06+a );
setScaleKey( spep_1-3 + 92, 1, 1.03+a, 1.01+a );
setScaleKey( spep_1-3 + 94, 1, 0.98+a, 0.97+a );
setScaleKey( spep_1-3 + 96, 1, 0.93+a, 0.92+a );
setScaleKey( spep_1-3 + 98, 1, 0.88+a, 0.86+a );
setScaleKey( spep_1-3 + 100, 1, 0.82+a, 0.81+a );
setScaleKey( spep_1-3 + 102, 1, 0.77+a, 0.76+a );
--setScaleKey( spep_1-3 + 104, 1, 0.71+a, 0.7+a );
--setScaleKey( spep_1-3 + 106, 1, 0.65+a, 0.64+a );
--setScaleKey( spep_1-3 + 108, 1, 0.59+a, 0.59+a );
--setScaleKey( spep_1-3 + 110, 1, 0.53, 0.53 );
--setScaleKey( spep_1-3 + 112, 1, 0.47, 0.46 );
--setScaleKey( spep_1-3 + 114, 1, 0.41, 0.4 );
--setScaleKey( spep_1-3 + 116, 1, 0.34, 0.34 );
setScaleKey( spep_1-1 + 118, 1, 0.28, 0.28 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 5, 1, 0 );
setRotateKey( spep_1-3 + 6, 1, -40.9 );
setRotateKey( spep_1-3 + 33, 1, -40.9 );
setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 73, 1, 0 );
setRotateKey( spep_1-3 + 74, 1, 56.2 );
setRotateKey( spep_1-3 + 76, 1, 56.1 );
setRotateKey( spep_1-1 + 118, 1, 56.1 );

--SE
--キック
SE005 = playSe( spep_1 + 4, 1010 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 82 );
SE006 = playSe( spep_1 + 4, 1001 );
setSeVolumeByWorkId( spep_1 + 4, SE006, 68 );

--パンチ
SE007 = playSe( spep_1 + 30, 1189 );
setSeVolumeByWorkId( spep_1 + 30, SE007, 72 );
SE008 = playSe( spep_1 + 36, 1000 );
SE009 = playSe( spep_1 + 36, 1009 );
setSeVolumeByWorkId( spep_1 + 36, SE009, 81 );

--蹴り上げ
SE010 = playSe( spep_1 + 72, 1013 );
setSeVolumeByWorkId( spep_1 + 72, SE010, 89 );
SE011 = playSe( spep_1 + 72, 1010 );
SE012 = playSe( spep_1 + 74, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;
------------------------------------------------------
-- 気を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 +86, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 +86, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 +86, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 86, tame, 255 );
setEffAlphaKey( spep_2 + 87, tame, 0 );
setEffAlphaKey( spep_2 +88, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x102, -1, 0, -130, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  -130,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  -130,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, 1.07, 1.07);

--SE
--かめはめ波溜め
SE013 = playSe( spep_2 + 0, 1131 );
setSeVolumeByWorkId( spep_2 + 0, SE013, 79 );
stopSe( spep_2 + 58, SE013, 22 );
SE014 = playSe( spep_2 + 0, 1132 );
setSeVolumeByWorkId( spep_2 + 0, SE014, 69 );
setTimeStretch( SE014, 0.77, 10, 1 );

--顔カットイン
SE015 = playSe( spep_2 + 12, 1018 );

--白フェード
entryFade( spep_2 + 78, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_3 + 0, SE014, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気を放つ
------------------------------------------------------
---- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 +82, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 +82, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 +82, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 80, beam, 255 );
setEffAlphaKey( spep_4 + 81, beam, 255 );
setEffAlphaKey( spep_4 +82, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-1 + 4,  10012, 30, 0x100, -1, 0, -169.5, 119.1 );--ズオッ
setEffShake( spep_4-1 + 4, ctzuo, 30, 10 );
setEffMoveKey( spep_4-1 + 4, ctzuo, -169.5, 119.1 , 0 );
setEffMoveKey( spep_4-1 + 6, ctzuo, -167.3, 107.2 , 0 );
setEffMoveKey( spep_4-1 + 8, ctzuo, -129.1, 106 , 0 );
setEffMoveKey( spep_4-1 + 10, ctzuo, -149.1, 47.5 , 0 );
setEffMoveKey( spep_4-1 + 12, ctzuo, -138.6, 85.9 , 0 );
setEffMoveKey( spep_4-1 + 14, ctzuo, -160.5, 69.3 , 0 );
setEffMoveKey( spep_4-1 + 16, ctzuo, -139.8, 45.1 , 0 );
setEffMoveKey( spep_4-1 + 18, ctzuo, -126, 51.5 , 0 );
setEffMoveKey( spep_4-1 + 20, ctzuo, -133.9, 95.9 , 0 );
setEffMoveKey( spep_4-1 + 22, ctzuo, -118.9, 84.8 , 0 );
setEffMoveKey( spep_4-1 + 24, ctzuo, -103.9, 73.6 , 0 );
setEffMoveKey( spep_4-1 + 26, ctzuo, -118.9, 75.7 , 0 );
setEffMoveKey( spep_4-1 + 28, ctzuo, -134, 77.7 , 0 );
setEffMoveKey( spep_4-1 + 30, ctzuo, -122.5, 50.8 , 0 );
setEffMoveKey( spep_4-1 + 32, ctzuo, -115.8, 19.7 , 0 );
setEffMoveKey( spep_4-1 + 34, ctzuo, -102.3, -4.9 , 0 );

setEffScaleKey( spep_4-1 + 4, ctzuo, 0.01, 0.01 );
setEffScaleKey( spep_4-1 + 6, ctzuo, 0.78, 0.82 );
setEffScaleKey( spep_4-1 + 8, ctzuo, 1.55, 1.62 );
setEffScaleKey( spep_4-1 + 28, ctzuo, 1.55, 1.62 );
setEffScaleKey( spep_4-1 + 30, ctzuo, 2.36, 2.41 );
setEffScaleKey( spep_4-1 + 32, ctzuo, 3.17, 3.2 );
setEffScaleKey( spep_4-1 + 34, ctzuo, 3.98, 3.98 );

setEffRotateKey( spep_4-1 + 4, ctzuo, -41.7 );
setEffRotateKey( spep_4-1 + 6, ctzuo, -41.9 );
setEffRotateKey( spep_4-1 + 34, ctzuo, -41.9 );

setEffAlphaKey( spep_4-1 + 4, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 28, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 30, ctzuo, 170 );
setEffAlphaKey( spep_4-1 + 32, ctzuo, 85 );
setEffAlphaKey( spep_4-1 + 34, ctzuo, 0 );

--SE
--かめはめ波発射
SE017 = playSe( spep_4 + 2, 1027 ,"",0.6 );
SE018 = playSe( spep_4 + 2, 1022 ,"",0.6 );
SE019 = playSe( spep_4 + 32, 1215 ,"",0.6 );

--かめはめ波発射中
SE020 = playSe( spep_4 + 40, 1124 ,"",0.6 );
setSeVolumeByWorkId( spep_4 + 40, SE020, 0 );
setSeVolumeByWorkId( spep_4 + 41, SE020, 2.4 );
setSeVolumeByWorkId( spep_4 + 42, SE020, 4.8 );
setSeVolumeByWorkId( spep_4 + 43, SE020, 7.2 );
setSeVolumeByWorkId( spep_4 + 44, SE020, 9.6 );
setSeVolumeByWorkId( spep_4 + 45, SE020, 12 );
setSeVolumeByWorkId( spep_4 + 46, SE020, 14.4 );
setSeVolumeByWorkId( spep_4 + 47, SE020, 16.8 );
setSeVolumeByWorkId( spep_4 + 48, SE020, 19.2 );
setSeVolumeByWorkId( spep_4 + 49, SE020, 21.6 );
setSeVolumeByWorkId( spep_4 + 50, SE020, 24 );
setSeVolumeByWorkId( spep_4 + 51, SE020, 26.4 );
setSeVolumeByWorkId( spep_4 + 52, SE020, 28.8 );
setSeVolumeByWorkId( spep_4 + 53, SE020, 31.2 );
setSeVolumeByWorkId( spep_4 + 54, SE020, 33.6 );
setSeVolumeByWorkId( spep_4 + 55, SE020, 36 );
setSeVolumeByWorkId( spep_4 + 56, SE020, 38.4 );
setSeVolumeByWorkId( spep_4 + 57, SE020, 40.8 );
setSeVolumeByWorkId( spep_4 + 58, SE020, 43.2 );
setSeVolumeByWorkId( spep_4 + 59, SE020, 45.6 );
setSeVolumeByWorkId( spep_4 + 60, SE020, 48 );
setSeVolumeByWorkId( spep_4 + 61, SE020, 50.4 );
setSeVolumeByWorkId( spep_4 + 62, SE020, 52.8 );
setSeVolumeByWorkId( spep_4 + 63, SE020, 55.2 );
setSeVolumeByWorkId( spep_4 + 64, SE020, 57.6 );
setSeVolumeByWorkId( spep_4 + 65, SE020, 60 );
setSeVolumeByWorkId( spep_4 + 66, SE020, 62.4 );
setSeVolumeByWorkId( spep_4 + 67, SE020, 64.8 );
setSeVolumeByWorkId( spep_4 + 68, SE020, 67.2 );
setSeVolumeByWorkId( spep_4 + 69, SE020, 69.6 );
setSeVolumeByWorkId( spep_4 + 70, SE020, 72 );
setSeVolumeByWorkId( spep_4 + 71, SE020, 74.4 );
setSeVolumeByWorkId( spep_4 + 72, SE020, 76.8 );
setSeVolumeByWorkId( spep_4 + 73, SE020, 79.2 );
setSeVolumeByWorkId( spep_4 + 74, SE020, 81.6 );
setSeVolumeByWorkId( spep_4 + 75, SE020, 84 );
setSeVolumeByWorkId( spep_4 + 76, SE020, 86.4 );
setSeVolumeByWorkId( spep_4 + 77, SE020, 88.8 );
setSeVolumeByWorkId( spep_4 + 78, SE020, 91.2 );
setSeVolumeByWorkId( spep_4 + 79, SE020, 93.6 );
setSeVolumeByWorkId( spep_4 + 80, SE020, 96 );
setSeVolumeByWorkId( spep_4 + 81, SE020, 98.4 );
setSeVolumeByWorkId( spep_4 + 82, SE020, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 84, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 82;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 +56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 +56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 +56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 255 );
setEffAlphaKey( spep_5 +56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 +56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 +56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 +56, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 54, hit_b, 255 );
setEffAlphaKey( spep_5 + 55, hit_b, 255 );
setEffAlphaKey( spep_5 +56, hit_b, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5-2 + 20,  10014, 38, 0x100, -1, 0, 65.2, -242.9 );--ズドドドッ
setEffShake( spep_5-2 + 20, ctzudodo, 38, 10 );
setEffMoveKey( spep_5-2 + 20, ctzudodo, 65.2, -242.9 , 0 );
setEffMoveKey( spep_5-2 + 22, ctzudodo, 68.6, -234.1 , 0 );
setEffMoveKey( spep_5-2 + 24, ctzudodo, 82.8, -224.9 , 0 );
setEffMoveKey( spep_5-2 + 26, ctzudodo, 44.6, -229.1 , 0 );
setEffMoveKey( spep_5-2 + 28, ctzudodo, 53, -271.5 , 0 );
setEffMoveKey( spep_5-2 + 30, ctzudodo, 74.2, -273.6 , 0 );
setEffMoveKey( spep_5-2 + 32, ctzudodo, 95.5, -216.4 , 0 );
setEffMoveKey( spep_5-2 + 34, ctzudodo, 96.2, -229.8 , 0 );
setEffMoveKey( spep_5-2 + 36, ctzudodo, 116.7, -263.1 , 0 );
setEffMoveKey( spep_5-2 + 38, ctzudodo, 89.7, -260.3 , 0 );
setEffMoveKey( spep_5-2 + 40, ctzudodo, 82.8, -237.6 , 0 );
setEffMoveKey( spep_5-2 + 42, ctzudodo, 84.3, -229.8 , 0 );
setEffMoveKey( spep_5-2 + 44, ctzudodo, 65.8, -241.8 , 0 );
setEffMoveKey( spep_5-2 + 46, ctzudodo, 70.8, -236.9 , 0 );
setEffMoveKey( spep_5-2 + 48, ctzudodo, 95.7, -212.1 , 0 );
setEffMoveKey( spep_5-2 + 50, ctzudodo, 86.1, -221.7 , 0 );
setEffMoveKey( spep_5-2 + 52, ctzudodo, 56.6, -251 , 0 );
setEffMoveKey( spep_5-2 + 54, ctzudodo, 57.5, -250.1 , 0 );
setEffMoveKey( spep_5-2 + 56, ctzudodo, 78.2, -229.5 , 0 );
setEffMoveKey( spep_5-2 + 58, ctzudodo, 76.9, -211 , 0 );

setEffScaleKey( spep_5-2 + 20, ctzudodo, 0.01, 0.02 );
setEffScaleKey( spep_5-2 + 22, ctzudodo, 1.1, 1.1 );
setEffScaleKey( spep_5-2 + 24, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_5-2 + 58, ctzudodo, 2.19, 2.19 );

setEffRotateKey( spep_5-2 + 20, ctzudodo, -11.8 );
setEffRotateKey( spep_5-2 + 22, ctzudodo, -5 );
setEffRotateKey( spep_5-2 + 24, ctzudodo, 2 );
setEffRotateKey( spep_5-2 + 58, ctzudodo, 2 );

setEffAlphaKey( spep_5-2 + 20, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 56, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 57, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 58, ctzudodo, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setBlendColor(spep_5 + 30,1,2,0,0,0,0.04);
setBlendColor(spep_5 + 31,1,2,0,0,0,0.08);
setBlendColor(spep_5 + 32,1,2,0,0,0,0.12);
setBlendColor(spep_5 + 33,1,2,0,0,0,0.16);
setBlendColor(spep_5 + 34,1,2,0,0,0,0.2);
setBlendColor(spep_5 + 35,1,2,0,0,0,0.24);
setBlendColor(spep_5 + 36,1,2,0,0,0,0.28);
setBlendColor(spep_5 + 37,1,2,0,0,0,0.32);
setBlendColor(spep_5 + 38,1,2,0,0,0,0.36);
setBlendColor(spep_5 + 39,1,2,0,0,0,0.4);
setBlendColor(spep_5 + 40,1,2,0,0,0,0.44);
setBlendColor(spep_5 + 41,1,2,0,0,0,0.48);
setBlendColor(spep_5 + 42,1,2,0,0,0,0.52);
setBlendColor(spep_5 + 43,1,2,0,0,0,0.56);
setBlendColor(spep_5 + 44,1,2,0,0,0,0.6);
setBlendColor(spep_5 + 45,1,2,0,0,0,0.64);
setBlendColor(spep_5 + 46,1,2,0,0,0,0.68);
setBlendColor(spep_5 + 47,1,2,0,0,0,0.72);
setBlendColor(spep_5 + 48,1,2,0,0,0,0.76);
setBlendColor(spep_5 + 49,1,2,0,0,0,0.8);
setBlendColor(spep_5 + 50,1,2,0,0,0,0.84);
setBlendColor(spep_5 + 51,1,2,0,0,0,0.88);
setBlendColor(spep_5 + 52,1,2,0,0,0,0.92);
setBlendColor(spep_5 + 53,1,2,0,0,0,0.96);
setBlendColor(spep_5 + 54,1,2,0,0,0,1);

setMoveKey( spep_5 + 0, 1, 77.2, 49.6 , 0 );
setMoveKey( spep_5 + 2, 1, 82.2, 59 , 0 );
setMoveKey( spep_5 + 4, 1, 82.8, 58 , 0 );
setMoveKey( spep_5 + 6, 1, 89.3, 67.4 , 0 );
setMoveKey( spep_5 + 8, 1, 89, 68.3 , 0 );
setMoveKey( spep_5 + 10, 1, 99.1, 79.8 , 0 );
setMoveKey( spep_5 + 12, 1, 95.8, 79.8 , 0 );
setMoveKey( spep_5 + 14, 1, 106.6, 88.5 , 0 );
setMoveKey( spep_5 + 16, 1, 104.2, 87.1 , 0 );
setMoveKey( spep_5 + 18, 1, 116, 97.2 , 0 );
setMoveKey( spep_5 + 20, 1, 110.6, 96.5 , 0 );
setMoveKey( spep_5 + 22, 1, 123.5, 107.1 , 0 );
setMoveKey( spep_5 + 24, 1, 120.5, 114.1 , 0 );
setMoveKey( spep_5 + 26, 1, 131.1, 111.2 , 0 );
setMoveKey( spep_5 + 28, 1, 128.8, 119.9 , 0 );
setMoveKey( spep_5 + 30, 1, 138.8, 130.5 , 0 );
setMoveKey( spep_5 + 32, 1, 139.2, 125.3 , 0 );
setMoveKey( spep_5 + 34, 1, 148.1, 141.9 , 0 );
setMoveKey( spep_5 + 36, 1, 144.3, 134.9 , 0 );
setMoveKey( spep_5 + 38, 1, 155.2, 151.7 , 0 );
setMoveKey( spep_5 + 40, 1, 154.2, 141.9 , 0 );
setMoveKey( spep_5 + 42, 1, 164.5, 161.3 , 0 );
setMoveKey( spep_5 + 44, 1, 161.2, 156.1 , 0 );
setMoveKey( spep_5 + 46, 1, 172.4, 168.1 , 0 );
setMoveKey( spep_5 + 48, 1, 170, 164.1 , 0 );
setMoveKey( spep_5 + 50, 1, 180.2, 179.9 , 0 );
setMoveKey( spep_5 + 52, 1, 177.5, 170.8 , 0 );
setMoveKey( spep_5 + 54, 1, 186.9, 189.5 , 0 );
setMoveKey( spep_5 -1+ 56, 1, 187.3, 180 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 4, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 6, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 8, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 10, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 12, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 16, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 20, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 40, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 42, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 44, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 48, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5-1 + 56, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, -46 );
setRotateKey( spep_5 -1+ 56, 1, -46 );

--SE
--かめはめ波発射中
SE021 = playSe( spep_5 + 0, 1145 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE021, 5 );
setSeVolumeByWorkId( spep_5 + 2, SE021, 10 );
setSeVolumeByWorkId( spep_5 + 3, SE021, 15 );
setSeVolumeByWorkId( spep_5 + 4, SE021, 20 );
setSeVolumeByWorkId( spep_5 + 5, SE021, 25 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 30 );
setSeVolumeByWorkId( spep_5 + 7, SE021, 35 );
setSeVolumeByWorkId( spep_5 + 8, SE021, 40 );
setSeVolumeByWorkId( spep_5 + 9, SE021, 45 );
setSeVolumeByWorkId( spep_5 + 10, SE021, 50 );
setSeVolumeByWorkId( spep_5 + 11, SE021, 55 );
setSeVolumeByWorkId( spep_5 + 12, SE021, 60 );
setSeVolumeByWorkId( spep_5 + 13, SE021, 65 );
setSeVolumeByWorkId( spep_5 + 14, SE021, 70 );
setSeVolumeByWorkId( spep_5 + 15, SE021, 75 );
setSeVolumeByWorkId( spep_5 + 16, SE021, 80 );

--白フェード
entryFade( spep_5 + 50, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setBlendColor(spep_6 + 0,1,2,0,0,0,0);
setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.18, 0.18 );
--setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
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
setRotateKey( spep_6-3 + 4, 1, 240 );
setRotateKey( spep_6-3  + 6, 1, 405 );
setRotateKey( spep_6-3  + 8, 1, 600 );
setRotateKey( spep_6-3  + 10, 1, 825 );
setRotateKey( spep_6-3  + 12, 1, 1080 );
setRotateKey( spep_6-3 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_6 + 0, SP_09,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 110, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 110, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga, 0 );
setEffRotateKey( spep_6 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_6 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenga2, 255 );

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

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--かめはめ波発射中
stopSe( spep_6 + 0, SE019, 16 );
stopSe( spep_6 + 0, SE020, 14 );

playSe( spep_6 + 0, 1023 );--爆発
playSe( spep_6 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 如意棒を伸ばして敵に接近
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
access_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access_f, 0, 0, 0 );
setEffMoveKey( spep_0 +56, access_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access_f, -1.0, 1.0 );
setEffScaleKey( spep_0 +56, access_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access_f, 0 );
setEffRotateKey( spep_0 +56, access_f, 0 );
setEffAlphaKey( spep_0 + 0, access_f, 255 );
setEffAlphaKey( spep_0 + 54, access_f, 255 );
setEffAlphaKey( spep_0 + 55, access_f, 255 );
setEffAlphaKey( spep_0 +56, access_f, 0 );

-- ** エフェクト等 ** --
access_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access_b, 0, 0, 0 );
setEffMoveKey( spep_0 +56, access_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access_b, 1.0, 1.0 );
setEffScaleKey( spep_0 +56, access_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access_b, 0 );
setEffRotateKey( spep_0 +56, access_b, 0 );
setEffAlphaKey( spep_0 + 0, access_b, 255 );
setEffAlphaKey( spep_0 + 54, access_b, 255 );
setEffAlphaKey( spep_0 + 55, access_b, 255 );
setEffAlphaKey( spep_0 +56, access_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 0, 1, 258.9, 207.4 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 258.9, 207.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, 258.9, 207.1 , 0 );
setMoveKey( spep_0-3 + 5, 1, 258.9, 207.1 , 0 );
setMoveKey( spep_0-3 + 6, 1, 258.8, 206.7 , 0 );
setMoveKey( spep_0-3 + 7, 1, 258.8, 206.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, 258.7, 206.1 , 0 );
setMoveKey( spep_0-3 + 9, 1, 258.7, 206.1 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.5, 205.3 , 0 );
setMoveKey( spep_0-3 + 12, 1, 258.2, 204.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 257.8, 203.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 257.2, 201.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 256.5, 200 , 0 );
setMoveKey( spep_0-3 + 20, 1, 255.6, 198 , 0 );
setMoveKey( spep_0-3 + 22, 1, 254.5, 195.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 253.3, 193.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 251.8, 190.3 , 0 );
setMoveKey( spep_0-3 + 28, 1, 250.1, 187.1 , 0 );
setMoveKey( spep_0-3 + 30, 1, 248.1, 183.6 , 0 );
setMoveKey( spep_0-3 + 32, 1, 245.9, 179.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.66 );
--setScaleKey( spep_0-3 + 2, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 4, 1, 0.66, 0.67 );
setScaleKey( spep_0-3 + 5, 1, 0.66, 0.67 );
setScaleKey( spep_0-3 + 6, 1, 0.67, 0.68 );
setScaleKey( spep_0-3 + 7, 1, 0.67, 0.68 );
setScaleKey( spep_0-3 + 8, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 9, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 22, 1, 0.87, 0.86 );
setScaleKey( spep_0-3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 26, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 28, 1, 0.98, 0.98 );
setScaleKey( spep_0-3 + 30, 1, 1.03, 1.02 );
setScaleKey( spep_0-3 + 32, 1, 1.07, 1.06 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--如意棒に乗って
SE001 = playSe( spep_0 + 2, 1117 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 79 );
SE002 = playSe( spep_0 + 2, 63 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 62 );
SE003 = playSe( spep_0 + 2, 44 );
setSeVolumeByWorkId( spep_0 + 2, SE003, 78 );
SE004 = playSe( spep_0 + 2, 1116 );
setSeVolumeByWorkId( spep_0 + 2, SE004, 84 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 245.9, 179.7 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.07, 1.06 );
    setRotateKey( SP_dodge + 9, 1, 0 );

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
setMoveKey( spep_0-3 + 34, 1, 243.3, 175.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 240.5, 170.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 237.3, 165.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 233.7, 160.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, 229.7, 154.1 , 0 );
setMoveKey( spep_0-3 + 44, 1, 225.3, 147.6 , 0 );
setMoveKey( spep_0-3 + 46, 1, 220.4, 140.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 215, 132.7 , 0 );
setMoveKey( spep_0-3 + 50, 1, 209.1, 124.3 , 0 );
setMoveKey( spep_0-3 + 52, 1, 202.5, 115.1 , 0 );
setMoveKey( spep_0-3 + 54, 1, 195.1, 105.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 187, 94.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 177.9, 82.3 , 0 );

setScaleKey( spep_0-3 + 34, 1, 1.12, 1.11 );
setScaleKey( spep_0-3 + 36, 1, 1.17, 1.16 );
setScaleKey( spep_0-3 + 38, 1, 1.22, 1.21 );
setScaleKey( spep_0-3 + 40, 1, 1.28, 1.27 );
setScaleKey( spep_0-3 + 42, 1, 1.33, 1.32 );
setScaleKey( spep_0-3 + 44, 1, 1.39, 1.38 );
setScaleKey( spep_0-3 + 46, 1, 1.45, 1.44 );
setScaleKey( spep_0-3 + 48, 1, 1.51, 1.5 );
setScaleKey( spep_0-3 + 50, 1, 1.57, 1.56 );
setScaleKey( spep_0-3 + 52, 1, 1.64, 1.63 );
setScaleKey( spep_0-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 56, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 58, 1, 1.84, 1.84 );

setRotateKey( spep_0-3 + 58, 1, 0 );

--SE
stopSe( spep_0 + 56, SE001, 10 );
stopSe( spep_0 + 56, SE002, 10 );
stopSe( spep_0 + 56, SE003, 10 );
stopSe( spep_0 + 26, SE004, 18 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 +116, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 +116, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 +116, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 114, fighting_f, 255 );
setEffAlphaKey( spep_1 + 115, fighting_f, 255 );
setEffAlphaKey( spep_1 +116, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 +116, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 +116, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 +116, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 114, fighting_b, 255 );
setEffAlphaKey( spep_1 + 115, fighting_b, 255 );
setEffAlphaKey( spep_1 +116, fighting_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-5 + 10,  906, 8, 0x100, -1, 0, 0,0 );
setEffShake( spep_1-5 + 10, shuchusen1, 8, 20 );
setEffMoveKey( spep_1-5 + 10, shuchusen1, 0,0 , 0 );
setEffMoveKey( spep_1-5 + 18, shuchusen1, 0,0 , 0 );

setEffScaleKey( spep_1-5 + 10, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_1-5 + 18, shuchusen1, 1.12, 1.12 );

setEffRotateKey( spep_1-5 + 10, shuchusen1, 180 );
setEffRotateKey( spep_1-5 + 18, shuchusen1, 180 );

setEffAlphaKey( spep_1-5 +10, shuchusen1, 255 );
setEffAlphaKey( spep_1-5 + 8, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 34,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 34, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 34, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 44, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 34, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 44, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 44, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 34, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 44, shuchusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-1 + 4,  10020, 30, 0x100, -1, 0, -60.8, 257.4, 1000 );--バキッ
setEffShake( spep_1-1 + 4, ctbaki, 30, 10 );
setEffMoveKey( spep_1-1 + 4, ctbaki, -60.8, 257.4 , 0 );
setEffMoveKey( spep_1-1 + 6, ctbaki, -63.1, 270.5 , 0 );
setEffMoveKey( spep_1-1 + 8, ctbaki, -37.8, 277 , 0 );
setEffMoveKey( spep_1-1 + 10, ctbaki, -72.8, 246.3 , 0 );
setEffMoveKey( spep_1-1 + 12, ctbaki, -51.6, 267.4 , 0 );
setEffMoveKey( spep_1-1 + 14, ctbaki, -72.1, 264.8 , 0 );
setEffMoveKey( spep_1-1 + 16, ctbaki, -67.7, 241.2 , 0 );
setEffMoveKey( spep_1-1 + 18, ctbaki, -56.3, 240.2 , 0 );
setEffMoveKey( spep_1-1 + 20, ctbaki, -44.8, 272.2 , 0 );
setEffMoveKey( spep_1-1 + 22, ctbaki, -39.2, 259.3 , 0 );
setEffMoveKey( spep_1-1 + 24, ctbaki, -33.5, 246.4 , 0 );
setEffMoveKey( spep_1-1 + 26, ctbaki, -42.6, 253.4 , 0 );
setEffMoveKey( spep_1-1 + 28, ctbaki, -51.6, 260.3 , 0 );
setEffMoveKey( spep_1-1 + 30, ctbaki, -53.9, 259.9 , 0 );
setEffMoveKey( spep_1-1 + 32, ctbaki, -60.8, 258.3 , 0 );
setEffMoveKey( spep_1-1 + 34, ctbaki, -60.9, 258.5 , 0 );

--setEffScaleKey( spep_1-2 + 4, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_1-1 + 4, ctbaki, 0.92, 0.96 );
setEffScaleKey( spep_1-1 + 8, ctbaki, 1.83, 1.9 );
setEffScaleKey( spep_1-1 + 28, ctbaki, 1.83, 1.9 );
setEffScaleKey( spep_1-1 + 30, ctbaki, 2.78, 2.83 );
setEffScaleKey( spep_1-1 + 32, ctbaki, 3.73, 3.75 );
setEffScaleKey( spep_1-1 + 34, ctbaki, 4.68, 4.68 );

setEffRotateKey( spep_1-1 + 4, ctbaki, -41.8 );
setEffRotateKey( spep_1-1 + 6, ctbaki, -42 );
setEffRotateKey( spep_1-1 + 34, ctbaki, -42 );

setEffAlphaKey( spep_1-1 + 4, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 28, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 30, ctbaki, 170 );
setEffAlphaKey( spep_1-1 + 32, ctbaki, 85 );
setEffAlphaKey( spep_1-1 + 33, ctbaki, 0 );
setEffAlphaKey( spep_1-1 + 34, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1-2 + 72,  10018, 30, 0x100, -1, 0, -15.8, 258.4 );--ドゴォンッ
setEffShake( spep_1-2 + 72, ctdogon, 30, 10 );
setEffMoveKey( spep_1-2 + 72, ctdogon, -15.8, 258.4 , 0 );
setEffMoveKey( spep_1-2 + 74, ctdogon, -35.2, 301.8 , 0 );
setEffMoveKey( spep_1-2 + 76, ctdogon, -18.7, 350.4 , 0 );
setEffMoveKey( spep_1-2 + 78, ctdogon, -45.6, 297.3 , 0 );
setEffMoveKey( spep_1-2 + 80, ctdogon, -30.5, 332.5 , 0 );
setEffMoveKey( spep_1-2 + 82, ctdogon, -53.5, 319.6 , 0 );
setEffMoveKey( spep_1-2 + 84, ctdogon, -37.1, 293.8 , 0 );
setEffMoveKey( spep_1-2 + 86, ctdogon, -23.1, 298 , 0 );
setEffMoveKey( spep_1-2 + 88, ctdogon, -24.6, 341.4 , 0 );
setEffMoveKey( spep_1-2 + 90, ctdogon, -11.8, 328.8 , 0 );
setEffMoveKey( spep_1-2 + 92, ctdogon, 1, 316.1 , 0 );
setEffMoveKey( spep_1-2 + 94, ctdogon, -13.1, 320.1 , 0 );
setEffMoveKey( spep_1-2 + 96, ctdogon, -27.1, 324 , 0 );
setEffMoveKey( spep_1-2 + 98, ctdogon, -40.1, 350.7 , 0 );
setEffMoveKey( spep_1-2 + 100, ctdogon, -58.2, 373.9 , 0 );
setEffMoveKey( spep_1-2 + 102, ctdogon, -68.9, 402.5 , 0 );

setEffScaleKey( spep_1-2 + 72, ctdogon, 0.01, 0.02 );
setEffScaleKey( spep_1-2 + 74, ctdogon, 1.17, 1.22 );
setEffScaleKey( spep_1-2 + 76, ctdogon, 2.33, 2.43 );
setEffScaleKey( spep_1-2 + 96, ctdogon, 2.33, 2.43 );
setEffScaleKey( spep_1-2 + 98, ctdogon, 3.55, 3.62 );
setEffScaleKey( spep_1-2 + 100, ctdogon, 4.77, 4.8 );
setEffScaleKey( spep_1-2 + 102, ctdogon, 5.98, 5.98 );

setEffRotateKey( spep_1-2 + 72, ctdogon, -33.7 );
setEffRotateKey( spep_1-2 + 74, ctdogon, -33.8 );
setEffRotateKey( spep_1-2 + 102, ctdogon, -33.8 );

setEffAlphaKey( spep_1-2 + 72, ctdogon, 255 );
setEffAlphaKey( spep_1-2 + 96, ctdogon, 255 );
setEffAlphaKey( spep_1-2 + 98, ctdogon, 170 );
setEffAlphaKey( spep_1-2 + 100, ctdogon, 85 );
setEffAlphaKey( spep_1-2 + 102, ctdogon, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 118, 1,0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 6, 1, 106 );
changeAnime( spep_1-3 + 34, 1, 108 );
changeAnime( spep_1-3 + 74, 1, 5 );

setMoveKey( spep_1 + 0, 1, 101.2, 46.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 70.1, 38.7 , 0 );
setMoveKey( spep_1-3 + 5, 1, 38.9, 30.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, 6.5, 19.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, -2.9, 27.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, -1.2, 7.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, -21, 12.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, -23.9, 30.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, -11.7, 34.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, -13.7, 27 , 0 );
setMoveKey( spep_1-3 + 20, 1, -11.9, 29.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, -3.9, 29.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, -1.3, 35.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 0.6, 38 , 0 );
setMoveKey( spep_1-3 + 28, 1, 2.5, 40.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 10.3, 43.4 , 0 );
setMoveKey( spep_1-3 + 33, 1, 18.1, 46 , 0 );
setMoveKey( spep_1-3 + 34, 1, 86.9, 35 , 0 );
setMoveKey( spep_1-3 + 36, 1, 63.1, 19 , 0 );
setMoveKey( spep_1-3 + 38, 1, 67.7, 29 , 0 );
setMoveKey( spep_1-3 + 40, 1, 47.6, 20.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 34.6, 30.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 25.4, 25.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, 37.1, 33.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 36.6, 35.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 46.1, 33.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 49.5, 25.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 50.5, 23.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 51.6, 25.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 52.6, 27.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 54.5, 27.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 56.4, 27.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 58.2, 27.3 , 0 );
setMoveKey( spep_1-3 + 66, 1, 60.1, 27.3 , 0 );
setMoveKey( spep_1-3 + 68, 1, 61.9, 27.3 , 0 );
setMoveKey( spep_1-3 + 70, 1, 63.8, 27.3 , 0 );
setMoveKey( spep_1-3 + 73, 1, 65.7, 27.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 118.2, 138.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 133.7, 147.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, 150.9, 144.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, 137.5, 164.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 157.2, 170.6 , 0 );
setMoveKey( spep_1-3 + 84, 1, 145.4, 154.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, 137.9, 165.1 , 0 );
setMoveKey( spep_1-3 + 88, 1, 150.5, 158.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 159.9, 157.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 154.7, 158.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 149.6, 158.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 154.2, 161.8 , 0 );
setMoveKey( spep_1-3 + 98, 1, 159, 164.8 , 0 );
setMoveKey( spep_1-3 + 100, 1, 159.8, 165 , 0 );
setMoveKey( spep_1-3 + 102, 1, 160.9, 165.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 167.7, 165.2 , 0 );
setMoveKey( spep_1-3 + 106, 1, 174.8, 165.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 177, 171.3 , 0 );
setMoveKey( spep_1-3 + 110, 1, 179.4, 177.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 187.2, 178.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, 195.1, 180 , 0 );
setMoveKey( spep_1-3 + 116, 1, 200.1, 184.5 , 0 );
setMoveKey( spep_1-1 + 118, 1, 205.1, 189 , 0 );

a=0.8;
b=0.2;

setScaleKey( spep_1 + 0, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 5, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 6, 1, 1.79+a, 1.79+a );
setScaleKey( spep_1-3 + 8, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 33, 1, 1.8+a, 1.8+a );
setScaleKey( spep_1-3 + 34, 1, 1.75+a+b, 1.75+a+b );
setScaleKey( spep_1-3 + 73, 1, 1.75+a+b, 1.75+a+b );
setScaleKey( spep_1-3 + 74, 1, 1.71+a, 1.71+a );
setScaleKey( spep_1-3 + 76, 1, 1.44+a, 1.44+a );
setScaleKey( spep_1-3 + 78, 1, 1.36+a, 1.35+a );
setScaleKey( spep_1-3 + 80, 1, 1.3+a, 1.29+a );
setScaleKey( spep_1-3 + 82, 1, 1.25+a, 1.24+a );
setScaleKey( spep_1-3 + 84, 1, 1.21+a, 1.2+a );
setScaleKey( spep_1-3 + 86, 1, 1.16+a, 1.15+a );
setScaleKey( spep_1-3 + 88, 1, 1.12+a, 1.11+a );
setScaleKey( spep_1-3 + 90, 1, 1.07+a, 1.06+a );
setScaleKey( spep_1-3 + 92, 1, 1.03+a, 1.01+a );
setScaleKey( spep_1-3 + 94, 1, 0.98+a, 0.97+a );
setScaleKey( spep_1-3 + 96, 1, 0.93+a, 0.92+a );
setScaleKey( spep_1-3 + 98, 1, 0.88+a, 0.86+a );
setScaleKey( spep_1-3 + 100, 1, 0.82+a, 0.81+a );
setScaleKey( spep_1-3 + 102, 1, 0.77+a, 0.76+a );
--setScaleKey( spep_1-3 + 104, 1, 0.71+a, 0.7+a );
--setScaleKey( spep_1-3 + 106, 1, 0.65+a, 0.64+a );
--setScaleKey( spep_1-3 + 108, 1, 0.59+a, 0.59+a );
--setScaleKey( spep_1-3 + 110, 1, 0.53, 0.53 );
--setScaleKey( spep_1-3 + 112, 1, 0.47, 0.46 );
--setScaleKey( spep_1-3 + 114, 1, 0.41, 0.4 );
--setScaleKey( spep_1-3 + 116, 1, 0.34, 0.34 );
setScaleKey( spep_1-1 + 118, 1, 0.28, 0.28 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 5, 1, 0 );
setRotateKey( spep_1-3 + 6, 1, -40.9 );
setRotateKey( spep_1-3 + 33, 1, -40.9 );
setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 73, 1, 0 );
setRotateKey( spep_1-3 + 74, 1, 56.2 );
setRotateKey( spep_1-3 + 76, 1, 56.1 );
setRotateKey( spep_1-1 + 118, 1, 56.1 );

--SE
--キック
SE005 = playSe( spep_1 + 4, 1010 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 82 );
SE006 = playSe( spep_1 + 4, 1001 );
setSeVolumeByWorkId( spep_1 + 4, SE006, 68 );

--パンチ
SE007 = playSe( spep_1 + 30, 1189 );
setSeVolumeByWorkId( spep_1 + 30, SE007, 72 );
SE008 = playSe( spep_1 + 36, 1000 );
SE009 = playSe( spep_1 + 36, 1009 );
setSeVolumeByWorkId( spep_1 + 36, SE009, 81 );

--蹴り上げ
SE010 = playSe( spep_1 + 72, 1013 );
setSeVolumeByWorkId( spep_1 + 72, SE010, 89 );
SE011 = playSe( spep_1 + 72, 1010 );
SE012 = playSe( spep_1 + 74, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;
------------------------------------------------------
-- 気を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 +86, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 +86, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 +86, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 86, tame, 255 );
setEffAlphaKey( spep_2 + 87, tame, 0 );
setEffAlphaKey( spep_2 +88, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x102, -1, 0, -130, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  -130,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  -130,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, -1.07, 1.07);

--SE
--かめはめ波溜め
SE013 = playSe( spep_2 + 0, 1131 );
setSeVolumeByWorkId( spep_2 + 0, SE013, 79 );
stopSe( spep_2 + 58, SE013, 22 );
SE014 = playSe( spep_2 + 0, 1132 );
setSeVolumeByWorkId( spep_2 + 0, SE014, 69 );
setTimeStretch( SE014, 0.77, 10, 1 );

--顔カットイン
SE015 = playSe( spep_2 + 12, 1018 );

--白フェード
entryFade( spep_2 + 78, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_3 + 0, SE014, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気を放つ
------------------------------------------------------
---- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 +82, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 +82, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 +82, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 80, beam, 255 );
setEffAlphaKey( spep_4 + 81, beam, 255 );
setEffAlphaKey( spep_4 +82, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-1 + 4,  10012, 30, 0x100, -1, 0, -169.5, 119.1 );--ズオッ
setEffShake( spep_4-1 + 4, ctzuo, 30, 10 );
setEffMoveKey( spep_4-1 + 4, ctzuo, -169.5, 119.1 , 0 );
setEffMoveKey( spep_4-1 + 6, ctzuo, -167.3, 107.2 , 0 );
setEffMoveKey( spep_4-1 + 8, ctzuo, -129.1, 106 , 0 );
setEffMoveKey( spep_4-1 + 10, ctzuo, -149.1, 47.5 , 0 );
setEffMoveKey( spep_4-1 + 12, ctzuo, -138.6, 85.9 , 0 );
setEffMoveKey( spep_4-1 + 14, ctzuo, -160.5, 69.3 , 0 );
setEffMoveKey( spep_4-1 + 16, ctzuo, -139.8, 45.1 , 0 );
setEffMoveKey( spep_4-1 + 18, ctzuo, -126, 51.5 , 0 );
setEffMoveKey( spep_4-1 + 20, ctzuo, -133.9, 95.9 , 0 );
setEffMoveKey( spep_4-1 + 22, ctzuo, -118.9, 84.8 , 0 );
setEffMoveKey( spep_4-1 + 24, ctzuo, -103.9, 73.6 , 0 );
setEffMoveKey( spep_4-1 + 26, ctzuo, -118.9, 75.7 , 0 );
setEffMoveKey( spep_4-1 + 28, ctzuo, -134, 77.7 , 0 );
setEffMoveKey( spep_4-1 + 30, ctzuo, -122.5, 50.8 , 0 );
setEffMoveKey( spep_4-1 + 32, ctzuo, -115.8, 19.7 , 0 );
setEffMoveKey( spep_4-1 + 34, ctzuo, -102.3, -4.9 , 0 );

setEffScaleKey( spep_4-1 + 4, ctzuo, 0.01, 0.01 );
setEffScaleKey( spep_4-1 + 6, ctzuo, 0.78, 0.82 );
setEffScaleKey( spep_4-1 + 8, ctzuo, 1.55, 1.62 );
setEffScaleKey( spep_4-1 + 28, ctzuo, 1.55, 1.62 );
setEffScaleKey( spep_4-1 + 30, ctzuo, 2.36, 2.41 );
setEffScaleKey( spep_4-1 + 32, ctzuo, 3.17, 3.2 );
setEffScaleKey( spep_4-1 + 34, ctzuo, 3.98, 3.98 );

setEffRotateKey( spep_4-1 + 4, ctzuo, -41.7 );
setEffRotateKey( spep_4-1 + 6, ctzuo, -41.9 );
setEffRotateKey( spep_4-1 + 34, ctzuo, -41.9 );

setEffAlphaKey( spep_4-1 + 4, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 28, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 30, ctzuo, 170 );
setEffAlphaKey( spep_4-1 + 32, ctzuo, 85 );
setEffAlphaKey( spep_4-1 + 34, ctzuo, 0 );

--SE
--かめはめ波発射
SE017 = playSe( spep_4 + 2, 1027 ,"",0.6 );
SE018 = playSe( spep_4 + 2, 1022 ,"",0.6 );
SE019 = playSe( spep_4 + 32, 1215 ,"",0.6 );

--かめはめ波発射中
SE020 = playSe( spep_4 + 40, 1124 ,"",0.6 );
setSeVolumeByWorkId( spep_4 + 40, SE020, 0 );
setSeVolumeByWorkId( spep_4 + 41, SE020, 2.4 );
setSeVolumeByWorkId( spep_4 + 42, SE020, 4.8 );
setSeVolumeByWorkId( spep_4 + 43, SE020, 7.2 );
setSeVolumeByWorkId( spep_4 + 44, SE020, 9.6 );
setSeVolumeByWorkId( spep_4 + 45, SE020, 12 );
setSeVolumeByWorkId( spep_4 + 46, SE020, 14.4 );
setSeVolumeByWorkId( spep_4 + 47, SE020, 16.8 );
setSeVolumeByWorkId( spep_4 + 48, SE020, 19.2 );
setSeVolumeByWorkId( spep_4 + 49, SE020, 21.6 );
setSeVolumeByWorkId( spep_4 + 50, SE020, 24 );
setSeVolumeByWorkId( spep_4 + 51, SE020, 26.4 );
setSeVolumeByWorkId( spep_4 + 52, SE020, 28.8 );
setSeVolumeByWorkId( spep_4 + 53, SE020, 31.2 );
setSeVolumeByWorkId( spep_4 + 54, SE020, 33.6 );
setSeVolumeByWorkId( spep_4 + 55, SE020, 36 );
setSeVolumeByWorkId( spep_4 + 56, SE020, 38.4 );
setSeVolumeByWorkId( spep_4 + 57, SE020, 40.8 );
setSeVolumeByWorkId( spep_4 + 58, SE020, 43.2 );
setSeVolumeByWorkId( spep_4 + 59, SE020, 45.6 );
setSeVolumeByWorkId( spep_4 + 60, SE020, 48 );
setSeVolumeByWorkId( spep_4 + 61, SE020, 50.4 );
setSeVolumeByWorkId( spep_4 + 62, SE020, 52.8 );
setSeVolumeByWorkId( spep_4 + 63, SE020, 55.2 );
setSeVolumeByWorkId( spep_4 + 64, SE020, 57.6 );
setSeVolumeByWorkId( spep_4 + 65, SE020, 60 );
setSeVolumeByWorkId( spep_4 + 66, SE020, 62.4 );
setSeVolumeByWorkId( spep_4 + 67, SE020, 64.8 );
setSeVolumeByWorkId( spep_4 + 68, SE020, 67.2 );
setSeVolumeByWorkId( spep_4 + 69, SE020, 69.6 );
setSeVolumeByWorkId( spep_4 + 70, SE020, 72 );
setSeVolumeByWorkId( spep_4 + 71, SE020, 74.4 );
setSeVolumeByWorkId( spep_4 + 72, SE020, 76.8 );
setSeVolumeByWorkId( spep_4 + 73, SE020, 79.2 );
setSeVolumeByWorkId( spep_4 + 74, SE020, 81.6 );
setSeVolumeByWorkId( spep_4 + 75, SE020, 84 );
setSeVolumeByWorkId( spep_4 + 76, SE020, 86.4 );
setSeVolumeByWorkId( spep_4 + 77, SE020, 88.8 );
setSeVolumeByWorkId( spep_4 + 78, SE020, 91.2 );
setSeVolumeByWorkId( spep_4 + 79, SE020, 93.6 );
setSeVolumeByWorkId( spep_4 + 80, SE020, 96 );
setSeVolumeByWorkId( spep_4 + 81, SE020, 98.4 );
setSeVolumeByWorkId( spep_4 + 82, SE020, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 84, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 82;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 +56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 +56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 +56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 255 );
setEffAlphaKey( spep_5 +56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 +56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 +56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 +56, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 54, hit_b, 255 );
setEffAlphaKey( spep_5 + 55, hit_b, 255 );
setEffAlphaKey( spep_5 +56, hit_b, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5-2 + 20,  10014, 38, 0x100, -1, 0, 65.2, -242.9 );--ズドドドッ
setEffShake( spep_5-2 + 20, ctzudodo, 38, 10 );
setEffMoveKey( spep_5-2 + 20, ctzudodo, 65.2, -242.9 , 0 );
setEffMoveKey( spep_5-2 + 22, ctzudodo, 68.6, -234.1 , 0 );
setEffMoveKey( spep_5-2 + 24, ctzudodo, 82.8, -224.9 , 0 );
setEffMoveKey( spep_5-2 + 26, ctzudodo, 44.6, -229.1 , 0 );
setEffMoveKey( spep_5-2 + 28, ctzudodo, 53, -271.5 , 0 );
setEffMoveKey( spep_5-2 + 30, ctzudodo, 74.2, -273.6 , 0 );
setEffMoveKey( spep_5-2 + 32, ctzudodo, 95.5, -216.4 , 0 );
setEffMoveKey( spep_5-2 + 34, ctzudodo, 96.2, -229.8 , 0 );
setEffMoveKey( spep_5-2 + 36, ctzudodo, 116.7, -263.1 , 0 );
setEffMoveKey( spep_5-2 + 38, ctzudodo, 89.7, -260.3 , 0 );
setEffMoveKey( spep_5-2 + 40, ctzudodo, 82.8, -237.6 , 0 );
setEffMoveKey( spep_5-2 + 42, ctzudodo, 84.3, -229.8 , 0 );
setEffMoveKey( spep_5-2 + 44, ctzudodo, 65.8, -241.8 , 0 );
setEffMoveKey( spep_5-2 + 46, ctzudodo, 70.8, -236.9 , 0 );
setEffMoveKey( spep_5-2 + 48, ctzudodo, 95.7, -212.1 , 0 );
setEffMoveKey( spep_5-2 + 50, ctzudodo, 86.1, -221.7 , 0 );
setEffMoveKey( spep_5-2 + 52, ctzudodo, 56.6, -251 , 0 );
setEffMoveKey( spep_5-2 + 54, ctzudodo, 57.5, -250.1 , 0 );
setEffMoveKey( spep_5-2 + 56, ctzudodo, 78.2, -229.5 , 0 );
setEffMoveKey( spep_5-2 + 58, ctzudodo, 76.9, -211 , 0 );

setEffScaleKey( spep_5-2 + 20, ctzudodo, 0.01, 0.02 );
setEffScaleKey( spep_5-2 + 22, ctzudodo, 1.1, 1.1 );
setEffScaleKey( spep_5-2 + 24, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_5-2 + 58, ctzudodo, 2.19, 2.19 );

setEffRotateKey( spep_5-2 + 20, ctzudodo, -81.8 );
setEffRotateKey( spep_5-2 + 22, ctzudodo, -75 );
setEffRotateKey( spep_5-2 + 24, ctzudodo, -68 );
setEffRotateKey( spep_5-2 + 58, ctzudodo, -68 );

setEffAlphaKey( spep_5-2 + 20, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 56, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 57, ctzudodo, 255 );
setEffAlphaKey( spep_5-2 + 58, ctzudodo, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setBlendColor(spep_5 + 30,1,2,0,0,0,0.04);
setBlendColor(spep_5 + 31,1,2,0,0,0,0.08);
setBlendColor(spep_5 + 32,1,2,0,0,0,0.12);
setBlendColor(spep_5 + 33,1,2,0,0,0,0.16);
setBlendColor(spep_5 + 34,1,2,0,0,0,0.2);
setBlendColor(spep_5 + 35,1,2,0,0,0,0.24);
setBlendColor(spep_5 + 36,1,2,0,0,0,0.28);
setBlendColor(spep_5 + 37,1,2,0,0,0,0.32);
setBlendColor(spep_5 + 38,1,2,0,0,0,0.36);
setBlendColor(spep_5 + 39,1,2,0,0,0,0.4);
setBlendColor(spep_5 + 40,1,2,0,0,0,0.44);
setBlendColor(spep_5 + 41,1,2,0,0,0,0.48);
setBlendColor(spep_5 + 42,1,2,0,0,0,0.52);
setBlendColor(spep_5 + 43,1,2,0,0,0,0.56);
setBlendColor(spep_5 + 44,1,2,0,0,0,0.6);
setBlendColor(spep_5 + 45,1,2,0,0,0,0.64);
setBlendColor(spep_5 + 46,1,2,0,0,0,0.68);
setBlendColor(spep_5 + 47,1,2,0,0,0,0.72);
setBlendColor(spep_5 + 48,1,2,0,0,0,0.76);
setBlendColor(spep_5 + 49,1,2,0,0,0,0.8);
setBlendColor(spep_5 + 50,1,2,0,0,0,0.84);
setBlendColor(spep_5 + 51,1,2,0,0,0,0.88);
setBlendColor(spep_5 + 52,1,2,0,0,0,0.92);
setBlendColor(spep_5 + 53,1,2,0,0,0,0.96);
setBlendColor(spep_5 + 54,1,2,0,0,0,1);

setMoveKey( spep_5 + 0, 1, 77.2, 49.6 , 0 );
setMoveKey( spep_5 + 2, 1, 82.2, 59 , 0 );
setMoveKey( spep_5 + 4, 1, 82.8, 58 , 0 );
setMoveKey( spep_5 + 6, 1, 89.3, 67.4 , 0 );
setMoveKey( spep_5 + 8, 1, 89, 68.3 , 0 );
setMoveKey( spep_5 + 10, 1, 99.1, 79.8 , 0 );
setMoveKey( spep_5 + 12, 1, 95.8, 79.8 , 0 );
setMoveKey( spep_5 + 14, 1, 106.6, 88.5 , 0 );
setMoveKey( spep_5 + 16, 1, 104.2, 87.1 , 0 );
setMoveKey( spep_5 + 18, 1, 116, 97.2 , 0 );
setMoveKey( spep_5 + 20, 1, 110.6, 96.5 , 0 );
setMoveKey( spep_5 + 22, 1, 123.5, 107.1 , 0 );
setMoveKey( spep_5 + 24, 1, 120.5, 114.1 , 0 );
setMoveKey( spep_5 + 26, 1, 131.1, 111.2 , 0 );
setMoveKey( spep_5 + 28, 1, 128.8, 119.9 , 0 );
setMoveKey( spep_5 + 30, 1, 138.8, 130.5 , 0 );
setMoveKey( spep_5 + 32, 1, 139.2, 125.3 , 0 );
setMoveKey( spep_5 + 34, 1, 148.1, 141.9 , 0 );
setMoveKey( spep_5 + 36, 1, 144.3, 134.9 , 0 );
setMoveKey( spep_5 + 38, 1, 155.2, 151.7 , 0 );
setMoveKey( spep_5 + 40, 1, 154.2, 141.9 , 0 );
setMoveKey( spep_5 + 42, 1, 164.5, 161.3 , 0 );
setMoveKey( spep_5 + 44, 1, 161.2, 156.1 , 0 );
setMoveKey( spep_5 + 46, 1, 172.4, 168.1 , 0 );
setMoveKey( spep_5 + 48, 1, 170, 164.1 , 0 );
setMoveKey( spep_5 + 50, 1, 180.2, 179.9 , 0 );
setMoveKey( spep_5 + 52, 1, 177.5, 170.8 , 0 );
setMoveKey( spep_5 + 54, 1, 186.9, 189.5 , 0 );
setMoveKey( spep_5-1 + 56, 1, 187.3, 180 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 4, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 6, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 8, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 10, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 12, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 16, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 20, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 40, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 42, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 44, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 48, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5-1 + 56, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, -46 );
setRotateKey( spep_5-1 + 56, 1, -46 );

--SE
--かめはめ波発射中
SE021 = playSe( spep_5 + 0, 1145 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE021, 5 );
setSeVolumeByWorkId( spep_5 + 2, SE021, 10 );
setSeVolumeByWorkId( spep_5 + 3, SE021, 15 );
setSeVolumeByWorkId( spep_5 + 4, SE021, 20 );
setSeVolumeByWorkId( spep_5 + 5, SE021, 25 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 30 );
setSeVolumeByWorkId( spep_5 + 7, SE021, 35 );
setSeVolumeByWorkId( spep_5 + 8, SE021, 40 );
setSeVolumeByWorkId( spep_5 + 9, SE021, 45 );
setSeVolumeByWorkId( spep_5 + 10, SE021, 50 );
setSeVolumeByWorkId( spep_5 + 11, SE021, 55 );
setSeVolumeByWorkId( spep_5 + 12, SE021, 60 );
setSeVolumeByWorkId( spep_5 + 13, SE021, 65 );
setSeVolumeByWorkId( spep_5 + 14, SE021, 70 );
setSeVolumeByWorkId( spep_5 + 15, SE021, 75 );
setSeVolumeByWorkId( spep_5 + 16, SE021, 80 );

--白フェード
entryFade( spep_5 + 50, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setBlendColor(spep_6 + 0,1,2,0,0,0,0);
setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.18, 0.18 );
--setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
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
setRotateKey( spep_6-3 + 4, 1, 240 );
setRotateKey( spep_6-3  + 6, 1, 405 );
setRotateKey( spep_6-3  + 8, 1, 600 );
setRotateKey( spep_6-3  + 10, 1, 825 );
setRotateKey( spep_6-3  + 12, 1, 1080 );
setRotateKey( spep_6-3 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_6 + 0, SP_09x,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 110, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 110, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga, 0 );
setEffRotateKey( spep_6 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_6 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenga2, 255 );

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

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--かめはめ波発射中
stopSe( spep_6 + 0, SE019, 16 );
stopSe( spep_6 + 0, SE020, 14 );

playSe( spep_6 + 0, 1023 );--爆発
playSe( spep_6 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );
end