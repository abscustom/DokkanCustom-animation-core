--1025230:ダーブラ(天使)_バーニングインパルス(ユニット必殺技)
--sp_effect_a1_00375
--sp2445

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
SP_01=	160692	;--	ダーブラ正面突進
SP_02=	160693	;--	ヒットエフェクト（テキスト込）
SP_03=	160695	;--	ヒットエフェクト（テキスト込）
SP_04=	160697	;--	二人並ぶ
SP_05=	160699	;--	気弾攻撃（テキスト込）
SP_06=	160701	;--	ヒットエフェクト（テキスト込）
SP_07=	160703	;--	爆発
SP_08=	160704	;--	ダーブラエルボー
SP_09=	160706	;--	パイクーハン　キック
SP_10=	160707	;--	敵に向かって行く気弾

--エフェクト(敵)
SP_01x=	160692	;--	ダーブラ正面突進	
SP_02x=	160694	;--	ヒットエフェクト（テキスト込）	(敵)
SP_03x=	160696	;--	ヒットエフェクト（テキスト込）	(敵)
SP_04x=	160698	;--	二人並ぶ	(敵)
SP_05x=	160700	;--	気弾攻撃（テキスト込）	(敵)
SP_06x=	160702	;--	ヒットエフェクト（テキスト込）	(敵)
SP_07x=	160703	;--	爆発	
SP_08x=	160705	;--	ダーブラエルボー	(敵)
SP_09x=	160706	;--	パイクーハン　キック	
SP_10x=	160707	;--	敵に向かって行く気弾	

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
--ダーブラ正面突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 76, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 74, rush, 255 );
setEffAlphaKey( spep_0 + 75, rush, 255 );
setEffAlphaKey( spep_0 + 76, rush, 0 );

--SE
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.25, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
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
--画面遷移
SE003 = playSeVer2( spep_0 + 50, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 76;
------------------------------------------------------
--ダーブラエルボー
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_f, 0 );
setEffRotateKey( spep_1 + 76, elbow_f, 0 );
setEffAlphaKey( spep_1 + 0, elbow_f, 255 );
setEffAlphaKey( spep_1 + 74, elbow_f, 255 );
setEffAlphaKey( spep_1 + 75, elbow_f, 255 );
setEffAlphaKey( spep_1 + 76, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_1 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_b, 0 );
setEffRotateKey( spep_1 + 76, elbow_b, 0 );
setEffAlphaKey( spep_1 + 0, elbow_b, 255 );
setEffAlphaKey( spep_1 + 74, elbow_b, 255 );
setEffAlphaKey( spep_1 + 75, elbow_b, 255 );
setEffAlphaKey( spep_1 + 76, elbow_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1-3 + 30, 1, 107 );

setMoveKey( spep_1 + 0, 1, 160.5, 24.1 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 141.7, 22.7 , 0 );
setMoveKey( spep_1-3 + 4, 1, 134, 22.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 128.6, 21.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 124.3, 21.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, 120.8, 21 , 0 );
setMoveKey( spep_1-3 + 12, 1, 117.7, 20.8 , 0 );
setMoveKey( spep_1-3 + 14, 1, 115.1, 20.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 112.8, 20.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, 110.7, 20.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 108.9, 20.1 , 0 );
setMoveKey( spep_1-3 + 22, 1, 107.2, 20 , 0 );
setMoveKey( spep_1-3 + 24, 1, 105.6, 19.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 104.2, 19.8 , 0 );
setMoveKey( spep_1-3 + 29, 1, 102.8, 19.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 110, 38 , 0 );
setMoveKey( spep_1-3 + 32, 1, 150, 56 , 0 );
setMoveKey( spep_1-3 + 34, 1, 85.9, 17.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 185.6, 78.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 153.3, 16.7 , 0 );
setMoveKey( spep_1-3 + 40, 1, 120.9, 40.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 103.1, 30.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, 358.2, 82.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, 434.3, 97.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 515, 108.1 , 0 );
setMoveKey( spep_1-3 + 50, 1, 545.5, 112.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 590.6, 123 , 0 );
setMoveKey( spep_1-3 + 54, 1, 618.6, 128.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, 649.6, 133.3 , 0 );
setMoveKey( spep_1-3 + 58, 1, 668.5, 133.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 692, 140.7 , 0 );
setMoveKey( spep_1-3 + 62, 1, 704.5, 139.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 722.4, 146 , 0 );
setMoveKey( spep_1-3 + 66, 1, 729.9, 144 , 0 );
setMoveKey( spep_1-3 + 68, 1, 743.3, 149.7 , 0 );
setMoveKey( spep_1-3 + 70, 1, 746.7, 147 , 0 );
setMoveKey( spep_1-3 + 72, 1, 752.3, 147.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 760.2, 152.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, 758.4, 149 , 0 );
setMoveKey( spep_1-3 + 78, 1, 763.1, 153.1 , 0 );

setScaleKey( spep_1 + 0, 1, 2.2, 2.2 );
--setScaleKey( spep_1-3 + 2, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 6, 1, 2.09, 2.09 );
setScaleKey( spep_1-3 + 8, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_1-3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 18, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 20, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 29, 1, 2, 2 );
setScaleKey( spep_1-3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 36, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 44, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 48, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 56, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 58, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 62, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 64, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 70, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 78, 1, 1.8, 1.8 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 78, 1, 0 );

--SE
--タックル
SE004 = playSeVer2( spep_1 + 16, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 28, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE005, 72 );
SE006 = playSeVer2( spep_1 + 28, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE006, 81 );
SE007 = playSeVer2( spep_1 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE007, 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 76;
------------------------------------------------------
--パイクーハン　キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 76, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 74, kick_f, 255 );
setEffAlphaKey( spep_2 + 75, kick_f, 255 );
setEffAlphaKey( spep_2 + 76, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 76, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 74, kick_b, 255 );
setEffAlphaKey( spep_2 + 75, kick_b, 255 );
setEffAlphaKey( spep_2 + 76, kick_b, 0 );

--敵の動き
setDisp( spep_2 + 24, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -478.1, -110.7 , 0 );
setMoveKey( spep_2 + 2, 1, -328.5, -37.2 , 0 );
setMoveKey( spep_2 + 4, 1, -271.1, -8.9 , 0 );
setMoveKey( spep_2 + 6, 1, -234.5, 9.1 , 0 );
setMoveKey( spep_2 + 8, 1, -208.6, 21.8 , 0 );
setMoveKey( spep_2 + 10, 1, -189.5, 31.2 , 0 );
setMoveKey( spep_2 + 12, 1, -175.2, 38.3 , 0 );
setMoveKey( spep_2 + 14, 1, -164.4, 43.6 , 0 );
setMoveKey( spep_2 + 16, 1, -156.5, 47.5 , 0 );
setMoveKey( spep_2 + 18, 1, -150.9, 50.2 , 0 );
setMoveKey( spep_2 + 20, 1, -147.2, 52.1 , 0 );
setMoveKey( spep_2 + 22, 1, -145.1, 53.1 , 0 );
setMoveKey( spep_2 + 24, 1, -144.4, 53.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 2, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 4, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 6, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 8, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 14, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 20, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 22, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 24, 1, 1.84, 1.84 );

setRotateKey( spep_2 + 0, 1, -21 );
setRotateKey( spep_2 + 2, 1, -17.3 );
setRotateKey( spep_2 + 4, 1, -15.9 );
setRotateKey( spep_2 + 6, 1, -15 );
setRotateKey( spep_2 + 8, 1, -14.4 );
setRotateKey( spep_2 + 10, 1, -13.9 );
setRotateKey( spep_2 + 12, 1, -13.5 );
setRotateKey( spep_2 + 14, 1, -13.3 );
setRotateKey( spep_2 + 16, 1, -13.1 );
setRotateKey( spep_2 + 18, 1, -12.9 );
setRotateKey( spep_2 + 20, 1, -12.8 );
setRotateKey( spep_2 + 24, 1, -12.8 );

--敵の動き
setDisp( spep_2-3 + 34, 1, 1 );
setDisp( spep_2-1 + 78, 1, 0 );

changeAnime( spep_2-3 + 34, 1, 107 );

setMoveKey( spep_2-3 + 34, 1, 180.6, 122 , 0 );
setMoveKey( spep_2-3 + 36, 1, 180.6, 127.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, 180.6, 117.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 180.6, 128.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 284.6, 55.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, 371, 9.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 444, -40.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 506.4, -73.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 560.2, -110.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 606.9, -134.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, 647.4, -162.3 , 0 );
setMoveKey( spep_2-3 + 56, 1, 682.6, -180.8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 713.1, -201.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 739.6, -215.6 , 0 );
setMoveKey( spep_2-3 + 62, 1, 762.4, -231.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 782, -242 , 0 );
setMoveKey( spep_2-3 + 66, 1, 798.5, -252.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, 812.3, -260.5 , 0 );
setMoveKey( spep_2-3 + 70, 1, 823.6, -267.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 832.7, -272.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, 839.6, -277.5 , 0 );
setMoveKey( spep_2-3 + 76, 1, 844.5, -280.2 , 0 );
setMoveKey( spep_2-1 + 78, 1, 847.6, -282.2 , 0 );

setScaleKey( spep_2-3 + 34, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 40, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 42, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 44, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 46, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 50, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 60, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 62, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 64, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 68, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 70, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 74, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_2-1 + 78, 1, 1.47, 1.47 );

setRotateKey( spep_2-3 + 34, 1, 32.9 );
setRotateKey( spep_2-3 + 42, 1, 32.9 );
setRotateKey( spep_2-3 + 44, 1, 32.8 );
setRotateKey( spep_2-1 + 78, 1, 32.8 );

--SE
--瞬間移動
SE008 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);

--パイクーハンキック
SE009 = playSeVer2( spep_2 + 24, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE009, 83 );
SE010 = playSeVer2( spep_2 + 24, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 24, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 76;
------------------------------------------------------
--二人並ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
equal = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, equal, 0, 0, 0 );
setEffMoveKey( spep_3 + 152, equal, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, equal, 1.0, 1.0 );
setEffScaleKey( spep_3 + 152, equal, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, equal, 0 );
setEffRotateKey( spep_3 + 152, equal, 0 );
setEffAlphaKey( spep_3 + 0, equal, 255 );
setEffAlphaKey( spep_3 + 152, equal, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
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
--瞬間移動
SE012 = playSeVer2( spep_3 + 6, 1109, "", 0, 0, 0, -1);

--顔カットイン
SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--集中線
SE014 = playSeVer2( spep_3 + 28, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 68 );

--白フェード
entryFade( spep_3 +144 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 152, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 152;
------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_4

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
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_c + 94;

------------------------------------------------------
--気弾攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 84, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 82, beam, 255 );
setEffAlphaKey( spep_5 + 83, beam, 255 );
setEffAlphaKey( spep_5 + 84, beam, 0 );

--SE
--気弾溜め
SE016 = playSeVer2( spep_5 + 0, 1199, "",spep_5 + 52, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 0, SE016, 168 );
SE017 = playSeVer2( spep_5 + 0, 1262, "",spep_5 + 52, 0, 10, -1);
SE018 = playSeVer2( spep_5 + 0, 1282, "",spep_5 + 52, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 0, SE018, 66 );
SE019 = playSeVer2( spep_5 + 0, 1296, "",spep_5 + 52, 0, 10, -1);

--気弾発射
SE020 = playSeVer2( spep_5 + 38, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_5 + 38, 1145, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 84;
------------------------------------------------------
--敵に向かって行く気弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 64, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 62, hit_f, 255 );
setEffAlphaKey( spep_6 + 63, hit_f, 255 );
setEffAlphaKey( spep_6 + 64, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 64, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 62, hit_b, 255 );
setEffAlphaKey( spep_6 + 63, hit_b, 255 );
setEffAlphaKey( spep_6 + 64, hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 64, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -235.3, 170.5 , 0 );
setMoveKey( spep_6 + 2, 1, -166.6, 138.5 , 0 );
setMoveKey( spep_6 + 4, 1, -127.4, 120.2 , 0 );
setMoveKey( spep_6 + 6, 1, -97.4, 106.3 , 0 );
setMoveKey( spep_6 + 8, 1, -72.5, 94.7 , 0 );
setMoveKey( spep_6 + 10, 1, -51, 84.7 , 0 );
setMoveKey( spep_6 + 12, 1, -31.9, 75.8 , 0 );
setMoveKey( spep_6 + 14, 1, -14.6, 67.7 , 0 );
setMoveKey( spep_6 + 16, 1, 1.2, 60.4 , 0 );
setMoveKey( spep_6 + 18, 1, 15.7, 53.6 , 0 );
setMoveKey( spep_6 + 20, 1, 29.2, 47.3 , 0 );
setMoveKey( spep_6 + 22, 1, 41.8, 41.4 , 0 );
setMoveKey( spep_6 + 24, 1, 53.7, 35.9 , 0 );
setMoveKey( spep_6 + 26, 1, 64.9, 30.7 , 0 );
setMoveKey( spep_6 + 28, 1, 75.4, 25.8 , 0 );
setMoveKey( spep_6 + 30, 1, 85.4, 21.1 , 0 );
setMoveKey( spep_6 + 32, 1, 94.9, 16.7 , 0 );
setMoveKey( spep_6 + 34, 1, 104, 12.5 , 0 );
setMoveKey( spep_6 + 36, 1, 112.6, 8.5 , 0 );
setMoveKey( spep_6 + 38, 1, 120.9, 4.6 , 0 );
setMoveKey( spep_6 + 40, 1, 128.7, 1 , 0 );
setMoveKey( spep_6 + 42, 1, 136.3, -2.5 , 0 );
setMoveKey( spep_6 + 44, 1, 143.5, -5.9 , 0 );
setMoveKey( spep_6 + 46, 1, 150.5, -9.1 , 0 );
setMoveKey( spep_6 + 48, 1, 157.1, -12.2 , 0 );
setMoveKey( spep_6 + 50, 1, 163.5, -15.2 , 0 );
setMoveKey( spep_6 + 52, 1, 169.7, -18.1 , 0 );
setMoveKey( spep_6 + 54, 1, 175.6, -20.8 , 0 );
setMoveKey( spep_6 + 56, 1, 181.3, -23.5 , 0 );
setMoveKey( spep_6 + 58, 1, 186.7, -26 , 0 );
setMoveKey( spep_6 + 60, 1, 192, -28.5 , 0 );
setMoveKey( spep_6 + 62, 1, 197.1, -30.8 , 0 );
setMoveKey( spep_6 + 64, 1, 202, -33.1 , 0 );
--setMoveKey( spep_6 + 66, 1, 206.7, -35.3 , 0 );
--setMoveKey( spep_6 + 68, 1, 211.2, -37.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 2, 1, 0.32, 0.32 );
setScaleKey( spep_6 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 6, 1, 0.45, 0.45 );
setScaleKey( spep_6 + 8, 1, 0.49, 0.49 );
setScaleKey( spep_6 + 10, 1, 0.53, 0.53 );
setScaleKey( spep_6 + 12, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 18, 1, 0.65, 0.65 );
setScaleKey( spep_6 + 20, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 22, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_6 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 30, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_6 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_6 + 36, 1, 0.82, 0.82 );
setScaleKey( spep_6 + 38, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 42, 1, 0.86, 0.86 );
setScaleKey( spep_6 + 44, 1, 0.88, 0.88 );
setScaleKey( spep_6 + 46, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 48, 1, 0.9, 0.9 );
setScaleKey( spep_6 + 50, 1, 0.91, 0.91 );
setScaleKey( spep_6 + 52, 1, 0.92, 0.92 );
setScaleKey( spep_6 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 56, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_6 + 60, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 62, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 64, 1, 0.98, 0.98 );
--setScaleKey( spep_6 + 66, 1, 0.99, 0.99 );
--setScaleKey( spep_6 + 68, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 30.6 );
setRotateKey( spep_6 + 64, 1, 30.6 );

--SE
SE022 = playSeVer2( spep_6 + 0, 1202, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_6 + 4, 1021, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_6 +60 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_6 + 64;
------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 130, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 130, finish, 255 );

--SE
--爆発
SE024 = playSeVer2( spep_7 + 0, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_7 + 8, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 120 );
else end