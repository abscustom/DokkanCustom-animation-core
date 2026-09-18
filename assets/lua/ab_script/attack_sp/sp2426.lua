--1024920:メタルクウラ_フルメタルアバランチ(簡易版)
--sp_effect_b1_00222

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
SP_01=	160533	;--	メタルクウラが正面から歩いてくる
SP_02=	160534	;--	横向きで走っている
SP_03=	160536	;--	横からメタルクウラが来る→殴る
SP_04=	160537	;--	横からメタルクウラが来る→殴る
SP_05=	160539	;--	画面手前から奥に追いかけていく
SP_06=	160540	;--	画面手前から奥に追いかけていく
SP_07=	160541	;--	画面横から蹴り込む
SP_08=	160542	;--	画面横から蹴り込む
SP_09=	160544	;--	メタルクウラの衝撃波の構え（アップ）
SP_10=	160546	;--	敵を衝撃破で飛ばす
SP_11=	160547	;--	敵を衝撃破で飛ばす
SP_12=	160549	;--	敵が岩に激突
SP_13=	160550	;--	敵が岩に激突

--エフェクト(敵)
SP_01x=	160533	;--	メタルクウラが正面から歩いてくる	
SP_02x=	160535	;--	横向きで走っている	(敵)
SP_03x=	160538	;--	横からメタルクウラが来る→殴る	(敵)
SP_04x=	160537	;--	横からメタルクウラが来る→殴る	
SP_05x=	160539	;--	画面手前から奥に追いかけていく	
SP_06x=	160540	;--	画面手前から奥に追いかけていく	
SP_07x=	160543	;--	画面横から蹴り込む	(敵)
SP_08x=	160542	;--	画面横から蹴り込む	
SP_09x=	160545	;--	メタルクウラの衝撃波の構え（アップ）	(敵)
SP_10x=	160548	;--	敵を衝撃破で飛ばす	(敵)
SP_11x=	160547	;--	敵を衝撃破で飛ばす	
SP_12x=	160551	;--	敵が岩に激突	(敵)
SP_13x=	160550	;--	敵が岩に激突	

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
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
woke = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, woke, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, woke, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, woke, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, woke, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, woke, 0 );
setEffRotateKey( spep_0 + 106, woke, 0 );
setEffAlphaKey( spep_0 + 0, woke, 255 );
setEffAlphaKey( spep_0 + 104, woke, 255 );
setEffAlphaKey( spep_0 + 105, woke, 255 );
setEffAlphaKey( spep_0 + 106, woke, 0 );

--SE
--走ってくる
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );
SE002 = playSeVer2( spep_0 + 14, 1383, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 32, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE004, 84 );
SE005 = playSeVer2( spep_0 + 50, 1383, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 64, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 64, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
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

--顔カットインのタイミング指定
spep_x=spep_0 +14;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

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
--走ってくる
SE007 = playSeVer2( spep_0 + 76, 1383, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 90, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE008, 80 );

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +100 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--次の準備
spep_1 = spep_0+106;
------------------------------------------------------
--横向きで走っている
------------------------------------------------------
-- ** エフェクト等 ** --
woke2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, woke2, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, woke2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, woke2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, woke2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, woke2, 0 );
setEffRotateKey( spep_1 + 66, woke2, 0 );
setEffAlphaKey( spep_1 + 0, woke2, 255 );
setEffAlphaKey( spep_1 + 66, woke2, 255 );

--SE
--横向きダッシュ
SE009 = playSeVer2( spep_1 + 0, 8, "",spep_1 + 78, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1232, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 +54 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+66;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 + 94;
------------------------------------------------------
--横からメタルクウラが来る→殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 28, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 26, panting_f, 255 );
setEffAlphaKey( spep_3 + 27, panting_f, 255 );
setEffAlphaKey( spep_3 + 28, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 28, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 26, panting_b, 255 );
setEffAlphaKey( spep_3 + 27, panting_b, 255 );
setEffAlphaKey( spep_3 + 28, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3-3 + 10, 1, 106 );

setMoveKey( spep_3 + 0, 1, 553.4, -69.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339.6, -69.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 125.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 105.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 9, 1, 85.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, -70.4, -62.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 6.3, -53.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 64, -63.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 155.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 229.4, -57.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 314.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 402, -65.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 489.9, -62.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 573.3, -61.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 656.7, -61.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 741.7, -61.3 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 826.6, -61.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, 0 );

--SE
--殴り飛ばし
SE014 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);	
SE015 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE015, 89 );
SE016 = playSeVer2( spep_3 + 8, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE016, 77 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 28;
------------------------------------------------------
--画面手前から奥に追いかけていく
------------------------------------------------------
-- ** エフェクト等 ** --
chase_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_f, 0 );
setEffRotateKey( spep_4 + 116, chase_f, 0 );
setEffAlphaKey( spep_4 + 0, chase_f, 255 );
setEffAlphaKey( spep_4 + 114, chase_f, 255 );
setEffAlphaKey( spep_4 + 115, chase_f, 255 );
setEffAlphaKey( spep_4 + 116, chase_f, 0 );

-- ** エフェクト等 ** --
chase_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_b, 0 );
setEffRotateKey( spep_4 + 116, chase_b, 0 );
setEffAlphaKey( spep_4 + 0, chase_b, 255 );
setEffAlphaKey( spep_4 + 114, chase_b, 255 );
setEffAlphaKey( spep_4 + 115, chase_b, 255 );
setEffAlphaKey( spep_4 + 116, chase_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 4, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 6, 1, 247.6, -31 , 0 );
setMoveKey( spep_4 + 8, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 10, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 12, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 14, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 16, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 18, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 20, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 22, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 24, 1, 28.1, -40.3 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, -31.3 , 0 );
setMoveKey( spep_4 + 28, 1, 27.2, -41.2 , 0 );
setMoveKey( spep_4 + 30, 1, 26.4, -44.1 , 0 );
setMoveKey( spep_4 + 32, 1, 13.5, -32.7 , 0 );
setMoveKey( spep_4 + 34, 1, 12.8, -43 , 0 );
setMoveKey( spep_4 + 36, 1, 15.1, -39.7 , 0 );
setMoveKey( spep_4 + 38, 1, 17.5, -36.5 , 0 );
setMoveKey( spep_4 + 40, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_4 + 42, 1, 13.3, -34.8 , 0 );
setMoveKey( spep_4 + 44, 1, 14.2, -35 , 0 );
setMoveKey( spep_4 + 46, 1, 15.1, -35.2 , 0 );
setMoveKey( spep_4 + 48, 1, 17.1, -34.2 , 0 );
setMoveKey( spep_4 + 50, 1, 19.2, -33.2 , 0 );
setMoveKey( spep_4 + 52, 1, 17, -36.6 , 0 );
setMoveKey( spep_4 + 54, 1, 14.8, -39.9 , 0 );
setMoveKey( spep_4 + 56, 1, 18, -44.3 , 0 );
setMoveKey( spep_4 + 58, 1, 21.1, -48.7 , 0 );
setMoveKey( spep_4 + 60, 1, 18.9, -46.6 , 0 );
setMoveKey( spep_4 + 62, 1, 16.7, -44.6 , 0 );
setMoveKey( spep_4 + 64, 1, 14.5, -48 , 0 );
setMoveKey( spep_4 + 66, 1, 12.3, -51.3 , 0 );
setMoveKey( spep_4 + 68, 1, 12.2, -52.5 , 0 );
setMoveKey( spep_4 + 70, 1, 12.1, -53.7 , 0 );
setMoveKey( spep_4 + 72, 1, 12.1, -54.8 , 0 );
setMoveKey( spep_4 + 74, 1, 12, -56 , 0 );
setMoveKey( spep_4 + 76, 1, 11.9, -57.2 , 0 );
setMoveKey( spep_4 + 78, 1, 11.9, -58.4 , 0 );
setMoveKey( spep_4 + 80, 1, 11.8, -59.6 , 0 );
setMoveKey( spep_4 + 82, 1, 11.7, -60.8 , 0 );
setMoveKey( spep_4 + 84, 1, 11.6, -61.9 , 0 );
setMoveKey( spep_4 + 86, 1, 11.6, -63.1 , 0 );
setMoveKey( spep_4 + 88, 1, 11.5, -64.3 , 0 );
setMoveKey( spep_4 + 90, 1, 11.4, -65.5 , 0 );
setMoveKey( spep_4 + 92, 1, 11.3, -66.7 , 0 );
setMoveKey( spep_4 + 94, 1, 11.3, -67.9 , 0 );
setMoveKey( spep_4 + 96, 1, 11.2, -69.1 , 0 );
setMoveKey( spep_4 + 98, 1, 11.1, -70.3 , 0 );
setMoveKey( spep_4 + 100, 1, 11, -71.4 , 0 );
setMoveKey( spep_4 + 102, 1, 10.9, -72.6 , 0 );
setMoveKey( spep_4 + 104, 1, 10.8, -73.8 , 0 );
setMoveKey( spep_4 + 106, 1, 10.8, -75 , 0 );
setMoveKey( spep_4 + 108, 1, 10.7, -76.2 , 0 );
setMoveKey( spep_4 + 110, 1, 10.6, -77.4 , 0 );
setMoveKey( spep_4 + 112, 1, 10.5, -78.6 , 0 );
setMoveKey( spep_4 + 114, 1, 10.4, -79.8 , 0 );
setMoveKey( spep_4-1 + 116, 1, 10.3, -81 , 0 );

setScaleKey( spep_4 + 0, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 4, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 6, 1, 11.45, 11.45 );
setScaleKey( spep_4 + 8, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 14, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 64, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 82, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 84, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 90, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 92, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 102, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 106, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 110, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 114, 1, 0.51, 0.51 );
setScaleKey( spep_4-1 + 116, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 6, 1, 0 );
setRotateKey( spep_4 + 8, 1, 0.7 );
setRotateKey( spep_4 + 10, 1, 0.7 );
setRotateKey( spep_4 + 12, 1, 2 );
setRotateKey( spep_4 + 14, 1, 2 );
setRotateKey( spep_4 + 16, 1, 3.3 );
setRotateKey( spep_4 + 18, 1, 3.3 );
setRotateKey( spep_4 + 20, 1, 4.7 );
setRotateKey( spep_4 + 22, 1, 4.7 );
setRotateKey( spep_4 + 24, 1, 6 );
setRotateKey( spep_4 + 28, 1, 6 );
setRotateKey( spep_4 + 30, 1, 8 );
setRotateKey( spep_4 + 32, 1, 8.6 );
setRotateKey( spep_4 + 34, 1, 8.8 );
setRotateKey( spep_4 + 36, 1, 8.9 );
setRotateKey( spep_4 + 38, 1, 9 );
setRotateKey( spep_4 + 40, 1, 9.2 );
setRotateKey( spep_4 + 42, 1, 9.3 );
setRotateKey( spep_4 + 44, 1, 9.5 );
setRotateKey( spep_4 + 46, 1, 9.6 );
setRotateKey( spep_4 + 48, 1, 9.3 );
setRotateKey( spep_4 + 50, 1, 9.1 );
setRotateKey( spep_4 + 52, 1, 8.8 );
setRotateKey( spep_4 + 54, 1, 8.5 );
setRotateKey( spep_4 + 56, 1, 8.3 );
setRotateKey( spep_4 + 58, 1, 8 );
setRotateKey( spep_4 + 60, 1, 7.7 );
setRotateKey( spep_4 + 62, 1, 7.5 );
setRotateKey( spep_4 + 64, 1, 7.2 );
setRotateKey( spep_4 + 66, 1, 6.9 );
setRotateKey( spep_4 + 68, 1, 6.7 );
setRotateKey( spep_4 + 70, 1, 6.4 );
setRotateKey( spep_4 + 72, 1, 6.1 );
setRotateKey( spep_4 + 74, 1, 5.9 );
setRotateKey( spep_4 + 76, 1, 5.6 );
setRotateKey( spep_4 + 78, 1, 5.3 );
setRotateKey( spep_4 + 80, 1, 5.1 );
setRotateKey( spep_4 + 82, 1, 4.8 );
setRotateKey( spep_4 + 84, 1, 4.5 );
setRotateKey( spep_4 + 86, 1, 4.3 );
setRotateKey( spep_4 + 88, 1, 4 );
setRotateKey( spep_4 + 90, 1, 3.7 );
setRotateKey( spep_4 + 92, 1, 3.5 );
setRotateKey( spep_4 + 94, 1, 3.2 );
setRotateKey( spep_4 + 96, 1, 2.9 );
setRotateKey( spep_4 + 98, 1, 2.7 );
setRotateKey( spep_4 + 100, 1, 2.4 );
setRotateKey( spep_4 + 102, 1, 2.1 );
setRotateKey( spep_4 + 104, 1, 1.9 );
setRotateKey( spep_4 + 106, 1, 1.6 );
setRotateKey( spep_4 + 108, 1, 1.3 );
setRotateKey( spep_4 + 110, 1, 1.1 );
setRotateKey( spep_4 + 112, 1, 0.8 );
setRotateKey( spep_4 + 114, 1, 0.5 );
setRotateKey( spep_4-1 + 116, 1, 0.3 );

--SE
--敵飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 158, 0, 8, -1);

--敵追いかける
SE018 = playSeVer2( spep_4 + 48, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 48, 1383, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 48, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 116;
------------------------------------------------------
--画面横から蹴り込む
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 42, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 42, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 42, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 40, kick_f, 255 );
setEffAlphaKey( spep_5 + 41, kick_f, 255 );
setEffAlphaKey( spep_5 + 42, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 42, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 42, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 42, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 40, kick_b, 255 );
setEffAlphaKey( spep_5 + 41, kick_b, 255 );
setEffAlphaKey( spep_5 + 42, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 44, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 6 );

setMoveKey( spep_5 + 0, 1, 61.9, -3.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 60, -2.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 58.1, -1.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 56.2, -0.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 54.3, 0.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 52.4, 1.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 50.5, 2.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 48.6, 3.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 46.7, 4.4 , 0 );
setMoveKey( spep_5-3 + 18, 1, 44.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 42.9, 6.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 41, 7.3 , 0 );
setMoveKey( spep_5-3 + 25, 1, 39.1, 8.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 122.3, 9.1 , 0 );
setMoveKey( spep_5-3 + 28, 1, 197.4, 38.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 124.4, -51.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, 267, -23.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, 311.5, 14 , 0 );
setMoveKey( spep_5-3 + 36, 1, 390.9, -23.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 483.3, -13.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 575.6, -3.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 657.7, -3.1 , 0 );
setMoveKey( spep_5-3 + 44, 1, 739.8, -3.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 44, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, 46.7 );
setRotateKey( spep_5-3 + 44, 1, 46.7 );

--SE
--蹴り飛ばし
SE021 = playSeVer2( spep_5 + 16, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_5 + 24, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 24, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 40;
------------------------------------------------------
--メタルクウラの衝撃波の構え（アップ）
------------------------------------------------------
-- ** エフェクト等 ** --
impact = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, impact, 0, 0, 0 );
setEffMoveKey( spep_6 + 66, impact, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, impact, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, impact, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, impact, 0 );
setEffRotateKey( spep_6 + 66, impact, 0 );
setEffAlphaKey( spep_6 + 0, impact, 255 );
setEffAlphaKey( spep_6 + 64, impact, 255 );
setEffAlphaKey( spep_6 + 65, impact, 255 );
setEffAlphaKey( spep_6 + 66, impact, 0 );

--SE
--腕前に持ってくる
SE024 = playSeVer2( spep_6 + 10, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_6 + 10, 1150, "",spep_6 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 10, SE025, 76 );

--腕前に突き出す
SE027 = playSeVer2( spep_6 + 46, 1383, "", 0, 4, 0, -1);
setStartTimeMs( SE027,  83 );
SE028 = playSeVer2( spep_6 + 48, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 64;
------------------------------------------------------
--敵を衝撃破で飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_f, 0 );
setEffRotateKey( spep_7 + 56, fly_f, 0 );
setEffAlphaKey( spep_7 + 0, fly_f, 255 );
setEffAlphaKey( spep_7 + 54, fly_f, 255 );
setEffAlphaKey( spep_7 + 55, fly_f, 255 );
setEffAlphaKey( spep_7 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_b, 0 );
setEffRotateKey( spep_7 + 56, fly_b, 0 );
setEffAlphaKey( spep_7 + 0, fly_b, 255 );
setEffAlphaKey( spep_7 + 54, fly_b, 255 );
setEffAlphaKey( spep_7 + 55, fly_b, 255 );
setEffAlphaKey( spep_7 + 56, fly_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 58, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 12, 1, 108 );

setMoveKey( spep_7 + 0, 1, -150.5, 13.2 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -150.5, 13.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 11, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 25, 53 , 0 );
setMoveKey( spep_7-3 + 14, 1, -13.5, -29.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0, 55.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 43.6, 53 , 0 );
setMoveKey( spep_7-3 + 20, 1, -25.9, -29.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 68.1, -23.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 2.1, 40 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27.5, -22.1 , 0 );
setMoveKey( spep_7-3 + 28, 1, 44.2, -4.4 , 0 );
setMoveKey( spep_7-3 + 30, 1, 54.4, 13.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 55.3, 17.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49.8, 22.2 , 0 );
setMoveKey( spep_7-3 + 36, 1, 61.7, 17.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 67.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, 77.6, 17.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 81.8, 21.5 , 0 );
setMoveKey( spep_7-3 + 44, 1, 84, 17.3 , 0 );
setMoveKey( spep_7-3 + 46, 1, 83.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 174.7, 8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 179.9, 2.8 , 0 );
setMoveKey( spep_7-3 + 52, 1, 174.8, 12 , 0 );
setMoveKey( spep_7-3 + 54, 1, 256, 21.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 428, 17.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 686.5, 13 , 0 );
--setMoveKey( spep_7-3 + 60, 1, 685.7, 8.9 , 0 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 58, 1, 0 );

--SE
--空気暖ヒット
SE029 = playSeVer2( spep_7 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE029, 65 );
SE030 = playSeVer2( spep_7 + 4, 1133, "",spep_7 + 82, 0, 14, 0.6);
setPitch( spep_7 + 4, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_7 + 4, 1183, "",spep_7 + 82, 0, 14, -1);
SE026 = playSeVer2( spep_7 + 12, 1121, "",spep_7 + 18, 0, 0, -1);
setStartTimeMs( SE026,  833 );
setPitch( spep_7 + 12, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 56;
------------------------------------------------------
--敵が岩に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 138, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 138, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 138, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 138, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 138, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 138, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 138, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 138, finish_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 12, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -455.7, -81.8 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -378.4, -81.8 , 0 );
setMoveKey( spep_8-3 + 4, 1, -301, -81.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, -223.7, -81.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -146.3, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, -69, -81.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 8.4, -81.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 12, 1, 0.17, 0.17 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 12, 1, 0 );

--SE
--岩激突
SE032 = playSeVer2( spep_8+10, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8+10);
endPhase( spep_8 + 128 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
woke = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, woke, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, woke, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, woke, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, woke, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, woke, 0 );
setEffRotateKey( spep_0 + 106, woke, 0 );
setEffAlphaKey( spep_0 + 0, woke, 255 );
setEffAlphaKey( spep_0 + 104, woke, 255 );
setEffAlphaKey( spep_0 + 105, woke, 255 );
setEffAlphaKey( spep_0 + 106, woke, 0 );

--SE
--走ってくる
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );
SE002 = playSeVer2( spep_0 + 14, 1383, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 32, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE004, 84 );
SE005 = playSeVer2( spep_0 + 50, 1383, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 64, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 64, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
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

--顔カットインのタイミング指定
spep_x=spep_0 +14;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

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
--走ってくる
SE007 = playSeVer2( spep_0 + 76, 1383, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 90, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE008, 80 );

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +100 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--次の準備
spep_1 = spep_0+106;
------------------------------------------------------
--横向きで走っている
------------------------------------------------------
-- ** エフェクト等 ** --
woke2 = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, woke2, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, woke2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, woke2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 66, woke2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, woke2, 0 );
setEffRotateKey( spep_1 + 66, woke2, 0 );
setEffAlphaKey( spep_1 + 0, woke2, 255 );
setEffAlphaKey( spep_1 + 66, woke2, 255 );

--SE
--横向きダッシュ
SE009 = playSeVer2( spep_1 + 0, 8, "",spep_1 + 78, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1232, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 +54 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+66;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 + 94;
------------------------------------------------------
--横からメタルクウラが来る→殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 28, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 26, panting_f, 255 );
setEffAlphaKey( spep_3 + 27, panting_f, 255 );
setEffAlphaKey( spep_3 + 28, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 28, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 26, panting_b, 255 );
setEffAlphaKey( spep_3 + 27, panting_b, 255 );
setEffAlphaKey( spep_3 + 28, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3-3 + 10, 1, 106 );

setMoveKey( spep_3 + 0, 1, 553.4, -69.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339.6, -69.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 125.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 105.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 9, 1, 85.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, -70.4, -62.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 6.3, -53.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 64, -63.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 155.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 229.4, -57.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 314.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 402, -65.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 489.9, -62.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 573.3, -61.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 656.7, -61.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 741.7, -61.3 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 826.6, -61.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, 0 );

--SE
--殴り飛ばし
SE014 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);	
SE015 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE015, 89 );
SE016 = playSeVer2( spep_3 + 8, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE016, 77 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 28;
------------------------------------------------------
--画面手前から奥に追いかけていく
------------------------------------------------------
-- ** エフェクト等 ** --
chase_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_f, 0 );
setEffRotateKey( spep_4 + 116, chase_f, 0 );
setEffAlphaKey( spep_4 + 0, chase_f, 255 );
setEffAlphaKey( spep_4 + 114, chase_f, 255 );
setEffAlphaKey( spep_4 + 115, chase_f, 255 );
setEffAlphaKey( spep_4 + 116, chase_f, 0 );

-- ** エフェクト等 ** --
chase_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_b, 0 );
setEffRotateKey( spep_4 + 116, chase_b, 0 );
setEffAlphaKey( spep_4 + 0, chase_b, 255 );
setEffAlphaKey( spep_4 + 114, chase_b, 255 );
setEffAlphaKey( spep_4 + 115, chase_b, 255 );
setEffAlphaKey( spep_4 + 116, chase_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 4, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 6, 1, 247.6, -31 , 0 );
setMoveKey( spep_4 + 8, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 10, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 12, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 14, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 16, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 18, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 20, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 22, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 24, 1, 28.1, -40.3 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, -31.3 , 0 );
setMoveKey( spep_4 + 28, 1, 27.2, -41.2 , 0 );
setMoveKey( spep_4 + 30, 1, 26.4, -44.1 , 0 );
setMoveKey( spep_4 + 32, 1, 13.5, -32.7 , 0 );
setMoveKey( spep_4 + 34, 1, 12.8, -43 , 0 );
setMoveKey( spep_4 + 36, 1, 15.1, -39.7 , 0 );
setMoveKey( spep_4 + 38, 1, 17.5, -36.5 , 0 );
setMoveKey( spep_4 + 40, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_4 + 42, 1, 13.3, -34.8 , 0 );
setMoveKey( spep_4 + 44, 1, 14.2, -35 , 0 );
setMoveKey( spep_4 + 46, 1, 15.1, -35.2 , 0 );
setMoveKey( spep_4 + 48, 1, 17.1, -34.2 , 0 );
setMoveKey( spep_4 + 50, 1, 19.2, -33.2 , 0 );
setMoveKey( spep_4 + 52, 1, 17, -36.6 , 0 );
setMoveKey( spep_4 + 54, 1, 14.8, -39.9 , 0 );
setMoveKey( spep_4 + 56, 1, 18, -44.3 , 0 );
setMoveKey( spep_4 + 58, 1, 21.1, -48.7 , 0 );
setMoveKey( spep_4 + 60, 1, 18.9, -46.6 , 0 );
setMoveKey( spep_4 + 62, 1, 16.7, -44.6 , 0 );
setMoveKey( spep_4 + 64, 1, 14.5, -48 , 0 );
setMoveKey( spep_4 + 66, 1, 12.3, -51.3 , 0 );
setMoveKey( spep_4 + 68, 1, 12.2, -52.5 , 0 );
setMoveKey( spep_4 + 70, 1, 12.1, -53.7 , 0 );
setMoveKey( spep_4 + 72, 1, 12.1, -54.8 , 0 );
setMoveKey( spep_4 + 74, 1, 12, -56 , 0 );
setMoveKey( spep_4 + 76, 1, 11.9, -57.2 , 0 );
setMoveKey( spep_4 + 78, 1, 11.9, -58.4 , 0 );
setMoveKey( spep_4 + 80, 1, 11.8, -59.6 , 0 );
setMoveKey( spep_4 + 82, 1, 11.7, -60.8 , 0 );
setMoveKey( spep_4 + 84, 1, 11.6, -61.9 , 0 );
setMoveKey( spep_4 + 86, 1, 11.6, -63.1 , 0 );
setMoveKey( spep_4 + 88, 1, 11.5, -64.3 , 0 );
setMoveKey( spep_4 + 90, 1, 11.4, -65.5 , 0 );
setMoveKey( spep_4 + 92, 1, 11.3, -66.7 , 0 );
setMoveKey( spep_4 + 94, 1, 11.3, -67.9 , 0 );
setMoveKey( spep_4 + 96, 1, 11.2, -69.1 , 0 );
setMoveKey( spep_4 + 98, 1, 11.1, -70.3 , 0 );
setMoveKey( spep_4 + 100, 1, 11, -71.4 , 0 );
setMoveKey( spep_4 + 102, 1, 10.9, -72.6 , 0 );
setMoveKey( spep_4 + 104, 1, 10.8, -73.8 , 0 );
setMoveKey( spep_4 + 106, 1, 10.8, -75 , 0 );
setMoveKey( spep_4 + 108, 1, 10.7, -76.2 , 0 );
setMoveKey( spep_4 + 110, 1, 10.6, -77.4 , 0 );
setMoveKey( spep_4 + 112, 1, 10.5, -78.6 , 0 );
setMoveKey( spep_4 + 114, 1, 10.4, -79.8 , 0 );
setMoveKey( spep_4-1 + 116, 1, 10.3, -81 , 0 );

setScaleKey( spep_4 + 0, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 4, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 6, 1, 11.45, 11.45 );
setScaleKey( spep_4 + 8, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 14, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 64, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 82, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 84, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 90, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 92, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 102, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 106, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 110, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 114, 1, 0.51, 0.51 );
setScaleKey( spep_4-1 + 116, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 6, 1, 0 );
setRotateKey( spep_4 + 8, 1, 0.7 );
setRotateKey( spep_4 + 10, 1, 0.7 );
setRotateKey( spep_4 + 12, 1, 2 );
setRotateKey( spep_4 + 14, 1, 2 );
setRotateKey( spep_4 + 16, 1, 3.3 );
setRotateKey( spep_4 + 18, 1, 3.3 );
setRotateKey( spep_4 + 20, 1, 4.7 );
setRotateKey( spep_4 + 22, 1, 4.7 );
setRotateKey( spep_4 + 24, 1, 6 );
setRotateKey( spep_4 + 28, 1, 6 );
setRotateKey( spep_4 + 30, 1, 8 );
setRotateKey( spep_4 + 32, 1, 8.6 );
setRotateKey( spep_4 + 34, 1, 8.8 );
setRotateKey( spep_4 + 36, 1, 8.9 );
setRotateKey( spep_4 + 38, 1, 9 );
setRotateKey( spep_4 + 40, 1, 9.2 );
setRotateKey( spep_4 + 42, 1, 9.3 );
setRotateKey( spep_4 + 44, 1, 9.5 );
setRotateKey( spep_4 + 46, 1, 9.6 );
setRotateKey( spep_4 + 48, 1, 9.3 );
setRotateKey( spep_4 + 50, 1, 9.1 );
setRotateKey( spep_4 + 52, 1, 8.8 );
setRotateKey( spep_4 + 54, 1, 8.5 );
setRotateKey( spep_4 + 56, 1, 8.3 );
setRotateKey( spep_4 + 58, 1, 8 );
setRotateKey( spep_4 + 60, 1, 7.7 );
setRotateKey( spep_4 + 62, 1, 7.5 );
setRotateKey( spep_4 + 64, 1, 7.2 );
setRotateKey( spep_4 + 66, 1, 6.9 );
setRotateKey( spep_4 + 68, 1, 6.7 );
setRotateKey( spep_4 + 70, 1, 6.4 );
setRotateKey( spep_4 + 72, 1, 6.1 );
setRotateKey( spep_4 + 74, 1, 5.9 );
setRotateKey( spep_4 + 76, 1, 5.6 );
setRotateKey( spep_4 + 78, 1, 5.3 );
setRotateKey( spep_4 + 80, 1, 5.1 );
setRotateKey( spep_4 + 82, 1, 4.8 );
setRotateKey( spep_4 + 84, 1, 4.5 );
setRotateKey( spep_4 + 86, 1, 4.3 );
setRotateKey( spep_4 + 88, 1, 4 );
setRotateKey( spep_4 + 90, 1, 3.7 );
setRotateKey( spep_4 + 92, 1, 3.5 );
setRotateKey( spep_4 + 94, 1, 3.2 );
setRotateKey( spep_4 + 96, 1, 2.9 );
setRotateKey( spep_4 + 98, 1, 2.7 );
setRotateKey( spep_4 + 100, 1, 2.4 );
setRotateKey( spep_4 + 102, 1, 2.1 );
setRotateKey( spep_4 + 104, 1, 1.9 );
setRotateKey( spep_4 + 106, 1, 1.6 );
setRotateKey( spep_4 + 108, 1, 1.3 );
setRotateKey( spep_4 + 110, 1, 1.1 );
setRotateKey( spep_4 + 112, 1, 0.8 );
setRotateKey( spep_4 + 114, 1, 0.5 );
setRotateKey( spep_4-1 + 116, 1, 0.3 );

--SE
--敵飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 158, 0, 8, -1);

--敵追いかける
SE018 = playSeVer2( spep_4 + 48, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 48, 1383, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 48, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 116;
------------------------------------------------------
--画面横から蹴り込む
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 42, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 42, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 42, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 40, kick_f, 255 );
setEffAlphaKey( spep_5 + 41, kick_f, 255 );
setEffAlphaKey( spep_5 + 42, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 42, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 42, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 42, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 40, kick_b, 255 );
setEffAlphaKey( spep_5 + 41, kick_b, 255 );
setEffAlphaKey( spep_5 + 42, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 44, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 6 );

setMoveKey( spep_5 + 0, 1, 61.9, -3.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 60, -2.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 58.1, -1.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 56.2, -0.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 54.3, 0.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 52.4, 1.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 50.5, 2.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 48.6, 3.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 46.7, 4.4 , 0 );
setMoveKey( spep_5-3 + 18, 1, 44.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 42.9, 6.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 41, 7.3 , 0 );
setMoveKey( spep_5-3 + 25, 1, 39.1, 8.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 122.3, 9.1 , 0 );
setMoveKey( spep_5-3 + 28, 1, 197.4, 38.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 124.4, -51.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, 267, -23.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, 311.5, 14 , 0 );
setMoveKey( spep_5-3 + 36, 1, 390.9, -23.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 483.3, -13.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 575.6, -3.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 657.7, -3.1 , 0 );
setMoveKey( spep_5-3 + 44, 1, 739.8, -3.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 44, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, 46.7 );
setRotateKey( spep_5-3 + 44, 1, 46.7 );

--SE
--蹴り飛ばし
SE021 = playSeVer2( spep_5 + 16, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_5 + 24, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 24, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 40;
------------------------------------------------------
--メタルクウラの衝撃波の構え（アップ）
------------------------------------------------------
-- ** エフェクト等 ** --
impact = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, impact, 0, 0, 0 );
setEffMoveKey( spep_6 + 66, impact, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, impact, -1.0, 1.0 );
setEffScaleKey( spep_6 + 66, impact, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, impact, 0 );
setEffRotateKey( spep_6 + 66, impact, 0 );
setEffAlphaKey( spep_6 + 0, impact, 255 );
setEffAlphaKey( spep_6 + 64, impact, 255 );
setEffAlphaKey( spep_6 + 65, impact, 255 );
setEffAlphaKey( spep_6 + 66, impact, 0 );

--SE
--腕前に持ってくる
SE024 = playSeVer2( spep_6 + 10, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_6 + 10, 1150, "",spep_6 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 10, SE025, 76 );

--腕前に突き出す
SE027 = playSeVer2( spep_6 + 46, 1383, "", 0, 4, 0, -1);
setStartTimeMs( SE027,  83 );
SE028 = playSeVer2( spep_6 + 48, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 64;
------------------------------------------------------
--敵を衝撃破で飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_f, 0 );
setEffRotateKey( spep_7 + 56, fly_f, 0 );
setEffAlphaKey( spep_7 + 0, fly_f, 255 );
setEffAlphaKey( spep_7 + 54, fly_f, 255 );
setEffAlphaKey( spep_7 + 55, fly_f, 255 );
setEffAlphaKey( spep_7 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_b, 0 );
setEffRotateKey( spep_7 + 56, fly_b, 0 );
setEffAlphaKey( spep_7 + 0, fly_b, 255 );
setEffAlphaKey( spep_7 + 54, fly_b, 255 );
setEffAlphaKey( spep_7 + 55, fly_b, 255 );
setEffAlphaKey( spep_7 + 56, fly_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 58, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 12, 1, 108 );

setMoveKey( spep_7 + 0, 1, -150.5, 13.2 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -150.5, 13.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 11, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 25, 53 , 0 );
setMoveKey( spep_7-3 + 14, 1, -13.5, -29.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0, 55.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 43.6, 53 , 0 );
setMoveKey( spep_7-3 + 20, 1, -25.9, -29.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 68.1, -23.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 2.1, 40 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27.5, -22.1 , 0 );
setMoveKey( spep_7-3 + 28, 1, 44.2, -4.4 , 0 );
setMoveKey( spep_7-3 + 30, 1, 54.4, 13.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 55.3, 17.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49.8, 22.2 , 0 );
setMoveKey( spep_7-3 + 36, 1, 61.7, 17.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 67.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, 77.6, 17.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 81.8, 21.5 , 0 );
setMoveKey( spep_7-3 + 44, 1, 84, 17.3 , 0 );
setMoveKey( spep_7-3 + 46, 1, 83.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 174.7, 8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 179.9, 2.8 , 0 );
setMoveKey( spep_7-3 + 52, 1, 174.8, 12 , 0 );
setMoveKey( spep_7-3 + 54, 1, 256, 21.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 428, 17.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 686.5, 13 , 0 );
--setMoveKey( spep_7-3 + 60, 1, 685.7, 8.9 , 0 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 58, 1, 0 );

--SE
--空気暖ヒット
SE029 = playSeVer2( spep_7 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE029, 65 );
SE030 = playSeVer2( spep_7 + 4, 1133, "",spep_7 + 82, 0, 14, 0.6);
setPitch( spep_7 + 4, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_7 + 4, 1183, "",spep_7 + 82, 0, 14, -1);
SE026 = playSeVer2( spep_7 + 12, 1121, "",spep_7 + 18, 0, 0, -1);
setStartTimeMs( SE026,  833 );
setPitch( spep_7 + 12, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 56;
------------------------------------------------------
--敵が岩に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 138, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 138, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 138, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 138, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 138, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 138, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 138, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 138, finish_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 12, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -455.7, -81.8 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -378.4, -81.8 , 0 );
setMoveKey( spep_8-3 + 4, 1, -301, -81.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, -223.7, -81.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -146.3, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, -69, -81.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 8.4, -81.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 12, 1, 0.17, 0.17 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 12, 1, 0 );

--SE
--岩激突
SE032 = playSeVer2( spep_8+10, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8+10);
endPhase( spep_8 + 128 );
end