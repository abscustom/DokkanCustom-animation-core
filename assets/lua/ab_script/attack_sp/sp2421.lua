--1024790:セリパ_エナジーバレット
--sp_effect_a2_00184

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
SP_01=	160296	;--	登場シーン・目線・セリフカットイン
SP_02=	160298	;--	ダッシュ→回転蹴り
SP_03=	160299	;--	ダッシュ→回転蹴り
SP_04=	160302	;--	気弾タメ（片手）→発射前
SP_05=	160303	;--	気団発射→敵吹っ飛び
SP_06=	160304	;--	気団発射→敵吹っ飛び
SP_07=	160307	;--	フィニッシュ
SP_08=	160308	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	160297	;--	登場シーン・目線・セリフカットイン	(敵)
SP_02x=	160300	;--	ダッシュ→回転蹴り	(敵)
SP_03x=	160301	;--	ダッシュ→回転蹴り	(敵)
SP_04x=	160302	;--	気弾タメ（片手）→発射前	
SP_05x=	160305	;--	気団発射→敵吹っ飛び	(敵)
SP_06x=	160306	;--	気団発射→敵吹っ飛び	(敵)
SP_07x=	160307	;--	フィニッシュ
SP_08x=	160308	;--	フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--冒頭、崖ジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
cut = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, cut, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, cut, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cut, 0 );
setEffRotateKey( spep_0 + 86, cut, 0 );
setEffAlphaKey( spep_0 + 0, cut, 255 );
setEffAlphaKey( spep_0 + 84, cut, 255 );
setEffAlphaKey( spep_0 + 85, cut, 255 );
setEffAlphaKey( spep_0 + 86, cut, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 86;
------------------------------------------------------
--ダッシュ→回転蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 112, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 110, dash_f, 255 );
setEffAlphaKey( spep_1 + 111, dash_f, 255 );
setEffAlphaKey( spep_1 + 112, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 112, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 110, dash_b, 255 );
setEffAlphaKey( spep_1 + 111, dash_b, 255 );
setEffAlphaKey( spep_1 + 112, dash_b, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    
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

--敵の動き
setDisp( spep_1-3 + 34, 1, 1);
setDisp( spep_1-1 + 114, 1, 0);

changeAnime( spep_1-3 + 34, 1, 100);
changeAnime( spep_1-3 + 66, 1, 106);

setMoveKey( spep_1-3 + 34, 1, 390.6, 169.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 360.1, 154.3 , 0 );
setMoveKey( spep_1-3 + 38, 1, 329.5, 138.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 298.6, 122.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 267.4, 107.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 236.1, 91.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 204.5, 75.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 172.7, 60.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 140.8, 44.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 126.5, 48.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, 128.2, 52.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, 129.8, 57 , 0 );
setMoveKey( spep_1-3 + 58, 1, 131.5, 61.4 , 0 );
setMoveKey( spep_1-3 + 60, 1, 133.2, 65.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, 134.8, 70.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 136.5, 74.6 , 0 );
setMoveKey( spep_1-3 + 65, 1, 136.5, 74.6 , 0 );

setMoveKey( spep_1-3 + 66, 1, 137.2, 55.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 132.5, 32 , 0 );
setMoveKey( spep_1-3 + 70, 1, 128, 8.1 , 0 );
setMoveKey( spep_1-3 + 72, 1, 80.5, 19.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, 139.7, -89.2 , 0 );
setMoveKey( spep_1-3 + 76, 1, 179.5, -23 , 0 );
setMoveKey( spep_1-3 + 78, 1, 58.4, -136.4 , 0 );
setMoveKey( spep_1-3 + 80, 1, 141.2, -156.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, 56.2, -76.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 38, -145.3 , 0 );
setMoveKey( spep_1-3 + 86, 1, 155.2, -42.2 , 0 );
setMoveKey( spep_1-3 + 88, 1, 110.4, -84.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 111.9, -77.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 113.3, -70.8 , 0 );
setMoveKey( spep_1-3 + 94, 1, 114.7, -64 , 0 );
setMoveKey( spep_1-3 + 96, 1, 116.2, -57.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 117.6, -50.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 119, -44 , 0 );
setMoveKey( spep_1-3 + 102, 1, 120.4, -37.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 121.8, -31 , 0 );
setMoveKey( spep_1-3 + 106, 1, 123.2, -24.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 124.5, -18.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 125.9, -12.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 127.2, -6.1 , 0 );
setMoveKey( spep_1-1 + 114, 1, 128.6, -0.1 , 0 );

setScaleKey( spep_1-3 + 34, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 36, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 40, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 42, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 44, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 46, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_1-3 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 52, 1, 2.34, 2.34 );
setScaleKey( spep_1-3 + 54, 1, 2.36, 2.36 );
setScaleKey( spep_1-3 + 56, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 58, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 60, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 62, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 64, 1, 2.44, 2.44 );
setScaleKey( spep_1-3 + 65, 1, 2.44, 2.44 );

setScaleKey( spep_1-3 + 66, 1, 2.6,2.6);
setScaleKey( spep_1-3 + 68, 1, 2.54,2.54);
setScaleKey( spep_1-3 + 70, 1, 2.48,2.48);
setScaleKey( spep_1-3 + 72, 1, 2.42,2.42);
setScaleKey( spep_1-3 + 74, 1, 2.37,2.37);
setScaleKey( spep_1-3 + 76, 1, 2.32,2.32);
setScaleKey( spep_1-3 + 78, 1, 2.26,2.26);
setScaleKey( spep_1-3 + 80, 1, 2.23,2.23);
setScaleKey( spep_1-3 + 82, 1, 2.2,2.2);
setScaleKey( spep_1-3 + 84, 1, 2.18,2.18);
setScaleKey( spep_1-3 + 86, 1, 2.17,2.17);
setScaleKey( spep_1-3 + 88, 1, 2.16,2.16);
setScaleKey( spep_1-3 + 90, 1, 2.13,2.13);
setScaleKey( spep_1-3 + 92, 1, 2.12,2.12);
setScaleKey( spep_1-3 + 94, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 96, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 98, 1, 2.08,2.08);
setScaleKey( spep_1-3 + 100, 1, 2.08,2.08);
setScaleKey( spep_1-3 + 102, 1, 2.06,2.06);
setScaleKey( spep_1-3 + 104, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 106, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 108, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 110, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 112, 1, 2.01,2.01);
setScaleKey( spep_1-1 + 114, 1, 1.99,1.99);

setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 65, 1, 0 );

setRotateKey( spep_1-3 + 66, 1, -53 );
setRotateKey( spep_1-3 + 68, 1, -51.9 );
setRotateKey( spep_1-3 + 70, 1, -50.9 );
setRotateKey( spep_1-3 + 72, 1, -49.8 );
setRotateKey( spep_1-3 + 74, 1, -48.9 );
setRotateKey( spep_1-3 + 76, 1, -47.9 );
setRotateKey( spep_1-3 + 78, 1, -47 );
setRotateKey( spep_1-3 + 80, 1, -46.1 );
setRotateKey( spep_1-3 + 82, 1, -45.3 );
setRotateKey( spep_1-3 + 84, 1, -44.5 );
setRotateKey( spep_1-3 + 86, 1, -43.7 );
setRotateKey( spep_1-3 + 88, 1, -43 );
setRotateKey( spep_1-3 + 90, 1, -42.3 );
setRotateKey( spep_1-3 + 92, 1, -41.6 );
setRotateKey( spep_1-3 + 94, 1, -41 );
setRotateKey( spep_1-3 + 96, 1, -40.4 );
setRotateKey( spep_1-3 + 98, 1, -39.9 );
setRotateKey( spep_1-3 + 100, 1, -39.3 );
setRotateKey( spep_1-3 + 102, 1, -38.9 );
setRotateKey( spep_1-3 + 104, 1, -38.4 );
setRotateKey( spep_1-3 + 106, 1, -38 );
setRotateKey( spep_1-3 + 108, 1, -37.6 );
setRotateKey( spep_1-3 + 110, 1, -37.3 );
setRotateKey( spep_1-3 + 112, 1, -37 );
setRotateKey( spep_1-1 + 114, 1, -36.7 );

--SE
--向かっていく
SE003 = playSeVer2( spep_1 + 16, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 16, 9, "",spep_1 + 86, 0, 30, -1);

--サマーソルト
SE005 = playSeVer2( spep_1 + 54, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 64, 1010, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 64, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 64, 1047, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +104 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--気弾タメ（片手）→発射前
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 176, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 174, tame, 255 );
setEffAlphaKey( spep_3 + 175, tame, 255 );
setEffAlphaKey( spep_3 + 176, tame, 0 );

--SE
--着地
SE010 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 36, 0, 14, -1);
SE011 = playSeVer2( spep_3 + 24, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 30, 1106, "", 0, 0, 0, -1);

--気弾溜め
SE013 = playSeVer2( spep_3 + 28, 1037, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 28, SE013, 52 );
setTimeStretch( SE013, 1.18, 30, 4 );
SE014 = playSeVer2( spep_3 + 28, 1144, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 65 );
SE015 = playSeVer2( spep_3 + 28, 1296, "",spep_3 + 190, 0, 12, -1);

--振りかぶる
SE016 = playSeVer2( spep_3 + 106, 1003, "", 0, 0, 0, -1);

--気弾溜め２
SE017 = playSeVer2( spep_3 + 130, 1154, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 130, SE017, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 176;
------------------------------------------------------
--気団発射→敵吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 66, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 64, beam_f, 255 );
setEffAlphaKey( spep_4 + 65, beam_f, 255 );
setEffAlphaKey( spep_4 + 66, beam_f, 20 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 66, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 64, beam_b, 255 );
setEffAlphaKey( spep_4 + 65, beam_b, 255 );
setEffAlphaKey( spep_4 + 66, beam_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

setShakeChara(spep_4-3 + 16 , 1 ,54 ,2);

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 16, 1, 105 );

a=30;

setMoveKey( spep_4 + 0, 1, 503.6+a, -118.1 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 440.1, -79.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 376.6+a, -41.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 313.1+a, -2.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 249.6+a, 35.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 186.1+a, 74 , 0 );
setMoveKey( spep_4-3 + 12, 1, 188.1+a, 77.3 , 0 );
setMoveKey( spep_4-3 + 15, 1, 190.2+a, 80.5 , 0 );

setMoveKey( spep_4-3 + 16, 1, 187.4, 74.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 225.2, 59.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 201.7, 104.3 , 0 );
setMoveKey( spep_4-3 + 22, 1, 250.5, 136.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 210, 102 , 0 );
setMoveKey( spep_4-3 + 26, 1, 195, 160.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 217.7, 110.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 177.8, 104.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 220.9, 145.5 , 0 );
setMoveKey( spep_4-3 + 34, 1, 251.6, 142.6 , 0 );
setMoveKey( spep_4-3 + 36, 1, 258.3, 149.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 264.9, 156.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 267.5, 156.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 269.7, 156.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 271.5, 155.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 273, 154.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 274.1, 152.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 274.9, 150.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 275.3, 148.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 275.3, 146.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, 275, 143.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 274.5, 140.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 274, 137.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 273.6, 135 , 0 );
setMoveKey( spep_4-3 + 64, 1, 273, 132.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 272.6, 129.2 , 0 );
--setMoveKey( spep_4-1 + 68, 1, 272, 126.3 , 0 );

setScaleKey( spep_4 + 0, 1, 2.84,2.84);
setScaleKey( spep_4-3 + 4, 1, 1.97,1.97);
setScaleKey( spep_4-3 + 6, 1, 1.55,1.55);
setScaleKey( spep_4-3 + 8, 1, 1.11,1.11);
setScaleKey( spep_4-3 + 10, 1, 0.79,0.79);
setScaleKey( spep_4-3 + 12, 1, 0.81,0.81);
setScaleKey( spep_4-3 + 15, 1, 0.83,0.83);

setScaleKey( spep_4-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 20, 1, 0.56, 0.56 );
setScaleKey( spep_4-3 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 26, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 36, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_4-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 48, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 50, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 52, 1, 0.18, 0.18 );
--setScaleKey( spep_4-3 + 54, 1, 0.17, 0.17 );
setScaleKey( spep_4-1 + 66, 1, 0.17, 0.17 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 0 );
setRotateKey( spep_4-3 + 18, 1, 3.3 );
setRotateKey( spep_4-3 + 20, 1, 6.4 );
setRotateKey( spep_4-3 + 22, 1, 9.4 );
setRotateKey( spep_4-3 + 24, 1, 12.2 );
setRotateKey( spep_4-3 + 26, 1, 14.9 );
setRotateKey( spep_4-3 + 28, 1, 17.3 );
setRotateKey( spep_4-3 + 30, 1, 19.6 );
setRotateKey( spep_4-3 + 32, 1, 21.7 );
setRotateKey( spep_4-3 + 34, 1, 23.7 );
setRotateKey( spep_4-3 + 36, 1, 25.5 );
setRotateKey( spep_4-3 + 38, 1, 27.1 );
setRotateKey( spep_4-3 + 40, 1, 28.5 );
setRotateKey( spep_4-3 + 42, 1, 29.8 );
setRotateKey( spep_4-3 + 44, 1, 30.9 );
setRotateKey( spep_4-3 + 46, 1, 31.8 );
setRotateKey( spep_4-3 + 48, 1, 32.6 );
setRotateKey( spep_4-3 + 50, 1, 33.2 );
setRotateKey( spep_4-3 + 52, 1, 33.6 );
--setRotateKey( spep_4-3 + 54, 1, 33.9 );
setRotateKey( spep_4-1 + 66, 1, 33.9 );

--SE
--気弾発射
SE018 = playSeVer2( spep_4 + 2, 1145, "", 0, 4, 0, -1);
setStartTimeMs( SE018,  233 );
SE019 = playSeVer2( spep_4 + 0, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 2, 1109, "",0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 8, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 66;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 136, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 136, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5  + 136, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
--setScaleKey( spep_5-3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5-3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5-3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5-3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 136, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5-1 + 12, 1, 1080 );
setRotateKey( spep_5 + 136, 1, 1080 );

-- ** 音 ** --
--画面割れる
SE022 = playSeVer2( spep_5 + 12, 1054, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 12, 1025, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_5+12);
endPhase( spep_5 + 126 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭、崖ジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
cut = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, cut, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, cut, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cut, 0 );
setEffRotateKey( spep_0 + 86, cut, 0 );
setEffAlphaKey( spep_0 + 0, cut, 255 );
setEffAlphaKey( spep_0 + 84, cut, 255 );
setEffAlphaKey( spep_0 + 85, cut, 255 );
setEffAlphaKey( spep_0 + 86, cut, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 86;
------------------------------------------------------
--ダッシュ→回転蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 112, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 110, dash_f, 255 );
setEffAlphaKey( spep_1 + 111, dash_f, 255 );
setEffAlphaKey( spep_1 + 112, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 112, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 110, dash_b, 255 );
setEffAlphaKey( spep_1 + 111, dash_b, 255 );
setEffAlphaKey( spep_1 + 112, dash_b, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    
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

--敵の動き
setDisp( spep_1-3 + 34, 1, 1);
setDisp( spep_1-1 + 114, 1, 0);

changeAnime( spep_1-3 + 34, 1, 100);
changeAnime( spep_1-3 + 66, 1, 106);

setMoveKey( spep_1-3 + 34, 1, 390.6, 169.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 360.1, 154.3 , 0 );
setMoveKey( spep_1-3 + 38, 1, 329.5, 138.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 298.6, 122.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 267.4, 107.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 236.1, 91.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 204.5, 75.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 172.7, 60.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 140.8, 44.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 126.5, 48.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, 128.2, 52.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, 129.8, 57 , 0 );
setMoveKey( spep_1-3 + 58, 1, 131.5, 61.4 , 0 );
setMoveKey( spep_1-3 + 60, 1, 133.2, 65.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, 134.8, 70.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 136.5, 74.6 , 0 );
setMoveKey( spep_1-3 + 65, 1, 136.5, 74.6 , 0 );

setMoveKey( spep_1-3 + 66, 1, 137.2, 55.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 132.5, 32 , 0 );
setMoveKey( spep_1-3 + 70, 1, 128, 8.1 , 0 );
setMoveKey( spep_1-3 + 72, 1, 80.5, 19.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, 139.7, -89.2 , 0 );
setMoveKey( spep_1-3 + 76, 1, 179.5, -23 , 0 );
setMoveKey( spep_1-3 + 78, 1, 58.4, -136.4 , 0 );
setMoveKey( spep_1-3 + 80, 1, 141.2, -156.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, 56.2, -76.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 38, -145.3 , 0 );
setMoveKey( spep_1-3 + 86, 1, 155.2, -42.2 , 0 );
setMoveKey( spep_1-3 + 88, 1, 110.4, -84.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 111.9, -77.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 113.3, -70.8 , 0 );
setMoveKey( spep_1-3 + 94, 1, 114.7, -64 , 0 );
setMoveKey( spep_1-3 + 96, 1, 116.2, -57.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 117.6, -50.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 119, -44 , 0 );
setMoveKey( spep_1-3 + 102, 1, 120.4, -37.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 121.8, -31 , 0 );
setMoveKey( spep_1-3 + 106, 1, 123.2, -24.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 124.5, -18.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 125.9, -12.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 127.2, -6.1 , 0 );
setMoveKey( spep_1-1 + 114, 1, 128.6, -0.1 , 0 );

setScaleKey( spep_1-3 + 34, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 36, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 40, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 42, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 44, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 46, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_1-3 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 52, 1, 2.34, 2.34 );
setScaleKey( spep_1-3 + 54, 1, 2.36, 2.36 );
setScaleKey( spep_1-3 + 56, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 58, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 60, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 62, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 64, 1, 2.44, 2.44 );
setScaleKey( spep_1-3 + 65, 1, 2.44, 2.44 );

setScaleKey( spep_1-3 + 66, 1, 2.6,2.6);
setScaleKey( spep_1-3 + 68, 1, 2.54,2.54);
setScaleKey( spep_1-3 + 70, 1, 2.48,2.48);
setScaleKey( spep_1-3 + 72, 1, 2.42,2.42);
setScaleKey( spep_1-3 + 74, 1, 2.37,2.37);
setScaleKey( spep_1-3 + 76, 1, 2.32,2.32);
setScaleKey( spep_1-3 + 78, 1, 2.26,2.26);
setScaleKey( spep_1-3 + 80, 1, 2.23,2.23);
setScaleKey( spep_1-3 + 82, 1, 2.2,2.2);
setScaleKey( spep_1-3 + 84, 1, 2.18,2.18);
setScaleKey( spep_1-3 + 86, 1, 2.17,2.17);
setScaleKey( spep_1-3 + 88, 1, 2.16,2.16);
setScaleKey( spep_1-3 + 90, 1, 2.13,2.13);
setScaleKey( spep_1-3 + 92, 1, 2.12,2.12);
setScaleKey( spep_1-3 + 94, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 96, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 98, 1, 2.08,2.08);
setScaleKey( spep_1-3 + 100, 1, 2.08,2.08);
setScaleKey( spep_1-3 + 102, 1, 2.06,2.06);
setScaleKey( spep_1-3 + 104, 1, 2.05,2.05);
setScaleKey( spep_1-3 + 106, 1, 2.04,2.04);
setScaleKey( spep_1-3 + 108, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 110, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 112, 1, 2.01,2.01);
setScaleKey( spep_1-1 + 114, 1, 1.99,1.99);

setRotateKey( spep_1-3 + 34, 1, 0 );
setRotateKey( spep_1-3 + 65, 1, 0 );

setRotateKey( spep_1-3 + 66, 1, -53 );
setRotateKey( spep_1-3 + 68, 1, -51.9 );
setRotateKey( spep_1-3 + 70, 1, -50.9 );
setRotateKey( spep_1-3 + 72, 1, -49.8 );
setRotateKey( spep_1-3 + 74, 1, -48.9 );
setRotateKey( spep_1-3 + 76, 1, -47.9 );
setRotateKey( spep_1-3 + 78, 1, -47 );
setRotateKey( spep_1-3 + 80, 1, -46.1 );
setRotateKey( spep_1-3 + 82, 1, -45.3 );
setRotateKey( spep_1-3 + 84, 1, -44.5 );
setRotateKey( spep_1-3 + 86, 1, -43.7 );
setRotateKey( spep_1-3 + 88, 1, -43 );
setRotateKey( spep_1-3 + 90, 1, -42.3 );
setRotateKey( spep_1-3 + 92, 1, -41.6 );
setRotateKey( spep_1-3 + 94, 1, -41 );
setRotateKey( spep_1-3 + 96, 1, -40.4 );
setRotateKey( spep_1-3 + 98, 1, -39.9 );
setRotateKey( spep_1-3 + 100, 1, -39.3 );
setRotateKey( spep_1-3 + 102, 1, -38.9 );
setRotateKey( spep_1-3 + 104, 1, -38.4 );
setRotateKey( spep_1-3 + 106, 1, -38 );
setRotateKey( spep_1-3 + 108, 1, -37.6 );
setRotateKey( spep_1-3 + 110, 1, -37.3 );
setRotateKey( spep_1-3 + 112, 1, -37 );
setRotateKey( spep_1-1 + 114, 1, -36.7 );

--SE
--向かっていく
SE003 = playSeVer2( spep_1 + 16, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 16, 9, "",spep_1 + 86, 0, 30, -1);

--サマーソルト
SE005 = playSeVer2( spep_1 + 54, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 64, 1010, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 64, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 64, 1047, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +104 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--気弾タメ（片手）→発射前
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 176, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 174, tame, 255 );
setEffAlphaKey( spep_3 + 175, tame, 255 );
setEffAlphaKey( spep_3 + 176, tame, 0 );

--SE
--着地
SE010 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 36, 0, 14, -1);
SE011 = playSeVer2( spep_3 + 24, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 30, 1106, "", 0, 0, 0, -1);

--気弾溜め
SE013 = playSeVer2( spep_3 + 28, 1037, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 28, SE013, 52 );
setTimeStretch( SE013, 1.18, 30, 4 );
SE014 = playSeVer2( spep_3 + 28, 1144, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 65 );
SE015 = playSeVer2( spep_3 + 28, 1296, "",spep_3 + 190, 0, 12, -1);

--振りかぶる
SE016 = playSeVer2( spep_3 + 106, 1003, "", 0, 0, 0, -1);

--気弾溜め２
SE017 = playSeVer2( spep_3 + 130, 1154, "",spep_3 + 190, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 130, SE017, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 176;
------------------------------------------------------
--気団発射→敵吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 66, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 64, beam_f, 255 );
setEffAlphaKey( spep_4 + 65, beam_f, 255 );
setEffAlphaKey( spep_4 + 66, beam_f, 20 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 66, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 64, beam_b, 255 );
setEffAlphaKey( spep_4 + 65, beam_b, 255 );
setEffAlphaKey( spep_4 + 66, beam_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

setShakeChara(spep_4-3 + 16 , 1 ,54 ,2);

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 16, 1, 105 );

a=30;

setMoveKey( spep_4 + 0, 1, 503.6+a, -118.1 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 440.1, -79.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 376.6+a, -41.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 313.1+a, -2.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 249.6+a, 35.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 186.1+a, 74 , 0 );
setMoveKey( spep_4-3 + 12, 1, 188.1+a, 77.3 , 0 );
setMoveKey( spep_4-3 + 15, 1, 190.2+a, 80.5 , 0 );

setMoveKey( spep_4-3 + 16, 1, 187.4, 74.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 225.2, 59.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 201.7, 104.3 , 0 );
setMoveKey( spep_4-3 + 22, 1, 250.5, 136.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 210, 102 , 0 );
setMoveKey( spep_4-3 + 26, 1, 195, 160.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 217.7, 110.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 177.8, 104.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 220.9, 145.5 , 0 );
setMoveKey( spep_4-3 + 34, 1, 251.6, 142.6 , 0 );
setMoveKey( spep_4-3 + 36, 1, 258.3, 149.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 264.9, 156.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 267.5, 156.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 269.7, 156.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 271.5, 155.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 273, 154.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 274.1, 152.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 274.9, 150.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 275.3, 148.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 275.3, 146.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, 275, 143.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 274.5, 140.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 274, 137.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 273.6, 135 , 0 );
setMoveKey( spep_4-3 + 64, 1, 273, 132.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 272.6, 129.2 , 0 );
--setMoveKey( spep_4-1 + 68, 1, 272, 126.3 , 0 );

setScaleKey( spep_4 + 0, 1, 2.84,2.84);
setScaleKey( spep_4-3 + 4, 1, 1.97,1.97);
setScaleKey( spep_4-3 + 6, 1, 1.55,1.55);
setScaleKey( spep_4-3 + 8, 1, 1.11,1.11);
setScaleKey( spep_4-3 + 10, 1, 0.79,0.79);
setScaleKey( spep_4-3 + 12, 1, 0.81,0.81);
setScaleKey( spep_4-3 + 15, 1, 0.83,0.83);

setScaleKey( spep_4-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 20, 1, 0.56, 0.56 );
setScaleKey( spep_4-3 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 26, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 36, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_4-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 48, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 50, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 52, 1, 0.18, 0.18 );
--setScaleKey( spep_4-3 + 54, 1, 0.17, 0.17 );
setScaleKey( spep_4-1 + 66, 1, 0.17, 0.17 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 0 );
setRotateKey( spep_4-3 + 18, 1, 3.3 );
setRotateKey( spep_4-3 + 20, 1, 6.4 );
setRotateKey( spep_4-3 + 22, 1, 9.4 );
setRotateKey( spep_4-3 + 24, 1, 12.2 );
setRotateKey( spep_4-3 + 26, 1, 14.9 );
setRotateKey( spep_4-3 + 28, 1, 17.3 );
setRotateKey( spep_4-3 + 30, 1, 19.6 );
setRotateKey( spep_4-3 + 32, 1, 21.7 );
setRotateKey( spep_4-3 + 34, 1, 23.7 );
setRotateKey( spep_4-3 + 36, 1, 25.5 );
setRotateKey( spep_4-3 + 38, 1, 27.1 );
setRotateKey( spep_4-3 + 40, 1, 28.5 );
setRotateKey( spep_4-3 + 42, 1, 29.8 );
setRotateKey( spep_4-3 + 44, 1, 30.9 );
setRotateKey( spep_4-3 + 46, 1, 31.8 );
setRotateKey( spep_4-3 + 48, 1, 32.6 );
setRotateKey( spep_4-3 + 50, 1, 33.2 );
setRotateKey( spep_4-3 + 52, 1, 33.6 );
--setRotateKey( spep_4-3 + 54, 1, 33.9 );
setRotateKey( spep_4-1 + 66, 1, 33.9 );

--SE
--気弾発射
SE018 = playSeVer2( spep_4 + 2, 1145, "", 0, 4, 0, -1);
setStartTimeMs( SE018,  233 );
SE019 = playSeVer2( spep_4 + 0, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 2, 1109, "",0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 8, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 66;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 136, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 136, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5  + 136, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
--setScaleKey( spep_5-3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5-3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5-3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5-3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 136, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5-1 + 12, 1, 1080 );
setRotateKey( spep_5 + 136, 1, 1080 );

-- ** 音 ** --
--画面割れる
SE022 = playSeVer2( spep_5 + 12, 1054, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 12, 1025, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_5+12);
endPhase( spep_5 + 126 );
end