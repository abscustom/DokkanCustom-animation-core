--1021140:超サイヤ人2孫悟飯（LR）_龍翔破
--sp_effect_b1_00132
--sp2112

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
SP_01=	156338	;--	構える→移動
SP_02=	156339	;--	構える→移動
SP_03=	156340	;--	格闘　前
SP_04=	156341	;--	格闘　中
SP_05=	156342	;--	格闘　後
SP_06=	156343	;--	追撃（空中）　前
SP_07=	156344	;--	追撃（空中）　後
SP_08=	156345	;--	敵に向かって突っ込む
SP_09=	156346	;--	腕を振りかぶってパンチ
SP_10=	156347	;--	パンチが敵にヒットし吹っ飛ぶ
SP_11=	156348	;--	パンチが敵にヒットし吹っ飛ぶ

--エフェクト(てき方)
SP_01x=	156338	;--	構える→移動
SP_02x=	156339	;--	構える→移動
SP_03x=	156444	;--	格闘　前
SP_04x=	156445	;--	格闘　中
SP_05x=	156342	;--	格闘　後
SP_06x=	156446	;--	追撃（空中）　前
SP_07x=	156344	;--	追撃（空中）　後
SP_08x=	156345	;--	敵に向かって突っ込む
SP_09x=	156447	;--	腕を振りかぶってパンチ
SP_10x=	156448	;--	パンチが敵にヒットし吹っ飛ぶ
SP_11x=	156348	;--	パンチが敵にヒットし吹っ飛ぶ

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
-- 構える→移動
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, ready_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ready_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready_f, 0 );
setEffRotateKey( spep_0 + 80, ready_f, 0 );
setEffAlphaKey( spep_0 + 0, ready_f, 255 );
setEffAlphaKey( spep_0 + 78, ready_f, 255 );
setEffAlphaKey( spep_0 + 79, ready_f, 255 );
setEffAlphaKey( spep_0 + 80, ready_f, 0 );

-- ** エフェクト等 ** --
ready_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, ready_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ready_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready_b, 0 );
setEffRotateKey( spep_0 + 80, ready_b, 0 );
setEffAlphaKey( spep_0 + 0, ready_b, 255 );
setEffAlphaKey( spep_0 + 78, ready_b, 255 );
setEffAlphaKey( spep_0 + 79, ready_b, 255 );
setEffAlphaKey( spep_0 + 80, ready_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 100 );

f=-20;
g=20;

setMoveKey( spep_0 + 0, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 1, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 2, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 3, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 4, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 5, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 6, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 50, 1, 193.9+f, -120.3+g , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 1, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 3, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1, 1 );
setScaleKey( spep_0 + 5, 1, 1, 1 );
setScaleKey( spep_0 + 6, 1, 1, 1 );
setScaleKey( spep_0 + 50, 1, 1, 1 );

setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 50, 1, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.9 );
SE004 = playSe( spep_0 + 24, 1036,"",0.9 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 33 );
stopSe( spep_0 + 76, SE002, 12 );

--イナヅマ
SE003 = playSe( spep_0 + 0, 1147 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 59 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 193.9+f, -120.3+g , 0 );
    setScaleKey( SP_dodge+9, 1, 1, 1 );
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
setMoveKey( spep_0 + 58, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 60, 1, 196.5+f, -115.6+g , 0 );
setMoveKey( spep_0 + 62, 1, 193.3+f, -120.9+g , 0 );
setMoveKey( spep_0 + 64, 1, 192.3+f, -117.8+g , 0 );
setMoveKey( spep_0 + 66, 1, 194.1+f, -120.6+g , 0 );
setMoveKey( spep_0 + 68, 1, 195.5+f, -118+g , 0 );
setMoveKey( spep_0 + 70, 1, 193+f, -119.8+g , 0 );
setMoveKey( spep_0 + 72, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0-1 + 80, 1, 193.9+f, -120.3+g , 0 );

setScaleKey( spep_0-1 + 80, 1, 1, 1 );

setRotateKey( spep_0-1 + 80, 1, 0 );

--書き文字
ctsyun = entryEffectLife( spep_0-3 + 58,  10011, 20, 0x100, -1, 0, -83.4, 297.9 );--シュンッ
setEffShake( spep_0-3 + 58, ctsyun, 20, 10 );
setEffMoveKey( spep_0-3 + 58, ctsyun, -83.4, 297.9 , 0 );
setEffMoveKey( spep_0-3 + 60, ctsyun, -99.4, 298.5 , 0 );
setEffMoveKey( spep_0-3 + 62, ctsyun, -119.3, 283.6 , 0 );
setEffMoveKey( spep_0-3 + 64, ctsyun, -113.5, 290.5 , 0 );
setEffMoveKey( spep_0-3 + 66, ctsyun, -114.1, 289.4 , 0 );
setEffMoveKey( spep_0-3 + 68, ctsyun, -115.1, 290.3 , 0 );
setEffMoveKey( spep_0-3 + 70, ctsyun, -120.1, 293.9 , 0 );
setEffMoveKey( spep_0-3 + 72, ctsyun, -124.9, 295.6 , 0 );
setEffMoveKey( spep_0-3 + 74, ctsyun, -121.1, 291.6 , 0 );
setEffMoveKey( spep_0-3 + 76, ctsyun, -130.8, 285.7 , 0 );
setEffMoveKey( spep_0-3 + 78, ctsyun, -144.3, 282.7 , 0 );

setEffScaleKey( spep_0-3 + 58, ctsyun, 0.55, 0.55 );
setEffScaleKey( spep_0-3 + 60, ctsyun, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 62, ctsyun, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 64, ctsyun, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 66, ctsyun, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 70, ctsyun, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 72, ctsyun, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 74, ctsyun, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 76, ctsyun, 2.39, 2.39 );
setEffScaleKey( spep_0-3 + 78, ctsyun, 2.9, 2.9 );

setEffRotateKey( spep_0-3 + 58, ctsyun, -22.8 );
setEffRotateKey( spep_0-3 + 60, ctsyun, -21.4 );
setEffRotateKey( spep_0-3 + 62, ctsyun, -19.9 );
setEffRotateKey( spep_0-3 + 64, ctsyun, -21.4 );
setEffRotateKey( spep_0-3 + 66, ctsyun, -23 );
setEffRotateKey( spep_0-3 + 68, ctsyun, -21.9 );
setEffRotateKey( spep_0-3 + 70, ctsyun, -20.8 );
setEffRotateKey( spep_0-3 + 72, ctsyun, -21.9 );
setEffRotateKey( spep_0-3 + 74, ctsyun, -23 );
setEffRotateKey( spep_0-3 + 78, ctsyun, -23 );

setEffAlphaKey( spep_0-3 + 58, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 72, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 74, ctsyun, 170 );
setEffAlphaKey( spep_0-3 + 76, ctsyun, 86 );
setEffAlphaKey( spep_0-3 + 78, ctsyun, 1 );

--SE
--オーラ
SE005 = playSe( spep_0 + 48, 1036,"",0.9 );

--瞬間移動
SE006 = playSe( spep_0 + 62, 1109 );

--次の準備
spep_1=spep_0+80;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 160, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 158, fighting_f, 255 );
setEffAlphaKey( spep_1 + 159, fighting_f, 255 );
setEffAlphaKey( spep_1 + 160, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 160, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 160, fighting_b, 255 );
setEffAlphaKey( spep_1 + 161, fighting_b, 0 );
setEffAlphaKey( spep_1 + 162, fighting_b, 0 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 160, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 160, fighting_n, 255 );
setEffAlphaKey( spep_1 + 161, fighting_n, 0 );
setEffAlphaKey( spep_1 + 162, fighting_n, 0 );

--書き文字
ctsyun2 = entryEffectLife( spep_1-3 + 6,  10011, 22, 0x100, -1, 0, 5.2, 114.6 );
setEffShake( spep_1-3 + 6, ctsyun2, 22, 10 );
setEffMoveKey( spep_1-3 + 6, ctsyun2, 5.2, 114.6 , 0 );
setEffMoveKey( spep_1-3 + 8, ctsyun2, -10.7, 115.2 , 0 );
setEffMoveKey( spep_1-3 + 10, ctsyun2, -30.6, 100.3 , 0 );
setEffMoveKey( spep_1-3 + 12, ctsyun2, -24.8, 107.2 , 0 );
setEffMoveKey( spep_1-3 + 14, ctsyun2, -25.4, 106 , 0 );
setEffMoveKey( spep_1-3 + 16, ctsyun2, -26.4, 107 , 0 );
setEffMoveKey( spep_1-3 + 18, ctsyun2, -31.5, 110.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctsyun2, -36.3, 112.2 , 0 );
setEffMoveKey( spep_1-3 + 22, ctsyun2, -32.4, 108.3 , 0 );
setEffMoveKey( spep_1-3 + 24, ctsyun2, -42.2, 102.3 , 0 );
setEffMoveKey( spep_1-3 + 28, ctsyun2, -55.7, 99.4 , 0 );

setEffScaleKey( spep_1-3 + 6, ctsyun2, 0.55, 0.55 );
setEffScaleKey( spep_1-3 + 8, ctsyun2, 1.2, 1.2 );
setEffScaleKey( spep_1-3 + 10, ctsyun2, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 12, ctsyun2, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 14, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 18, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 20, ctsyun2, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 22, ctsyun2, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 24, ctsyun2, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 28, ctsyun2, 2.9, 2.9 );

setEffRotateKey( spep_1-3 + 6, ctsyun2, -22.8 );
setEffRotateKey( spep_1-3 + 8, ctsyun2, -21.4 );
setEffRotateKey( spep_1-3 + 10, ctsyun2, -19.9 );
setEffRotateKey( spep_1-3 + 12, ctsyun2, -21.4 );
setEffRotateKey( spep_1-3 + 14, ctsyun2, -23 );
setEffRotateKey( spep_1-3 + 16, ctsyun2, -21.9 );
setEffRotateKey( spep_1-3 + 18, ctsyun2, -20.8 );
setEffRotateKey( spep_1-3 + 20, ctsyun2, -21.9 );
setEffRotateKey( spep_1-3 + 22, ctsyun2, -23 );
setEffRotateKey( spep_1-3 + 28, ctsyun2, -23 );

setEffAlphaKey( spep_1-3 + 6, ctsyun2, 255 );
setEffAlphaKey( spep_1-3 + 20, ctsyun2, 255 );
setEffAlphaKey( spep_1-3 + 22, ctsyun2, 170 );
setEffAlphaKey( spep_1-3 + 24, ctsyun2, 86 );
setEffAlphaKey( spep_1-3 + 26, ctsyun2, 1 );
setEffAlphaKey( spep_1-3 + 28, ctsyun2, 0 );

--書き文字
ctbaki = entryEffectLife( spep_1-3 + 48,  10020, 20, 0x100, -1, 0, 21.7, 296.9 );--バキッ
setEffShake( spep_1-3 + 48, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 48, ctbaki, 21.7, 296.9 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, 131.3, 213.8 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, 45.6, 265.9 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, 5.4, 257.5 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, 38.4, 291.9 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, 45.9, 294.7 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbaki, 32.8, 284.9 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbaki, 19.8, 275.2 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbaki, 33.9, 263.7 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbaki, 32, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbaki, 32.1, 249.5 , 0 );

setEffScaleKey( spep_1-3 + 48, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 58, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 60, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1-3 + 62, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 64, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 66, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 68, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 48, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 50, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 52, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 54, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 56, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 58, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 66, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 68, ctbaki, 7.5 );

setEffAlphaKey( spep_1-3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 62, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 64, ctbaki, 170 );
setEffAlphaKey( spep_1-3 + 66, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 68, ctbaki, 0 );

--書き文字
ctbago = entryEffectLife( spep_1-3 + 108,  10021, 18, 0x100, -1, 0, 151.5, 292.2 );--バゴォッ
setEffShake( spep_1-3 + 108, ctbago, 18, 10 );
setEffMoveKey( spep_1-3 + 108, ctbago, 151.5, 292.2 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbago, 245, 166.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbago, 169.3, 262.8 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbago, 114, 262.9 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbago, 169.5, 291.2 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbago, 175.3, 292.7 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbago, 156.7, 285.8 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbago, 138.2, 279 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbago, 151.5, 260.9 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbago, 149, 259.9 , 0 );

setEffScaleKey( spep_1-3 + 108, ctbago, 1.64, 1.64 );
setEffScaleKey( spep_1-3 + 110, ctbago, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 112, ctbago, 2.55, 2.55 );
setEffScaleKey( spep_1-3 + 114, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 116, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 118, ctbago, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 120, ctbago, 2.18, 2.18 );
setEffScaleKey( spep_1-3 + 122, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 124, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 126, ctbago, 2.26, 2.26 );

setEffRotateKey( spep_1-3 + 108, ctbago, 44.9 );
setEffRotateKey( spep_1-3 + 110, ctbago, 10.3 );
setEffRotateKey( spep_1-3 + 112, ctbago, 25.3 );
setEffRotateKey( spep_1-3 + 114, ctbago, 20 );
setEffRotateKey( spep_1-3 + 116, ctbago, 30.2 );
setEffRotateKey( spep_1-3 + 118, ctbago, 22.6 );
setEffRotateKey( spep_1-3 + 126, ctbago, 22.6 );

setEffAlphaKey( spep_1-3 + 108, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 122, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 124, ctbago, 170 );
setEffAlphaKey( spep_1-3 + 126, ctbago, 85 );

--敵の動き
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 48, 1, 106 );
changeAnime( spep_1-3 + 108, 1, 8 );
changeAnime( spep_1-3 + 114, 1, 105 );

--敵の動き
b=65;

setMoveKey( spep_1 + 0, 1, 124.5, -121+b , 0 );
setMoveKey( spep_1-3 + 47, 1, 124.5, -121+b , 0 );

setMoveKey( spep_1-3 + 48, 1, -43, 53.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, -35.1, 72.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, -76.4, 52 , 0 );
setMoveKey( spep_1-3 + 54, 1, -58.3, 50.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, -97, 87.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, -83.8, 78.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, -93.1, 78.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, -95.2, 77.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, -101.8, 81.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, -103.4, 84.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, -104.9, 83.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, -106.8, 82 , 0 );
setMoveKey( spep_1-3 + 72, 1, -111.3, 84.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -115.9, 86.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, -119.5, 86.6 , 0 );
setMoveKey( spep_1-3 + 78, 1, -123.2, 86.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, -124.6, 86.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, -125.5, 87.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, -126.3, 87.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, -127.2, 88.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, -128.1, 89.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, -128.9, 89.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, -129.8, 90.4 , 0 );
setMoveKey( spep_1-3 + 94, 1, -130.7, 91 , 0 );
setMoveKey( spep_1-3 + 96, 1, -131.5, 91.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, -132.4, 92.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, -133.3, 93 , 0 );
setMoveKey( spep_1-3 + 102, 1, -134.1, 93.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, -135, 94.3 , 0 );
setMoveKey( spep_1-3 + 107, 1, -135.9, 94.9 , 0 );
setMoveKey( spep_1-3 + 108, 1, -107.5, 137.6 , 0 );
setMoveKey( spep_1-3 + 110, 1, -144.4, 93.3 , 0 );
setMoveKey( spep_1-3 + 113, 1, -132.5, 130.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, -172, 142.5 , 0 );
setMoveKey( spep_1-3 + 116, 1, -194.2, 145.3 , 0 );
setMoveKey( spep_1-3 + 118, 1, -210.1, 189.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, -193, 186.5 , 0 );
setMoveKey( spep_1-3 + 122, 1, -209.3, 191.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, -207.2, 201.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, -213.6, 209.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, -215.1, 210.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, -216.8, 211.6 , 0 );
setMoveKey( spep_1-3 + 132, 1, -217, 215.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, -217.2, 219.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, -217.7, 220.2 , 0 );
setMoveKey( spep_1-3 + 138, 1, -218.3, 221 , 0 );
setMoveKey( spep_1-3 + 140, 1, -222, 224.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, -225.7, 227.3 , 0 );
setMoveKey( spep_1-3 + 144, 1, -225.5, 229 , 0 );
setMoveKey( spep_1-3 + 146, 1, -225.3, 230.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, -225.1, 230.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, -224.5, 229.2 , 0 );
setMoveKey( spep_1-3 + 152, 1, -227.4, 228.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, -229.8, 228.6 , 0 );
setMoveKey( spep_1-3 + 156, 1, -227.5, 232.9 , 0 );
setMoveKey( spep_1-1 + 160, 1, -224.6, 236.6 , 0 );

a=0.2;

setScaleKey( spep_1 + 0, 1, 1.9+a, 1.9+a );
setScaleKey( spep_1-3 + 107, 1, 1.9+a, 1.9+a );
setScaleKey( spep_1-3 + 108, 1, 1.89+a, 1.85+a );
setScaleKey( spep_1-3 + 110, 1, 1.89+a, 1.85+a );
setScaleKey( spep_1-3 + 113, 1, 1.9+a, 1.86+a );
setScaleKey( spep_1-3 + 114, 1, 1.43+a, 1.41+a );
setScaleKey( spep_1-3 + 116, 1, 1.25+a, 1.24+a );
setScaleKey( spep_1-3 + 118, 1, 1.12+a, 1.12+a );
setScaleKey( spep_1-3 + 120, 1, 1.01+a, 1.01+a );
setScaleKey( spep_1-3 + 122, 1, 0.92, 0.93 );
setScaleKey( spep_1-3 + 124, 1, 0.84, 0.85 );
setScaleKey( spep_1-3 + 126, 1, 0.77, 0.78 );
setScaleKey( spep_1-3 + 128, 1, 0.71, 0.72 );
setScaleKey( spep_1-3 + 130, 1, 0.65, 0.66 );
setScaleKey( spep_1-3 + 132, 1, 0.6, 0.61 );
setScaleKey( spep_1-3 + 134, 1, 0.55, 0.56 );
setScaleKey( spep_1-3 + 136, 1, 0.51, 0.52 );
setScaleKey( spep_1-3 + 138, 1, 0.46, 0.47 );
setScaleKey( spep_1-3 + 140, 1, 0.43, 0.44 );
setScaleKey( spep_1-3 + 142, 1, 0.39, 0.4 );
setScaleKey( spep_1-3 + 144, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 146, 1, 0.32, 0.33 );
setScaleKey( spep_1-3 + 148, 1, 0.29, 0.3 );
setScaleKey( spep_1-3 + 150, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 152, 1, 0.24, 0.25 );
setScaleKey( spep_1-3 + 154, 1, 0.22, 0.22 );
setScaleKey( spep_1-1 + 160, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 47, 1, 0 );
setRotateKey( spep_1-3 + 48, 1, -36 );
setRotateKey( spep_1-3 + 50, 1, -35.7 );
setRotateKey( spep_1-3 + 52, 1, -35.4 );
setRotateKey( spep_1-3 + 54, 1, -35.1 );
setRotateKey( spep_1-3 + 56, 1, -34.9 );
setRotateKey( spep_1-3 + 58, 1, -34.7 );
setRotateKey( spep_1-3 + 60, 1, -34.6 );
setRotateKey( spep_1-3 + 62, 1, -34.5 );
setRotateKey( spep_1-3 + 64, 1, -34.4 );
setRotateKey( spep_1-3 + 66, 1, -34.3 );
setRotateKey( spep_1-3 + 70, 1, -34.3 );
setRotateKey( spep_1-3 + 72, 1, -34.2 );
setRotateKey( spep_1-3 + 74, 1, -34.1 );
setRotateKey( spep_1-3 + 76, 1, -34 );
setRotateKey( spep_1-3 + 78, 1, -34 );
setRotateKey( spep_1-3 + 80, 1, -33.9 );
setRotateKey( spep_1-3 + 82, 1, -33.8 );
setRotateKey( spep_1-3 + 84, 1, -33.8 );
setRotateKey( spep_1-3 + 86, 1, -33.7 );
setRotateKey( spep_1-3 + 88, 1, -33.6 );
setRotateKey( spep_1-3 + 90, 1, -33.6 );
setRotateKey( spep_1-3 + 92, 1, -33.5 );
setRotateKey( spep_1-3 + 94, 1, -33.4 );
setRotateKey( spep_1-3 + 96, 1, -33.3 );
setRotateKey( spep_1-3 + 98, 1, -33.3 );
setRotateKey( spep_1-3 + 100, 1, -33.2 );
setRotateKey( spep_1-3 + 102, 1, -33.1 );
setRotateKey( spep_1-3 + 104, 1, -33.1 );
setRotateKey( spep_1-3 + 107, 1, -33 );
setRotateKey( spep_1-3 + 108, 1, 16 );
setRotateKey( spep_1-3 + 110, 1, 17 );
setRotateKey( spep_1-3 + 113, 1, 18 );
setRotateKey( spep_1-3 + 114, 1, -57.4 );
setRotateKey( spep_1-3 + 116, 1, -57.8 );
setRotateKey( spep_1-3 + 118, 1, -58.2 );
setRotateKey( spep_1-3 + 120, 1, -58.6 );
setRotateKey( spep_1-3 + 122, 1, -59 );
setRotateKey( spep_1-3 + 124, 1, -59.5 );
setRotateKey( spep_1-3 + 126, 1, -59.9 );
setRotateKey( spep_1-3 + 128, 1, -60.3 );
setRotateKey( spep_1-3 + 130, 1, -60.7 );
setRotateKey( spep_1-3 + 132, 1, -61.1 );
setRotateKey( spep_1-3 + 134, 1, -61.5 );
setRotateKey( spep_1-3 + 136, 1, -61.9 );
setRotateKey( spep_1-3 + 138, 1, -62.3 );
setRotateKey( spep_1-3 + 140, 1, -62.7 );
setRotateKey( spep_1-3 + 142, 1, -63.1 );
setRotateKey( spep_1-3 + 144, 1, -63.5 );
setRotateKey( spep_1-3 + 146, 1, -64 );
setRotateKey( spep_1-3 + 148, 1, -64.4 );
setRotateKey( spep_1-3 + 150, 1, -64.8 );
setRotateKey( spep_1-3 + 152, 1, -65.2 );
setRotateKey( spep_1-3 + 154, 1, -65.6 );
setRotateKey( spep_1-1 + 160, 1, -66 );

--SE
--イナヅマ
stopSe( spep_1 + 0, SE003, 16 );

--着地
SE007 = playSe( spep_1 + 2, 1192 );
setTimeStretch( SE007, 0.73, 10, 1 );
SE008 = playSe( spep_1 + 4, 1108 );
SE009 = playSe( spep_1 + 4, 1106 );

--裏拳
SE010 = playSe( spep_1 + 46, 1009 );
SE011 = playSe( spep_1 + 48, 1110 );

--回し蹴り
SE012 = playSe( spep_1 + 104, 1003 );
SE013 = playSe( spep_1 + 108, 1009 );
SE014 = playSe( spep_1 + 110, 1001 );
setSeVolumeByWorkId( spep_1 + 110, SE014, 63 );
SE015 = playSe( spep_1 + 110, 1187 );
setSeVolumeByWorkId( spep_1 + 110, SE015, 59 );
SE016 = playSe( spep_1 + 112, 1110 );

--敵飛んでいく
SE017 = playSe( spep_1 + 136, 1183 );
setSeVolumeByWorkId( spep_1 + 136, SE017, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+160;
------------------------------------------------------
-- 追撃（空中）
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_2 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_f, 0 );
setEffRotateKey( spep_2 + 100, pursuit_f, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 100, pursuit_f, 255 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_2 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_b, 0 );
setEffRotateKey( spep_2 + 100, pursuit_b, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 100, pursuit_b, 255 );

--書き文字
ctsyun3 = entryEffectLife( spep_2-3 + 4,  10011, 16, 0x100, -1, 0, -104.8, 377.1 );--シュンッ
setEffShake( spep_2-3 + 4, ctsyun3, 16, 10 );
setEffMoveKey( spep_2-3 + 4, ctsyun3, -104.8, 377.1 , 0 );
setEffMoveKey( spep_2-3 + 6, ctsyun3, -120.7, 377.7 , 0 );
setEffMoveKey( spep_2-3 + 8, ctsyun3, -140.6, 362.8 , 0 );
setEffMoveKey( spep_2-3 + 10, ctsyun3, -134.8, 369.7 , 0 );
setEffMoveKey( spep_2-3 + 12, ctsyun3, -135.4, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 14, ctsyun3, -136.4, 369.5 , 0 );
setEffMoveKey( spep_2-3 + 16, ctsyun3, -141.5, 373.1 , 0 );
setEffMoveKey( spep_2-3 + 18, ctsyun3, -146.3, 374.8 , 0 );
setEffMoveKey( spep_2-3 + 20, ctsyun3, -142.4, 370.8 , 0 );

setEffScaleKey( spep_2-3 + 4, ctsyun3, 0.55, 0.55 );
setEffScaleKey( spep_2-3 + 6, ctsyun3, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 8, ctsyun3, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 10, ctsyun3, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 12, ctsyun3, 1.86, 1.86 );
setEffScaleKey( spep_2-3 + 16, ctsyun3, 1.86, 1.86 );
setEffScaleKey( spep_2-3 + 18, ctsyun3, 1.87, 1.87 );
setEffScaleKey( spep_2-3 + 20, ctsyun3, 1.87, 1.87 );

setEffRotateKey( spep_2-3 + 4, ctsyun3, -22.8 );
setEffRotateKey( spep_2-3 + 6, ctsyun3, -21.4 );
setEffRotateKey( spep_2-3 + 8, ctsyun3, -19.9 );
setEffRotateKey( spep_2-3 + 10, ctsyun3, -21.4 );
setEffRotateKey( spep_2-3 + 12, ctsyun3, -23 );
setEffRotateKey( spep_2-3 + 14, ctsyun3, -21.9 );
setEffRotateKey( spep_2-3 + 16, ctsyun3, -20.8 );
setEffRotateKey( spep_2-3 + 18, ctsyun3, -21.9 );
setEffRotateKey( spep_2-3 + 20, ctsyun3, -23 );

setEffAlphaKey( spep_2-3 + 4, ctsyun3, 255 );
setEffAlphaKey( spep_2-3 + 18, ctsyun3, 255 );
setEffAlphaKey( spep_2-3 + 20, ctsyun3, 170 );

--書き文字
ctbaki2 = entryEffectLife( spep_2-3 + 26,  10020, 20, 0x100, -1, 0, 4.2, 330.6 );--バキッ
setEffShake( spep_2-3 + 26, ctbaki2, 20, 10 );
setEffMoveKey( spep_2-3 + 26, ctbaki2, 4.2, 330.6 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki2, 113.8, 247.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki2, 28.1, 299.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki2, -12.1, 291.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki2, 20.9, 325.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki2, 28.4, 328.4 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki2, 15.3, 318.7 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki2, 2.3, 309 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki2, 16.4, 297.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki2, 14.5, 296 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki2, 14.6, 283.2 , 0 );

setEffScaleKey( spep_2-3 + 26, ctbaki2, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 28, ctbaki2, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 30, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 32, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 34, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 36, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_2-3 + 38, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 40, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 42, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 44, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_2-3 + 46, ctbaki2, 1.84, 1.84 );

setEffRotateKey( spep_2-3 + 26, ctbaki2, 29.9 );
setEffRotateKey( spep_2-3 + 28, ctbaki2, -4.7 );
setEffRotateKey( spep_2-3 + 30, ctbaki2, 10.3 );
setEffRotateKey( spep_2-3 + 32, ctbaki2, 5 );
setEffRotateKey( spep_2-3 + 34, ctbaki2, 15.2 );
setEffRotateKey( spep_2-3 + 36, ctbaki2, 7.6 );
setEffRotateKey( spep_2-3 + 44, ctbaki2, 7.6 );
setEffRotateKey( spep_2-3 + 46, ctbaki2, 7.5 );

setEffAlphaKey( spep_2-3 + 26, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 40, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbaki2, 170 );
setEffAlphaKey( spep_2-3 + 44, ctbaki2, 85 );
setEffAlphaKey( spep_2-3 + 46, ctbaki2, 0 );

--書き文字
ctgyun = entryEffectLife( spep_2-3 + 70,  10007, 28, 0x100, -1, 0, 124.8, 419.9 );--ギュンッ

setEffMoveKey( spep_2-3 + 70, ctgyun, 124.8, 419.9 , 0 );
setEffMoveKey( spep_2-3 + 72, ctgyun, 155.5, 284.2 , 0 );
setEffMoveKey( spep_2-3 + 74, ctgyun, -4.1, 369.1 , 0 );
setEffMoveKey( spep_2-3 + 76, ctgyun, 41.5, 373.5 , 0 );
setEffMoveKey( spep_2-3 + 78, ctgyun, 39.3, 426.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctgyun, 70.2, 396 , 0 );
setEffMoveKey( spep_2-3 + 82, ctgyun, 54.4, 396.6 , 0 );
setEffMoveKey( spep_2-3 + 84, ctgyun, 38.8, 397.2 , 0 );
setEffMoveKey( spep_2-3 + 86, ctgyun, 53.2, 379 , 0 );
setEffMoveKey( spep_2-3 + 88, ctgyun, 67, 399 , 0 );
setEffMoveKey( spep_2-3 + 90, ctgyun, 47.6, 403.9 , 0 );
setEffMoveKey( spep_2-3 + 92, ctgyun, 15, 414.6 , 0 );
setEffMoveKey( spep_2-3 + 94, ctgyun, -3.2, 402.5 , 0 );
setEffMoveKey( spep_2-3 + 96, ctgyun, -19.4, 409.3 , 0 );
setEffMoveKey( spep_2-3 + 98, ctgyun, -41.3, 404.5 , 0 );

setEffScaleKey( spep_2-3 + 70, ctgyun, 1.69, 1.69 );
setEffScaleKey( spep_2-3 + 72, ctgyun, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 74, ctgyun, 2.63, 2.63 );
setEffScaleKey( spep_2-3 + 76, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 78, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 80, ctgyun, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 82, ctgyun, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 84, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 86, ctgyun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 88, ctgyun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 90, ctgyun, 2.56, 2.56 );
setEffScaleKey( spep_2-3 + 92, ctgyun, 2.78, 2.78 );
setEffScaleKey( spep_2-3 + 94, ctgyun, 3, 3 );
setEffScaleKey( spep_2-3 + 96, ctgyun, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 98, ctgyun, 3.44, 3.44 );

setEffRotateKey( spep_2-3 + 70, ctgyun, 42.9 );
setEffRotateKey( spep_2-3 + 72, ctgyun, 8.3 );
setEffRotateKey( spep_2-3 + 74, ctgyun, 23.3 );
setEffRotateKey( spep_2-3 + 76, ctgyun, 18 );
setEffRotateKey( spep_2-3 + 78, ctgyun, 28.2 );
setEffRotateKey( spep_2-3 + 80, ctgyun, 20.6 );
setEffRotateKey( spep_2-3 + 98, ctgyun, 20.6 );

setEffAlphaKey( spep_2-3 + 70, ctgyun, 255 );
setEffAlphaKey( spep_2-3 + 84, ctgyun, 255 );
setEffAlphaKey( spep_2-3 + 86, ctgyun, 170 );
setEffAlphaKey( spep_2-3 + 88, ctgyun, 85 );
setEffAlphaKey( spep_2-3 + 90, ctgyun, 71 );
setEffAlphaKey( spep_2-3 + 92, ctgyun, 57 );
setEffAlphaKey( spep_2-3 + 94, ctgyun, 43 );
setEffAlphaKey( spep_2-3 + 96, ctgyun, 28 );
setEffAlphaKey( spep_2-3 + 98, ctgyun, 14 );

--敵の動き
setDisp( spep_2-1 + 98, 1, 0 );

changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2-3 + 26, 1, 108 );
changeAnime( spep_2-3 + 34, 1, 105 );

setMoveKey( spep_2 + 0, 1, 504.4, -421.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 467.5, -390 , 0 );
setMoveKey( spep_2-3 + 4, 1, 430.7, -358.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, 393.8, -326.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 356.9, -295.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 320.1, -263.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 283.2, -232.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 246.3, -200.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 209.5, -169 , 0 );
setMoveKey( spep_2-3 + 18, 1, 172.6, -137.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 135.8, -105.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 98.9, -74.3 , 0 );
setMoveKey( spep_2-3 + 25, 1, 62.1, -42.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, 109.4, 11.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 84, -12.6 , 0 );
setMoveKey( spep_2-3 + 30, 1, 113, -14.9 , 0 );
setMoveKey( spep_2-3 + 33, 1, 81, 18 , 0 );
setMoveKey( spep_2-3 + 34, 1, 108.5, -15.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 167.2, -27 , 0 );
setMoveKey( spep_2-3 + 38, 1, 204.9, -45.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 245.5, -48.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 279.4, -65.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 307.7, -74.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 334.8, -82.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 364, -93.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 392.5, -104 , 0 );
setMoveKey( spep_2-3 + 52, 1, 417.6, -112.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 442.1, -120.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 468.1, -129.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 493.7, -138.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 518.9, -146.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 543.7, -155.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 568.1, -163.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 568.1, -163.7 , 0 );
setMoveKey( spep_2-3 + 70, 1, 557.8, -167.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 588.7, -147.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, 558.4, -147.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 568.8, -168.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 574.3, -168.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 580.5, -162.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 577.4, -157.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 578.9, -160.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 577.4, -159 , 0 );
setMoveKey( spep_2-3 + 88, 1, 575.8, -159.8 , 0 );
setMoveKey( spep_2-3 + 90, 1, 574.3, -160.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 572.7, -159.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 571.2, -159 , 0 );
setMoveKey( spep_2-3 + 96, 1, 572.7, -158.3 , 0 );
setMoveKey( spep_2-1 + 98, 1, 574.3, -157.5 , 0 );

d=0.4;
setScaleKey( spep_2 + 0, 1, 1.9+d, 1.9+d );
setScaleKey( spep_2-3 + 33, 1, 1.9+d, 1.9+d );
setScaleKey( spep_2-3 + 34, 1, 1.8+d, 1.8+d );
setScaleKey( spep_2-3 + 36, 1, 1.27+d, 1.26+d );
setScaleKey( spep_2-3 + 38, 1, 1.08+d, 1.06+d );
--setScaleKey( spep_2-3 + 40, 1, 0.93, 0.91 );
--setScaleKey( spep_2-3 + 42, 1, 0.81, 0.8 );
--setScaleKey( spep_2-3 + 44, 1, 0.71, 0.7 );
--setScaleKey( spep_2-3 + 46, 1, 0.63, 0.61 );
--setScaleKey( spep_2-3 + 48, 1, 0.55, 0.54 );
--setScaleKey( spep_2-3 + 50, 1, 0.49, 0.47 );
--setScaleKey( spep_2-3 + 52, 1, 0.43, 0.42 );
--setScaleKey( spep_2-3 + 54, 1, 0.37, 0.36 );
--setScaleKey( spep_2-3 + 56, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 58, 1, 0.28, 0.27 );
setScaleKey( spep_2-3 + 60, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 62, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 64, 1, 0.17, 0.18 );
setScaleKey( spep_2-1 + 98, 1, 0.17, 0.18 );

setRotateKey( spep_2 + 0, 1, 12 );
--setRotateKey( spep_2-3 + 2, 1, 11 );
setRotateKey( spep_2-3 + 4, 1, 10 );
setRotateKey( spep_2-3 + 6, 1, 9 );
setRotateKey( spep_2-3 + 8, 1, 8 );
setRotateKey( spep_2-3 + 10, 1, 7 );
setRotateKey( spep_2-3 + 12, 1, 6 );
setRotateKey( spep_2-3 + 14, 1, 5 );
setRotateKey( spep_2-3 + 16, 1, 4 );
setRotateKey( spep_2-3 + 18, 1, 3 );
setRotateKey( spep_2-3 + 20, 1, 2 );
setRotateKey( spep_2-3 + 22, 1, 1 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, 26 );
setRotateKey( spep_2-3 + 33, 1, 26 );
setRotateKey( spep_2-3 + 34, 1, 79 );
setRotateKey( spep_2-3 + 36, 1, 79.7 );
setRotateKey( spep_2-3 + 38, 1, 80.3 );
setRotateKey( spep_2-3 + 40, 1, 81 );
setRotateKey( spep_2-3 + 42, 1, 81.7 );
setRotateKey( spep_2-3 + 44, 1, 82.3 );
setRotateKey( spep_2-3 + 46, 1, 83 );
setRotateKey( spep_2-3 + 48, 1, 83.7 );
setRotateKey( spep_2-3 + 50, 1, 84.3 );
setRotateKey( spep_2-3 + 52, 1, 85 );
setRotateKey( spep_2-3 + 54, 1, 85.7 );
setRotateKey( spep_2-3 + 56, 1, 86.3 );
setRotateKey( spep_2-3 + 58, 1, 87 );
setRotateKey( spep_2-3 + 60, 1, 87.7 );
setRotateKey( spep_2-3 + 62, 1, 88.3 );
setRotateKey( spep_2-3 + 64, 1, 89 );
setRotateKey( spep_2-1 + 98, 1, 89 );

--SE
--瞬間移動
SE018 = playSe( spep_2 + 2, 1109 );

--エルボ
SE019 = playSe( spep_2 + 24, 1010 );
SE020 = playSe( spep_2 + 24, 1187 );
setSeVolumeByWorkId( spep_2 + 24, SE020, 75 );
stopSe( spep_2 + 36, SE020, 28 );
SE021 = playSe( spep_2 + 28, 1006 );

--飛んでいく
SE022 = playSe( spep_2 + 66, 1116 );
stopSe( spep_2 + 84, SE022, 18 );
SE023 = playSe( spep_2 + 66, 1182 );
setSeVolumeByWorkId( spep_2 + 66, SE023, 112 );

--前方飛行
SE024 = playSe( spep_2 + 88, 9 );
setTimeStretch( SE024, 1.26, 10, 1 );
SE025 = playSe( spep_2 + 88, 1019 );
SE026 = playSe( spep_2 + 88, 1278 );
setSeVolumeByWorkId( spep_2 + 88, SE026, 60 );
setTimeStretch( SE026, 1.11, 10, 1 );

--飛行中オーラ
SE027 = playSe( spep_2 + 94, 1036,"",0.9 );

--飛行中イナヅマ
SE028 = playSe( spep_2 + 94, 1148 );
setSeVolumeByWorkId( spep_2 + 94, SE028, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+96;
------------------------------------------------------
-- 敵に向かって突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
heading = entryEffect( spep_3 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, heading, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, heading, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, heading, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, heading, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, heading, 0 );
setEffRotateKey( spep_3 + 100, heading, 0 );
setEffAlphaKey( spep_3 + 0, heading, 255 );
setEffAlphaKey( spep_3 + 100, heading, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +12, 190006, 72, 0x100, -1, 0, 80, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +12,  ctgogo,  80,  510);
setEffMoveKey(  spep_3 +84,  ctgogo, 80,  510);

setEffAlphaKey( spep_3 +12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 120 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey(  spep_3 +12,  ctgogo,  0);
setEffRotateKey(  spep_3 +84,  ctgogo,  0);

setEffScaleKey(  spep_3 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo, 1.07, 1.07);

--SE
--前方飛行
stopSe( spep_3 + 98, SE024, 0 );
stopSe( spep_3 + 98, SE025, 0 );
stopSe( spep_3 + 82, SE026, 16 );

--飛行中イナヅマ
stopSe( spep_3 + 94, SE028, 0 );

--顔カットイン
SE029 = playSe( spep_3 + 6, 1018 );

--飛行中オーラ
SE030 = playSe( spep_3 + 22, 1036,"",0.9 );
SE031 = playSe( spep_3 + 46, 1036,"",0.9 );
SE032 = playSe( spep_3 + 70, 1036,"",0.9 );


--白フェード
entryFade( spep_3 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_4 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 腕を振りかぶってパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
pannti = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, pannti, 0, 0, 0 );
setEffMoveKey( spep_5 + 104, pannti, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, pannti, 1.0, 1.0 );
setEffScaleKey( spep_5 + 104, pannti, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, pannti, 0 );
setEffRotateKey( spep_5 + 104, pannti, 0 );
setEffAlphaKey( spep_5 + 0, pannti, 255 );
setEffAlphaKey( spep_5 + 102, pannti, 255 );
setEffAlphaKey( spep_5 + 103, pannti, 255 );
setEffAlphaKey( spep_5 + 104, pannti, 0 );

--SE
--顔アップに
SE035 = playSe( spep_5 + 0, 1116 );
stopSe( spep_5 + 26, SE035, 18 );
SE036 = playSe( spep_5 + 0, 1004 );
setSeVolumeByWorkId( spep_5 + 0, SE036, 73 );
SE037 = playSe( spep_5 + 4, 1072 );
setTimeStretch( SE037, 1.6, 10, 1 );
SE038 = playSe( spep_5 + 16, 1182 );
setSeVolumeByWorkId( spep_5 + 18, SE038, 0 );
setSeVolumeByWorkId( spep_5 + 19, SE038, 4.5 );
setSeVolumeByWorkId( spep_5 + 20, SE038, 9 );
setSeVolumeByWorkId( spep_5 + 21, SE038, 13.5 );
setSeVolumeByWorkId( spep_5 + 22, SE038, 18 );
setSeVolumeByWorkId( spep_5 + 23, SE038, 22.5 );
setSeVolumeByWorkId( spep_5 + 24, SE038, 27 );
setSeVolumeByWorkId( spep_5 + 25, SE038, 31.5 );
setSeVolumeByWorkId( spep_5 + 26, SE038, 36 );
setSeVolumeByWorkId( spep_5 + 27, SE038, 40.5 );
setSeVolumeByWorkId( spep_5 + 28, SE038, 45 );
setSeVolumeByWorkId( spep_5 + 29, SE038, 49.5 );
setSeVolumeByWorkId( spep_5 + 30, SE038, 54 );
setSeVolumeByWorkId( spep_5 + 31, SE038, 58.5 );
setSeVolumeByWorkId( spep_5 + 32, SE038, 63 );
setSeVolumeByWorkId( spep_5 + 33, SE038, 67.5 );
setSeVolumeByWorkId( spep_5 + 34, SE038, 72 );
setSeVolumeByWorkId( spep_5 + 35, SE038, 76.5 );
setSeVolumeByWorkId( spep_5 + 36, SE038, 81 );
setSeVolumeByWorkId( spep_5 + 37, SE038, 85.5 );
setSeVolumeByWorkId( spep_5 + 38, SE038, 90 );
setSeVolumeByWorkId( spep_5 + 39, SE038, 94.5 );
setSeVolumeByWorkId( spep_5 + 40, SE038, 99 );
setTimeStretch( SE038, 1.33, 25, 4 );
SE039 = playSe( spep_5 + 22, 9 );
setSeVolumeByWorkId( spep_5 + 22, SE039, 0 );
setSeVolumeByWorkId( spep_5 + 23, SE039, 5.6 );
setSeVolumeByWorkId( spep_5 + 24, SE039, 11.2 );
setSeVolumeByWorkId( spep_5 + 25, SE039, 16.8 );
setSeVolumeByWorkId( spep_5 + 26, SE039, 22.4 );
setSeVolumeByWorkId( spep_5 + 27, SE039, 28 );
setSeVolumeByWorkId( spep_5 + 28, SE039, 33.6 );
setSeVolumeByWorkId( spep_5 + 29, SE039, 39.2 );
setSeVolumeByWorkId( spep_5 + 30, SE039, 44.8 );
setSeVolumeByWorkId( spep_5 + 31, SE039, 50.4 );
setSeVolumeByWorkId( spep_5 + 32, SE039, 56 );
setSeVolumeByWorkId( spep_5 + 33, SE039, 61.6 );
setSeVolumeByWorkId( spep_5 + 34, SE039, 67.2 );
setSeVolumeByWorkId( spep_5 + 35, SE039, 72.8 );
setSeVolumeByWorkId( spep_5 + 36, SE039, 78.4 );
setSeVolumeByWorkId( spep_5 + 37, SE039, 84 );
setSeVolumeByWorkId( spep_5 + 38, SE039, 89.6 );
setSeVolumeByWorkId( spep_5 + 39, SE039, 95.2 );
setSeVolumeByWorkId( spep_5 + 40, SE039, 100 );

--振りかぶる
SE040 = playSe( spep_5 + 72, 1117 );
stopSe( spep_5 + 86, SE040, 8 );
SE041 = playSe( spep_5 + 84, 1116 );
setSeVolumeByWorkId( spep_5 + 84, SE041, 70 );
SE042 = playSe( spep_5 + 100, 1003 );
stopSe( spep_5 + 104, SE041, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 104;
------------------------------------------------------
-- パンチが敵にヒットし吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 130, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 130, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 130, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 130, finish_b, 255 );

--書き文字
ctbago2 = entryEffectLife( spep_6-3 + 8,  10021, 18, 0x100, -1, 0, 146.3, 291.2 );--バゴォッ
setEffShake( spep_6-3 + 8, ctbago2, 18, 10 );
setEffMoveKey( spep_6-3 + 8, ctbago2, 146.3, 291.2 , 0 );
setEffMoveKey( spep_6-3 + 10, ctbago2, 271.9, 123.4 , 0 );
setEffMoveKey( spep_6-3 + 12, ctbago2, 170.2, 252.1 , 0 );
setEffMoveKey( spep_6-3 + 14, ctbago2, 96.3, 251.9 , 0 );
setEffMoveKey( spep_6-3 + 16, ctbago2, 170.3, 290 , 0 );
setEffMoveKey( spep_6-3 + 18, ctbago2, 178.1, 292 , 0 );
setEffMoveKey( spep_6-3 + 20, ctbago2, 153.2, 282.7 , 0 );
setEffMoveKey( spep_6-3 + 22, ctbago2, 128.5, 273.6 , 0 );
setEffMoveKey( spep_6-3 + 24, ctbago2, 146.4, 249.4 , 0 );
setEffMoveKey( spep_6-3 + 26, ctbago2, 143, 248 , 0 );

setEffScaleKey( spep_6-3 + 8, ctbago2, 2.19, 2.19 );
setEffScaleKey( spep_6-3 + 10, ctbago2, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 12, ctbago2, 3.41, 3.41 );
setEffScaleKey( spep_6-3 + 14, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 16, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 18, ctbago2, 2.85, 2.85 );
setEffScaleKey( spep_6-3 + 20, ctbago2, 2.92, 2.92 );
setEffScaleKey( spep_6-3 + 22, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 24, ctbago2, 3.01, 3.01 );
setEffScaleKey( spep_6-3 + 26, ctbago2, 3.03, 3.03 );

setEffRotateKey( spep_6-3 + 8, ctbago2, 44.7 );
setEffRotateKey( spep_6-3 + 10, ctbago2, 10.1 );
setEffRotateKey( spep_6-3 + 12, ctbago2, 25.1 );
setEffRotateKey( spep_6-3 + 14, ctbago2, 19.8 );
setEffRotateKey( spep_6-3 + 16, ctbago2, 30 );
setEffRotateKey( spep_6-3 + 18, ctbago2, 22.4 );
setEffRotateKey( spep_6-3 + 26, ctbago2, 22.4 );

setEffAlphaKey( spep_6-3 + 8, ctbago2, 255 );
setEffAlphaKey( spep_6-3 + 22, ctbago2, 255 );
setEffAlphaKey( spep_6-3 + 24, ctbago2, 170 );
setEffAlphaKey( spep_6-3 + 26, ctbago2, 85 );

--敵の動き
setDisp( spep_6-3 + 8, 1, 1 );
setDisp( spep_6-1 + 26, 1, 0 );

changeAnime( spep_6-3 + 8, 1, 105 );

setMoveKey( spep_6-3 + 8, 1, 185.4, -161.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 190.3, -178.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 146.3, -210.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 152.8, -186.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 131.7, -173.9 , 0 );
setMoveKey( spep_6-3 + 18, 1, 122.6, -165.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 124.5, -167.3 , 0 );
setMoveKey( spep_6-3 + 22, 1, 129.2, -172.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 133.8, -177.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 138.4, -182.3 , 0 );
setMoveKey( spep_6-3 + 28, 1, 143, -186.6 , 0 );

setScaleKey( spep_6-3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_6-3 + 10, 1, 1.78, 1.69 );
setScaleKey( spep_6-3 + 12, 1, 1.29, 1.22 );
setScaleKey( spep_6-3 + 14, 1, 0.94, 0.9 );
setScaleKey( spep_6-3 + 16, 1, 0.69, 0.66 );
setScaleKey( spep_6-3 + 18, 1, 0.5, 0.48 );
setScaleKey( spep_6-3 + 20, 1, 0.4, 0.39 );
setScaleKey( spep_6-3 + 22, 1, 0.32, 0.32 );
setScaleKey( spep_6-3 + 24, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 26, 1, 0.19, 0.2 );
setScaleKey( spep_6-3 + 28, 1, 0.13, 0.15 );


setRotateKey( spep_6-3 + 8, 1, 35 );
setRotateKey( spep_6-3 + 10, 1, 60.1 );
setRotateKey( spep_6-3 + 12, 1, 72.5 );
setRotateKey( spep_6-3 + 14, 1, 81.4 );
setRotateKey( spep_6-3 + 16, 1, 88.5 );
setRotateKey( spep_6-3 + 18, 1, 94.3 );
setRotateKey( spep_6-3 + 20, 1, 99.2 );
setRotateKey( spep_6-3 + 22, 1, 103.4 );
setRotateKey( spep_6-3 + 24, 1, 107.1 );
setRotateKey( spep_6-3 + 26, 1, 110.2 );
setRotateKey( spep_6-3 + 28, 1, 112.9 );

--SE
--ラストパンチ
SE043 = playSe( spep_6 + 0, 1120 );
setSeVolumeByWorkId( spep_6 + 0, SE043, 79 );
SE044 = playSe( spep_6 + 0, 1187 );
setSeVolumeByWorkId( spep_6 + 0, SE044, 65 );

--ラストオーラ
SE045 = playSe( spep_6 + 12, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 12, SE045, 50 );
SE048 = playSe( spep_6 + 36, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 36, SE048, 50 );
SE049 = playSe( spep_6 + 60, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 60, SE049, 50 );
SE050 = playSe( spep_6 + 84, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 84, SE050, 50 );
SE051 = playSe( spep_6 + 108, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 108, SE051, 50 );

--爆発
SE046 = playSe( spep_6 + 26, 1023 );
setSeVolumeByWorkId( spep_6 + 26, SE046, 78 );
SE047 = playSe( spep_6 + 32, 1024 );
setSeVolumeByWorkId( spep_6 + 32, SE047, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +26 );
endPhase( spep_6 + 120 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構える→移動
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, ready_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ready_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready_f, 0 );
setEffRotateKey( spep_0 + 80, ready_f, 0 );
setEffAlphaKey( spep_0 + 0, ready_f, 255 );
setEffAlphaKey( spep_0 + 78, ready_f, 255 );
setEffAlphaKey( spep_0 + 79, ready_f, 255 );
setEffAlphaKey( spep_0 + 80, ready_f, 0 );

-- ** エフェクト等 ** --
ready_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, ready_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ready_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready_b, 0 );
setEffRotateKey( spep_0 + 80, ready_b, 0 );
setEffAlphaKey( spep_0 + 0, ready_b, 255 );
setEffAlphaKey( spep_0 + 78, ready_b, 255 );
setEffAlphaKey( spep_0 + 79, ready_b, 255 );
setEffAlphaKey( spep_0 + 80, ready_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 100 );

f=-20;
g=20;

setMoveKey( spep_0 + 0, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 1, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 2, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 3, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 4, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 5, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 6, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 50, 1, 193.9+f, -120.3+g , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 1, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 3, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1, 1 );
setScaleKey( spep_0 + 5, 1, 1, 1 );
setScaleKey( spep_0 + 6, 1, 1, 1 );
setScaleKey( spep_0 + 50, 1, 1, 1 );

setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 50, 1, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.9 );
SE004 = playSe( spep_0 + 24, 1036,"",0.9 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 33 );
stopSe( spep_0 + 76, SE002, 12 );

--イナヅマ
SE003 = playSe( spep_0 + 0, 1147 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 59 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 193.9+f, -120.3+g , 0 );
    setScaleKey( SP_dodge+9, 1, 1, 1 );
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
setMoveKey( spep_0 + 58, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0 + 60, 1, 196.5+f, -115.6+g , 0 );
setMoveKey( spep_0 + 62, 1, 193.3+f, -120.9+g , 0 );
setMoveKey( spep_0 + 64, 1, 192.3+f, -117.8+g , 0 );
setMoveKey( spep_0 + 66, 1, 194.1+f, -120.6+g , 0 );
setMoveKey( spep_0 + 68, 1, 195.5+f, -118+g , 0 );
setMoveKey( spep_0 + 70, 1, 193+f, -119.8+g , 0 );
setMoveKey( spep_0 + 72, 1, 193.9+f, -120.3+g , 0 );
setMoveKey( spep_0-1 + 80, 1, 193.9+f, -120.3+g , 0 );

setScaleKey( spep_0-1 + 80, 1, 1, 1 );

setRotateKey( spep_0-1 + 80, 1, 0 );

--書き文字
ctsyun = entryEffectLife( spep_0-3 + 58,  10011, 20, 0x100, -1, 0, -83.4, 297.9 );--シュンッ
setEffShake( spep_0-3 + 58, ctsyun, 20, 10 );
setEffMoveKey( spep_0-3 + 58, ctsyun, -83.4, 297.9 , 0 );
setEffMoveKey( spep_0-3 + 60, ctsyun, -99.4, 298.5 , 0 );
setEffMoveKey( spep_0-3 + 62, ctsyun, -119.3, 283.6 , 0 );
setEffMoveKey( spep_0-3 + 64, ctsyun, -113.5, 290.5 , 0 );
setEffMoveKey( spep_0-3 + 66, ctsyun, -114.1, 289.4 , 0 );
setEffMoveKey( spep_0-3 + 68, ctsyun, -115.1, 290.3 , 0 );
setEffMoveKey( spep_0-3 + 70, ctsyun, -120.1, 293.9 , 0 );
setEffMoveKey( spep_0-3 + 72, ctsyun, -124.9, 295.6 , 0 );
setEffMoveKey( spep_0-3 + 74, ctsyun, -121.1, 291.6 , 0 );
setEffMoveKey( spep_0-3 + 76, ctsyun, -130.8, 285.7 , 0 );
setEffMoveKey( spep_0-3 + 78, ctsyun, -144.3, 282.7 , 0 );

setEffScaleKey( spep_0-3 + 58, ctsyun, 0.55, 0.55 );
setEffScaleKey( spep_0-3 + 60, ctsyun, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 62, ctsyun, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 64, ctsyun, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 66, ctsyun, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 70, ctsyun, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 72, ctsyun, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 74, ctsyun, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 76, ctsyun, 2.39, 2.39 );
setEffScaleKey( spep_0-3 + 78, ctsyun, 2.9, 2.9 );

setEffRotateKey( spep_0-3 + 58, ctsyun, -22.8 );
setEffRotateKey( spep_0-3 + 60, ctsyun, -21.4 );
setEffRotateKey( spep_0-3 + 62, ctsyun, -19.9 );
setEffRotateKey( spep_0-3 + 64, ctsyun, -21.4 );
setEffRotateKey( spep_0-3 + 66, ctsyun, -23 );
setEffRotateKey( spep_0-3 + 68, ctsyun, -21.9 );
setEffRotateKey( spep_0-3 + 70, ctsyun, -20.8 );
setEffRotateKey( spep_0-3 + 72, ctsyun, -21.9 );
setEffRotateKey( spep_0-3 + 74, ctsyun, -23 );
setEffRotateKey( spep_0-3 + 78, ctsyun, -23 );

setEffAlphaKey( spep_0-3 + 58, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 72, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 74, ctsyun, 170 );
setEffAlphaKey( spep_0-3 + 76, ctsyun, 86 );
setEffAlphaKey( spep_0-3 + 78, ctsyun, 1 );

--SE
--オーラ
SE005 = playSe( spep_0 + 48, 1036,"",0.9 );

--瞬間移動
SE006 = playSe( spep_0 + 62, 1109 );

--次の準備
spep_1=spep_0+80;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 160, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 158, fighting_f, 255 );
setEffAlphaKey( spep_1 + 159, fighting_f, 255 );
setEffAlphaKey( spep_1 + 160, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 160, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 160, fighting_b, 255 );
setEffAlphaKey( spep_1 + 161, fighting_b, 0 );
setEffAlphaKey( spep_1 + 162, fighting_b, 0 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fighting_n, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 160, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 160, fighting_n, 255 );
setEffAlphaKey( spep_1 + 161, fighting_n, 0 );
setEffAlphaKey( spep_1 + 162, fighting_n, 0 );

--書き文字
ctsyun2 = entryEffectLife( spep_1-3 + 6,  10011, 22, 0x100, -1, 0, 5.2, 114.6 );
setEffShake( spep_1-3 + 6, ctsyun2, 22, 10 );
setEffMoveKey( spep_1-3 + 6, ctsyun2, 5.2, 114.6 , 0 );
setEffMoveKey( spep_1-3 + 8, ctsyun2, -10.7, 115.2 , 0 );
setEffMoveKey( spep_1-3 + 10, ctsyun2, -30.6, 100.3 , 0 );
setEffMoveKey( spep_1-3 + 12, ctsyun2, -24.8, 107.2 , 0 );
setEffMoveKey( spep_1-3 + 14, ctsyun2, -25.4, 106 , 0 );
setEffMoveKey( spep_1-3 + 16, ctsyun2, -26.4, 107 , 0 );
setEffMoveKey( spep_1-3 + 18, ctsyun2, -31.5, 110.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctsyun2, -36.3, 112.2 , 0 );
setEffMoveKey( spep_1-3 + 22, ctsyun2, -32.4, 108.3 , 0 );
setEffMoveKey( spep_1-3 + 24, ctsyun2, -42.2, 102.3 , 0 );
setEffMoveKey( spep_1-3 + 28, ctsyun2, -55.7, 99.4 , 0 );

setEffScaleKey( spep_1-3 + 6, ctsyun2, 0.55, 0.55 );
setEffScaleKey( spep_1-3 + 8, ctsyun2, 1.2, 1.2 );
setEffScaleKey( spep_1-3 + 10, ctsyun2, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 12, ctsyun2, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 14, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 18, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 20, ctsyun2, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 22, ctsyun2, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 24, ctsyun2, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 28, ctsyun2, 2.9, 2.9 );

setEffRotateKey( spep_1-3 + 6, ctsyun2, -22.8 );
setEffRotateKey( spep_1-3 + 8, ctsyun2, -21.4 );
setEffRotateKey( spep_1-3 + 10, ctsyun2, -19.9 );
setEffRotateKey( spep_1-3 + 12, ctsyun2, -21.4 );
setEffRotateKey( spep_1-3 + 14, ctsyun2, -23 );
setEffRotateKey( spep_1-3 + 16, ctsyun2, -21.9 );
setEffRotateKey( spep_1-3 + 18, ctsyun2, -20.8 );
setEffRotateKey( spep_1-3 + 20, ctsyun2, -21.9 );
setEffRotateKey( spep_1-3 + 22, ctsyun2, -23 );
setEffRotateKey( spep_1-3 + 28, ctsyun2, -23 );

setEffAlphaKey( spep_1-3 + 6, ctsyun2, 255 );
setEffAlphaKey( spep_1-3 + 20, ctsyun2, 255 );
setEffAlphaKey( spep_1-3 + 22, ctsyun2, 170 );
setEffAlphaKey( spep_1-3 + 24, ctsyun2, 86 );
setEffAlphaKey( spep_1-3 + 26, ctsyun2, 1 );
setEffAlphaKey( spep_1-3 + 28, ctsyun2, 0 );

--書き文字
ctbaki = entryEffectLife( spep_1-3 + 48,  10020, 20, 0x100, -1, 0, 21.7, 296.9 );--バキッ
setEffShake( spep_1-3 + 48, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 48, ctbaki, 21.7, 296.9 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, 131.3, 213.8 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, 45.6, 265.9 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, 5.4, 257.5 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, 38.4, 291.9 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, 45.9, 294.7 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbaki, 32.8, 284.9 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbaki, 19.8, 275.2 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbaki, 33.9, 263.7 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbaki, 32, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbaki, 32.1, 249.5 , 0 );

setEffScaleKey( spep_1-3 + 48, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 58, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 60, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1-3 + 62, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 64, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 66, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 68, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 48, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 50, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 52, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 54, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 56, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 58, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 66, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 68, ctbaki, 7.5 );

setEffAlphaKey( spep_1-3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 62, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 64, ctbaki, 170 );
setEffAlphaKey( spep_1-3 + 66, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 68, ctbaki, 0 );

--書き文字
ctbago = entryEffectLife( spep_1-3 + 108,  10021, 18, 0x100, -1, 0, 151.5, 292.2 );--バゴォッ
setEffShake( spep_1-3 + 108, ctbago, 18, 10 );
setEffMoveKey( spep_1-3 + 108, ctbago, 151.5, 292.2 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbago, 245, 166.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbago, 169.3, 262.8 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbago, 114, 262.9 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbago, 169.5, 291.2 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbago, 175.3, 292.7 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbago, 156.7, 285.8 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbago, 138.2, 279 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbago, 151.5, 260.9 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbago, 149, 259.9 , 0 );

setEffScaleKey( spep_1-3 + 108, ctbago, 1.64, 1.64 );
setEffScaleKey( spep_1-3 + 110, ctbago, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 112, ctbago, 2.55, 2.55 );
setEffScaleKey( spep_1-3 + 114, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 116, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 118, ctbago, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 120, ctbago, 2.18, 2.18 );
setEffScaleKey( spep_1-3 + 122, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 124, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 126, ctbago, 2.26, 2.26 );

setEffRotateKey( spep_1-3 + 108, ctbago, 44.9 );
setEffRotateKey( spep_1-3 + 110, ctbago, 10.3 );
setEffRotateKey( spep_1-3 + 112, ctbago, 25.3 );
setEffRotateKey( spep_1-3 + 114, ctbago, 20 );
setEffRotateKey( spep_1-3 + 116, ctbago, 30.2 );
setEffRotateKey( spep_1-3 + 118, ctbago, 22.6 );
setEffRotateKey( spep_1-3 + 126, ctbago, 22.6 );

setEffAlphaKey( spep_1-3 + 108, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 122, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 124, ctbago, 170 );
setEffAlphaKey( spep_1-3 + 126, ctbago, 85 );

--敵の動き
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 48, 1, 106 );
changeAnime( spep_1-3 + 108, 1, 8 );
changeAnime( spep_1-3 + 114, 1, 105 );

--敵の動き
b=65;

setMoveKey( spep_1 + 0, 1, 124.5, -121+b , 0 );
setMoveKey( spep_1-3 + 47, 1, 124.5, -121+b , 0 );

setMoveKey( spep_1-3 + 48, 1, -43, 53.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, -35.1, 72.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, -76.4, 52 , 0 );
setMoveKey( spep_1-3 + 54, 1, -58.3, 50.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, -97, 87.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, -83.8, 78.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, -93.1, 78.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, -95.2, 77.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, -101.8, 81.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, -103.4, 84.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, -104.9, 83.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, -106.8, 82 , 0 );
setMoveKey( spep_1-3 + 72, 1, -111.3, 84.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -115.9, 86.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, -119.5, 86.6 , 0 );
setMoveKey( spep_1-3 + 78, 1, -123.2, 86.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, -124.6, 86.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, -125.5, 87.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, -126.3, 87.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, -127.2, 88.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, -128.1, 89.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, -128.9, 89.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, -129.8, 90.4 , 0 );
setMoveKey( spep_1-3 + 94, 1, -130.7, 91 , 0 );
setMoveKey( spep_1-3 + 96, 1, -131.5, 91.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, -132.4, 92.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, -133.3, 93 , 0 );
setMoveKey( spep_1-3 + 102, 1, -134.1, 93.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, -135, 94.3 , 0 );
setMoveKey( spep_1-3 + 107, 1, -135.9, 94.9 , 0 );
setMoveKey( spep_1-3 + 108, 1, -107.5, 137.6 , 0 );
setMoveKey( spep_1-3 + 110, 1, -144.4, 93.3 , 0 );
setMoveKey( spep_1-3 + 113, 1, -132.5, 130.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, -172, 142.5 , 0 );
setMoveKey( spep_1-3 + 116, 1, -194.2, 145.3 , 0 );
setMoveKey( spep_1-3 + 118, 1, -210.1, 189.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, -193, 186.5 , 0 );
setMoveKey( spep_1-3 + 122, 1, -209.3, 191.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, -207.2, 201.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, -213.6, 209.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, -215.1, 210.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, -216.8, 211.6 , 0 );
setMoveKey( spep_1-3 + 132, 1, -217, 215.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, -217.2, 219.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, -217.7, 220.2 , 0 );
setMoveKey( spep_1-3 + 138, 1, -218.3, 221 , 0 );
setMoveKey( spep_1-3 + 140, 1, -222, 224.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, -225.7, 227.3 , 0 );
setMoveKey( spep_1-3 + 144, 1, -225.5, 229 , 0 );
setMoveKey( spep_1-3 + 146, 1, -225.3, 230.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, -225.1, 230.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, -224.5, 229.2 , 0 );
setMoveKey( spep_1-3 + 152, 1, -227.4, 228.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, -229.8, 228.6 , 0 );
setMoveKey( spep_1-3 + 156, 1, -227.5, 232.9 , 0 );
setMoveKey( spep_1-1 + 160, 1, -224.6, 236.6 , 0 );

a=0.2;

setScaleKey( spep_1 + 0, 1, 1.9+a, 1.9+a );
setScaleKey( spep_1-3 + 107, 1, 1.9+a, 1.9+a );
setScaleKey( spep_1-3 + 108, 1, 1.89+a, 1.85+a );
setScaleKey( spep_1-3 + 110, 1, 1.89+a, 1.85+a );
setScaleKey( spep_1-3 + 113, 1, 1.9+a, 1.86+a );
setScaleKey( spep_1-3 + 114, 1, 1.43+a, 1.41+a );
setScaleKey( spep_1-3 + 116, 1, 1.25+a, 1.24+a );
setScaleKey( spep_1-3 + 118, 1, 1.12+a, 1.12+a );
setScaleKey( spep_1-3 + 120, 1, 1.01+a, 1.01+a );
setScaleKey( spep_1-3 + 122, 1, 0.92, 0.93 );
setScaleKey( spep_1-3 + 124, 1, 0.84, 0.85 );
setScaleKey( spep_1-3 + 126, 1, 0.77, 0.78 );
setScaleKey( spep_1-3 + 128, 1, 0.71, 0.72 );
setScaleKey( spep_1-3 + 130, 1, 0.65, 0.66 );
setScaleKey( spep_1-3 + 132, 1, 0.6, 0.61 );
setScaleKey( spep_1-3 + 134, 1, 0.55, 0.56 );
setScaleKey( spep_1-3 + 136, 1, 0.51, 0.52 );
setScaleKey( spep_1-3 + 138, 1, 0.46, 0.47 );
setScaleKey( spep_1-3 + 140, 1, 0.43, 0.44 );
setScaleKey( spep_1-3 + 142, 1, 0.39, 0.4 );
setScaleKey( spep_1-3 + 144, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 146, 1, 0.32, 0.33 );
setScaleKey( spep_1-3 + 148, 1, 0.29, 0.3 );
setScaleKey( spep_1-3 + 150, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 152, 1, 0.24, 0.25 );
setScaleKey( spep_1-3 + 154, 1, 0.22, 0.22 );
setScaleKey( spep_1-1 + 160, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 47, 1, 0 );
setRotateKey( spep_1-3 + 48, 1, -36 );
setRotateKey( spep_1-3 + 50, 1, -35.7 );
setRotateKey( spep_1-3 + 52, 1, -35.4 );
setRotateKey( spep_1-3 + 54, 1, -35.1 );
setRotateKey( spep_1-3 + 56, 1, -34.9 );
setRotateKey( spep_1-3 + 58, 1, -34.7 );
setRotateKey( spep_1-3 + 60, 1, -34.6 );
setRotateKey( spep_1-3 + 62, 1, -34.5 );
setRotateKey( spep_1-3 + 64, 1, -34.4 );
setRotateKey( spep_1-3 + 66, 1, -34.3 );
setRotateKey( spep_1-3 + 70, 1, -34.3 );
setRotateKey( spep_1-3 + 72, 1, -34.2 );
setRotateKey( spep_1-3 + 74, 1, -34.1 );
setRotateKey( spep_1-3 + 76, 1, -34 );
setRotateKey( spep_1-3 + 78, 1, -34 );
setRotateKey( spep_1-3 + 80, 1, -33.9 );
setRotateKey( spep_1-3 + 82, 1, -33.8 );
setRotateKey( spep_1-3 + 84, 1, -33.8 );
setRotateKey( spep_1-3 + 86, 1, -33.7 );
setRotateKey( spep_1-3 + 88, 1, -33.6 );
setRotateKey( spep_1-3 + 90, 1, -33.6 );
setRotateKey( spep_1-3 + 92, 1, -33.5 );
setRotateKey( spep_1-3 + 94, 1, -33.4 );
setRotateKey( spep_1-3 + 96, 1, -33.3 );
setRotateKey( spep_1-3 + 98, 1, -33.3 );
setRotateKey( spep_1-3 + 100, 1, -33.2 );
setRotateKey( spep_1-3 + 102, 1, -33.1 );
setRotateKey( spep_1-3 + 104, 1, -33.1 );
setRotateKey( spep_1-3 + 107, 1, -33 );
setRotateKey( spep_1-3 + 108, 1, 16 );
setRotateKey( spep_1-3 + 110, 1, 17 );
setRotateKey( spep_1-3 + 113, 1, 18 );
setRotateKey( spep_1-3 + 114, 1, -57.4 );
setRotateKey( spep_1-3 + 116, 1, -57.8 );
setRotateKey( spep_1-3 + 118, 1, -58.2 );
setRotateKey( spep_1-3 + 120, 1, -58.6 );
setRotateKey( spep_1-3 + 122, 1, -59 );
setRotateKey( spep_1-3 + 124, 1, -59.5 );
setRotateKey( spep_1-3 + 126, 1, -59.9 );
setRotateKey( spep_1-3 + 128, 1, -60.3 );
setRotateKey( spep_1-3 + 130, 1, -60.7 );
setRotateKey( spep_1-3 + 132, 1, -61.1 );
setRotateKey( spep_1-3 + 134, 1, -61.5 );
setRotateKey( spep_1-3 + 136, 1, -61.9 );
setRotateKey( spep_1-3 + 138, 1, -62.3 );
setRotateKey( spep_1-3 + 140, 1, -62.7 );
setRotateKey( spep_1-3 + 142, 1, -63.1 );
setRotateKey( spep_1-3 + 144, 1, -63.5 );
setRotateKey( spep_1-3 + 146, 1, -64 );
setRotateKey( spep_1-3 + 148, 1, -64.4 );
setRotateKey( spep_1-3 + 150, 1, -64.8 );
setRotateKey( spep_1-3 + 152, 1, -65.2 );
setRotateKey( spep_1-3 + 154, 1, -65.6 );
setRotateKey( spep_1-1 + 160, 1, -66 );

--SE
--イナヅマ
stopSe( spep_1 + 0, SE003, 16 );

--着地
SE007 = playSe( spep_1 + 2, 1192 );
setTimeStretch( SE007, 0.73, 10, 1 );
SE008 = playSe( spep_1 + 4, 1108 );
SE009 = playSe( spep_1 + 4, 1106 );

--裏拳
SE010 = playSe( spep_1 + 46, 1009 );
SE011 = playSe( spep_1 + 48, 1110 );

--回し蹴り
SE012 = playSe( spep_1 + 104, 1003 );
SE013 = playSe( spep_1 + 108, 1009 );
SE014 = playSe( spep_1 + 110, 1001 );
setSeVolumeByWorkId( spep_1 + 110, SE014, 63 );
SE015 = playSe( spep_1 + 110, 1187 );
setSeVolumeByWorkId( spep_1 + 110, SE015, 59 );
SE016 = playSe( spep_1 + 112, 1110 );

--敵飛んでいく
SE017 = playSe( spep_1 + 136, 1183 );
setSeVolumeByWorkId( spep_1 + 136, SE017, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+160;
------------------------------------------------------
-- 追撃（空中）
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_2 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, pursuit_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_f, 0 );
setEffRotateKey( spep_2 + 100, pursuit_f, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 100, pursuit_f, 255 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_2 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_b, 0 );
setEffRotateKey( spep_2 + 100, pursuit_b, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 100, pursuit_b, 255 );

--書き文字
ctsyun3 = entryEffectLife( spep_2-3 + 4,  10011, 16, 0x100, -1, 0, -104.8, 377.1 );--シュンッ
setEffShake( spep_2-3 + 4, ctsyun3, 16, 10 );
setEffMoveKey( spep_2-3 + 4, ctsyun3, -104.8, 377.1 , 0 );
setEffMoveKey( spep_2-3 + 6, ctsyun3, -120.7, 377.7 , 0 );
setEffMoveKey( spep_2-3 + 8, ctsyun3, -140.6, 362.8 , 0 );
setEffMoveKey( spep_2-3 + 10, ctsyun3, -134.8, 369.7 , 0 );
setEffMoveKey( spep_2-3 + 12, ctsyun3, -135.4, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 14, ctsyun3, -136.4, 369.5 , 0 );
setEffMoveKey( spep_2-3 + 16, ctsyun3, -141.5, 373.1 , 0 );
setEffMoveKey( spep_2-3 + 18, ctsyun3, -146.3, 374.8 , 0 );
setEffMoveKey( spep_2-3 + 20, ctsyun3, -142.4, 370.8 , 0 );

setEffScaleKey( spep_2-3 + 4, ctsyun3, 0.55, 0.55 );
setEffScaleKey( spep_2-3 + 6, ctsyun3, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 8, ctsyun3, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 10, ctsyun3, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 12, ctsyun3, 1.86, 1.86 );
setEffScaleKey( spep_2-3 + 16, ctsyun3, 1.86, 1.86 );
setEffScaleKey( spep_2-3 + 18, ctsyun3, 1.87, 1.87 );
setEffScaleKey( spep_2-3 + 20, ctsyun3, 1.87, 1.87 );

setEffRotateKey( spep_2-3 + 4, ctsyun3, -22.8 );
setEffRotateKey( spep_2-3 + 6, ctsyun3, -21.4 );
setEffRotateKey( spep_2-3 + 8, ctsyun3, -19.9 );
setEffRotateKey( spep_2-3 + 10, ctsyun3, -21.4 );
setEffRotateKey( spep_2-3 + 12, ctsyun3, -23 );
setEffRotateKey( spep_2-3 + 14, ctsyun3, -21.9 );
setEffRotateKey( spep_2-3 + 16, ctsyun3, -20.8 );
setEffRotateKey( spep_2-3 + 18, ctsyun3, -21.9 );
setEffRotateKey( spep_2-3 + 20, ctsyun3, -23 );

setEffAlphaKey( spep_2-3 + 4, ctsyun3, 255 );
setEffAlphaKey( spep_2-3 + 18, ctsyun3, 255 );
setEffAlphaKey( spep_2-3 + 20, ctsyun3, 170 );

--書き文字
ctbaki2 = entryEffectLife( spep_2-3 + 26,  10020, 20, 0x100, -1, 0, 4.2, 330.6 );--バキッ
setEffShake( spep_2-3 + 26, ctbaki2, 20, 10 );
setEffMoveKey( spep_2-3 + 26, ctbaki2, 4.2, 330.6 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki2, 113.8, 247.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki2, 28.1, 299.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki2, -12.1, 291.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki2, 20.9, 325.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki2, 28.4, 328.4 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki2, 15.3, 318.7 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki2, 2.3, 309 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki2, 16.4, 297.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki2, 14.5, 296 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki2, 14.6, 283.2 , 0 );

setEffScaleKey( spep_2-3 + 26, ctbaki2, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 28, ctbaki2, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 30, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 32, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 34, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 36, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_2-3 + 38, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 40, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 42, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 44, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_2-3 + 46, ctbaki2, 1.84, 1.84 );

setEffRotateKey( spep_2-3 + 26, ctbaki2, 29.9 );
setEffRotateKey( spep_2-3 + 28, ctbaki2, -4.7 );
setEffRotateKey( spep_2-3 + 30, ctbaki2, 10.3 );
setEffRotateKey( spep_2-3 + 32, ctbaki2, 5 );
setEffRotateKey( spep_2-3 + 34, ctbaki2, 15.2 );
setEffRotateKey( spep_2-3 + 36, ctbaki2, 7.6 );
setEffRotateKey( spep_2-3 + 44, ctbaki2, 7.6 );
setEffRotateKey( spep_2-3 + 46, ctbaki2, 7.5 );

setEffAlphaKey( spep_2-3 + 26, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 40, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbaki2, 170 );
setEffAlphaKey( spep_2-3 + 44, ctbaki2, 85 );
setEffAlphaKey( spep_2-3 + 46, ctbaki2, 0 );

--書き文字
ctgyun = entryEffectLife( spep_2-3 + 70,  10007, 28, 0x100, -1, 0, 124.8, 419.9 );--ギュンッ

setEffMoveKey( spep_2-3 + 70, ctgyun, 124.8, 419.9 , 0 );
setEffMoveKey( spep_2-3 + 72, ctgyun, 155.5, 284.2 , 0 );
setEffMoveKey( spep_2-3 + 74, ctgyun, -4.1, 369.1 , 0 );
setEffMoveKey( spep_2-3 + 76, ctgyun, 41.5, 373.5 , 0 );
setEffMoveKey( spep_2-3 + 78, ctgyun, 39.3, 426.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctgyun, 70.2, 396 , 0 );
setEffMoveKey( spep_2-3 + 82, ctgyun, 54.4, 396.6 , 0 );
setEffMoveKey( spep_2-3 + 84, ctgyun, 38.8, 397.2 , 0 );
setEffMoveKey( spep_2-3 + 86, ctgyun, 53.2, 379 , 0 );
setEffMoveKey( spep_2-3 + 88, ctgyun, 67, 399 , 0 );
setEffMoveKey( spep_2-3 + 90, ctgyun, 47.6, 403.9 , 0 );
setEffMoveKey( spep_2-3 + 92, ctgyun, 15, 414.6 , 0 );
setEffMoveKey( spep_2-3 + 94, ctgyun, -3.2, 402.5 , 0 );
setEffMoveKey( spep_2-3 + 96, ctgyun, -19.4, 409.3 , 0 );
setEffMoveKey( spep_2-3 + 98, ctgyun, -41.3, 404.5 , 0 );

setEffScaleKey( spep_2-3 + 70, ctgyun, 1.69, 1.69 );
setEffScaleKey( spep_2-3 + 72, ctgyun, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 74, ctgyun, 2.63, 2.63 );
setEffScaleKey( spep_2-3 + 76, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 78, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 80, ctgyun, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 82, ctgyun, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 84, ctgyun, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 86, ctgyun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 88, ctgyun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 90, ctgyun, 2.56, 2.56 );
setEffScaleKey( spep_2-3 + 92, ctgyun, 2.78, 2.78 );
setEffScaleKey( spep_2-3 + 94, ctgyun, 3, 3 );
setEffScaleKey( spep_2-3 + 96, ctgyun, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 98, ctgyun, 3.44, 3.44 );

setEffRotateKey( spep_2-3 + 70, ctgyun, 42.9 );
setEffRotateKey( spep_2-3 + 72, ctgyun, 8.3 );
setEffRotateKey( spep_2-3 + 74, ctgyun, 23.3 );
setEffRotateKey( spep_2-3 + 76, ctgyun, 18 );
setEffRotateKey( spep_2-3 + 78, ctgyun, 28.2 );
setEffRotateKey( spep_2-3 + 80, ctgyun, 20.6 );
setEffRotateKey( spep_2-3 + 98, ctgyun, 20.6 );

setEffAlphaKey( spep_2-3 + 70, ctgyun, 255 );
setEffAlphaKey( spep_2-3 + 84, ctgyun, 255 );
setEffAlphaKey( spep_2-3 + 86, ctgyun, 170 );
setEffAlphaKey( spep_2-3 + 88, ctgyun, 85 );
setEffAlphaKey( spep_2-3 + 90, ctgyun, 71 );
setEffAlphaKey( spep_2-3 + 92, ctgyun, 57 );
setEffAlphaKey( spep_2-3 + 94, ctgyun, 43 );
setEffAlphaKey( spep_2-3 + 96, ctgyun, 28 );
setEffAlphaKey( spep_2-3 + 98, ctgyun, 14 );

--敵の動き
setDisp( spep_2-1 + 98, 1, 0 );

changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2-3 + 26, 1, 108 );
changeAnime( spep_2-3 + 34, 1, 105 );

setMoveKey( spep_2 + 0, 1, 504.4, -421.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 467.5, -390 , 0 );
setMoveKey( spep_2-3 + 4, 1, 430.7, -358.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, 393.8, -326.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 356.9, -295.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 320.1, -263.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 283.2, -232.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 246.3, -200.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 209.5, -169 , 0 );
setMoveKey( spep_2-3 + 18, 1, 172.6, -137.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 135.8, -105.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 98.9, -74.3 , 0 );
setMoveKey( spep_2-3 + 25, 1, 62.1, -42.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, 109.4, 11.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 84, -12.6 , 0 );
setMoveKey( spep_2-3 + 30, 1, 113, -14.9 , 0 );
setMoveKey( spep_2-3 + 33, 1, 81, 18 , 0 );
setMoveKey( spep_2-3 + 34, 1, 108.5, -15.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 167.2, -27 , 0 );
setMoveKey( spep_2-3 + 38, 1, 204.9, -45.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 245.5, -48.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 279.4, -65.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 307.7, -74.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 334.8, -82.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 364, -93.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 392.5, -104 , 0 );
setMoveKey( spep_2-3 + 52, 1, 417.6, -112.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 442.1, -120.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 468.1, -129.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 493.7, -138.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 518.9, -146.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 543.7, -155.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 568.1, -163.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 568.1, -163.7 , 0 );
setMoveKey( spep_2-3 + 70, 1, 557.8, -167.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 588.7, -147.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, 558.4, -147.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 568.8, -168.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 574.3, -168.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 580.5, -162.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 577.4, -157.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 578.9, -160.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 577.4, -159 , 0 );
setMoveKey( spep_2-3 + 88, 1, 575.8, -159.8 , 0 );
setMoveKey( spep_2-3 + 90, 1, 574.3, -160.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 572.7, -159.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 571.2, -159 , 0 );
setMoveKey( spep_2-3 + 96, 1, 572.7, -158.3 , 0 );
setMoveKey( spep_2-1 + 98, 1, 574.3, -157.5 , 0 );

d=0.4;
setScaleKey( spep_2 + 0, 1, 1.9+d, 1.9+d );
setScaleKey( spep_2-3 + 33, 1, 1.9+d, 1.9+d );
setScaleKey( spep_2-3 + 34, 1, 1.8+d, 1.8+d );
setScaleKey( spep_2-3 + 36, 1, 1.27+d, 1.26+d );
setScaleKey( spep_2-3 + 38, 1, 1.08+d, 1.06+d );
--setScaleKey( spep_2-3 + 40, 1, 0.93, 0.91 );
--setScaleKey( spep_2-3 + 42, 1, 0.81, 0.8 );
--setScaleKey( spep_2-3 + 44, 1, 0.71, 0.7 );
--setScaleKey( spep_2-3 + 46, 1, 0.63, 0.61 );
--setScaleKey( spep_2-3 + 48, 1, 0.55, 0.54 );
--setScaleKey( spep_2-3 + 50, 1, 0.49, 0.47 );
--setScaleKey( spep_2-3 + 52, 1, 0.43, 0.42 );
--setScaleKey( spep_2-3 + 54, 1, 0.37, 0.36 );
--setScaleKey( spep_2-3 + 56, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 58, 1, 0.28, 0.27 );
setScaleKey( spep_2-3 + 60, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 62, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 64, 1, 0.17, 0.18 );
setScaleKey( spep_2-1 + 98, 1, 0.17, 0.18 );

setRotateKey( spep_2 + 0, 1, 12 );
--setRotateKey( spep_2-3 + 2, 1, 11 );
setRotateKey( spep_2-3 + 4, 1, 10 );
setRotateKey( spep_2-3 + 6, 1, 9 );
setRotateKey( spep_2-3 + 8, 1, 8 );
setRotateKey( spep_2-3 + 10, 1, 7 );
setRotateKey( spep_2-3 + 12, 1, 6 );
setRotateKey( spep_2-3 + 14, 1, 5 );
setRotateKey( spep_2-3 + 16, 1, 4 );
setRotateKey( spep_2-3 + 18, 1, 3 );
setRotateKey( spep_2-3 + 20, 1, 2 );
setRotateKey( spep_2-3 + 22, 1, 1 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, 26 );
setRotateKey( spep_2-3 + 33, 1, 26 );
setRotateKey( spep_2-3 + 34, 1, 79 );
setRotateKey( spep_2-3 + 36, 1, 79.7 );
setRotateKey( spep_2-3 + 38, 1, 80.3 );
setRotateKey( spep_2-3 + 40, 1, 81 );
setRotateKey( spep_2-3 + 42, 1, 81.7 );
setRotateKey( spep_2-3 + 44, 1, 82.3 );
setRotateKey( spep_2-3 + 46, 1, 83 );
setRotateKey( spep_2-3 + 48, 1, 83.7 );
setRotateKey( spep_2-3 + 50, 1, 84.3 );
setRotateKey( spep_2-3 + 52, 1, 85 );
setRotateKey( spep_2-3 + 54, 1, 85.7 );
setRotateKey( spep_2-3 + 56, 1, 86.3 );
setRotateKey( spep_2-3 + 58, 1, 87 );
setRotateKey( spep_2-3 + 60, 1, 87.7 );
setRotateKey( spep_2-3 + 62, 1, 88.3 );
setRotateKey( spep_2-3 + 64, 1, 89 );
setRotateKey( spep_2-1 + 98, 1, 89 );

--SE
--瞬間移動
SE018 = playSe( spep_2 + 2, 1109 );

--エルボ
SE019 = playSe( spep_2 + 24, 1010 );
SE020 = playSe( spep_2 + 24, 1187 );
setSeVolumeByWorkId( spep_2 + 24, SE020, 75 );
stopSe( spep_2 + 36, SE020, 28 );
SE021 = playSe( spep_2 + 28, 1006 );

--飛んでいく
SE022 = playSe( spep_2 + 66, 1116 );
stopSe( spep_2 + 84, SE022, 18 );
SE023 = playSe( spep_2 + 66, 1182 );
setSeVolumeByWorkId( spep_2 + 66, SE023, 112 );

--前方飛行
SE024 = playSe( spep_2 + 88, 9 );
setTimeStretch( SE024, 1.26, 10, 1 );
SE025 = playSe( spep_2 + 88, 1019 );
SE026 = playSe( spep_2 + 88, 1278 );
setSeVolumeByWorkId( spep_2 + 88, SE026, 60 );
setTimeStretch( SE026, 1.11, 10, 1 );

--飛行中オーラ
SE027 = playSe( spep_2 + 94, 1036,"",0.9 );

--飛行中イナヅマ
SE028 = playSe( spep_2 + 94, 1148 );
setSeVolumeByWorkId( spep_2 + 94, SE028, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+96;
------------------------------------------------------
-- 敵に向かって突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
heading = entryEffect( spep_3 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, heading, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, heading, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, heading, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, heading, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, heading, 0 );
setEffRotateKey( spep_3 + 100, heading, 0 );
setEffAlphaKey( spep_3 + 0, heading, 255 );
setEffAlphaKey( spep_3 + 100, heading, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +12, 190006, 72, 0x100, -1, 0, 80, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +12,  ctgogo,  80,  510);
setEffMoveKey(  spep_3 +84,  ctgogo, 80,  510);

setEffAlphaKey( spep_3 +12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 120 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey(  spep_3 +12,  ctgogo,  0);
setEffRotateKey(  spep_3 +84,  ctgogo,  0);

setEffScaleKey(  spep_3 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo, -1.07, 1.07);

--SE
--前方飛行
stopSe( spep_3 + 98, SE024, 0 );
stopSe( spep_3 + 98, SE025, 0 );
stopSe( spep_3 + 82, SE026, 16 );

--飛行中イナヅマ
stopSe( spep_3 + 94, SE028, 0 );

--顔カットイン
--SE029 = playSe( spep_3 + 6, 1018 );

--飛行中オーラ
SE030 = playSe( spep_3 + 22, 1036,"",0.9 );
SE031 = playSe( spep_3 + 46, 1036,"",0.9 );
SE032 = playSe( spep_3 + 70, 1036,"",0.9 );


--白フェード
entryFade( spep_3 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 腕を振りかぶってパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
pannti = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, pannti, 0, 0, 0 );
setEffMoveKey( spep_5 + 104, pannti, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, pannti, -1.0, 1.0 );
setEffScaleKey( spep_5 + 104, pannti, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, pannti, 0 );
setEffRotateKey( spep_5 + 104, pannti, 0 );
setEffAlphaKey( spep_5 + 0, pannti, 255 );
setEffAlphaKey( spep_5 + 102, pannti, 255 );
setEffAlphaKey( spep_5 + 103, pannti, 255 );
setEffAlphaKey( spep_5 + 104, pannti, 0 );

--SE
--顔アップに
SE035 = playSe( spep_5 + 0, 1116 );
stopSe( spep_5 + 26, SE035, 18 );
SE036 = playSe( spep_5 + 0, 1004 );
setSeVolumeByWorkId( spep_5 + 0, SE036, 73 );
SE037 = playSe( spep_5 + 4, 1072 );
setTimeStretch( SE037, 1.6, 10, 1 );
SE038 = playSe( spep_5 + 16, 1182 );
setSeVolumeByWorkId( spep_5 + 18, SE038, 0 );
setSeVolumeByWorkId( spep_5 + 19, SE038, 4.5 );
setSeVolumeByWorkId( spep_5 + 20, SE038, 9 );
setSeVolumeByWorkId( spep_5 + 21, SE038, 13.5 );
setSeVolumeByWorkId( spep_5 + 22, SE038, 18 );
setSeVolumeByWorkId( spep_5 + 23, SE038, 22.5 );
setSeVolumeByWorkId( spep_5 + 24, SE038, 27 );
setSeVolumeByWorkId( spep_5 + 25, SE038, 31.5 );
setSeVolumeByWorkId( spep_5 + 26, SE038, 36 );
setSeVolumeByWorkId( spep_5 + 27, SE038, 40.5 );
setSeVolumeByWorkId( spep_5 + 28, SE038, 45 );
setSeVolumeByWorkId( spep_5 + 29, SE038, 49.5 );
setSeVolumeByWorkId( spep_5 + 30, SE038, 54 );
setSeVolumeByWorkId( spep_5 + 31, SE038, 58.5 );
setSeVolumeByWorkId( spep_5 + 32, SE038, 63 );
setSeVolumeByWorkId( spep_5 + 33, SE038, 67.5 );
setSeVolumeByWorkId( spep_5 + 34, SE038, 72 );
setSeVolumeByWorkId( spep_5 + 35, SE038, 76.5 );
setSeVolumeByWorkId( spep_5 + 36, SE038, 81 );
setSeVolumeByWorkId( spep_5 + 37, SE038, 85.5 );
setSeVolumeByWorkId( spep_5 + 38, SE038, 90 );
setSeVolumeByWorkId( spep_5 + 39, SE038, 94.5 );
setSeVolumeByWorkId( spep_5 + 40, SE038, 99 );
setTimeStretch( SE038, 1.33, 25, 4 );
SE039 = playSe( spep_5 + 22, 9 );
setSeVolumeByWorkId( spep_5 + 22, SE039, 0 );
setSeVolumeByWorkId( spep_5 + 23, SE039, 5.6 );
setSeVolumeByWorkId( spep_5 + 24, SE039, 11.2 );
setSeVolumeByWorkId( spep_5 + 25, SE039, 16.8 );
setSeVolumeByWorkId( spep_5 + 26, SE039, 22.4 );
setSeVolumeByWorkId( spep_5 + 27, SE039, 28 );
setSeVolumeByWorkId( spep_5 + 28, SE039, 33.6 );
setSeVolumeByWorkId( spep_5 + 29, SE039, 39.2 );
setSeVolumeByWorkId( spep_5 + 30, SE039, 44.8 );
setSeVolumeByWorkId( spep_5 + 31, SE039, 50.4 );
setSeVolumeByWorkId( spep_5 + 32, SE039, 56 );
setSeVolumeByWorkId( spep_5 + 33, SE039, 61.6 );
setSeVolumeByWorkId( spep_5 + 34, SE039, 67.2 );
setSeVolumeByWorkId( spep_5 + 35, SE039, 72.8 );
setSeVolumeByWorkId( spep_5 + 36, SE039, 78.4 );
setSeVolumeByWorkId( spep_5 + 37, SE039, 84 );
setSeVolumeByWorkId( spep_5 + 38, SE039, 89.6 );
setSeVolumeByWorkId( spep_5 + 39, SE039, 95.2 );
setSeVolumeByWorkId( spep_5 + 40, SE039, 100 );

--振りかぶる
SE040 = playSe( spep_5 + 72, 1117 );
stopSe( spep_5 + 86, SE040, 8 );
SE041 = playSe( spep_5 + 84, 1116 );
setSeVolumeByWorkId( spep_5 + 84, SE041, 70 );
SE042 = playSe( spep_5 + 100, 1003 );
stopSe( spep_5 + 104, SE041, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 104;
------------------------------------------------------
-- パンチが敵にヒットし吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 130, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 130, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 130, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 130, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 130, finish_b, 255 );

--書き文字
ctbago2 = entryEffectLife( spep_6-3 + 8,  10021, 18, 0x100, -1, 0, 146.3, 291.2 );--バゴォッ
setEffShake( spep_6-3 + 8, ctbago2, 18, 10 );
setEffMoveKey( spep_6-3 + 8, ctbago2, 146.3, 291.2 , 0 );
setEffMoveKey( spep_6-3 + 10, ctbago2, 271.9, 123.4 , 0 );
setEffMoveKey( spep_6-3 + 12, ctbago2, 170.2, 252.1 , 0 );
setEffMoveKey( spep_6-3 + 14, ctbago2, 96.3, 251.9 , 0 );
setEffMoveKey( spep_6-3 + 16, ctbago2, 170.3, 290 , 0 );
setEffMoveKey( spep_6-3 + 18, ctbago2, 178.1, 292 , 0 );
setEffMoveKey( spep_6-3 + 20, ctbago2, 153.2, 282.7 , 0 );
setEffMoveKey( spep_6-3 + 22, ctbago2, 128.5, 273.6 , 0 );
setEffMoveKey( spep_6-3 + 24, ctbago2, 146.4, 249.4 , 0 );
setEffMoveKey( spep_6-3 + 26, ctbago2, 143, 248 , 0 );

setEffScaleKey( spep_6-3 + 8, ctbago2, 2.19, 2.19 );
setEffScaleKey( spep_6-3 + 10, ctbago2, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 12, ctbago2, 3.41, 3.41 );
setEffScaleKey( spep_6-3 + 14, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 16, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 18, ctbago2, 2.85, 2.85 );
setEffScaleKey( spep_6-3 + 20, ctbago2, 2.92, 2.92 );
setEffScaleKey( spep_6-3 + 22, ctbago2, 2.99, 2.99 );
setEffScaleKey( spep_6-3 + 24, ctbago2, 3.01, 3.01 );
setEffScaleKey( spep_6-3 + 26, ctbago2, 3.03, 3.03 );

setEffRotateKey( spep_6-3 + 8, ctbago2, 44.7 );
setEffRotateKey( spep_6-3 + 10, ctbago2, 10.1 );
setEffRotateKey( spep_6-3 + 12, ctbago2, 25.1 );
setEffRotateKey( spep_6-3 + 14, ctbago2, 19.8 );
setEffRotateKey( spep_6-3 + 16, ctbago2, 30 );
setEffRotateKey( spep_6-3 + 18, ctbago2, 22.4 );
setEffRotateKey( spep_6-3 + 26, ctbago2, 22.4 );

setEffAlphaKey( spep_6-3 + 8, ctbago2, 255 );
setEffAlphaKey( spep_6-3 + 22, ctbago2, 255 );
setEffAlphaKey( spep_6-3 + 24, ctbago2, 170 );
setEffAlphaKey( spep_6-3 + 26, ctbago2, 85 );

--敵の動き
setDisp( spep_6-3 + 8, 1, 1 );
setDisp( spep_6-1 + 26, 1, 0 );

changeAnime( spep_6-3 + 8, 1, 105 );

setMoveKey( spep_6-3 + 8, 1, 185.4, -161.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 190.3, -178.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 146.3, -210.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 152.8, -186.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 131.7, -173.9 , 0 );
setMoveKey( spep_6-3 + 18, 1, 122.6, -165.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 124.5, -167.3 , 0 );
setMoveKey( spep_6-3 + 22, 1, 129.2, -172.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 133.8, -177.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 138.4, -182.3 , 0 );
setMoveKey( spep_6-3 + 28, 1, 143, -186.6 , 0 );

setScaleKey( spep_6-3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_6-3 + 10, 1, 1.78, 1.69 );
setScaleKey( spep_6-3 + 12, 1, 1.29, 1.22 );
setScaleKey( spep_6-3 + 14, 1, 0.94, 0.9 );
setScaleKey( spep_6-3 + 16, 1, 0.69, 0.66 );
setScaleKey( spep_6-3 + 18, 1, 0.5, 0.48 );
setScaleKey( spep_6-3 + 20, 1, 0.4, 0.39 );
setScaleKey( spep_6-3 + 22, 1, 0.32, 0.32 );
setScaleKey( spep_6-3 + 24, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 26, 1, 0.19, 0.2 );
setScaleKey( spep_6-3 + 28, 1, 0.13, 0.15 );


setRotateKey( spep_6-3 + 8, 1, 35 );
setRotateKey( spep_6-3 + 10, 1, 60.1 );
setRotateKey( spep_6-3 + 12, 1, 72.5 );
setRotateKey( spep_6-3 + 14, 1, 81.4 );
setRotateKey( spep_6-3 + 16, 1, 88.5 );
setRotateKey( spep_6-3 + 18, 1, 94.3 );
setRotateKey( spep_6-3 + 20, 1, 99.2 );
setRotateKey( spep_6-3 + 22, 1, 103.4 );
setRotateKey( spep_6-3 + 24, 1, 107.1 );
setRotateKey( spep_6-3 + 26, 1, 110.2 );
setRotateKey( spep_6-3 + 28, 1, 112.9 );

--SE
--ラストパンチ
SE043 = playSe( spep_6 + 0, 1120 );
setSeVolumeByWorkId( spep_6 + 0, SE043, 79 );
SE044 = playSe( spep_6 + 0, 1187 );
setSeVolumeByWorkId( spep_6 + 0, SE044, 65 );

--ラストオーラ
SE045 = playSe( spep_6 + 12, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 12, SE045, 50 );
SE048 = playSe( spep_6 + 36, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 36, SE048, 50 );
SE049 = playSe( spep_6 + 60, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 60, SE049, 50 );
SE050 = playSe( spep_6 + 84, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 84, SE050, 50 );
SE051 = playSe( spep_6 + 108, 1036,"",0.9 );
setSeVolumeByWorkId( spep_6 + 108, SE051, 50 );

--爆発
SE046 = playSe( spep_6 + 26, 1023 );
setSeVolumeByWorkId( spep_6 + 26, SE046, 78 );
SE047 = playSe( spep_6 + 32, 1024 );
setSeVolumeByWorkId( spep_6 + 32, SE047, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +26 );
endPhase( spep_6 + 120 );
end