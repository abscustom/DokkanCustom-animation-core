--1021930:超サイヤ人ベジータ(GT)_ギャリック砲（ドッカン前）
--sp_effect_a1_00295

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
SP_01=	157269	;--	構え
SP_02=	157270	;--	発射：手前
SP_03=	157272	;--	発射：奥（敵味方共通）

--エフェクト(敵)
SP_01x=	157269	;--	構え	
SP_02x=	157271	;--	発射：手前	(敵)
SP_03x=	157272	;--	発射：奥（敵味方共通）		

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
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 190, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 190, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 190, tame, 255 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );

--振りかぶる
SE002 = playSe( spep_0 + 6, 1004 );
setPitch( spep_0 + 6, SE002, -300 );
setTimeStretch( SE002, 0.93, 10, 1 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 50 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
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
--顔カットインのタイミング指定
spep_x=spep_0 +98;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE004 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 50 );

--構える
SE005 = playSe( spep_0 + 64, 1233 );

--オーラ
SE006 = playSe( spep_0 + 72, 1036 );
setSeVolumeByWorkId( spep_0 + 72, SE006, 50 );

--構える
SE007 = playSe( spep_0 + 72, 1003 );
setSeVolumeByWorkId( spep_0 + 72, SE007, 76 );
SE008 = playSe( spep_0 + 74, 1006 );
setSeVolumeByWorkId( spep_0 + 74, SE008, 83 );

--オーラ
SE009 = playSe( spep_0 + 96, 1036 );
setSeVolumeByWorkId( spep_0 + 96, SE009, 50 );

--力む
SE010 = playSe( spep_0 + 104, 1233 );
setPitch( spep_0 + 104, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--顔カットイン
SE011 = playSe( spep_x + 12, 1018 );

--力む
SE012 = playSe( spep_0 + 116, 1250 );
setSeVolumeByWorkId( spep_0 + 116, SE012, 251 );
stopSe( spep_0 + 178, SE012, 14 );
setPitch( spep_0 + 116, SE012, -1200 );
setTimeStretch( SE012, 0.2, 10, 1 );
SE013 = playSe( spep_0 + 116, 1294 );
setSeVolumeByWorkId( spep_0 + 116, SE013, 316 );

--オーラ
SE014 = playSe( spep_0 + 120, 1036 );
setSeVolumeByWorkId( spep_0 + 120, SE014, 50 );
SE015 = playSe( spep_0 + 144, 1036 );
setSeVolumeByWorkId( spep_0 + 144, SE015, 50 );
SE016 = playSe( spep_0 + 168, 1036 );
setSeVolumeByWorkId( spep_0 + 168, SE016, 50 );

--白フェード
entryFade( spep_0 + 182, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+190;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 260, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 260, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 260, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 260, hit_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 30,  10012, 52, 0x100, -1, 0, -42, 396.5 );--ズオッ
setEffShake( spep_2-3 + 30, ctzuo, 52, 10 );
setEffMoveKey( spep_2-3 + 30, ctzuo, -42, 396.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, -46.9, 394.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, -35.4, 393.7 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, -45.8, 404.4 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, -38.7, 392.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, -45.7, 403.5 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, -37, 392.2 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, -39.2, 386.8 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, -39.5, 387.8 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, -42.6, 405.9 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, -44.8, 388.9 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, -36.4, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, -43.6, 391.7 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, -33.6, 398.7 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, -46.5, 394.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, -35.7, 402.4 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, -39.1, 386.8 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_2-3 + 82, ctzuo, -39.5, 387.8 , 0 );

setEffScaleKey( spep_2-3 + 30, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 82, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_2-3 + 30, ctzuo, 30 );
setEffRotateKey( spep_2-3 + 82, ctzuo, 30 );

setEffAlphaKey( spep_2-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 72, ctzuo, 213 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 76, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 78, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 42 );
setEffAlphaKey( spep_2-3 + 82, ctzuo, 0 );

--敵の動き
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-3 + 138, 1, 0);

changeAnime( spep_2-3 + 102, 1, 104);
changeAnime( spep_2-3 + 136, 1, 5);

setMoveKey( spep_2-3 + 102, 1, 93.5, -16.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 93.5, -16.7 , 0 );

setScaleKey( spep_2-3 + 102, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 135, 1, 1.0, 1.0 );
setScaleKey( spep_2-3 + 136, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 138, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 102, 1, 0 );
setRotateKey( spep_2-3 + 135, 1, 0 );
setRotateKey( spep_2-3 + 136, 1, 43 );
setRotateKey( spep_2-3 + 138, 1, 43 );

--SE
--ファイナルフラッシュ発射
SE018 = playSe( spep_2 + 14, 20 );
setSeVolumeByWorkId( spep_2 + 14, SE018, 88 );
SE019 = playSe( spep_2 + 14, 1188 );
setSeVolumeByWorkId( spep_2 + 14, SE019, 78 );
SE020 = playSe( spep_2 + 16, 1213 );
setSeVolumeByWorkId( spep_2 + 16, SE020, 82 );
stopSe( spep_2 + 142, SE020, 10 );

--気弾飛んでいく
SE021 = playSe( spep_2 + 82, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 82, SE021, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE021, 5 );
setSeVolumeByWorkId( spep_2 + 84, SE021, 10 );
setSeVolumeByWorkId( spep_2 + 85, SE021, 15 );
setSeVolumeByWorkId( spep_2 + 86, SE021, 20 );
setSeVolumeByWorkId( spep_2 + 87, SE021, 25 );
setSeVolumeByWorkId( spep_2 + 88, SE021, 30 );
setSeVolumeByWorkId( spep_2 + 89, SE021, 35 );
setSeVolumeByWorkId( spep_2 + 90, SE021, 40 );
setSeVolumeByWorkId( spep_2 + 91, SE021, 45 );
setSeVolumeByWorkId( spep_2 + 92, SE021, 50 );
setSeVolumeByWorkId( spep_2 + 93, SE021, 55 );
setSeVolumeByWorkId( spep_2 + 94, SE021, 60 );
setSeVolumeByWorkId( spep_2 + 95, SE021, 65 );
setSeVolumeByWorkId( spep_2 + 96, SE021, 70 );
setSeVolumeByWorkId( spep_2 + 97, SE021, 75 );
setSeVolumeByWorkId( spep_2 + 98, SE021, 80 );
setSeVolumeByWorkId( spep_2 + 99, SE021, 85 );
setSeVolumeByWorkId( spep_2 + 100, SE021, 90 );
setSeVolumeByWorkId( spep_2 + 101, SE021, 95 );
setSeVolumeByWorkId( spep_2 + 102, SE021, 100 );
stopSe( spep_2 + 140, SE021, 10 );
setStartTimeMs( SE021,  833 );
SE022 = playSe( spep_2 + 96, 1241 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 96, SE022, 117 );
stopSe( spep_2 + 142, SE022, 8 );

--爆発
SE023 = playSe( spep_2 + 138, 1024 );
setSeVolumeByWorkId( spep_2 + 138, SE023, 76 );
SE024 = playSe( spep_2 + 138, 1159 );
setSeVolumeByWorkId( spep_2 + 138, SE024, 87 );
SE025 = playSe( spep_2 + 138, 1068 );
setSeVolumeByWorkId( spep_2 + 138, SE025, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +150 );
endPhase( spep_2 + 250 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 190, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 190, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 190, tame, 255 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );

--振りかぶる
SE002 = playSe( spep_0 + 6, 1004 );
setPitch( spep_0 + 6, SE002, -300 );
setTimeStretch( SE002, 0.93, 10, 1 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 50 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
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

--顔カットインのタイミング指定
spep_x=spep_0 +98;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE004 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 50 );

--構える
SE005 = playSe( spep_0 + 64, 1233 );

--オーラ
SE006 = playSe( spep_0 + 72, 1036 );
setSeVolumeByWorkId( spep_0 + 72, SE006, 50 );

--構える
SE007 = playSe( spep_0 + 72, 1003 );
setSeVolumeByWorkId( spep_0 + 72, SE007, 76 );
SE008 = playSe( spep_0 + 74, 1006 );
setSeVolumeByWorkId( spep_0 + 74, SE008, 83 );

--オーラ
SE009 = playSe( spep_0 + 96, 1036 );
setSeVolumeByWorkId( spep_0 + 96, SE009, 50 );

--力む
SE010 = playSe( spep_0 + 104, 1233 );
setPitch( spep_0 + 104, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--顔カットイン
SE011 = playSe( spep_x + 12, 1018 );

--力む
SE012 = playSe( spep_0 + 116, 1250 );
setSeVolumeByWorkId( spep_0 + 116, SE012, 251 );
stopSe( spep_0 + 178, SE012, 14 );
setPitch( spep_0 + 116, SE012, -1200 );
setTimeStretch( SE012, 0.2, 10, 1 );
SE013 = playSe( spep_0 + 116, 1294 );
setSeVolumeByWorkId( spep_0 + 116, SE013, 316 );

--オーラ
SE014 = playSe( spep_0 + 120, 1036 );
setSeVolumeByWorkId( spep_0 + 120, SE014, 50 );
SE015 = playSe( spep_0 + 144, 1036 );
setSeVolumeByWorkId( spep_0 + 144, SE015, 50 );
SE016 = playSe( spep_0 + 168, 1036 );
setSeVolumeByWorkId( spep_0 + 168, SE016, 50 );

--白フェード
entryFade( spep_0 + 182, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+190;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 260, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 101, hit_f, 255 );
setEffAlphaKey( spep_2 + 102, hit_f, 0 );

hit_f_1 = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f_1, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_f_1, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f_1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_f_1, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f_1, 0 );
setEffRotateKey( spep_2 + 260, hit_f_1, 0 );
setEffAlphaKey( spep_2 + 101, hit_f_1, 0 );
setEffAlphaKey( spep_2 + 102, hit_f_1, 255 );
setEffAlphaKey( spep_2 + 260, hit_f_1, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 260, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 101, hit_b, 255 );
setEffAlphaKey( spep_2 + 102, hit_b, 0 );

hit_b_1 = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b_1, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, hit_b_1, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b_1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hit_b_1, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b_1, 0 );
setEffRotateKey( spep_2 + 260, hit_b_1, 0 );
setEffAlphaKey( spep_2 + 0, hit_b_1, 0 );
setEffAlphaKey( spep_2 + 101, hit_b_1, 0 );
setEffAlphaKey( spep_2 + 102, hit_b_1, 255 );
setEffAlphaKey( spep_2 + 260, hit_b_1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 30,  10012, 52, 0x100, -1, 0, -42, 396.5 );--ズオッ
setEffShake( spep_2-3 + 30, ctzuo, 52, 10 );
setEffMoveKey( spep_2-3 + 30, ctzuo, -42, 396.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, -46.9, 394.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, -35.4, 393.7 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, -45.8, 404.4 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, -38.7, 392.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, -45.7, 403.5 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, -37, 392.2 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, -39.2, 386.8 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, -39.5, 387.8 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, -42.6, 405.9 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, -44.8, 388.9 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, -36.4, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, -43.6, 391.7 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, -33.6, 398.7 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, -46.5, 394.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, -35.7, 402.4 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, -39.1, 386.8 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_2-3 + 82, ctzuo, -39.5, 387.8 , 0 );

setEffScaleKey( spep_2-3 + 30, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 82, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_2-3 + 30, ctzuo, 30 );
setEffRotateKey( spep_2-3 + 82, ctzuo, 30 );

setEffAlphaKey( spep_2-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 72, ctzuo, 213 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 76, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 78, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 42 );
setEffAlphaKey( spep_2-3 + 82, ctzuo, 0 );

--敵の動き
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-3 + 138, 1, 0);

changeAnime( spep_2-3 + 102, 1, 104);
changeAnime( spep_2-3 + 136, 1, 5);

setMoveKey( spep_2-3 + 102, 1, 93.5, -16.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 93.5, -16.7 , 0 );

setScaleKey( spep_2-3 + 102, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 135, 1, 1.0, 1.0 );
setScaleKey( spep_2-3 + 136, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 138, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 102, 1, 0 );
setRotateKey( spep_2-3 + 135, 1, 0 );
setRotateKey( spep_2-3 + 136, 1, 43 );
setRotateKey( spep_2-3 + 138, 1, 43 );

--SE
--ファイナルフラッシュ発射
SE018 = playSe( spep_2 + 14, 20 );
setSeVolumeByWorkId( spep_2 + 14, SE018, 88 );
SE019 = playSe( spep_2 + 14, 1188 );
setSeVolumeByWorkId( spep_2 + 14, SE019, 78 );
SE020 = playSe( spep_2 + 16, 1213 );
setSeVolumeByWorkId( spep_2 + 16, SE020, 82 );
stopSe( spep_2 + 142, SE020, 10 );

--気弾飛んでいく
SE021 = playSe( spep_2 + 82, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 82, SE021, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE021, 5 );
setSeVolumeByWorkId( spep_2 + 84, SE021, 10 );
setSeVolumeByWorkId( spep_2 + 85, SE021, 15 );
setSeVolumeByWorkId( spep_2 + 86, SE021, 20 );
setSeVolumeByWorkId( spep_2 + 87, SE021, 25 );
setSeVolumeByWorkId( spep_2 + 88, SE021, 30 );
setSeVolumeByWorkId( spep_2 + 89, SE021, 35 );
setSeVolumeByWorkId( spep_2 + 90, SE021, 40 );
setSeVolumeByWorkId( spep_2 + 91, SE021, 45 );
setSeVolumeByWorkId( spep_2 + 92, SE021, 50 );
setSeVolumeByWorkId( spep_2 + 93, SE021, 55 );
setSeVolumeByWorkId( spep_2 + 94, SE021, 60 );
setSeVolumeByWorkId( spep_2 + 95, SE021, 65 );
setSeVolumeByWorkId( spep_2 + 96, SE021, 70 );
setSeVolumeByWorkId( spep_2 + 97, SE021, 75 );
setSeVolumeByWorkId( spep_2 + 98, SE021, 80 );
setSeVolumeByWorkId( spep_2 + 99, SE021, 85 );
setSeVolumeByWorkId( spep_2 + 100, SE021, 90 );
setSeVolumeByWorkId( spep_2 + 101, SE021, 95 );
setSeVolumeByWorkId( spep_2 + 102, SE021, 100 );
stopSe( spep_2 + 140, SE021, 10 );
setStartTimeMs( SE021,  833 );
SE022 = playSe( spep_2 + 96, 1241 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 96, SE022, 117 );
stopSe( spep_2 + 142, SE022, 8 );

--爆発
SE023 = playSe( spep_2 + 138, 1024 );
setSeVolumeByWorkId( spep_2 + 138, SE023, 76 );
SE024 = playSe( spep_2 + 138, 1159 );
setSeVolumeByWorkId( spep_2 + 138, SE024, 87 );
SE025 = playSe( spep_2 + 138, 1068 );
setSeVolumeByWorkId( spep_2 + 138, SE025, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +150 );
endPhase( spep_2 + 250 );
end