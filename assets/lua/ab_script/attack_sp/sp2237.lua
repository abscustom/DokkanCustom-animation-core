--1022650:超ベジータ_ファイナルフラッシュ
--sp_effect_a1_00304
--sp2237

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
SP_01=	157742	;--	気溜め
SP_02=	157743	;--	構える
SP_03=	157744	;--	正面構え
SP_04=	157745	;--	迫るスパーク　前前
SP_05=	157746	;--	迫るスパーク　背面
SP_06=	157747	;--	構えセリフカットイン
SP_07=	157748	;--	技名さけぶ
SP_08=	157750	;--	発射する
SP_09=	157751	;--	敵へ発射
SP_10=	157753	;--	敵へ発射　背景
SP_11=	157754	;--	せまる　前面
SP_12=	157755	;--	せまる　背面
SP_13=	157756	;--	フィニッシュ1
SP_14=	157757	;--	フィニッシュ2
SP_15=	157758	;--	フィニッシュ3
SP_16=	157759	;--	KO演出用

--エフェクト(敵)
SP_01x=	157742	;--	気溜め	
SP_02x=	157743	;--	構える	
SP_03x=	157744	;--	正面構え	
SP_04x=	157745	;--	迫るスパーク　前前	
SP_05x=	157746	;--	迫るスパーク　背面	
SP_06x=	157747	;--	構えセリフカットイン	
SP_07x=	157749	;--	技名さけぶ	(敵)
SP_08x=	157750	;--	発射する	
SP_09x=	157752	;--	敵へ発射	(敵)
SP_10x=	157753	;--	敵へ発射　背景	
SP_11x=	157754	;--	せまる　前面	
SP_12x=	157755	;--	せまる　背面	
SP_13x=	157756	;--	フィニッシュ1	
SP_14x=	157757	;--	フィニッシュ2	
SP_15x=	157758	;--	フィニッシュ3	
SP_16x=	157759	;--	KO演出用	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 74, tame, 255 );
setEffAlphaKey( spep_0 + 75, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 0 );

--SE
--腕クロス
SE001 = playSe( spep_0 + 10, 1003 );

--腕広げる
SE002 = playSe( spep_0 + 26, 1012 );
SE003 = playSe( spep_0 + 26, 1006 );

--光広がる
SE004 = playSe( spep_0 + 44, 1035 );
SE005 = playSe( spep_0 + 44, 1026 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
-- 構える
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_1 + 136, hold, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, hold, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hold, 0 );
setEffRotateKey( spep_1 + 136, hold, 0 );
setEffAlphaKey( spep_1 + 0, hold, 255 );
setEffAlphaKey( spep_1 + 134, hold, 255 );
setEffAlphaKey( spep_1 + 135, hold, 255 );
setEffAlphaKey( spep_1 + 136, hold, 0 );

--SE
--オーラ
SE006 = playSe( spep_1 + 0, 1036 ,"",0.7 );
setSeVolumeByWorkId( spep_1 + 0, SE006, 79 );
SE007 = playSe( spep_1 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 24, SE007, 79 );

--腕を前に出す
SE008 = playSe( spep_1 + 28, 1233 );
setSeVolumeByWorkId( spep_1 + 24, SE008, 79 );
SE009 = playSe( spep_1 + 38, 1006 );

--気弾溜め
SE010 = playSe( spep_1 + 34, 1243 );
setSeVolumeByWorkId( spep_1 + 34, SE010, 153 );
setPitch( spep_1 + 34, SE010, -800 );
setTimeStretch( SE010, 0.47, 10, 1 );
SE011 = playSe( spep_1 + 34, 1226 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 68 );

--オーラ
SE012 = playSe( spep_1 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 48, SE012, 79 );
SE013 = playSe( spep_1 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 72, SE013, 79 );
SE014 = playSe( spep_1 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 96, SE014, 79 );

--気弾溜め
SE015 = playSe( spep_1 + 104, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE015, 316 );
setPitch( spep_1 + 104, SE015, 100 );
setTimeStretch( SE015, 1.07, 10, 1 );

--オーラ
SE016 = playSe( spep_1 + 120, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 120, SE016, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+136;
------------------------------------------------------
-- 正面構え
------------------------------------------------------
-- ** エフェクト等 ** --
front = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, front, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, front, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, front, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, front, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, front, 0 );
setEffRotateKey( spep_2 + 76, front, 0 );
setEffAlphaKey( spep_2 + 0, front, 255 );
setEffAlphaKey( spep_2 + 74, front, 255 );
setEffAlphaKey( spep_2 + 75, front, 255 );
setEffAlphaKey( spep_2 + 76, front, 0 );

--SE
--気弾溜め
stopSe( spep_2 + 4, SE015, 12 );

--オーラ
SE018 = playSe( spep_2 + 8, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 8, SE018, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 28; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );



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

--気弾溜め
SE019 = playSe( spep_2 + 16, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 16, SE019, 316 );
stopSe( spep_2 + 42, SE019, 10 );
setPitch( spep_2 + 16, SE019, 100 );
setTimeStretch( SE019, 1.07, 10, 1 );

--オーラ
SE020 = playSe( spep_2 + 32, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 32, SE020, 79 );

--気弾溜め
SE021 = playSe( spep_2 + 52, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 52, SE021, 316 );
stopSe( spep_2 + 82, SE021, 10 );
setPitch( spep_2 + 52, SE021, 100 );
setTimeStretch( SE021, 1.07, 10, 1 );

--オーラ
SE022 = playSe( spep_2 + 56, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 56, SE022, 79 );

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 迫るスパーク
------------------------------------------------------
-- ** エフェクト等 ** --
spark_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, spark_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, spark_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, spark_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, spark_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spark_f, 0 );
setEffRotateKey( spep_3 + 112, spark_f, 0 );
setEffAlphaKey( spep_3 + 0, spark_f, 255 );
setEffAlphaKey( spep_3 + 110, spark_f, 255 );
setEffAlphaKey( spep_3 + 111, spark_f, 255 );
setEffAlphaKey( spep_3 + 112, spark_f, 0 );

-- ** エフェクト等 ** --
spark_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, spark_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, spark_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, spark_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, spark_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spark_b, 0 );
setEffRotateKey( spep_3 + 112, spark_b, 0 );
setEffAlphaKey( spep_3 + 0, spark_b, 255 );
setEffAlphaKey( spep_3 + 110, spark_b, 255 );
setEffAlphaKey( spep_3 + 111, spark_b, 255 );
setEffAlphaKey( spep_3 + 112, spark_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 42, 1, 0 );

changeAnime( spep_3 + 0, 1, 118 );

setMoveKey( spep_3 + 0, 1, 194.7, -299.3 , 0 );
setMoveKey( spep_3 + 22, 1, 194.7, -299.3 , 0 );
setMoveKey( spep_3 + 24, 1, 188.7, -284.3 , 0 );
setMoveKey( spep_3 + 26, 1, 200.7, -308.3 , 0 );
setMoveKey( spep_3 + 28, 1, 185.7, -293.3 , 0 );
setMoveKey( spep_3 + 30, 1, 200.7, -305.3 , 0 );
setMoveKey( spep_3 + 32, 1, 194.7, -290.3 , 0 );
setMoveKey( spep_3 + 34, 1, 200.7, -305.3 , 0 );
setMoveKey( spep_3 + 36, 1, 188.7, -284.3 , 0 );
setMoveKey( spep_3 + 38, 1, 200.7, -308.3 , 0 );
setMoveKey( spep_3 + 42, 1, 185.7, -293.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 42, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 42, 1, 0 );

--SE
--オーラ
stopSe( spep_3 + 12, SE010, 6 ,"",0.7);

--稲光
SE017 = playSe( spep_3 + 0, 1342 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 1, SE017, 41.9 );
setSeVolumeByWorkId( spep_3 + 2, SE017, 83.8 );
setSeVolumeByWorkId( spep_3 + 3, SE017, 125.7 );
setSeVolumeByWorkId( spep_3 + 4, SE017, 167.6 );
setSeVolumeByWorkId( spep_3 + 5, SE017, 209.5 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 251 );
setStartTimeMs( SE017,  1367 );
stopSe( spep_3 + 100, SE017, 52 );

--イナヅマ爆発
SE023 = playSe( spep_3 + 20, 1023 );
setSeVolumeByWorkId( spep_3 + 40, SE023, 79 );
SE024 = playSe( spep_3 + 40, 1159 );
setSeVolumeByWorkId( spep_3 + 40, SE024, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 116, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+112;
------------------------------------------------------
-- 構えセリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, ready, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, ready, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ready, 0 );
setEffRotateKey( spep_4 + 120, ready, 0 );
setEffAlphaKey( spep_4 + 0, ready, 255 );
setEffAlphaKey( spep_4 + 120, ready, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
--オーラ
SE025 = playSe( spep_4 + 0, 1036 ,"",0.7);

--気弾溜め
SE026 = playSe( spep_4 + 4, 1243 );
setSeVolumeByWorkId( spep_4 + 4, SE026, 146 );
setPitch( spep_4 + 4, SE026, -800 );
setTimeStretch( SE026, 0.47, 10, 1 );
SE027 = playSe( spep_4 + 4, 1226 );
setSeVolumeByWorkId( spep_4 + 4, SE027, 71 );
SE028 = playSe( spep_4 + 14, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 14, SE028, 251 );
setPitch( spep_4 + 14, SE028, 100 );
setTimeStretch( SE028, 1.07, 10, 1 );
stopSe( spep_4 + 44, SE028, 10 );

--オーラ
SE029 = playSe( spep_4 + 24, 1036 ,"",0.7);

--顔カットイン
SE030 = playSe( spep_x + 12, 1018 );

--オーラ
SE031 = playSe( spep_4 + 48, 1036 ,"",0.7);
SE032 = playSe( spep_4 + 72, 1036 ,"",0.7);

--気弾溜め
SE033 = playSe( spep_4 + 78, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 78, SE033, 251 );
stopSe( spep_4 + 106, SE033, 12 );
setPitch( spep_4 + 78, SE033, 100 );
setTimeStretch( SE033, 1.07, 10, 1 );

--オーラ
SE034 = playSe( spep_4 + 96, 1036 ,"",0.7);


-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_c = spep_5

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
stopSe( spep_c + 4, SE026, 6 );
stopSe( spep_c + 4, SE027, 6 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_6 = spep_c + 94

------------------------------------------------------
-- 技名さけぶ
------------------------------------------------------
-- ** エフェクト等 ** --
cry = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, cry, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, cry, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, cry, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, cry, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, cry, 0 );
setEffRotateKey( spep_6 + 116, cry, 0 );
setEffAlphaKey( spep_6 + 0, cry, 255 );
setEffAlphaKey( spep_6 + 114, cry, 255 );
setEffAlphaKey( spep_6 + 115, cry, 255 );
setEffAlphaKey( spep_6 + 116, cry, 0 );

--SE
--オーラ
SE036 = playSe( spep_6 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 0, SE036, 79 );

--カットインあけ気弾溜め
SE037 = playSe( spep_6 + 0, 1243 );
setSeVolumeByWorkId( spep_6 + 0, SE037, 151 );
setPitch( spep_6 + 0, SE037, -800 );
setTimeStretch( SE037, 0.47, 10, 1 );
SE038 = playSe( spep_6 + 0, 1226 );
setSeVolumeByWorkId( spep_6 + 0, SE038, 68 );
SE039 = playSe( spep_6 + 6, 1158 );
setSeVolumeByWorkId( spep_6 + 6, SE039, 87 );
setPitch( spep_6 + 6, SE039, 400 );
setTimeStretch( SE039, 1.27, 10, 1 );
SE040 = playSe( spep_6 + 10, 1037 );
setSeVolumeByWorkId( spep_6 + 10, SE040, 86 );

--オーラ
SE041 = playSe( spep_6 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 24, SE041, 79 );
SE042 = playSe( spep_6 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 48, SE042, 79 );
SE043 = playSe( spep_6 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 72, SE043, 79 );
SE044 = playSe( spep_6 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 96, SE044, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+116;
------------------------------------------------------
-- 発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 44, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 44, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 44, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 42, beam, 255 );
setEffAlphaKey( spep_7 + 43, beam, 255 );
setEffAlphaKey( spep_7 + 44, beam, 0 );

--SE
--オーラ
SE045 = playSe( spep_7 + 4, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 4, SE045, 79 );

--発車前気弾溜め
SE046 = playSe( spep_7 + 12, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_7 + 12, SE046, 153 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+44;
------------------------------------------------------
-- 敵へ発射
------------------------------------------------------
-- ** エフェクト等 ** --
firing_f = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, firing_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, firing_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, firing_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, firing_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, firing_f, 0 );
setEffRotateKey( spep_8 + 56, firing_f, 0 );
setEffAlphaKey( spep_8 + 0, firing_f, 255 );
setEffAlphaKey( spep_8 + 54, firing_f, 255 );
setEffAlphaKey( spep_8 + 55, firing_f, 255 );
setEffAlphaKey( spep_8 + 56, firing_f, 0 );

-- ** エフェクト等 ** --
firing_b = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, firing_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, firing_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, firing_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, firing_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, firing_b, 0 );
setEffRotateKey( spep_8 + 56, firing_b, 0 );
setEffAlphaKey( spep_8 + 0, firing_b, 255 );
setEffAlphaKey( spep_8 + 54, firing_b, 255 );
setEffAlphaKey( spep_8 + 55, firing_b, 255 );
setEffAlphaKey( spep_8 + 56, firing_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );

changeAnime( spep_8 + 0, 1, 117 );

setMoveKey( spep_8 + 0, 1, 262.5, 459 , 0 );
setMoveKey( spep_8-3 + 4, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 5, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 7, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 8, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 9, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 11, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 12, 1, 262.5, 453.6 , 0 );
setMoveKey( spep_8-3 + 13, 1, 262.5, 453.6 , 0 );
setMoveKey( spep_8-3 + 14, 1, 254.4, 467.1 , 0 );
setMoveKey( spep_8-3 + 15, 1, 254.4, 467.1 , 0 );
setMoveKey( spep_8-3 + 16, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 17, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 18, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 19, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 20, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 21, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 23, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 24, 1, 263.3, 451 , 0 );
setMoveKey( spep_8-3 + 25, 1, 263.3, 451 , 0 );
setMoveKey( spep_8-3 + 26, 1, 256, 461.9 , 0 );
setMoveKey( spep_8-3 + 27, 1, 256, 461.9 , 0 );
setMoveKey( spep_8-3 + 28, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 29, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 30, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 31, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 32, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 33, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 35, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 36, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 37, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 38, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 39, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 40, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 41, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 42, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 43, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 44, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 45, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 46, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 47, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 48, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 49, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 50, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 51, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 52, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 53, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 54, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 55, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 56, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 57, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 58, 1, 264.9, 456.5 , 0 );

setScaleKey( spep_8 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_8 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_8 + 24, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_8 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_8 + 55, 1, 0.32, 0.32 );

setRotateKey( spep_8 + 0, 1, 30.7 );
setRotateKey( spep_8 + 55, 1, 30.7 );

--SE
--カットインあけ気弾溜め
stopSe( spep_8 + 2, SE037, 20 );
stopSe( spep_8 + 2, SE038, 20 );
stopSe( spep_8 + 14, SE039, 10 );

--発車前気弾溜め
stopSe( spep_8 + 16, SE046, 16 );

--気弾発射
SE047 = playSe( spep_8 + 18, 1027 );
setSeVolumeByWorkId( spep_8 + 18, SE047, 72 );
SE048 = playSe( spep_8 + 18, 1024 );
setSeVolumeByWorkId( spep_8 + 18, SE048, 84 );
SE049 = playSe( spep_8 + 18, 1068 );
setSeVolumeByWorkId( spep_8 + 18, SE049, 90 );
SE050 = playSe( spep_8 + 18, 1213 );
setSeVolumeByWorkId( spep_8 + 18, SE050, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
-- せまる
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, approaching_f, 0 );
setEffRotateKey( spep_9 + 56, approaching_f, 0 );
setEffAlphaKey( spep_9 + 0, approaching_f, 255 );
setEffAlphaKey( spep_9 + 54, approaching_f, 255 );
setEffAlphaKey( spep_9 + 55, approaching_f, 255 );
setEffAlphaKey( spep_9 + 56, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, approaching_b, 0 );
setEffRotateKey( spep_9 + 56, approaching_b, 0 );
setEffAlphaKey( spep_9 + 0, approaching_b, 255 );
setEffAlphaKey( spep_9 + 54, approaching_b, 255 );
setEffAlphaKey( spep_9 + 55, approaching_b, 255 );
setEffAlphaKey( spep_9 + 56, approaching_b, 0 );

--敵の動き
setDisp( spep_9 + 56, 1, 0 );

setBlendColor(spep_9+14,1,3,0,0,0,0);
setBlendColor(spep_9+15,1,3,0,0,0,0.09);
setBlendColor(spep_9+16,1,3,0,0,0,0.18);
setBlendColor(spep_9+17,1,3,0,0,0,0.27);
setBlendColor(spep_9+18,1,3,0,0,0,0.36);
setBlendColor(spep_9+19,1,3,0,0,0,0.45);
setBlendColor(spep_9+20,1,3,0,0,0,0.54);
setBlendColor(spep_9+21,1,3,0,0,0,0.63);
setBlendColor(spep_9+22,1,3,0,0,0,0.72);
setBlendColor(spep_9+23,1,3,0,0,0,0.81);
setBlendColor(spep_9+24,1,3,0,0,0,0.9);
setBlendColor(spep_9+25,1,3,0,0,0,1.0);
setBlendColor(spep_9+56,1,3,0,0,0,1.0);
setBlendColor(spep_9+58,1,3,0,0,0,0);

changeAnime( spep_9 + 0, 1, 118 );

setMoveKey( spep_9 + 0, 1, 247.2, -177.2 , 0 );
setMoveKey( spep_9 + 2, 1, 247.2, -177.1 , 0 );
setMoveKey( spep_9 + 56, 1, 247.2, -177.1 , 0 );

setScaleKey( spep_9 + 0, 1, 2.08, 2.08 );
setScaleKey( spep_9 + 56, 1, 2.08, 2.08 );

setRotateKey( spep_9 + 0, 1, 18.3 );
setRotateKey( spep_9 + 2, 1, 18.5 );
setRotateKey( spep_9 + 56, 1, 18.5 );

--SE
--気弾加速
SE051 = playSe( spep_9 + 0, 1021 );
setSeVolumeByWorkId( spep_9 + 0, SE051, 145 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+56;
------------------------------------------------------
-- フィニッシュ1
------------------------------------------------------
-- ** エフェクト等 ** --
finish1 = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish1, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, finish1, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish1, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, finish1, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish1, 0 );
setEffRotateKey( spep_10 + 56, finish1, 0 );
setEffAlphaKey( spep_10 + 0, finish1, 255 );
setEffAlphaKey( spep_10 + 54, finish1, 255 );
setEffAlphaKey( spep_10 + 55, finish1, 255 );
setEffAlphaKey( spep_10 + 56, finish1, 0 );

--SE
--気弾ヒット
SE052 = playSe( spep_10 + 0, 1258 );
setSeVolumeByWorkId( spep_10 + 0, SE052, 83 );
SE053 = playSe( spep_10 + 2, 1226 );
setSeVolumeByWorkId( spep_10 + 2, SE053, 89 );
SE054 = playSe( spep_10 + 2, 1159 );
setSeVolumeByWorkId( spep_10 + 2, SE054, 86 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
-- フィニッシュ2
------------------------------------------------------
-- ** エフェクト等 ** --
finish2 = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish2, 0, 0, 0 );
setEffMoveKey( spep_11 + 56, finish2, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish2, 1.0, 1.0 );
setEffScaleKey( spep_11 + 56, finish2, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish2, 0 );
setEffRotateKey( spep_11 + 56, finish2, 0 );
setEffAlphaKey( spep_11 + 0, finish2, 255 );
setEffAlphaKey( spep_11 + 54, finish2, 255 );
setEffAlphaKey( spep_11 + 55, finish2, 255 );
setEffAlphaKey( spep_11 + 56, finish2, 0 );

--SE
--爆発
SE055 = playSe( spep_11 + 0, 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_12=spep_11+56;
------------------------------------------------------
-- フィニッシュ3
------------------------------------------------------
-- ** エフェクト等 ** --
finish3 = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, finish3, 0, 0, 0 );
setEffMoveKey( spep_12 + 120, finish3, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, finish3, 1.0, 1.0 );
setEffScaleKey( spep_12 + 120, finish3, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish3, 0 );
setEffRotateKey( spep_12 + 120, finish3, 0 );
setEffAlphaKey( spep_12 + 0, finish3, 255 );
setEffAlphaKey( spep_12 + 120, finish3, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_12 + 108, SP_16,180,0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 108, KO, 0, 0, 0 );
setEffMoveKey( spep_12 + 288, KO, 0, 0, 0 );
setEffScaleKey( spep_12 + 108, KO, 1.0, 1.0 );
setEffScaleKey( spep_12 + 288, KO, 1.0, 1.0 );
setEffRotateKey( spep_12 + 108, KO, 0 );
setEffRotateKey( spep_12 + 288, KO, 0 );
setEffAlphaKey( spep_12 + 108, KO, 255 );
setEffAlphaKey( spep_12 + 288, KO, 255 );

--SE
--気弾ヒット
stopSe( spep_12 + 108, SE053, 10 );

--そして宇宙へ
SE056 = playSe( spep_12 + 0, 1343 );
setSeVolumeByWorkId( spep_12 + 0, SE056, 126 );
stopSe( spep_12 + 108, SE056, 6 );

--終わり
hideKoScreen();
dealDamage( spep_12 +0 );
endPhase( spep_12 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 74, tame, 255 );
setEffAlphaKey( spep_0 + 75, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 0 );

--SE
--腕クロス
SE001 = playSe( spep_0 + 10, 1003 );

--腕広げる
SE002 = playSe( spep_0 + 26, 1012 );
SE003 = playSe( spep_0 + 26, 1006 );

--光広がる
SE004 = playSe( spep_0 + 44, 1035 );
SE005 = playSe( spep_0 + 44, 1026 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
-- 構える
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_1 + 136, hold, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, hold, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hold, 0 );
setEffRotateKey( spep_1 + 136, hold, 0 );
setEffAlphaKey( spep_1 + 0, hold, 255 );
setEffAlphaKey( spep_1 + 134, hold, 255 );
setEffAlphaKey( spep_1 + 135, hold, 255 );
setEffAlphaKey( spep_1 + 136, hold, 0 );

--SE
--オーラ
SE006 = playSe( spep_1 + 0, 1036 ,"",0.7 );
setSeVolumeByWorkId( spep_1 + 0, SE006, 79 );
SE007 = playSe( spep_1 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 24, SE007, 79 );

--腕を前に出す
SE008 = playSe( spep_1 + 28, 1233 );
setSeVolumeByWorkId( spep_1 + 24, SE008, 79 );
SE009 = playSe( spep_1 + 38, 1006 );

--気弾溜め
SE010 = playSe( spep_1 + 34, 1243 );
setSeVolumeByWorkId( spep_1 + 34, SE010, 153 );
setPitch( spep_1 + 34, SE010, -800 );
setTimeStretch( SE010, 0.47, 10, 1 );
SE011 = playSe( spep_1 + 34, 1226 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 68 );

--オーラ
SE012 = playSe( spep_1 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 48, SE012, 79 );
SE013 = playSe( spep_1 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 72, SE013, 79 );
SE014 = playSe( spep_1 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 96, SE014, 79 );

--気弾溜め
SE015 = playSe( spep_1 + 104, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE015, 316 );
setPitch( spep_1 + 104, SE015, 100 );
setTimeStretch( SE015, 1.07, 10, 1 );

--オーラ
SE016 = playSe( spep_1 + 120, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 120, SE016, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+136;
------------------------------------------------------
-- 正面構え
------------------------------------------------------
-- ** エフェクト等 ** --
front = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, front, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, front, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, front, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, front, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, front, 0 );
setEffRotateKey( spep_2 + 76, front, 0 );
setEffAlphaKey( spep_2 + 0, front, 255 );
setEffAlphaKey( spep_2 + 74, front, 255 );
setEffAlphaKey( spep_2 + 75, front, 255 );
setEffAlphaKey( spep_2 + 76, front, 0 );

--SE
--気弾溜め
stopSe( spep_2 + 4, SE015, 12 );

--オーラ
SE018 = playSe( spep_2 + 8, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 8, SE018, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 28; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );



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

--気弾溜め
SE019 = playSe( spep_2 + 16, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 16, SE019, 316 );
stopSe( spep_2 + 42, SE019, 10 );
setPitch( spep_2 + 16, SE019, 100 );
setTimeStretch( SE019, 1.07, 10, 1 );

--オーラ
SE020 = playSe( spep_2 + 32, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 32, SE020, 79 );

--気弾溜め
SE021 = playSe( spep_2 + 52, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 52, SE021, 316 );
stopSe( spep_2 + 82, SE021, 10 );
setPitch( spep_2 + 52, SE021, 100 );
setTimeStretch( SE021, 1.07, 10, 1 );

--オーラ
SE022 = playSe( spep_2 + 56, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 56, SE022, 79 );

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 迫るスパーク
------------------------------------------------------
-- ** エフェクト等 ** --
spark_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, spark_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, spark_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, spark_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, spark_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spark_f, 0 );
setEffRotateKey( spep_3 + 112, spark_f, 0 );
setEffAlphaKey( spep_3 + 0, spark_f, 255 );
setEffAlphaKey( spep_3 + 110, spark_f, 255 );
setEffAlphaKey( spep_3 + 111, spark_f, 255 );
setEffAlphaKey( spep_3 + 112, spark_f, 0 );

-- ** エフェクト等 ** --
spark_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, spark_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, spark_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, spark_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, spark_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spark_b, 0 );
setEffRotateKey( spep_3 + 112, spark_b, 0 );
setEffAlphaKey( spep_3 + 0, spark_b, 255 );
setEffAlphaKey( spep_3 + 110, spark_b, 255 );
setEffAlphaKey( spep_3 + 111, spark_b, 255 );
setEffAlphaKey( spep_3 + 112, spark_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 42, 1, 0 );

changeAnime( spep_3 + 0, 1, 118 );

setMoveKey( spep_3 + 0, 1, 194.7, -299.3 , 0 );
setMoveKey( spep_3 + 22, 1, 194.7, -299.3 , 0 );
setMoveKey( spep_3 + 24, 1, 188.7, -284.3 , 0 );
setMoveKey( spep_3 + 26, 1, 200.7, -308.3 , 0 );
setMoveKey( spep_3 + 28, 1, 185.7, -293.3 , 0 );
setMoveKey( spep_3 + 30, 1, 200.7, -305.3 , 0 );
setMoveKey( spep_3 + 32, 1, 194.7, -290.3 , 0 );
setMoveKey( spep_3 + 34, 1, 200.7, -305.3 , 0 );
setMoveKey( spep_3 + 36, 1, 188.7, -284.3 , 0 );
setMoveKey( spep_3 + 38, 1, 200.7, -308.3 , 0 );
setMoveKey( spep_3 + 42, 1, 185.7, -293.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 42, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 42, 1, 0 );

--SE
--オーラ
stopSe( spep_3 + 12, SE010, 6 ,"",0.7);

--稲光
SE017 = playSe( spep_3 + 0, 1342 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 1, SE017, 41.9 );
setSeVolumeByWorkId( spep_3 + 2, SE017, 83.8 );
setSeVolumeByWorkId( spep_3 + 3, SE017, 125.7 );
setSeVolumeByWorkId( spep_3 + 4, SE017, 167.6 );
setSeVolumeByWorkId( spep_3 + 5, SE017, 209.5 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 251 );
setStartTimeMs( SE017,  1367 );
stopSe( spep_3 + 100, SE017, 52 );

--イナヅマ爆発
SE023 = playSe( spep_3 + 20, 1023 );
setSeVolumeByWorkId( spep_3 + 40, SE023, 79 );
SE024 = playSe( spep_3 + 40, 1159 );
setSeVolumeByWorkId( spep_3 + 40, SE024, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 116, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+112;
------------------------------------------------------
-- 構えセリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, ready, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, ready, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ready, 0 );
setEffRotateKey( spep_4 + 120, ready, 0 );
setEffAlphaKey( spep_4 + 0, ready, 255 );
setEffAlphaKey( spep_4 + 120, ready, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +20;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
]]--
--SE
--オーラ
SE025 = playSe( spep_4 + 0, 1036 ,"",0.7);

--気弾溜め
SE026 = playSe( spep_4 + 4, 1243 );
setSeVolumeByWorkId( spep_4 + 4, SE026, 146 );
setPitch( spep_4 + 4, SE026, -800 );
setTimeStretch( SE026, 0.47, 10, 1 );
SE027 = playSe( spep_4 + 4, 1226 );
setSeVolumeByWorkId( spep_4 + 4, SE027, 71 );
SE028 = playSe( spep_4 + 14, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 14, SE028, 251 );
setPitch( spep_4 + 14, SE028, 100 );
setTimeStretch( SE028, 1.07, 10, 1 );
stopSe( spep_4 + 44, SE028, 10 );

--オーラ
SE029 = playSe( spep_4 + 24, 1036 ,"",0.7);

--顔カットイン
SE030 = playSe( spep_x + 12, 1018 );

--オーラ
SE031 = playSe( spep_4 + 48, 1036 ,"",0.7);
SE032 = playSe( spep_4 + 72, 1036 ,"",0.7);

--気弾溜め
SE033 = playSe( spep_4 + 78, 1341 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 78, SE033, 251 );
stopSe( spep_4 + 106, SE033, 12 );
setPitch( spep_4 + 78, SE033, 100 );
setTimeStretch( SE033, 1.07, 10, 1 );

--オーラ
SE034 = playSe( spep_4 + 96, 1036 ,"",0.7);


-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+120;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_5

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
stopSe( spep_c + 4, SE026, 6 );
stopSe( spep_c + 4, SE027, 6 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_c + 94;

------------------------------------------------------
-- 技名さけぶ
------------------------------------------------------
-- ** エフェクト等 ** --
cry = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, cry, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, cry, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, cry, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, cry, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, cry, 0 );
setEffRotateKey( spep_6 + 116, cry, 0 );
setEffAlphaKey( spep_6 + 0, cry, 255 );
setEffAlphaKey( spep_6 + 114, cry, 255 );
setEffAlphaKey( spep_6 + 115, cry, 255 );
setEffAlphaKey( spep_6 + 116, cry, 0 );

--SE
--オーラ
SE036 = playSe( spep_6 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 0, SE036, 79 );

--カットインあけ気弾溜め
SE037 = playSe( spep_6 + 0, 1243 );
setSeVolumeByWorkId( spep_6 + 0, SE037, 151 );
setPitch( spep_6 + 0, SE037, -800 );
setTimeStretch( SE037, 0.47, 10, 1 );
SE038 = playSe( spep_6 + 0, 1226 );
setSeVolumeByWorkId( spep_6 + 0, SE038, 68 );
SE039 = playSe( spep_6 + 6, 1158 );
setSeVolumeByWorkId( spep_6 + 6, SE039, 87 );
setPitch( spep_6 + 6, SE039, 400 );
setTimeStretch( SE039, 1.27, 10, 1 );
SE040 = playSe( spep_6 + 10, 1037 );
setSeVolumeByWorkId( spep_6 + 10, SE040, 86 );

--オーラ
SE041 = playSe( spep_6 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 24, SE041, 79 );
SE042 = playSe( spep_6 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 48, SE042, 79 );
SE043 = playSe( spep_6 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 72, SE043, 79 );
SE044 = playSe( spep_6 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 96, SE044, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+116;
------------------------------------------------------
-- 発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 44, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 44, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 44, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 42, beam, 255 );
setEffAlphaKey( spep_7 + 43, beam, 255 );
setEffAlphaKey( spep_7 + 44, beam, 0 );

--SE
--オーラ
SE045 = playSe( spep_7 + 4, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 4, SE045, 79 );

--発車前気弾溜め
SE046 = playSe( spep_7 + 12, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_7 + 12, SE046, 153 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+44;
------------------------------------------------------
-- 敵へ発射
------------------------------------------------------
-- ** エフェクト等 ** --
firing_f = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, firing_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, firing_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, firing_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, firing_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, firing_f, 0 );
setEffRotateKey( spep_8 + 56, firing_f, 0 );
setEffAlphaKey( spep_8 + 0, firing_f, 255 );
setEffAlphaKey( spep_8 + 54, firing_f, 255 );
setEffAlphaKey( spep_8 + 55, firing_f, 255 );
setEffAlphaKey( spep_8 + 56, firing_f, 0 );

-- ** エフェクト等 ** --
firing_b = entryEffect( spep_8 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, firing_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, firing_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, firing_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, firing_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, firing_b, 0 );
setEffRotateKey( spep_8 + 56, firing_b, 0 );
setEffAlphaKey( spep_8 + 0, firing_b, 255 );
setEffAlphaKey( spep_8 + 54, firing_b, 255 );
setEffAlphaKey( spep_8 + 55, firing_b, 255 );
setEffAlphaKey( spep_8 + 56, firing_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );

changeAnime( spep_8 + 0, 1, 117 );

setMoveKey( spep_8 + 0, 1, 262.5, 459 , 0 );
setMoveKey( spep_8-3 + 4, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 5, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 7, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 8, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 9, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 11, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 12, 1, 262.5, 453.6 , 0 );
setMoveKey( spep_8-3 + 13, 1, 262.5, 453.6 , 0 );
setMoveKey( spep_8-3 + 14, 1, 254.4, 467.1 , 0 );
setMoveKey( spep_8-3 + 15, 1, 254.4, 467.1 , 0 );
setMoveKey( spep_8-3 + 16, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 17, 1, 267.9, 450.9 , 0 );
setMoveKey( spep_8-3 + 18, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 19, 1, 257.1, 461.7 , 0 );
setMoveKey( spep_8-3 + 20, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 21, 1, 267.9, 456.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 23, 1, 262.5, 464.4 , 0 );
setMoveKey( spep_8-3 + 24, 1, 263.3, 451 , 0 );
setMoveKey( spep_8-3 + 25, 1, 263.3, 451 , 0 );
setMoveKey( spep_8-3 + 26, 1, 256, 461.9 , 0 );
setMoveKey( spep_8-3 + 27, 1, 256, 461.9 , 0 );
setMoveKey( spep_8-3 + 28, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 29, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 30, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 31, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 32, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 33, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 35, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 36, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 37, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 38, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 39, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 40, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 41, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 42, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 43, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 44, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 45, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 46, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 47, 1, 264.9, 456.5 , 0 );
setMoveKey( spep_8-3 + 48, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 49, 1, 264.9, 445.7 , 0 );
setMoveKey( spep_8-3 + 50, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 51, 1, 256.8, 459.2 , 0 );
setMoveKey( spep_8-3 + 52, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 53, 1, 270.3, 443 , 0 );
setMoveKey( spep_8-3 + 54, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 55, 1, 259.5, 453.8 , 0 );
setMoveKey( spep_8-3 + 56, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 57, 1, 270.3, 448.4 , 0 );
setMoveKey( spep_8-3 + 58, 1, 264.9, 456.5 , 0 );

setScaleKey( spep_8 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_8 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_8 + 24, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_8 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_8 + 55, 1, 0.32, 0.32 );

setRotateKey( spep_8 + 0, 1, 30.7 );
setRotateKey( spep_8 + 55, 1, 30.7 );

--SE
--カットインあけ気弾溜め
stopSe( spep_8 + 2, SE037, 20 );
stopSe( spep_8 + 2, SE038, 20 );
stopSe( spep_8 + 14, SE039, 10 );

--発車前気弾溜め
stopSe( spep_8 + 16, SE046, 16 );

--気弾発射
SE047 = playSe( spep_8 + 18, 1027 );
setSeVolumeByWorkId( spep_8 + 18, SE047, 72 );
SE048 = playSe( spep_8 + 18, 1024 );
setSeVolumeByWorkId( spep_8 + 18, SE048, 84 );
SE049 = playSe( spep_8 + 18, 1068 );
setSeVolumeByWorkId( spep_8 + 18, SE049, 90 );
SE050 = playSe( spep_8 + 18, 1213 );
setSeVolumeByWorkId( spep_8 + 18, SE050, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
-- せまる
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_9 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, approaching_f, 0 );
setEffRotateKey( spep_9 + 56, approaching_f, 0 );
setEffAlphaKey( spep_9 + 0, approaching_f, 255 );
setEffAlphaKey( spep_9 + 54, approaching_f, 255 );
setEffAlphaKey( spep_9 + 55, approaching_f, 255 );
setEffAlphaKey( spep_9 + 56, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_9 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, approaching_b, 0 );
setEffRotateKey( spep_9 + 56, approaching_b, 0 );
setEffAlphaKey( spep_9 + 0, approaching_b, 255 );
setEffAlphaKey( spep_9 + 54, approaching_b, 255 );
setEffAlphaKey( spep_9 + 55, approaching_b, 255 );
setEffAlphaKey( spep_9 + 56, approaching_b, 0 );

--敵の動き
setDisp( spep_9 + 56, 1, 0 );

setBlendColor(spep_9+14,1,3,0,0,0,0);
setBlendColor(spep_9+15,1,3,0,0,0,0.09);
setBlendColor(spep_9+16,1,3,0,0,0,0.18);
setBlendColor(spep_9+17,1,3,0,0,0,0.27);
setBlendColor(spep_9+18,1,3,0,0,0,0.36);
setBlendColor(spep_9+19,1,3,0,0,0,0.45);
setBlendColor(spep_9+20,1,3,0,0,0,0.54);
setBlendColor(spep_9+21,1,3,0,0,0,0.63);
setBlendColor(spep_9+22,1,3,0,0,0,0.72);
setBlendColor(spep_9+23,1,3,0,0,0,0.81);
setBlendColor(spep_9+24,1,3,0,0,0,0.9);
setBlendColor(spep_9+25,1,3,0,0,0,1.0);
setBlendColor(spep_9+56,1,3,0,0,0,1.0);
setBlendColor(spep_9+58,1,3,0,0,0,0);

changeAnime( spep_9 + 0, 1, 118 );

setMoveKey( spep_9 + 0, 1, 247.2, -177.2 , 0 );
setMoveKey( spep_9 + 2, 1, 247.2, -177.1 , 0 );
setMoveKey( spep_9 + 56, 1, 247.2, -177.1 , 0 );

setScaleKey( spep_9 + 0, 1, 2.08, 2.08 );
setScaleKey( spep_9 + 56, 1, 2.08, 2.08 );

setRotateKey( spep_9 + 0, 1, 18.3 );
setRotateKey( spep_9 + 2, 1, 18.5 );
setRotateKey( spep_9 + 56, 1, 18.5 );

--SE
--気弾加速
SE051 = playSe( spep_9 + 0, 1021 );
setSeVolumeByWorkId( spep_9 + 0, SE051, 145 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+56;
------------------------------------------------------
-- フィニッシュ1
------------------------------------------------------
-- ** エフェクト等 ** --
finish1 = entryEffect( spep_10 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish1, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, finish1, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish1, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, finish1, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish1, 0 );
setEffRotateKey( spep_10 + 56, finish1, 0 );
setEffAlphaKey( spep_10 + 0, finish1, 255 );
setEffAlphaKey( spep_10 + 54, finish1, 255 );
setEffAlphaKey( spep_10 + 55, finish1, 255 );
setEffAlphaKey( spep_10 + 56, finish1, 0 );

--SE
--気弾ヒット
SE052 = playSe( spep_10 + 0, 1258 );
setSeVolumeByWorkId( spep_10 + 0, SE052, 83 );
SE053 = playSe( spep_10 + 2, 1226 );
setSeVolumeByWorkId( spep_10 + 2, SE053, 89 );
SE054 = playSe( spep_10 + 2, 1159 );
setSeVolumeByWorkId( spep_10 + 2, SE054, 86 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
-- フィニッシュ2
------------------------------------------------------
-- ** エフェクト等 ** --
finish2 = entryEffect( spep_11 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish2, 0, 0, 0 );
setEffMoveKey( spep_11 + 56, finish2, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish2, 1.0, 1.0 );
setEffScaleKey( spep_11 + 56, finish2, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish2, 0 );
setEffRotateKey( spep_11 + 56, finish2, 0 );
setEffAlphaKey( spep_11 + 0, finish2, 255 );
setEffAlphaKey( spep_11 + 54, finish2, 255 );
setEffAlphaKey( spep_11 + 55, finish2, 255 );
setEffAlphaKey( spep_11 + 56, finish2, 0 );

--SE
--爆発
SE055 = playSe( spep_11 + 0, 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_12=spep_11+56;
------------------------------------------------------
-- フィニッシュ3
------------------------------------------------------
-- ** エフェクト等 ** --
finish3 = entryEffect( spep_12 + 0, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, finish3, 0, 0, 0 );
setEffMoveKey( spep_12 + 120, finish3, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, finish3, 1.0, 1.0 );
setEffScaleKey( spep_12 + 120, finish3, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish3, 0 );
setEffRotateKey( spep_12 + 120, finish3, 0 );
setEffAlphaKey( spep_12 + 0, finish3, 255 );
setEffAlphaKey( spep_12 + 120, finish3, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_12 + 108, SP_16x,180,0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 108, KO, 0, 0, 0 );
setEffMoveKey( spep_12 + 288, KO, 0, 0, 0 );
setEffScaleKey( spep_12 + 108, KO, -1.0, 1.0 );
setEffScaleKey( spep_12 + 288, KO, -1.0, 1.0 );
setEffRotateKey( spep_12 + 108, KO, 0 );
setEffRotateKey( spep_12 + 288, KO, 0 );
setEffAlphaKey( spep_12 + 108, KO, 255 );
setEffAlphaKey( spep_12 + 288, KO, 255 );

--SE
--気弾ヒット
stopSe( spep_12 + 108, SE053, 10 );

--そして宇宙へ
SE056 = playSe( spep_12 + 0, 1343 );
setSeVolumeByWorkId( spep_12 + 0, SE056, 126 );
stopSe( spep_12 + 108, SE056, 6 );

--終わり
hideKoScreen();
dealDamage( spep_12 +0 );
endPhase( spep_12 + 110 );
end