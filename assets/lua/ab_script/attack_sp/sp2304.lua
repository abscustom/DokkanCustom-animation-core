--1023420:超サイヤ人孫悟飯(未来)&トランクス(少年期)(未来)/超サイヤ人孫悟飯(未来)_ダブル魔閃光
--sp_effect_a1_00333
--sp2304

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
SP_01=	158756	;--	トランクス登場～パンチ
SP_02=	158758	;--	パンチヒット 手前
SP_03=	158759	;--	パンチヒット 奥
SP_04=	158760	;--	パンチヒット後～悟飯回り込み 手前
SP_05=	158761	;--	パンチヒット後～悟飯回り込み 奥
SP_06=	158762	;--	悟飯手刀（アップ絵）
SP_07=	158763	;--	手刀ヒット～敵吹っ飛び 手前
SP_08=	158764	;--	手刀ヒット～敵吹っ飛び 奥
SP_09=	158765	;--	トランクスが膝蹴り～敵吹っ飛び 手前
SP_10=	158766	;--	トランクスが膝蹴り～敵吹っ飛び 奥
SP_11=	158767	;--	トランクス＆悟飯が空中待機 手前
SP_12=	158768	;--	トランクス＆悟飯が空中待機 奥
SP_13=	158769	;--	悟飯 気弾溜め
SP_14=	158770	;--	トランクス 気弾溜め
SP_15=	158771	;--	トランクス＆悟飯 気溜め
SP_16=	158772	;--	悟飯 顔アップ
SP_17=	158773	;--	トランクス 顔アップ
SP_18=	158774	;--	トランクス＆悟飯 気弾放つ
SP_19=	158775	;--	気弾が敵に迫る 手前
SP_20=	158776	;--	気弾が敵に迫る 奥
SP_21=	158777	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	158757	;--	トランクス登場～パンチ	(敵)
SP_02x=	158758	;--	パンチヒット 手前	
SP_03x=	158759	;--	パンチヒット 奥	
SP_04x=	158760	;--	パンチヒット後～悟飯回り込み 手前	
SP_05x=	158761	;--	パンチヒット後～悟飯回り込み 奥	
SP_06x=	158762	;--	悟飯手刀（アップ絵）	
SP_07x=	158763	;--	手刀ヒット～敵吹っ飛び 手前	
SP_08x=	158764	;--	手刀ヒット～敵吹っ飛び 奥	
SP_09x=	158765	;--	トランクスが膝蹴り～敵吹っ飛び 手前	
SP_10x=	158766	;--	トランクスが膝蹴り～敵吹っ飛び 奥	
SP_11x=	158767	;--	トランクス＆悟飯が空中待機 手前	
SP_12x=	158768	;--	トランクス＆悟飯が空中待機 奥	
SP_13x=	158769	;--	悟飯 気弾溜め	
SP_14x=	158770	;--	トランクス 気弾溜め	
SP_15x=	158771	;--	トランクス＆悟飯 気溜め	
SP_16x=	158772	;--	悟飯 顔アップ	
SP_17x=	158773	;--	トランクス 顔アップ	
SP_18x=	158774	;--	トランクス＆悟飯 気弾放つ	
SP_19x=	158775	;--	気弾が敵に迫る 手前	
SP_20x=	158776	;--	気弾が敵に迫る 奥	
SP_21x=	158777	;--	フィニッシュ	

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
--トランクス登場～パンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, panting, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, panting, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting, 0 );
setEffRotateKey( spep_0 + 136, panting, 0 );
setEffAlphaKey( spep_0 + 0, panting, 255 );
setEffAlphaKey( spep_0 + 134, panting, 255 );
setEffAlphaKey( spep_0 + 135, panting, 255 );
setEffAlphaKey( spep_0 + 136, panting, 0 );

--SE
--二人向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 127 );
SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 1.22, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 150, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 85 );
SE004 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 154, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 85 );
SE005 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 138, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 73 );

--トランクス画面アップ
SE006 = playSeVer2( spep_0 + 26, 1188, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 78 );
setStartTimeMs( SE006,  250 );
SE007 = playSeVer2( spep_0 + 34, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 141 );

--加速する
SE008 = playSeVer2( spep_0 + 68, 1258, "",spep_0 + 150, 26, 14, -1);
setSeVolumeByWorkId( spep_0 + 68, SE008, 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--次の準備
spep_1=spep_0+136;
------------------------------------------------------
--パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 56, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 54, hit_f, 255 );
setEffAlphaKey( spep_1 + 55, hit_f, 255 );
setEffAlphaKey( spep_1 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 56, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 54, hit_b, 255 );
setEffAlphaKey( spep_1 + 55, hit_b, 255 );
setEffAlphaKey( spep_1 + 56, hit_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 0,  10020, 58-2, 0x100, -1, 0, 87.3, 334 , 1000 );
setEffShake( spep_1 + 0, ctbaki, 58-2, 20 );
setEffMoveKey( spep_1 + 0, ctbaki, 87.3, 334 , 0 );
--setEffMoveKey( spep_1-3 + 2, ctbaki, 93.8, 336.5 , 0 );
setEffMoveKey( spep_1-3 + 4, ctbaki, 120, 344.9 , 0 );
setEffMoveKey( spep_1-3 + 6, ctbaki, 70.8, 363.5 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbaki, 54.8, 306.3 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbaki, 79.4, 290.6 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbaki, 140.7, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbaki, 141.1, 314.2 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbaki, 137.7, 277.2 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbaki, 121.9, 300.3 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, 112.1, 329.3 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, 107.3, 323.1 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, 88.7, 334.7 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, 92.7, 329.8 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbaki, 86.5, 336.1 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbaki, 93.6, 331 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, 87.2, 325.5 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, 91.3, 330.3 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, 100.9, 330.7 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, 97.6, 336.1 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, 89.6, 330.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, 93.4, 326.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, 88.7, 332.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, 95.6, 329.7 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, 92.6, 337.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, 120, 344.9 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, 60.5, 381.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, 15, 272.6 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, 65.1, 211 , 0 );
setEffMoveKey( spep_1-2 + 58, ctbaki, 60.4, 184.3 , 0 );

setEffScaleKey( spep_1 + 0, ctbaki, 0.02, 0.02 );
setEffScaleKey( spep_1 + 2, ctbaki, 1.51, 1.51 );
setEffScaleKey( spep_1 + 4, ctbaki, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 4.83, 4.83 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 6.67, 6.67 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 8.51, 8.51 );
setEffScaleKey( spep_1-2 + 58, ctbaki, 10.35, 10.34 );

setEffRotateKey( spep_1 + 0, ctbaki, 15.2 );
setEffRotateKey( spep_1 + 2, ctbaki, 22 );
setEffRotateKey( spep_1 + 4, ctbaki, 29 );
setEffRotateKey( spep_1 + 6, ctbaki, 28.9 );
setEffRotateKey( spep_1-3 + 28, ctbaki, 28.9 );
setEffRotateKey( spep_1-3 + 30, ctbaki, 29 );
setEffRotateKey( spep_1-3 + 50, ctbaki, 29 );
setEffRotateKey( spep_1-2 + 58, ctbaki, 28.8 );

setEffAlphaKey( spep_1 + 0, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 54, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 56, ctbaki, 64 );
setEffAlphaKey( spep_1-2 + 58, ctbaki, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 107 );

setMoveKey( spep_1 + 0, 1, -2.7, -23.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 51.8, -22.9 , 0 );
setMoveKey( spep_1-3 + 4, 1, -1.9, -117.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 153, -86.4 , 0 );
setMoveKey( spep_1-3 + 8, 1, 418.6, -247.5 , 0 );
setMoveKey( spep_1-3 + 10, 1, 507.2, -261.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 679.6, -335.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 721.1, -361.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 747.1, -372.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 783.7, -392.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, 792.8, -395.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 798.9, -400.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 804.9, -405.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, 814.1, -410.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 823.2, -415.3 , 0 );
setMoveKey( spep_1-3 + 30, 1, 830.1, -418 , 0 );
setMoveKey( spep_1-3 + 32, 1, 836.9, -420.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, 846.1, -423.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, 855.2, -426 , 0 );
setMoveKey( spep_1-3 + 38, 1, 863.6, -431.1 , 0 );
setMoveKey( spep_1-3 + 40, 1, 872, -436 , 0 );
setMoveKey( spep_1-3 + 42, 1, 879.6, -439.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 887.1, -443 , 0 );
setMoveKey( spep_1-3 + 46, 1, 894.7, -446.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 902.3, -450 , 0 );
setMoveKey( spep_1-3 + 50, 1, 909.9, -453.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 917.5, -456.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, 925.1, -460.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, 932.7, -463.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 940.3, -467.3 , 0 );

setScaleKey( spep_1 + 0, 1, 3.42,3.42);
setScaleKey( spep_1-3 + 4, 1, 3.56,3.56);
setScaleKey( spep_1-3 + 6, 1, 3.78,3.78);
setScaleKey( spep_1-3 + 8, 1, 4,4);
setScaleKey( spep_1-3 + 10, 1, 4.22,4.22);
setScaleKey( spep_1-3 + 12, 1, 4.44,4.44);
setScaleKey( spep_1-3 + 14, 1, 4.55,4.55);
setScaleKey( spep_1-3 + 16, 1, 4.64,4.64);
setScaleKey( spep_1-3 + 18, 1, 4.74,4.74);
setScaleKey( spep_1-3 + 20, 1, 4.76,4.76);
setScaleKey( spep_1-3 + 22, 1, 4.79,4.79);
setScaleKey( spep_1-3 + 24, 1, 4.82,4.82);
setScaleKey( spep_1-3 + 26, 1, 4.85,4.85);
setScaleKey( spep_1-3 + 28, 1, 4.88,4.88);
setScaleKey( spep_1-3 + 30, 1, 4.91,4.91);
setScaleKey( spep_1-3 + 32, 1, 4.93,4.93);
setScaleKey( spep_1-3 + 34, 1, 4.95,4.95);
setScaleKey( spep_1-3 + 36, 1, 4.99,4.99);
setScaleKey( spep_1-3 + 38, 1, 5.01,5.01);
setScaleKey( spep_1-3 + 40, 1, 5.03,5.03);
setScaleKey( spep_1-3 + 42, 1, 5.05,5.05);
setScaleKey( spep_1-3 + 44, 1, 5.09,5.09);
setScaleKey( spep_1-3 + 46, 1, 5.11,5.11);
setScaleKey( spep_1-3 + 48, 1, 5.15,5.15);
setScaleKey( spep_1-3 + 50, 1, 5.17,5.17);
setScaleKey( spep_1-3 + 52, 1, 5.2,5.2);
setScaleKey( spep_1-3 + 54, 1, 5.22,5.22);
setScaleKey( spep_1-3 + 56, 1, 5.24,5.24);
setScaleKey( spep_1-3 + 58, 1, 5.28,5.28);

setRotateKey( spep_1 + 0, 1, -20.8 );
setRotateKey( spep_1 + 2, 1, -21 );
setRotateKey( spep_1-3 + 58, 1, -21 );

--SE
--トランクスパンチ
SE009 = playSeVer2( spep_1 + 0, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_1 + 32, 1183, "",spep_1 + 118, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--パンチヒット後～悟飯回り込み
------------------------------------------------------
-- ** エフェクト等 ** --
around_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, around_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, around_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, around_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, around_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, around_f, 0 );
setEffRotateKey( spep_2 + 56, around_f, 0 );
setEffAlphaKey( spep_2 + 0, around_f, 255 );
setEffAlphaKey( spep_2 + 54, around_f, 255 );
setEffAlphaKey( spep_2 + 55, around_f, 255 );
setEffAlphaKey( spep_2 + 56, around_f, 0 );

-- ** エフェクト等 ** --
around_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, around_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, around_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, around_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, around_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, around_b, 0 );
setEffRotateKey( spep_2 + 56, around_b, 0 );
setEffAlphaKey( spep_2 + 0, around_b, 255 );
setEffAlphaKey( spep_2 + 54, around_b, 255 );
setEffAlphaKey( spep_2 + 55, around_b, 255 );
setEffAlphaKey( spep_2 + 56, around_b, 0 );

--敵の動き
setDisp( spep_2-2 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -17.7, 10.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -1.6, 13.6 , 0 );
setMoveKey( spep_2-3 + 4, 1, -1.6, 13.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 17.4, 12.6 , 0 );
setMoveKey( spep_2-3 + 8, 1, 21.4, 8.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 17.3, 15.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 17.2, 14.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 11, 12.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, 8.9, 14.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 2.8, 12.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, -2.4, 12.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, -1.5, 16.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, -7.6, 14.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, -13.7, 16.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, -15.9, 17.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, -22, 15.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, -24.1, 17.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, -30.3, 19.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, -32.4, 21.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, -34.5, 19.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, -40.7, 17.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, -42.8, 19.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, -48.9, 21.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, -51.1, 23.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, -57.2, 21.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, -59.3, 20.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, -65.5, 22.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, -67.6, 24.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, -73.7, 22.5 , 0 );
setMoveKey( spep_2-2 + 58, 1, -75.9, 24.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
setScaleKey( spep_2-2 + 58, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, 0 );
--setRotateKey( spep_2-3 + 2, 1, 0.9 );
setRotateKey( spep_2-3 + 4, 1, 1.8 );
setRotateKey( spep_2-3 + 6, 1, 2.6 );
setRotateKey( spep_2-3 + 8, 1, 3.5 );
setRotateKey( spep_2-3 + 10, 1, 3.9 );
setRotateKey( spep_2-3 + 12, 1, 4.2 );
setRotateKey( spep_2-3 + 14, 1, 4.6 );
setRotateKey( spep_2-3 + 16, 1, 4.9 );
setRotateKey( spep_2-3 + 18, 1, 5.3 );
setRotateKey( spep_2-3 + 20, 1, 5.6 );
setRotateKey( spep_2-3 + 22, 1, 6 );
setRotateKey( spep_2-3 + 24, 1, 6.3 );
setRotateKey( spep_2-3 + 26, 1, 6.7 );
setRotateKey( spep_2-3 + 28, 1, 7 );
setRotateKey( spep_2-3 + 30, 1, 7.4 );
setRotateKey( spep_2-3 + 32, 1, 7.7 );
setRotateKey( spep_2-3 + 34, 1, 8.1 );
setRotateKey( spep_2-3 + 36, 1, 8.4 );
setRotateKey( spep_2-3 + 38, 1, 8.8 );
setRotateKey( spep_2-3 + 40, 1, 9.1 );
setRotateKey( spep_2-3 + 42, 1, 9.5 );
setRotateKey( spep_2-3 + 44, 1, 9.8 );
setRotateKey( spep_2-3 + 46, 1, 10.2 );
setRotateKey( spep_2-3 + 48, 1, 10.5 );
setRotateKey( spep_2-3 + 50, 1, 10.9 );
setRotateKey( spep_2-3 + 52, 1, 11.2 );
setRotateKey( spep_2-3 + 54, 1, 11.6 );
setRotateKey( spep_2-3 + 56, 1, 11.9 );
setRotateKey( spep_2-2 + 58, 1, 12.3 );

--SE
--悟飯追い抜く
SE011 = playSeVer2( spep_2 + 30, 1117, "",spep_2 + 74, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
--悟飯手刀（アップ絵）
------------------------------------------------------
-- ** エフェクト等 ** --
sword = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sword, 0, 0, 0 );
setEffMoveKey( spep_3 + 30, sword, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sword, 1.0, 1.0 );
setEffScaleKey( spep_3 + 30, sword, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword, 0 );
setEffRotateKey( spep_3 + 30, sword, 0 );
setEffAlphaKey( spep_3 + 0, sword, 255 );
setEffAlphaKey( spep_3 + 28, sword, 255 );
setEffAlphaKey( spep_3 + 29, sword, 255 );
setEffAlphaKey( spep_3 + 30, sword, 0 );

--SE
--手刀振りかぶる
SE012 = playSeVer2( spep_3 + 0, 1179, "",spep_3 + 48, 0, 12, 0.6);
SE013 = playSeVer2( spep_3 + 8, 1003, "", 0, 0, 0, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );

--次の準備
spep_4=spep_3+30;
------------------------------------------------------
--手刀ヒット～敵吹っ飛び 手前
------------------------------------------------------
-- ** エフェクト等 ** --
chop_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chop_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, chop_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chop_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, chop_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chop_f, 0 );
setEffRotateKey( spep_4 + 46, chop_f, 0 );
setEffAlphaKey( spep_4 + 0, chop_f, 255 );
setEffAlphaKey( spep_4 + 44, chop_f, 255 );
setEffAlphaKey( spep_4 + 45, chop_f, 255 );
setEffAlphaKey( spep_4 + 46, chop_f, 0 );

-- ** エフェクト等 ** --
chop_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chop_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, chop_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chop_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, chop_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chop_b, 0 );
setEffRotateKey( spep_4 + 46, chop_b, 0 );
setEffAlphaKey( spep_4 + 0, chop_b, 255 );
setEffAlphaKey( spep_4 + 44, chop_b, 255 );
setEffAlphaKey( spep_4 + 45, chop_b, 255 );
setEffAlphaKey( spep_4 + 46, chop_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 44, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -41.5, 11.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -32.8, 51.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, -106.6, -20.6 , 0 );
setMoveKey( spep_4-3 + 6, 1, -42.1, -32.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, -119.9, 32.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, -100.5, 10.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -109.3, 15.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, -107.8, 10 , 0 );
setMoveKey( spep_4-3 + 16, 1, -111.6, 9.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, -191.5, 16.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, -271.3, 22.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, -351.2, 29 , 0 );
setMoveKey( spep_4-3 + 24, 1, -431, 35.4 , 0 );
setMoveKey( spep_4-3 + 26, 1, -510.8, 41.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, -590.7, 48.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, -670.5, 54.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, -750.4, 61.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, -830.2, 67.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, -910.1, 73.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, -989.9, 80.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, -1069.8, 86.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, -1149.6, 93.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, -1229.5, 99.5 , 0 );

setScaleKey( spep_4 + 0, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 16, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_4-3 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 22, 1, 2, 2 );
setScaleKey( spep_4-3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_4-3 + 26, 1, 2.06, 2.06 );
setScaleKey( spep_4-3 + 28, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 30, 1, 2.12, 2.12 );
setScaleKey( spep_4-3 + 32, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 34, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 36, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 40, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 42, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 44, 1, 2.33, 2.33 );

setRotateKey( spep_4 + 0, 1, -64 );
--setRotateKey( spep_4-3 + 2, 1, -64.7 );
setRotateKey( spep_4-3 + 4, 1, -65.5 );
setRotateKey( spep_4-3 + 6, 1, -66.2 );
setRotateKey( spep_4-3 + 8, 1, -67 );
setRotateKey( spep_4-3 + 10, 1, -67.7 );
setRotateKey( spep_4-3 + 12, 1, -68.5 );
setRotateKey( spep_4-3 + 14, 1, -69.2 );
setRotateKey( spep_4-3 + 16, 1, -70 );
setRotateKey( spep_4-3 + 18, 1, -72.2 );
setRotateKey( spep_4-3 + 20, 1, -74.4 );
setRotateKey( spep_4-3 + 22, 1, -76.6 );
setRotateKey( spep_4-3 + 24, 1, -78.9 );
setRotateKey( spep_4-3 + 26, 1, -81.1 );
setRotateKey( spep_4-3 + 28, 1, -83.3 );
setRotateKey( spep_4-3 + 30, 1, -85.5 );
setRotateKey( spep_4-3 + 32, 1, -87.7 );
setRotateKey( spep_4-3 + 34, 1, -89.9 );
setRotateKey( spep_4-3 + 36, 1, -92.1 );
setRotateKey( spep_4-3 + 38, 1, -94.4 );
setRotateKey( spep_4-3 + 40, 1, -96.6 );
setRotateKey( spep_4-3 + 42, 1, -98.8 );
setRotateKey( spep_4-3 + 44, 1, -101 );

--SE
--手刀ヒット
SE014 = playSeVer2( spep_4 + 0, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE015, 78 );
SE016 = playSeVer2( spep_4 + 0, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_4 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 18, SE017, 64 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );

--次の準備
spep_5=spep_4+44;
------------------------------------------------------
--トランクスが膝蹴り～敵吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 56, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 54, kick_f, 255 );
setEffAlphaKey( spep_5 + 55, kick_f, 255 );
setEffAlphaKey( spep_5 + 56, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 56, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 54, kick_b, 255 );
setEffAlphaKey( spep_5 + 55, kick_b, 255 );
setEffAlphaKey( spep_5 + 56, kick_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 18, 1, 108 );

setMoveKey( spep_5 + 0, 1, 127, 44 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 179.5, 62.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, 232, 80.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, 284.4, 98.4 , 0 );
setMoveKey( spep_5-3 + 8, 1, 336.9, 116.5 , 0 );
setMoveKey( spep_5-3 + 10, 1, 254.1, 90.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, 171.2, 65.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 125.9, 57.2 , 0 );
setMoveKey( spep_5-3 + 17, 1, 0.5, -28.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, 177.4, 84.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 187.4, 49.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, 202.2, 64.8 , 0 );
setMoveKey( spep_5-3 + 24, 1, 202.1, 67.3 , 0 );
setMoveKey( spep_5-3 + 26, 1, 204.4, 77.4 , 0 );
setMoveKey( spep_5-3 + 28, 1, 214.3, 90 , 0 );
setMoveKey( spep_5-3 + 30, 1, 214.2, 92.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 221.5, 95.1 , 0 );
setMoveKey( spep_5-3 + 34, 1, 223.9, 105.2 , 0 );
setMoveKey( spep_5-3 + 36, 1, 283.7, 166.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 343.6, 227.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, 403.5, 288.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 463.4, 349.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 523.4, 410.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, 583.3, 471.4 , 0 );
setMoveKey( spep_5-3 + 48, 1, 643.2, 532.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, 703.2, 593.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, 763.1, 654.6 , 0 );
setMoveKey( spep_5-3 + 54, 1, 823.1, 715.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, 883.1, 776.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, 943, 837.9 , 0 );

setScaleKey( spep_5 + 0, 1, 3.16,3.16);
setScaleKey( spep_5-3 + 4, 1, 3.23,3.23);
setScaleKey( spep_5-3 + 6, 1, 3.26,3.26);
setScaleKey( spep_5-3 + 8, 1, 3.29,3.29);
setScaleKey( spep_5-3 + 10, 1, 3.33,3.33);
setScaleKey( spep_5-3 + 12, 1, 3.37,3.37);
setScaleKey( spep_5-3 + 14, 1, 3.39,3.39);
setScaleKey( spep_5-3 + 17, 1, 3.43,3.43);
setScaleKey( spep_5-3 + 18, 1, 4.14,4.14);
setScaleKey( spep_5-3 + 20, 1, 4.12,4.12);
setScaleKey( spep_5-3 + 22, 1, 4.08,4.08);
setScaleKey( spep_5-3 + 24, 1, 4.06,4.06);
setScaleKey( spep_5-3 + 26, 1, 4.03,4.03);
setScaleKey( spep_5-3 + 28, 1, 3.98,3.98);
setScaleKey( spep_5-3 + 30, 1, 3.95,3.95);
setScaleKey( spep_5-3 + 32, 1, 3.92,3.92);
setScaleKey( spep_5-3 + 34, 1, 3.9,3.9);
setScaleKey( spep_5-3 + 36, 1, 3.87,3.87);
setScaleKey( spep_5-3 + 38, 1, 3.83,3.83);
setScaleKey( spep_5-3 + 40, 1, 3.81,3.81);
setScaleKey( spep_5-3 + 42, 1, 3.78,3.78);
setScaleKey( spep_5-3 + 44, 1, 3.74,3.74);
setScaleKey( spep_5-3 + 46, 1, 3.71,3.71);
setScaleKey( spep_5-3 + 48, 1, 3.68,3.68);
setScaleKey( spep_5-3 + 50, 1, 3.64,3.64);
setScaleKey( spep_5-3 + 52, 1, 3.61,3.61);
setScaleKey( spep_5-3 + 54, 1, 3.59,3.59);
setScaleKey( spep_5-3 + 56, 1, 3.55,3.55);
setScaleKey( spep_5-3 + 58, 1, 3.52,3.52);

setRotateKey( spep_5+ 0, 1, -87.5 );
--setRotateKey( spep_5-3 + 2, 1, -89.1 );
setRotateKey( spep_5-3 + 4, 1, -90.8 );
setRotateKey( spep_5-3 + 6, 1, -92.5 );
setRotateKey( spep_5-3 + 8, 1, -94.2 );
setRotateKey( spep_5-3 + 10, 1, -95.9 );
setRotateKey( spep_5-3 + 12, 1, -97.6 );
setRotateKey( spep_5-3 + 14, 1, -99.3 );
setRotateKey( spep_5-3 + 17, 1, -101 );
setRotateKey( spep_5-3 + 18, 1, -25.8 );
setRotateKey( spep_5-3 + 20, 1, -26.2 );
setRotateKey( spep_5-3 + 22, 1, -26.6 );
setRotateKey( spep_5-3 + 24, 1, -27 );
setRotateKey( spep_5-3 + 26, 1, -27.4 );
setRotateKey( spep_5-3 + 28, 1, -27.8 );
setRotateKey( spep_5-3 + 30, 1, -28.2 );
setRotateKey( spep_5-3 + 32, 1, -28.6 );
setRotateKey( spep_5-3 + 34, 1, -29 );
setRotateKey( spep_5-3 + 36, 1, -26.5 );
setRotateKey( spep_5-3 + 38, 1, -23.9 );
setRotateKey( spep_5-3 + 40, 1, -21.4 );
setRotateKey( spep_5-3 + 42, 1, -18.8 );
setRotateKey( spep_5-3 + 44, 1, -16.3 );
setRotateKey( spep_5-3 + 46, 1, -13.7 );
setRotateKey( spep_5-3 + 48, 1, -11.2 );
setRotateKey( spep_5-3 + 50, 1, -8.6 );
setRotateKey( spep_5-3 + 52, 1, -6.1 );
setRotateKey( spep_5-3 + 54, 1, -3.5 );
setRotateKey( spep_5-3 + 56, 1, -1 );
setRotateKey( spep_5-3 + 58, 1, 1.5 );

--SE
--トランクス膝蹴り
SE018 = playSeVer2( spep_5 + 12, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE018, 78 );
SE019 = playSeVer2( spep_5 + 12, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE019, 78 );
SE020 = playSeVer2( spep_5 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE020, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
--トランクス＆悟飯が空中待機
------------------------------------------------------
-- ** エフェクト等 ** --
stand_by_f = entryEffect( spep_6 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, stand_by_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, stand_by_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, stand_by_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, stand_by_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, stand_by_f, 0 );
setEffRotateKey( spep_6 + 40, stand_by_f, 0 );
setEffAlphaKey( spep_6 + 0, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 38, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 39, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 40, stand_by_f, 0 );

-- ** エフェクト等 ** --
stand_by_b = entryEffect( spep_6 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, stand_by_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, stand_by_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, stand_by_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, stand_by_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, stand_by_b, 0 );
setEffRotateKey( spep_6 + 40, stand_by_b, 0 );
setEffAlphaKey( spep_6 + 0, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 38, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 39, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 40, stand_by_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 40, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 195.6, 52 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 307, 42.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 418.6, 33.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, 530, 24 , 0 );
setMoveKey( spep_6-3 + 8, 1, 641.5, 14.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 752.9, 5.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 864.4, -4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 975.9, -13.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, 1087.4, -22.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 1198.9, -31.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, 1310.3, -41.1 , 0 );
setMoveKey( spep_6-3 + 22, 1, 1421.8, -50.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, 1533.2, -59.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, 1644.7, -68.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, 1756.1, -78.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, 1827.4, -44.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 1898.6, -11.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, 1969.9, 21.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 2041.2, 55.1 , 0 );
setMoveKey( spep_6-3 + 38, 1, 2112.4, 88.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 2183.6, 121.8 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
setScaleKey( spep_6-3 + 40, 1, 2, 2 );

setRotateKey( spep_6 + 0, 1, -25 );
--setRotateKey( spep_6-3 + 2, 1, -22.4 );
setRotateKey( spep_6-3 + 4, 1, -19.8 );
setRotateKey( spep_6-3 + 6, 1, -17.2 );
setRotateKey( spep_6-3 + 8, 1, -14.6 );
setRotateKey( spep_6-3 + 10, 1, -12 );
setRotateKey( spep_6-3 + 12, 1, -9.4 );
setRotateKey( spep_6-3 + 14, 1, -6.8 );
setRotateKey( spep_6-3 + 16, 1, -4.2 );
setRotateKey( spep_6-3 + 18, 1, -1.6 );
setRotateKey( spep_6-3 + 20, 1, 1 );
setRotateKey( spep_6-3 + 22, 1, 3.6 );
setRotateKey( spep_6-3 + 24, 1, 6.2 );
setRotateKey( spep_6-3 + 26, 1, 8.8 );
setRotateKey( spep_6-3 + 28, 1, 11.4 );
setRotateKey( spep_6-3 + 30, 1, 14 );
setRotateKey( spep_6-3 + 32, 1, 16.6 );
setRotateKey( spep_6-3 + 34, 1, 19.2 );
setRotateKey( spep_6-3 + 36, 1, 21.8 );
setRotateKey( spep_6-3 + 38, 1, 24.4 );
setRotateKey( spep_6-3 + 40, 1, 27 );

--SE
--二人浮き上がる
SE021 = playSeVer2( spep_6 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 44, 0, 0, 0, 0, 255 );

--次の準備
spep_7=spep_6+40;
------------------------------------------------------
--悟飯 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_7 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tame1, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, tame1, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, tame1, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame1, 0 );
setEffRotateKey( spep_7 + 66, tame1, 0 );
setEffAlphaKey( spep_7 + 0, tame1, 255 );
setEffAlphaKey( spep_7 + 64, tame1, 255 );
setEffAlphaKey( spep_7 + 65, tame1, 255 );
setEffAlphaKey( spep_7 + 66, tame1, 0 );

--SE
--悟飯腕あげる
SE022 = playSeVer2( spep_7 + 0, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE023 = playSeVer2( spep_7 + 8, 1296, "", spep_7 + 66 + 66 + 90, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 8, SE023, 141 );
SE024 = playSeVer2( spep_7 + 8, 1181, "",spep_7 + 226, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 8, SE024, 316 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255 );

--次の準備
spep_8=spep_7+66;
------------------------------------------------------
--悟飯 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_8 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, tame2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, tame2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tame2, 0 );
setEffRotateKey( spep_8 + 66, tame2, 0 );
setEffAlphaKey( spep_8 + 0, tame2, 255 );
setEffAlphaKey( spep_8 + 64, tame2, 255 );
setEffAlphaKey( spep_8 + 65, tame2, 255 );
setEffAlphaKey( spep_8 + 66, tame2, 0 );

--SE
--トランクス構える
SE025 = playSeVer2( spep_8 + 0, 1003, "", 0, 0, 0, -1);

--トランクス気弾溜め
SE026 = playSeVer2( spep_8 + 12, 1191, "",spep_8 + 160, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 12, SE026, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 70, 0, 0, 0, 0, 255 );

--次の準備
spep_9=spep_8+66;
------------------------------------------------------
--トランクス＆悟飯 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame3 = entryEffect( spep_9 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame3, 0, 0, 0 );
setEffMoveKey( spep_9 + 90, tame3, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame3, 1.0, 1.0 );
setEffScaleKey( spep_9 + 90, tame3, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame3, 0 );
setEffRotateKey( spep_9 + 90, tame3, 0 );
setEffAlphaKey( spep_9 + 0, tame3, 255 );
setEffAlphaKey( spep_9 + 90, tame3, 255 );
setEffAlphaKey( spep_9 + 91, tame3, 0 );
setEffAlphaKey( spep_9 + 92, tame3, 0 );

--顔カットインのタイミング指定
spep_x=spep_9 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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
SE027 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_9 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_10=spep_9+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_10 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_10, SE_05);
    speff = entryEffect( spep_10, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_10, SE_05);
	speff = entryEffect( spep_10, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_10, SE_05);
	speff = entryEffect( spep_10, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_10 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_10 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_10 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_10 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_10 + 0, shuchusen, 0 );
setEffRotateKey( spep_10 + 90, shuchusen, 0 );
setEffAlphaKey( spep_10 + 0, shuchusen, 255 );
setEffAlphaKey( spep_10 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_10 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_10 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11= spep_10 + 94; 
------------------------------------------------------
--悟飯 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face1 = entryEffect( spep_11 + 0, SP_16, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, face1, 0, 0, 0 );
setEffMoveKey( spep_11 + 36, face1, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, face1, 1.0, 1.0 );
setEffScaleKey( spep_11 + 36, face1, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, face1, 0 );
setEffRotateKey( spep_11 + 36, face1, 0 );
setEffAlphaKey( spep_11 + 0, face1, 255 );
setEffAlphaKey( spep_11 + 34, face1, 255 );
setEffAlphaKey( spep_11 + 35, face1, 255 );
setEffAlphaKey( spep_11 + 36, face1, 0 );

--SE
--発射前気弾溜め
SE029 = playSeVer2( spep_11 + 0, 1296, "",spep_11 + 106, 10, 10, -1);
setStartTimeMs( SE029,  417 );
SE030 = playSeVer2( spep_11 + 0, 1226, "",spep_11 + 134, 0, 36, -1);
setSeVolumeByWorkId( spep_11 + 0, SE030, 50 );
SE031 = playSeVer2( spep_11 + 0, 1181, "",spep_11 + 104, 0, 8, -1);
setSeVolumeByWorkId( spep_11 + 0, SE031, 316 );
SE032 = playSeVer2( spep_11 + 0, 1199, "", 0, 0, 0, -1);

--悟飯アップ
SE033 = playSeVer2( spep_11 + 0, 44, "",spep_11 + 52, 0, 32, 0.6);
SE034 = playSeVer2( spep_11 + 0, 1018, "",spep_11 + 52, 0, 28, 0.6);
setSeVolumeByWorkId( spep_11 + 0, SE034, 80 );
setPitch( spep_11 + 0, SE034, 100 );
setTimeStretch( SE034, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 40, 0, 0, 0, 0, 255 );

--次の準備
spep_12=spep_11+36;
------------------------------------------------------
--トランクス 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face2 = entryEffect( spep_12 + 0, SP_17, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, face2, 0, 0, 0 );
setEffMoveKey( spep_12 + 36, face2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, face2, 1.0, 1.0 );
setEffScaleKey( spep_12 + 36, face2, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, face2, 0 );
setEffRotateKey( spep_12 + 36, face2, 0 );
setEffAlphaKey( spep_12 + 0, face2, 255 );
setEffAlphaKey( spep_12 + 34, face2, 255 );
setEffAlphaKey( spep_12 + 35, face2, 255 );
setEffAlphaKey( spep_12 + 36, face2, 0 );

--SE
--トランクスアップ
SE035 = playSeVer2( spep_12 + 0, 1232, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_12 + 0, 44, "", 0, 0, 0, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );

--次の準備
spep_13=spep_12+36;
------------------------------------------------------
--トランクス＆悟飯 気弾放つ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_13 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_13 + 86, kidan, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_13 + 86, kidan, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, kidan, 0 );
setEffRotateKey( spep_13 + 86, kidan, 0 );
setEffAlphaKey( spep_13 + 0, kidan, 255 );
setEffAlphaKey( spep_13 + 84, kidan, 255 );
setEffAlphaKey( spep_13 + 85, kidan, 255 );
setEffAlphaKey( spep_13 + 86, kidan, 0 );

--SE
--発射前気弾溜め
SE037 = playSeVer2( spep_13 + 0, 1199, "",spep_13 + 36, 0, 6, -1);

---気弾発射
SE038 = playSeVer2( spep_13 + 16, 1177, "",spep_13 + 180, 0, 8, -1);
setSeVolumeByWorkId( spep_13 + 16, SE038, 82 );
SE039 = playSeVer2( spep_13 + 18, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 18, SE039, 79 );
SE040 = playSeVer2( spep_13 + 18, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_13 + 18, 1193, "",spep_13 + 180, 0, 8, -1);
SE042 = playSeVer2( spep_13 + 18, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 18, SE042, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 90, 0, 0, 0, 0, 255 );

--次の準備
spep_14=spep_13+86;
------------------------------------------------------
--気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_14 + 0, SP_19, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 56, beam_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_14 + 56, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, beam_f, 0 );
setEffRotateKey( spep_14 + 56, beam_f, 0 );
setEffAlphaKey( spep_14 + 0, beam_f, 255 );
setEffAlphaKey( spep_14 + 54, beam_f, 255 );
setEffAlphaKey( spep_14 + 55, beam_f, 255 );
setEffAlphaKey( spep_14 + 56, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_14 + 0, SP_20, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 56, beam_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 56, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, beam_b, 0 );
setEffRotateKey( spep_14 + 56, beam_b, 0 );
setEffAlphaKey( spep_14 + 0, beam_b, 255 );
setEffAlphaKey( spep_14 + 54, beam_b, 255 );
setEffAlphaKey( spep_14 + 55, beam_b, 255 );
setEffAlphaKey( spep_14 + 56, beam_b, 0 );

--敵の動き
setDisp( spep_14-3 + 42, 1, 1 );
setDisp( spep_14-3 + 58, 1, 0 );

setBlendColor(spep_14-3+42,1,3,0,0,0,0.53);
setBlendColor(spep_14-3+43,1,3,0,0,0,0.57);
setBlendColor(spep_14-3+44,1,3,0,0,0,0.61);
setBlendColor(spep_14-3+45,1,3,0,0,0,0.65);
setBlendColor(spep_14-3+46,1,3,0,0,0,0.69);
setBlendColor(spep_14-3+47,1,3,0,0,0,0.73);
setBlendColor(spep_14-3+48,1,3,0,0,0,0.77);
setBlendColor(spep_14-3+49,1,3,0,0,0,0.81);
setBlendColor(spep_14-3+50,1,3,0,0,0,0.85);
setBlendColor(spep_14-3+51,1,3,0,0,0,0.89);
setBlendColor(spep_14-3+52,1,3,0,0,0,0.93);
setBlendColor(spep_14-3+53,1,3,0,0,0,0.97);
setBlendColor(spep_14-3+54,1,3,0,0,0,1);
setBlendColor(spep_14+56,1,3,0,0,0,1);
setBlendColor(spep_14+58,1,3,0,0,0,0);

changeAnime( spep_14-3 + 42, 1, 107 );

setMoveKey( spep_14-3 + 42, 1, 30, -518.2 , 0 );
setMoveKey( spep_14-3 + 44, 1, 38.9, -268.9 , 0 );
setMoveKey( spep_14-3 + 46, 1, 28.8, -168.6 , 0 );
setMoveKey( spep_14-3 + 48, 1, 33, -108.4 , 0 );
setMoveKey( spep_14-3 + 50, 1, 44.8, -69.3 , 0 );
setMoveKey( spep_14-3 + 52, 1, 35.6, -18.3 , 0 );
setMoveKey( spep_14-3 + 54, 1, 42, 0.9 , 0 );
setMoveKey( spep_14-3 + 56, 1, 34.4, 28.7 , 0 );
setMoveKey( spep_14-3 + 58, 1, 44.7, 53.8 , 0 );

setScaleKey( spep_14-3 + 42, 1, 4.8,4.8);
setScaleKey( spep_14-3 + 44, 1, 3.16,3.16);
setScaleKey( spep_14-3 + 46, 1, 2.63,2.63);
setScaleKey( spep_14-3 + 48, 1, 2.26,2.26);
setScaleKey( spep_14-3 + 50, 1, 1.99,1.99);
setScaleKey( spep_14-3 + 52, 1, 1.8,1.8);
setScaleKey( spep_14-3 + 54, 1, 1.65,1.65);
setScaleKey( spep_14-3 + 56, 1, 1.54,1.54);
setScaleKey( spep_14-1 + 58, 1, 1.47,1.47);


setRotateKey( spep_14-3 + 42, 1, 0 );
setRotateKey( spep_14-3 + 58, 1, 0 );

--SE
--気弾飛んでいく
SE043 = playSeVer2( spep_14 + 0, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE043, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 + 0, 0, 90, 0, 0, 0, 0, 255 );

--次の準備
spep_15=spep_14+56;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_15 + 0, SP_21, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_15 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_15 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish, 0 );
setEffRotateKey( spep_15 + 160, finish, 0 );
setEffAlphaKey( spep_15 + 0, finish, 255 );
setEffAlphaKey( spep_15 + 160, finish, 255 );

--SE
--地面ヒット
SE044 = playSeVer2( spep_15 + 0, 1188, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_15 + 26, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_15 + 26, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_15 + 26 );
endPhase( spep_15 + 126 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--トランクス登場～パンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, panting, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting, -1.0, 1.0 );
setEffScaleKey( spep_0 + 136, panting, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting, 0 );
setEffRotateKey( spep_0 + 136, panting, 0 );
setEffAlphaKey( spep_0 + 0, panting, 255 );
setEffAlphaKey( spep_0 + 134, panting, 255 );
setEffAlphaKey( spep_0 + 135, panting, 255 );
setEffAlphaKey( spep_0 + 136, panting, 0 );

--SE
--二人向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 127 );
SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 1.22, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 150, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 85 );
SE004 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 154, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 85 );
SE005 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 138, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 73 );

--トランクス画面アップ
SE006 = playSeVer2( spep_0 + 26, 1188, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 78 );
setStartTimeMs( SE006,  250 );
SE007 = playSeVer2( spep_0 + 34, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 141 );

--加速する
SE008 = playSeVer2( spep_0 + 68, 1258, "",spep_0 + 150, 26, 14, -1);
setSeVolumeByWorkId( spep_0 + 68, SE008, 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--次の準備
spep_1=spep_0+136;
------------------------------------------------------
--パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 56, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 54, hit_f, 255 );
setEffAlphaKey( spep_1 + 55, hit_f, 255 );
setEffAlphaKey( spep_1 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 56, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 54, hit_b, 255 );
setEffAlphaKey( spep_1 + 55, hit_b, 255 );
setEffAlphaKey( spep_1 + 56, hit_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 0,  10020, 58-2, 0x100, -1, 0, -87.3, 334 , 1000 );
setEffShake( spep_1 + 0, ctbaki, 58-2, 20 );
setEffMoveKey( spep_1 + 0, ctbaki, -87.3, 334 , 0 );
--setEffMoveKey( spep_1-3 + 2, ctbaki, 93.8, 336.5 , 0 );
setEffMoveKey( spep_1-3 + 4, ctbaki, -120, 344.9 , 0 );
setEffMoveKey( spep_1-3 + 6, ctbaki, -70.8, 363.5 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbaki, -54.8, 306.3 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbaki, -79.4, 290.6 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbaki, -140.7, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbaki, -141.1, 314.2 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbaki, -137.7, 277.2 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbaki, -121.9, 300.3 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, -112.1, 329.3 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, -107.3, 323.1 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, -88.7, 334.7 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, -92.7, 329.8 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbaki, -86.5, 336.1 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbaki, -93.6, 331 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, -87.2, 325.5 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, -91.3, 330.3 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, -100.9, 330.7 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, -97.6, 336.1 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, -89.6, 330.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, -93.4, 326.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, -88.7, 332.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, -95.6, 329.7 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, -92.6, 337.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, -120, 344.9 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, -60.5, 381.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, -15, 272.6 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, -65.1, 211 , 0 );
setEffMoveKey( spep_1-2 + 58, ctbaki, -60.4, 184.3 , 0 );

setEffScaleKey( spep_1 + 0, ctbaki, 0.02, 0.02 );
setEffScaleKey( spep_1 + 2, ctbaki, 1.51, 1.51 );
setEffScaleKey( spep_1 + 4, ctbaki, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 4.83, 4.83 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 6.67, 6.67 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 8.51, 8.51 );
setEffScaleKey( spep_1-2 + 58, ctbaki, 10.35, 10.34 );

setEffRotateKey( spep_1 + 0, ctbaki, -15.2 );
setEffRotateKey( spep_1 + 2, ctbaki, -22 );
setEffRotateKey( spep_1 + 4, ctbaki, -29 );
setEffRotateKey( spep_1 + 6, ctbaki, -28.9 );
setEffRotateKey( spep_1-3 + 28, ctbaki, -28.9 );
setEffRotateKey( spep_1-3 + 30, ctbaki, -29 );
setEffRotateKey( spep_1-3 + 50, ctbaki, -29 );
setEffRotateKey( spep_1-2 + 58, ctbaki, -28.8 );

setEffAlphaKey( spep_1 + 0, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 54, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 56, ctbaki, 64 );
setEffAlphaKey( spep_1-2 + 58, ctbaki, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 7 );

setMoveKey( spep_1 + 0, 1, 2.7, -23.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 51.8, -22.9 , 0 );
setMoveKey( spep_1-3 + 4, 1, 1.9, -117.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, -153, -86.4 , 0 );
setMoveKey( spep_1-3 + 8, 1, -418.6, -247.5 , 0 );
setMoveKey( spep_1-3 + 10, 1, -507.2, -261.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, -679.6, -335.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, -721.1, -361.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, -747.1, -372.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, -783.7, -392.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, -792.8, -395.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, -798.9, -400.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, -804.9, -405.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, -814.1, -410.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, -823.2, -415.3 , 0 );
setMoveKey( spep_1-3 + 30, 1, -830.1, -418 , 0 );
setMoveKey( spep_1-3 + 32, 1, -836.9, -420.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, -846.1, -423.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, -855.2, -426 , 0 );
setMoveKey( spep_1-3 + 38, 1, -863.6, -431.1 , 0 );
setMoveKey( spep_1-3 + 40, 1, -872, -436 , 0 );
setMoveKey( spep_1-3 + 42, 1, -879.6, -439.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, -887.1, -443 , 0 );
setMoveKey( spep_1-3 + 46, 1, -894.7, -446.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, -902.3, -450 , 0 );
setMoveKey( spep_1-3 + 50, 1, -909.9, -453.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, -917.5, -456.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, -925.1, -460.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, -932.7, -463.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, -940.3, -467.3 , 0 );

setScaleKey( spep_1 + 0, 1, 3.42,3.42);
setScaleKey( spep_1-3 + 4, 1, 3.56,3.56);
setScaleKey( spep_1-3 + 6, 1, 3.78,3.78);
setScaleKey( spep_1-3 + 8, 1, 4,4);
setScaleKey( spep_1-3 + 10, 1, 4.22,4.22);
setScaleKey( spep_1-3 + 12, 1, 4.44,4.44);
setScaleKey( spep_1-3 + 14, 1, 4.55,4.55);
setScaleKey( spep_1-3 + 16, 1, 4.64,4.64);
setScaleKey( spep_1-3 + 18, 1, 4.74,4.74);
setScaleKey( spep_1-3 + 20, 1, 4.76,4.76);
setScaleKey( spep_1-3 + 22, 1, 4.79,4.79);
setScaleKey( spep_1-3 + 24, 1, 4.82,4.82);
setScaleKey( spep_1-3 + 26, 1, 4.85,4.85);
setScaleKey( spep_1-3 + 28, 1, 4.88,4.88);
setScaleKey( spep_1-3 + 30, 1, 4.91,4.91);
setScaleKey( spep_1-3 + 32, 1, 4.93,4.93);
setScaleKey( spep_1-3 + 34, 1, 4.95,4.95);
setScaleKey( spep_1-3 + 36, 1, 4.99,4.99);
setScaleKey( spep_1-3 + 38, 1, 5.01,5.01);
setScaleKey( spep_1-3 + 40, 1, 5.03,5.03);
setScaleKey( spep_1-3 + 42, 1, 5.05,5.05);
setScaleKey( spep_1-3 + 44, 1, 5.09,5.09);
setScaleKey( spep_1-3 + 46, 1, 5.11,5.11);
setScaleKey( spep_1-3 + 48, 1, 5.15,5.15);
setScaleKey( spep_1-3 + 50, 1, 5.17,5.17);
setScaleKey( spep_1-3 + 52, 1, 5.2,5.2);
setScaleKey( spep_1-3 + 54, 1, 5.22,5.22);
setScaleKey( spep_1-3 + 56, 1, 5.24,5.24);
setScaleKey( spep_1-3 + 58, 1, 5.28,5.28);

setRotateKey( spep_1 + 0, 1, 20.8 );
setRotateKey( spep_1 + 2, 1, 21 );
setRotateKey( spep_1-3 + 58, 1, 21 );

--SE
--トランクスパンチ
SE009 = playSeVer2( spep_1 + 0, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_1 + 32, 1183, "",spep_1 + 118, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--パンチヒット後～悟飯回り込み
------------------------------------------------------
-- ** エフェクト等 ** --
around_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, around_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, around_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, around_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, around_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, around_f, 0 );
setEffRotateKey( spep_2 + 56, around_f, 0 );
setEffAlphaKey( spep_2 + 0, around_f, 255 );
setEffAlphaKey( spep_2 + 54, around_f, 255 );
setEffAlphaKey( spep_2 + 55, around_f, 255 );
setEffAlphaKey( spep_2 + 56, around_f, 0 );

-- ** エフェクト等 ** --
around_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, around_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, around_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, around_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, around_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, around_b, 0 );
setEffRotateKey( spep_2 + 56, around_b, 0 );
setEffAlphaKey( spep_2 + 0, around_b, 255 );
setEffAlphaKey( spep_2 + 54, around_b, 255 );
setEffAlphaKey( spep_2 + 55, around_b, 255 );
setEffAlphaKey( spep_2 + 56, around_b, 0 );

--敵の動き
setDisp( spep_2-2 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, 17.7, 10.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -1.6, 13.6 , 0 );
setMoveKey( spep_2-3 + 4, 1, 1.6, 13.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, -17.4, 12.6 , 0 );
setMoveKey( spep_2-3 + 8, 1, -21.4, 8.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, -17.3, 15.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, -17.2, 14.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, -11, 12.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, -8.9, 14.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, -2.8, 12.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 2.4, 12.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, 1.5, 16.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 7.6, 14.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, 13.7, 16.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 15.9, 17.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 22, 15.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 24.1, 17.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 30.3, 19.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, 32.4, 21.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 34.5, 19.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, 40.7, 17.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 42.8, 19.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 48.9, 21.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, 51.1, 23.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 57.2, 21.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 59.3, 20.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 65.5, 22.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 67.6, 24.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 73.7, 22.5 , 0 );
setMoveKey( spep_2-2 + 58, 1, 75.9, 24.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
setScaleKey( spep_2-2 + 58, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, 0 );
--setRotateKey( spep_2-3 + 2, 1, 0.9 );
setRotateKey( spep_2-3 + 4, 1, -1.8 );
setRotateKey( spep_2-3 + 6, 1, -2.6 );
setRotateKey( spep_2-3 + 8, 1, -3.5 );
setRotateKey( spep_2-3 + 10, 1, -3.9 );
setRotateKey( spep_2-3 + 12, 1, -4.2 );
setRotateKey( spep_2-3 + 14, 1, -4.6 );
setRotateKey( spep_2-3 + 16, 1, -4.9 );
setRotateKey( spep_2-3 + 18, 1, -5.3 );
setRotateKey( spep_2-3 + 20, 1, -5.6 );
setRotateKey( spep_2-3 + 22, 1, -6 );
setRotateKey( spep_2-3 + 24, 1, -6.3 );
setRotateKey( spep_2-3 + 26, 1, -6.7 );
setRotateKey( spep_2-3 + 28, 1, -7 );
setRotateKey( spep_2-3 + 30, 1, -7.4 );
setRotateKey( spep_2-3 + 32, 1, -7.7 );
setRotateKey( spep_2-3 + 34, 1, -8.1 );
setRotateKey( spep_2-3 + 36, 1, -8.4 );
setRotateKey( spep_2-3 + 38, 1, -8.8 );
setRotateKey( spep_2-3 + 40, 1, -9.1 );
setRotateKey( spep_2-3 + 42, 1, -9.5 );
setRotateKey( spep_2-3 + 44, 1, -9.8 );
setRotateKey( spep_2-3 + 46, 1, -10.2 );
setRotateKey( spep_2-3 + 48, 1, -10.5 );
setRotateKey( spep_2-3 + 50, 1, -10.9 );
setRotateKey( spep_2-3 + 52, 1, -11.2 );
setRotateKey( spep_2-3 + 54, 1, -11.6 );
setRotateKey( spep_2-3 + 56, 1, -11.9 );
setRotateKey( spep_2-2 + 58, 1, -12.3 );

--SE
--悟飯追い抜く
SE011 = playSeVer2( spep_2 + 30, 1117, "",spep_2 + 74, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
--悟飯手刀（アップ絵）
------------------------------------------------------
-- ** エフェクト等 ** --
sword = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sword, 0, 0, 0 );
setEffMoveKey( spep_3 + 30, sword, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sword, -1.0, 1.0 );
setEffScaleKey( spep_3 + 30, sword, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword, 0 );
setEffRotateKey( spep_3 + 30, sword, 0 );
setEffAlphaKey( spep_3 + 0, sword, 255 );
setEffAlphaKey( spep_3 + 28, sword, 255 );
setEffAlphaKey( spep_3 + 29, sword, 255 );
setEffAlphaKey( spep_3 + 30, sword, 0 );

--SE
--手刀振りかぶる
SE012 = playSeVer2( spep_3 + 0, 1179, "",spep_3 + 48, 0, 12, 0.6);
SE013 = playSeVer2( spep_3 + 8, 1003, "", 0, 0, 0, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );

--次の準備
spep_4=spep_3+30;
------------------------------------------------------
--手刀ヒット～敵吹っ飛び 手前
------------------------------------------------------
-- ** エフェクト等 ** --
chop_f = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chop_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, chop_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chop_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, chop_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chop_f, 0 );
setEffRotateKey( spep_4 + 46, chop_f, 0 );
setEffAlphaKey( spep_4 + 0, chop_f, 255 );
setEffAlphaKey( spep_4 + 44, chop_f, 255 );
setEffAlphaKey( spep_4 + 45, chop_f, 255 );
setEffAlphaKey( spep_4 + 46, chop_f, 0 );

-- ** エフェクト等 ** --
chop_b = entryEffect( spep_4 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chop_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, chop_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chop_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, chop_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chop_b, 0 );
setEffRotateKey( spep_4 + 46, chop_b, 0 );
setEffAlphaKey( spep_4 + 0, chop_b, 255 );
setEffAlphaKey( spep_4 + 44, chop_b, 255 );
setEffAlphaKey( spep_4 + 45, chop_b, 255 );
setEffAlphaKey( spep_4 + 46, chop_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 44, 1, 0 );

changeAnime( spep_4 + 0, 1, 6 );

setMoveKey( spep_4 + 0, 1, 41.5, 11.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -32.8, 51.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 106.6, -20.6 , 0 );
setMoveKey( spep_4-3 + 6, 1, 42.1, -32.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 119.9, 32.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, 100.5, 10.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, 109.3, 15.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 107.8, 10 , 0 );
setMoveKey( spep_4-3 + 16, 1, 111.6, 9.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 191.5, 16.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 271.3, 22.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 351.2, 29 , 0 );
setMoveKey( spep_4-3 + 24, 1, 431, 35.4 , 0 );
setMoveKey( spep_4-3 + 26, 1, 510.8, 41.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 590.7, 48.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 670.5, 54.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, 750.4, 61.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, 830.2, 67.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, 910.1, 73.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 989.9, 80.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 1069.8, 86.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 1149.6, 93.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 1229.5, 99.5 , 0 );

setScaleKey( spep_4 + 0, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 16, 1, 1.91, 1.91 );
setScaleKey( spep_4-3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_4-3 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 22, 1, 2, 2 );
setScaleKey( spep_4-3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_4-3 + 26, 1, 2.06, 2.06 );
setScaleKey( spep_4-3 + 28, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 30, 1, 2.12, 2.12 );
setScaleKey( spep_4-3 + 32, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 34, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 36, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 40, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 42, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 44, 1, 2.33, 2.33 );

setRotateKey( spep_4 + 0, 1, 64 );
--setRotateKey( spep_4-3 + 2, 1, -64.7 );
setRotateKey( spep_4-3 + 4, 1, 65.5 );
setRotateKey( spep_4-3 + 6, 1, 66.2 );
setRotateKey( spep_4-3 + 8, 1, 67 );
setRotateKey( spep_4-3 + 10, 1, 67.7 );
setRotateKey( spep_4-3 + 12, 1, 68.5 );
setRotateKey( spep_4-3 + 14, 1, 69.2 );
setRotateKey( spep_4-3 + 16, 1, 70 );
setRotateKey( spep_4-3 + 18, 1, 72.2 );
setRotateKey( spep_4-3 + 20, 1, 74.4 );
setRotateKey( spep_4-3 + 22, 1, 76.6 );
setRotateKey( spep_4-3 + 24, 1, 78.9 );
setRotateKey( spep_4-3 + 26, 1, 81.1 );
setRotateKey( spep_4-3 + 28, 1, 83.3 );
setRotateKey( spep_4-3 + 30, 1, 85.5 );
setRotateKey( spep_4-3 + 32, 1, 87.7 );
setRotateKey( spep_4-3 + 34, 1, 89.9 );
setRotateKey( spep_4-3 + 36, 1, 92.1 );
setRotateKey( spep_4-3 + 38, 1, 94.4 );
setRotateKey( spep_4-3 + 40, 1, 96.6 );
setRotateKey( spep_4-3 + 42, 1, 98.8 );
setRotateKey( spep_4-3 + 44, 1, 101 );

--SE
--手刀ヒット
SE014 = playSeVer2( spep_4 + 0, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE015, 78 );
SE016 = playSeVer2( spep_4 + 0, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_4 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 18, SE017, 64 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );

--次の準備
spep_5=spep_4+46;
------------------------------------------------------
--トランクスが膝蹴り～敵吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 56, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 54, kick_f, 255 );
setEffAlphaKey( spep_5 + 55, kick_f, 255 );
setEffAlphaKey( spep_5 + 56, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 56, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 54, kick_b, 255 );
setEffAlphaKey( spep_5 + 55, kick_b, 255 );
setEffAlphaKey( spep_5 + 56, kick_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 6 );
changeAnime( spep_5-3 + 18, 1, 8 );

setMoveKey( spep_5 + 0, 1, -127, 44 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 179.5, 62.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, -232, 80.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, -284.4, 98.4 , 0 );
setMoveKey( spep_5-3 + 8, 1, -336.9, 116.5 , 0 );
setMoveKey( spep_5-3 + 10, 1, -254.1, 90.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, -171.2, 65.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, -125.9, 57.2 , 0 );
setMoveKey( spep_5-3 + 17, 1, -0.5, -28.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, -177.4, 84.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, -187.4, 49.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, -202.2, 64.8 , 0 );
setMoveKey( spep_5-3 + 24, 1, -202.1, 67.3 , 0 );
setMoveKey( spep_5-3 + 26, 1, -204.4, 77.4 , 0 );
setMoveKey( spep_5-3 + 28, 1, -214.3, 90 , 0 );
setMoveKey( spep_5-3 + 30, 1, -214.2, 92.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, -221.5, 95.1 , 0 );
setMoveKey( spep_5-3 + 34, 1, -223.9, 105.2 , 0 );
setMoveKey( spep_5-3 + 36, 1, -283.7, 166.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, -343.6, 227.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, -403.5, 288.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, -463.4, 349.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, -523.4, 410.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, -583.3, 471.4 , 0 );
setMoveKey( spep_5-3 + 48, 1, -643.2, 532.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, -703.2, 593.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, -763.1, 654.6 , 0 );
setMoveKey( spep_5-3 + 54, 1, -823.1, 715.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, -883.1, 776.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, -943, 837.9 , 0 );

setScaleKey( spep_5 + 0, 1, 3.16,3.16);
setScaleKey( spep_5-3 + 4, 1, 3.23,3.23);
setScaleKey( spep_5-3 + 6, 1, 3.26,3.26);
setScaleKey( spep_5-3 + 8, 1, 3.29,3.29);
setScaleKey( spep_5-3 + 10, 1, 3.33,3.33);
setScaleKey( spep_5-3 + 12, 1, 3.37,3.37);
setScaleKey( spep_5-3 + 14, 1, 3.39,3.39);
setScaleKey( spep_5-3 + 17, 1, 3.43,3.43);
setScaleKey( spep_5-3 + 18, 1, 4.14,4.14);
setScaleKey( spep_5-3 + 20, 1, 4.12,4.12);
setScaleKey( spep_5-3 + 22, 1, 4.08,4.08);
setScaleKey( spep_5-3 + 24, 1, 4.06,4.06);
setScaleKey( spep_5-3 + 26, 1, 4.03,4.03);
setScaleKey( spep_5-3 + 28, 1, 3.98,3.98);
setScaleKey( spep_5-3 + 30, 1, 3.95,3.95);
setScaleKey( spep_5-3 + 32, 1, 3.92,3.92);
setScaleKey( spep_5-3 + 34, 1, 3.9,3.9);
setScaleKey( spep_5-3 + 36, 1, 3.87,3.87);
setScaleKey( spep_5-3 + 38, 1, 3.83,3.83);
setScaleKey( spep_5-3 + 40, 1, 3.81,3.81);
setScaleKey( spep_5-3 + 42, 1, 3.78,3.78);
setScaleKey( spep_5-3 + 44, 1, 3.74,3.74);
setScaleKey( spep_5-3 + 46, 1, 3.71,3.71);
setScaleKey( spep_5-3 + 48, 1, 3.68,3.68);
setScaleKey( spep_5-3 + 50, 1, 3.64,3.64);
setScaleKey( spep_5-3 + 52, 1, 3.61,3.61);
setScaleKey( spep_5-3 + 54, 1, 3.59,3.59);
setScaleKey( spep_5-3 + 56, 1, 3.55,3.55);
setScaleKey( spep_5-3 + 58, 1, 3.52,3.52);

setRotateKey( spep_5+ 0, 1, 87.5 );
--setRotateKey( spep_5-3 + 2, 1, -89.1 );
setRotateKey( spep_5-3 + 4, 1, 90.8 );
setRotateKey( spep_5-3 + 6, 1, 92.5 );
setRotateKey( spep_5-3 + 8, 1, 94.2 );
setRotateKey( spep_5-3 + 10, 1, 95.9 );
setRotateKey( spep_5-3 + 12, 1, 97.6 );
setRotateKey( spep_5-3 + 14, 1, 99.3 );
setRotateKey( spep_5-3 + 17, 1, 101 );
setRotateKey( spep_5-3 + 18, 1, 25.8 );
setRotateKey( spep_5-3 + 20, 1, 26.2 );
setRotateKey( spep_5-3 + 22, 1, 26.6 );
setRotateKey( spep_5-3 + 24, 1, 27 );
setRotateKey( spep_5-3 + 26, 1, 27.4 );
setRotateKey( spep_5-3 + 28, 1, 27.8 );
setRotateKey( spep_5-3 + 30, 1, 28.2 );
setRotateKey( spep_5-3 + 32, 1, 28.6 );
setRotateKey( spep_5-3 + 34, 1, 29 );
setRotateKey( spep_5-3 + 36, 1, 26.5 );
setRotateKey( spep_5-3 + 38, 1, 23.9 );
setRotateKey( spep_5-3 + 40, 1, 21.4 );
setRotateKey( spep_5-3 + 42, 1, 18.8 );
setRotateKey( spep_5-3 + 44, 1, 16.3 );
setRotateKey( spep_5-3 + 46, 1, 13.7 );
setRotateKey( spep_5-3 + 48, 1, 11.2 );
setRotateKey( spep_5-3 + 50, 1, 8.6 );
setRotateKey( spep_5-3 + 52, 1, 6.1 );
setRotateKey( spep_5-3 + 54, 1, 3.5 );
setRotateKey( spep_5-3 + 56, 1, 1 );
setRotateKey( spep_5-3 + 58, 1, -1.5 );

--SE
--トランクス膝蹴り
SE018 = playSeVer2( spep_5 + 12, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE018, 78 );
SE019 = playSeVer2( spep_5 + 12, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE019, 78 );
SE020 = playSeVer2( spep_5 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE020, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
--トランクス＆悟飯が空中待機
------------------------------------------------------
-- ** エフェクト等 ** --
stand_by_f = entryEffect( spep_6 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, stand_by_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, stand_by_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, stand_by_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 40, stand_by_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, stand_by_f, 0 );
setEffRotateKey( spep_6 + 40, stand_by_f, 0 );
setEffAlphaKey( spep_6 + 0, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 38, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 39, stand_by_f, 255 );
setEffAlphaKey( spep_6 + 40, stand_by_f, 0 );

-- ** エフェクト等 ** --
stand_by_b = entryEffect( spep_6 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, stand_by_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, stand_by_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, stand_by_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 40, stand_by_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, stand_by_b, 0 );
setEffRotateKey( spep_6 + 40, stand_by_b, 0 );
setEffAlphaKey( spep_6 + 0, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 38, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 39, stand_by_b, 255 );
setEffAlphaKey( spep_6 + 40, stand_by_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 40, 1, 0 );

changeAnime( spep_6 + 0, 1, 6 );

setMoveKey( spep_6 + 0, 1, -195.6, 52 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 307, 42.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, -418.6, 33.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, -530, 24 , 0 );
setMoveKey( spep_6-3 + 8, 1, -641.5, 14.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, -752.9, 5.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, -864.4, -4 , 0 );
setMoveKey( spep_6-3 + 14, 1, -975.9, -13.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, -1087.4, -22.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, -1198.9, -31.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, -1310.3, -41.1 , 0 );
setMoveKey( spep_6-3 + 22, 1, -1421.8, -50.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, -1533.2, -59.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, -1644.7, -68.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, -1756.1, -78.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, -1827.4, -44.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, -1898.6, -11.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, -1969.9, 21.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, -2041.2, 55.1 , 0 );
setMoveKey( spep_6-3 + 38, 1, -2112.4, 88.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -2183.6, 121.8 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
setScaleKey( spep_6-3 + 40, 1, 2, 2 );

setRotateKey( spep_6 + 0, 1, 25 );
--setRotateKey( spep_6-3 + 2, 1, -22.4 );
setRotateKey( spep_6-3 + 4, 1, 19.8 );
setRotateKey( spep_6-3 + 6, 1, 17.2 );
setRotateKey( spep_6-3 + 8, 1, 14.6 );
setRotateKey( spep_6-3 + 10, 1, 12 );
setRotateKey( spep_6-3 + 12, 1, 9.4 );
setRotateKey( spep_6-3 + 14, 1, 6.8 );
setRotateKey( spep_6-3 + 16, 1, 4.2 );
setRotateKey( spep_6-3 + 18, 1, 1.6 );
setRotateKey( spep_6-3 + 20, 1, -1 );
setRotateKey( spep_6-3 + 22, 1, -3.6 );
setRotateKey( spep_6-3 + 24, 1, -6.2 );
setRotateKey( spep_6-3 + 26, 1, -8.8 );
setRotateKey( spep_6-3 + 28, 1, -11.4 );
setRotateKey( spep_6-3 + 30, 1, -14 );
setRotateKey( spep_6-3 + 32, 1, -16.6 );
setRotateKey( spep_6-3 + 34, 1, -19.2 );
setRotateKey( spep_6-3 + 36, 1, -21.8 );
setRotateKey( spep_6-3 + 38, 1, -24.4 );
setRotateKey( spep_6-3 + 40, 1, -27 );

--SE
--二人浮き上がる
SE021 = playSeVer2( spep_6 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 44, 0, 0, 0, 0, 255 );

--次の準備
spep_7=spep_6+40;
------------------------------------------------------
--悟飯 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_7 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tame1, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, tame1, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, tame1, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, tame1, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame1, 0 );
setEffRotateKey( spep_7 + 66, tame1, 0 );
setEffAlphaKey( spep_7 + 0, tame1, 255 );
setEffAlphaKey( spep_7 + 64, tame1, 255 );
setEffAlphaKey( spep_7 + 65, tame1, 255 );
setEffAlphaKey( spep_7 + 66, tame1, 0 );

--SE
--悟飯腕あげる
SE022 = playSeVer2( spep_7 + 0, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE023 = playSeVer2( spep_7 + 8, 1296, "", spep_7 + 66 + 66 + 90, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 8, SE023, 141 );
SE024 = playSeVer2( spep_7 + 8, 1181, "",spep_7 + 226, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 8, SE024, 316 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255 );

--次の準備
spep_8=spep_7+66;
------------------------------------------------------
--悟飯 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_8 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, tame2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_8 + 66, tame2, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tame2, 0 );
setEffRotateKey( spep_8 + 66, tame2, 0 );
setEffAlphaKey( spep_8 + 0, tame2, 255 );
setEffAlphaKey( spep_8 + 64, tame2, 255 );
setEffAlphaKey( spep_8 + 65, tame2, 255 );
setEffAlphaKey( spep_8 + 66, tame2, 0 );

--SE
--トランクス構える
SE025 = playSeVer2( spep_8 + 0, 1003, "", 0, 0, 0, -1);

--トランクス気弾溜め
SE026 = playSeVer2( spep_8 + 12, 1191, "",spep_8 + 160, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 12, SE026, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 70, 0, 0, 0, 0, 255 );

--次の準備
spep_9=spep_8+66;
------------------------------------------------------
--トランクス＆悟飯 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame3 = entryEffect( spep_9 + 0, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame3, 0, 0, 0 );
setEffMoveKey( spep_9 + 90, tame3, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame3, -1.0, 1.0 );
setEffScaleKey( spep_9 + 90, tame3, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame3, 0 );
setEffRotateKey( spep_9 + 90, tame3, 0 );
setEffAlphaKey( spep_9 + 0, tame3, 255 );
setEffAlphaKey( spep_9 + 90, tame3, 255 );
setEffAlphaKey( spep_9 + 91, tame3, 0 );
setEffAlphaKey( spep_9 + 92, tame3, 0 );

--顔カットインのタイミング指定
spep_x=spep_9 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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
--SE027 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_9 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_10=spep_9+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_10 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_10 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_10 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_10 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_10 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_10 + 0, shuchusen, 0 );
setEffRotateKey( spep_10 + 90, shuchusen, 0 );
setEffAlphaKey( spep_10 + 0, shuchusen, 255 );
setEffAlphaKey( spep_10 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_10 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_10 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11= spep_10 + 94; 
------------------------------------------------------
--悟飯 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face1 = entryEffect( spep_11 + 0, SP_16x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, face1, 0, 0, 0 );
setEffMoveKey( spep_11 + 36, face1, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, face1, -1.0, 1.0 );
setEffScaleKey( spep_11 + 36, face1, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, face1, 0 );
setEffRotateKey( spep_11 + 36, face1, 0 );
setEffAlphaKey( spep_11 + 0, face1, 255 );
setEffAlphaKey( spep_11 + 34, face1, 255 );
setEffAlphaKey( spep_11 + 35, face1, 255 );
setEffAlphaKey( spep_11 + 36, face1, 0 );

--SE
--発射前気弾溜め
SE029 = playSeVer2( spep_11 + 0, 1296, "",spep_11 + 106, 10, 10, -1);
setStartTimeMs( SE029,  417 );
SE030 = playSeVer2( spep_11 + 0, 1226, "",spep_11 + 134, 0, 36, -1);
setSeVolumeByWorkId( spep_11 + 0, SE030, 50 );
SE031 = playSeVer2( spep_11 + 0, 1181, "",spep_11 + 104, 0, 8, -1);
setSeVolumeByWorkId( spep_11 + 0, SE031, 316 );
SE032 = playSeVer2( spep_11 + 0, 1199, "", 0, 0, 0, -1);

--悟飯アップ
SE033 = playSeVer2( spep_11 + 0, 44, "",spep_11 + 52, 0, 32, 0.6);
SE034 = playSeVer2( spep_11 + 0, 1018, "",spep_11 + 52, 0, 28, 0.6);
setSeVolumeByWorkId( spep_11 + 0, SE034, 80 );
setPitch( spep_11 + 0, SE034, 100 );
setTimeStretch( SE034, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 40, 0, 0, 0, 0, 255 );

--次の準備
spep_12=spep_11+36;
------------------------------------------------------
--トランクス 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face2 = entryEffect( spep_12 + 0, SP_17x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, face2, 0, 0, 0 );
setEffMoveKey( spep_12 + 36, face2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, face2, -1.0, 1.0 );
setEffScaleKey( spep_12 + 36, face2, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, face2, 0 );
setEffRotateKey( spep_12 + 36, face2, 0 );
setEffAlphaKey( spep_12 + 0, face2, 255 );
setEffAlphaKey( spep_12 + 34, face2, 255 );
setEffAlphaKey( spep_12 + 35, face2, 255 );
setEffAlphaKey( spep_12 + 36, face2, 0 );

--SE
--トランクスアップ
SE035 = playSeVer2( spep_12 + 0, 1232, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_12 + 0, 44, "", 0, 0, 0, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );

--次の準備
spep_13=spep_12+36;
------------------------------------------------------
--トランクス＆悟飯 気弾放つ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_13 + 0, SP_18x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_13 + 86, kidan, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_13 + 86, kidan, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, kidan, 0 );
setEffRotateKey( spep_13 + 86, kidan, 0 );
setEffAlphaKey( spep_13 + 0, kidan, 255 );
setEffAlphaKey( spep_13 + 84, kidan, 255 );
setEffAlphaKey( spep_13 + 85, kidan, 255 );
setEffAlphaKey( spep_13 + 86, kidan, 0 );

--SE
--発射前気弾溜め
SE037 = playSeVer2( spep_13 + 0, 1199, "",spep_13 + 36, 0, 6, -1);

---気弾発射
SE038 = playSeVer2( spep_13 + 16, 1177, "",spep_13 + 180, 0, 8, -1);
setSeVolumeByWorkId( spep_13 + 16, SE038, 82 );
SE039 = playSeVer2( spep_13 + 18, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 18, SE039, 79 );
SE040 = playSeVer2( spep_13 + 18, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_13 + 18, 1193, "",spep_13 + 180, 0, 8, -1);
SE042 = playSeVer2( spep_13 + 18, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 18, SE042, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 90, 0, 0, 0, 0, 255 );

--次の準備
spep_14=spep_13+86;
------------------------------------------------------
--気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_14 + 0, SP_19x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 56, beam_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_14 + 56, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0, beam_f, 0 );
setEffRotateKey( spep_14 + 56, beam_f, 0 );
setEffAlphaKey( spep_14 + 0, beam_f, 255 );
setEffAlphaKey( spep_14 + 54, beam_f, 255 );
setEffAlphaKey( spep_14 + 55, beam_f, 255 );
setEffAlphaKey( spep_14 + 56, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_14 + 0, SP_20x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 56, beam_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_14 + 56, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0, beam_b, 0 );
setEffRotateKey( spep_14 + 56, beam_b, 0 );
setEffAlphaKey( spep_14 + 0, beam_b, 255 );
setEffAlphaKey( spep_14 + 54, beam_b, 255 );
setEffAlphaKey( spep_14 + 55, beam_b, 255 );
setEffAlphaKey( spep_14 + 56, beam_b, 0 );

--敵の動き
setDisp( spep_14-3 + 42, 1, 1 );
setDisp( spep_14-3 + 58, 1, 0 );

setBlendColor(spep_14-3+42,1,3,0,0,0,0.53);
setBlendColor(spep_14-3+43,1,3,0,0,0,0.57);
setBlendColor(spep_14-3+44,1,3,0,0,0,0.61);
setBlendColor(spep_14-3+45,1,3,0,0,0,0.65);
setBlendColor(spep_14-3+46,1,3,0,0,0,0.69);
setBlendColor(spep_14-3+47,1,3,0,0,0,0.73);
setBlendColor(spep_14-3+48,1,3,0,0,0,0.77);
setBlendColor(spep_14-3+49,1,3,0,0,0,0.81);
setBlendColor(spep_14-3+50,1,3,0,0,0,0.85);
setBlendColor(spep_14-3+51,1,3,0,0,0,0.89);
setBlendColor(spep_14-3+52,1,3,0,0,0,0.93);
setBlendColor(spep_14-3+53,1,3,0,0,0,0.97);
setBlendColor(spep_14-3+54,1,3,0,0,0,1);
setBlendColor(spep_14+56,1,3,0,0,0,1);
setBlendColor(spep_14+58,1,3,0,0,0,0);

changeAnime( spep_14-3 + 42, 1, 7 );

setMoveKey( spep_14-3 + 42, 1, -30, -518.2 , 0 );
setMoveKey( spep_14-3 + 44, 1, -38.9, -268.9 , 0 );
setMoveKey( spep_14-3 + 46, 1, -28.8, -168.6 , 0 );
setMoveKey( spep_14-3 + 48, 1, -33, -108.4 , 0 );
setMoveKey( spep_14-3 + 50, 1, -44.8, -69.3 , 0 );
setMoveKey( spep_14-3 + 52, 1, -35.6, -18.3 , 0 );
setMoveKey( spep_14-3 + 54, 1, -42, 0.9 , 0 );
setMoveKey( spep_14-3 + 56, 1, -34.4, 28.7 , 0 );
setMoveKey( spep_14-3 + 58, 1, -44.7, 53.8 , 0 );

setScaleKey( spep_14-3 + 42, 1, 4.8,4.8);
setScaleKey( spep_14-3 + 44, 1, 3.16,3.16);
setScaleKey( spep_14-3 + 46, 1, 2.63,2.63);
setScaleKey( spep_14-3 + 48, 1, 2.26,2.26);
setScaleKey( spep_14-3 + 50, 1, 1.99,1.99);
setScaleKey( spep_14-3 + 52, 1, 1.8,1.8);
setScaleKey( spep_14-3 + 54, 1, 1.65,1.65);
setScaleKey( spep_14-3 + 56, 1, 1.54,1.54);
setScaleKey( spep_14-1 + 58, 1, 1.47,1.47);


setRotateKey( spep_14-3 + 42, 1, 0 );
setRotateKey( spep_14-3 + 58, 1, 0 );

--SE
--気弾飛んでいく
SE043 = playSeVer2( spep_14 + 0, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 0, SE043, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 + 0, 0, 90, 0, 0, 0, 0, 255 );

--次の準備
spep_15=spep_14+56;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_15 + 0, SP_21x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_15 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_15 + 160, finish, -1.0, 1.0 );
setEffRotateKey( spep_15 + 0, finish, 0 );
setEffRotateKey( spep_15 + 160, finish, 0 );
setEffAlphaKey( spep_15 + 0, finish, 255 );
setEffAlphaKey( spep_15 + 160, finish, 255 );

--SE
--地面ヒット
SE044 = playSeVer2( spep_15 + 0, 1188, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_15 + 26, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_15 + 26, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_15 + 26 );
endPhase( spep_15 + 126 );
end