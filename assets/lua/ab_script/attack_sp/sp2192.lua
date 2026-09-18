--1022010:トランクス(幼年期)_シャイニングスラッシュ(ユニット必殺技)
--sp_effect_b2_00043
--sp2192

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
SP_01=	157206	;--	トランクス笛投げる
SP_02=	157207	;--	タピオンが笛をキャッチ
SP_03=	157208	;--	タピオンが笛を吹く
SP_04=	157209	;--	タピオンの周りバリア発生
SP_05=	157210	;--	バリアが敵を弾き飛ばす：手前
SP_06=	157211	;--	トランクスが敵に向かって移動
SP_07=	157213	;--	トランクスが敵を斬る：手前
SP_08=	157214	;--	トランクスが敵を斬る：奥
SP_09=	157216	;--	地面着地→もう一度敵に接近：手前
SP_10=	157217	;--	地面着地→もう一度敵に接近：奥
SP_11=	157219	;--	斬撃エフェクト
SP_12=	157220	;--	敵を斬った後の余韻：手前
SP_13=	157221	;--	敵を斬った後の余韻：奥
SP_14=	157222	;--	爆発
SP_15=	157223	;--	バリアが敵を弾き飛ばす：奥

--エフェクト(てき)
SP_01x=	157206	;--	トランクス笛投げる	
SP_02x=	157207	;--	タピオンが笛をキャッチ	
SP_03x=	157208	;--	タピオンが笛を吹く	
SP_04x=	157209	;--	タピオンの周りバリア発生	
SP_05x=	157224	;--	バリアが敵を弾き飛ばす：手前
SP_06x=	157212	;--	トランクスが敵に向かって移動	(敵)
SP_07x=	157213	;--	トランクスが敵を斬る：手前	
SP_08x=	157215	;--	トランクスが敵を斬る：奥	(敵)
SP_09x=	157216	;--	地面着地→もう一度敵に接近：手前	
SP_10x=	157218	;--	地面着地→もう一度敵に接近：奥	(敵)
SP_11x=	157219	;--	斬撃エフェクト	
SP_12x=	157220	;--	敵を斬った後の余韻：手前	
SP_13x=	157221	;--	敵を斬った後の余韻：奥	
SP_14x=	157222	;--	爆発	
SP_15x=	157223	;--	バリアが敵を弾き飛ばす：奥

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- トランクス笛投げる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
throw = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, throw, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, throw, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, throw, 0 );
setEffRotateKey( spep_0 + 90, throw, 0 );
setEffAlphaKey( spep_0 + 0, throw, 255 );
setEffAlphaKey( spep_0 + 90, throw, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

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

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 28,  906, 62, 0x100, -1, 0, 0, -57 );
setEffShake( spep_0-3 + 28, shuchusen1, 62, 20 );
setEffMoveKey( spep_0-3 + 28, shuchusen1, 0, -57 , 0 );
setEffMoveKey( spep_0-3 + 90, shuchusen1, 0, -57 , 0 );

setEffScaleKey( spep_0-3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 90, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 28, shuchusen1, 85 );
setEffAlphaKey( spep_0-3 + 30, shuchusen1, 170 );
setEffAlphaKey( spep_0-3 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 90, shuchusen1, 255 );

--SE
--飛び上がる
SE001 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0 + 50, SE001, 18 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

--笛投げる
SE004 = playSe( spep_0 + 42, 1003 );
setSeVolumeByWorkId( spep_0 + 42, SE004, 67 );
SE002 = playSe( spep_0 + 44, 1119 );
setSeVolumeByWorkId( spep_0 + 44, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 45, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 46, SE002, 100 );
setStartTimeMs( SE002,  800 );

--白フェード
entryFade( spep_0 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
-- タピオンが笛をキャッチ
------------------------------------------------------
-- ** エフェクト等 ** --
catch = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, catch, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, catch, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, catch, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, catch, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, catch, 0 );
setEffRotateKey( spep_1 + 56, catch, 0 );
setEffAlphaKey( spep_1 + 0, catch, 255 );
setEffAlphaKey( spep_1 + 54, catch, 255 );
setEffAlphaKey( spep_1 + 55, catch, 255 );
setEffAlphaKey( spep_1 + 56, catch, 0 );

--SE
--笛キャッチ
SE005 = playSe( spep_1 + 4, 1007 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 81 );
stopSe( spep_1 + 10, SE005, 4 );
SE006 = playSe( spep_1 + 6, 1317 );
setSeVolumeByWorkId( spep_1 + 6, SE006, 82 );
SE007 = playSe( spep_1 + 8, 1107 );
setSeVolumeByWorkId( spep_1 + 8, SE007, 158 );
SE008 = playSe( spep_1 + 10, 1106 );
setSeVolumeByWorkId( spep_1 + 10, SE008, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- タピオンが笛を吹く
------------------------------------------------------
-- ** エフェクト等 ** --
blow = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blow, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, blow, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, blow, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blow, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow, 0 );
setEffRotateKey( spep_2 + 56, blow, 0 );
setEffAlphaKey( spep_2 + 0, blow, 255 );
setEffAlphaKey( spep_2 + 54, blow, 255 );
setEffAlphaKey( spep_2 + 55, blow, 255 );
setEffAlphaKey( spep_2 + 56, blow, 0 );

--SE
--口に持ってくる
SE009 = playSe( spep_2 + 0, 1048 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE009, 3 );
setSeVolumeByWorkId( spep_2 + 2, SE009, 5 );
setSeVolumeByWorkId( spep_2 + 3, SE009, 10);
setSeVolumeByWorkId( spep_2 + 4, SE009, 20 );
setSeVolumeByWorkId( spep_2 + 5, SE009, 30 );
setSeVolumeByWorkId( spep_2 + 6, SE009, 50 );
setStartTimeMs( SE009,  0 );
stopSe( spep_2 + 12, SE009, 10 );

--タピオンの笛
SE010 = playSe( spep_2 + 26, 1324 ,"",0.65);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
-- タピオンの周りバリア発生
------------------------------------------------------
-- ** エフェクト等 ** --
barrier = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, barrier, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, barrier, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, barrier, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, barrier, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, barrier, 0 );
setEffRotateKey( spep_3 + 86, barrier, 0 );
setEffAlphaKey( spep_3 + 0, barrier, 255 );
setEffAlphaKey( spep_3 + 84, barrier, 255 );
setEffAlphaKey( spep_3 + 85, barrier, 255 );
setEffAlphaKey( spep_3 + 86, barrier, 0 );

--タピオンバリア
SE011 = playSe( spep_3 + 0, 1253 );
setTimeStretch( SE011, 2, 10, 1 );
setBandpassFilter( spep_3 + 0, SE011, 24, 2100 );
SE012 = playSe( spep_3 + 0, 1296 );
setSeVolumeByWorkId( spep_3 + 0, SE012, 76 );
setPitch( spep_3 + 0, SE012, -900 );
setTimeStretch( SE012, 0.4, 10, 1 );
SE013 = playSe( spep_3 + 0, 1227 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 153 );
SE014 = playSe( spep_3 + 6, 1311 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 150 );
setTimeStretch( SE014, 1.26,30, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );

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

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
-- バリアが敵を弾き飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, fly_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fly_f, 0 );
setEffRotateKey( spep_4 + 66, fly_f, 0 );
setEffAlphaKey( spep_4 + 0, fly_f, 255 );
setEffAlphaKey( spep_4 + 64, fly_f, 255 );
setEffAlphaKey( spep_4 + 65, fly_f, 255 );
setEffAlphaKey( spep_4 + 66, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_4 + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, fly_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fly_b, 0 );
setEffRotateKey( spep_4 + 66, fly_b, 0 );
setEffAlphaKey( spep_4 + 0, fly_b, 255 );
setEffAlphaKey( spep_4 + 64, fly_b, 255 );
setEffAlphaKey( spep_4 + 65, fly_b, 255 );
setEffAlphaKey( spep_4 + 66, fly_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 14, 1, 108 );

setMoveKey( spep_4 + 0, 1, -15.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 13, 1, -15.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29.4, 38.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 39.4, 74.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 27.3, 59.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 29.1, 64.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 21.3, 67.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 29.8, 71.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 44.6, 85.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, 51.8, 93 , 0 );
setMoveKey( spep_4-3 + 30, 1, 67.6, 90.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 71.5, 97.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 82, 104.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 83.8, 105.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 100.3, 108.5 , 0 );
setMoveKey( spep_4-3 + 40, 1, 100.6, 113 , 0 );
setMoveKey( spep_4-3 + 42, 1, 112, 110.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 120.7, 123.4 , 0 );
setMoveKey( spep_4-3 + 46, 1, 247, 179.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 326.2, 209.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 456.4, 243.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, 548.1, 311.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 655.2, 347.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 767.1, 398.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 882.4, 449.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, 986.5, 496 , 0 );
setMoveKey( spep_4-3 + 62, 1, 989.4, 492.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, 986.7, 494.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 989.6, 496.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 991.8, 491.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 13, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 68, 1, 1.67, 1.67 );

setRotateKey( spep_4+ 0, 1, 0 );
setRotateKey( spep_4-3 + 13, 1, 0 );
setRotateKey( spep_4-3 + 14, 1, -15 );
setRotateKey( spep_4-3 + 68, 1, -15 );

--SE
--タピオンバリア
stopSe( spep_4 + 0, SE012, 30 );
stopSe( spep_4 + 52, SE013, 38 );

--バリア敵に当たる
SE015 = playSe( spep_4 + 12, 1043 );	
SE016 = playSe( spep_4 + 12, 1017 );
setSeVolumeByWorkId( spep_4 + 12, SE016, 72 );

--敵吹っ飛ぶ
SE017 = playSe( spep_4 + 50, 1027 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+66;
------------------------------------------------------
-- トランクスが敵に向かって移動
------------------------------------------------------
-- ** エフェクト等 ** --
charge = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, charge, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, charge, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, charge, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, charge, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, charge, 0 );
setEffRotateKey( spep_5 + 60, charge, 0 );
setEffAlphaKey( spep_5 + 0, charge, 255 );
setEffAlphaKey( spep_5 + 60, charge, 255 );

--SE
--トランクスダッシュ
SE018 = playSe( spep_5 + 28, 44 );
SE019 = playSe( spep_5 + 28, 1117 );

--白フェード
entryFade( spep_5 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_6

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
stopSe( spep_c + 0, SE018, 0 );
stopSe( spep_c + 0, SE019, 0 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_c + 94;

------------------------------------------------------
-- トランクスが敵を斬る
------------------------------------------------------
-- ** エフェクト等 ** --
kill_f = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kill_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, kill_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kill_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, kill_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kill_f, 0 );
setEffRotateKey( spep_7 + 46, kill_f, 0 );
setEffAlphaKey( spep_7 + 0, kill_f, 255 );
setEffAlphaKey( spep_7 + 44, kill_f, 255 );
setEffAlphaKey( spep_7 + 45, kill_f, 255 );
setEffAlphaKey( spep_7 + 46, kill_f, 0 );

-- ** エフェクト等 ** --
kill_b = entryEffect( spep_7 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kill_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, kill_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kill_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, kill_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kill_b, 0 );
setEffRotateKey( spep_7 + 46, kill_b, 0 );
setEffAlphaKey( spep_7 + 0, kill_b, 255 );
setEffAlphaKey( spep_7 + 44, kill_b, 255 );
setEffAlphaKey( spep_7 + 45, kill_b, 255 );
setEffAlphaKey( spep_7 + 46, kill_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_7-3 + 8,  10010, 30, 0x100, -1, 0, 7.5, 223.5 );--ザンッ
setEffShake( spep_7-3 + 8, ctzan, 30, 10 );
setEffMoveKey( spep_7-3 + 8, ctzan, 7.5, 223.5 , 0 );
setEffMoveKey( spep_7-3 + 10, ctzan, 9.2, 225 , 0 );
setEffMoveKey( spep_7-3 + 12, ctzan, 14.2, 229.5 , 0 );
setEffMoveKey( spep_7-3 + 14, ctzan, -1.9, 219.9 , 0 );
setEffMoveKey( spep_7-3 + 16, ctzan, 16.1, 231.5 , 0 );
setEffMoveKey( spep_7-3 + 18, ctzan, -2.9, 229.7 , 0 );
setEffMoveKey( spep_7-3 + 20, ctzan, 18.9, 238.8 , 0 );
setEffMoveKey( spep_7-3 + 22, ctzan, 11.5, 208.5 , 0 );
setEffMoveKey( spep_7-3 + 24, ctzan, 21.1, 235.8 , 0 );
setEffMoveKey( spep_7-3 + 26, ctzan, 31.9, 228.2 , 0 );
setEffMoveKey( spep_7-3 + 28, ctzan, 28.9, 214.2 , 0 );
setEffMoveKey( spep_7-3 + 30, ctzan, 17.1, 223.9 , 0 );
setEffMoveKey( spep_7-3 + 32, ctzan, 10.8, 225.2 , 0 );
setEffMoveKey( spep_7-3 + 34, ctzan, 13.9, 218.3 , 0 );
setEffMoveKey( spep_7-3 + 36, ctzan, 7.8, 223.6 , 0 );
setEffMoveKey( spep_7-3 + 38, ctzan, 7.9, 223.6 , 0 );

setEffScaleKey( spep_7-3 + 8, ctzan,0,0);
setEffScaleKey( spep_7-3 + 10, ctzan,0.76,0.67);
setEffScaleKey( spep_7-3 + 12, ctzan,1.53,1.35);
setEffScaleKey( spep_7-3 + 14, ctzan,1.48,1.35);
setEffScaleKey( spep_7-3 + 16, ctzan,1.44,1.35);
setEffScaleKey( spep_7-3 + 18, ctzan,1.4,1.35);
setEffScaleKey( spep_7-3 + 20, ctzan,1.36,1.35);
setEffScaleKey( spep_7-3 + 22, ctzan,1.31,1.35);
setEffScaleKey( spep_7-3 + 24, ctzan,1.27,1.35);
setEffScaleKey( spep_7-3 + 26, ctzan,1.23,1.35);
setEffScaleKey( spep_7-3 + 28, ctzan,1.19,1.35);
setEffScaleKey( spep_7-3 + 30, ctzan,1.14,1.35);
setEffScaleKey( spep_7-3 + 32, ctzan,1.1,1.35);
setEffScaleKey( spep_7-3 + 34, ctzan,1.8,2.19);
setEffScaleKey( spep_7-3 + 36, ctzan,2.49,3.04);
setEffScaleKey( spep_7-3 + 38, ctzan,3.18,3.88);

setEffRotateKey( spep_7-3 + 8, ctzan, 11.8 );
setEffRotateKey( spep_7-3 + 10, ctzan, 12 );
setEffRotateKey( spep_7-3 + 38, ctzan, 12 );

setEffAlphaKey( spep_7-3 + 8, ctzan, 255 );
setEffAlphaKey( spep_7-3 + 32, ctzan, 255 );
setEffAlphaKey( spep_7-3 + 34, ctzan, 170 );
setEffAlphaKey( spep_7-3 + 36, ctzan, 85 );
setEffAlphaKey( spep_7-3 + 38, ctzan, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_7-3 + 8,  906, 40, 0x100, -1, 0, 0, 54.6 );
setEffShake( spep_7-3 + 8, shuchusen2, 40, 20 );
setEffMoveKey( spep_7-3 + 8, shuchusen2, 0, 54.6 , 0 );
setEffMoveKey( spep_7-3 + 48, shuchusen2, 0, 54.6 , 0 );

setEffScaleKey( spep_7-3 + 8, shuchusen2, 1.08, 1.24 );
setEffScaleKey( spep_7-3 + 48, shuchusen2, 1.08, 1.24 );

setEffRotateKey( spep_7-3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_7-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_7-3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 48, shuchusen2, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 287.9, 83.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 262.2, 79.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 236.6, 75.4 , 0 );
setMoveKey( spep_7-3 + 6, 1, 211, 71.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, 185.4, 67 , 0 );
setMoveKey( spep_7-3 + 10, 1, 173.5, 74 , 0 );
setMoveKey( spep_7-3 + 12, 1, 131.3, 55.7 , 0 );
setMoveKey( spep_7-3 + 14, 1, 127.3, 35.4 , 0 );
setMoveKey( spep_7-3 + 16, 1, 70.9, 55.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, 56.6, 33.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 39.1, 48.9 , 0 );
setMoveKey( spep_7-3 + 22, 1, 9.8, 41 , 0 );
setMoveKey( spep_7-3 + 24, 1, -2.8, 35.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, -8, 29.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, -13.1, 23.5 , 0 );
setMoveKey( spep_7-3 + 30, 1, -25.7, 25.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, -38.2, 26.5 , 0 );
setMoveKey( spep_7-3 + 34, 1, -47.1, 24.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, -56, 22.2 , 0 );
setMoveKey( spep_7-3 + 38, 1, -64.8, 20.1 , 0 );
setMoveKey( spep_7-3 + 40, 1, -73.7, 17.9 , 0 );
setMoveKey( spep_7-3 + 42, 1, -82.6, 15.7 , 0 );
setMoveKey( spep_7-3 + 44, 1, -91.4, 13.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, -100.3, 11.4 , 0 );
setMoveKey( spep_7-3 + 48, 1, -109.2, 9.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_7-3 + 48, 1, 1.8, 1.8 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 48, 1, 1.5, 1.5 );

--SE
--横切り
SE021 = playSe( spep_7 + 0, 1189 );
SE022 = playSe( spep_7 + 4, 1143 );
setSeVolumeByWorkId( spep_7 + 4, SE022, 86 );
SE023 = playSe( spep_7 + 6, 1032 );
setSeVolumeByWorkId( spep_7 + 6, SE023, 103 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+46;
------------------------------------------------------
-- 地面着地→もう一度敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0,landing_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 116,landing_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0,landing_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116,landing_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,landing_f, 0 );
setEffRotateKey( spep_8 + 116,landing_f, 0 );
setEffAlphaKey( spep_8 + 0,landing_f, 255 );
setEffAlphaKey( spep_8 + 114,landing_f, 255 );
setEffAlphaKey( spep_8 + 115,landing_f, 255 );
setEffAlphaKey( spep_8 + 116,landing_f, 0 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0,landing_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 116,landing_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0,landing_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116,landing_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,landing_b, 0 );
setEffRotateKey( spep_8 + 116,landing_b, 0 );
setEffAlphaKey( spep_8 + 0,landing_b, 255 );
setEffAlphaKey( spep_8 + 114,landing_b, 255 );
setEffAlphaKey( spep_8 + 115,landing_b, 255 );
setEffAlphaKey( spep_8 + 116,landing_b, 0 );

--文字エントリー
ctba = entryEffectLife( spep_8-3 + 44,  10022, 24, 0x100, -1, 0, 123.8, 46.9 );--バッ
setEffShake( spep_8-3 + 44, ctba, 24, 10 );
setEffMoveKey( spep_8-3 + 44, ctba, 123.8, 46.9 , 0 );
setEffMoveKey( spep_8-3 + 46, ctba, 124.4, 50.3 , 0 );
setEffMoveKey( spep_8-3 + 48, ctba, 122.9, 43 , 0 );
setEffMoveKey( spep_8-3 + 50, ctba, 113.9, 49.4 , 0 );
setEffMoveKey( spep_8-3 + 52, ctba, 131.3, 49 , 0 );
setEffMoveKey( spep_8-3 + 54, ctba, 127.3, 49 , 0 );
setEffMoveKey( spep_8-3 + 56, ctba, 123.2, 49 , 0 );
setEffMoveKey( spep_8-3 + 58, ctba, 123, 50.1 , 0 );
setEffMoveKey( spep_8-3 + 60, ctba, 122.9, 51.3 , 0 );
setEffMoveKey( spep_8-3 + 62, ctba, 123, 50.2 , 0 );
setEffMoveKey( spep_8-3 + 64, ctba, 122.9, 49.8 , 0 );
setEffMoveKey( spep_8-3 + 66, ctba, 122.4, 52.3 , 0 );
setEffMoveKey( spep_8-3 + 68, ctba, 122.1, 53.4 , 0 );

setEffScaleKey( spep_8-3 + 44, ctba, 0, 0 );
setEffScaleKey( spep_8-3 + 46, ctba, 0.2, 0.21 );
setEffScaleKey( spep_8-3 + 48, ctba, 0.4, 0.41 );
setEffScaleKey( spep_8-3 + 50, ctba, 0.59, 0.62 );
setEffScaleKey( spep_8-3 + 52, ctba, 0.6, 0.63 );
setEffScaleKey( spep_8-3 + 54, ctba, 0.61, 0.64 );
setEffScaleKey( spep_8-3 + 56, ctba, 0.62, 0.65 );
setEffScaleKey( spep_8-3 + 58, ctba, 0.63, 0.66 );
setEffScaleKey( spep_8-3 + 60, ctba, 0.64, 0.67 );
setEffScaleKey( spep_8-3 + 62, ctba, 0.65, 0.68 );
setEffScaleKey( spep_8-3 + 64, ctba, 0.87, 0.89 );
setEffScaleKey( spep_8-3 + 66, ctba, 1.08, 1.09 );
setEffScaleKey( spep_8-3 + 68, ctba, 1.29, 1.3 );

setEffRotateKey( spep_8-3 + 44, ctba, 25 );
setEffRotateKey( spep_8-3 + 46, ctba, 24.9 );
setEffRotateKey( spep_8-3 + 68, ctba, 24.9 );

setEffAlphaKey( spep_8-3 + 44, ctba, 255 );
setEffAlphaKey( spep_8-3 + 62, ctba, 255 );
setEffAlphaKey( spep_8-3 + 64, ctba, 170 );
setEffAlphaKey( spep_8-3 + 66, ctba, 85 );
setEffAlphaKey( spep_8-3 + 68, ctba, 0 );

--敵の動き
setDisp( spep_8-3 + 13, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 34.8, -687.6 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 28.5, -745.2 , 0 );
setMoveKey( spep_8-3 + 4, 1, 22.2, -802.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, 15.8, -860.4 , 0 );
setMoveKey( spep_8-3 + 8, 1, 9.5, -918 , 0 );
setMoveKey( spep_8-3 + 10, 1, 3.2, -975.6 , 0 );
setMoveKey( spep_8-3 + 13, 1, -3.1, -1033.2 , 0 );

setScaleKey( spep_8 + 0, 1, 6.93, 6.93 );
--setScaleKey( spep_8-3 + 2, 1, 7.36, 7.36 );
setScaleKey( spep_8-3 + 4, 1, 7.8, 7.8 );
setScaleKey( spep_8-3 + 6, 1, 8.23, 8.23 );
setScaleKey( spep_8-3 + 8, 1, 8.67, 8.67 );
setScaleKey( spep_8-3 + 10, 1, 9.1, 9.1 );
setScaleKey( spep_8-3 + 13, 1, 9.54, 9.54 );

setRotateKey( spep_8 + 0, 1, 26 );
setRotateKey( spep_8-3 + 13, 1, 26 );


--敵の動き
setDisp( spep_8-3 + 100, 1, 1 );
setDisp( spep_8-2 + 118, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

a=120;

setMoveKey( spep_8-3 + 100, 1, 125-a, -851.2 , 0 );
setMoveKey( spep_8-3 + 102, 1, 123.7-a, -817.9 , 0 );
setMoveKey( spep_8-3 + 104, 1, 122.3-a, -784.7 , 0 );
setMoveKey( spep_8-3 + 106, 1, 121-a, -751.4 , 0 );
setMoveKey( spep_8-3 + 108, 1, 119.7-a, -718.1 , 0 );
setMoveKey( spep_8-3 + 110, 1, 118.3-a, -684.8 , 0 );
setMoveKey( spep_8-3 + 112, 1, 117-a, -651.6 , 0 );
setMoveKey( spep_8-3 + 114, 1, 115.7-a, -618.3 , 0 );
setMoveKey( spep_8-3 + 116, 1, 114.3-a, -585 , 0 );
setMoveKey( spep_8-2 + 118, 1, 113-a, -551.8 , 0 );

setScaleKey( spep_8-3 + 100, 1, 10.07, 10.07 );
setScaleKey( spep_8-3 + 102, 1, 9.91, 9.91 );
setScaleKey( spep_8-3 + 104, 1, 9.76, 9.76 );
setScaleKey( spep_8-3 + 106, 1, 9.6, 9.6 );
setScaleKey( spep_8-3 + 108, 1, 9.45, 9.45 );
setScaleKey( spep_8-3 + 110, 1, 9.29, 9.29 );
setScaleKey( spep_8-3 + 112, 1, 9.14, 9.14 );
setScaleKey( spep_8-3 + 114, 1, 8.98, 8.98 );
setScaleKey( spep_8-3 + 116, 1, 8.83, 8.83 );
setScaleKey( spep_8-2 + 118, 1, 8.67, 8.67 );

setRotateKey( spep_8-3 + 100, 1, -9 );
setRotateKey( spep_8-2 + 118, 1, -9 );

--SE
--おりる
SE024 = playSe( spep_8 + 0, 63 );
stopSe( spep_8 + 36, SE024, 12 );

--着地
SE025 = playSe( spep_8 + 30, 1108 );
setSeVolumeByWorkId( spep_8 + 30, SE025, 186 );
SE026 = playSe( spep_8 + 32, 1106 );
setSeVolumeByWorkId( spep_8 + 32, SE026, 216 );

--飛び上がる
SE027 = playSe( spep_8 + 44, 1182 );
SE028 = playSe( spep_8 + 44, 1207 );
setSeVolumeByWorkId( spep_8 + 44, SE028, 0 );
setSeVolumeByWorkId( spep_8 + 45, SE028, 3.4 );
setSeVolumeByWorkId( spep_8 + 46, SE028, 6.8 );
setSeVolumeByWorkId( spep_8 + 47, SE028, 10.2 );
setSeVolumeByWorkId( spep_8 + 48, SE028, 13.6 );
setSeVolumeByWorkId( spep_8 + 49, SE028, 17 );
setSeVolumeByWorkId( spep_8 + 50, SE028, 20.4 );
setSeVolumeByWorkId( spep_8 + 51, SE028, 23.8 );
setSeVolumeByWorkId( spep_8 + 52, SE028, 27.2 );
setSeVolumeByWorkId( spep_8 + 53, SE028, 30.6 );
setSeVolumeByWorkId( spep_8 + 54, SE028, 34 );
setSeVolumeByWorkId( spep_8 + 55, SE028, 37.4 );
setSeVolumeByWorkId( spep_8 + 56, SE028, 40.8 );
setSeVolumeByWorkId( spep_8 + 57, SE028, 44.2 );
setSeVolumeByWorkId( spep_8 + 58, SE028, 47.6 );
setSeVolumeByWorkId( spep_8 + 59, SE028, 51 );
setSeVolumeByWorkId( spep_8 + 60, SE028, 54 );
stopSe( spep_8 + 98, SE028, 26 );
SE029 = playSe( spep_8 + 44, 1116 );
setSeVolumeByWorkId( spep_8 + 44, SE029, 77 );
SE030 = playSe( spep_8 + 68, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+116;
------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_9 + 20,cut, 0, 0, 0 );
setEffScaleKey( spep_9 + 0,cut, 1.0, 1.0 );
setEffScaleKey( spep_9 + 20,cut, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0,cut, 0 );
setEffRotateKey( spep_9 + 20,cut, 0 );
setEffAlphaKey( spep_9 + 0,cut, 255 );
setEffAlphaKey( spep_9 + 18,cut, 255 );
setEffAlphaKey( spep_9 + 19,cut, 255 );
setEffAlphaKey( spep_9 + 20,cut, 0 );

--SE
--飛び上がる
stopSe( spep_9 + 0, SE029, 10 );

--ラスト切り
SE031 = playSe( spep_9 + 0, 1004 );
SE032 = playSe( spep_9 + 2, 1061 );
setSeVolumeByWorkId( spep_9 + 2, SE032, 121 );
SE033 = playSe( spep_9 + 2, 1142 );
setSeVolumeByWorkId( spep_9 + 2, SE033, 99 )
SE034 = playSe( spep_9 + 4, 1318 );
setSeVolumeByWorkId( spep_9 + 4, SE034, 126 );
SE035 = playSe( spep_9 + 4, 1319 );
setSeVolumeByWorkId( spep_9 + 4, SE035, 158 );
setTimeStretch( SE035, 0.84, 10, 1 );
SE036 = playSe( spep_9 + 6, 1032 );
setSeVolumeByWorkId( spep_9 + 6, SE036, 126 );
SE037 = playSe( spep_9 + 10, 1141 );
setSeVolumeByWorkId( spep_9 + 10, SE037, 121 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 24, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+20;
------------------------------------------------------
-- 敵を斬った後の余韻
------------------------------------------------------
-- ** エフェクト等 ** --
afterglow_f = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0,afterglow_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 76,afterglow_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0,afterglow_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76,afterglow_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0,afterglow_f, 0 );
setEffRotateKey( spep_10 + 76,afterglow_f, 0 );
setEffAlphaKey( spep_10 + 0,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 74,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 75,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 76,afterglow_f, 0 );

-- ** エフェクト等 ** --
afterglow_b = entryEffect( spep_10 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0,afterglow_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 76,afterglow_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0,afterglow_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76,afterglow_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0,afterglow_b, 0 );
setEffRotateKey( spep_10 + 76,afterglow_b, 0 );
setEffAlphaKey( spep_10 + 0,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 74,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 75,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 76,afterglow_b, 0 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 78, 1, 0 );

changeAnime( spep_10 + 0, 1, 105 );

setMoveKey( spep_10 + 0, 1, 56.6, 234 , 0 );
setMoveKey( spep_10 + 2, 1, 62.5, 237.6 , 0 );
setMoveKey( spep_10 + 4, 1, 54, 229.1 , 0 );
setMoveKey( spep_10 + 6, 1, 48.5, 235.2 , 0 );
setMoveKey( spep_10 + 8, 1, 56.6, 232.9 , 0 );
setMoveKey( spep_10 + 10, 1, 56.6, 232.6 , 0 );
setMoveKey( spep_10 + 12, 1, 56.6, 232.4 , 0 );
setMoveKey( spep_10 + 14, 1, 56.6, 232.1 , 0 );
setMoveKey( spep_10 + 16, 1, 56.6, 231.8 , 0 );
setMoveKey( spep_10 + 18, 1, 56.6, 231.6 , 0 );
setMoveKey( spep_10 + 20, 1, 56.6, 231.3 , 0 );
setMoveKey( spep_10 + 22, 1, 56.6, 231 , 0 );
setMoveKey( spep_10 + 24, 1, 56.6, 230.7 , 0 );
setMoveKey( spep_10 + 26, 1, 56.6, 230.5 , 0 );
setMoveKey( spep_10 + 28, 1, 56.6, 230.2 , 0 );
setMoveKey( spep_10 + 30, 1, 56.6, 229.9 , 0 );
setMoveKey( spep_10 + 32, 1, 56.6, 229.7 , 0 );
setMoveKey( spep_10 + 34, 1, 56.6, 229.4 , 0 );
setMoveKey( spep_10 + 36, 1, 56.6, 229.1 , 0 );
setMoveKey( spep_10 + 38, 1, 56.6, 228.8 , 0 );
setMoveKey( spep_10 + 40, 1, 56.6, 228.6 , 0 );
setMoveKey( spep_10 + 42, 1, 56.6, 228.3 , 0 );
setMoveKey( spep_10 + 44, 1, 56.6, 228 , 0 );
setMoveKey( spep_10 + 46, 1, 56.6, 227.7 , 0 );
setMoveKey( spep_10 + 48, 1, 56.6, 227.5 , 0 );
setMoveKey( spep_10 + 50, 1, 56.6, 227.2 , 0 );
setMoveKey( spep_10 + 52, 1, 56.6, 226.9 , 0 );
setMoveKey( spep_10 + 54, 1, 56.6, 226.7 , 0 );
setMoveKey( spep_10 + 56, 1, 56.6, 226.4 , 0 );
setMoveKey( spep_10 + 58, 1, 56.6, 226.1 , 0 );
setMoveKey( spep_10 + 60, 1, 56.6, 225.8 , 0 );
setMoveKey( spep_10 + 62, 1, 56.6, 225.6 , 0 );
setMoveKey( spep_10 + 64, 1, 56.6, 225.3 , 0 );
setMoveKey( spep_10 + 66, 1, 56.6, 225 , 0 );
setMoveKey( spep_10 + 68, 1, 56.6, 224.8 , 0 );
setMoveKey( spep_10 + 70, 1, 56.6, 224.5 , 0 );
setMoveKey( spep_10 + 72, 1, 56.6, 224.2 , 0 );
setMoveKey( spep_10 + 74, 1, 56.6, 223.9 , 0 );
setMoveKey( spep_10 + 76, 1, 56.6, 223.7 , 0 );
setMoveKey( spep_10 + 78, 1, 56.6, 223.4 , 0 );

setScaleKey( spep_10 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_10 + 44, 1, 1.49, 1.49 );
setScaleKey( spep_10 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_10 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_10 + 74, 1, 1.47, 1.48 );
setScaleKey( spep_10 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_10 + 78, 1, 1.47, 1.47 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 + 2, 1, -0.1 );
setRotateKey( spep_10 + 4, 1, -0.2 );
setRotateKey( spep_10 + 6, 1, -0.3 );
setRotateKey( spep_10 + 8, 1, -0.3 );
setRotateKey( spep_10 + 10, 1, -0.4 );
setRotateKey( spep_10 + 12, 1, -0.5 );
setRotateKey( spep_10 + 14, 1, -0.6 );
setRotateKey( spep_10 + 16, 1, -0.7 );
setRotateKey( spep_10 + 18, 1, -0.8 );
setRotateKey( spep_10 + 20, 1, -0.8 );
setRotateKey( spep_10 + 22, 1, -0.9 );
setRotateKey( spep_10 + 24, 1, -1 );
setRotateKey( spep_10 + 26, 1, -1.1 );
setRotateKey( spep_10 + 28, 1, -1.2 );
setRotateKey( spep_10 + 30, 1, -1.3 );
setRotateKey( spep_10 + 32, 1, -1.4 );
setRotateKey( spep_10 + 34, 1, -1.4 );
setRotateKey( spep_10 + 36, 1, -1.5 );
setRotateKey( spep_10 + 38, 1, -1.6 );
setRotateKey( spep_10 + 40, 1, -1.7 );
setRotateKey( spep_10 + 42, 1, -1.8 );
setRotateKey( spep_10 + 44, 1, -1.9 );
setRotateKey( spep_10 + 46, 1, -1.9 );
setRotateKey( spep_10 + 48, 1, -2 );
setRotateKey( spep_10 + 50, 1, -2.1 );
setRotateKey( spep_10 + 52, 1, -2.2 );
setRotateKey( spep_10 + 54, 1, -2.3 );
setRotateKey( spep_10 + 56, 1, -2.4 );
setRotateKey( spep_10 + 58, 1, -2.5 );
setRotateKey( spep_10 + 60, 1, -2.5 );
setRotateKey( spep_10 + 62, 1, -2.6 );
setRotateKey( spep_10 + 64, 1, -2.7 );
setRotateKey( spep_10 + 66, 1, -2.8 );
setRotateKey( spep_10 + 68, 1, -2.9 );
setRotateKey( spep_10 + 70, 1, -3 );
setRotateKey( spep_10 + 72, 1, -3.1 );
setRotateKey( spep_10 + 74, 1, -3.1 );
setRotateKey( spep_10 + 76, 1, -3.2 );
setRotateKey( spep_10 + 78, 1, -3.3 );

--SE
--爆発前予兆
SE038 = playSe( spep_10 + 0, 1157 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_11=spep_10+76;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0,finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 200,finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 200,finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0,finish, 0 );
setEffRotateKey( spep_11 + 200,finish, 0 );
setEffAlphaKey( spep_11 + 0,finish, 255 );
setEffAlphaKey( spep_11 + 200,finish, 255 );

--SE
--爆発
SE039 = playSe( spep_11 + 0, 1023 );	
SE040 = playSe( spep_11 + 4, 1159 );
setSeVolumeByWorkId( spep_11 + 4, SE040, 79 );

--向き合う
SE041 = playSe( spep_11 + 118, 4 );

dealDamage( spep_11 +10 );
endPhase( spep_11 + 190 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- トランクス笛投げる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
throw = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, throw, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, throw, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, throw, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, throw, 0 );
setEffRotateKey( spep_0 + 90, throw, 0 );
setEffAlphaKey( spep_0 + 0, throw, 255 );
setEffAlphaKey( spep_0 + 90, throw, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

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

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 28,  906, 62, 0x100, -1, 0, 0, -57 );
setEffShake( spep_0-3 + 28, shuchusen1, 62, 20 );
setEffMoveKey( spep_0-3 + 28, shuchusen1, 0, -57 , 0 );
setEffMoveKey( spep_0-3 + 90, shuchusen1, 0, -57 , 0 );

setEffScaleKey( spep_0-3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 90, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 28, shuchusen1, 85 );
setEffAlphaKey( spep_0-3 + 30, shuchusen1, 170 );
setEffAlphaKey( spep_0-3 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 90, shuchusen1, 255 );

--SE
--飛び上がる
SE001 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0 + 50, SE001, 18 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

--笛投げる
SE004 = playSe( spep_0 + 42, 1003 );
setSeVolumeByWorkId( spep_0 + 42, SE004, 67 );
SE002 = playSe( spep_0 + 44, 1119 );
setSeVolumeByWorkId( spep_0 + 44, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 45, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 46, SE002, 100 );
setStartTimeMs( SE002,  800 );

--白フェード
entryFade( spep_0 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
-- タピオンが笛をキャッチ
------------------------------------------------------
-- ** エフェクト等 ** --
catch = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, catch, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, catch, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, catch, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, catch, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, catch, 0 );
setEffRotateKey( spep_1 + 56, catch, 0 );
setEffAlphaKey( spep_1 + 0, catch, 255 );
setEffAlphaKey( spep_1 + 54, catch, 255 );
setEffAlphaKey( spep_1 + 55, catch, 255 );
setEffAlphaKey( spep_1 + 56, catch, 0 );

--SE
--笛キャッチ
SE005 = playSe( spep_1 + 4, 1007 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 81 );
stopSe( spep_1 + 10, SE005, 4 );
SE006 = playSe( spep_1 + 6, 1317 );
setSeVolumeByWorkId( spep_1 + 6, SE006, 82 );
SE007 = playSe( spep_1 + 8, 1107 );
setSeVolumeByWorkId( spep_1 + 8, SE007, 158 );
SE008 = playSe( spep_1 + 10, 1106 );
setSeVolumeByWorkId( spep_1 + 10, SE008, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- タピオンが笛を吹く
------------------------------------------------------
-- ** エフェクト等 ** --
blow = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blow, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, blow, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, blow, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blow, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow, 0 );
setEffRotateKey( spep_2 + 56, blow, 0 );
setEffAlphaKey( spep_2 + 0, blow, 255 );
setEffAlphaKey( spep_2 + 54, blow, 255 );
setEffAlphaKey( spep_2 + 55, blow, 255 );
setEffAlphaKey( spep_2 + 56, blow, 0 );

--SE
--口に持ってくる
SE009 = playSe( spep_2 + 0, 1048 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE009, 3 );
setSeVolumeByWorkId( spep_2 + 2, SE009, 5 );
setSeVolumeByWorkId( spep_2 + 3, SE009, 10);
setSeVolumeByWorkId( spep_2 + 4, SE009, 20 );
setSeVolumeByWorkId( spep_2 + 5, SE009, 30 );
setSeVolumeByWorkId( spep_2 + 6, SE009, 50 );
setStartTimeMs( SE009,  0 );
stopSe( spep_2 + 12, SE009, 10 );

--タピオンの笛
SE010 = playSe( spep_2 + 26, 1324 ,"",0.65);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
-- タピオンの周りバリア発生
------------------------------------------------------
-- ** エフェクト等 ** --
barrier = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, barrier, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, barrier, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, barrier, -1.0, 1.0 );
setEffScaleKey( spep_3 + 86, barrier, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, barrier, 0 );
setEffRotateKey( spep_3 + 86, barrier, 0 );
setEffAlphaKey( spep_3 + 0, barrier, 255 );
setEffAlphaKey( spep_3 + 84, barrier, 255 );
setEffAlphaKey( spep_3 + 85, barrier, 255 );
setEffAlphaKey( spep_3 + 86, barrier, 0 );

--タピオンバリア
SE011 = playSe( spep_3 + 0, 1253 );
setTimeStretch( SE011, 2, 10, 1 );
setBandpassFilter( spep_3 + 0, SE011, 24, 2100 );
SE012 = playSe( spep_3 + 0, 1296 );
setSeVolumeByWorkId( spep_3 + 0, SE012, 76 );
setPitch( spep_3 + 0, SE012, -900 );
setTimeStretch( SE012, 0.4, 10, 1 );
SE013 = playSe( spep_3 + 0, 1227 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 153 );
SE014 = playSe( spep_3 + 6, 1311 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 150 );
setTimeStretch( SE014, 1.26,30, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );

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

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
-- バリアが敵を弾き飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, fly_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fly_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 66, fly_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fly_f, 0 );
setEffRotateKey( spep_4 + 66, fly_f, 0 );
setEffAlphaKey( spep_4 + 0, fly_f, 255 );
setEffAlphaKey( spep_4 + 64, fly_f, 255 );
setEffAlphaKey( spep_4 + 65, fly_f, 255 );
setEffAlphaKey( spep_4 + 66, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_4 + 0, SP_15x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, fly_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fly_b, 0 );
setEffRotateKey( spep_4 + 66, fly_b, 0 );
setEffAlphaKey( spep_4 + 0, fly_b, 255 );
setEffAlphaKey( spep_4 + 64, fly_b, 255 );
setEffAlphaKey( spep_4 + 65, fly_b, 255 );
setEffAlphaKey( spep_4 + 66, fly_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 14, 1, 108 );

setMoveKey( spep_4 + 0, 1, -15.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 13, 1, -15.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29.4, 38.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 39.4, 74.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 27.3, 59.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 29.1, 64.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 21.3, 67.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 29.8, 71.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 44.6, 85.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, 51.8, 93 , 0 );
setMoveKey( spep_4-3 + 30, 1, 67.6, 90.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 71.5, 97.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 82, 104.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 83.8, 105.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 100.3, 108.5 , 0 );
setMoveKey( spep_4-3 + 40, 1, 100.6, 113 , 0 );
setMoveKey( spep_4-3 + 42, 1, 112, 110.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 120.7, 123.4 , 0 );
setMoveKey( spep_4-3 + 46, 1, 247, 179.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 326.2, 209.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 456.4, 243.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, 548.1, 311.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 655.2, 347.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 767.1, 398.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 882.4, 449.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, 986.5, 496 , 0 );
setMoveKey( spep_4-3 + 62, 1, 989.4, 492.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, 986.7, 494.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 989.6, 496.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 991.8, 491.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 13, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 68, 1, 1.67, 1.67 );

setRotateKey( spep_4+ 0, 1, 0 );
setRotateKey( spep_4-3 + 13, 1, 0 );
setRotateKey( spep_4-3 + 14, 1, -15 );
setRotateKey( spep_4-3 + 68, 1, -15 );

--SE
--タピオンバリア
stopSe( spep_4 + 0, SE012, 30 );
stopSe( spep_4 + 52, SE013, 38 );

--バリア敵に当たる
SE015 = playSe( spep_4 + 12, 1043 );	
SE016 = playSe( spep_4 + 12, 1017 );
setSeVolumeByWorkId( spep_4 + 12, SE016, 72 );

--敵吹っ飛ぶ
SE017 = playSe( spep_4 + 50, 1027 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+66;
------------------------------------------------------
-- トランクスが敵に向かって移動
------------------------------------------------------
-- ** エフェクト等 ** --
charge = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, charge, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, charge, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, charge, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, charge, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, charge, 0 );
setEffRotateKey( spep_5 + 60, charge, 0 );
setEffAlphaKey( spep_5 + 0, charge, 255 );
setEffAlphaKey( spep_5 + 60, charge, 255 );

--SE
--トランクスダッシュ
SE018 = playSe( spep_5 + 28, 44 );
SE019 = playSe( spep_5 + 28, 1117 );

--白フェード
entryFade( spep_5 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_6

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 

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
playSe( spep_c + 0, SE_05 );
stopSe( spep_c + 0, SE018, 0 );
stopSe( spep_c + 0, SE019, 0 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_c + 94;
------------------------------------------------------
-- トランクスが敵を斬る
------------------------------------------------------
-- ** エフェクト等 ** --
kill_f = entryEffect( spep_7 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kill_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, kill_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kill_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, kill_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kill_f, 0 );
setEffRotateKey( spep_7 + 46, kill_f, 0 );
setEffAlphaKey( spep_7 + 0, kill_f, 255 );
setEffAlphaKey( spep_7 + 44, kill_f, 255 );
setEffAlphaKey( spep_7 + 45, kill_f, 255 );
setEffAlphaKey( spep_7 + 46, kill_f, 0 );

-- ** エフェクト等 ** --
kill_b = entryEffect( spep_7 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kill_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, kill_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kill_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 46, kill_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kill_b, 0 );
setEffRotateKey( spep_7 + 46, kill_b, 0 );
setEffAlphaKey( spep_7 + 0, kill_b, 255 );
setEffAlphaKey( spep_7 + 44, kill_b, 255 );
setEffAlphaKey( spep_7 + 45, kill_b, 255 );
setEffAlphaKey( spep_7 + 46, kill_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_7-3 + 8,  10010, 30, 0x100, -1, 0, 7.5, 223.5 );--ザンッ
setEffShake( spep_7-3 + 8, ctzan, 30, 10 );
setEffMoveKey( spep_7-3 + 8, ctzan, 7.5, 223.5 , 0 );
setEffMoveKey( spep_7-3 + 10, ctzan, 9.2, 225 , 0 );
setEffMoveKey( spep_7-3 + 12, ctzan, 14.2, 229.5 , 0 );
setEffMoveKey( spep_7-3 + 14, ctzan, -1.9, 219.9 , 0 );
setEffMoveKey( spep_7-3 + 16, ctzan, 16.1, 231.5 , 0 );
setEffMoveKey( spep_7-3 + 18, ctzan, -2.9, 229.7 , 0 );
setEffMoveKey( spep_7-3 + 20, ctzan, 18.9, 238.8 , 0 );
setEffMoveKey( spep_7-3 + 22, ctzan, 11.5, 208.5 , 0 );
setEffMoveKey( spep_7-3 + 24, ctzan, 21.1, 235.8 , 0 );
setEffMoveKey( spep_7-3 + 26, ctzan, 31.9, 228.2 , 0 );
setEffMoveKey( spep_7-3 + 28, ctzan, 28.9, 214.2 , 0 );
setEffMoveKey( spep_7-3 + 30, ctzan, 17.1, 223.9 , 0 );
setEffMoveKey( spep_7-3 + 32, ctzan, 10.8, 225.2 , 0 );
setEffMoveKey( spep_7-3 + 34, ctzan, 13.9, 218.3 , 0 );
setEffMoveKey( spep_7-3 + 36, ctzan, 7.8, 223.6 , 0 );
setEffMoveKey( spep_7-3 + 38, ctzan, 7.9, 223.6 , 0 );

setEffScaleKey( spep_7-3 + 8, ctzan,0,0);
setEffScaleKey( spep_7-3 + 10, ctzan,0.76,0.67);
setEffScaleKey( spep_7-3 + 12, ctzan,1.53,1.35);
setEffScaleKey( spep_7-3 + 14, ctzan,1.48,1.35);
setEffScaleKey( spep_7-3 + 16, ctzan,1.44,1.35);
setEffScaleKey( spep_7-3 + 18, ctzan,1.4,1.35);
setEffScaleKey( spep_7-3 + 20, ctzan,1.36,1.35);
setEffScaleKey( spep_7-3 + 22, ctzan,1.31,1.35);
setEffScaleKey( spep_7-3 + 24, ctzan,1.27,1.35);
setEffScaleKey( spep_7-3 + 26, ctzan,1.23,1.35);
setEffScaleKey( spep_7-3 + 28, ctzan,1.19,1.35);
setEffScaleKey( spep_7-3 + 30, ctzan,1.14,1.35);
setEffScaleKey( spep_7-3 + 32, ctzan,1.1,1.35);
setEffScaleKey( spep_7-3 + 34, ctzan,1.8,2.19);
setEffScaleKey( spep_7-3 + 36, ctzan,2.49,3.04);
setEffScaleKey( spep_7-3 + 38, ctzan,3.18,3.88);

setEffRotateKey( spep_7-3 + 8, ctzan, 11.8 );
setEffRotateKey( spep_7-3 + 10, ctzan, 12 );
setEffRotateKey( spep_7-3 + 38, ctzan, 12 );

setEffAlphaKey( spep_7-3 + 8, ctzan, 255 );
setEffAlphaKey( spep_7-3 + 32, ctzan, 255 );
setEffAlphaKey( spep_7-3 + 34, ctzan, 170 );
setEffAlphaKey( spep_7-3 + 36, ctzan, 85 );
setEffAlphaKey( spep_7-3 + 38, ctzan, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_7-3 + 8,  906, 40, 0x100, -1, 0, 0, 54.6 );
setEffShake( spep_7-3 + 8, shuchusen2, 40, 20 );
setEffMoveKey( spep_7-3 + 8, shuchusen2, 0, 54.6 , 0 );
setEffMoveKey( spep_7-3 + 48, shuchusen2, 0, 54.6 , 0 );

setEffScaleKey( spep_7-3 + 8, shuchusen2, 1.08, 1.24 );
setEffScaleKey( spep_7-3 + 48, shuchusen2, 1.08, 1.24 );

setEffRotateKey( spep_7-3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_7-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_7-3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 48, shuchusen2, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 287.9, 83.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 262.2, 79.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 236.6, 75.4 , 0 );
setMoveKey( spep_7-3 + 6, 1, 211, 71.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, 185.4, 67 , 0 );
setMoveKey( spep_7-3 + 10, 1, 173.5, 74 , 0 );
setMoveKey( spep_7-3 + 12, 1, 131.3, 55.7 , 0 );
setMoveKey( spep_7-3 + 14, 1, 127.3, 35.4 , 0 );
setMoveKey( spep_7-3 + 16, 1, 70.9, 55.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, 56.6, 33.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 39.1, 48.9 , 0 );
setMoveKey( spep_7-3 + 22, 1, 9.8, 41 , 0 );
setMoveKey( spep_7-3 + 24, 1, -2.8, 35.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, -8, 29.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, -13.1, 23.5 , 0 );
setMoveKey( spep_7-3 + 30, 1, -25.7, 25.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, -38.2, 26.5 , 0 );
setMoveKey( spep_7-3 + 34, 1, -47.1, 24.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, -56, 22.2 , 0 );
setMoveKey( spep_7-3 + 38, 1, -64.8, 20.1 , 0 );
setMoveKey( spep_7-3 + 40, 1, -73.7, 17.9 , 0 );
setMoveKey( spep_7-3 + 42, 1, -82.6, 15.7 , 0 );
setMoveKey( spep_7-3 + 44, 1, -91.4, 13.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, -100.3, 11.4 , 0 );
setMoveKey( spep_7-3 + 48, 1, -109.2, 9.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_7-3 + 48, 1, 1.8, 1.8 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 48, 1, 1.5, 1.5 );

--SE
--横切り
SE021 = playSe( spep_7 + 0, 1189 );
SE022 = playSe( spep_7 + 4, 1143 );
setSeVolumeByWorkId( spep_7 + 4, SE022, 86 );
SE023 = playSe( spep_7 + 6, 1032 );
setSeVolumeByWorkId( spep_7 + 6, SE023, 103 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+46;
------------------------------------------------------
-- 地面着地→もう一度敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0,landing_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 116,landing_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0,landing_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 116,landing_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0,landing_f, 0 );
setEffRotateKey( spep_8 + 116,landing_f, 0 );
setEffAlphaKey( spep_8 + 0,landing_f, 255 );
setEffAlphaKey( spep_8 + 114,landing_f, 255 );
setEffAlphaKey( spep_8 + 115,landing_f, 255 );
setEffAlphaKey( spep_8 + 116,landing_f, 0 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_8 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0,landing_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 116,landing_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0,landing_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 116,landing_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0,landing_b, 0 );
setEffRotateKey( spep_8 + 116,landing_b, 0 );
setEffAlphaKey( spep_8 + 0,landing_b, 255 );
setEffAlphaKey( spep_8 + 114,landing_b, 255 );
setEffAlphaKey( spep_8 + 115,landing_b, 255 );
setEffAlphaKey( spep_8 + 116,landing_b, 0 );

--文字エントリー
ctba = entryEffectLife( spep_8-3 + 44,  10022, 24, 0x100, -1, 0, 123.8, 46.9 );--バッ
setEffShake( spep_8-3 + 44, ctba, 24, 10 );
setEffMoveKey( spep_8-3 + 44, ctba, 123.8, 46.9 , 0 );
setEffMoveKey( spep_8-3 + 46, ctba, 124.4, 50.3 , 0 );
setEffMoveKey( spep_8-3 + 48, ctba, 122.9, 43 , 0 );
setEffMoveKey( spep_8-3 + 50, ctba, 113.9, 49.4 , 0 );
setEffMoveKey( spep_8-3 + 52, ctba, 131.3, 49 , 0 );
setEffMoveKey( spep_8-3 + 54, ctba, 127.3, 49 , 0 );
setEffMoveKey( spep_8-3 + 56, ctba, 123.2, 49 , 0 );
setEffMoveKey( spep_8-3 + 58, ctba, 123, 50.1 , 0 );
setEffMoveKey( spep_8-3 + 60, ctba, 122.9, 51.3 , 0 );
setEffMoveKey( spep_8-3 + 62, ctba, 123, 50.2 , 0 );
setEffMoveKey( spep_8-3 + 64, ctba, 122.9, 49.8 , 0 );
setEffMoveKey( spep_8-3 + 66, ctba, 122.4, 52.3 , 0 );
setEffMoveKey( spep_8-3 + 68, ctba, 122.1, 53.4 , 0 );

setEffScaleKey( spep_8-3 + 44, ctba, 0, 0 );
setEffScaleKey( spep_8-3 + 46, ctba, 0.2, 0.21 );
setEffScaleKey( spep_8-3 + 48, ctba, 0.4, 0.41 );
setEffScaleKey( spep_8-3 + 50, ctba, 0.59, 0.62 );
setEffScaleKey( spep_8-3 + 52, ctba, 0.6, 0.63 );
setEffScaleKey( spep_8-3 + 54, ctba, 0.61, 0.64 );
setEffScaleKey( spep_8-3 + 56, ctba, 0.62, 0.65 );
setEffScaleKey( spep_8-3 + 58, ctba, 0.63, 0.66 );
setEffScaleKey( spep_8-3 + 60, ctba, 0.64, 0.67 );
setEffScaleKey( spep_8-3 + 62, ctba, 0.65, 0.68 );
setEffScaleKey( spep_8-3 + 64, ctba, 0.87, 0.89 );
setEffScaleKey( spep_8-3 + 66, ctba, 1.08, 1.09 );
setEffScaleKey( spep_8-3 + 68, ctba, 1.29, 1.3 );

setEffRotateKey( spep_8-3 + 44, ctba, 25 );
setEffRotateKey( spep_8-3 + 46, ctba, 24.9 );
setEffRotateKey( spep_8-3 + 68, ctba, 24.9 );

setEffAlphaKey( spep_8-3 + 44, ctba, 255 );
setEffAlphaKey( spep_8-3 + 62, ctba, 255 );
setEffAlphaKey( spep_8-3 + 64, ctba, 170 );
setEffAlphaKey( spep_8-3 + 66, ctba, 85 );
setEffAlphaKey( spep_8-3 + 68, ctba, 0 );

--敵の動き
setDisp( spep_8-3 + 13, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 34.8, -687.6 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 28.5, -745.2 , 0 );
setMoveKey( spep_8-3 + 4, 1, 22.2, -802.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, 15.8, -860.4 , 0 );
setMoveKey( spep_8-3 + 8, 1, 9.5, -918 , 0 );
setMoveKey( spep_8-3 + 10, 1, 3.2, -975.6 , 0 );
setMoveKey( spep_8-3 + 13, 1, -3.1, -1033.2 , 0 );

setScaleKey( spep_8 + 0, 1, 6.93, 6.93 );
--setScaleKey( spep_8-3 + 2, 1, 7.36, 7.36 );
setScaleKey( spep_8-3 + 4, 1, 7.8, 7.8 );
setScaleKey( spep_8-3 + 6, 1, 8.23, 8.23 );
setScaleKey( spep_8-3 + 8, 1, 8.67, 8.67 );
setScaleKey( spep_8-3 + 10, 1, 9.1, 9.1 );
setScaleKey( spep_8-3 + 13, 1, 9.54, 9.54 );

setRotateKey( spep_8 + 0, 1, 26 );
setRotateKey( spep_8-3 + 13, 1, 26 );


--敵の動き
setDisp( spep_8-3 + 100, 1, 1 );
setDisp( spep_8-2 + 118, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

a=120;

setMoveKey( spep_8-3 + 100, 1, 125-a, -851.2 , 0 );
setMoveKey( spep_8-3 + 102, 1, 123.7-a, -817.9 , 0 );
setMoveKey( spep_8-3 + 104, 1, 122.3-a, -784.7 , 0 );
setMoveKey( spep_8-3 + 106, 1, 121-a, -751.4 , 0 );
setMoveKey( spep_8-3 + 108, 1, 119.7-a, -718.1 , 0 );
setMoveKey( spep_8-3 + 110, 1, 118.3-a, -684.8 , 0 );
setMoveKey( spep_8-3 + 112, 1, 117-a, -651.6 , 0 );
setMoveKey( spep_8-3 + 114, 1, 115.7-a, -618.3 , 0 );
setMoveKey( spep_8-3 + 116, 1, 114.3-a, -585 , 0 );
setMoveKey( spep_8-2 + 118, 1, 113-a, -551.8 , 0 );

setScaleKey( spep_8-3 + 100, 1, 10.07, 10.07 );
setScaleKey( spep_8-3 + 102, 1, 9.91, 9.91 );
setScaleKey( spep_8-3 + 104, 1, 9.76, 9.76 );
setScaleKey( spep_8-3 + 106, 1, 9.6, 9.6 );
setScaleKey( spep_8-3 + 108, 1, 9.45, 9.45 );
setScaleKey( spep_8-3 + 110, 1, 9.29, 9.29 );
setScaleKey( spep_8-3 + 112, 1, 9.14, 9.14 );
setScaleKey( spep_8-3 + 114, 1, 8.98, 8.98 );
setScaleKey( spep_8-3 + 116, 1, 8.83, 8.83 );
setScaleKey( spep_8-2 + 118, 1, 8.67, 8.67 );

setRotateKey( spep_8-3 + 100, 1, -9 );
setRotateKey( spep_8-2 + 118, 1, -9 );

--SE
--おりる
SE024 = playSe( spep_8 + 0, 63 );
stopSe( spep_8 + 36, SE024, 12 );

--着地
SE025 = playSe( spep_8 + 30, 1108 );
setSeVolumeByWorkId( spep_8 + 30, SE025, 186 );
SE026 = playSe( spep_8 + 32, 1106 );
setSeVolumeByWorkId( spep_8 + 32, SE026, 216 );

--飛び上がる
SE027 = playSe( spep_8 + 44, 1182 );
SE028 = playSe( spep_8 + 44, 1207 );
setSeVolumeByWorkId( spep_8 + 44, SE028, 0 );
setSeVolumeByWorkId( spep_8 + 45, SE028, 3.4 );
setSeVolumeByWorkId( spep_8 + 46, SE028, 6.8 );
setSeVolumeByWorkId( spep_8 + 47, SE028, 10.2 );
setSeVolumeByWorkId( spep_8 + 48, SE028, 13.6 );
setSeVolumeByWorkId( spep_8 + 49, SE028, 17 );
setSeVolumeByWorkId( spep_8 + 50, SE028, 20.4 );
setSeVolumeByWorkId( spep_8 + 51, SE028, 23.8 );
setSeVolumeByWorkId( spep_8 + 52, SE028, 27.2 );
setSeVolumeByWorkId( spep_8 + 53, SE028, 30.6 );
setSeVolumeByWorkId( spep_8 + 54, SE028, 34 );
setSeVolumeByWorkId( spep_8 + 55, SE028, 37.4 );
setSeVolumeByWorkId( spep_8 + 56, SE028, 40.8 );
setSeVolumeByWorkId( spep_8 + 57, SE028, 44.2 );
setSeVolumeByWorkId( spep_8 + 58, SE028, 47.6 );
setSeVolumeByWorkId( spep_8 + 59, SE028, 51 );
setSeVolumeByWorkId( spep_8 + 60, SE028, 54 );
stopSe( spep_8 + 98, SE028, 26 );
SE029 = playSe( spep_8 + 44, 1116 );
setSeVolumeByWorkId( spep_8 + 44, SE029, 77 );
SE030 = playSe( spep_8 + 68, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+116;
------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_9 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_9 + 20,cut, 0, 0, 0 );
setEffScaleKey( spep_9 + 0,cut, -1.0, 1.0 );
setEffScaleKey( spep_9 + 20,cut, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0,cut, 0 );
setEffRotateKey( spep_9 + 20,cut, 0 );
setEffAlphaKey( spep_9 + 0,cut, 255 );
setEffAlphaKey( spep_9 + 18,cut, 255 );
setEffAlphaKey( spep_9 + 19,cut, 255 );
setEffAlphaKey( spep_9 + 20,cut, 0 );

--SE
--飛び上がる
stopSe( spep_9 + 0, SE029, 10 );

--ラスト切り
SE031 = playSe( spep_9 + 0, 1004 );
SE032 = playSe( spep_9 + 2, 1061 );
setSeVolumeByWorkId( spep_9 + 2, SE032, 121 );
SE033 = playSe( spep_9 + 2, 1142 );
setSeVolumeByWorkId( spep_9 + 2, SE033, 99 )
SE034 = playSe( spep_9 + 4, 1318 );
setSeVolumeByWorkId( spep_9 + 4, SE034, 126 );
SE035 = playSe( spep_9 + 4, 1319 );
setSeVolumeByWorkId( spep_9 + 4, SE035, 158 );
setTimeStretch( SE035, 0.84, 10, 1 );
SE036 = playSe( spep_9 + 6, 1032 );
setSeVolumeByWorkId( spep_9 + 6, SE036, 126 );
SE037 = playSe( spep_9 + 10, 1141 );
setSeVolumeByWorkId( spep_9 + 10, SE037, 121 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 24, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+20;
------------------------------------------------------
-- 敵を斬った後の余韻
------------------------------------------------------
-- ** エフェクト等 ** --
afterglow_f = entryEffect( spep_10 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0,afterglow_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 76,afterglow_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0,afterglow_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76,afterglow_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0,afterglow_f, 0 );
setEffRotateKey( spep_10 + 76,afterglow_f, 0 );
setEffAlphaKey( spep_10 + 0,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 74,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 75,afterglow_f, 255 );
setEffAlphaKey( spep_10 + 76,afterglow_f, 0 );

-- ** エフェクト等 ** --
afterglow_b = entryEffect( spep_10 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0,afterglow_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 76,afterglow_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0,afterglow_b, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76,afterglow_b, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0,afterglow_b, 0 );
setEffRotateKey( spep_10 + 76,afterglow_b, 0 );
setEffAlphaKey( spep_10 + 0,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 74,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 75,afterglow_b, 255 );
setEffAlphaKey( spep_10 + 76,afterglow_b, 0 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 78, 1, 0 );

changeAnime( spep_10 + 0, 1, 105 );

setMoveKey( spep_10 + 0, 1, -56.6, 234 , 0 );
setMoveKey( spep_10 + 2, 1, -62.5, 237.6 , 0 );
setMoveKey( spep_10 + 4, 1, -54, 229.1 , 0 );
setMoveKey( spep_10 + 6, 1, -48.5, 235.2 , 0 );
setMoveKey( spep_10 + 8, 1, -56.6, 232.9 , 0 );
setMoveKey( spep_10 + 10, 1, -56.6, 232.6 , 0 );
setMoveKey( spep_10 + 12, 1, -56.6, 232.4 , 0 );
setMoveKey( spep_10 + 14, 1, -56.6, 232.1 , 0 );
setMoveKey( spep_10 + 16, 1, -56.6, 231.8 , 0 );
setMoveKey( spep_10 + 18, 1, -56.6, 231.6 , 0 );
setMoveKey( spep_10 + 20, 1, -56.6, 231.3 , 0 );
setMoveKey( spep_10 + 22, 1, -56.6, 231 , 0 );
setMoveKey( spep_10 + 24, 1, -56.6, 230.7 , 0 );
setMoveKey( spep_10 + 26, 1, -56.6, 230.5 , 0 );
setMoveKey( spep_10 + 28, 1, -56.6, 230.2 , 0 );
setMoveKey( spep_10 + 30, 1, -56.6, 229.9 , 0 );
setMoveKey( spep_10 + 32, 1, -56.6, 229.7 , 0 );
setMoveKey( spep_10 + 34, 1, -56.6, 229.4 , 0 );
setMoveKey( spep_10 + 36, 1, -56.6, 229.1 , 0 );
setMoveKey( spep_10 + 38, 1, -56.6, 228.8 , 0 );
setMoveKey( spep_10 + 40, 1, -56.6, 228.6 , 0 );
setMoveKey( spep_10 + 42, 1, -56.6, 228.3 , 0 );
setMoveKey( spep_10 + 44, 1, -56.6, 228 , 0 );
setMoveKey( spep_10 + 46, 1, -56.6, 227.7 , 0 );
setMoveKey( spep_10 + 48, 1, -56.6, 227.5 , 0 );
setMoveKey( spep_10 + 50, 1, -56.6, 227.2 , 0 );
setMoveKey( spep_10 + 52, 1, -56.6, 226.9 , 0 );
setMoveKey( spep_10 + 54, 1, -56.6, 226.7 , 0 );
setMoveKey( spep_10 + 56, 1, -56.6, 226.4 , 0 );
setMoveKey( spep_10 + 58, 1, -56.6, 226.1 , 0 );
setMoveKey( spep_10 + 60, 1, -56.6, 225.8 , 0 );
setMoveKey( spep_10 + 62, 1, -56.6, 225.6 , 0 );
setMoveKey( spep_10 + 64, 1, -56.6, 225.3 , 0 );
setMoveKey( spep_10 + 66, 1, -56.6, 225 , 0 );
setMoveKey( spep_10 + 68, 1, -56.6, 224.8 , 0 );
setMoveKey( spep_10 + 70, 1, -56.6, 224.5 , 0 );
setMoveKey( spep_10 + 72, 1, -56.6, 224.2 , 0 );
setMoveKey( spep_10 + 74, 1, -56.6, 223.9 , 0 );
setMoveKey( spep_10 + 76, 1, -56.6, 223.7 , 0 );
setMoveKey( spep_10 + 78, 1, -56.6, 223.4 , 0 );

setScaleKey( spep_10 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_10 + 44, 1, 1.49, 1.49 );
setScaleKey( spep_10 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_10 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_10 + 74, 1, 1.47, 1.48 );
setScaleKey( spep_10 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_10 + 78, 1, 1.47, 1.47 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 + 2, 1, -0.1 );
setRotateKey( spep_10 + 4, 1, -0.2 );
setRotateKey( spep_10 + 6, 1, -0.3 );
setRotateKey( spep_10 + 8, 1, -0.3 );
setRotateKey( spep_10 + 10, 1, -0.4 );
setRotateKey( spep_10 + 12, 1, -0.5 );
setRotateKey( spep_10 + 14, 1, -0.6 );
setRotateKey( spep_10 + 16, 1, -0.7 );
setRotateKey( spep_10 + 18, 1, -0.8 );
setRotateKey( spep_10 + 20, 1, -0.8 );
setRotateKey( spep_10 + 22, 1, -0.9 );
setRotateKey( spep_10 + 24, 1, -1 );
setRotateKey( spep_10 + 26, 1, -1.1 );
setRotateKey( spep_10 + 28, 1, -1.2 );
setRotateKey( spep_10 + 30, 1, -1.3 );
setRotateKey( spep_10 + 32, 1, -1.4 );
setRotateKey( spep_10 + 34, 1, -1.4 );
setRotateKey( spep_10 + 36, 1, -1.5 );
setRotateKey( spep_10 + 38, 1, -1.6 );
setRotateKey( spep_10 + 40, 1, -1.7 );
setRotateKey( spep_10 + 42, 1, -1.8 );
setRotateKey( spep_10 + 44, 1, -1.9 );
setRotateKey( spep_10 + 46, 1, -1.9 );
setRotateKey( spep_10 + 48, 1, -2 );
setRotateKey( spep_10 + 50, 1, -2.1 );
setRotateKey( spep_10 + 52, 1, -2.2 );
setRotateKey( spep_10 + 54, 1, -2.3 );
setRotateKey( spep_10 + 56, 1, -2.4 );
setRotateKey( spep_10 + 58, 1, -2.5 );
setRotateKey( spep_10 + 60, 1, -2.5 );
setRotateKey( spep_10 + 62, 1, -2.6 );
setRotateKey( spep_10 + 64, 1, -2.7 );
setRotateKey( spep_10 + 66, 1, -2.8 );
setRotateKey( spep_10 + 68, 1, -2.9 );
setRotateKey( spep_10 + 70, 1, -3 );
setRotateKey( spep_10 + 72, 1, -3.1 );
setRotateKey( spep_10 + 74, 1, -3.1 );
setRotateKey( spep_10 + 76, 1, -3.2 );
setRotateKey( spep_10 + 78, 1, -3.3 );

--SE
--爆発前予兆
SE038 = playSe( spep_10 + 0, 1157 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_11=spep_10+76;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0,finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 200,finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0,finish, -1.0, 1.0 );
setEffScaleKey( spep_11 + 200,finish, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0,finish, 0 );
setEffRotateKey( spep_11 + 200,finish, 0 );
setEffAlphaKey( spep_11 + 0,finish, 255 );
setEffAlphaKey( spep_11 + 200,finish, 255 );

--SE
--爆発
SE039 = playSe( spep_11 + 0, 1023 );	
SE040 = playSe( spep_11 + 4, 1159 );
setSeVolumeByWorkId( spep_11 + 4, SE040, 79 );

--向き合う
SE041 = playSe( spep_11 + 118, 4 );

dealDamage( spep_11 +10 );
endPhase( spep_11 + 190 );
end