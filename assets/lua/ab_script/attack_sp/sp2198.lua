--1022040:孫悟天(GT)&孫悟飯_兄弟コンビネーション
--sp_effect_a1_00292

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
SP_01=	157248	;--	悟天が突進する
SP_02=	157250	;--	悟天の蹴り(前)
SP_03=	157251	;--	悟天の蹴り(後ろ)
SP_04=	157252	;--	悟天が振り返る
SP_05=	157253	;--	敵が踏ん張る(前)
SP_06=	157255	;--	敵が踏ん張る(後ろ)
SP_07=	157256	;--	かめはめ波を溜める
SP_08=	157257	;--	悟天が逃げる(前)
SP_09=	157259	;--	悟天が逃げる(後ろ)
SP_10=	157260	;--	かめはめ波を放つ
SP_11=	157262	;--	敵に当る(前)
SP_12=	157263	;--	敵に当る(後ろ)
SP_13=	157264	;--	終わり

--エフェクト(敵)
SP_01x=	157249	;--	悟天が突進する	(敵)
SP_02x=	157250	;--	悟天の蹴り(前)	
SP_03x=	157251	;--	悟天の蹴り(後ろ)	
SP_04x=	157341	;--	悟天が振り返る	(敵)
SP_05x=	157254	;--	敵が踏ん張る(前)	(敵)
SP_06x=	157255	;--	敵が踏ん張る(後ろ)	
SP_07x=	157256	;--	かめはめ波を溜める	
SP_08x=	157258	;--	悟天が逃げる(前)	(敵)
SP_09x=	157259	;--	悟天が逃げる(後ろ)	
SP_10x=	157261	;--	かめはめ波を放つ	
SP_11x=	157262	;--	敵に当る(前)	(敵)
SP_12x=	157263	;--	敵に当る(後ろ)	
SP_13x=	157265	;--	終わり	(敵)

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
-- 悟天が突進する
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 176, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 174, rush, 255 );
setEffAlphaKey( spep_0 + 175, rush, 255 );
setEffAlphaKey( spep_0 + 176, rush, 0 );

--SE
--2人構える
SE001 = playSe( spep_0 + 4, 1233 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 63 );
setPitch( spep_0 + 4, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );
SE003 = playSe( spep_0 + 14, 1006 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );


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
ctba = entryEffectLife( spep_0 + 84,  10022, 20, 0x100, -1, 0, -14.5, 206.7 );--バッ
setEffShake( spep_0 + 84, ctba, 20, 10 );
setEffMoveKey( spep_0 + 84, ctba, -14.5, 206.7 , 0 );
setEffMoveKey( spep_0 + 86, ctba, -15.7, 213.8 , 0 );
setEffMoveKey( spep_0 + 88, ctba, -13.6, 198.2 , 0 );
setEffMoveKey( spep_0 + 90, ctba, -29.2, 205.4 , 0 );
setEffMoveKey( spep_0 + 92, ctba, -5.4, 212.8 , 0 );
setEffMoveKey( spep_0 + 94, ctba, -10.8, 211 , 0 );
setEffMoveKey( spep_0 + 96, ctba, -16.4, 209.2 , 0 );
setEffMoveKey( spep_0 + 98, ctba, -17.1, 210.6 , 0 );
setEffMoveKey( spep_0 + 100, ctba, -17.8, 212 , 0 );
setEffMoveKey( spep_0 + 102, ctba, -17.2, 210.7 , 0 );
setEffMoveKey( spep_0 + 104, ctba, -16.5, 209.3 , 0 );

setEffScaleKey( spep_0 + 84, ctba,0,0);
setEffScaleKey( spep_0 + 86, ctba,0.57,0.57);
setEffScaleKey( spep_0 + 88, ctba,1.13,1.13);
setEffScaleKey( spep_0 + 90, ctba,1.14,1.14);
setEffScaleKey( spep_0 + 92, ctba,1.15,1.15);
setEffScaleKey( spep_0 + 94, ctba,1.17,1.17);
setEffScaleKey( spep_0 + 96, ctba,1.19,1.19);
setEffScaleKey( spep_0 + 98, ctba,1.2,1.2);
setEffScaleKey( spep_0 + 100, ctba,1.22,1.22);
setEffScaleKey( spep_0 + 102, ctba,1.23,1.23);
setEffScaleKey( spep_0 + 104, ctba,1.24,1.24);

setEffRotateKey( spep_0 + 84, ctba, 12.8 );
setEffRotateKey( spep_0 + 86, ctba, 13 );
setEffRotateKey( spep_0 + 104, ctba, 13 );

setEffAlphaKey( spep_0 + 84, ctba, 255 );
setEffAlphaKey( spep_0 + 104, ctba, 255 );

--文字エントリー
ctshun = entryEffectLife( spep_0-3 + 124,  10011, 20, 0x100, -1, 0, 81.1, 319.8 );--シュンッ
setEffShake( spep_0-3 + 124, ctshun, 20, 10 );
setEffMoveKey( spep_0-3 + 124, ctshun, 81.1, 319.8 , 0 );
setEffMoveKey( spep_0-3 + 126, ctshun, 82.9, 313.7 , 0 );
setEffMoveKey( spep_0-3 + 128, ctshun, 78.2, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 130, ctshun, 85.8, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 132, ctshun, 78.5, 305.4 , 0 );
setEffMoveKey( spep_0-3 + 134, ctshun, 81.4, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 136, ctshun, 81.2, 320.9 , 0 );
setEffMoveKey( spep_0-3 + 138, ctshun, 85, 306.8 , 0 );
setEffMoveKey( spep_0-3 + 140, ctshun, 78, 304.7 , 0 );
setEffMoveKey( spep_0-3 + 142, ctshun, 88.7, 320.6 , 0 );
setEffMoveKey( spep_0-3 + 144, ctshun, 91.2, 320.8 , 0 );

setEffScaleKey( spep_0-3 + 124, ctshun, 0.01, 0.01 );
setEffScaleKey( spep_0-3 + 126, ctshun, 0.99, 1.01 );
setEffScaleKey( spep_0-3 + 128, ctshun, 1.97, 2.02 );
setEffScaleKey( spep_0-3 + 130, ctshun, 2, 2.05 );
setEffScaleKey( spep_0-3 + 132, ctshun, 2.03, 2.09 );
setEffScaleKey( spep_0-3 + 134, ctshun, 2.07, 2.12 );
setEffScaleKey( spep_0-3 + 136, ctshun, 2.1, 2.15 );
setEffScaleKey( spep_0-3 + 138, ctshun, 2.13, 2.19 );
setEffScaleKey( spep_0-3 + 140, ctshun, 2.16, 2.22 );
setEffScaleKey( spep_0-3 + 142, ctshun, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 144, ctshun, 4.28, 4.22 );

setEffRotateKey( spep_0-3 + 124, ctshun, -6 );
setEffRotateKey( spep_0-3 + 144, ctshun, -6 );

setEffAlphaKey( spep_0-3 + 124, ctshun, 255 );
setEffAlphaKey( spep_0-3 + 140, ctshun, 255 );
setEffAlphaKey( spep_0-3 + 142, ctshun, 128 );
setEffAlphaKey( spep_0-3 + 144, ctshun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 88,  906, 90, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_0-3 + 88, shuchusen1, 90, 20 );
setEffMoveKey( spep_0-3 + 88, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_0-3 + 178, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_0-3 + 88, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 178, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 88, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 178, shuchusen1, 180 );


setEffAlphaKey( spep_0-3 + 88, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 178, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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

--SE
--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--悟天ダッシュ
SE004 = playSe( spep_0 + 80, 1182 );
stopSe( spep_0 + 132, SE004, 4 );
SE005 = playSe( spep_0 + 80, 1117 );
stopSe( spep_0 + 132, SE005, 4 );

--瞬間移動
SE006 = playSe( spep_0 + 130, 1109 );

--次の準備
spep_1=spep_0+176;
------------------------------------------------------
-- 悟天の蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 54, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 52, kick_f, 255 );
setEffAlphaKey( spep_1 + 53, kick_f, 255 );
setEffAlphaKey( spep_1 + 54, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 54, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 52, kick_b, 255 );
setEffAlphaKey( spep_1 + 53, kick_b, 255 );
setEffAlphaKey( spep_1 + 54, kick_b, 0 );

--文字エントリー
ctshun2 = entryEffectLife( spep_1-2 + 4,  10011, 16, 0x100, -1, 0, 3.9, 124.2 );--シュンッ
setEffShake( spep_1-2 + 4, ctshun2, 16, 10 );
setEffMoveKey( spep_1-2 + 4, ctshun2, 3.9, 124.2 , 0 );
setEffMoveKey( spep_1-2 + 6, ctshun2, 4.9, 120.7 , 0 );
setEffMoveKey( spep_1-2 + 8, ctshun2, 2.2, 116.3 , 0 );
setEffMoveKey( spep_1-2 + 10, ctshun2, 6.6, 124.5 , 0 );
setEffMoveKey( spep_1-2 + 12, ctshun2, 2.4, 115.9 , 0 );
setEffMoveKey( spep_1-2 + 14, ctshun2, 4.1, 122.3 , 0 );
setEffMoveKey( spep_1-2 + 16, ctshun2, 3.9, 124.9 , 0 );
setEffMoveKey( spep_1-2 + 18, ctshun2, 6.1, 116.7 , 0 );
setEffMoveKey( spep_1-2 + 20, ctshun2, 2, 115.5 , 0 );

setEffScaleKey( spep_1-2 + 4, ctshun2, 0, 0 );
setEffScaleKey( spep_1-2 + 6, ctshun2, 0.57, 0.59 );
setEffScaleKey( spep_1-2 + 8, ctshun2, 1.15, 1.17 );
setEffScaleKey( spep_1-2 + 10, ctshun2, 1.16, 1.19 );
setEffScaleKey( spep_1-2 + 12, ctshun2, 1.18, 1.21 );
setEffScaleKey( spep_1-2 + 14, ctshun2, 1.2, 1.23 );
setEffScaleKey( spep_1-2 + 16, ctshun2, 1.22, 1.25 );
setEffScaleKey( spep_1-2 + 18, ctshun2, 1.24, 1.27 );
setEffScaleKey( spep_1-2 + 20, ctshun2, 1.26, 1.29 );

setEffRotateKey( spep_1-2 + 4, ctshun2, -6 );
setEffRotateKey( spep_1-2 + 20, ctshun2, -6 );

setEffAlphaKey( spep_1-2 + 4, ctshun2, 255 );
setEffAlphaKey( spep_1-2 + 20, ctshun2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-2 + 22,  10020, 32, 0x100, -1, 0, 5.6, 169.8 );--バキッ
setEffShake( spep_1-2 + 22, ctbaki, 32, 10 );
setEffMoveKey( spep_1-2 + 22, ctbaki, 5.6, 169.8 , 0 );
setEffMoveKey( spep_1-2 + 24, ctbaki, 8.2, 172 , 0 );
setEffMoveKey( spep_1-2 + 26, ctbaki, 19.1, 180.3 , 0 );
setEffMoveKey( spep_1-2 + 28, ctbaki, -7, 180.9 , 0 );
setEffMoveKey( spep_1-2 + 30, ctbaki, -5.1, 151.5 , 0 );
setEffMoveKey( spep_1-2 + 32, ctbaki, 9, 148.2 , 0 );
setEffMoveKey( spep_1-2 + 34, ctbaki, 28.5, 184.8 , 0 );
setEffMoveKey( spep_1-2 + 36, ctbaki, 33.5, 168.1 , 0 );
setEffMoveKey( spep_1-2 + 38, ctbaki, 38.5, 151.4 , 0 );
setEffMoveKey( spep_1-2 + 40, ctbaki, 28.2, 161.5 , 0 );
setEffMoveKey( spep_1-2 + 42, ctbaki, 17.9, 171.7 , 0 );
setEffMoveKey( spep_1-2 + 44, ctbaki, 12, 171.1 , 0 );
setEffMoveKey( spep_1-2 + 46, ctbaki, 19.1, 180.3 , 0 );
setEffMoveKey( spep_1-2 + 48, ctbaki, -14.8, 187.7 , 0 );
setEffMoveKey( spep_1-2 + 50, ctbaki, -18.3, 129.2 , 0 );
setEffMoveKey( spep_1-2 + 52, ctbaki, 15.3, 108.5 , 0 );
setEffMoveKey( spep_1-2 + 54, ctbaki, 17.4, 95.2 , 0 );

setEffScaleKey( spep_1-2 + 22, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_1-2 + 24, ctbaki, 0.75, 0.75 );
setEffScaleKey( spep_1-2 + 26, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-2 + 46, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-2 + 48, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_1-2 + 50, ctbaki, 3.31, 3.31 );
setEffScaleKey( spep_1-2 + 52, ctbaki, 4.23, 4.23 );
setEffScaleKey( spep_1-2 + 54, ctbaki, 5.14, 5.14 );

setEffRotateKey( spep_1-2 + 22, ctbaki, -4 );
setEffRotateKey( spep_1-2 + 24, ctbaki, 2.8 );
setEffRotateKey( spep_1-2 + 26, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 28, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 30, ctbaki, 9.6 );
setEffRotateKey( spep_1-2 + 32, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 40, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 42, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 46, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 48, ctbaki, 9.6 );
setEffRotateKey( spep_1-2 + 54, ctbaki, 9.6 );

setEffAlphaKey( spep_1-2 + 22, ctbaki, 255 );
setEffAlphaKey( spep_1-2 + 46, ctbaki, 255 );
setEffAlphaKey( spep_1-2 + 48, ctbaki, 191 );
setEffAlphaKey( spep_1-2 + 50, ctbaki, 128 );
setEffAlphaKey( spep_1-2 + 52, ctbaki, 64 );
setEffAlphaKey( spep_1-2 + 54, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 24,  906, 30+2, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_1-3 + 24, shuchusen2, 30+2, 20 );
setEffMoveKey( spep_1-3 + 24, shuchusen2, 0, -20.3 , 0 );
setEffMoveKey( spep_1-1 + 54, shuchusen2, 0, -20.3 , 0 );

setEffScaleKey( spep_1-3 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1-1 + 54, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_1-1 + 54, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_1-1 + 54, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 54, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 24, 1, 105 );

setMoveKey( spep_1 + 0, 1, 53.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 23, 1, 53.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 85.9, -64 , 0 );
setMoveKey( spep_1-3 + 26, 1, 94.9, -49.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 85, -53.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, 91.1, -52.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 80.5, -36.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 80.3, -41.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 83.3, -32.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 86.2, -23.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 84.7, -17.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, 83.1, -11.4 , 0 );
setMoveKey( spep_1-3 + 44, 1, 84.6, -6.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 86, -1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 88.2, 6.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 90.3, 14.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, 88.2, 18.4 , 0 );
setMoveKey( spep_1 + 54, 1, 86, 21.9 , 0 );

setScaleKey( spep_1 + 0, 1,1.3,1.3);
setScaleKey( spep_1-3 + 23, 1,1.3,1.3);
setScaleKey( spep_1-3 + 24, 1,1.23,1.23);
setScaleKey( spep_1-3 + 26, 1,1.19,1.19);
setScaleKey( spep_1-3 + 28, 1,1.17,1.17);
setScaleKey( spep_1-3 + 30, 1,1.13,1.13);
setScaleKey( spep_1-3 + 32, 1,1.09,1.09);
setScaleKey( spep_1-3 + 34, 1,1.06,1.06);
setScaleKey( spep_1-3 + 36, 1,1.02,1.02);
setScaleKey( spep_1-3 + 38, 1,0.98,0.98);
setScaleKey( spep_1-3 + 40, 1,0.96,0.96);
setScaleKey( spep_1-3 + 42, 1,0.92,0.92);
setScaleKey( spep_1-3 + 44, 1,0.89,0.89);
setScaleKey( spep_1-3 + 46, 1,0.85,0.85);
setScaleKey( spep_1-3 + 48, 1,0.81,0.81);
setScaleKey( spep_1-3 + 50, 1,0.79,0.79);
setScaleKey( spep_1-3 + 52, 1,0.75,0.75);
setScaleKey( spep_1 + 54, 1,0.71,0.71);

setRotateKey( spep_1 + 0, 1, 10 );
setRotateKey( spep_1-3 + 23, 1, 10 );
setRotateKey( spep_1-3 + 24, 1, 0 );
setRotateKey( spep_1 + 54, 1, 0 );

--SE
--瞬間移動
SE007 = playSe( spep_1 + 2, 1109 );

--悟天キック
SE008 = playSe( spep_1 + 22, 1189 );
SE009 = playSe( spep_1 + 26, 1010 );
SE010 = playSe( spep_1 + 28, 1110 );
setSeVolumeByWorkId( spep_1 + 28, SE010, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+54;
------------------------------------------------------
-- 悟天が振り返る
------------------------------------------------------
-- ** エフェクト等 ** --
look_back = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, look_back, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, look_back, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, look_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, look_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, look_back, 0 );
setEffRotateKey( spep_2 + 76, look_back, 0 );
setEffAlphaKey( spep_2 + 0, look_back, 255 );
setEffAlphaKey( spep_2 + 74, look_back, 255 );
setEffAlphaKey( spep_2 + 75, look_back, 255 );
setEffAlphaKey( spep_2 + 76, look_back, 0 );

--SE
--悟天顔向き変える
SE011 = playSe( spep_2 + 0, 1003 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 68 );

--悟天ピース
SE012 = playSe( spep_2 + 32, 1233 );
setSeVolumeByWorkId( spep_2 + 32, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 33, SE012, 33.8 );
setSeVolumeByWorkId( spep_2 + 34, SE012, 68 );
setStartTimeMs( SE012,  100 );
SE013 = playSe( spep_2 + 34, 34 );
setPitch( spep_2 + 34, SE013, 400 );
setTimeStretch( SE013, 1.27, 10, 1 );
SE014 = playSe( spep_2 + 34, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+76
------------------------------------------------------
-- 敵が踏ん張る
------------------------------------------------------
-- ** エフェクト等 ** --
step_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, step_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, step_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, step_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, step_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_f, 0 );
setEffRotateKey( spep_3 + 56, step_f, 0 );
setEffAlphaKey( spep_3 + 0, step_f, 255 );
setEffAlphaKey( spep_3 + 54, step_f, 255 );
setEffAlphaKey( spep_3 + 55, step_f, 255 );
setEffAlphaKey( spep_3 + 56, step_f, 0 );

-- ** エフェクト等 ** --
step_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, step_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, step_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, step_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, step_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_b, 0 );
setEffRotateKey( spep_3 + 56, step_b, 0 );
setEffAlphaKey( spep_3 + 0, step_b, 255 );
setEffAlphaKey( spep_3 + 54, step_b, 255 );
setEffAlphaKey( spep_3 + 55, step_b, 255 );
setEffAlphaKey( spep_3 + 56, step_b, 0 );

--文字エントリー
ctba2 = entryEffectLife( spep_3-3 + 18,  10022, 24, 0x100, -1, 0, 128.9, 91.4 );--バッ
setEffShake( spep_3-3 + 18, ctba2, 24, 10 );
setEffMoveKey( spep_3-3 + 18, ctba2, 128.9, 91.4 , 0 );
setEffMoveKey( spep_3-3 + 20, ctba2, 125.8, 95 , 0 );
setEffMoveKey( spep_3-3 + 22, ctba2, 132.3, 87 , 0 );
setEffMoveKey( spep_3-3 + 24, ctba2, 121.2, 85.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctba2, 131.8, 97.9 , 0 );
setEffMoveKey( spep_3-3 + 28, ctba2, 129.4, 95.1 , 0 );
setEffMoveKey( spep_3-3 + 30, ctba2, 127, 92.2 , 0 );
setEffMoveKey( spep_3-3 + 32, ctba2, 126.1, 92.7 , 0 );
setEffMoveKey( spep_3-3 + 34, ctba2, 125.2, 93.2 , 0 );
setEffMoveKey( spep_3-3 + 36, ctba2, 126, 92.7 , 0 );
setEffMoveKey( spep_3-3 + 38, ctba2, 126.9, 92.2 , 0 );
setEffMoveKey( spep_3-3 + 40, ctba2, 124.6, 93.3 , 0 );
setEffMoveKey( spep_3-3 + 42, ctba2, 123.2, 93.9 , 0 );

setEffScaleKey( spep_3-3 + 18, ctba2,0,0);
setEffScaleKey( spep_3-3 + 20, ctba2,0.35,0.35);
setEffScaleKey( spep_3-3 + 22, ctba2,0.71,0.71);
setEffScaleKey( spep_3-3 + 24, ctba2,0.71,0.71);
setEffScaleKey( spep_3-3 + 26, ctba2,0.72,0.72);
setEffScaleKey( spep_3-3 + 28, ctba2,0.73,0.73);
setEffScaleKey( spep_3-3 + 30, ctba2,0.73,0.73);
setEffScaleKey( spep_3-3 + 32, ctba2,0.75,0.75);
setEffScaleKey( spep_3-3 + 34, ctba2,0.76,0.76);
setEffScaleKey( spep_3-3 + 36, ctba2,0.77,0.77);
setEffScaleKey( spep_3-3 + 38, ctba2,0.77,0.77);
setEffScaleKey( spep_3-3 + 40, ctba2,1.12,1.12);
setEffScaleKey( spep_3-3 + 42, ctba2,1.47,1.47);

setEffRotateKey( spep_3-3 + 18, ctba2, -15.8 );
setEffRotateKey( spep_3-3 + 20, ctba2, -16 );
setEffRotateKey( spep_3-3 + 42, ctba2, -16 );

setEffAlphaKey( spep_3-3 + 18, ctba2, 255 );
setEffAlphaKey( spep_3-3 + 38, ctba2, 255 );
setEffAlphaKey( spep_3-3 + 40, ctba2, 128 );
setEffAlphaKey( spep_3-3 + 42, ctba2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 18,  906, 38+2, 0x100, -1, 0, 211, -17.3 );
setEffShake( spep_3-3 + 18, shuchusen3, 38+2, 20 );
setEffMoveKey( spep_3-3 + 18, shuchusen3, 211, -17.3 , 0 );
setEffMoveKey( spep_3-1 + 56, shuchusen3, 211, -17.3 , 0 );

setEffScaleKey( spep_3-3 + 18, shuchusen3, 1.97, 1.97 );
setEffScaleKey( spep_3-1 + 56, shuchusen3, 1.97, 1.97 );

setEffRotateKey( spep_3-3 + 18, shuchusen3, 180 );
setEffRotateKey( spep_3-1 + 56, shuchusen3, 180 );

setEffAlphaKey( spep_3-3 + 18, shuchusen3, 255 );
setEffAlphaKey( spep_3-1 + 56, shuchusen3, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3-3 + 18, 1, 117 );

setMoveKey( spep_3 + 0, 1, 125.3, -32.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 137.5, -34.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 142.7, -36.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 146.9, -39.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 150.4, -41.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 153.5, -44.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 156.3, -46.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 158.8, -49.6 , 0 );
setMoveKey( spep_3-3 + 17, 1, 161.1, -52.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 141.6, -66 , 0 );
setMoveKey( spep_3-3 + 20, 1, 142.5, -65.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 143.4, -64.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 144.3, -63.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 145.2, -63 , 0 );
setMoveKey( spep_3-3 + 28, 1, 146.2, -62.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 147.1, -61.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 146.8, -60.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 146.6, -60.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 146.4, -59.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 146.2, -59.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 145.9, -58.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 145.8, -58.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 145.6, -57.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 145.5, -57.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 145.3, -57 , 0 );
setMoveKey( spep_3-3 + 50, 1, 145.2, -56.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 145.1, -56.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 145, -56.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 144.9, -56 , 0 );
setMoveKey( spep_3-2 + 58, 1, 144.9, -55.9 , 0 );

setScaleKey( spep_3 + 0, 1,1.47,1.47);
setScaleKey( spep_3-3 + 4, 1, 1.08,1.08);
setScaleKey( spep_3-3 + 6, 1, 1,1);
setScaleKey( spep_3-3 + 8, 1, 0.92,0.92);
setScaleKey( spep_3-3 + 10, 1,0.86,0.86);
setScaleKey( spep_3-3 + 12, 1,0.8,0.8);
setScaleKey( spep_3-3 + 14, 1,0.75,0.75);
setScaleKey( spep_3-3 + 17, 1,0.7,0.7);
setScaleKey( spep_3-3 + 18, 1,0.78,0.78);
setScaleKey( spep_3-3 + 20, 1,0.78,0.78);
setScaleKey( spep_3-3 + 22, 1,0.78,0.78);
setScaleKey( spep_3-3 + 24, 1,0.82,0.82);
setScaleKey( spep_3-3 + 26, 1,0.85,0.85);
setScaleKey( spep_3-3 + 28, 1,0.85,0.85);
setScaleKey( spep_3-3 + 30, 1,0.85,0.85);
setScaleKey( spep_3-3 + 32, 1,0.86,0.86);
setScaleKey( spep_3-3 + 34, 1,0.87,0.87);
setScaleKey( spep_3-3 + 36, 1,0.88,0.88);
setScaleKey( spep_3-3 + 38, 1,0.88,0.88);
setScaleKey( spep_3-3 + 40, 1,0.9,0.9);
setScaleKey( spep_3-3 + 42, 1,0.91,0.91);
setScaleKey( spep_3-3 + 44, 1,0.91,0.91);
setScaleKey( spep_3-3 + 46, 1,0.92,0.92);
setScaleKey( spep_3-3 + 48, 1,0.92,0.92);
setScaleKey( spep_3-3 + 50, 1,0.93,0.93);
setScaleKey( spep_3-3 + 54, 1,0.93,0.93);
setScaleKey( spep_3-2 + 58, 1,0.95,0.95);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-2 + 58, 1, 0 );

--SE
--敵立ち上がる
SE015 = playSe( spep_3 + 16, 1301 );
setSeVolumeByWorkId( spep_3 + 16, SE015, 126 );
SE016 = playSe( spep_3 + 18, 1007 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- かめはめ波を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 46, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 44, tame, 255 );
setEffAlphaKey( spep_4 + 45, tame, 255 );
setEffAlphaKey( spep_4 + 46, tame, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 4,  906, 42+2, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_4-3 + 4, shuchusen4, 42+2, 20 );
setEffMoveKey( spep_4-3 + 4, shuchusen4, 0, -20.3 , 0 );
setEffMoveKey( spep_4-1 + 46, shuchusen4, 0, -20.3 , 0 );

setEffScaleKey( spep_4-3 + 4, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4-1 + 46, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4-3 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4-1 + 46, shuchusen4, 180 );

setEffAlphaKey( spep_4-3 + 4, shuchusen4, 255 );
setEffAlphaKey( spep_4-1 + 46, shuchusen4, 255 );

--SE
--悟飯かまえる
SE017 = playSe( spep_4 + 0, 1258 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 54 );
SE018 = playSe( spep_4 + 6, 1068 );
setSeVolumeByWorkId( spep_4 + 6, SE018, 78 );
SE019 = playSe( spep_4 + 6, 44 );
SE020 = playSe( spep_4 + 20, 1233 );
setSeVolumeByWorkId( spep_4 + 20, SE020, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE020, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE020, 50 );
setSeVolumeByWorkId( spep_4 + 23, SE020, 75 );
setSeVolumeByWorkId( spep_4 + 24, SE020, 100 );
setStartTimeMs( SE020,  100 );
setPitch( spep_4 + 20, SE020, -400 );
setTimeStretch( SE020, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+46;
------------------------------------------------------
-- 悟天が逃げる
------------------------------------------------------
-- ** エフェクト等 ** --
escape_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, escape_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, escape_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, escape_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, escape_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, escape_f, 0 );
setEffRotateKey( spep_5 + 60, escape_f, 0 );
setEffAlphaKey( spep_5 + 0, escape_f, 255 );
setEffAlphaKey( spep_5 + 60, escape_f, 255 );
setEffAlphaKey( spep_5 + 61, escape_f, 0 );
setEffAlphaKey( spep_5 + 62, escape_f, 0 );

-- ** エフェクト等 ** --
escape_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, escape_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, escape_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, escape_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, escape_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, escape_b, 0 );
setEffRotateKey( spep_5 + 60, escape_b, 0 );
setEffAlphaKey( spep_5 + 0, escape_b, 255 );
setEffAlphaKey( spep_5 + 60, escape_b, 255 );
setEffAlphaKey( spep_5 + 61, escape_b, 0 );
setEffAlphaKey( spep_5 + 62, escape_b, 0 );

--文字エントリー
ctgogogo = entryEffectLife( spep_5-3 + 18,  10008, 40, 0x100, -1, 0, -61.7, 159.8 );--ゴゴゴ
setEffShake( spep_5-3 + 18, ctgogogo, 40, 10 );
setEffMoveKey( spep_5-3 + 18, ctgogogo, -61.7, 159.8 , 0 );
setEffMoveKey( spep_5-3 + 20, ctgogogo, -63.8, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 22, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 24, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 26, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 28, ctgogogo, -68.8, 163.5 , 0 );
setEffMoveKey( spep_5-3 + 30, ctgogogo, -64.6, 149.3 , 0 );
setEffMoveKey( spep_5-3 + 32, ctgogogo, -57.5, 149.4 , 0 );
setEffMoveKey( spep_5-3 + 34, ctgogogo, -52.5, 169.9 , 0 );
setEffMoveKey( spep_5-3 + 36, ctgogogo, -65.8, 175.4 , 0 );
setEffMoveKey( spep_5-3 + 38, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 40, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 42, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 44, ctgogogo, -68.8, 163.5 , 0 );
setEffMoveKey( spep_5-3 + 46, ctgogogo, -64.6, 149.3 , 0 );
setEffMoveKey( spep_5-3 + 48, ctgogogo, -57.5, 149.4 , 0 );
setEffMoveKey( spep_5-3 + 50, ctgogogo, -65.8, 175.4 , 0 );
setEffMoveKey( spep_5-3 + 52, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 54, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 56, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 58, ctgogogo, -68.8, 163.5 , 0 );

setEffScaleKey( spep_5-3 + 18, ctgogogo, 0.01, 0.01 );
setEffScaleKey( spep_5-3 + 20, ctgogogo, 0.95, 0.99 );
setEffScaleKey( spep_5-3 + 22, ctgogogo, 1.89, 1.97 );
setEffScaleKey( spep_5-3 + 58, ctgogogo, 1.89, 1.97 );

setEffRotateKey( spep_5-3 + 18, ctgogogo, -7.8 );
setEffRotateKey( spep_5-3 + 20, ctgogogo, -8 );
setEffRotateKey( spep_5-3 + 58, ctgogogo, -8 );

setEffAlphaKey( spep_5-3 + 18, ctgogogo, 255 );
setEffAlphaKey( spep_5-3 + 58, ctgogogo, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 117 );

setMoveKey( spep_5 + 0, 1, 165.5, -149.1 , 0 );
setMoveKey( spep_5 + 2, 1, 164.1, -148.5 , 0 );
setMoveKey( spep_5 + 4, 1, 162.8, -147.8 , 0 );
setMoveKey( spep_5 + 6, 1, 163, -146.3 , 0 );
setMoveKey( spep_5 + 8, 1, 163.4, -144.7 , 0 );
setMoveKey( spep_5 + 10, 1, 164, -144.4 , 0 );
setMoveKey( spep_5 + 12, 1, 164.8, -144.2 , 0 );
setMoveKey( spep_5 + 14, 1, 164.1, -144.6 , 0 );
setMoveKey( spep_5 + 16, 1, 163.4, -145.1 , 0 );
setMoveKey( spep_5 + 18, 1, 162.5, -144.2 , 0 );
setMoveKey( spep_5 + 20, 1, 161.6, -143.2 , 0 );
setMoveKey( spep_5 + 22, 1, 162.1, -143.8 , 0 );
setMoveKey( spep_5 + 24, 1, 162.6, -144.2 , 0 );
setMoveKey( spep_5 + 26, 1, 163.1, -143.4 , 0 );
setMoveKey( spep_5 + 28, 1, 163.6, -142.6 , 0 );
setMoveKey( spep_5 + 30, 1, 162.7, -143.1 , 0 );
setMoveKey( spep_5 + 32, 1, 162, -143.5 , 0 );
setMoveKey( spep_5 + 34, 1, 163, -144.6 , 0 );
setMoveKey( spep_5 + 36, 1, 164.1, -143.1 , 0 );
setMoveKey( spep_5 + 38, 1, 165.1, -144.1 , 0 );
setMoveKey( spep_5 + 40, 1, 163.5, -142.8 , 0 );
setMoveKey( spep_5 + 42, 1, 164.5, -141.3 , 0 );
setMoveKey( spep_5 + 44, 1, 166.7, -143.7 , 0 );
setMoveKey( spep_5 + 46, 1, 163.7, -145.9 , 0 );
setMoveKey( spep_5 + 48, 1, 160.9, -143 , 0 );
setMoveKey( spep_5 + 50, 1, 163.2, -140.3 , 0 );
setMoveKey( spep_5 + 52, 1, 165.4, -142.7 , 0 );
setMoveKey( spep_5 + 54, 1, 168.6, -138.7 , 0 );
setMoveKey( spep_5 + 56, 1, 170.2, -141.4 , 0 );
setMoveKey( spep_5 + 58, 1, 166.5, -143.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 6, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 10, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 30, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 58, 1, 0.37, 0.37 );

setRotateKey( spep_5 + 0, 1, 10 );
setRotateKey( spep_5 + 58, 1, 10 );

--SE
--悟飯かまえる
stopSe( spep_5 + 2, SE017, 28 );
stopSe( spep_5 + 2, SE018, 28 );

--悟天ジャンプ
SE021 = playSe( spep_5 + 0, 1207 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 60 );

--悟飯かめはめ波溜め
SE022 = playSe( spep_5 + 6, 1209 );
SE023 = playSe( spep_5 + 6, 1210 );

--白フェード
entryFade( spep_5 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--悟天ジャンプ
stopSe( spep_6 + 8, SE021, 0 );

--悟飯かめはめ波溜め
stopSe( spep_6 + 8, SE022, 0 );
stopSe( spep_6 + 8, SE023, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94
------------------------------------------------------
-- かめはめ波を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 58, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 58, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 58, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 56, beam, 255 );
setEffAlphaKey( spep_7 + 57, beam, 255 );
setEffAlphaKey( spep_7 + 58, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_7-3 + 10,  10012, 50, 0x100, -1, 0, 84.7, 421.8,1000 );--ズオッ
setEffShake( spep_7-3 + 10, ctzuo, 50, 10 );
setEffMoveKey( spep_7-3 + 10, ctzuo, 84.7, 421.8 , 0 );
setEffMoveKey( spep_7-3 + 12, ctzuo, 89.5, 425.4 , 0 );
setEffMoveKey( spep_7-3 + 14, ctzuo, 103.3, 434.7 , 0 );
setEffMoveKey( spep_7-3 + 16, ctzuo, 60.6, 418 , 0 );
setEffMoveKey( spep_7-3 + 18, ctzuo, 109.1, 438.8 , 0 );
setEffMoveKey( spep_7-3 + 20, ctzuo, 61, 442.3 , 0 );
setEffMoveKey( spep_7-3 + 22, ctzuo, 119.3, 454.8 , 0 );
setEffMoveKey( spep_7-3 + 24, ctzuo, 90.5, 384.8 , 0 );
setEffMoveKey( spep_7-3 + 26, ctzuo, 124.9, 446.3 , 0 );
setEffMoveKey( spep_7-3 + 28, ctzuo, 152.4, 422 , 0 );
setEffMoveKey( spep_7-3 + 30, ctzuo, 141.2, 389.1 , 0 );
setEffMoveKey( spep_7-3 + 32, ctzuo, 112.1, 418.7 , 0 );
setEffMoveKey( spep_7-3 + 34, ctzuo, 94.8, 425.3 , 0 );
setEffMoveKey( spep_7-3 + 36, ctzuo, 95.3, 412.9 , 0 );
setEffMoveKey( spep_7-3 + 38, ctzuo, 85.3, 423 , 0 );
setEffMoveKey( spep_7-3 + 40, ctzuo, 117.3, 455.6 , 0 );
setEffMoveKey( spep_7-3 + 42, ctzuo, 88.5, 385.6 , 0 );
setEffMoveKey( spep_7-3 + 44, ctzuo, 122.1, 447.5 , 0 );
setEffMoveKey( spep_7-3 + 46, ctzuo, 145.9, 424.8 , 0 );
setEffMoveKey( spep_7-3 + 48, ctzuo, 134.4, 392 , 0 );
setEffMoveKey( spep_7-3 + 50, ctzuo, 109.3, 419.9 , 0 );
setEffMoveKey( spep_7-3 + 52, ctzuo, 93.9, 425.7 , 0 );
setEffMoveKey( spep_7-3 + 54, ctzuo, 87.2, 419 , 0 );
setEffMoveKey( spep_7-3 + 56, ctzuo, 115.6, 456.4 , 0 );
setEffMoveKey( spep_7-3 + 58, ctzuo, 86.8, 386.4 , 0 );
setEffMoveKey( spep_7-3 + 60, ctzuo, 119.6, 448.6 , 0 );

setEffScaleKey( spep_7-3 + 10, ctzuo, 0.01, 0.01 );
setEffScaleKey( spep_7-3 + 12, ctzuo, 1.43, 1.27 );
setEffScaleKey( spep_7-3 + 14, ctzuo, 2.86, 2.52 );
setEffScaleKey( spep_7-3 + 16, ctzuo, 2.82, 2.52 );
setEffScaleKey( spep_7-3 + 18, ctzuo, 2.79, 2.52 );
setEffScaleKey( spep_7-3 + 20, ctzuo, 2.76, 2.52 );
setEffScaleKey( spep_7-3 + 22, ctzuo, 2.72, 2.52 );
setEffScaleKey( spep_7-3 + 24, ctzuo, 2.69, 2.52 );
setEffScaleKey( spep_7-3 + 26, ctzuo, 2.66, 2.52 );
setEffScaleKey( spep_7-3 + 28, ctzuo, 2.63, 2.52 );
setEffScaleKey( spep_7-3 + 30, ctzuo, 2.59, 2.52 );
setEffScaleKey( spep_7-3 + 32, ctzuo, 2.56, 2.52 );
setEffScaleKey( spep_7-3 + 34, ctzuo, 2.53, 2.52 );
setEffScaleKey( spep_7-3 + 36, ctzuo, 2.5, 2.52 );
setEffScaleKey( spep_7-3 + 38, ctzuo, 2.46, 2.52 );
setEffScaleKey( spep_7-3 + 40, ctzuo, 2.44, 2.54 );
setEffScaleKey( spep_7-3 + 42, ctzuo, 2.42, 2.55 );
setEffScaleKey( spep_7-3 + 44, ctzuo, 2.4, 2.56 );
setEffScaleKey( spep_7-3 + 46, ctzuo, 2.38, 2.57 );
setEffScaleKey( spep_7-3 + 48, ctzuo, 2.36, 2.59 );
setEffScaleKey( spep_7-3 + 50, ctzuo, 2.34, 2.6 );
setEffScaleKey( spep_7-3 + 52, ctzuo, 2.31, 2.61 );
setEffScaleKey( spep_7-3 + 54, ctzuo, 2.29, 2.63 );
setEffScaleKey( spep_7-3 + 56, ctzuo, 2.27, 2.64 );
setEffScaleKey( spep_7-3 + 58, ctzuo, 2.24, 2.65 );
setEffScaleKey( spep_7-3 + 60, ctzuo, 2.22, 2.67 );

setEffRotateKey( spep_7-3 + 10, ctzuo, 2.8 );
setEffRotateKey( spep_7-3 + 12, ctzuo, 3 );
setEffRotateKey( spep_7-3 + 60, ctzuo, 3 );

setEffAlphaKey( spep_7-3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_7-3 + 60, ctzuo, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 10,  906, 50, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_7-3 + 10, shuchusen5, 50, 20 );
setEffMoveKey( spep_7-3 + 10, shuchusen5, 0, -20.3 , 0 );
setEffMoveKey( spep_7-3 + 60, shuchusen5, 0, -20.3 , 0 );

setEffScaleKey( spep_7-3 + 10, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_7-3 + 60, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_7-3 + 10, shuchusen5, 180 );
setEffRotateKey( spep_7-3 + 60, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 10, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 60, shuchusen5, 255 );

--SE
--かめはめ波発射
SE025 = playSe( spep_7 + 8, 1284 );
setSeVolumeByWorkId( spep_7 + 8, SE025, 84 );
SE026 = playSe( spep_7 + 8, 1231 );
setSeVolumeByWorkId( spep_7 + 8, SE026, 120 );
SE027 = playSe( spep_7 + 8, 1258 );
setSeVolumeByWorkId( spep_7 + 8, SE027, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+58;
------------------------------------------------------
-- 敵に当る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 136, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 136, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 136, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 134, hit_f, 255 );
setEffAlphaKey( spep_8 + 135, hit_f, 255 );
setEffAlphaKey( spep_8 + 136, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 136, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 136, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 136, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 134, hit_b, 255 );
setEffAlphaKey( spep_8 + 135, hit_b, 255 );
setEffAlphaKey( spep_8 + 136, hit_b, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_8-2 + 16,  10014, 52+1, 0x100, -1, 0, -83.3, 393.8 );--ズドドドッ
setEffShake( spep_8-2 + 16, ctzudododo, 52+1, 10 );
setEffMoveKey( spep_8-2 + 16, ctzudododo, -83.3, 393.8 , 0 );
setEffMoveKey( spep_8-2 + 18, ctzudododo, -86.9, 381.6 , 0 );
setEffMoveKey( spep_8-2 + 20, ctzudododo, -122.2, 378.2 , 0 );
setEffMoveKey( spep_8-2 + 22, ctzudododo, -83.3, 383 , 0 );
setEffMoveKey( spep_8-2 + 24, ctzudododo, -97.1, 361.2 , 0 );
setEffMoveKey( spep_8-2 + 26, ctzudododo, -117.5, 357.5 , 0 );
setEffMoveKey( spep_8-2 + 28, ctzudododo, -90.5, 385.4 , 0 );
setEffMoveKey( spep_8-2 + 30, ctzudododo, -64.5, 407.2 , 0 );
setEffMoveKey( spep_8-2 + 32, ctzudododo, -103, 379.1 , 0 );
setEffMoveKey( spep_8-2 + 34, ctzudododo, -85.6, 354.9 , 0 );
setEffMoveKey( spep_8-2 + 36, ctzudododo, -112.8, 373.2 , 0 );
setEffMoveKey( spep_8-2 + 38, ctzudododo, -116.2, 385.8 , 0 );
setEffMoveKey( spep_8-2 + 40, ctzudododo, -84.8, 338.7 , 0 );
setEffMoveKey( spep_8-2 + 42, ctzudododo, -102.1, 333.9 , 0 );
setEffMoveKey( spep_8-2 + 44, ctzudododo, -49.7, 390.9 , 0 );
setEffMoveKey( spep_8-2 + 46, ctzudododo, -105.1, 370 , 0 );
setEffMoveKey( spep_8-2 + 48, ctzudododo, -107.4, 363.1 , 0 );
setEffMoveKey( spep_8-2 + 50, ctzudododo, -88.2, 382.3 , 0 );
setEffMoveKey( spep_8-2 + 52, ctzudododo, -110.2, 370.9 , 0 );
setEffMoveKey( spep_8-2 + 54, ctzudododo, -85.6, 353.4 , 0 );
setEffMoveKey( spep_8-2 + 56, ctzudododo, -114.4, 372.5 , 0 );
setEffMoveKey( spep_8-2 + 58, ctzudododo, -117.9, 385.5 , 0 );
setEffMoveKey( spep_8-2 + 60, ctzudododo, -84.8, 336.6 , 0 );
setEffMoveKey( spep_8-2 + 62, ctzudododo, -103, 331.6 , 0 );
setEffMoveKey( spep_8-2 + 64, ctzudododo, -47.9, 390.8 , 0 );
setEffMoveKey( spep_8-2 + 66, ctzudododo, -106.1, 369.1 , 0 );
setEffMoveKey( spep_8-1 + 68, ctzudododo, -108.6, 362 , 0 );

setEffScaleKey( spep_8-2 + 16, ctzudododo, 0.01, 0.02 );
setEffScaleKey( spep_8-2 + 18, ctzudododo, 1.12, 1.17 );
setEffScaleKey( spep_8-2 + 20, ctzudododo, 2.23, 2.32 );
setEffScaleKey( spep_8-2 + 22, ctzudododo, 2.24, 2.33 );
setEffScaleKey( spep_8-2 + 24, ctzudododo, 2.25, 2.34 );
setEffScaleKey( spep_8-2 + 26, ctzudododo, 2.27, 2.35 );
setEffScaleKey( spep_8-2 + 28, ctzudododo, 2.28, 2.36 );
setEffScaleKey( spep_8-2 + 30, ctzudododo, 2.29, 2.37 );
setEffScaleKey( spep_8-2 + 32, ctzudododo, 2.31, 2.38 );
setEffScaleKey( spep_8-2 + 34, ctzudododo, 2.32, 2.39 );
setEffScaleKey( spep_8-2 + 36, ctzudododo, 2.33, 2.4 );
setEffScaleKey( spep_8-2 + 38, ctzudododo, 2.34, 2.41 );
setEffScaleKey( spep_8-2 + 40, ctzudododo, 2.36, 2.41 );
setEffScaleKey( spep_8-2 + 42, ctzudododo, 2.37, 2.42 );
setEffScaleKey( spep_8-2 + 44, ctzudododo, 2.38, 2.43 );
setEffScaleKey( spep_8-2 + 46, ctzudododo, 2.39, 2.44 );
setEffScaleKey( spep_8-2 + 48, ctzudododo, 2.41, 2.45 );
setEffScaleKey( spep_8-2 + 50, ctzudododo, 2.42, 2.46 );
setEffScaleKey( spep_8-2 + 52, ctzudododo, 2.43, 2.47 );
setEffScaleKey( spep_8-2 + 54, ctzudododo, 2.45, 2.48 );
setEffScaleKey( spep_8-2 + 56, ctzudododo, 2.46, 2.49 );
setEffScaleKey( spep_8-2 + 58, ctzudododo, 2.47, 2.5 );
setEffScaleKey( spep_8-2 + 60, ctzudododo, 2.48, 2.51 );
setEffScaleKey( spep_8-2 + 62, ctzudododo, 2.5, 2.52 );
setEffScaleKey( spep_8-2 + 64, ctzudododo, 2.51, 2.53 );
setEffScaleKey( spep_8-2 + 66, ctzudododo, 2.52, 2.53 );
setEffScaleKey( spep_8-1 + 68, ctzudododo, 2.53, 2.54 );

setEffRotateKey( spep_8-2 + 16, ctzudododo, -18.8 );
setEffRotateKey( spep_8-2 + 18, ctzudododo, -19 );
setEffRotateKey( spep_8-1 + 68, ctzudododo, -19 );

setEffAlphaKey( spep_8-2 + 16, ctzudododo, 255 );
setEffAlphaKey( spep_8-1 + 68, ctzudododo, 255 );

--文字エントリー
ctka = entryEffectLife( spep_8-2 + 76,  10004, 18, 0x100, -1, 0, 138.6, 310.3 );--カッ
setEffShake( spep_8-2 + 76, ctka, 18, 10 );
setEffMoveKey( spep_8-2 + 76, ctka, 138.6, 310.3 , 0 );
setEffMoveKey( spep_8-2 + 78, ctka, 148.3, 315.1 , 0 );
setEffMoveKey( spep_8-2 + 80, ctka, 185.8, 323.7 , 0 );
setEffMoveKey( spep_8-2 + 82, ctka, 171.8, 321.7 , 0 );
setEffMoveKey( spep_8-2 + 84, ctka, 157.7, 319.8 , 0 );
setEffMoveKey( spep_8-2 + 86, ctka, 133.5, 305.6 , 0 );
setEffMoveKey( spep_8-2 + 88, ctka, 109.2, 291.5 , 0 );
setEffMoveKey( spep_8-2 + 90, ctka, 145.1, 303.7 , 0 );
setEffMoveKey( spep_8-2 + 92, ctka, 209.6, 321.3 , 0 );
setEffMoveKey( spep_8-2 + 94, ctka, 240.1, 325.6 , 0 );

setEffScaleKey( spep_8-2 + 76, ctka, 0.01, 0.02 );
setEffScaleKey( spep_8-2 + 78, ctka, 1.12, 1.17 );
setEffScaleKey( spep_8-2 + 80, ctka, 2.22, 2.32 );
setEffScaleKey( spep_8-2 + 90, ctka, 2.22, 2.32 );
setEffScaleKey( spep_8-2 + 92, ctka, 3.96, 4.01 );
setEffScaleKey( spep_8-2 + 94, ctka, 5.7, 5.7 );

setEffRotateKey( spep_8-2 + 76, ctka, 30.2 );
setEffRotateKey( spep_8-2 + 78, ctka, 30 );
setEffRotateKey( spep_8-2 + 94, ctka, 30 );

setEffAlphaKey( spep_8-2 + 76, ctka, 255 );
setEffAlphaKey( spep_8-2 + 90, ctka, 255 );
setEffAlphaKey( spep_8-2 + 92, ctka, 128 );
setEffAlphaKey( spep_8-2 + 94, ctka, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 26, 1, 0 );

changeAnime( spep_8 + 0, 1, 104 );

setMoveKey( spep_8 + 0, 1, 103.2, 129.8 , 0 );
setMoveKey( spep_8 + 16, 1, 103.2, 129.8 , 0 );
setMoveKey( spep_8 + 18, 1, 115, 143.4 , 0 );
setMoveKey( spep_8 + 20, 1, 96.2, 122.8 , 0 );
setMoveKey( spep_8 + 22, 1, 129.3, 122 , 0 );
setMoveKey( spep_8 + 26, 1, 103.6, 156.6 , 0 );

setScaleKey( spep_8 + 0, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 26, 1, 0.76, 0.76 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 26, 1, 0 );

--SE
--かめはめ波中
SE029 = playSe( spep_8 + 8, 1011 );
SE030 = playSe( spep_8 + 8, 1145 );
SE028 = playSe( spep_8 + 10, 1212 );
setSeVolumeByWorkId( spep_8 + 10, SE028, 0 );
setSeVolumeByWorkId( spep_8 + 11, SE028, 1.3 );
setSeVolumeByWorkId( spep_8 + 12, SE028, 2.6 );
setSeVolumeByWorkId( spep_8 + 13, SE028, 3.9 );
setSeVolumeByWorkId( spep_8 + 14, SE028, 5.2 );
setSeVolumeByWorkId( spep_8 + 15, SE028, 6.5 );
setSeVolumeByWorkId( spep_8 + 16, SE028, 7.8 );
setSeVolumeByWorkId( spep_8 + 17, SE028, 9.1 );
setSeVolumeByWorkId( spep_8 + 18, SE028, 10.4 );
setSeVolumeByWorkId( spep_8 + 19, SE028, 11.7 );
setSeVolumeByWorkId( spep_8 + 20, SE028, 13 );
setSeVolumeByWorkId( spep_8 + 21, SE028, 14.3 );
setSeVolumeByWorkId( spep_8 + 22, SE028, 15.6 );
setSeVolumeByWorkId( spep_8 + 23, SE028, 16.9 );
setSeVolumeByWorkId( spep_8 + 24, SE028, 18.2 );
setSeVolumeByWorkId( spep_8 + 25, SE028, 19.5 );
setSeVolumeByWorkId( spep_8 + 26, SE028, 20.8 );
setSeVolumeByWorkId( spep_8 + 27, SE028, 22.1 );
setSeVolumeByWorkId( spep_8 + 28, SE028, 23.4 );
setSeVolumeByWorkId( spep_8 + 29, SE028, 24.7 );
setSeVolumeByWorkId( spep_8 + 30, SE028, 26 );
setSeVolumeByWorkId( spep_8 + 31, SE028, 27.3 );
setSeVolumeByWorkId( spep_8 + 32, SE028, 28.6 );
setSeVolumeByWorkId( spep_8 + 33, SE028, 29.9 );
setSeVolumeByWorkId( spep_8 + 34, SE028, 31.2 );
setSeVolumeByWorkId( spep_8 + 35, SE028, 32.5 );
setSeVolumeByWorkId( spep_8 + 36, SE028, 33.8 );
setSeVolumeByWorkId( spep_8 + 37, SE028, 35.1 );
setSeVolumeByWorkId( spep_8 + 38, SE028, 36.4 );
setSeVolumeByWorkId( spep_8 + 39, SE028, 37.7 );
setSeVolumeByWorkId( spep_8 + 40, SE028, 39 );
setSeVolumeByWorkId( spep_8 + 41, SE028, 40.3 );
setSeVolumeByWorkId( spep_8 + 42, SE028, 41.6 );
setSeVolumeByWorkId( spep_8 + 43, SE028, 42.9 );
setSeVolumeByWorkId( spep_8 + 44, SE028, 44.2 );
setSeVolumeByWorkId( spep_8 + 45, SE028, 45.5 );
setSeVolumeByWorkId( spep_8 + 46, SE028, 46.8 );
setSeVolumeByWorkId( spep_8 + 47, SE028, 48.1 );
setSeVolumeByWorkId( spep_8 + 48, SE028, 49.4 );
setSeVolumeByWorkId( spep_8 + 49, SE028, 50.7 );
setSeVolumeByWorkId( spep_8 + 50, SE028, 52 );
stopSe( spep_8 + 86, SE028, 14 );
setStartTimeMs( SE028,  467 );
SE031 = playSe( spep_8 + 20, 1168 );
setSeVolumeByWorkId( spep_8 + 20, SE031, 0 );
setSeVolumeByWorkId( spep_8 + 21, SE031, 2.7 );
setSeVolumeByWorkId( spep_8 + 22, SE031, 5.4 );
setSeVolumeByWorkId( spep_8 + 23, SE031, 8.1 );
setSeVolumeByWorkId( spep_8 + 24, SE031, 10.8 );
setSeVolumeByWorkId( spep_8 + 25, SE031, 13.5 );
setSeVolumeByWorkId( spep_8 + 26, SE031, 16.2 );
setSeVolumeByWorkId( spep_8 + 27, SE031, 18.9 );
setSeVolumeByWorkId( spep_8 + 28, SE031, 21.6 );
setSeVolumeByWorkId( spep_8 + 29, SE031, 24.3 );
setSeVolumeByWorkId( spep_8 + 30, SE031, 27 );
setSeVolumeByWorkId( spep_8 + 31, SE031, 29.7 );
setSeVolumeByWorkId( spep_8 + 32, SE031, 32.4 );
setSeVolumeByWorkId( spep_8 + 33, SE031, 35.1 );
setSeVolumeByWorkId( spep_8 + 34, SE031, 37.8 );
setSeVolumeByWorkId( spep_8 + 35, SE031, 40.5 );
setSeVolumeByWorkId( spep_8 + 36, SE031, 43.2 );
setSeVolumeByWorkId( spep_8 + 37, SE031, 45.9 );
setSeVolumeByWorkId( spep_8 + 38, SE031, 48.6 );
setSeVolumeByWorkId( spep_8 + 39, SE031, 51.3 );
setSeVolumeByWorkId( spep_8 + 40, SE031, 54 );
stopSe( spep_8 + 72, SE031, 12 );

--爆発
SE032 = playSe( spep_8 + 86, 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+136;
------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 120, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 120, finish, 255 );

--SE
--悟天着地
SE033 = playSe( spep_9 + 42, 1106 );
setSeVolumeByWorkId( spep_9 + 42, SE033, 141 );
SE034 = playSe( spep_9 + 4, 1207 );
setSeVolumeByWorkId( spep_9 + 4, SE034, 0 );
setSeVolumeByWorkId( spep_9 + 5, SE034, 5 );
setSeVolumeByWorkId( spep_9 + 6, SE034, 10 );
setSeVolumeByWorkId( spep_9 + 7, SE034, 15 );
setSeVolumeByWorkId( spep_9 + 8, SE034, 20 );
setSeVolumeByWorkId( spep_9 + 9, SE034, 25 );
setSeVolumeByWorkId( spep_9 + 10, SE034, 30 );
setSeVolumeByWorkId( spep_9 + 11, SE034, 35 );
setSeVolumeByWorkId( spep_9 + 12, SE034, 40 );
setSeVolumeByWorkId( spep_9 + 13, SE034, 45 );
setSeVolumeByWorkId( spep_9 + 14, SE034, 50 );
setSeVolumeByWorkId( spep_9 + 15, SE034, 55 );
setSeVolumeByWorkId( spep_9 + 16, SE034, 60 );
setSeVolumeByWorkId( spep_9 + 17, SE034, 65 );
setSeVolumeByWorkId( spep_9 + 18, SE034, 70 );
setSeVolumeByWorkId( spep_9 + 19, SE034, 75 );
setSeVolumeByWorkId( spep_9 + 20, SE034, 80 );
setSeVolumeByWorkId( spep_9 + 21, SE034, 85 );
setSeVolumeByWorkId( spep_9 + 22, SE034, 90 );
setSeVolumeByWorkId( spep_9 + 23, SE034, 95 );
setSeVolumeByWorkId( spep_9 + 24, SE034, 100 );
setStartTimeMs( SE034,  150 );
stopSe( spep_9 + 44, SE034, 10 );
SE035 = playSe( spep_9 + 38, 1108 );
setSeVolumeByWorkId( spep_9 + 38, SE035, 158 );

--悟天腕上げ
SE036 = playSe( spep_9 + 48, 1003 );
setPitch( spep_9 + 48, SE036, 200 );
setTimeStretch( SE036, 1.13, 10, 1 );

--終わり
dealDamage( spep_9 +10 );
endPhase( spep_9 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 悟天が突進する
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 176, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 176, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 174, rush, 255 );
setEffAlphaKey( spep_0 + 175, rush, 255 );
setEffAlphaKey( spep_0 + 176, rush, 0 );

--SE
--2人構える
SE001 = playSe( spep_0 + 4, 1233 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 63 );
setPitch( spep_0 + 4, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );
SE003 = playSe( spep_0 + 14, 1006 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );


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
ctba = entryEffectLife( spep_0 + 84,  10022, 20, 0x100, -1, 0, -14.5, 206.7 );--バッ
setEffShake( spep_0 + 84, ctba, 20, 10 );
setEffMoveKey( spep_0 + 84, ctba, -14.5, 206.7 , 0 );
setEffMoveKey( spep_0 + 86, ctba, -15.7, 213.8 , 0 );
setEffMoveKey( spep_0 + 88, ctba, -13.6, 198.2 , 0 );
setEffMoveKey( spep_0 + 90, ctba, -29.2, 205.4 , 0 );
setEffMoveKey( spep_0 + 92, ctba, -5.4, 212.8 , 0 );
setEffMoveKey( spep_0 + 94, ctba, -10.8, 211 , 0 );
setEffMoveKey( spep_0 + 96, ctba, -16.4, 209.2 , 0 );
setEffMoveKey( spep_0 + 98, ctba, -17.1, 210.6 , 0 );
setEffMoveKey( spep_0 + 100, ctba, -17.8, 212 , 0 );
setEffMoveKey( spep_0 + 102, ctba, -17.2, 210.7 , 0 );
setEffMoveKey( spep_0 + 104, ctba, -16.5, 209.3 , 0 );

setEffScaleKey( spep_0 + 84, ctba,0,0);
setEffScaleKey( spep_0 + 86, ctba,0.57,0.57);
setEffScaleKey( spep_0 + 88, ctba,1.13,1.13);
setEffScaleKey( spep_0 + 90, ctba,1.14,1.14);
setEffScaleKey( spep_0 + 92, ctba,1.15,1.15);
setEffScaleKey( spep_0 + 94, ctba,1.17,1.17);
setEffScaleKey( spep_0 + 96, ctba,1.19,1.19);
setEffScaleKey( spep_0 + 98, ctba,1.2,1.2);
setEffScaleKey( spep_0 + 100, ctba,1.22,1.22);
setEffScaleKey( spep_0 + 102, ctba,1.23,1.23);
setEffScaleKey( spep_0 + 104, ctba,1.24,1.24);

setEffRotateKey( spep_0 + 84, ctba, 12.8 );
setEffRotateKey( spep_0 + 86, ctba, 13 );
setEffRotateKey( spep_0 + 104, ctba, 13 );

setEffAlphaKey( spep_0 + 84, ctba, 255 );
setEffAlphaKey( spep_0 + 104, ctba, 255 );

--文字エントリー
ctshun = entryEffectLife( spep_0-3 + 124,  10011, 20, 0x100, -1, 0, 81.1, 319.8 );--シュンッ
setEffShake( spep_0-3 + 124, ctshun, 20, 10 );
setEffMoveKey( spep_0-3 + 124, ctshun, 81.1, 319.8 , 0 );
setEffMoveKey( spep_0-3 + 126, ctshun, 82.9, 313.7 , 0 );
setEffMoveKey( spep_0-3 + 128, ctshun, 78.2, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 130, ctshun, 85.8, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 132, ctshun, 78.5, 305.4 , 0 );
setEffMoveKey( spep_0-3 + 134, ctshun, 81.4, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 136, ctshun, 81.2, 320.9 , 0 );
setEffMoveKey( spep_0-3 + 138, ctshun, 85, 306.8 , 0 );
setEffMoveKey( spep_0-3 + 140, ctshun, 78, 304.7 , 0 );
setEffMoveKey( spep_0-3 + 142, ctshun, 88.7, 320.6 , 0 );
setEffMoveKey( spep_0-3 + 144, ctshun, 91.2, 320.8 , 0 );

setEffScaleKey( spep_0-3 + 124, ctshun, 0.01, 0.01 );
setEffScaleKey( spep_0-3 + 126, ctshun, 0.99, 1.01 );
setEffScaleKey( spep_0-3 + 128, ctshun, 1.97, 2.02 );
setEffScaleKey( spep_0-3 + 130, ctshun, 2, 2.05 );
setEffScaleKey( spep_0-3 + 132, ctshun, 2.03, 2.09 );
setEffScaleKey( spep_0-3 + 134, ctshun, 2.07, 2.12 );
setEffScaleKey( spep_0-3 + 136, ctshun, 2.1, 2.15 );
setEffScaleKey( spep_0-3 + 138, ctshun, 2.13, 2.19 );
setEffScaleKey( spep_0-3 + 140, ctshun, 2.16, 2.22 );
setEffScaleKey( spep_0-3 + 142, ctshun, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 144, ctshun, 4.28, 4.22 );

setEffRotateKey( spep_0-3 + 124, ctshun, -6 );
setEffRotateKey( spep_0-3 + 144, ctshun, -6 );

setEffAlphaKey( spep_0-3 + 124, ctshun, 255 );
setEffAlphaKey( spep_0-3 + 140, ctshun, 255 );
setEffAlphaKey( spep_0-3 + 142, ctshun, 128 );
setEffAlphaKey( spep_0-3 + 144, ctshun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 88,  906, 90, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_0-3 + 88, shuchusen1, 90, 20 );
setEffMoveKey( spep_0-3 + 88, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_0-3 + 178, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_0-3 + 88, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 178, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 88, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 178, shuchusen1, 180 );


setEffAlphaKey( spep_0-3 + 88, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 178, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--悟天ダッシュ
SE004 = playSe( spep_0 + 80, 1182 );
stopSe( spep_0 + 132, SE004, 4 );
SE005 = playSe( spep_0 + 80, 1117 );
stopSe( spep_0 + 132, SE005, 4 );

--瞬間移動
SE006 = playSe( spep_0 + 130, 1109 );

--次の準備
spep_1=spep_0+176;
------------------------------------------------------
-- 悟天の蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 54, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 52, kick_f, 255 );
setEffAlphaKey( spep_1 + 53, kick_f, 255 );
setEffAlphaKey( spep_1 + 54, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 54, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 52, kick_b, 255 );
setEffAlphaKey( spep_1 + 53, kick_b, 255 );
setEffAlphaKey( spep_1 + 54, kick_b, 0 );

--文字エントリー
ctshun2 = entryEffectLife( spep_1-2 + 4,  10011, 16, 0x100, -1, 0, 3.9, 124.2 );--シュンッ
setEffShake( spep_1-2 + 4, ctshun2, 16, 10 );
setEffMoveKey( spep_1-2 + 4, ctshun2, 3.9, 124.2 , 0 );
setEffMoveKey( spep_1-2 + 6, ctshun2, 4.9, 120.7 , 0 );
setEffMoveKey( spep_1-2 + 8, ctshun2, 2.2, 116.3 , 0 );
setEffMoveKey( spep_1-2 + 10, ctshun2, 6.6, 124.5 , 0 );
setEffMoveKey( spep_1-2 + 12, ctshun2, 2.4, 115.9 , 0 );
setEffMoveKey( spep_1-2 + 14, ctshun2, 4.1, 122.3 , 0 );
setEffMoveKey( spep_1-2 + 16, ctshun2, 3.9, 124.9 , 0 );
setEffMoveKey( spep_1-2 + 18, ctshun2, 6.1, 116.7 , 0 );
setEffMoveKey( spep_1-2 + 20, ctshun2, 2, 115.5 , 0 );

setEffScaleKey( spep_1-2 + 4, ctshun2, 0, 0 );
setEffScaleKey( spep_1-2 + 6, ctshun2, 0.57, 0.59 );
setEffScaleKey( spep_1-2 + 8, ctshun2, 1.15, 1.17 );
setEffScaleKey( spep_1-2 + 10, ctshun2, 1.16, 1.19 );
setEffScaleKey( spep_1-2 + 12, ctshun2, 1.18, 1.21 );
setEffScaleKey( spep_1-2 + 14, ctshun2, 1.2, 1.23 );
setEffScaleKey( spep_1-2 + 16, ctshun2, 1.22, 1.25 );
setEffScaleKey( spep_1-2 + 18, ctshun2, 1.24, 1.27 );
setEffScaleKey( spep_1-2 + 20, ctshun2, 1.26, 1.29 );

setEffRotateKey( spep_1-2 + 4, ctshun2, -6 );
setEffRotateKey( spep_1-2 + 20, ctshun2, -6 );

setEffAlphaKey( spep_1-2 + 4, ctshun2, 255 );
setEffAlphaKey( spep_1-2 + 20, ctshun2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-2 + 22,  10020, 32, 0x100, -1, 0, 5.6, 169.8 );--バキッ
setEffShake( spep_1-2 + 22, ctbaki, 32, 10 );
setEffMoveKey( spep_1-2 + 22, ctbaki, 5.6, 169.8 , 0 );
setEffMoveKey( spep_1-2 + 24, ctbaki, 8.2, 172 , 0 );
setEffMoveKey( spep_1-2 + 26, ctbaki, 19.1, 180.3 , 0 );
setEffMoveKey( spep_1-2 + 28, ctbaki, -7, 180.9 , 0 );
setEffMoveKey( spep_1-2 + 30, ctbaki, -5.1, 151.5 , 0 );
setEffMoveKey( spep_1-2 + 32, ctbaki, 9, 148.2 , 0 );
setEffMoveKey( spep_1-2 + 34, ctbaki, 28.5, 184.8 , 0 );
setEffMoveKey( spep_1-2 + 36, ctbaki, 33.5, 168.1 , 0 );
setEffMoveKey( spep_1-2 + 38, ctbaki, 38.5, 151.4 , 0 );
setEffMoveKey( spep_1-2 + 40, ctbaki, 28.2, 161.5 , 0 );
setEffMoveKey( spep_1-2 + 42, ctbaki, 17.9, 171.7 , 0 );
setEffMoveKey( spep_1-2 + 44, ctbaki, 12, 171.1 , 0 );
setEffMoveKey( spep_1-2 + 46, ctbaki, 19.1, 180.3 , 0 );
setEffMoveKey( spep_1-2 + 48, ctbaki, -14.8, 187.7 , 0 );
setEffMoveKey( spep_1-2 + 50, ctbaki, -18.3, 129.2 , 0 );
setEffMoveKey( spep_1-2 + 52, ctbaki, 15.3, 108.5 , 0 );
setEffMoveKey( spep_1-2 + 54, ctbaki, 17.4, 95.2 , 0 );

setEffScaleKey( spep_1-2 + 22, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_1-2 + 24, ctbaki, 0.75, 0.75 );
setEffScaleKey( spep_1-2 + 26, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-2 + 46, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-2 + 48, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_1-2 + 50, ctbaki, 3.31, 3.31 );
setEffScaleKey( spep_1-2 + 52, ctbaki, 4.23, 4.23 );
setEffScaleKey( spep_1-2 + 54, ctbaki, 5.14, 5.14 );

setEffRotateKey( spep_1-2 + 22, ctbaki, -4 );
setEffRotateKey( spep_1-2 + 24, ctbaki, 2.8 );
setEffRotateKey( spep_1-2 + 26, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 28, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 30, ctbaki, 9.6 );
setEffRotateKey( spep_1-2 + 32, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 40, ctbaki, 9.7 );
setEffRotateKey( spep_1-2 + 42, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 46, ctbaki, 9.8 );
setEffRotateKey( spep_1-2 + 48, ctbaki, 9.6 );
setEffRotateKey( spep_1-2 + 54, ctbaki, 9.6 );

setEffAlphaKey( spep_1-2 + 22, ctbaki, 255 );
setEffAlphaKey( spep_1-2 + 46, ctbaki, 255 );
setEffAlphaKey( spep_1-2 + 48, ctbaki, 191 );
setEffAlphaKey( spep_1-2 + 50, ctbaki, 128 );
setEffAlphaKey( spep_1-2 + 52, ctbaki, 64 );
setEffAlphaKey( spep_1-2 + 54, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 24,  906, 30+2, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_1-3 + 24, shuchusen2, 30+2, 20 );
setEffMoveKey( spep_1-3 + 24, shuchusen2, 0, -20.3 , 0 );
setEffMoveKey( spep_1-1 + 54, shuchusen2, 0, -20.3 , 0 );

setEffScaleKey( spep_1-3 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1-1 + 54, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_1-1 + 54, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_1-1 + 54, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 54, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 24, 1, 105 );

setMoveKey( spep_1 + 0, 1, 53.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 23, 1, 53.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 85.9, -64 , 0 );
setMoveKey( spep_1-3 + 26, 1, 94.9, -49.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 85, -53.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, 91.1, -52.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 80.5, -36.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 80.3, -41.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 83.3, -32.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 86.2, -23.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 84.7, -17.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, 83.1, -11.4 , 0 );
setMoveKey( spep_1-3 + 44, 1, 84.6, -6.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 86, -1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 88.2, 6.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 90.3, 14.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, 88.2, 18.4 , 0 );
setMoveKey( spep_1 + 54, 1, 86, 21.9 , 0 );

setScaleKey( spep_1 + 0, 1,1.3,1.3);
setScaleKey( spep_1-3 + 23, 1,1.3,1.3);
setScaleKey( spep_1-3 + 24, 1,1.23,1.23);
setScaleKey( spep_1-3 + 26, 1,1.19,1.19);
setScaleKey( spep_1-3 + 28, 1,1.17,1.17);
setScaleKey( spep_1-3 + 30, 1,1.13,1.13);
setScaleKey( spep_1-3 + 32, 1,1.09,1.09);
setScaleKey( spep_1-3 + 34, 1,1.06,1.06);
setScaleKey( spep_1-3 + 36, 1,1.02,1.02);
setScaleKey( spep_1-3 + 38, 1,0.98,0.98);
setScaleKey( spep_1-3 + 40, 1,0.96,0.96);
setScaleKey( spep_1-3 + 42, 1,0.92,0.92);
setScaleKey( spep_1-3 + 44, 1,0.89,0.89);
setScaleKey( spep_1-3 + 46, 1,0.85,0.85);
setScaleKey( spep_1-3 + 48, 1,0.81,0.81);
setScaleKey( spep_1-3 + 50, 1,0.79,0.79);
setScaleKey( spep_1-3 + 52, 1,0.75,0.75);
setScaleKey( spep_1 + 54, 1,0.71,0.71);

setRotateKey( spep_1 + 0, 1, 10 );
setRotateKey( spep_1-3 + 23, 1, 10 );
setRotateKey( spep_1-3 + 24, 1, 0 );
setRotateKey( spep_1 + 54, 1, 0 );

--SE
--瞬間移動
SE007 = playSe( spep_1 + 2, 1109 );

--悟天キック
SE008 = playSe( spep_1 + 22, 1189 );
SE009 = playSe( spep_1 + 26, 1010 );
SE010 = playSe( spep_1 + 28, 1110 );
setSeVolumeByWorkId( spep_1 + 28, SE010, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+54;
------------------------------------------------------
-- 悟天が振り返る
------------------------------------------------------
-- ** エフェクト等 ** --
look_back = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, look_back, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, look_back, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, look_back, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, look_back, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, look_back, 0 );
setEffRotateKey( spep_2 + 76, look_back, 0 );
setEffAlphaKey( spep_2 + 0, look_back, 255 );
setEffAlphaKey( spep_2 + 74, look_back, 255 );
setEffAlphaKey( spep_2 + 75, look_back, 255 );
setEffAlphaKey( spep_2 + 76, look_back, 0 );

--SE
--悟天顔向き変える
SE011 = playSe( spep_2 + 0, 1003 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 68 );

--悟天ピース
SE012 = playSe( spep_2 + 32, 1233 );
setSeVolumeByWorkId( spep_2 + 32, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 33, SE012, 33.8 );
setSeVolumeByWorkId( spep_2 + 34, SE012, 68 );
setStartTimeMs( SE012,  100 );
SE013 = playSe( spep_2 + 34, 34 );
setPitch( spep_2 + 34, SE013, 400 );
setTimeStretch( SE013, 1.27, 10, 1 );
SE014 = playSe( spep_2 + 34, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+76
------------------------------------------------------
-- 敵が踏ん張る
------------------------------------------------------
-- ** エフェクト等 ** --
step_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, step_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, step_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, step_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, step_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_f, 0 );
setEffRotateKey( spep_3 + 56, step_f, 0 );
setEffAlphaKey( spep_3 + 0, step_f, 255 );
setEffAlphaKey( spep_3 + 54, step_f, 255 );
setEffAlphaKey( spep_3 + 55, step_f, 255 );
setEffAlphaKey( spep_3 + 56, step_f, 0 );

-- ** エフェクト等 ** --
step_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, step_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, step_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, step_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, step_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_b, 0 );
setEffRotateKey( spep_3 + 56, step_b, 0 );
setEffAlphaKey( spep_3 + 0, step_b, 255 );
setEffAlphaKey( spep_3 + 54, step_b, 255 );
setEffAlphaKey( spep_3 + 55, step_b, 255 );
setEffAlphaKey( spep_3 + 56, step_b, 0 );

--文字エントリー
ctba2 = entryEffectLife( spep_3-3 + 18,  10022, 24, 0x100, -1, 0, 128.9, 91.4 );--バッ
setEffShake( spep_3-3 + 18, ctba2, 24, 10 );
setEffMoveKey( spep_3-3 + 18, ctba2, 128.9, 91.4 , 0 );
setEffMoveKey( spep_3-3 + 20, ctba2, 125.8, 95 , 0 );
setEffMoveKey( spep_3-3 + 22, ctba2, 132.3, 87 , 0 );
setEffMoveKey( spep_3-3 + 24, ctba2, 121.2, 85.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctba2, 131.8, 97.9 , 0 );
setEffMoveKey( spep_3-3 + 28, ctba2, 129.4, 95.1 , 0 );
setEffMoveKey( spep_3-3 + 30, ctba2, 127, 92.2 , 0 );
setEffMoveKey( spep_3-3 + 32, ctba2, 126.1, 92.7 , 0 );
setEffMoveKey( spep_3-3 + 34, ctba2, 125.2, 93.2 , 0 );
setEffMoveKey( spep_3-3 + 36, ctba2, 126, 92.7 , 0 );
setEffMoveKey( spep_3-3 + 38, ctba2, 126.9, 92.2 , 0 );
setEffMoveKey( spep_3-3 + 40, ctba2, 124.6, 93.3 , 0 );
setEffMoveKey( spep_3-3 + 42, ctba2, 123.2, 93.9 , 0 );

setEffScaleKey( spep_3-3 + 18, ctba2,0,0);
setEffScaleKey( spep_3-3 + 20, ctba2,0.35,0.35);
setEffScaleKey( spep_3-3 + 22, ctba2,0.71,0.71);
setEffScaleKey( spep_3-3 + 24, ctba2,0.71,0.71);
setEffScaleKey( spep_3-3 + 26, ctba2,0.72,0.72);
setEffScaleKey( spep_3-3 + 28, ctba2,0.73,0.73);
setEffScaleKey( spep_3-3 + 30, ctba2,0.73,0.73);
setEffScaleKey( spep_3-3 + 32, ctba2,0.75,0.75);
setEffScaleKey( spep_3-3 + 34, ctba2,0.76,0.76);
setEffScaleKey( spep_3-3 + 36, ctba2,0.77,0.77);
setEffScaleKey( spep_3-3 + 38, ctba2,0.77,0.77);
setEffScaleKey( spep_3-3 + 40, ctba2,1.12,1.12);
setEffScaleKey( spep_3-3 + 42, ctba2,1.47,1.47);

setEffRotateKey( spep_3-3 + 18, ctba2, -15.8 );
setEffRotateKey( spep_3-3 + 20, ctba2, -16 );
setEffRotateKey( spep_3-3 + 42, ctba2, -16 );

setEffAlphaKey( spep_3-3 + 18, ctba2, 255 );
setEffAlphaKey( spep_3-3 + 38, ctba2, 255 );
setEffAlphaKey( spep_3-3 + 40, ctba2, 128 );
setEffAlphaKey( spep_3-3 + 42, ctba2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 18,  906, 38+2, 0x100, -1, 0, 211, -17.3 );
setEffShake( spep_3-3 + 18, shuchusen3, 38+2, 20 );
setEffMoveKey( spep_3-3 + 18, shuchusen3, 211, -17.3 , 0 );
setEffMoveKey( spep_3-1 + 56, shuchusen3, 211, -17.3 , 0 );

setEffScaleKey( spep_3-3 + 18, shuchusen3, 1.97, 1.97 );
setEffScaleKey( spep_3-1 + 56, shuchusen3, 1.97, 1.97 );

setEffRotateKey( spep_3-3 + 18, shuchusen3, 180 );
setEffRotateKey( spep_3-1 + 56, shuchusen3, 180 );

setEffAlphaKey( spep_3-3 + 18, shuchusen3, 255 );
setEffAlphaKey( spep_3-1 + 56, shuchusen3, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3-3 + 18, 1, 117 );

setMoveKey( spep_3 + 0, 1, 125.3, -32.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 137.5, -34.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 142.7, -36.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 146.9, -39.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 150.4, -41.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 153.5, -44.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 156.3, -46.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 158.8, -49.6 , 0 );
setMoveKey( spep_3-3 + 17, 1, 161.1, -52.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 141.6, -66 , 0 );
setMoveKey( spep_3-3 + 20, 1, 142.5, -65.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 143.4, -64.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 144.3, -63.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 145.2, -63 , 0 );
setMoveKey( spep_3-3 + 28, 1, 146.2, -62.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 147.1, -61.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 146.8, -60.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 146.6, -60.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 146.4, -59.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 146.2, -59.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 145.9, -58.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 145.8, -58.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 145.6, -57.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 145.5, -57.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 145.3, -57 , 0 );
setMoveKey( spep_3-3 + 50, 1, 145.2, -56.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 145.1, -56.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 145, -56.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 144.9, -56 , 0 );
setMoveKey( spep_3-2 + 58, 1, 144.9, -55.9 , 0 );

setScaleKey( spep_3 + 0, 1,1.47,1.47);
setScaleKey( spep_3-3 + 4, 1, 1.08,1.08);
setScaleKey( spep_3-3 + 6, 1, 1,1);
setScaleKey( spep_3-3 + 8, 1, 0.92,0.92);
setScaleKey( spep_3-3 + 10, 1,0.86,0.86);
setScaleKey( spep_3-3 + 12, 1,0.8,0.8);
setScaleKey( spep_3-3 + 14, 1,0.75,0.75);
setScaleKey( spep_3-3 + 17, 1,0.7,0.7);
setScaleKey( spep_3-3 + 18, 1,0.78,0.78);
setScaleKey( spep_3-3 + 20, 1,0.78,0.78);
setScaleKey( spep_3-3 + 22, 1,0.78,0.78);
setScaleKey( spep_3-3 + 24, 1,0.82,0.82);
setScaleKey( spep_3-3 + 26, 1,0.85,0.85);
setScaleKey( spep_3-3 + 28, 1,0.85,0.85);
setScaleKey( spep_3-3 + 30, 1,0.85,0.85);
setScaleKey( spep_3-3 + 32, 1,0.86,0.86);
setScaleKey( spep_3-3 + 34, 1,0.87,0.87);
setScaleKey( spep_3-3 + 36, 1,0.88,0.88);
setScaleKey( spep_3-3 + 38, 1,0.88,0.88);
setScaleKey( spep_3-3 + 40, 1,0.9,0.9);
setScaleKey( spep_3-3 + 42, 1,0.91,0.91);
setScaleKey( spep_3-3 + 44, 1,0.91,0.91);
setScaleKey( spep_3-3 + 46, 1,0.92,0.92);
setScaleKey( spep_3-3 + 48, 1,0.92,0.92);
setScaleKey( spep_3-3 + 50, 1,0.93,0.93);
setScaleKey( spep_3-3 + 54, 1,0.93,0.93);
setScaleKey( spep_3-2 + 58, 1,0.95,0.95);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-2 + 58, 1, 0 );

--SE
--敵立ち上がる
SE015 = playSe( spep_3 + 16, 1301 );
setSeVolumeByWorkId( spep_3 + 16, SE015, 126 );
SE016 = playSe( spep_3 + 18, 1007 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- かめはめ波を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, tame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 46, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 44, tame, 255 );
setEffAlphaKey( spep_4 + 45, tame, 255 );
setEffAlphaKey( spep_4 + 46, tame, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 4,  906, 42+2, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_4-3 + 4, shuchusen4, 42+2, 20 );
setEffMoveKey( spep_4-3 + 4, shuchusen4, 0, -20.3 , 0 );
setEffMoveKey( spep_4-1 + 46, shuchusen4, 0, -20.3 , 0 );

setEffScaleKey( spep_4-3 + 4, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4-1 + 46, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4-3 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4-1 + 46, shuchusen4, 180 );

setEffAlphaKey( spep_4-3 + 4, shuchusen4, 255 );
setEffAlphaKey( spep_4-1 + 46, shuchusen4, 255 );

--SE
--悟飯かまえる
SE017 = playSe( spep_4 + 0, 1258 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 54 );
SE018 = playSe( spep_4 + 6, 1068 );
setSeVolumeByWorkId( spep_4 + 6, SE018, 78 );
SE019 = playSe( spep_4 + 6, 44 );
SE020 = playSe( spep_4 + 20, 1233 );
setSeVolumeByWorkId( spep_4 + 20, SE020, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE020, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE020, 50 );
setSeVolumeByWorkId( spep_4 + 23, SE020, 75 );
setSeVolumeByWorkId( spep_4 + 24, SE020, 100 );
setStartTimeMs( SE020,  100 );
setPitch( spep_4 + 20, SE020, -400 );
setTimeStretch( SE020, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+46;
------------------------------------------------------
-- 悟天が逃げる
------------------------------------------------------
-- ** エフェクト等 ** --
escape_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, escape_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, escape_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, escape_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, escape_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, escape_f, 0 );
setEffRotateKey( spep_5 + 60, escape_f, 0 );
setEffAlphaKey( spep_5 + 0, escape_f, 255 );
setEffAlphaKey( spep_5 + 60, escape_f, 255 );
setEffAlphaKey( spep_5 + 61, escape_f, 0 );
setEffAlphaKey( spep_5 + 62, escape_f, 0 );

-- ** エフェクト等 ** --
escape_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, escape_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, escape_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, escape_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, escape_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, escape_b, 0 );
setEffRotateKey( spep_5 + 60, escape_b, 0 );
setEffAlphaKey( spep_5 + 0, escape_b, 255 );
setEffAlphaKey( spep_5 + 60, escape_b, 255 );
setEffAlphaKey( spep_5 + 61, escape_b, 0 );
setEffAlphaKey( spep_5 + 62, escape_b, 0 );

--文字エントリー
ctgogogo = entryEffectLife( spep_5-3 + 18,  10008, 40, 0x100, -1, 0, -61.7, 159.8 );--ゴゴゴ
setEffShake( spep_5-3 + 18, ctgogogo, 40, 10 );
setEffMoveKey( spep_5-3 + 18, ctgogogo, -61.7, 159.8 , 0 );
setEffMoveKey( spep_5-3 + 20, ctgogogo, -63.8, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 22, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 24, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 26, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 28, ctgogogo, -68.8, 163.5 , 0 );
setEffMoveKey( spep_5-3 + 30, ctgogogo, -64.6, 149.3 , 0 );
setEffMoveKey( spep_5-3 + 32, ctgogogo, -57.5, 149.4 , 0 );
setEffMoveKey( spep_5-3 + 34, ctgogogo, -52.5, 169.9 , 0 );
setEffMoveKey( spep_5-3 + 36, ctgogogo, -65.8, 175.4 , 0 );
setEffMoveKey( spep_5-3 + 38, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 40, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 42, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 44, ctgogogo, -68.8, 163.5 , 0 );
setEffMoveKey( spep_5-3 + 46, ctgogogo, -64.6, 149.3 , 0 );
setEffMoveKey( spep_5-3 + 48, ctgogogo, -57.5, 149.4 , 0 );
setEffMoveKey( spep_5-3 + 50, ctgogogo, -65.8, 175.4 , 0 );
setEffMoveKey( spep_5-3 + 52, ctgogogo, -48.5, 173.3 , 0 );
setEffMoveKey( spep_5-3 + 54, ctgogogo, -68.1, 152.1 , 0 );
setEffMoveKey( spep_5-3 + 56, ctgogogo, -56.4, 166.5 , 0 );
setEffMoveKey( spep_5-3 + 58, ctgogogo, -68.8, 163.5 , 0 );

setEffScaleKey( spep_5-3 + 18, ctgogogo, 0.01, 0.01 );
setEffScaleKey( spep_5-3 + 20, ctgogogo, 0.95, 0.99 );
setEffScaleKey( spep_5-3 + 22, ctgogogo, 1.89, 1.97 );
setEffScaleKey( spep_5-3 + 58, ctgogogo, 1.89, 1.97 );

setEffRotateKey( spep_5-3 + 18, ctgogogo, -7.8 );
setEffRotateKey( spep_5-3 + 20, ctgogogo, -8 );
setEffRotateKey( spep_5-3 + 58, ctgogogo, -8 );

setEffAlphaKey( spep_5-3 + 18, ctgogogo, 255 );
setEffAlphaKey( spep_5-3 + 58, ctgogogo, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 117 );

setMoveKey( spep_5 + 0, 1, 165.5, -149.1 , 0 );
setMoveKey( spep_5 + 2, 1, 164.1, -148.5 , 0 );
setMoveKey( spep_5 + 4, 1, 162.8, -147.8 , 0 );
setMoveKey( spep_5 + 6, 1, 163, -146.3 , 0 );
setMoveKey( spep_5 + 8, 1, 163.4, -144.7 , 0 );
setMoveKey( spep_5 + 10, 1, 164, -144.4 , 0 );
setMoveKey( spep_5 + 12, 1, 164.8, -144.2 , 0 );
setMoveKey( spep_5 + 14, 1, 164.1, -144.6 , 0 );
setMoveKey( spep_5 + 16, 1, 163.4, -145.1 , 0 );
setMoveKey( spep_5 + 18, 1, 162.5, -144.2 , 0 );
setMoveKey( spep_5 + 20, 1, 161.6, -143.2 , 0 );
setMoveKey( spep_5 + 22, 1, 162.1, -143.8 , 0 );
setMoveKey( spep_5 + 24, 1, 162.6, -144.2 , 0 );
setMoveKey( spep_5 + 26, 1, 163.1, -143.4 , 0 );
setMoveKey( spep_5 + 28, 1, 163.6, -142.6 , 0 );
setMoveKey( spep_5 + 30, 1, 162.7, -143.1 , 0 );
setMoveKey( spep_5 + 32, 1, 162, -143.5 , 0 );
setMoveKey( spep_5 + 34, 1, 163, -144.6 , 0 );
setMoveKey( spep_5 + 36, 1, 164.1, -143.1 , 0 );
setMoveKey( spep_5 + 38, 1, 165.1, -144.1 , 0 );
setMoveKey( spep_5 + 40, 1, 163.5, -142.8 , 0 );
setMoveKey( spep_5 + 42, 1, 164.5, -141.3 , 0 );
setMoveKey( spep_5 + 44, 1, 166.7, -143.7 , 0 );
setMoveKey( spep_5 + 46, 1, 163.7, -145.9 , 0 );
setMoveKey( spep_5 + 48, 1, 160.9, -143 , 0 );
setMoveKey( spep_5 + 50, 1, 163.2, -140.3 , 0 );
setMoveKey( spep_5 + 52, 1, 165.4, -142.7 , 0 );
setMoveKey( spep_5 + 54, 1, 168.6, -138.7 , 0 );
setMoveKey( spep_5 + 56, 1, 170.2, -141.4 , 0 );
setMoveKey( spep_5 + 58, 1, 166.5, -143.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 6, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 10, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 30, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 58, 1, 0.37, 0.37 );

setRotateKey( spep_5 + 0, 1, 10 );
setRotateKey( spep_5 + 58, 1, 10 );

--SE
--悟飯かまえる
stopSe( spep_5 + 2, SE017, 28 );
stopSe( spep_5 + 2, SE018, 28 );

--悟天ジャンプ
SE021 = playSe( spep_5 + 0, 1207 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 60 );

--悟飯かめはめ波溜め
SE022 = playSe( spep_5 + 6, 1209 );
SE023 = playSe( spep_5 + 6, 1210 );

--白フェード
entryFade( spep_5 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--悟天ジャンプ
stopSe( spep_6 + 8, SE021, 0 );

--悟飯かめはめ波溜め
stopSe( spep_6 + 8, SE022, 0 );
stopSe( spep_6 + 8, SE023, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94
------------------------------------------------------
-- かめはめ波を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 58, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_7 + 58, beam, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 58, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 56, beam, 255 );
setEffAlphaKey( spep_7 + 57, beam, 255 );
setEffAlphaKey( spep_7 + 58, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_7-3 + 10,  10012, 50, 0x100, -1, 0, 84.7, 421.8,1000 );--ズオッ
setEffShake( spep_7-3 + 10, ctzuo, 50, 10 );
setEffMoveKey( spep_7-3 + 10, ctzuo, 84.7, 421.8 , 0 );
setEffMoveKey( spep_7-3 + 12, ctzuo, 89.5, 425.4 , 0 );
setEffMoveKey( spep_7-3 + 14, ctzuo, 103.3, 434.7 , 0 );
setEffMoveKey( spep_7-3 + 16, ctzuo, 60.6, 418 , 0 );
setEffMoveKey( spep_7-3 + 18, ctzuo, 109.1, 438.8 , 0 );
setEffMoveKey( spep_7-3 + 20, ctzuo, 61, 442.3 , 0 );
setEffMoveKey( spep_7-3 + 22, ctzuo, 119.3, 454.8 , 0 );
setEffMoveKey( spep_7-3 + 24, ctzuo, 90.5, 384.8 , 0 );
setEffMoveKey( spep_7-3 + 26, ctzuo, 124.9, 446.3 , 0 );
setEffMoveKey( spep_7-3 + 28, ctzuo, 152.4, 422 , 0 );
setEffMoveKey( spep_7-3 + 30, ctzuo, 141.2, 389.1 , 0 );
setEffMoveKey( spep_7-3 + 32, ctzuo, 112.1, 418.7 , 0 );
setEffMoveKey( spep_7-3 + 34, ctzuo, 94.8, 425.3 , 0 );
setEffMoveKey( spep_7-3 + 36, ctzuo, 95.3, 412.9 , 0 );
setEffMoveKey( spep_7-3 + 38, ctzuo, 85.3, 423 , 0 );
setEffMoveKey( spep_7-3 + 40, ctzuo, 117.3, 455.6 , 0 );
setEffMoveKey( spep_7-3 + 42, ctzuo, 88.5, 385.6 , 0 );
setEffMoveKey( spep_7-3 + 44, ctzuo, 122.1, 447.5 , 0 );
setEffMoveKey( spep_7-3 + 46, ctzuo, 145.9, 424.8 , 0 );
setEffMoveKey( spep_7-3 + 48, ctzuo, 134.4, 392 , 0 );
setEffMoveKey( spep_7-3 + 50, ctzuo, 109.3, 419.9 , 0 );
setEffMoveKey( spep_7-3 + 52, ctzuo, 93.9, 425.7 , 0 );
setEffMoveKey( spep_7-3 + 54, ctzuo, 87.2, 419 , 0 );
setEffMoveKey( spep_7-3 + 56, ctzuo, 115.6, 456.4 , 0 );
setEffMoveKey( spep_7-3 + 58, ctzuo, 86.8, 386.4 , 0 );
setEffMoveKey( spep_7-3 + 60, ctzuo, 119.6, 448.6 , 0 );

setEffScaleKey( spep_7-3 + 10, ctzuo, 0.01, 0.01 );
setEffScaleKey( spep_7-3 + 12, ctzuo, 1.43, 1.27 );
setEffScaleKey( spep_7-3 + 14, ctzuo, 2.86, 2.52 );
setEffScaleKey( spep_7-3 + 16, ctzuo, 2.82, 2.52 );
setEffScaleKey( spep_7-3 + 18, ctzuo, 2.79, 2.52 );
setEffScaleKey( spep_7-3 + 20, ctzuo, 2.76, 2.52 );
setEffScaleKey( spep_7-3 + 22, ctzuo, 2.72, 2.52 );
setEffScaleKey( spep_7-3 + 24, ctzuo, 2.69, 2.52 );
setEffScaleKey( spep_7-3 + 26, ctzuo, 2.66, 2.52 );
setEffScaleKey( spep_7-3 + 28, ctzuo, 2.63, 2.52 );
setEffScaleKey( spep_7-3 + 30, ctzuo, 2.59, 2.52 );
setEffScaleKey( spep_7-3 + 32, ctzuo, 2.56, 2.52 );
setEffScaleKey( spep_7-3 + 34, ctzuo, 2.53, 2.52 );
setEffScaleKey( spep_7-3 + 36, ctzuo, 2.5, 2.52 );
setEffScaleKey( spep_7-3 + 38, ctzuo, 2.46, 2.52 );
setEffScaleKey( spep_7-3 + 40, ctzuo, 2.44, 2.54 );
setEffScaleKey( spep_7-3 + 42, ctzuo, 2.42, 2.55 );
setEffScaleKey( spep_7-3 + 44, ctzuo, 2.4, 2.56 );
setEffScaleKey( spep_7-3 + 46, ctzuo, 2.38, 2.57 );
setEffScaleKey( spep_7-3 + 48, ctzuo, 2.36, 2.59 );
setEffScaleKey( spep_7-3 + 50, ctzuo, 2.34, 2.6 );
setEffScaleKey( spep_7-3 + 52, ctzuo, 2.31, 2.61 );
setEffScaleKey( spep_7-3 + 54, ctzuo, 2.29, 2.63 );
setEffScaleKey( spep_7-3 + 56, ctzuo, 2.27, 2.64 );
setEffScaleKey( spep_7-3 + 58, ctzuo, 2.24, 2.65 );
setEffScaleKey( spep_7-3 + 60, ctzuo, 2.22, 2.67 );

setEffRotateKey( spep_7-3 + 10, ctzuo, 2.8 );
setEffRotateKey( spep_7-3 + 12, ctzuo, 3 );
setEffRotateKey( spep_7-3 + 60, ctzuo, 3 );

setEffAlphaKey( spep_7-3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_7-3 + 60, ctzuo, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 10,  906, 50, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_7-3 + 10, shuchusen5, 50,20 );
setEffMoveKey( spep_7-3 + 10, shuchusen5, 0, -20.3 , 0 );
setEffMoveKey( spep_7-3 + 60, shuchusen5, 0, -20.3 , 0 );

setEffScaleKey( spep_7-3 + 10, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_7-3 + 60, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_7-3 + 10, shuchusen5, 180 );
setEffRotateKey( spep_7-3 + 60, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 10, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 60, shuchusen5, 255 );

--SE
--かめはめ波発射
SE025 = playSe( spep_7 + 8, 1284 );
setSeVolumeByWorkId( spep_7 + 8, SE025, 84 );
SE026 = playSe( spep_7 + 8, 1231 );
setSeVolumeByWorkId( spep_7 + 8, SE026, 120 );
SE027 = playSe( spep_7 + 8, 1258 );
setSeVolumeByWorkId( spep_7 + 8, SE027, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+58;
------------------------------------------------------
-- 敵に当る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 136, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 136, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 136, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 134, hit_f, 255 );
setEffAlphaKey( spep_8 + 135, hit_f, 255 );
setEffAlphaKey( spep_8 + 136, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 136, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 136, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 136, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 134, hit_b, 255 );
setEffAlphaKey( spep_8 + 135, hit_b, 255 );
setEffAlphaKey( spep_8 + 136, hit_b, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_8-2 + 16,  10014, 52+1, 0x100, -1, 0, -83.3, 393.8 );--ズドドドッ
setEffShake( spep_8-2 + 16, ctzudododo, 52+1, 10 );
setEffMoveKey( spep_8-2 + 16, ctzudododo, -83.3, 393.8 , 0 );
setEffMoveKey( spep_8-2 + 18, ctzudododo, -86.9, 381.6 , 0 );
setEffMoveKey( spep_8-2 + 20, ctzudododo, -122.2, 378.2 , 0 );
setEffMoveKey( spep_8-2 + 22, ctzudododo, -83.3, 383 , 0 );
setEffMoveKey( spep_8-2 + 24, ctzudododo, -97.1, 361.2 , 0 );
setEffMoveKey( spep_8-2 + 26, ctzudododo, -117.5, 357.5 , 0 );
setEffMoveKey( spep_8-2 + 28, ctzudododo, -90.5, 385.4 , 0 );
setEffMoveKey( spep_8-2 + 30, ctzudododo, -64.5, 407.2 , 0 );
setEffMoveKey( spep_8-2 + 32, ctzudododo, -103, 379.1 , 0 );
setEffMoveKey( spep_8-2 + 34, ctzudododo, -85.6, 354.9 , 0 );
setEffMoveKey( spep_8-2 + 36, ctzudododo, -112.8, 373.2 , 0 );
setEffMoveKey( spep_8-2 + 38, ctzudododo, -116.2, 385.8 , 0 );
setEffMoveKey( spep_8-2 + 40, ctzudododo, -84.8, 338.7 , 0 );
setEffMoveKey( spep_8-2 + 42, ctzudododo, -102.1, 333.9 , 0 );
setEffMoveKey( spep_8-2 + 44, ctzudododo, -49.7, 390.9 , 0 );
setEffMoveKey( spep_8-2 + 46, ctzudododo, -105.1, 370 , 0 );
setEffMoveKey( spep_8-2 + 48, ctzudododo, -107.4, 363.1 , 0 );
setEffMoveKey( spep_8-2 + 50, ctzudododo, -88.2, 382.3 , 0 );
setEffMoveKey( spep_8-2 + 52, ctzudododo, -110.2, 370.9 , 0 );
setEffMoveKey( spep_8-2 + 54, ctzudododo, -85.6, 353.4 , 0 );
setEffMoveKey( spep_8-2 + 56, ctzudododo, -114.4, 372.5 , 0 );
setEffMoveKey( spep_8-2 + 58, ctzudododo, -117.9, 385.5 , 0 );
setEffMoveKey( spep_8-2 + 60, ctzudododo, -84.8, 336.6 , 0 );
setEffMoveKey( spep_8-2 + 62, ctzudododo, -103, 331.6 , 0 );
setEffMoveKey( spep_8-2 + 64, ctzudododo, -47.9, 390.8 , 0 );
setEffMoveKey( spep_8-2 + 66, ctzudododo, -106.1, 369.1 , 0 );
setEffMoveKey( spep_8-1 + 68, ctzudododo, -108.6, 362 , 0 );

setEffScaleKey( spep_8-2 + 16, ctzudododo, 0.01, 0.02 );
setEffScaleKey( spep_8-2 + 18, ctzudododo, 1.12, 1.17 );
setEffScaleKey( spep_8-2 + 20, ctzudododo, 2.23, 2.32 );
setEffScaleKey( spep_8-2 + 22, ctzudododo, 2.24, 2.33 );
setEffScaleKey( spep_8-2 + 24, ctzudododo, 2.25, 2.34 );
setEffScaleKey( spep_8-2 + 26, ctzudododo, 2.27, 2.35 );
setEffScaleKey( spep_8-2 + 28, ctzudododo, 2.28, 2.36 );
setEffScaleKey( spep_8-2 + 30, ctzudododo, 2.29, 2.37 );
setEffScaleKey( spep_8-2 + 32, ctzudododo, 2.31, 2.38 );
setEffScaleKey( spep_8-2 + 34, ctzudododo, 2.32, 2.39 );
setEffScaleKey( spep_8-2 + 36, ctzudododo, 2.33, 2.4 );
setEffScaleKey( spep_8-2 + 38, ctzudododo, 2.34, 2.41 );
setEffScaleKey( spep_8-2 + 40, ctzudododo, 2.36, 2.41 );
setEffScaleKey( spep_8-2 + 42, ctzudododo, 2.37, 2.42 );
setEffScaleKey( spep_8-2 + 44, ctzudododo, 2.38, 2.43 );
setEffScaleKey( spep_8-2 + 46, ctzudododo, 2.39, 2.44 );
setEffScaleKey( spep_8-2 + 48, ctzudododo, 2.41, 2.45 );
setEffScaleKey( spep_8-2 + 50, ctzudododo, 2.42, 2.46 );
setEffScaleKey( spep_8-2 + 52, ctzudododo, 2.43, 2.47 );
setEffScaleKey( spep_8-2 + 54, ctzudododo, 2.45, 2.48 );
setEffScaleKey( spep_8-2 + 56, ctzudododo, 2.46, 2.49 );
setEffScaleKey( spep_8-2 + 58, ctzudododo, 2.47, 2.5 );
setEffScaleKey( spep_8-2 + 60, ctzudododo, 2.48, 2.51 );
setEffScaleKey( spep_8-2 + 62, ctzudododo, 2.5, 2.52 );
setEffScaleKey( spep_8-2 + 64, ctzudododo, 2.51, 2.53 );
setEffScaleKey( spep_8-2 + 66, ctzudododo, 2.52, 2.53 );
setEffScaleKey( spep_8-1 + 68, ctzudododo, 2.53, 2.54 );

setEffRotateKey( spep_8-2 + 16, ctzudododo, -78.8 );
setEffRotateKey( spep_8-2 + 18, ctzudododo, -79 );
setEffRotateKey( spep_8-1 + 68, ctzudododo, -79 );

setEffAlphaKey( spep_8-2 + 16, ctzudododo, 255 );
setEffAlphaKey( spep_8-1 + 68, ctzudododo, 255 );

--文字エントリー
ctka = entryEffectLife( spep_8-2 + 76,  10004, 18, 0x100, -1, 0, 138.6, 310.3 );--カッ
setEffShake( spep_8-2 + 76, ctka, 18, 10 );
setEffMoveKey( spep_8-2 + 76, ctka, 138.6, 310.3 , 0 );
setEffMoveKey( spep_8-2 + 78, ctka, 148.3, 315.1 , 0 );
setEffMoveKey( spep_8-2 + 80, ctka, 185.8, 323.7 , 0 );
setEffMoveKey( spep_8-2 + 82, ctka, 171.8, 321.7 , 0 );
setEffMoveKey( spep_8-2 + 84, ctka, 157.7, 319.8 , 0 );
setEffMoveKey( spep_8-2 + 86, ctka, 133.5, 305.6 , 0 );
setEffMoveKey( spep_8-2 + 88, ctka, 109.2, 291.5 , 0 );
setEffMoveKey( spep_8-2 + 90, ctka, 145.1, 303.7 , 0 );
setEffMoveKey( spep_8-2 + 92, ctka, 209.6, 321.3 , 0 );
setEffMoveKey( spep_8-2 + 94, ctka, 240.1, 325.6 , 0 );

setEffScaleKey( spep_8-2 + 76, ctka, 0.01, 0.02 );
setEffScaleKey( spep_8-2 + 78, ctka, 1.12, 1.17 );
setEffScaleKey( spep_8-2 + 80, ctka, 2.22, 2.32 );
setEffScaleKey( spep_8-2 + 90, ctka, 2.22, 2.32 );
setEffScaleKey( spep_8-2 + 92, ctka, 3.96, 4.01 );
setEffScaleKey( spep_8-2 + 94, ctka, 5.7, 5.7 );

setEffRotateKey( spep_8-2 + 76, ctka, 30.2 );
setEffRotateKey( spep_8-2 + 78, ctka, 30 );
setEffRotateKey( spep_8-2 + 94, ctka, 30 );

setEffAlphaKey( spep_8-2 + 76, ctka, 255 );
setEffAlphaKey( spep_8-2 + 90, ctka, 255 );
setEffAlphaKey( spep_8-2 + 92, ctka, 128 );
setEffAlphaKey( spep_8-2 + 94, ctka, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 26, 1, 0 );

changeAnime( spep_8 + 0, 1, 104 );

setMoveKey( spep_8 + 0, 1, 103.2, 129.8 , 0 );
setMoveKey( spep_8 + 16, 1, 103.2, 129.8 , 0 );
setMoveKey( spep_8 + 18, 1, 115, 143.4 , 0 );
setMoveKey( spep_8 + 20, 1, 96.2, 122.8 , 0 );
setMoveKey( spep_8 + 22, 1, 129.3, 122 , 0 );
setMoveKey( spep_8 + 26, 1, 103.6, 156.6 , 0 );

setScaleKey( spep_8 + 0, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 26, 1, 0.76, 0.76 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 26, 1, 0 );

--SE
--かめはめ波中
SE029 = playSe( spep_8 + 8, 1011 );
SE030 = playSe( spep_8 + 8, 1145 );
SE028 = playSe( spep_8 + 10, 1212 );
setSeVolumeByWorkId( spep_8 + 10, SE028, 0 );
setSeVolumeByWorkId( spep_8 + 11, SE028, 1.3 );
setSeVolumeByWorkId( spep_8 + 12, SE028, 2.6 );
setSeVolumeByWorkId( spep_8 + 13, SE028, 3.9 );
setSeVolumeByWorkId( spep_8 + 14, SE028, 5.2 );
setSeVolumeByWorkId( spep_8 + 15, SE028, 6.5 );
setSeVolumeByWorkId( spep_8 + 16, SE028, 7.8 );
setSeVolumeByWorkId( spep_8 + 17, SE028, 9.1 );
setSeVolumeByWorkId( spep_8 + 18, SE028, 10.4 );
setSeVolumeByWorkId( spep_8 + 19, SE028, 11.7 );
setSeVolumeByWorkId( spep_8 + 20, SE028, 13 );
setSeVolumeByWorkId( spep_8 + 21, SE028, 14.3 );
setSeVolumeByWorkId( spep_8 + 22, SE028, 15.6 );
setSeVolumeByWorkId( spep_8 + 23, SE028, 16.9 );
setSeVolumeByWorkId( spep_8 + 24, SE028, 18.2 );
setSeVolumeByWorkId( spep_8 + 25, SE028, 19.5 );
setSeVolumeByWorkId( spep_8 + 26, SE028, 20.8 );
setSeVolumeByWorkId( spep_8 + 27, SE028, 22.1 );
setSeVolumeByWorkId( spep_8 + 28, SE028, 23.4 );
setSeVolumeByWorkId( spep_8 + 29, SE028, 24.7 );
setSeVolumeByWorkId( spep_8 + 30, SE028, 26 );
setSeVolumeByWorkId( spep_8 + 31, SE028, 27.3 );
setSeVolumeByWorkId( spep_8 + 32, SE028, 28.6 );
setSeVolumeByWorkId( spep_8 + 33, SE028, 29.9 );
setSeVolumeByWorkId( spep_8 + 34, SE028, 31.2 );
setSeVolumeByWorkId( spep_8 + 35, SE028, 32.5 );
setSeVolumeByWorkId( spep_8 + 36, SE028, 33.8 );
setSeVolumeByWorkId( spep_8 + 37, SE028, 35.1 );
setSeVolumeByWorkId( spep_8 + 38, SE028, 36.4 );
setSeVolumeByWorkId( spep_8 + 39, SE028, 37.7 );
setSeVolumeByWorkId( spep_8 + 40, SE028, 39 );
setSeVolumeByWorkId( spep_8 + 41, SE028, 40.3 );
setSeVolumeByWorkId( spep_8 + 42, SE028, 41.6 );
setSeVolumeByWorkId( spep_8 + 43, SE028, 42.9 );
setSeVolumeByWorkId( spep_8 + 44, SE028, 44.2 );
setSeVolumeByWorkId( spep_8 + 45, SE028, 45.5 );
setSeVolumeByWorkId( spep_8 + 46, SE028, 46.8 );
setSeVolumeByWorkId( spep_8 + 47, SE028, 48.1 );
setSeVolumeByWorkId( spep_8 + 48, SE028, 49.4 );
setSeVolumeByWorkId( spep_8 + 49, SE028, 50.7 );
setSeVolumeByWorkId( spep_8 + 50, SE028, 52 );
stopSe( spep_8 + 86, SE028, 14 );
setStartTimeMs( SE028,  467 );
SE031 = playSe( spep_8 + 20, 1168 );
setSeVolumeByWorkId( spep_8 + 20, SE031, 0 );
setSeVolumeByWorkId( spep_8 + 21, SE031, 2.7 );
setSeVolumeByWorkId( spep_8 + 22, SE031, 5.4 );
setSeVolumeByWorkId( spep_8 + 23, SE031, 8.1 );
setSeVolumeByWorkId( spep_8 + 24, SE031, 10.8 );
setSeVolumeByWorkId( spep_8 + 25, SE031, 13.5 );
setSeVolumeByWorkId( spep_8 + 26, SE031, 16.2 );
setSeVolumeByWorkId( spep_8 + 27, SE031, 18.9 );
setSeVolumeByWorkId( spep_8 + 28, SE031, 21.6 );
setSeVolumeByWorkId( spep_8 + 29, SE031, 24.3 );
setSeVolumeByWorkId( spep_8 + 30, SE031, 27 );
setSeVolumeByWorkId( spep_8 + 31, SE031, 29.7 );
setSeVolumeByWorkId( spep_8 + 32, SE031, 32.4 );
setSeVolumeByWorkId( spep_8 + 33, SE031, 35.1 );
setSeVolumeByWorkId( spep_8 + 34, SE031, 37.8 );
setSeVolumeByWorkId( spep_8 + 35, SE031, 40.5 );
setSeVolumeByWorkId( spep_8 + 36, SE031, 43.2 );
setSeVolumeByWorkId( spep_8 + 37, SE031, 45.9 );
setSeVolumeByWorkId( spep_8 + 38, SE031, 48.6 );
setSeVolumeByWorkId( spep_8 + 39, SE031, 51.3 );
setSeVolumeByWorkId( spep_8 + 40, SE031, 54 );
stopSe( spep_8 + 72, SE031, 12 );

--爆発
SE032 = playSe( spep_8 + 86, 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+136;
------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_9 + 120, finish, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 120, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 120, finish, 255 );

--SE
--悟天着地
SE033 = playSe( spep_9 + 42, 1106 );
setSeVolumeByWorkId( spep_9 + 42, SE033, 141 );
SE034 = playSe( spep_9 + 4, 1207 );
setSeVolumeByWorkId( spep_9 + 4, SE034, 0 );
setSeVolumeByWorkId( spep_9 + 5, SE034, 5 );
setSeVolumeByWorkId( spep_9 + 6, SE034, 10 );
setSeVolumeByWorkId( spep_9 + 7, SE034, 15 );
setSeVolumeByWorkId( spep_9 + 8, SE034, 20 );
setSeVolumeByWorkId( spep_9 + 9, SE034, 25 );
setSeVolumeByWorkId( spep_9 + 10, SE034, 30 );
setSeVolumeByWorkId( spep_9 + 11, SE034, 35 );
setSeVolumeByWorkId( spep_9 + 12, SE034, 40 );
setSeVolumeByWorkId( spep_9 + 13, SE034, 45 );
setSeVolumeByWorkId( spep_9 + 14, SE034, 50 );
setSeVolumeByWorkId( spep_9 + 15, SE034, 55 );
setSeVolumeByWorkId( spep_9 + 16, SE034, 60 );
setSeVolumeByWorkId( spep_9 + 17, SE034, 65 );
setSeVolumeByWorkId( spep_9 + 18, SE034, 70 );
setSeVolumeByWorkId( spep_9 + 19, SE034, 75 );
setSeVolumeByWorkId( spep_9 + 20, SE034, 80 );
setSeVolumeByWorkId( spep_9 + 21, SE034, 85 );
setSeVolumeByWorkId( spep_9 + 22, SE034, 90 );
setSeVolumeByWorkId( spep_9 + 23, SE034, 95 );
setSeVolumeByWorkId( spep_9 + 24, SE034, 100 );
setStartTimeMs( SE034,  150 );
stopSe( spep_9 + 44, SE034, 10 );
SE035 = playSe( spep_9 + 38, 1108 );
setSeVolumeByWorkId( spep_9 + 38, SE035, 158 );

--悟天腕上げ
SE036 = playSe( spep_9 + 48, 1003 );
setPitch( spep_9 + 48, SE036, 200 );
setTimeStretch( SE036, 1.13, 10, 1 );

--終わり
dealDamage( spep_9 +10 );
endPhase( spep_9 + 110 );
end