--1025090:バーダック_運命を賭けた攻戦(UR)
--sp_effect_a1_00382

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
SP_01=	160846	;--	バーダックが飛んでくる
SP_02=	160848	;--	月に向かって加速する
SP_03=	160850	;--	バーダックが敵に肘打ちする
SP_04=	160851	;--	バーダックが敵に肘打ちする
SP_05=	160852	;--	格闘で敵を飛ばす
SP_06=	160853	;--	格闘で敵を飛ばす
SP_07=	160855	;--	バーダックが画面に向かって飛んでくる
SP_08=	160856	;--	敵のお中でビームを溜める
SP_09=	160857	;--	敵のお中でビームを溜める
SP_10=	160859	;--	バーダックが気合を入れる
SP_11=	160861	;--	敵にバーダックがビームを放ちフィニッシュ
SP_12=	160862	;--	敵にバーダックがビームを放ちフィニッシュ

--エフェクト(敵)
SP_01x=	160847	;--	バーダックが飛んでくる	(敵)
SP_02x=	160849	;--	月に向かって加速する	(敵)
SP_03x=	161004	;--	バーダックが敵に肘打ちする	
SP_04x=	161003	;--	バーダックが敵に肘打ちする	
SP_05x=	160854	;--	格闘で敵を飛ばす	(敵)
SP_06x=	160853	;--	格闘で敵を飛ばす	
SP_07x=	160855	;--	バーダックが画面に向かって飛んでくる	
SP_08x=	160858	;--	敵のお中でビームを溜める	(敵)
SP_09x=	160857	;--	敵のお中でビームを溜める	
SP_10x=	160860	;--	バーダックが気合を入れる	(敵)
SP_11x=	160863	;--	敵にバーダックがビームを放ちフィニッシュ	(敵)
SP_12x=	160862	;--	敵にバーダックがビームを放ちフィニッシュ	

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
--バーダックが敵に肘打ちする
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_f, 0 );
setEffRotateKey( spep_3 + 66, elbow_f, 0 );
setEffAlphaKey( spep_3 + 0, elbow_f, 255 );
setEffAlphaKey( spep_3 + 64, elbow_f, 255 );
setEffAlphaKey( spep_3 + 65, elbow_f, 255 );
setEffAlphaKey( spep_3 + 66, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_b, 0 );
setEffRotateKey( spep_3 + 66, elbow_b, 0 );
setEffAlphaKey( spep_3 + 0, elbow_b, 255 );
setEffAlphaKey( spep_3 + 64, elbow_b, 255 );
setEffAlphaKey( spep_3 + 65, elbow_b, 255 );
setEffAlphaKey( spep_3 + 66, elbow_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3-3 + 28, 1, 107 );

setMoveKey( spep_3 + 0, 1, 302.2, -170.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 296, -166.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 289.8, -163.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 283.6, -159.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 277.3, -155.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 271.1, -152.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 264.9, -148.5 , 0 );
setMoveKey( spep_3-3 + 14, 1, 258.7, -144.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 252.4, -141.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 246.2, -137.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 245.8, -137.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 245.3, -136.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 244.9, -136.7 , 0 );
setMoveKey( spep_3-3 + 27, 1, 244.4, -136.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 133.5, -47.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 165.9, -30.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 126.8, -85.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 136.1, -45.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 184.6, -90.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 166.7, -81.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 177.4, -83.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 188, -86.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 194.2, -91.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 200.2, -96.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 209.3, -102.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 218.3, -108.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 228, -111.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 237.7, -115.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 243.1, -122.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 248.4, -130.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 259, -138.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 269.7, -147.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 275, -149.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 280.2, -151.7 , 0 );
setMoveKey( spep_3-3 + 68, 1, 285.4, -159.1 , 0 );

setScaleKey( spep_3 + 0, 1, 6.25, 6.25 );
--setScaleKey( spep_3-3 + 2, 1, 6.11, 6.11 );
setScaleKey( spep_3-3 + 4, 1, 5.97, 5.97 );
setScaleKey( spep_3-3 + 6, 1, 5.83, 5.83 );
setScaleKey( spep_3-3 + 8, 1, 5.69, 5.69 );
setScaleKey( spep_3-3 + 10, 1, 5.56, 5.56 );
setScaleKey( spep_3-3 + 12, 1, 5.42, 5.42 );
setScaleKey( spep_3-3 + 14, 1, 5.28, 5.28 );
setScaleKey( spep_3-3 + 16, 1, 5.14, 5.14 );
setScaleKey( spep_3-3 + 18, 1, 5, 5 );
setScaleKey( spep_3-3 + 20, 1, 4.99, 4.99 );
setScaleKey( spep_3-3 + 22, 1, 4.98, 4.98 );
setScaleKey( spep_3-3 + 24, 1, 4.97, 4.97 );
setScaleKey( spep_3-3 + 27, 1, 4.96, 4.96 );
setScaleKey( spep_3-3 + 28, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 30, 1, 2.67, 2.67 );
setScaleKey( spep_3-3 + 32, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 34, 1, 2.73, 2.73 );
setScaleKey( spep_3-3 + 36, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 38, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 40, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 42, 1, 2.84, 2.84 );
setScaleKey( spep_3-3 + 44, 1, 2.87, 2.87 );
setScaleKey( spep_3-3 + 46, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 48, 1, 2.92, 2.92 );
setScaleKey( spep_3-3 + 50, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 52, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 54, 1, 3.01, 3.01 );
setScaleKey( spep_3-3 + 56, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_3-3 + 60, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 62, 1, 3.11, 3.11 );
setScaleKey( spep_3-3 + 64, 1, 3.14, 3.14 );
setScaleKey( spep_3-3 + 66, 1, 3.17, 3.17 );
setScaleKey( spep_3-3 + 68, 1, 3.19, 3.19 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 27, 1, 0 );
setRotateKey( spep_3-3 + 28, 1, -11 );
setRotateKey( spep_3-3 + 30, 1, -10.4 );
setRotateKey( spep_3-3 + 32, 1, -9.9 );
setRotateKey( spep_3-3 + 34, 1, -9.3 );
setRotateKey( spep_3-3 + 36, 1, -8.8 );
setRotateKey( spep_3-3 + 38, 1, -8.2 );
setRotateKey( spep_3-3 + 40, 1, -7.7 );
setRotateKey( spep_3-3 + 42, 1, -7.1 );
setRotateKey( spep_3-3 + 44, 1, -6.6 );
setRotateKey( spep_3-3 + 46, 1, -6 );
setRotateKey( spep_3-3 + 48, 1, -5.5 );
setRotateKey( spep_3-3 + 50, 1, -4.9 );
setRotateKey( spep_3-3 + 52, 1, -4.4 );
setRotateKey( spep_3-3 + 54, 1, -3.8 );
setRotateKey( spep_3-3 + 56, 1, -3.3 );
setRotateKey( spep_3-3 + 58, 1, -2.7 );
setRotateKey( spep_3-3 + 60, 1, -2.2 );
setRotateKey( spep_3-3 + 62, 1, -1.6 );
setRotateKey( spep_3-3 + 64, 1, -1.1 );
setRotateKey( spep_3-3 + 66, 1, -0.5 );
setRotateKey( spep_3-3 + 68, 1, 0 );

--SE
--エルボー
SE015 = playSeVer2( spep_3 + 20, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 26, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 26, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 26, 1010, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
--格闘で敵を飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 126, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 124, fighting_f, 255 );
setEffAlphaKey( spep_4 + 125, fighting_f, 255 );
setEffAlphaKey( spep_4 + 126, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 126, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 124, fighting_b, 255 );
setEffAlphaKey( spep_4 + 125, fighting_b, 255 );
setEffAlphaKey( spep_4 + 126, fighting_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 128, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 20, 1, 106 );
changeAnime( spep_4-3 + 46, 1, 108 );
changeAnime( spep_4-3 + 80, 1, 105 );

setMoveKey( spep_4 + 0, 1, -203.1, -419.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -178.7, -388.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, -154.4, -356.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, -130, -325.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -105.7, -294.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -81.4, -263 , 0 );
setMoveKey( spep_4-3 + 12, 1, -57, -231.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, -32.7, -200.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.4, -169.1 , 0 );
setMoveKey( spep_4-3 + 19, 1, 16, -137.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -18.8, -104.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, -41.2, -122.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, -27.8, -119.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, -36.4, -118.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, -25.1, -94.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, -28.7, -93.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -23.2, -87 , 0 );
setMoveKey( spep_4-3 + 34, 1, -22.4, -73.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, -11, -69.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, -6.6, -62.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, -2.3, -54.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 2, -47.2 , 0 );
setMoveKey( spep_4-3 + 45, 1, 6.3, -39.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 17.2, -13.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 17.3, -0.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 42.6, 51.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 48.7, 44.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 42.5, 42.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, 53.2, 54.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 52.6, 61.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 55.2, 63.3 , 0 );
setMoveKey( spep_4-3 + 62, 1, 61, 71.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 64.3, 75.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 67.7, 80 , 0 );
setMoveKey( spep_4-3 + 68, 1, 71.1, 84.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 74.4, 88.6 , 0 );
setMoveKey( spep_4-3 + 72, 1, 77.8, 93 , 0 );
setMoveKey( spep_4-3 + 74, 1, 81.1, 97.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 84.5, 101.6 , 0 );
setMoveKey( spep_4-3 + 79, 1, 95.9, 113.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -16.6, 36.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 49.7, 105.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 74.6, 113.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, 81.5, 121.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 102.1, 139.7 , 0 );
setMoveKey( spep_4-3 + 90, 1, 109.7, 152 , 0 );
setMoveKey( spep_4-3 + 92, 1, 119, 157.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 130.5, 168.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, 138.8, 174.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 146.3, 180.2 , 0 );
setMoveKey( spep_4-3 + 100, 1, 153.3, 185.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 159.8, 190.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 165.9, 194.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 171.5, 198.3 , 0 );
setMoveKey( spep_4-3 + 108, 1, 176.8, 201.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 181.8, 205.2 , 0 );
setMoveKey( spep_4-3 + 112, 1, 186.6, 208.3 , 0 );
setMoveKey( spep_4-3 + 114, 1, 191, 211.1 , 0 );
setMoveKey( spep_4-3 + 116, 1, 195.2, 213.6 , 0 );
setMoveKey( spep_4-3 + 118, 1, 199.1, 216 , 0 );
setMoveKey( spep_4-3 + 120, 1, 202.8, 218.1 , 0 );
setMoveKey( spep_4-3 + 122, 1, 206.3, 220 , 0 );
setMoveKey( spep_4-3 + 124, 1, 209.5, 221.7 , 0 );
setMoveKey( spep_4-3 + 126, 1, 212.5, 223.2 , 0 );
setMoveKey( spep_4-1 + 128, 1, 215.2, 224.3 , 0 );

setScaleKey( spep_4 + 0, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 19, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 20, 1, 2.5, 2.5 );
setScaleKey( spep_4-3 + 45, 1, 2.5, 2.5 );
setScaleKey( spep_4-3 + 46, 1, 2.49, 2.49 );
setScaleKey( spep_4-3 + 79, 1, 2.49, 2.49 );

setScaleKey( spep_4-3 + 80, 1, 2.44,2.44);
setScaleKey( spep_4-3 + 82, 1, 1.84,1.84);
setScaleKey( spep_4-3 + 84, 1, 1.61,1.61);
setScaleKey( spep_4-3 + 86, 1, 1.43,1.43);
setScaleKey( spep_4-3 + 88, 1, 1.31,1.31);
setScaleKey( spep_4-3 + 90, 1, 1.19,1.19);
setScaleKey( spep_4-3 + 92, 1, 1.09,1.09);
setScaleKey( spep_4-3 + 94, 1, 1.01,1.01);
setScaleKey( spep_4-3 + 96, 1, 0.93,0.93);
setScaleKey( spep_4-3 + 98, 1, 0.86,0.86);
setScaleKey( spep_4-3 + 100, 1, 0.8,0.8);
setScaleKey( spep_4-3 + 102, 1, 0.74,0.74);
setScaleKey( spep_4-3 + 104, 1, 0.7,0.7);
setScaleKey( spep_4-3 + 106, 1, 0.64,0.64);
setScaleKey( spep_4-3 + 108, 1, 0.6,0.6);
setScaleKey( spep_4-3 + 110, 1, 0.56,0.56);
setScaleKey( spep_4-3 + 112, 1, 0.52,0.52);
setScaleKey( spep_4-3 + 114, 1, 0.49,0.49);
setScaleKey( spep_4-3 + 116, 1, 0.46,0.46);
setScaleKey( spep_4-3 + 118, 1, 0.43,0.43);
setScaleKey( spep_4-3 + 120, 1, 0.41,0.41);
setScaleKey( spep_4-3 + 122, 1, 0.39,0.39);
setScaleKey( spep_4-3 + 124, 1, 0.36,0.36);
setScaleKey( spep_4-3 + 126, 1, 0.34,0.34);
setScaleKey( spep_4-1 + 128, 1, 0.33,0.33);

setRotateKey( spep_4 + 0, 1, -14 );
setRotateKey( spep_4-3 + 19, 1, -14 );
setRotateKey( spep_4-3 + 20, 1, -39 );
setRotateKey( spep_4-3 + 22, 1, -38.1 );
setRotateKey( spep_4-3 + 24, 1, -37.2 );
setRotateKey( spep_4-3 + 26, 1, -36.3 );
setRotateKey( spep_4-3 + 28, 1, -35.3 );
setRotateKey( spep_4-3 + 30, 1, -34.4 );
setRotateKey( spep_4-3 + 32, 1, -33.5 );
setRotateKey( spep_4-3 + 34, 1, -32.6 );
setRotateKey( spep_4-3 + 36, 1, -31.7 );
setRotateKey( spep_4-3 + 38, 1, -30.8 );
setRotateKey( spep_4-3 + 40, 1, -29.8 );
setRotateKey( spep_4-3 + 42, 1, -28.9 );
setRotateKey( spep_4-3 + 45, 1, -28 );
setRotateKey( spep_4-3 + 46, 1, -58.6 );
setRotateKey( spep_4-3 + 48, 1, -58.2 );
setRotateKey( spep_4-3 + 50, 1, -57.7 );
setRotateKey( spep_4-3 + 52, 1, -57.2 );
setRotateKey( spep_4-3 + 54, 1, -56.7 );
setRotateKey( spep_4-3 + 56, 1, -56.3 );
setRotateKey( spep_4-3 + 58, 1, -55.8 );
setRotateKey( spep_4-3 + 60, 1, -55.3 );
setRotateKey( spep_4-3 + 62, 1, -54.8 );
setRotateKey( spep_4-3 + 64, 1, -54.3 );
setRotateKey( spep_4-3 + 66, 1, -53.9 );
setRotateKey( spep_4-3 + 68, 1, -53.4 );
setRotateKey( spep_4-3 + 70, 1, -52.9 );
setRotateKey( spep_4-3 + 72, 1, -52.4 );
setRotateKey( spep_4-3 + 74, 1, -52 );
setRotateKey( spep_4-3 + 76, 1, -51.5 );
setRotateKey( spep_4-3 + 79, 1, -51 );
setRotateKey( spep_4-3 + 80, 1, 30 );
setRotateKey( spep_4-1 + 128, 1, 30 );

--SE
--パンチ
SE019 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 18, 1000, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 20, 1110, "", 0, 0, 0, -1);

--膝蹴り
SE022 = playSeVer2( spep_4 + 48, 1010, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 48, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 48, SE023, 92 );
SE024 = playSeVer2( spep_4 + 48, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 48, SE024, 89 );

--蹴り飛ばし
SE025 = playSeVer2( spep_4 + 66, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 78, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 80, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_5=spep_4+126;
------------------------------------------------------
--バーダックが画面に向かって飛んでくる
------------------------------------------------------
-- ** エフェクト等 ** --
monitor = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, monitor, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, monitor, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, monitor, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, monitor, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, monitor, 0 );
setEffRotateKey( spep_5 + 56, monitor, 0 );
setEffAlphaKey( spep_5 + 0, monitor, 255 );
setEffAlphaKey( spep_5 + 54, monitor, 255 );
setEffAlphaKey( spep_5 + 55, monitor, 255 );
setEffAlphaKey( spep_5 + 56, monitor, 0 );

--SE
--向かってくる
SE028 = playSeVer2( spep_5 + 0, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_5 + 0, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_5 + 0, 1116, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_5 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE031, 66 );
setPitch( spep_5 + 20, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_5 + 26, 1011, "",spep_5 + 88, 24, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
--敵のお中でビームを溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, tame_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame_f, 0 );
setEffRotateKey( spep_6 + 86, tame_f, 0 );
setEffAlphaKey( spep_6 + 0, tame_f, 255 );
setEffAlphaKey( spep_6 + 84, tame_f, 255 );
setEffAlphaKey( spep_6 + 85, tame_f, 255 );
setEffAlphaKey( spep_6 + 86, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, tame_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame_b, 0 );
setEffRotateKey( spep_6 + 86, tame_b, 0 );
setEffAlphaKey( spep_6 + 0, tame_b, 255 );
setEffAlphaKey( spep_6 + 84, tame_b, 255 );
setEffAlphaKey( spep_6 + 85, tame_b, 255 );
setEffAlphaKey( spep_6 + 86, tame_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 88, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 104.7, 48.8 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 105.8, 49.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 106.8, 51 , 0 );
setMoveKey( spep_6-3 + 6, 1, 107.8, 52.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 108.9, 53.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 109.9, 54.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 110.9, 55.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 112, 56.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, 113, 57.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 114, 58.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 115.1, 59.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, 116.1, 60.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 117.1, 61.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 118.2, 62.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, 119.2, 64 , 0 );
setMoveKey( spep_6-3 + 30, 1, 120.3, 65.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 121.3, 66.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, 122.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, 123.4, 68.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 124.4, 69.4 , 0 );
setMoveKey( spep_6-3 + 40, 1, 125.4, 70.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, 126.5, 71.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 127.4, 72.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, 128.4, 73.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 129.5, 74.8 , 0 );
setMoveKey( spep_6-3 + 50, 1, 130.5, 75.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, 131.5, 77 , 0 );
setMoveKey( spep_6-3 + 54, 1, 132.6, 78.1 , 0 );
setMoveKey( spep_6-3 + 56, 1, 133.6, 79.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 134.6, 80.3 , 0 );
setMoveKey( spep_6-3 + 60, 1, 135.7, 81.3 , 0 );
setMoveKey( spep_6-3 + 62, 1, 136.7, 82.4 , 0 );
setMoveKey( spep_6-3 + 64, 1, 137.7, 83.5 , 0 );
setMoveKey( spep_6-3 + 66, 1, 138.8, 84.6 , 0 );
setMoveKey( spep_6-3 + 68, 1, 139.8, 85.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 140.8, 86.8 , 0 );
setMoveKey( spep_6-3 + 72, 1, 141.9, 87.9 , 0 );
setMoveKey( spep_6-3 + 74, 1, 142.9, 88.9 , 0 );
setMoveKey( spep_6-3 + 76, 1, 143.9, 90 , 0 );
setMoveKey( spep_6-3 + 78, 1, 145, 91.1 , 0 );
setMoveKey( spep_6-3 + 80, 1, 146, 92.2 , 0 );
setMoveKey( spep_6-3 + 82, 1, 147, 93.3 , 0 );
setMoveKey( spep_6-3 + 84, 1, 148.1, 94.4 , 0 );
setMoveKey( spep_6-3 + 86, 1, 149.1, 95.5 , 0 );
setMoveKey( spep_6-3 + 88, 1, 150.2, 96.5 , 0 );

setScaleKey( spep_6 + 0, 1, 10.34, 10.34 );
setScaleKey( spep_6-3 + 88, 1, 10.34, 10.34 );

setRotateKey( spep_6 + 0, 1, -97.3 );
setRotateKey( spep_6-3 + 88, 1, -97.3 );

--SE
--気弾溜め
SE033 = playSeVer2( spep_6 + 20, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_6 + 26, 1296, "",spep_6 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 26, SE034, 88 );
SE035 = playSeVer2( spep_6 + 26, 1282, "",spep_6 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 26, SE035, 79 );
SE036 = playSeVer2( spep_6 + 26, 1265, "",spep_6 + 206, 0, 12, -1);
SE037 = playSeVer2( spep_6 + 26, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE037, 124 );
SE039 = playSeVer2( spep_6 + 32, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 32, SE039, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_7=spep_6+86;
------------------------------------------------------
--バーダックが気合を入れる
------------------------------------------------------
-- ** エフェクト等 ** --
yell = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, yell, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, yell, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, yell, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, yell, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, yell, 0 );
setEffRotateKey( spep_7 + 66, yell, 0 );
setEffAlphaKey( spep_7 + 0, yell, 255 );
setEffAlphaKey( spep_7 + 64, yell, 255 );
setEffAlphaKey( spep_7 + 65, yell, 255 );
setEffAlphaKey( spep_7 + 66, yell, 0 );

--SE
--顔アップ
SE038 = playSeVer2( spep_7 + 0, 1278, "",spep_7 + 112, 10, 12, -1);
setSeVolumeByWorkId( spep_7 + 0, SE038, 79 );
setStartTimeMs( SE038,  1133 );
SE040 = playSeVer2( spep_7 + 2, 1264, "",spep_7 + 112, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_8=spep_7+66;
------------------------------------------------------
--敵にバーダックがビームを放ちフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 180, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 180, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 30, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 42.8, 29.6 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 43.8, 30.9 , 0 );
setMoveKey( spep_8-3 + 4, 1, 44.8, 32.3 , 0 );
setMoveKey( spep_8-3 + 6, 1, 45.9, 33.6 , 0 );
setMoveKey( spep_8-3 + 8, 1, 46.9, 34.9 , 0 );
setMoveKey( spep_8-3 + 10, 1, 48, 36.3 , 0 );
setMoveKey( spep_8-3 + 12, 1, 49, 37.6 , 0 );
setMoveKey( spep_8-3 + 14, 1, 50, 39 , 0 );
setMoveKey( spep_8-3 + 16, 1, 51.1, 40.3 , 0 );
setMoveKey( spep_8-3 + 18, 1, 52.1, 41.7 , 0 );
setMoveKey( spep_8-3 + 20, 1, 53.1, 43 , 0 );
setMoveKey( spep_8-3 + 22, 1, 54.2, 44.4 , 0 );
setMoveKey( spep_8-3 + 24, 1, 55.2, 45.7 , 0 );
setMoveKey( spep_8-3 + 26, 1, 56.3, 47.1 , 0 );
setMoveKey( spep_8-3 + 28, 1, 57.3, 48.4 , 0 );
setMoveKey( spep_8-3 + 30, 1, 53.8, 40.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, 35, 22.1 , 0 );


setScaleKey( spep_8 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_8 + 30, 1, 1.7, 1.7 );


setRotateKey( spep_8 + 0, 1, -17 );
setRotateKey( spep_8 + 30, 1, -17 );

--SE
--気弾発射
SE041 = playSeVer2( spep_8 + 34, 1177, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_8 + 34, 1122, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_8 + 38, 1284, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_8 + 42, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 42, SE044, 71 );

--終わり
dealDamage( spep_8 + 34 );
endPhase( spep_8 + 170 ); -- 終了フレーム
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
--バーダックが敵に肘打ちする
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, elbow_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_f, 0 );
setEffRotateKey( spep_3 + 66, elbow_f, 0 );
setEffAlphaKey( spep_3 + 0, elbow_f, 255 );
setEffAlphaKey( spep_3 + 64, elbow_f, 255 );
setEffAlphaKey( spep_3 + 65, elbow_f, 255 );
setEffAlphaKey( spep_3 + 66, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, elbow_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_b, 0 );
setEffRotateKey( spep_3 + 66, elbow_b, 0 );
setEffAlphaKey( spep_3 + 0, elbow_b, 255 );
setEffAlphaKey( spep_3 + 64, elbow_b, 255 );
setEffAlphaKey( spep_3 + 65, elbow_b, 255 );
setEffAlphaKey( spep_3 + 66, elbow_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3-3 + 28, 1, 107 );

setMoveKey( spep_3 + 0, 1, 302.2, -170.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 296, -166.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 289.8, -163.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 283.6, -159.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 277.3, -155.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 271.1, -152.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 264.9, -148.5 , 0 );
setMoveKey( spep_3-3 + 14, 1, 258.7, -144.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 252.4, -141.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 246.2, -137.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 245.8, -137.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 245.3, -136.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 244.9, -136.7 , 0 );
setMoveKey( spep_3-3 + 27, 1, 244.4, -136.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 133.5, -47.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 165.9, -30.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 126.8, -85.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 136.1, -45.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 184.6, -90.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 166.7, -81.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 177.4, -83.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 188, -86.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 194.2, -91.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 200.2, -96.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 209.3, -102.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 218.3, -108.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 228, -111.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 237.7, -115.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 243.1, -122.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 248.4, -130.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 259, -138.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 269.7, -147.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 275, -149.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 280.2, -151.7 , 0 );
setMoveKey( spep_3-3 + 68, 1, 285.4, -159.1 , 0 );

setScaleKey( spep_3 + 0, 1, 6.25, 6.25 );
--setScaleKey( spep_3-3 + 2, 1, 6.11, 6.11 );
setScaleKey( spep_3-3 + 4, 1, 5.97, 5.97 );
setScaleKey( spep_3-3 + 6, 1, 5.83, 5.83 );
setScaleKey( spep_3-3 + 8, 1, 5.69, 5.69 );
setScaleKey( spep_3-3 + 10, 1, 5.56, 5.56 );
setScaleKey( spep_3-3 + 12, 1, 5.42, 5.42 );
setScaleKey( spep_3-3 + 14, 1, 5.28, 5.28 );
setScaleKey( spep_3-3 + 16, 1, 5.14, 5.14 );
setScaleKey( spep_3-3 + 18, 1, 5, 5 );
setScaleKey( spep_3-3 + 20, 1, 4.99, 4.99 );
setScaleKey( spep_3-3 + 22, 1, 4.98, 4.98 );
setScaleKey( spep_3-3 + 24, 1, 4.97, 4.97 );
setScaleKey( spep_3-3 + 27, 1, 4.96, 4.96 );
setScaleKey( spep_3-3 + 28, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 30, 1, 2.67, 2.67 );
setScaleKey( spep_3-3 + 32, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 34, 1, 2.73, 2.73 );
setScaleKey( spep_3-3 + 36, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 38, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 40, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 42, 1, 2.84, 2.84 );
setScaleKey( spep_3-3 + 44, 1, 2.87, 2.87 );
setScaleKey( spep_3-3 + 46, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 48, 1, 2.92, 2.92 );
setScaleKey( spep_3-3 + 50, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 52, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 54, 1, 3.01, 3.01 );
setScaleKey( spep_3-3 + 56, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_3-3 + 60, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 62, 1, 3.11, 3.11 );
setScaleKey( spep_3-3 + 64, 1, 3.14, 3.14 );
setScaleKey( spep_3-3 + 66, 1, 3.17, 3.17 );
setScaleKey( spep_3-3 + 68, 1, 3.19, 3.19 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 27, 1, 0 );
setRotateKey( spep_3-3 + 28, 1, -11 );
setRotateKey( spep_3-3 + 30, 1, -10.4 );
setRotateKey( spep_3-3 + 32, 1, -9.9 );
setRotateKey( spep_3-3 + 34, 1, -9.3 );
setRotateKey( spep_3-3 + 36, 1, -8.8 );
setRotateKey( spep_3-3 + 38, 1, -8.2 );
setRotateKey( spep_3-3 + 40, 1, -7.7 );
setRotateKey( spep_3-3 + 42, 1, -7.1 );
setRotateKey( spep_3-3 + 44, 1, -6.6 );
setRotateKey( spep_3-3 + 46, 1, -6 );
setRotateKey( spep_3-3 + 48, 1, -5.5 );
setRotateKey( spep_3-3 + 50, 1, -4.9 );
setRotateKey( spep_3-3 + 52, 1, -4.4 );
setRotateKey( spep_3-3 + 54, 1, -3.8 );
setRotateKey( spep_3-3 + 56, 1, -3.3 );
setRotateKey( spep_3-3 + 58, 1, -2.7 );
setRotateKey( spep_3-3 + 60, 1, -2.2 );
setRotateKey( spep_3-3 + 62, 1, -1.6 );
setRotateKey( spep_3-3 + 64, 1, -1.1 );
setRotateKey( spep_3-3 + 66, 1, -0.5 );
setRotateKey( spep_3-3 + 68, 1, 0 );

--SE
--エルボー
SE015 = playSeVer2( spep_3 + 20, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 26, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 26, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 26, 1010, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
--格闘で敵を飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 126, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 126, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 124, fighting_f, 255 );
setEffAlphaKey( spep_4 + 125, fighting_f, 255 );
setEffAlphaKey( spep_4 + 126, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 126, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 126, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 124, fighting_b, 255 );
setEffAlphaKey( spep_4 + 125, fighting_b, 255 );
setEffAlphaKey( spep_4 + 126, fighting_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 128, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 20, 1, 106 );
changeAnime( spep_4-3 + 46, 1, 108 );
changeAnime( spep_4-3 + 80, 1, 105 );

setMoveKey( spep_4 + 0, 1, -203.1, -419.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -178.7, -388.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, -154.4, -356.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, -130, -325.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -105.7, -294.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -81.4, -263 , 0 );
setMoveKey( spep_4-3 + 12, 1, -57, -231.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, -32.7, -200.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.4, -169.1 , 0 );
setMoveKey( spep_4-3 + 19, 1, 16, -137.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -18.8, -104.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, -41.2, -122.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, -27.8, -119.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, -36.4, -118.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, -25.1, -94.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, -28.7, -93.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -23.2, -87 , 0 );
setMoveKey( spep_4-3 + 34, 1, -22.4, -73.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, -11, -69.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, -6.6, -62.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, -2.3, -54.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 2, -47.2 , 0 );
setMoveKey( spep_4-3 + 45, 1, 6.3, -39.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 17.2, -13.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 17.3, -0.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 42.6, 51.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 48.7, 44.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 42.5, 42.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, 53.2, 54.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 52.6, 61.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 55.2, 63.3 , 0 );
setMoveKey( spep_4-3 + 62, 1, 61, 71.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 64.3, 75.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 67.7, 80 , 0 );
setMoveKey( spep_4-3 + 68, 1, 71.1, 84.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 74.4, 88.6 , 0 );
setMoveKey( spep_4-3 + 72, 1, 77.8, 93 , 0 );
setMoveKey( spep_4-3 + 74, 1, 81.1, 97.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 84.5, 101.6 , 0 );
setMoveKey( spep_4-3 + 79, 1, 95.9, 113.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -16.6, 36.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 49.7, 105.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 74.6, 113.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, 81.5, 121.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 102.1, 139.7 , 0 );
setMoveKey( spep_4-3 + 90, 1, 109.7, 152 , 0 );
setMoveKey( spep_4-3 + 92, 1, 119, 157.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 130.5, 168.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, 138.8, 174.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 146.3, 180.2 , 0 );
setMoveKey( spep_4-3 + 100, 1, 153.3, 185.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 159.8, 190.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 165.9, 194.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 171.5, 198.3 , 0 );
setMoveKey( spep_4-3 + 108, 1, 176.8, 201.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 181.8, 205.2 , 0 );
setMoveKey( spep_4-3 + 112, 1, 186.6, 208.3 , 0 );
setMoveKey( spep_4-3 + 114, 1, 191, 211.1 , 0 );
setMoveKey( spep_4-3 + 116, 1, 195.2, 213.6 , 0 );
setMoveKey( spep_4-3 + 118, 1, 199.1, 216 , 0 );
setMoveKey( spep_4-3 + 120, 1, 202.8, 218.1 , 0 );
setMoveKey( spep_4-3 + 122, 1, 206.3, 220 , 0 );
setMoveKey( spep_4-3 + 124, 1, 209.5, 221.7 , 0 );
setMoveKey( spep_4-3 + 126, 1, 212.5, 223.2 , 0 );
setMoveKey( spep_4-1 + 128, 1, 215.2, 224.3 , 0 );

setScaleKey( spep_4 + 0, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 19, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 20, 1, 2.5, 2.5 );
setScaleKey( spep_4-3 + 45, 1, 2.5, 2.5 );
setScaleKey( spep_4-3 + 46, 1, 2.49, 2.49 );
setScaleKey( spep_4-3 + 79, 1, 2.49, 2.49 );

setScaleKey( spep_4-3 + 80, 1, 2.44,2.44);
setScaleKey( spep_4-3 + 82, 1, 1.84,1.84);
setScaleKey( spep_4-3 + 84, 1, 1.61,1.61);
setScaleKey( spep_4-3 + 86, 1, 1.43,1.43);
setScaleKey( spep_4-3 + 88, 1, 1.31,1.31);
setScaleKey( spep_4-3 + 90, 1, 1.19,1.19);
setScaleKey( spep_4-3 + 92, 1, 1.09,1.09);
setScaleKey( spep_4-3 + 94, 1, 1.01,1.01);
setScaleKey( spep_4-3 + 96, 1, 0.93,0.93);
setScaleKey( spep_4-3 + 98, 1, 0.86,0.86);
setScaleKey( spep_4-3 + 100, 1, 0.8,0.8);
setScaleKey( spep_4-3 + 102, 1, 0.74,0.74);
setScaleKey( spep_4-3 + 104, 1, 0.7,0.7);
setScaleKey( spep_4-3 + 106, 1, 0.64,0.64);
setScaleKey( spep_4-3 + 108, 1, 0.6,0.6);
setScaleKey( spep_4-3 + 110, 1, 0.56,0.56);
setScaleKey( spep_4-3 + 112, 1, 0.52,0.52);
setScaleKey( spep_4-3 + 114, 1, 0.49,0.49);
setScaleKey( spep_4-3 + 116, 1, 0.46,0.46);
setScaleKey( spep_4-3 + 118, 1, 0.43,0.43);
setScaleKey( spep_4-3 + 120, 1, 0.41,0.41);
setScaleKey( spep_4-3 + 122, 1, 0.39,0.39);
setScaleKey( spep_4-3 + 124, 1, 0.36,0.36);
setScaleKey( spep_4-3 + 126, 1, 0.34,0.34);
setScaleKey( spep_4-1 + 128, 1, 0.33,0.33);

setRotateKey( spep_4 + 0, 1, -14 );
setRotateKey( spep_4-3 + 19, 1, -14 );
setRotateKey( spep_4-3 + 20, 1, -39 );
setRotateKey( spep_4-3 + 22, 1, -38.1 );
setRotateKey( spep_4-3 + 24, 1, -37.2 );
setRotateKey( spep_4-3 + 26, 1, -36.3 );
setRotateKey( spep_4-3 + 28, 1, -35.3 );
setRotateKey( spep_4-3 + 30, 1, -34.4 );
setRotateKey( spep_4-3 + 32, 1, -33.5 );
setRotateKey( spep_4-3 + 34, 1, -32.6 );
setRotateKey( spep_4-3 + 36, 1, -31.7 );
setRotateKey( spep_4-3 + 38, 1, -30.8 );
setRotateKey( spep_4-3 + 40, 1, -29.8 );
setRotateKey( spep_4-3 + 42, 1, -28.9 );
setRotateKey( spep_4-3 + 45, 1, -28 );
setRotateKey( spep_4-3 + 46, 1, -58.6 );
setRotateKey( spep_4-3 + 48, 1, -58.2 );
setRotateKey( spep_4-3 + 50, 1, -57.7 );
setRotateKey( spep_4-3 + 52, 1, -57.2 );
setRotateKey( spep_4-3 + 54, 1, -56.7 );
setRotateKey( spep_4-3 + 56, 1, -56.3 );
setRotateKey( spep_4-3 + 58, 1, -55.8 );
setRotateKey( spep_4-3 + 60, 1, -55.3 );
setRotateKey( spep_4-3 + 62, 1, -54.8 );
setRotateKey( spep_4-3 + 64, 1, -54.3 );
setRotateKey( spep_4-3 + 66, 1, -53.9 );
setRotateKey( spep_4-3 + 68, 1, -53.4 );
setRotateKey( spep_4-3 + 70, 1, -52.9 );
setRotateKey( spep_4-3 + 72, 1, -52.4 );
setRotateKey( spep_4-3 + 74, 1, -52 );
setRotateKey( spep_4-3 + 76, 1, -51.5 );
setRotateKey( spep_4-3 + 79, 1, -51 );
setRotateKey( spep_4-3 + 80, 1, 30 );
setRotateKey( spep_4-1 + 128, 1, 30 );

--SE
--パンチ
SE019 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 18, 1000, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 20, 1110, "", 0, 0, 0, -1);

--膝蹴り
SE022 = playSeVer2( spep_4 + 48, 1010, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 48, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 48, SE023, 92 );
SE024 = playSeVer2( spep_4 + 48, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 48, SE024, 89 );

--蹴り飛ばし
SE025 = playSeVer2( spep_4 + 66, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 78, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 80, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_5=spep_4+126;
------------------------------------------------------
--バーダックが画面に向かって飛んでくる
------------------------------------------------------
-- ** エフェクト等 ** --
monitor = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, monitor, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, monitor, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, monitor, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, monitor, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, monitor, 0 );
setEffRotateKey( spep_5 + 56, monitor, 0 );
setEffAlphaKey( spep_5 + 0, monitor, 255 );
setEffAlphaKey( spep_5 + 54, monitor, 255 );
setEffAlphaKey( spep_5 + 55, monitor, 255 );
setEffAlphaKey( spep_5 + 56, monitor, 0 );

--SE
--向かってくる
SE028 = playSeVer2( spep_5 + 0, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_5 + 0, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_5 + 0, 1116, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_5 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE031, 66 );
setPitch( spep_5 + 20, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_5 + 26, 1011, "",spep_5 + 88, 24, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
--敵のお中でビームを溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, tame_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame_f, 0 );
setEffRotateKey( spep_6 + 86, tame_f, 0 );
setEffAlphaKey( spep_6 + 0, tame_f, 255 );
setEffAlphaKey( spep_6 + 84, tame_f, 255 );
setEffAlphaKey( spep_6 + 85, tame_f, 255 );
setEffAlphaKey( spep_6 + 86, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, tame_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame_b, 0 );
setEffRotateKey( spep_6 + 86, tame_b, 0 );
setEffAlphaKey( spep_6 + 0, tame_b, 255 );
setEffAlphaKey( spep_6 + 84, tame_b, 255 );
setEffAlphaKey( spep_6 + 85, tame_b, 255 );
setEffAlphaKey( spep_6 + 86, tame_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 88, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 104.7, 48.8 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 105.8, 49.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 106.8, 51 , 0 );
setMoveKey( spep_6-3 + 6, 1, 107.8, 52.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 108.9, 53.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 109.9, 54.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 110.9, 55.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 112, 56.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, 113, 57.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 114, 58.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 115.1, 59.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, 116.1, 60.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 117.1, 61.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 118.2, 62.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, 119.2, 64 , 0 );
setMoveKey( spep_6-3 + 30, 1, 120.3, 65.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 121.3, 66.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, 122.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, 123.4, 68.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 124.4, 69.4 , 0 );
setMoveKey( spep_6-3 + 40, 1, 125.4, 70.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, 126.5, 71.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 127.4, 72.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, 128.4, 73.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 129.5, 74.8 , 0 );
setMoveKey( spep_6-3 + 50, 1, 130.5, 75.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, 131.5, 77 , 0 );
setMoveKey( spep_6-3 + 54, 1, 132.6, 78.1 , 0 );
setMoveKey( spep_6-3 + 56, 1, 133.6, 79.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 134.6, 80.3 , 0 );
setMoveKey( spep_6-3 + 60, 1, 135.7, 81.3 , 0 );
setMoveKey( spep_6-3 + 62, 1, 136.7, 82.4 , 0 );
setMoveKey( spep_6-3 + 64, 1, 137.7, 83.5 , 0 );
setMoveKey( spep_6-3 + 66, 1, 138.8, 84.6 , 0 );
setMoveKey( spep_6-3 + 68, 1, 139.8, 85.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 140.8, 86.8 , 0 );
setMoveKey( spep_6-3 + 72, 1, 141.9, 87.9 , 0 );
setMoveKey( spep_6-3 + 74, 1, 142.9, 88.9 , 0 );
setMoveKey( spep_6-3 + 76, 1, 143.9, 90 , 0 );
setMoveKey( spep_6-3 + 78, 1, 145, 91.1 , 0 );
setMoveKey( spep_6-3 + 80, 1, 146, 92.2 , 0 );
setMoveKey( spep_6-3 + 82, 1, 147, 93.3 , 0 );
setMoveKey( spep_6-3 + 84, 1, 148.1, 94.4 , 0 );
setMoveKey( spep_6-3 + 86, 1, 149.1, 95.5 , 0 );
setMoveKey( spep_6-3 + 88, 1, 150.2, 96.5 , 0 );

setScaleKey( spep_6 + 0, 1, 10.34, 10.34 );
setScaleKey( spep_6-3 + 88, 1, 10.34, 10.34 );

setRotateKey( spep_6 + 0, 1, -97.3 );
setRotateKey( spep_6-3 + 88, 1, -97.3 );

--SE
--気弾溜め
SE033 = playSeVer2( spep_6 + 20, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_6 + 26, 1296, "",spep_6 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 26, SE034, 88 );
SE035 = playSeVer2( spep_6 + 26, 1282, "",spep_6 + 206, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 26, SE035, 79 );
SE036 = playSeVer2( spep_6 + 26, 1265, "",spep_6 + 206, 0, 12, -1);
SE037 = playSeVer2( spep_6 + 26, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE037, 124 );
SE039 = playSeVer2( spep_6 + 32, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 32, SE039, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_7=spep_6+86;
------------------------------------------------------
--バーダックが気合を入れる
------------------------------------------------------
-- ** エフェクト等 ** --
yell = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, yell, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, yell, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, yell, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, yell, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, yell, 0 );
setEffRotateKey( spep_7 + 66, yell, 0 );
setEffAlphaKey( spep_7 + 0, yell, 255 );
setEffAlphaKey( spep_7 + 64, yell, 255 );
setEffAlphaKey( spep_7 + 65, yell, 255 );
setEffAlphaKey( spep_7 + 66, yell, 0 );

--SE
--顔アップ
SE038 = playSeVer2( spep_7 + 0, 1278, "",spep_7 + 112, 10, 12, -1);
setSeVolumeByWorkId( spep_7 + 0, SE038, 79 );
setStartTimeMs( SE038,  1133 );
SE040 = playSeVer2( spep_7 + 2, 1264, "",spep_7 + 112, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_8=spep_7+66;
------------------------------------------------------
--敵にバーダックがビームを放ちフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 180, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 180, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 30, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 42.8, 29.6 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 43.8, 30.9 , 0 );
setMoveKey( spep_8-3 + 4, 1, 44.8, 32.3 , 0 );
setMoveKey( spep_8-3 + 6, 1, 45.9, 33.6 , 0 );
setMoveKey( spep_8-3 + 8, 1, 46.9, 34.9 , 0 );
setMoveKey( spep_8-3 + 10, 1, 48, 36.3 , 0 );
setMoveKey( spep_8-3 + 12, 1, 49, 37.6 , 0 );
setMoveKey( spep_8-3 + 14, 1, 50, 39 , 0 );
setMoveKey( spep_8-3 + 16, 1, 51.1, 40.3 , 0 );
setMoveKey( spep_8-3 + 18, 1, 52.1, 41.7 , 0 );
setMoveKey( spep_8-3 + 20, 1, 53.1, 43 , 0 );
setMoveKey( spep_8-3 + 22, 1, 54.2, 44.4 , 0 );
setMoveKey( spep_8-3 + 24, 1, 55.2, 45.7 , 0 );
setMoveKey( spep_8-3 + 26, 1, 56.3, 47.1 , 0 );
setMoveKey( spep_8-3 + 28, 1, 57.3, 48.4 , 0 );
setMoveKey( spep_8-3 + 30, 1, 53.8, 40.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, 35, 22.1 , 0 );


setScaleKey( spep_8 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_8 + 30, 1, 1.7, 1.7 );


setRotateKey( spep_8 + 0, 1, -17 );
setRotateKey( spep_8 + 30, 1, -17 );

--SE
--気弾発射
SE041 = playSeVer2( spep_8 + 34, 1177, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_8 + 34, 1122, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_8 + 38, 1284, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_8 + 42, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 42, SE044, 71 );

--終わり
dealDamage( spep_8 + 34 );
endPhase( spep_8 + 170 ); -- 終了フレーム
end