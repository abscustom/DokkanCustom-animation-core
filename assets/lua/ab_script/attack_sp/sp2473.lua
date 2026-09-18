--1025080:バーダック_運命を賭けた攻戦(SSR)
--sp_effect_a1_00381

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
SP_01=	160895	;--	バーダックが飛んでくる	
SP_02=	160897	;--	月に向かって加速する	
SP_03=	160899	;--	バーダックが画面に向かって飛んでくる	
SP_04=	160900	;--	敵のお中でビームを溜める	
SP_05=	160901	;--	敵のお中でビームを溜める	
SP_06=	160903	;--	バーダックが気合を入れる	
SP_07=	160905	;--	敵にバーダックがビームを放ちフィニッシュ	
SP_08=	160906	;--	敵にバーダックがビームを放ちフィニッシュ	

--エフェクト(敵)
SP_01x=	160896	;--	バーダックが飛んでくる	(敵)
SP_02x=	160898	;--	月に向かって加速する	(敵)
SP_03x=	160899	;--	バーダックが画面に向かって飛んでくる	
SP_04x=	160902	;--	敵のお中でビームを溜める	(敵)
SP_05x=	160901	;--	敵のお中でビームを溜める	
SP_06x=	160904	;--	バーダックが気合を入れる	
SP_07x=	160907	;--	敵にバーダックがビームを放ちフィニッシュ	(敵)
SP_08x=	160906	;--	敵にバーダックがビームを放ちフィニッシュ	

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
--バーダックが飛んでくる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fly = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, fly, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, fly, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fly, 0 );
setEffRotateKey( spep_0 + 110, fly, 0 );
setEffAlphaKey( spep_0 + 0, fly, 255 );
setEffAlphaKey( spep_0 + 110, fly, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +6;

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

--SE
--向かっていく
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 82 );
SE004 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 14, -1);
SE005 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 8, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE006, 85 );
SE007 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE007, 46 );
setTimeStretch( SE007, 1.67, 30, 4 );

--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +102 ,4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--月に向かって加速する
------------------------------------------------------
-- ** エフェクト等 ** --
acceleration = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, acceleration, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, acceleration, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, acceleration, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, acceleration, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, acceleration, 0 );
setEffRotateKey( spep_2 + 86, acceleration, 0 );
setEffAlphaKey( spep_2 + 0, acceleration, 255 );
setEffAlphaKey( spep_2 + 84, acceleration, 255 );
setEffAlphaKey( spep_2 + 85, acceleration, 255 );
setEffAlphaKey( spep_2 + 86, acceleration, 0 );

--SE
--宇宙漂う
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 56, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 122, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--SE
--加速する
SE012 = playSeVer2( spep_2 + 40, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 71 );
SE013 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 48, 1277, "", 0, 0, 0, -1);

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
--バーダックが画面に向かって飛んでくる
------------------------------------------------------
-- ** エフェクト等 ** --
monitor = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, monitor, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, monitor, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, monitor, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, monitor, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, monitor, 0 );
setEffRotateKey( spep_3 + 56, monitor, 0 );
setEffAlphaKey( spep_3 + 0, monitor, 255 );
setEffAlphaKey( spep_3 + 54, monitor, 255 );
setEffAlphaKey( spep_3 + 55, monitor, 255 );
setEffAlphaKey( spep_3 + 56, monitor, 0 );

--SE
--向かってくる
SE015 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 0, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE018, 66 );
setPitch( spep_3 + 20, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_3 + 26, 1011, "",spep_3 + 88, 24, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
--敵のお中でビームを溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tame_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 86, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 84, tame_f, 255 );
setEffAlphaKey( spep_4 + 85, tame_f, 255 );
setEffAlphaKey( spep_4 + 86, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tame_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 86, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 84, tame_b, 255 );
setEffAlphaKey( spep_4 + 85, tame_b, 255 );
setEffAlphaKey( spep_4 + 86, tame_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 120.1, -7.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 121.2, -6.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 122.2, -5.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 123.2, -4.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, 124.3, -3.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 125.3, -2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 126.3, -0.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 127.4, 0.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 128.4, 1.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 129.4, 2.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 130.5, 3.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 131.5, 4.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 132.5, 5.6 , 0 );
setMoveKey( spep_4-3 + 26, 1, 133.6, 6.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 134.6, 7.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, 135.7, 8.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 136.7, 9.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 137.7, 11 , 0 );
setMoveKey( spep_4-3 + 36, 1, 138.8, 12.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, 139.8, 13.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 140.8, 14.2 , 0 );
setMoveKey( spep_4-3 + 42, 1, 141.9, 15.3 , 0 );
setMoveKey( spep_4-3 + 44, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_4-3 + 46, 1, 143.8, 17.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 144.9, 18.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 145.9, 19.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 146.9, 20.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, 148, 21.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 149, 22.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 150, 24 , 0 );
setMoveKey( spep_4-3 + 60, 1, 151.1, 25.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 152.1, 26.1 , 0 );
setMoveKey( spep_4-3 + 64, 1, 153.1, 27.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 154.2, 28.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 155.2, 29.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 156.2, 30.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 157.3, 31.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 158.3, 32.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, 159.3, 33.7 , 0 );
setMoveKey( spep_4-3 + 78, 1, 160.4, 34.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 161.4, 35.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 162.4, 37 , 0 );
setMoveKey( spep_4-3 + 84, 1, 163.5, 38.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 164.5, 39.2 , 0 );
setMoveKey( spep_4-3 + 88, 1, 165.6, 40.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 13.67, 13.67 );
setScaleKey( spep_4-3 + 88, 1, 13.67, 13.67 );

setRotateKey( spep_4 + 0, 1, -58.9 );
setRotateKey( spep_4-3 + 88, 1, -58.9 );

--SE
--気弾溜め
SE020 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 26, 1296, "",spep_4 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 26, SE021, 88 );
SE022 = playSeVer2( spep_4 + 26, 1282, "",spep_4 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 26, SE022, 79 );
SE023 = playSeVer2( spep_4 + 26, 1265, "",spep_4 + 206, 0, 12, -1);
SE024 = playSeVer2( spep_4 + 26, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 26, SE024, 124 );
SE026 = playSeVer2( spep_4 + 32, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE026, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_5=spep_4+86;
------------------------------------------------------
--バーダックが気合を入れる
------------------------------------------------------
-- ** エフェクト等 ** --
yell = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, yell, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, yell, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, yell, 1.0, 1.0 );
setEffScaleKey( spep_5 + 66, yell, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, yell, 0 );
setEffRotateKey( spep_5 + 66, yell, 0 );
setEffAlphaKey( spep_5 + 0, yell, 255 );
setEffAlphaKey( spep_5 + 64, yell, 255 );
setEffAlphaKey( spep_5 + 65, yell, 255 );
setEffAlphaKey( spep_5 + 66, yell, 0 );

--SE
--顔アップ
SE025 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 112, 10, 12, -1);
setSeVolumeByWorkId( spep_5 + 0, SE025, 79 );
setStartTimeMs( SE025,  1133 );
SE027 = playSeVer2( spep_5 + 2, 1264, "",spep_5 + 112, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_6=spep_5+66;
------------------------------------------------------
--敵にバーダックがビームを放ちフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 180, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 180, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );

setMoveKey( spep_6 + 0, 1, 18.4, 17.6 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 19.5, 18.1 , 0 );
setMoveKey( spep_6-3 + 4, 1, 20.5, 18.6 , 0 );
setMoveKey( spep_6-3 + 6, 1, 21.6, 19.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 22.6, 19.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 23.6, 20.1 , 0 );
setMoveKey( spep_6-3 + 12, 1, 24.7, 20.6 , 0 );
setMoveKey( spep_6-3 + 14, 1, 25.7, 21.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 26.8, 21.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 27.8, 22 , 0 );
setMoveKey( spep_6-3 + 20, 1, 28.8, 22.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, 29.9, 23 , 0 );
setMoveKey( spep_6-3 + 24, 1, 30.9, 23.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, 31.9, 24 , 0 );
setMoveKey( spep_6-3 + 28, 1, 33, 24.5 , 0 );
setMoveKey( spep_6-3 + 30, 1, 29.4, 28.6 , 0 );
setMoveKey( spep_6 + 30, 1, 10.7, 9.3 , 0 );


setScaleKey( spep_6 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 30, 1, 1.5, 1.5 );


setRotateKey( spep_6 + 0, 1, -50 );
setRotateKey( spep_6 + 30, 1, -50 );

--SE
--気弾発射
SE028 = playSeVer2( spep_6 + 34, 1177, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_6 + 34, 1122, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 38, 1284, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 42, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 42, SE031, 71 );

--終わり
dealDamage( spep_6 + 34 );
endPhase( spep_6 + 170 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--バーダックが飛んでくる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fly = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, fly, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fly, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, fly, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fly, 0 );
setEffRotateKey( spep_0 + 110, fly, 0 );
setEffAlphaKey( spep_0 + 0, fly, 255 );
setEffAlphaKey( spep_0 + 110, fly, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +6;

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

--SE
--向かっていく
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 82 );
SE004 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 14, -1);
SE005 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 8, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE006, 85 );
SE007 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE007, 46 );
setTimeStretch( SE007, 1.67, 30, 4 );

--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +102 ,4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--月に向かって加速する
------------------------------------------------------
-- ** エフェクト等 ** --
acceleration = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, acceleration, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, acceleration, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, acceleration, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, acceleration, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, acceleration, 0 );
setEffRotateKey( spep_2 + 86, acceleration, 0 );
setEffAlphaKey( spep_2 + 0, acceleration, 255 );
setEffAlphaKey( spep_2 + 84, acceleration, 255 );
setEffAlphaKey( spep_2 + 85, acceleration, 255 );
setEffAlphaKey( spep_2 + 86, acceleration, 0 );

--SE
--宇宙漂う
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 56, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 122, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--SE
--加速する
SE012 = playSeVer2( spep_2 + 40, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 71 );
SE013 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 48, 1277, "", 0, 0, 0, -1);

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
--バーダックが画面に向かって飛んでくる
------------------------------------------------------
-- ** エフェクト等 ** --
monitor = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, monitor, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, monitor, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, monitor, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, monitor, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, monitor, 0 );
setEffRotateKey( spep_3 + 56, monitor, 0 );
setEffAlphaKey( spep_3 + 0, monitor, 255 );
setEffAlphaKey( spep_3 + 54, monitor, 255 );
setEffAlphaKey( spep_3 + 55, monitor, 255 );
setEffAlphaKey( spep_3 + 56, monitor, 0 );

--SE
--向かってくる
SE015 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 0, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE018, 66 );
setPitch( spep_3 + 20, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_3 + 26, 1011, "",spep_3 + 88, 24, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
--敵のお中でビームを溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tame_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 86, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 84, tame_f, 255 );
setEffAlphaKey( spep_4 + 85, tame_f, 255 );
setEffAlphaKey( spep_4 + 86, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tame_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 86, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 84, tame_b, 255 );
setEffAlphaKey( spep_4 + 85, tame_b, 255 );
setEffAlphaKey( spep_4 + 86, tame_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 120.1, -7.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 121.2, -6.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 122.2, -5.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 123.2, -4.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, 124.3, -3.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 125.3, -2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 126.3, -0.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 127.4, 0.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 128.4, 1.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 129.4, 2.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 130.5, 3.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 131.5, 4.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 132.5, 5.6 , 0 );
setMoveKey( spep_4-3 + 26, 1, 133.6, 6.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 134.6, 7.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, 135.7, 8.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 136.7, 9.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 137.7, 11 , 0 );
setMoveKey( spep_4-3 + 36, 1, 138.8, 12.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, 139.8, 13.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 140.8, 14.2 , 0 );
setMoveKey( spep_4-3 + 42, 1, 141.9, 15.3 , 0 );
setMoveKey( spep_4-3 + 44, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_4-3 + 46, 1, 143.8, 17.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 144.9, 18.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 145.9, 19.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 146.9, 20.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, 148, 21.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 149, 22.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 150, 24 , 0 );
setMoveKey( spep_4-3 + 60, 1, 151.1, 25.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 152.1, 26.1 , 0 );
setMoveKey( spep_4-3 + 64, 1, 153.1, 27.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 154.2, 28.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 155.2, 29.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 156.2, 30.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 157.3, 31.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 158.3, 32.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, 159.3, 33.7 , 0 );
setMoveKey( spep_4-3 + 78, 1, 160.4, 34.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 161.4, 35.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 162.4, 37 , 0 );
setMoveKey( spep_4-3 + 84, 1, 163.5, 38.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 164.5, 39.2 , 0 );
setMoveKey( spep_4-3 + 88, 1, 165.6, 40.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 13.67, 13.67 );
setScaleKey( spep_4-3 + 88, 1, 13.67, 13.67 );

setRotateKey( spep_4 + 0, 1, -58.9 );
setRotateKey( spep_4-3 + 88, 1, -58.9 );

--SE
--気弾溜め
SE020 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 26, 1296, "",spep_4 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 26, SE021, 88 );
SE022 = playSeVer2( spep_4 + 26, 1282, "",spep_4 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 26, SE022, 79 );
SE023 = playSeVer2( spep_4 + 26, 1265, "",spep_4 + 206, 0, 12, -1);
SE024 = playSeVer2( spep_4 + 26, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 26, SE024, 124 );
SE026 = playSeVer2( spep_4 + 32, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE026, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_5=spep_4+86;
------------------------------------------------------
--バーダックが気合を入れる
------------------------------------------------------
-- ** エフェクト等 ** --
yell = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, yell, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, yell, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, yell, -1.0, 1.0 );
setEffScaleKey( spep_5 + 66, yell, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, yell, 0 );
setEffRotateKey( spep_5 + 66, yell, 0 );
setEffAlphaKey( spep_5 + 0, yell, 255 );
setEffAlphaKey( spep_5 + 64, yell, 255 );
setEffAlphaKey( spep_5 + 65, yell, 255 );
setEffAlphaKey( spep_5 + 66, yell, 0 );

--SE
--顔アップ
SE025 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 112, 10, 12, -1);
setSeVolumeByWorkId( spep_5 + 0, SE025, 79 );
setStartTimeMs( SE025,  1133 );
SE027 = playSeVer2( spep_5 + 2, 1264, "",spep_5 + 112, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_6=spep_5+66;
------------------------------------------------------
--敵にバーダックがビームを放ちフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 180, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 180, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 104 );

setMoveKey( spep_6 + 0, 1, 18.4, 17.6 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 19.5, 18.1 , 0 );
setMoveKey( spep_6-3 + 4, 1, 20.5, 18.6 , 0 );
setMoveKey( spep_6-3 + 6, 1, 21.6, 19.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 22.6, 19.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 23.6, 20.1 , 0 );
setMoveKey( spep_6-3 + 12, 1, 24.7, 20.6 , 0 );
setMoveKey( spep_6-3 + 14, 1, 25.7, 21.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 26.8, 21.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 27.8, 22 , 0 );
setMoveKey( spep_6-3 + 20, 1, 28.8, 22.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, 29.9, 23 , 0 );
setMoveKey( spep_6-3 + 24, 1, 30.9, 23.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, 31.9, 24 , 0 );
setMoveKey( spep_6-3 + 28, 1, 33, 24.5 , 0 );
setMoveKey( spep_6-3 + 30, 1, 29.4, 28.6 , 0 );
setMoveKey( spep_6 + 30, 1, 10.7, 9.3 , 0 );


setScaleKey( spep_6 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 30, 1, 1.5, 1.5 );


setRotateKey( spep_6 + 0, 1, -50 );
setRotateKey( spep_6 + 30, 1, -50 );

--SE
--気弾発射
SE028 = playSeVer2( spep_6 + 34, 1177, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_6 + 34, 1122, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 38, 1284, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 42, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 42, SE031, 71 );

--終わり
dealDamage( spep_6 + 34 );
endPhase( spep_6 + 170 ); -- 終了フレーム
end