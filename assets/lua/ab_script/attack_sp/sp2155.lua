--1021420:ゴールデンフリーザ(天使)_デスサイコキネシス
--sp_effect_b4_00182

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
SP_01=	156919	;--	セリフカットイン
SP_02=	156920	;--	突進
SP_03=	156913	;--	後半2　奥
SP_04=	156914	;--	後半2　手前

--エフェクト(てき方)
SP_01x=	156919	;--	セリフカットイン	
SP_02x=	156920	;--	突進	
SP_03x=	156913	;--	後半2　奥	
SP_04x=	156918	;--	後半2　手前	(敵)

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
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 64, 1035 );
SE003 = playSe( spep_0 + 64, 1298 );
setSeVolumeByWorkId( spep_0 + 64, SE003, 70 );

--オーラ
SE004 = playSe( spep_0 + 76, 1036 );
setPitch( spep_0 + 76, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );
SE005 = playSe( spep_0 + 100, 1036 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

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

--気ダメ
stopSe( spep_1 + 4, SE002, 0 );
stopSe( spep_1 + 4, SE003, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- 突進
------------------------------------------------------
rush = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 36, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 34, rush, 255 );
setEffAlphaKey( spep_2 + 35, rush, 255 );
setEffAlphaKey( spep_2 + 36, rush, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0,40, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );


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

--SE
--フリーザ向かっていく
SE007 = playSe( spep_2 + 12, 1182 );
SE008 = playSe( spep_2 + 12, 9 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 36;
------------------------------------------------------
--	後半
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 662, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 662, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 662, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 662, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 662, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 662, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 662, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 662, fighting_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_3-5 + 8,  10016, 18, 0x100, -1, 0, 93.3, 186.7 );--ズンッ
setEffShake( spep_3-5 + 8, ctzun, 18, 10 );
setEffMoveKey( spep_3-5 + 8, ctzun, 93.3, 186.7 , 0 );
setEffMoveKey( spep_3-5 + 10, ctzun, 107.3, 273.9 , 0 );
setEffMoveKey( spep_3-5 + 12, ctzun, 119.9, 287.6 , 0 );
setEffMoveKey( spep_3-5 + 14, ctzun, 112.6, 290.8 , 0 );
setEffMoveKey( spep_3-5 + 16, ctzun, 111.2, 287.6 , 0 );
setEffMoveKey( spep_3-5 + 18, ctzun, 113.8, 299.3 , 0 );
setEffMoveKey( spep_3-5 + 20, ctzun, 130.7, 303.9 , 0 );
setEffMoveKey( spep_3-5 + 22, ctzun, 127.1, 308.9 , 0 );
setEffMoveKey( spep_3-5 + 24, ctzun, 141.8, 325.8 , 0 );
setEffMoveKey( spep_3-5 + 26, ctzun, 148.4, 334.4 , 0 );

setEffScaleKey( spep_3-5 + 10, ctzun, 2.05, 2.05 );
setEffScaleKey( spep_3-5 + 12, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_3-5 + 14, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_3-5 + 16, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_3-5 + 18, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_3-5 + 20, ctzun, 2.51, 2.51 );
setEffScaleKey( spep_3-5 + 22, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_3-5 + 24, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_3-5 + 26, ctzun, 2.93, 2.93 );

setEffRotateKey( spep_3-5 + 8, ctzun, 20.2 );
setEffRotateKey( spep_3-5 + 26, ctzun, 20.2 );

setEffAlphaKey( spep_3-5 + 8, ctzun, 255 );
setEffAlphaKey( spep_3-5 + 16, ctzun, 255 );
setEffAlphaKey( spep_3-5 + 18, ctzun, 204 );
setEffAlphaKey( spep_3-5 + 20, ctzun, 153 );
setEffAlphaKey( spep_3-5 + 22, ctzun, 102 );
setEffAlphaKey( spep_3-5 + 24, ctzun, 51 );
setEffAlphaKey( spep_3-5 + 26, ctzun, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_3-3 + 48,  10017, 68, 0x100, -1, 0, -32.4, 231.3 );--ドガガガッ
setEffShake( spep_3-3 + 48, ctdogagaga, 68, 10 );
setEffMoveKey( spep_3-3 + 48, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogagaga, -31.5, 245.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogagaga, -39.3, 229.1 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogagaga, -23.9, 241.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogagaga, -38.1, 234.1 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogagaga, -33.1, 228.5 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogagaga, -25.3, 241.7 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogagaga, -40.8, 235.1 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogagaga, -27.4, 242.5 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogagaga, -33.3, 228.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogagaga, -29.5, 245.7 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogagaga, -37.3, 227.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogagaga, -23, 240.4 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogagaga, -42.1, 234.8 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogagaga, -23.3, 236.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctdogagaga, -39.1, 238.9 , 0 );
setEffMoveKey( spep_3-3 + 82, ctdogagaga, -28.3, 230.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctdogagaga, -32, 238.1 , 0 );
setEffMoveKey( spep_3-3 + 86, ctdogagaga, -37.8, 240.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctdogagaga, -21.4, 242.4 , 0 );
setEffMoveKey( spep_3-3 + 90, ctdogagaga, -38.7, 238 , 0 );
setEffMoveKey( spep_3-3 + 92, ctdogagaga, -27.7, 231.5 , 0 );
setEffMoveKey( spep_3-3 + 94, ctdogagaga, -43.2, 238.6 , 0 );
setEffMoveKey( spep_3-3 + 96, ctdogagaga, -24.3, 228.4 , 0 );
setEffMoveKey( spep_3-3 + 98, ctdogagaga, -39.6, 239.8 , 0 );
setEffMoveKey( spep_3-3 + 100, ctdogagaga, -25.7, 237.7 , 0 );
setEffMoveKey( spep_3-3 + 102, ctdogagaga, -37.4, 243.2 , 0 );
setEffMoveKey( spep_3-3 + 104, ctdogagaga, -27.1, 233.3 , 0 );
setEffMoveKey( spep_3-3 + 106, ctdogagaga, -30.2, 245.1 , 0 );
setEffMoveKey( spep_3-3 + 108, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_3-3 + 110, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_3-3 + 112, ctdogagaga, -37.6, 248.3 , 0 );
setEffMoveKey( spep_3-3 + 114, ctdogagaga, -32, 284.9 , 0 );
setEffMoveKey( spep_3-3 + 116, ctdogagaga, -35.4, 306.5 , 0 );

setEffScaleKey( spep_3-3 + 48, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 110, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 112, ctdogagaga, 2.88, 2.88 );
setEffScaleKey( spep_3-3 + 114, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_3-3 + 116, ctdogagaga, 3.59, 3.59 );

setEffRotateKey( spep_3-3 + 48, ctdogagaga, 0 );
setEffRotateKey( spep_3-3 + 116, ctdogagaga, 0 );

setEffAlphaKey( spep_3-3 + 48, ctdogagaga, 255 );
setEffAlphaKey( spep_3-3 + 110, ctdogagaga, 255 );
setEffAlphaKey( spep_3-3 + 112, ctdogagaga, 170 );
setEffAlphaKey( spep_3-3 + 114, ctdogagaga, 85 );
setEffAlphaKey( spep_3-3 + 116, ctdogagaga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-3 + 146,  10021, 22, 0x100, -1, 0, -71.9, 364.5 );--バゴォッ
setEffShake( spep_3-3 + 146, ctbago, 68, 10 );
setEffMoveKey( spep_3-3 + 146, ctbago, -71.9, 364.5 , 0 );
setEffMoveKey( spep_3-3 + 148, ctbago, -73.2, 368.5 , 0 );
setEffMoveKey( spep_3-3 + 150, ctbago, -58, 397.4 , 0 );
setEffMoveKey( spep_3-3 + 152, ctbago, -62.5, 391.9 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbago, -68.5, 382.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbago, -55, 405.6 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbago, -66, 394.1 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbago, -48.1, 398.6 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbago, -58, 404 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbago, -64, 395.2 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbago, -49, 421.2 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbago, -47.5, 425.3 , 0 );

setEffScaleKey( spep_3-3 + 146, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_3-3 + 148, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_3-3 + 150, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_3-3 + 152, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_3-3 + 154, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_3-3 + 156, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 158, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_3-3 + 160, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_3-3 + 162, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_3-3 + 164, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_3-3 + 166, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_3-3 + 168, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_3-3 + 146, ctbago, -20 );
setEffRotateKey( spep_3-3 + 168, ctbago, -20 );

setEffAlphaKey( spep_3-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 162, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 164, ctbago, 170 );
setEffAlphaKey( spep_3-3 + 166, ctbago, 85 );
setEffAlphaKey( spep_3-3 + 168, ctbago, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 149, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 8, 1, 108 );
changeAnime( spep_3-3 + 48, 1, 106 );
changeAnime( spep_3-3 + 53, 1, 108 );
changeAnime( spep_3-3 + 54, 1, 106 );
changeAnime( spep_3-3 + 58, 1, 108 );
changeAnime( spep_3-3 + 62, 1, 106 );
changeAnime( spep_3-3 + 66, 1, 108 );
changeAnime( spep_3-3 + 70, 1, 106 );
changeAnime( spep_3-3 + 74, 1, 108 );
changeAnime( spep_3-3 + 79, 1, 106 );
changeAnime( spep_3-3 + 80, 1, 108 );
changeAnime( spep_3-3 + 84, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );
changeAnime( spep_3-3 + 93, 1, 106 );
changeAnime( spep_3-3 + 94, 1, 108 );
changeAnime( spep_3-3 + 98, 1, 106 );
changeAnime( spep_3-3 + 102, 1, 108 );
changeAnime( spep_3-3 + 106, 1, 106 );
changeAnime( spep_3-3 + 111, 1, 108 );
changeAnime( spep_3-3 + 112, 1, 106 );
changeAnime( spep_3-3 + 146, 1, 108 );

setMoveKey( spep_3 + 0, 1, 88.7, 49.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 105.4, 49.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 115.4, 49.1 , 0 );
setMoveKey( spep_3-3 + 7, 1, 118.7, 49.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 141.7, 73 , 0 );
setMoveKey( spep_3-3 + 10, 1, 146.5, 60 , 0 );
setMoveKey( spep_3-3 + 12, 1, 135.6, 58 , 0 );
setMoveKey( spep_3-3 + 14, 1, 121, 75 , 0 );
setMoveKey( spep_3-3 + 16, 1, 98.4, 66 , 0 );
setMoveKey( spep_3-3 + 18, 1, 88.5, 74 , 0 );
setMoveKey( spep_3-3 + 20, 1, 85.9, 56 , 0 );
setMoveKey( spep_3-3 + 22, 1, 88.7, 59 , 0 );
setMoveKey( spep_3-3 + 24, 1, 102.6, 89 , 0 );
setMoveKey( spep_3-3 + 26, 1, 89.4, 55 , 0 );
setMoveKey( spep_3-3 + 28, 1, 89, 68 , 0 );
setMoveKey( spep_3-3 + 30, 1, 82.4, 65 , 0 );
setMoveKey( spep_3-3 + 32, 1, 82.6, 65 , 0 );
setMoveKey( spep_3-3 + 34, 1, 85.7, 69 , 0 );
setMoveKey( spep_3-3 + 36, 1, 90.6, 55 , 0 );
setMoveKey( spep_3-3 + 38, 1, 91.4, 65 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95, 58 , 0 );
setMoveKey( spep_3-3 + 42, 1, 95.4, 58 , 0 );
setMoveKey( spep_3-3 + 44, 1, 96.6, 66 , 0 );
setMoveKey( spep_3-3 + 47, 1, 94.7, 57 , 0 );
setMoveKey( spep_3-3 + 48, 1, 13.1, 13.4 , 0 );
setMoveKey( spep_3-3 + 51, 1, 13.2, 2.9 , 0 );
setMoveKey( spep_3-3 + 53, 1, 76.4, 5.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 36.2, -4.1 , 0 );
setMoveKey( spep_3-3 + 57, 1, 15.2, -1.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, 54.2, 23 , 0 );
setMoveKey( spep_3-3 + 61, 1, 58.2, 8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.4, -7.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 81.4, -5.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 106.4, 48.2 , 0 );
setMoveKey( spep_3-3 + 69, 1, 96.4, 34.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 47.2, -10.1 , 0 );
setMoveKey( spep_3-3 + 73, 1, 35.2, 2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 122.4, -17 , 0 );
setMoveKey( spep_3-3 + 77, 1, 118.4, -5 , 0 );
setMoveKey( spep_3-3 + 79, 1, 65.3, 12.4 , 0 );
setMoveKey( spep_3-3 + 80, 1, 79.4, 62.3 , 0 );
setMoveKey( spep_3-3 + 83, 1, 75.4, 86.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 25.2, -2.1 , 0 );
setMoveKey( spep_3-3 + 87, 1, 4.2, 0.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 76.3, -4.1 , 0 );
setMoveKey( spep_3-3 + 91, 1, 80.3, -19.1 , 0 );
setMoveKey( spep_3-3 + 93, 1, 88.4, -20.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 73.2, 11.1 , 0 );
setMoveKey( spep_3-3 + 97, 1, 85.2, 15.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 101.4, 52.1 , 0 );
setMoveKey( spep_3-3 + 101, 1, 113.4, 48.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 65.2, 12.1 , 0 );
setMoveKey( spep_3-3 + 105, 1, 85.3, 14.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 83.3, 3.9 , 0 );
setMoveKey( spep_3-3 + 109, 1, 67.3, -18.1 , 0 );
setMoveKey( spep_3-3 + 111, 1, 110.3, -35.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, 41.4, 0.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, 62, 2.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 11.5, 13.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 11.1, 14.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, 17.7, 15.8 , 0 );
setMoveKey( spep_3-3 + 122, 1, 23.2, 17 , 0 );
setMoveKey( spep_3-3 + 124, 1, 22.8, 13.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, 20.4, 17.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 20.9, 17.5 , 0 );
setMoveKey( spep_3-3 + 130, 1, 21.5, 17.6 , 0 );
setMoveKey( spep_3-3 + 132, 1, 22.1, 17.6 , 0 );
setMoveKey( spep_3-3 + 134, 1, 22.6, 17.7 , 0 );
setMoveKey( spep_3-3 + 136, 1, 23.2, 17.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, 23.8, 17.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, 24.3, 18 , 0 );
setMoveKey( spep_3-3 + 142, 1, 24.9, 18 , 0 );
setMoveKey( spep_3-3 + 145, 1, 25.5, 18.1 , 0 );
setMoveKey( spep_3-3 + 146, 1, 7.5, -151.2 , 0 );
setMoveKey( spep_3-3 + 149, 1, 5.5, -178.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 149, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 47, 1, 0 );
setRotateKey( spep_3-3 + 48, 1, -45 );
setRotateKey( spep_3-3 + 51, 1, -45 );
setRotateKey( spep_3-3 + 53, 1, 0 );
setRotateKey( spep_3-3 + 54, 1, -45 );
setRotateKey( spep_3-3 + 57, 1, -45 );
setRotateKey( spep_3-3 + 58, 1, 0 );
setRotateKey( spep_3-3 + 61, 1, 0 );
setRotateKey( spep_3-3 + 62, 1, -27.3 );
setRotateKey( spep_3-3 + 65, 1, -27.3 );
setRotateKey( spep_3-3 + 66, 1, 0 );
setRotateKey( spep_3-3 + 69, 1, 0 );
setRotateKey( spep_3-3 + 70, 1, -45 );
setRotateKey( spep_3-3 + 73, 1, -45 );
setRotateKey( spep_3-3 + 74, 1, 0 );
setRotateKey( spep_3-3 + 77, 1, 0 );
setRotateKey( spep_3-3 + 79, 1, -37.5 );
setRotateKey( spep_3-3 + 80, 1, -16 );
setRotateKey( spep_3-3 + 83, 1, -16 );
setRotateKey( spep_3-3 + 84, 1, -43.5 );
setRotateKey( spep_3-3 + 87, 1, -43.5 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 91, 1, 0 );
setRotateKey( spep_3-3 + 93, 1, -45 );
setRotateKey( spep_3-3 + 94, 1, 4 );
setRotateKey( spep_3-3 + 97, 1, 4 );
setRotateKey( spep_3-3 + 98, 1, -35.8 );
setRotateKey( spep_3-3 + 101, 1, -35.8 );
setRotateKey( spep_3-3 + 102, 1, 0 );
setRotateKey( spep_3-3 + 105, 1, 0 );
setRotateKey( spep_3-3 + 106, 1, -41.8 );
setRotateKey( spep_3-3 + 109, 1, -41.8 );
setRotateKey( spep_3-3 + 111, 1, -9.2 );
setRotateKey( spep_3-3 + 112, 1, -9.2 );
setRotateKey( spep_3-3 + 114, 1, -9 );
setRotateKey( spep_3-3 + 116, 1, -8.8 );
setRotateKey( spep_3-3 + 118, 1, -8.6 );
setRotateKey( spep_3-3 + 120, 1, -8.4 );
setRotateKey( spep_3-3 + 122, 1, -8.2 );
setRotateKey( spep_3-3 + 124, 1, -8 );
setRotateKey( spep_3-3 + 126, 1, -7.8 );
setRotateKey( spep_3-3 + 128, 1, -7.6 );
setRotateKey( spep_3-3 + 130, 1, -7.4 );
setRotateKey( spep_3-3 + 132, 1, -7.2 );
setRotateKey( spep_3-3 + 134, 1, -7 );
setRotateKey( spep_3-3 + 136, 1, -6.8 );
setRotateKey( spep_3-3 + 138, 1, -6.6 );
setRotateKey( spep_3-3 + 140, 1, -6.4 );
setRotateKey( spep_3-3 + 142, 1, -6.2 );
setRotateKey( spep_3-3 + 145, 1, -6 );
setRotateKey( spep_3-3 + 146, 1, 89.3 );
setRotateKey( spep_3-3 + 149, 1, 89.3 );

--敵の動き
setDisp( spep_3-3 + 236, 1, 1 );
setDisp( spep_3-3 + 302, 1, 0 );

changeAnime( spep_3-3 + 236, 1, 108 );
changeAnime( spep_3-3 + 252, 1, 106 );
changeAnime( spep_3-3 + 256, 1, 108 );
changeAnime( spep_3-3 + 258, 1, 106 );
changeAnime( spep_3-3 + 262, 1, 108 );
changeAnime( spep_3-3 + 266, 1, 106 );
changeAnime( spep_3-3 + 270, 1, 108 );
changeAnime( spep_3-3 + 274, 1, 106 );
changeAnime( spep_3-3 + 278, 1, 108 );
changeAnime( spep_3-3 + 280, 1, 106 );
changeAnime( spep_3-3 + 284, 1, 108 );
changeAnime( spep_3-3 + 288, 1, 106 );
changeAnime( spep_3-3 + 292, 1, 108 );

setMoveKey( spep_3-3 + 236, 1, -1.4, -86.6 , 0 );
setMoveKey( spep_3-3 + 238, 1, 0.3, -87.3 , 0 );
setMoveKey( spep_3-3 + 240, 1, 2.1, -87.5 , 0 );
setMoveKey( spep_3-3 + 242, 1, 2.2, -96 , 0 );
setMoveKey( spep_3-3 + 244, 1, 2.4, -102.1 , 0 );
setMoveKey( spep_3-3 + 246, 1, 2.5, -105.3 , 0 );
setMoveKey( spep_3-3 + 248, 1, 2.7, -108.1 , 0 );
setMoveKey( spep_3-3 + 250, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_3-3 + 251, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_3-3 + 252, 1, 8.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 255, 1, 9.1, -58.1 , 0 );
setMoveKey( spep_3-3 + 256, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_3-3 + 257, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_3-3 + 258, 1, 3.1, -67.6 , 0 );
setMoveKey( spep_3-3 + 260, 1, -3, -76.4 , 0 );
setMoveKey( spep_3-3 + 261, 1, -3, -76.4 , 0 );
setMoveKey( spep_3-3 + 262, 1, 1.2, -78.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, 1.2, -77 , 0 );
setMoveKey( spep_3-3 + 265, 1, 1.2, -77 , 0 );
setMoveKey( spep_3-3 + 266, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_3-3 + 268, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_3-3 + 269, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, 5.3, -83.3 , 0 );
setMoveKey( spep_3-3 + 272, 1, 9, -89.8 , 0 );
setMoveKey( spep_3-3 + 273, 1, 9, -89.8 , 0 );
setMoveKey( spep_3-3 + 274, 1, 3.5, -81.3 , 0 );
setMoveKey( spep_3-3 + 276, 1, 5.5, -73.6 , 0 );
setMoveKey( spep_3-3 + 277, 1, 5.5, -73.6 , 0 )
setMoveKey( spep_3-3 + 278, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_3-3 + 279, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_3-3 + 280, 1, 16.7, -56.2 , 0 );
setMoveKey( spep_3-3 + 282, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_3-3 + 283, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_3-3 + 284, 1, 5, -81 , 0 );
setMoveKey( spep_3-3 + 286, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_3-3 + 287, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_3-3 + 288, 1, 2.8, -65.8 , 0 );
setMoveKey( spep_3-3 + 290, 1, 1.9, -88 , 0 );
setMoveKey( spep_3-3 + 291, 1, 1.9, -88 , 0 );
setMoveKey( spep_3-3 + 292, 1, 2.6, -114 , 0 );
setMoveKey( spep_3-3 + 293, 1, 2.6, -114 , 0 );
setMoveKey( spep_3-3 + 294, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_3-3 + 295, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_3-3 + 296, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_3-3 + 297, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_3-3 + 298, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_3-3 + 299, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_3-3 + 300, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_3-3 + 301, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_3-3 + 302, 1, -5.7, -135.2 , 0 );

setScaleKey( spep_3-3 + 236, 1,0.71,0.71);
setScaleKey( spep_3-3 + 291, 1,0.71,0.71);
setScaleKey( spep_3-3 + 292, 1,0.89,0.89);
setScaleKey( spep_3-3 + 294, 1,0.89,0.89);
setScaleKey( spep_3-3 + 295, 1,0.89,0.89);
setScaleKey( spep_3-3 + 296, 1,1.08,1.08);
setScaleKey( spep_3-3 + 302, 1,1.08,1.08);

setRotateKey( spep_3-3 + 236, 1, 90 );
setRotateKey( spep_3-3 + 251, 1, 90 );
setRotateKey( spep_3-3 + 252, 1, 65.5 );
setRotateKey( spep_3-3 + 255, 1, 65.5 );
setRotateKey( spep_3-3 + 256, 1, 90 );
setRotateKey( spep_3-3 + 257, 1, 90 );
setRotateKey( spep_3-3 + 258, 1, 65.5 );
setRotateKey( spep_3-3 + 261, 1, 65.5 );
setRotateKey( spep_3-3 + 262, 1, 105.7 );
setRotateKey( spep_3-3 + 265, 1, 105.7 );
setRotateKey( spep_3-3 + 266, 1, 65.5 );
setRotateKey( spep_3-3 + 269, 1, 65.5 );
setRotateKey( spep_3-3 + 270, 1, 90 );
setRotateKey( spep_3-3 + 273, 1, 90 );
setRotateKey( spep_3-3 + 274, 1, 65.5 );
setRotateKey( spep_3-3 + 277, 1, 65.5 );
setRotateKey( spep_3-3 + 278, 1, 90 );
setRotateKey( spep_3-3 + 279, 1, 90 );
setRotateKey( spep_3-3 + 280, 1, 65.5 );
setRotateKey( spep_3-3 + 283, 1, 65.5 )
setRotateKey( spep_3-3 + 284, 1, 90 );
setRotateKey( spep_3-3 + 286, 1, 90 );
setRotateKey( spep_3-3 + 288, 1, 65.5 );
setRotateKey( spep_3-3 + 291, 1, 65.5 );
setRotateKey( spep_3-3 + 292, 1, 90 );
setRotateKey( spep_3-3 + 295, 1, 90 );
setRotateKey( spep_3-3 + 296, 1, 91.8 );
setRotateKey( spep_3-3 + 302, 1, 91.8 );

--敵の動き
setDisp( spep_3-3 + 476, 1, 1 );
setDisp( spep_3-1 + 534, 1, 0 );

changeAnime( spep_3-3 + 476, 1,8 );
changeAnime( spep_3-3 + 498, 1,6 );

setMoveKey( spep_3-3 + 476, 1, -26.1, -21.9 , 0 );
setMoveKey( spep_3-3 + 478, 1, -26.1, -18.1 , 0 );
setMoveKey( spep_3-3 + 480, 1, -26.1, -14.7 , 0 );
setMoveKey( spep_3-3 + 482, 1, -26.1, -11.7 , 0 );
setMoveKey( spep_3-3 + 484, 1, -26.1, -9.1 , 0 );
setMoveKey( spep_3-3 + 486, 1, -26.1, -6.9 , 0 );
setMoveKey( spep_3-3 + 488, 1, -26.1, -5.1 , 0 );
setMoveKey( spep_3-3 + 490, 1, -26.1, -3.7 , 0 );
setMoveKey( spep_3-3 + 492, 1, -26.1, -2.7 , 0 );
setMoveKey( spep_3-3 + 494, 1, -26.1, -2.1 , 0 );
setMoveKey( spep_3-3 + 496, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_3-3 + 497, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_3-3 + 498, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_3-3 + 499, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_3-3 + 500, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_3-3 + 501, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_3-3 + 502, 1, 44.5, -39 , 0 );
setMoveKey( spep_3-3 + 503, 1, 44.5, -39 , 0 );
setMoveKey( spep_3-3 + 504, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_3-3 + 505, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_3-3 + 506, 1, 40, -22.5 , 0 );
setMoveKey( spep_3-3 + 507, 1, 40, -22.5 , 0 );
setMoveKey( spep_3-3 + 508, 1, 31, -60.5 , 0 );
setMoveKey( spep_3-3 + 509, 1, 31, -60.5 , 0 );
setMoveKey( spep_3-3 + 510, 1, 28, -24.1 , 0 );
setMoveKey( spep_3-3 + 511, 1, 28, -24.1 , 0 );
setMoveKey( spep_3-3 + 512, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_3-3 + 513, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_3-3 + 514, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_3-3 + 515, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_3-3 + 516, 1, 37, -49 , 0 );
setMoveKey( spep_3-3 + 517, 1, 37, -49 , 0 );
setMoveKey( spep_3-3 + 518, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_3-3 + 519, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_3-3 + 520, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_3-3 + 521, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_3-3 + 522, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_3-3 + 523, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_3-3 + 524, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_3-3 + 525, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_3-3 + 526, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_3-3 + 527, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_3-3 + 528, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_3-3 + 529, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_3-3 + 530, 1, 40, -25.1 , 0 );
setMoveKey( spep_3-3 + 531, 1, 40, -25.1 , 0 );
setMoveKey( spep_3-3 + 532, 1, 32.5, -36.7 , 0 );
setMoveKey( spep_3-1 + 534, 1, 32.6, -21.6 , 0 );

setScaleKey( spep_3-3 + 476, 1,2.06,2.06);
setScaleKey( spep_3-3 + 497, 1,2.06,2.06);
setScaleKey( spep_3-3 + 498, 1,2.18,2.18);
setScaleKey( spep_3-1 + 534, 1,2.18,2.18);

setRotateKey( spep_3-3 + 476, 1, 0 );
setRotateKey( spep_3-3 + 496, 1, 0 );
setRotateKey( spep_3-3 + 497, 1, 0 );
setRotateKey( spep_3-3 + 498, 1, 45 );
setRotateKey( spep_3-1 + 534, 1, 45 );

--SE
--フリーザ向かっていく
stopSe( spep_3 + 38, SE008, 24 );

--初手パンチ
SE009 = playSe( spep_3 + 6, 1233 );	
setSeVolumeByWorkId( spep_3 + 6, SE009, 0 );
setSeVolumeByWorkId( spep_3 + 7, SE009, 50 );
setSeVolumeByWorkId( spep_3 + 8, SE009, 100 );
setStartTimeMs( SE009,  117 );
SE010 = playSe( spep_3 + 10, 1135 );
setPitch( spep_3 + 10, SE010, 200 );
setTimeStretch( SE010, 1.13, 10, 1 );
SE011 = playSe( spep_3 + 10, 1016 );
SE012 = playSe( spep_3 + 14, 1187 );

--横向きラッシュ
SE013 = playSe( spep_3 + 50, 1189 );
setSeVolumeByWorkId( spep_3 + 50, SE013, 126 );
SE014 = playSe( spep_3 + 56, 1009 );
setSeVolumeByWorkId( spep_3 + 56, SE014, 83 );
SE015 = playSe( spep_3 + 56, 1110 );
SE016 = playSe( spep_3 + 66, 1006 );
SE017 = playSe( spep_3 + 76, 1110 );
SE018 = playSe( spep_3 + 76, 1001 );
setSeVolumeByWorkId( spep_3 + 76, SE018, 65 );
stopSe(spep_3 + 142 - 18,SE018,18);
SE020 = playSe( spep_3 + 86, 1110 );
stopSe(spep_3 + 142 - 18,SE020,18)
SE019 = playSe( spep_3 + 106, 1072 );
setSeVolumeByWorkId( spep_3 + 106, SE019, 0 );
setSeVolumeByWorkId( spep_3 + 107, SE019, 14 );
setSeVolumeByWorkId( spep_3 + 108, SE019, 28 );
setSeVolumeByWorkId( spep_3 + 109, SE019, 42 );
setSeVolumeByWorkId( spep_3 + 110, SE019, 56 );
setSeVolumeByWorkId( spep_3 + 111, SE019, 70 );
setSeVolumeByWorkId( spep_3 + 112, SE019, 84 );
setStartTimeMs( SE019,  317 );
SE021 = playSe( spep_3 + 96, 1010 );
setSeVolumeByWorkId( spep_3 + 96, SE021, 85 );
SE022 = playSe( spep_3 + 98, 1110 );
setSeVolumeByWorkId( spep_3 + 98, SE022, 90 );
stopSe(spep_3 + 142 - 10,SE022,10);
SE023 = playSe( spep_3 + 110, 1110 );
SE024 = playSe( spep_3 + 110, 1000 );

--岩たたきつけ
SE025 = playSe( spep_3 + 144, 1061 );
stopSe( spep_3 + 162, SE025, 12 );
SE026 = playSe( spep_3 + 148, 1182 );
setSeVolumeByWorkId( spep_3 + 148, SE026, 141 );
stopSe( spep_3 + 158, SE026, 6 );
SE027 = playSe( spep_3 + 164, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 164, SE027, 79 );
SE028 = playSe( spep_3 + 150, 1188 );

--岩反対側爆発
SE029 = playSe( spep_3 + 172, 1023 );
SE030 = playSe( spep_3 + 174, 1068 );
SE031 = playSe( spep_3 + 174, 1024 );
setSeVolumeByWorkId( spep_3 + 174, SE031, 87 );

--落ちていく
SE032 = playSe( spep_3 + 204, 1121 );
setSeVolumeByWorkId( spep_3 + 204, SE032, 57 );
stopSe( spep_3 + 296, SE032, 22 );

--下向きラッシュ
SE033 = playSe( spep_3 + 248, 1000 );
setSeVolumeByWorkId( spep_3 + 248, SE033, 67 );
SE034 = playSe( spep_3 + 248, 1110 );
setSeVolumeByWorkId( spep_3 + 248, SE034, 54 );
SE035 = playSe( spep_3 + 258, 1000 );
setSeVolumeByWorkId( spep_3 + 258, SE035, 55 );
SE036 = playSe( spep_3 + 258, 1110 );
setSeVolumeByWorkId( spep_3 + 258, SE036, 54 );
SE038 = playSe( spep_3 + 268, 1001 );
setSeVolumeByWorkId( spep_3 + 268, SE038, 47 );
SE039 = playSe( spep_3 + 270, 1110 );
setSeVolumeByWorkId( spep_3 + 270, SE039, 45 );
SE040 = playSe( spep_3 + 282, 1110 );
setSeVolumeByWorkId( spep_3 + 282, SE040, 68 );
SE041 = playSe( spep_3 + 282, 1009 );
setSeVolumeByWorkId( spep_3 + 282, SE041, 89 );

--地面激突
SE042 = playSe( spep_3-4 + 294, 1061 );
setSeVolumeByWorkId( spep_3-4 + 294, SE042, 110 );
SE043 = playSe( spep_3-4 + 298, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_3-4 + 298, SE043, 81 );
SE044 = playSe( spep_3-4 + 298, 1188 );
setSeVolumeByWorkId( spep_3-4 + 298, SE044, 72 );
SE037 = playSe( spep_3-4 + 298, 1168 ,"",0.6);
setSeVolumeByWorkId( spep_3-4 + 298, SE037, 0 );
setSeVolumeByWorkId( spep_3-4 + 299, SE037, 2.7 );
setSeVolumeByWorkId( spep_3-4 + 300, SE037, 5.4 );
setSeVolumeByWorkId( spep_3-4 + 301, SE037, 8.1 );
setSeVolumeByWorkId( spep_3-4 + 302, SE037, 10.8 );
setSeVolumeByWorkId( spep_3-4 + 303, SE037, 13.5 );
setSeVolumeByWorkId( spep_3-4 + 304, SE037, 16.2 );
setSeVolumeByWorkId( spep_3-4 + 305, SE037, 18.9 );
setSeVolumeByWorkId( spep_3-4 + 306, SE037, 21.6 );
setSeVolumeByWorkId( spep_3-4 + 307, SE037, 24.3 );
setSeVolumeByWorkId( spep_3-4 + 308, SE037, 27 );
setSeVolumeByWorkId( spep_3-4 + 309, SE037, 29.7 );
setSeVolumeByWorkId( spep_3-4 + 310, SE037, 32.4 );
setSeVolumeByWorkId( spep_3-4 + 311, SE037, 35.1 );
setSeVolumeByWorkId( spep_3-4 + 312, SE037, 37.8 );
setSeVolumeByWorkId( spep_3-4 + 313, SE037, 40.5 );
setSeVolumeByWorkId( spep_3-4 + 314, SE037, 43.2 );
setSeVolumeByWorkId( spep_3-4 + 315, SE037, 45.9 );
setSeVolumeByWorkId( spep_3-4 + 316, SE037, 48.6 );
setSeVolumeByWorkId( spep_3-4 + 317, SE037, 51.3 );
setSeVolumeByWorkId( spep_3-4 + 318, SE037, 54 );
setSeVolumeByWorkId( spep_3-4 + 319, SE037, 56.7 );
setSeVolumeByWorkId( spep_3-4 + 320, SE037, 59.4 );
setSeVolumeByWorkId( spep_3-4 + 321, SE037, 62.1 );
setSeVolumeByWorkId( spep_3-4 + 322, SE037, 64.8 );
setSeVolumeByWorkId( spep_3-4 + 323, SE037, 67.5 );
setSeVolumeByWorkId( spep_3-4 + 324, SE037, 70.2 );
setSeVolumeByWorkId( spep_3-4 + 325, SE037, 72.9 );
setSeVolumeByWorkId( spep_3-4 + 326, SE037, 77 );
setStartTimeMs( SE037,  667 );

--岩持ち上げる
SE045 = playSe( spep_3 + 442, 1190 );
setSeVolumeByWorkId( spep_3 + 442, SE045, 87 );
SE046 = playSe( spep_3 + 442, 1170 );
setPitch( spep_3 + 442, SE046, -400 );
setTimeStretch( SE046, 0.73, 10, 1 );
SE047 = playSe( spep_3 + 444, 1047 );

--岩挟まれる
SE049 = playSe( spep_3 + 492, 1061 );
setSeVolumeByWorkId( spep_3 + 492, SE049, 200 );
setPitch( spep_3 + 492, SE049, -1000 );
setTimeStretch( SE049, 0.33, 10, 1 );
SE050 = playSe( spep_3 + 496, 1188 );
setSeVolumeByWorkId( spep_3 + 496, SE050, 81 );
SE051 = playSe( spep_3 + 498, 1160 );
setSeVolumeByWorkId( spep_3 + 498, SE051, 84 );
SE048 = playSe( spep_3 + 498, 1168 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 498, SE048, 0 );
setSeVolumeByWorkId( spep_3 + 499, SE048, 12.5 );
setSeVolumeByWorkId( spep_3 + 500, SE048, 25 );
setSeVolumeByWorkId( spep_3 + 501, SE048, 37.5 );
setSeVolumeByWorkId( spep_3 + 502, SE048, 50 );
setSeVolumeByWorkId( spep_3 + 503, SE048, 62.5 );
setSeVolumeByWorkId( spep_3 + 504, SE048, 75 );
setSeVolumeByWorkId( spep_3 + 505, SE048, 87.5 );
setSeVolumeByWorkId( spep_3 + 506, SE048, 100 );	
setStartTimeMs( SE048,  600 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 660, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 534 );
endPhase( spep_3 + 652 );
else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 64, 1035 );
SE003 = playSe( spep_0 + 64, 1298 );
setSeVolumeByWorkId( spep_0 + 64, SE003, 70 );

--オーラ
SE004 = playSe( spep_0 + 76, 1036 );
setPitch( spep_0 + 76, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );
SE005 = playSe( spep_0 + 100, 1036 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

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

--気ダメ
stopSe( spep_1 + 4, SE002, 0 );
stopSe( spep_1 + 4, SE003, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- 突進
------------------------------------------------------
rush = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 36, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 34, rush, 255 );
setEffAlphaKey( spep_2 + 35, rush, 255 );
setEffAlphaKey( spep_2 + 36, rush, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0,40, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );


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

--SE
--フリーザ向かっていく
SE007 = playSe( spep_2 + 12, 1182 );
SE008 = playSe( spep_2 + 12, 9 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 36;
------------------------------------------------------
--	後半
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 662, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 662, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 662, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 662, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 662, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 662, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 662, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 662, fighting_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_3-5 + 8,  10016, 18, 0x100, -1, 0, 93.3, 186.7 );--ズンッ
setEffShake( spep_3-5 + 8, ctzun, 18, 10 );
setEffMoveKey( spep_3-5 + 8, ctzun, 93.3, 186.7 , 0 );
setEffMoveKey( spep_3-5 + 10, ctzun, 107.3, 273.9 , 0 );
setEffMoveKey( spep_3-5 + 12, ctzun, 119.9, 287.6 , 0 );
setEffMoveKey( spep_3-5 + 14, ctzun, 112.6, 290.8 , 0 );
setEffMoveKey( spep_3-5 + 16, ctzun, 111.2, 287.6 , 0 );
setEffMoveKey( spep_3-5 + 18, ctzun, 113.8, 299.3 , 0 );
setEffMoveKey( spep_3-5 + 20, ctzun, 130.7, 303.9 , 0 );
setEffMoveKey( spep_3-5 + 22, ctzun, 127.1, 308.9 , 0 );
setEffMoveKey( spep_3-5 + 24, ctzun, 141.8, 325.8 , 0 );
setEffMoveKey( spep_3-5 + 26, ctzun, 148.4, 334.4 , 0 );

setEffScaleKey( spep_3-5 + 10, ctzun, 2.05, 2.05 );
setEffScaleKey( spep_3-5 + 12, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_3-5 + 14, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_3-5 + 16, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_3-5 + 18, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_3-5 + 20, ctzun, 2.51, 2.51 );
setEffScaleKey( spep_3-5 + 22, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_3-5 + 24, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_3-5 + 26, ctzun, 2.93, 2.93 );

setEffRotateKey( spep_3-5 + 8, ctzun, 20.2 );
setEffRotateKey( spep_3-5 + 26, ctzun, 20.2 );

setEffAlphaKey( spep_3-5 + 8, ctzun, 255 );
setEffAlphaKey( spep_3-5 + 16, ctzun, 255 );
setEffAlphaKey( spep_3-5 + 18, ctzun, 204 );
setEffAlphaKey( spep_3-5 + 20, ctzun, 153 );
setEffAlphaKey( spep_3-5 + 22, ctzun, 102 );
setEffAlphaKey( spep_3-5 + 24, ctzun, 51 );
setEffAlphaKey( spep_3-5 + 26, ctzun, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_3-3 + 48,  10017, 68, 0x100, -1, 0, -32.4, 231.3 );--ドガガガッ
setEffShake( spep_3-3 + 48, ctdogagaga, 68, 10 );
setEffMoveKey( spep_3-3 + 48, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogagaga, -31.5, 245.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogagaga, -39.3, 229.1 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogagaga, -23.9, 241.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogagaga, -38.1, 234.1 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogagaga, -33.1, 228.5 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogagaga, -25.3, 241.7 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogagaga, -40.8, 235.1 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogagaga, -27.4, 242.5 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogagaga, -33.3, 228.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogagaga, -29.5, 245.7 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogagaga, -37.3, 227.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogagaga, -23, 240.4 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogagaga, -42.1, 234.8 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogagaga, -23.3, 236.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctdogagaga, -39.1, 238.9 , 0 );
setEffMoveKey( spep_3-3 + 82, ctdogagaga, -28.3, 230.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctdogagaga, -32, 238.1 , 0 );
setEffMoveKey( spep_3-3 + 86, ctdogagaga, -37.8, 240.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctdogagaga, -21.4, 242.4 , 0 );
setEffMoveKey( spep_3-3 + 90, ctdogagaga, -38.7, 238 , 0 );
setEffMoveKey( spep_3-3 + 92, ctdogagaga, -27.7, 231.5 , 0 );
setEffMoveKey( spep_3-3 + 94, ctdogagaga, -43.2, 238.6 , 0 );
setEffMoveKey( spep_3-3 + 96, ctdogagaga, -24.3, 228.4 , 0 );
setEffMoveKey( spep_3-3 + 98, ctdogagaga, -39.6, 239.8 , 0 );
setEffMoveKey( spep_3-3 + 100, ctdogagaga, -25.7, 237.7 , 0 );
setEffMoveKey( spep_3-3 + 102, ctdogagaga, -37.4, 243.2 , 0 );
setEffMoveKey( spep_3-3 + 104, ctdogagaga, -27.1, 233.3 , 0 );
setEffMoveKey( spep_3-3 + 106, ctdogagaga, -30.2, 245.1 , 0 );
setEffMoveKey( spep_3-3 + 108, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_3-3 + 110, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_3-3 + 112, ctdogagaga, -37.6, 248.3 , 0 );
setEffMoveKey( spep_3-3 + 114, ctdogagaga, -32, 284.9 , 0 );
setEffMoveKey( spep_3-3 + 116, ctdogagaga, -35.4, 306.5 , 0 );

setEffScaleKey( spep_3-3 + 48, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 110, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 112, ctdogagaga, 2.88, 2.88 );
setEffScaleKey( spep_3-3 + 114, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_3-3 + 116, ctdogagaga, 3.59, 3.59 );

setEffRotateKey( spep_3-3 + 48, ctdogagaga, 0 );
setEffRotateKey( spep_3-3 + 116, ctdogagaga, 0 );

setEffAlphaKey( spep_3-3 + 48, ctdogagaga, 255 );
setEffAlphaKey( spep_3-3 + 110, ctdogagaga, 255 );
setEffAlphaKey( spep_3-3 + 112, ctdogagaga, 170 );
setEffAlphaKey( spep_3-3 + 114, ctdogagaga, 85 );
setEffAlphaKey( spep_3-3 + 116, ctdogagaga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-3 + 146,  10021, 22, 0x100, -1, 0, -71.9, 364.5 );--バゴォッ
setEffShake( spep_3-3 + 146, ctbago, 68, 10 );
setEffMoveKey( spep_3-3 + 146, ctbago, -71.9, 364.5 , 0 );
setEffMoveKey( spep_3-3 + 148, ctbago, -73.2, 368.5 , 0 );
setEffMoveKey( spep_3-3 + 150, ctbago, -58, 397.4 , 0 );
setEffMoveKey( spep_3-3 + 152, ctbago, -62.5, 391.9 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbago, -68.5, 382.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbago, -55, 405.6 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbago, -66, 394.1 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbago, -48.1, 398.6 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbago, -58, 404 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbago, -64, 395.2 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbago, -49, 421.2 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbago, -47.5, 425.3 , 0 );

setEffScaleKey( spep_3-3 + 146, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_3-3 + 148, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_3-3 + 150, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_3-3 + 152, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_3-3 + 154, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_3-3 + 156, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 158, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_3-3 + 160, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_3-3 + 162, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_3-3 + 164, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_3-3 + 166, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_3-3 + 168, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_3-3 + 146, ctbago, -20 );
setEffRotateKey( spep_3-3 + 168, ctbago, -20 );

setEffAlphaKey( spep_3-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 162, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 164, ctbago, 170 );
setEffAlphaKey( spep_3-3 + 166, ctbago, 85 );
setEffAlphaKey( spep_3-3 + 168, ctbago, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 149, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 8, 1, 108 );
changeAnime( spep_3-3 + 48, 1, 106 );
changeAnime( spep_3-3 + 53, 1, 108 );
changeAnime( spep_3-3 + 54, 1, 106 );
changeAnime( spep_3-3 + 58, 1, 108 );
changeAnime( spep_3-3 + 62, 1, 106 );
changeAnime( spep_3-3 + 66, 1, 108 );
changeAnime( spep_3-3 + 70, 1, 106 );
changeAnime( spep_3-3 + 74, 1, 108 );
changeAnime( spep_3-3 + 79, 1, 106 );
changeAnime( spep_3-3 + 80, 1, 108 );
changeAnime( spep_3-3 + 84, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );
changeAnime( spep_3-3 + 93, 1, 106 );
changeAnime( spep_3-3 + 94, 1, 108 );
changeAnime( spep_3-3 + 98, 1, 106 );
changeAnime( spep_3-3 + 102, 1, 108 );
changeAnime( spep_3-3 + 106, 1, 106 );
changeAnime( spep_3-3 + 111, 1, 108 );
changeAnime( spep_3-3 + 112, 1, 106 );
changeAnime( spep_3-3 + 146, 1, 108 );

setMoveKey( spep_3 + 0, 1, 88.7, 49.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 105.4, 49.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 115.4, 49.1 , 0 );
setMoveKey( spep_3-3 + 7, 1, 118.7, 49.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 141.7, 73 , 0 );
setMoveKey( spep_3-3 + 10, 1, 146.5, 60 , 0 );
setMoveKey( spep_3-3 + 12, 1, 135.6, 58 , 0 );
setMoveKey( spep_3-3 + 14, 1, 121, 75 , 0 );
setMoveKey( spep_3-3 + 16, 1, 98.4, 66 , 0 );
setMoveKey( spep_3-3 + 18, 1, 88.5, 74 , 0 );
setMoveKey( spep_3-3 + 20, 1, 85.9, 56 , 0 );
setMoveKey( spep_3-3 + 22, 1, 88.7, 59 , 0 );
setMoveKey( spep_3-3 + 24, 1, 102.6, 89 , 0 );
setMoveKey( spep_3-3 + 26, 1, 89.4, 55 , 0 );
setMoveKey( spep_3-3 + 28, 1, 89, 68 , 0 );
setMoveKey( spep_3-3 + 30, 1, 82.4, 65 , 0 );
setMoveKey( spep_3-3 + 32, 1, 82.6, 65 , 0 );
setMoveKey( spep_3-3 + 34, 1, 85.7, 69 , 0 );
setMoveKey( spep_3-3 + 36, 1, 90.6, 55 , 0 );
setMoveKey( spep_3-3 + 38, 1, 91.4, 65 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95, 58 , 0 );
setMoveKey( spep_3-3 + 42, 1, 95.4, 58 , 0 );
setMoveKey( spep_3-3 + 44, 1, 96.6, 66 , 0 );
setMoveKey( spep_3-3 + 47, 1, 94.7, 57 , 0 );
setMoveKey( spep_3-3 + 48, 1, 13.1, 13.4 , 0 );
setMoveKey( spep_3-3 + 51, 1, 13.2, 2.9 , 0 );
setMoveKey( spep_3-3 + 53, 1, 76.4, 5.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 36.2, -4.1 , 0 );
setMoveKey( spep_3-3 + 57, 1, 15.2, -1.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, 54.2, 23 , 0 );
setMoveKey( spep_3-3 + 61, 1, 58.2, 8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.4, -7.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 81.4, -5.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 106.4, 48.2 , 0 );
setMoveKey( spep_3-3 + 69, 1, 96.4, 34.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 47.2, -10.1 , 0 );
setMoveKey( spep_3-3 + 73, 1, 35.2, 2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 122.4, -17 , 0 );
setMoveKey( spep_3-3 + 77, 1, 118.4, -5 , 0 );
setMoveKey( spep_3-3 + 79, 1, 65.3, 12.4 , 0 );
setMoveKey( spep_3-3 + 80, 1, 79.4, 62.3 , 0 );
setMoveKey( spep_3-3 + 83, 1, 75.4, 86.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 25.2, -2.1 , 0 );
setMoveKey( spep_3-3 + 87, 1, 4.2, 0.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 76.3, -4.1 , 0 );
setMoveKey( spep_3-3 + 91, 1, 80.3, -19.1 , 0 );
setMoveKey( spep_3-3 + 93, 1, 88.4, -20.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 73.2, 11.1 , 0 );
setMoveKey( spep_3-3 + 97, 1, 85.2, 15.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 101.4, 52.1 , 0 );
setMoveKey( spep_3-3 + 101, 1, 113.4, 48.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 65.2, 12.1 , 0 );
setMoveKey( spep_3-3 + 105, 1, 85.3, 14.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 83.3, 3.9 , 0 );
setMoveKey( spep_3-3 + 109, 1, 67.3, -18.1 , 0 );
setMoveKey( spep_3-3 + 111, 1, 110.3, -35.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, 41.4, 0.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, 62, 2.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 11.5, 13.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 11.1, 14.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, 17.7, 15.8 , 0 );
setMoveKey( spep_3-3 + 122, 1, 23.2, 17 , 0 );
setMoveKey( spep_3-3 + 124, 1, 22.8, 13.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, 20.4, 17.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 20.9, 17.5 , 0 );
setMoveKey( spep_3-3 + 130, 1, 21.5, 17.6 , 0 );
setMoveKey( spep_3-3 + 132, 1, 22.1, 17.6 , 0 );
setMoveKey( spep_3-3 + 134, 1, 22.6, 17.7 , 0 );
setMoveKey( spep_3-3 + 136, 1, 23.2, 17.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, 23.8, 17.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, 24.3, 18 , 0 );
setMoveKey( spep_3-3 + 142, 1, 24.9, 18 , 0 );
setMoveKey( spep_3-3 + 145, 1, 25.5, 18.1 , 0 );
setMoveKey( spep_3-3 + 146, 1, 7.5, -151.2 , 0 );
setMoveKey( spep_3-3 + 149, 1, 5.5, -178.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 149, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 47, 1, 0 );
setRotateKey( spep_3-3 + 48, 1, -45 );
setRotateKey( spep_3-3 + 51, 1, -45 );
setRotateKey( spep_3-3 + 53, 1, 0 );
setRotateKey( spep_3-3 + 54, 1, -45 );
setRotateKey( spep_3-3 + 57, 1, -45 );
setRotateKey( spep_3-3 + 58, 1, 0 );
setRotateKey( spep_3-3 + 61, 1, 0 );
setRotateKey( spep_3-3 + 62, 1, -27.3 );
setRotateKey( spep_3-3 + 65, 1, -27.3 );
setRotateKey( spep_3-3 + 66, 1, 0 );
setRotateKey( spep_3-3 + 69, 1, 0 );
setRotateKey( spep_3-3 + 70, 1, -45 );
setRotateKey( spep_3-3 + 73, 1, -45 );
setRotateKey( spep_3-3 + 74, 1, 0 );
setRotateKey( spep_3-3 + 77, 1, 0 );
setRotateKey( spep_3-3 + 79, 1, -37.5 );
setRotateKey( spep_3-3 + 80, 1, -16 );
setRotateKey( spep_3-3 + 83, 1, -16 );
setRotateKey( spep_3-3 + 84, 1, -43.5 );
setRotateKey( spep_3-3 + 87, 1, -43.5 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 91, 1, 0 );
setRotateKey( spep_3-3 + 93, 1, -45 );
setRotateKey( spep_3-3 + 94, 1, 4 );
setRotateKey( spep_3-3 + 97, 1, 4 );
setRotateKey( spep_3-3 + 98, 1, -35.8 );
setRotateKey( spep_3-3 + 101, 1, -35.8 );
setRotateKey( spep_3-3 + 102, 1, 0 );
setRotateKey( spep_3-3 + 105, 1, 0 );
setRotateKey( spep_3-3 + 106, 1, -41.8 );
setRotateKey( spep_3-3 + 109, 1, -41.8 );
setRotateKey( spep_3-3 + 111, 1, -9.2 );
setRotateKey( spep_3-3 + 112, 1, -9.2 );
setRotateKey( spep_3-3 + 114, 1, -9 );
setRotateKey( spep_3-3 + 116, 1, -8.8 );
setRotateKey( spep_3-3 + 118, 1, -8.6 );
setRotateKey( spep_3-3 + 120, 1, -8.4 );
setRotateKey( spep_3-3 + 122, 1, -8.2 );
setRotateKey( spep_3-3 + 124, 1, -8 );
setRotateKey( spep_3-3 + 126, 1, -7.8 );
setRotateKey( spep_3-3 + 128, 1, -7.6 );
setRotateKey( spep_3-3 + 130, 1, -7.4 );
setRotateKey( spep_3-3 + 132, 1, -7.2 );
setRotateKey( spep_3-3 + 134, 1, -7 );
setRotateKey( spep_3-3 + 136, 1, -6.8 );
setRotateKey( spep_3-3 + 138, 1, -6.6 );
setRotateKey( spep_3-3 + 140, 1, -6.4 );
setRotateKey( spep_3-3 + 142, 1, -6.2 );
setRotateKey( spep_3-3 + 145, 1, -6 );
setRotateKey( spep_3-3 + 146, 1, 89.3 );
setRotateKey( spep_3-3 + 149, 1, 89.3 );

--敵の動き
setDisp( spep_3-3 + 236, 1, 1 );
setDisp( spep_3-3 + 302, 1, 0 );

changeAnime( spep_3-3 + 236, 1, 108 );
changeAnime( spep_3-3 + 252, 1, 106 );
changeAnime( spep_3-3 + 256, 1, 108 );
changeAnime( spep_3-3 + 258, 1, 106 );
changeAnime( spep_3-3 + 262, 1, 108 );
changeAnime( spep_3-3 + 266, 1, 106 );
changeAnime( spep_3-3 + 270, 1, 108 );
changeAnime( spep_3-3 + 274, 1, 106 );
changeAnime( spep_3-3 + 278, 1, 108 );
changeAnime( spep_3-3 + 280, 1, 106 );
changeAnime( spep_3-3 + 284, 1, 108 );
changeAnime( spep_3-3 + 288, 1, 106 );
changeAnime( spep_3-3 + 292, 1, 108 );

setMoveKey( spep_3-3 + 236, 1, -1.4, -86.6 , 0 );
setMoveKey( spep_3-3 + 238, 1, 0.3, -87.3 , 0 );
setMoveKey( spep_3-3 + 240, 1, 2.1, -87.5 , 0 );
setMoveKey( spep_3-3 + 242, 1, 2.2, -96 , 0 );
setMoveKey( spep_3-3 + 244, 1, 2.4, -102.1 , 0 );
setMoveKey( spep_3-3 + 246, 1, 2.5, -105.3 , 0 );
setMoveKey( spep_3-3 + 248, 1, 2.7, -108.1 , 0 );
setMoveKey( spep_3-3 + 250, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_3-3 + 251, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_3-3 + 252, 1, 8.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 255, 1, 9.1, -58.1 , 0 );
setMoveKey( spep_3-3 + 256, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_3-3 + 257, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_3-3 + 258, 1, 3.1, -67.6 , 0 );
setMoveKey( spep_3-3 + 260, 1, -3, -76.4 , 0 );
setMoveKey( spep_3-3 + 261, 1, -3, -76.4 , 0 );
setMoveKey( spep_3-3 + 262, 1, 1.2, -78.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, 1.2, -77 , 0 );
setMoveKey( spep_3-3 + 265, 1, 1.2, -77 , 0 );
setMoveKey( spep_3-3 + 266, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_3-3 + 268, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_3-3 + 269, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, 5.3, -83.3 , 0 );
setMoveKey( spep_3-3 + 272, 1, 9, -89.8 , 0 );
setMoveKey( spep_3-3 + 273, 1, 9, -89.8 , 0 );
setMoveKey( spep_3-3 + 274, 1, 3.5, -81.3 , 0 );
setMoveKey( spep_3-3 + 276, 1, 5.5, -73.6 , 0 );
setMoveKey( spep_3-3 + 277, 1, 5.5, -73.6 , 0 )
setMoveKey( spep_3-3 + 278, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_3-3 + 279, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_3-3 + 280, 1, 16.7, -56.2 , 0 );
setMoveKey( spep_3-3 + 282, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_3-3 + 283, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_3-3 + 284, 1, 5, -81 , 0 );
setMoveKey( spep_3-3 + 286, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_3-3 + 287, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_3-3 + 288, 1, 2.8, -65.8 , 0 );
setMoveKey( spep_3-3 + 290, 1, 1.9, -88 , 0 );
setMoveKey( spep_3-3 + 291, 1, 1.9, -88 , 0 );
setMoveKey( spep_3-3 + 292, 1, 2.6, -114 , 0 );
setMoveKey( spep_3-3 + 293, 1, 2.6, -114 , 0 );
setMoveKey( spep_3-3 + 294, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_3-3 + 295, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_3-3 + 296, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_3-3 + 297, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_3-3 + 298, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_3-3 + 299, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_3-3 + 300, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_3-3 + 301, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_3-3 + 302, 1, -5.7, -135.2 , 0 );

setScaleKey( spep_3-3 + 236, 1,0.71,0.71);
setScaleKey( spep_3-3 + 291, 1,0.71,0.71);
setScaleKey( spep_3-3 + 292, 1,0.89,0.89);
setScaleKey( spep_3-3 + 294, 1,0.89,0.89);
setScaleKey( spep_3-3 + 295, 1,0.89,0.89);
setScaleKey( spep_3-3 + 296, 1,1.08,1.08);
setScaleKey( spep_3-3 + 302, 1,1.08,1.08);

setRotateKey( spep_3-3 + 236, 1, 90 );
setRotateKey( spep_3-3 + 251, 1, 90 );
setRotateKey( spep_3-3 + 252, 1, 65.5 );
setRotateKey( spep_3-3 + 255, 1, 65.5 );
setRotateKey( spep_3-3 + 256, 1, 90 );
setRotateKey( spep_3-3 + 257, 1, 90 );
setRotateKey( spep_3-3 + 258, 1, 65.5 );
setRotateKey( spep_3-3 + 261, 1, 65.5 );
setRotateKey( spep_3-3 + 262, 1, 105.7 );
setRotateKey( spep_3-3 + 265, 1, 105.7 );
setRotateKey( spep_3-3 + 266, 1, 65.5 );
setRotateKey( spep_3-3 + 269, 1, 65.5 );
setRotateKey( spep_3-3 + 270, 1, 90 );
setRotateKey( spep_3-3 + 273, 1, 90 );
setRotateKey( spep_3-3 + 274, 1, 65.5 );
setRotateKey( spep_3-3 + 277, 1, 65.5 );
setRotateKey( spep_3-3 + 278, 1, 90 );
setRotateKey( spep_3-3 + 279, 1, 90 );
setRotateKey( spep_3-3 + 280, 1, 65.5 );
setRotateKey( spep_3-3 + 283, 1, 65.5 )
setRotateKey( spep_3-3 + 284, 1, 90 );
setRotateKey( spep_3-3 + 286, 1, 90 );
setRotateKey( spep_3-3 + 288, 1, 65.5 );
setRotateKey( spep_3-3 + 291, 1, 65.5 );
setRotateKey( spep_3-3 + 292, 1, 90 );
setRotateKey( spep_3-3 + 295, 1, 90 );
setRotateKey( spep_3-3 + 296, 1, 91.8 );
setRotateKey( spep_3-3 + 302, 1, 91.8 );

--敵の動き
setDisp( spep_3-3 + 476, 1, 1 );
setDisp( spep_3-1 + 534, 1, 0 );

changeAnime( spep_3-3 + 476, 1,8 );
changeAnime( spep_3-3 + 498, 1,6 );

setMoveKey( spep_3-3 + 476, 1, -26.1, -21.9 , 0 );
setMoveKey( spep_3-3 + 478, 1, -26.1, -18.1 , 0 );
setMoveKey( spep_3-3 + 480, 1, -26.1, -14.7 , 0 );
setMoveKey( spep_3-3 + 482, 1, -26.1, -11.7 , 0 );
setMoveKey( spep_3-3 + 484, 1, -26.1, -9.1 , 0 );
setMoveKey( spep_3-3 + 486, 1, -26.1, -6.9 , 0 );
setMoveKey( spep_3-3 + 488, 1, -26.1, -5.1 , 0 );
setMoveKey( spep_3-3 + 490, 1, -26.1, -3.7 , 0 );
setMoveKey( spep_3-3 + 492, 1, -26.1, -2.7 , 0 );
setMoveKey( spep_3-3 + 494, 1, -26.1, -2.1 , 0 );
setMoveKey( spep_3-3 + 496, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_3-3 + 497, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_3-3 + 498, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_3-3 + 499, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_3-3 + 500, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_3-3 + 501, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_3-3 + 502, 1, 44.5, -39 , 0 );
setMoveKey( spep_3-3 + 503, 1, 44.5, -39 , 0 );
setMoveKey( spep_3-3 + 504, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_3-3 + 505, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_3-3 + 506, 1, 40, -22.5 , 0 );
setMoveKey( spep_3-3 + 507, 1, 40, -22.5 , 0 );
setMoveKey( spep_3-3 + 508, 1, 31, -60.5 , 0 );
setMoveKey( spep_3-3 + 509, 1, 31, -60.5 , 0 );
setMoveKey( spep_3-3 + 510, 1, 28, -24.1 , 0 );
setMoveKey( spep_3-3 + 511, 1, 28, -24.1 , 0 );
setMoveKey( spep_3-3 + 512, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_3-3 + 513, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_3-3 + 514, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_3-3 + 515, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_3-3 + 516, 1, 37, -49 , 0 );
setMoveKey( spep_3-3 + 517, 1, 37, -49 , 0 );
setMoveKey( spep_3-3 + 518, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_3-3 + 519, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_3-3 + 520, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_3-3 + 521, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_3-3 + 522, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_3-3 + 523, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_3-3 + 524, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_3-3 + 525, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_3-3 + 526, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_3-3 + 527, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_3-3 + 528, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_3-3 + 529, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_3-3 + 530, 1, 40, -25.1 , 0 );
setMoveKey( spep_3-3 + 531, 1, 40, -25.1 , 0 );
setMoveKey( spep_3-3 + 532, 1, 32.5, -36.7 , 0 );
setMoveKey( spep_3-1 + 534, 1, 32.6, -21.6 , 0 );

setScaleKey( spep_3-3 + 476, 1,2.06,2.06);
setScaleKey( spep_3-3 + 497, 1,2.06,2.06);
setScaleKey( spep_3-3 + 498, 1,2.18,2.18);
setScaleKey( spep_3-1 + 534, 1,2.18,2.18);

setRotateKey( spep_3-3 + 476, 1, 0 );
setRotateKey( spep_3-3 + 496, 1, 0 );
setRotateKey( spep_3-3 + 497, 1, 0 );
setRotateKey( spep_3-3 + 498, 1, 45 );
setRotateKey( spep_3-1 + 534, 1, 45 );

--SE
--フリーザ向かっていく
stopSe( spep_3 + 38, SE008, 24 );

--初手パンチ
SE009 = playSe( spep_3 + 6, 1233 );	
setSeVolumeByWorkId( spep_3 + 6, SE009, 0 );
setSeVolumeByWorkId( spep_3 + 7, SE009, 50 );
setSeVolumeByWorkId( spep_3 + 8, SE009, 100 );
setStartTimeMs( SE009,  117 );
SE010 = playSe( spep_3 + 10, 1135 );
setPitch( spep_3 + 10, SE010, 200 );
setTimeStretch( SE010, 1.13, 10, 1 );
SE011 = playSe( spep_3 + 10, 1016 );
SE012 = playSe( spep_3 + 14, 1187 );

--横向きラッシュ
SE013 = playSe( spep_3 + 50, 1189 );
setSeVolumeByWorkId( spep_3 + 50, SE013, 126 );
SE014 = playSe( spep_3 + 56, 1009 );
setSeVolumeByWorkId( spep_3 + 56, SE014, 83 );
SE015 = playSe( spep_3 + 56, 1110 );
SE016 = playSe( spep_3 + 66, 1006 );
SE017 = playSe( spep_3 + 76, 1110 );
SE018 = playSe( spep_3 + 76, 1001 );
setSeVolumeByWorkId( spep_3 + 76, SE018, 65 );
stopSe(spep_3 + 142 - 18,SE018,18);
SE020 = playSe( spep_3 + 86, 1110 );
stopSe(spep_3 + 142 - 18,SE020,18)
SE019 = playSe( spep_3 + 106, 1072 );
setSeVolumeByWorkId( spep_3 + 106, SE019, 0 );
setSeVolumeByWorkId( spep_3 + 107, SE019, 14 );
setSeVolumeByWorkId( spep_3 + 108, SE019, 28 );
setSeVolumeByWorkId( spep_3 + 109, SE019, 42 );
setSeVolumeByWorkId( spep_3 + 110, SE019, 56 );
setSeVolumeByWorkId( spep_3 + 111, SE019, 70 );
setSeVolumeByWorkId( spep_3 + 112, SE019, 84 );
setStartTimeMs( SE019,  317 );
SE021 = playSe( spep_3 + 96, 1010 );
setSeVolumeByWorkId( spep_3 + 96, SE021, 85 );
SE022 = playSe( spep_3 + 98, 1110 );
setSeVolumeByWorkId( spep_3 + 98, SE022, 90 );
stopSe(spep_3 + 142 - 10,SE022,10);
SE023 = playSe( spep_3 + 110, 1110 );
SE024 = playSe( spep_3 + 110, 1000 );

--岩たたきつけ
SE025 = playSe( spep_3 + 144, 1061 );
stopSe( spep_3 + 162, SE025, 12 );
SE026 = playSe( spep_3 + 148, 1182 );
setSeVolumeByWorkId( spep_3 + 148, SE026, 141 );
stopSe( spep_3 + 158, SE026, 6 );
SE027 = playSe( spep_3 + 164, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 164, SE027, 79 );
SE028 = playSe( spep_3 + 150, 1188 );

--岩反対側爆発
SE029 = playSe( spep_3 + 172, 1023 );
SE030 = playSe( spep_3 + 174, 1068 );
SE031 = playSe( spep_3 + 174, 1024 );
setSeVolumeByWorkId( spep_3 + 174, SE031, 87 );

--落ちていく
SE032 = playSe( spep_3 + 204, 1121 );
setSeVolumeByWorkId( spep_3 + 204, SE032, 57 );
stopSe( spep_3 + 296, SE032, 22 );

--下向きラッシュ
SE033 = playSe( spep_3 + 248, 1000 );
setSeVolumeByWorkId( spep_3 + 248, SE033, 67 );
SE034 = playSe( spep_3 + 248, 1110 );
setSeVolumeByWorkId( spep_3 + 248, SE034, 54 );
SE035 = playSe( spep_3 + 258, 1000 );
setSeVolumeByWorkId( spep_3 + 258, SE035, 55 );
SE036 = playSe( spep_3 + 258, 1110 );
setSeVolumeByWorkId( spep_3 + 258, SE036, 54 );
SE038 = playSe( spep_3 + 268, 1001 );
setSeVolumeByWorkId( spep_3 + 268, SE038, 47 );
SE039 = playSe( spep_3 + 270, 1110 );
setSeVolumeByWorkId( spep_3 + 270, SE039, 45 );
SE040 = playSe( spep_3 + 282, 1110 );
setSeVolumeByWorkId( spep_3 + 282, SE040, 68 );
SE041 = playSe( spep_3 + 282, 1009 );
setSeVolumeByWorkId( spep_3 + 282, SE041, 89 );

--地面激突
SE042 = playSe( spep_3-4 + 294, 1061 );
setSeVolumeByWorkId( spep_3-4 + 294, SE042, 110 );
SE043 = playSe( spep_3-4 + 298, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_3-4 + 298, SE043, 81 );
SE044 = playSe( spep_3-4 + 298, 1188 );
setSeVolumeByWorkId( spep_3-4 + 298, SE044, 72 );
SE037 = playSe( spep_3-4 + 298, 1168 ,"",0.6);
setSeVolumeByWorkId( spep_3-4 + 298, SE037, 0 );
setSeVolumeByWorkId( spep_3-4 + 299, SE037, 2.7 );
setSeVolumeByWorkId( spep_3-4 + 300, SE037, 5.4 );
setSeVolumeByWorkId( spep_3-4 + 301, SE037, 8.1 );
setSeVolumeByWorkId( spep_3-4 + 302, SE037, 10.8 );
setSeVolumeByWorkId( spep_3-4 + 303, SE037, 13.5 );
setSeVolumeByWorkId( spep_3-4 + 304, SE037, 16.2 );
setSeVolumeByWorkId( spep_3-4 + 305, SE037, 18.9 );
setSeVolumeByWorkId( spep_3-4 + 306, SE037, 21.6 );
setSeVolumeByWorkId( spep_3-4 + 307, SE037, 24.3 );
setSeVolumeByWorkId( spep_3-4 + 308, SE037, 27 );
setSeVolumeByWorkId( spep_3-4 + 309, SE037, 29.7 );
setSeVolumeByWorkId( spep_3-4 + 310, SE037, 32.4 );
setSeVolumeByWorkId( spep_3-4 + 311, SE037, 35.1 );
setSeVolumeByWorkId( spep_3-4 + 312, SE037, 37.8 );
setSeVolumeByWorkId( spep_3-4 + 313, SE037, 40.5 );
setSeVolumeByWorkId( spep_3-4 + 314, SE037, 43.2 );
setSeVolumeByWorkId( spep_3-4 + 315, SE037, 45.9 );
setSeVolumeByWorkId( spep_3-4 + 316, SE037, 48.6 );
setSeVolumeByWorkId( spep_3-4 + 317, SE037, 51.3 );
setSeVolumeByWorkId( spep_3-4 + 318, SE037, 54 );
setSeVolumeByWorkId( spep_3-4 + 319, SE037, 56.7 );
setSeVolumeByWorkId( spep_3-4 + 320, SE037, 59.4 );
setSeVolumeByWorkId( spep_3-4 + 321, SE037, 62.1 );
setSeVolumeByWorkId( spep_3-4 + 322, SE037, 64.8 );
setSeVolumeByWorkId( spep_3-4 + 323, SE037, 67.5 );
setSeVolumeByWorkId( spep_3-4 + 324, SE037, 70.2 );
setSeVolumeByWorkId( spep_3-4 + 325, SE037, 72.9 );
setSeVolumeByWorkId( spep_3-4 + 326, SE037, 77 );
setStartTimeMs( SE037,  667 );

--岩持ち上げる
SE045 = playSe( spep_3 + 442, 1190 );
setSeVolumeByWorkId( spep_3 + 442, SE045, 87 );
SE046 = playSe( spep_3 + 442, 1170 );
setPitch( spep_3 + 442, SE046, -400 );
setTimeStretch( SE046, 0.73, 10, 1 );
SE047 = playSe( spep_3 + 444, 1047 );

--岩挟まれる
SE049 = playSe( spep_3 + 492, 1061 );
setSeVolumeByWorkId( spep_3 + 492, SE049, 200 );
setPitch( spep_3 + 492, SE049, -1000 );
setTimeStretch( SE049, 0.33, 10, 1 );
SE050 = playSe( spep_3 + 496, 1188 );
setSeVolumeByWorkId( spep_3 + 496, SE050, 81 );
SE051 = playSe( spep_3 + 498, 1160 );
setSeVolumeByWorkId( spep_3 + 498, SE051, 84 );
SE048 = playSe( spep_3 + 498, 1168 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 498, SE048, 0 );
setSeVolumeByWorkId( spep_3 + 499, SE048, 12.5 );
setSeVolumeByWorkId( spep_3 + 500, SE048, 25 );
setSeVolumeByWorkId( spep_3 + 501, SE048, 37.5 );
setSeVolumeByWorkId( spep_3 + 502, SE048, 50 );
setSeVolumeByWorkId( spep_3 + 503, SE048, 62.5 );
setSeVolumeByWorkId( spep_3 + 504, SE048, 75 );
setSeVolumeByWorkId( spep_3 + 505, SE048, 87.5 );
setSeVolumeByWorkId( spep_3 + 506, SE048, 100 );	
setStartTimeMs( SE048,  600 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 660, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 534 );
endPhase( spep_3 + 652 );
end