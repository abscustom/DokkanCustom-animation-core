--1021320:パイクーハン_バーニングシュート
--sp_effect_a9_00069

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
SP_01=156558;--	前方突進
SP_02=156559;--	手前に蹴り
SP_03=156536;--	連続蹴り
SP_04=156538;--	連続蹴り背景
SP_05=156539;--	手刀
SP_06=156550;--	手刀　背景
SP_07=156560;--	フィニッシュ　背景

--エフェクト(てき)
SP_01x=156558;--前方突進	
SP_02x=156559;--手前に蹴り	
SP_03x=156537;--連続蹴り（敵）
SP_04x=156538;--連続蹴り背景	
SP_05x=156539;--手刀	
SP_06x=156551;--手刀　背景（敵）
SP_07x=156560;--フィニッシュ　背景	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--冒頭ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setTimeStretch( SE002, 1.25, 10, 1 );
stopSe( spep_0 + 88, SE002, 32 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+100;
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
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 手前に蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_2 + 54, kick, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 54, kick, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 54, kick, 0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 54, kick, 255 );
setEffAlphaKey( spep_2 + 55, kick, 0 );
setEffAlphaKey( spep_2 + 56, kick, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE011, 0 );
    --stopSe( SP_dodge - 12, SE012, 0 );
    --stopSe( SP_dodge - 12, SE013, 0 );


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
--蹴り振りかぶり
SE005 = playSe( spep_2 + 14, 1116 );
setSeVolumeByWorkId( spep_2 + 14, SE005, 80 );
stopSe( spep_2 + 38, SE005, 24 );
SE006 = playSe( spep_2 + 22, 1004 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 54;
------------------------------------------------------
-- 連続蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 100, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 98, fighting_f, 255 );
setEffAlphaKey( spep_3 + 99, fighting_f, 255 );
setEffAlphaKey( spep_3 + 100, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 100, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 98, fighting_b, 255 );
setEffAlphaKey( spep_3 + 99, fighting_b, 255 );
setEffAlphaKey( spep_3 + 100, fighting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 58, 1, 105 );

setMoveKey( spep_3 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_3-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_3-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_3-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_3-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_3-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_3-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_3-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_3-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_3-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_3-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_3-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_3-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_3-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_3-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_3 + 0, 1,1.32,1.32);
--setScaleKey( spep_3-3 + 2,1,1.71,1.71);
setScaleKey( spep_3-3 + 4,1,2.11,2.11);
setScaleKey( spep_3-3 + 6,1,1.92,1.92);
setScaleKey( spep_3-3 + 8,1,1.71,1.71);
setScaleKey( spep_3-3 + 10, 1,1.51,1.51);
setScaleKey( spep_3-3 + 12, 1,1.32,1.32);
setScaleKey( spep_3-3 + 43, 1,1.32,1.32);
setScaleKey( spep_3-3 + 44, 1,1.42,1.42);
setScaleKey( spep_3-3 + 57, 1,1.42,1.42);
setScaleKey( spep_3-3 + 58, 1,1.53,1.53);
setScaleKey( spep_3-3 + 60, 1,1.36,1.36);
setScaleKey( spep_3-3 + 62, 1,1.21,1.21);
setScaleKey( spep_3-3 + 64, 1,1.05,1.05);
setScaleKey( spep_3-3 + 66, 1,0.9,0.9);
setScaleKey( spep_3-3 + 68, 1,0.81,0.81);
setScaleKey( spep_3-3 + 70, 1,0.72,0.72);
setScaleKey( spep_3-3 + 72, 1,0.63,0.63);
setScaleKey( spep_3-3 + 74, 1,0.54,0.54);
setScaleKey( spep_3-3 + 76, 1,0.45,0.45);
setScaleKey( spep_3-3 + 78, 1,0.36,0.36);
setScaleKey( spep_3-3 + 80, 1,0.33,0.33);
setScaleKey( spep_3-3 + 82, 1,0.31,0.31);
setScaleKey( spep_3-3 + 84, 1,0.28,0.28);
setScaleKey( spep_3-3 + 86, 1,0.26,0.26);
setScaleKey( spep_3-3 + 88, 1,0.24,0.24);
setScaleKey( spep_3-3 + 90, 1,0.21,0.21);
setScaleKey( spep_3-3 + 92, 1,0.2,0.2);
setScaleKey( spep_3-3 + 94, 1,0.18,0.18);
setScaleKey( spep_3-3 + 96, 1,0.15,0.15);
setScaleKey( spep_3-3 + 98, 1,0.13,0.13);
setScaleKey( spep_3-3 + 100,1,0.1,0.1);
setScaleKey( spep_3-3 + 102,1,0.08,0.08);
--setScaleKey( spep_3-3 + 104,1,0.06,0.06);

setRotateKey( spep_3-3 + 0, 1, -52.3 );
setRotateKey( spep_3-3 + 2, 1, -50.8 );
setRotateKey( spep_3-3 + 4, 1, -49.2 );
setRotateKey( spep_3-3 + 6, 1, -48.8 );
setRotateKey( spep_3-3 + 8, 1, -48.4 );
setRotateKey( spep_3-3 + 10, 1, -48 );
setRotateKey( spep_3-3 + 12, 1, -47.6 );
setRotateKey( spep_3-3 + 14, 1, -47.1 );
setRotateKey( spep_3-3 + 16, 1, -46.7 );
setRotateKey( spep_3-3 + 18, 1, -46.3 );
setRotateKey( spep_3-3 + 20, 1, -45.9 );
setRotateKey( spep_3-3 + 22, 1, -45.4 );
setRotateKey( spep_3-3 + 24, 1, -45 );
setRotateKey( spep_3-3 + 26, 1, -44.6 );
setRotateKey( spep_3-3 + 28, 1, -44.2 );
setRotateKey( spep_3-3 + 30, 1, -43.8 );
setRotateKey( spep_3-3 + 32, 1, -43.3 );
setRotateKey( spep_3-3 + 34, 1, -42.9 );
setRotateKey( spep_3-3 + 36, 1, -42.5 );
setRotateKey( spep_3-3 + 38, 1, -42.1 );
setRotateKey( spep_3-3 + 40, 1, -41.7 );
setRotateKey( spep_3-3 + 43, 1, -41.2 );
setRotateKey( spep_3-3 + 44, 1, -31.8 );
setRotateKey( spep_3-3 + 57, 1, -31.8 );
setRotateKey( spep_3-3 + 58, 1, 9.7 );
setRotateKey( spep_3-3 + 102, 1, 9.7 );

--SE
--足払い
SE007 = playSe( spep_3 + 6, 1010 );
SE008 = playSe( spep_3 + 6, 1110 );

--ハイキック
SE009 = playSe( spep_3 + 42, 1189 );
SE010 = playSe( spep_3 + 46, 1001 );
setSeVolumeByWorkId( spep_3 + 46, SE010, 65 );
stopSe( spep_3 + 60, SE010, 6 );
SE011 = playSe( spep_3 + 46, 1009 );
setSeVolumeByWorkId( spep_3 + 46, SE011, 79 );
stopSe( spep_3 + 60, SE011, 6 );

--ジャンプ蹴り上げ
SE012 = playSe( spep_3 + 66, 1010 );
setSeVolumeByWorkId( spep_3 + 66, SE012, 86 );
SE013 = playSe( spep_3 + 68, 1001 );
setSeVolumeByWorkId( spep_3 + 68, SE013, 73 );
SE014 = playSe( spep_3 + 68, 1110 );
setSeVolumeByWorkId( spep_3 + 68, SE014, 86 );

--敵追いかける
SE015 = playSe( spep_3 + 86, 1183,"",0.5 );
SE016 = playSe( spep_3 + 96, 1182 );
setSeVolumeByWorkId( spep_3 + 96, SE016, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+100;
------------------------------------------------------
-- 手刀
------------------------------------------------------
-- ** エフェクト等 ** --
knifehand_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, knifehand_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, knifehand_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, knifehand_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, knifehand_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knifehand_f, 0 );
setEffRotateKey( spep_4 + 84, knifehand_f, 0 );
setEffAlphaKey( spep_4 + 0, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 82, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 83, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 84, knifehand_f, 0 );

-- ** エフェクト等 ** --
knifehand_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, knifehand_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, knifehand_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, knifehand_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, knifehand_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knifehand_b, 0 );
setEffRotateKey( spep_4 + 84, knifehand_b, 0 );
setEffAlphaKey( spep_4 + 0, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 82, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 83, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 84, knifehand_b, 0 );

--敵の動き
setDisp( spep_4-3 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_4 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_4-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_4-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_4-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_4-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_4-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_4-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_4-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_4-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_4-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_4-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_4-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_4-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_4-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_4-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_4-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_4-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_4-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_4-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_4-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_4-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_4-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_4-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_4-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_4-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_4-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_4-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_4-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_4-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_4-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_4-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_4-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_4 + 0,1,0.3,0.3);
setScaleKey( spep_4-3 + 2,1,0.38,0.38);
setScaleKey( spep_4-3 + 4,1,0.44,0.44);
setScaleKey( spep_4-3 + 6,1,0.52,0.52);
setScaleKey( spep_4-3 + 8,1,0.6,0.6);
setScaleKey( spep_4-3 + 10,1,0.68,0.68);
setScaleKey( spep_4-3 + 12,1,0.74,0.74);
setScaleKey( spep_4-3 + 14,1,0.82,0.82);
setScaleKey( spep_4-3 + 16,1,0.9,0.9);
setScaleKey( spep_4-3 + 18,1,0.96,0.96);
setScaleKey( spep_4-3 + 20,1,0.96,0.96);
setScaleKey( spep_4-3 + 22,1,0.98,0.98);
setScaleKey( spep_4-3 + 24,1,0.98,0.98);
setScaleKey( spep_4-3 + 26,1,0.98,0.98);
setScaleKey( spep_4-3 + 28,1,1,1);
setScaleKey( spep_4-3 + 30,1,1,1);
setScaleKey( spep_4-3 + 32,1,1,1);
setScaleKey( spep_4-3 + 35,1,1,1);
setScaleKey( spep_4-3 + 36,1,1.27,1.27);
setScaleKey( spep_4-3 + 38,1,1.54,1.54);
setScaleKey( spep_4-3 + 40,1,1.8,1.8);
setScaleKey( spep_4-3 + 42,1,2.07,2.07);
setScaleKey( spep_4-3 + 44,1,2.32,2.32);
setScaleKey( spep_4-3 + 46,1,2.57,2.57);
setScaleKey( spep_4-3 + 48,1,2.84,2.84);
setScaleKey( spep_4-3 + 50,1,3.09,3.09);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 50, 1, 0 );

--SE
--敵追いかける
stopSe( spep_4 + 44, SE015, 6 );
SE017 = playSe( spep_4 + 0, 9 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE017, 5 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 10 );
setSeVolumeByWorkId( spep_4 + 3, SE017, 15 );
setSeVolumeByWorkId( spep_4 + 4, SE017, 20 );
setSeVolumeByWorkId( spep_4 + 5, SE017, 25 );
setSeVolumeByWorkId( spep_4 + 6, SE017, 30 );
setSeVolumeByWorkId( spep_4 + 7, SE017, 35 );
setSeVolumeByWorkId( spep_4 + 8, SE017, 40 );
setSeVolumeByWorkId( spep_4 + 9, SE017, 45 );
setSeVolumeByWorkId( spep_4 + 10, SE017, 50 );
setSeVolumeByWorkId( spep_4 + 11, SE017, 55 );
setSeVolumeByWorkId( spep_4 + 12, SE017, 60 );
setSeVolumeByWorkId( spep_4 + 13, SE017, 65 );
setSeVolumeByWorkId( spep_4 + 14, SE017, 70 );
setSeVolumeByWorkId( spep_4 + 15, SE017, 75 );
setSeVolumeByWorkId( spep_4 + 16, SE017, 80 );
setSeVolumeByWorkId( spep_4 + 17, SE017, 85 );
setSeVolumeByWorkId( spep_4 + 18, SE017, 90 );
setSeVolumeByWorkId( spep_4 + 19, SE017, 95 );
setSeVolumeByWorkId( spep_4 + 20, SE017, 100 );
stopSe( spep_4 + 44, SE017, 6 );

--敵飛んでいく
SE018 = playSe( spep_4 + 60, 1183,"",0.5 );
setSeVolumeByWorkId( spep_4 + 60, SE018, 0 );
setSeVolumeByWorkId( spep_4 + 61, SE018, 3.3 );
setSeVolumeByWorkId( spep_4 + 62, SE018, 6.6 );
setSeVolumeByWorkId( spep_4 + 63, SE018, 9.9 );
setSeVolumeByWorkId( spep_4 + 64, SE018, 13.2 );
setSeVolumeByWorkId( spep_4 + 65, SE018, 16.5 );
setSeVolumeByWorkId( spep_4 + 66, SE018, 19.8 );
setSeVolumeByWorkId( spep_4 + 67, SE018, 23.1 );
setSeVolumeByWorkId( spep_4 + 68, SE018, 26.4 );
setSeVolumeByWorkId( spep_4 + 69, SE018, 29.7 );
setSeVolumeByWorkId( spep_4 + 70, SE018, 33 );
setSeVolumeByWorkId( spep_4 + 71, SE018, 36.3 );
setSeVolumeByWorkId( spep_4 + 72, SE018, 39.6 );
setSeVolumeByWorkId( spep_4 + 73, SE018, 42.9 );
setSeVolumeByWorkId( spep_4 + 74, SE018, 46.2 );
setSeVolumeByWorkId( spep_4 + 75, SE018, 49.5 );
setSeVolumeByWorkId( spep_4 + 76, SE018, 52.8 );
setSeVolumeByWorkId( spep_4 + 77, SE018, 56.1 );
setSeVolumeByWorkId( spep_4 + 78, SE018, 59 );
setStartTimeMs( SE018,  983 );

--裏拳
SE019 = playSe( spep_4 + 38, 1003 );
setSeVolumeByWorkId( spep_4 + 38, SE019, 69 );
SE020 = playSe( spep_4 + 42, 1009 );
SE021 = playSe( spep_4 + 44, 1000 );
SE022 = playSe( spep_4 + 44, 1110 );
setSeVolumeByWorkId( spep_4 + 44, SE022, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+84;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusenga, 0 );
setEffRotateKey( spep_5 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_5 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_5 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_5 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_5 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--敵飛んでいく
stopSe( spep_5 + 20, SE018, 20 );

--playSe( spep_5 + 0, 1023 );--爆発
playSe( spep_5 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--冒頭ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setTimeStretch( SE002, 1.25, 10, 1 );
stopSe( spep_0 + 88, SE002, 32 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+100;
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
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 手前に蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_2 + 54, kick, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_2 + 54, kick, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 54, kick, 0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 54, kick, 255 );
setEffAlphaKey( spep_2 + 55, kick, 0 );
setEffAlphaKey( spep_2 + 56, kick, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE011, 0 );
    --stopSe( SP_dodge - 12, SE012, 0 );
    --stopSe( SP_dodge - 12, SE013, 0 );


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
--蹴り振りかぶり
SE005 = playSe( spep_2 + 14, 1116 );
setSeVolumeByWorkId( spep_2 + 14, SE005, 80 );
stopSe( spep_2 + 38, SE005, 24 );
SE006 = playSe( spep_2 + 22, 1004 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 54;
------------------------------------------------------
-- 連続蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 100, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 98, fighting_f, 255 );
setEffAlphaKey( spep_3 + 99, fighting_f, 255 );
setEffAlphaKey( spep_3 + 100, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 100, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 98, fighting_b, 255 );
setEffAlphaKey( spep_3 + 99, fighting_b, 255 );
setEffAlphaKey( spep_3 + 100, fighting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 58, 1, 105 );

setMoveKey( spep_3 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_3-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_3-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_3-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_3-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_3-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_3-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_3-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_3-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_3-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_3-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_3-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_3-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_3-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_3-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_3-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_3 + 0, 1,1.32,1.32);
--setScaleKey( spep_3-3 + 2,1,1.71,1.71);
setScaleKey( spep_3-3 + 4,1,2.11,2.11);
setScaleKey( spep_3-3 + 6,1,1.92,1.92);
setScaleKey( spep_3-3 + 8,1,1.71,1.71);
setScaleKey( spep_3-3 + 10, 1,1.51,1.51);
setScaleKey( spep_3-3 + 12, 1,1.32,1.32);
setScaleKey( spep_3-3 + 43, 1,1.32,1.32);
setScaleKey( spep_3-3 + 44, 1,1.42,1.42);
setScaleKey( spep_3-3 + 57, 1,1.42,1.42);
setScaleKey( spep_3-3 + 58, 1,1.53,1.53);
setScaleKey( spep_3-3 + 60, 1,1.36,1.36);
setScaleKey( spep_3-3 + 62, 1,1.21,1.21);
setScaleKey( spep_3-3 + 64, 1,1.05,1.05);
setScaleKey( spep_3-3 + 66, 1,0.9,0.9);
setScaleKey( spep_3-3 + 68, 1,0.81,0.81);
setScaleKey( spep_3-3 + 70, 1,0.72,0.72);
setScaleKey( spep_3-3 + 72, 1,0.63,0.63);
setScaleKey( spep_3-3 + 74, 1,0.54,0.54);
setScaleKey( spep_3-3 + 76, 1,0.45,0.45);
setScaleKey( spep_3-3 + 78, 1,0.36,0.36);
setScaleKey( spep_3-3 + 80, 1,0.33,0.33);
setScaleKey( spep_3-3 + 82, 1,0.31,0.31);
setScaleKey( spep_3-3 + 84, 1,0.28,0.28);
setScaleKey( spep_3-3 + 86, 1,0.26,0.26);
setScaleKey( spep_3-3 + 88, 1,0.24,0.24);
setScaleKey( spep_3-3 + 90, 1,0.21,0.21);
setScaleKey( spep_3-3 + 92, 1,0.2,0.2);
setScaleKey( spep_3-3 + 94, 1,0.18,0.18);
setScaleKey( spep_3-3 + 96, 1,0.15,0.15);
setScaleKey( spep_3-3 + 98, 1,0.13,0.13);
setScaleKey( spep_3-3 + 100,1,0.1,0.1);
setScaleKey( spep_3-3 + 102,1,0.08,0.08);
--setScaleKey( spep_3-3 + 104,1,0.06,0.06);

setRotateKey( spep_3-3 + 0, 1, -52.3 );
setRotateKey( spep_3-3 + 2, 1, -50.8 );
setRotateKey( spep_3-3 + 4, 1, -49.2 );
setRotateKey( spep_3-3 + 6, 1, -48.8 );
setRotateKey( spep_3-3 + 8, 1, -48.4 );
setRotateKey( spep_3-3 + 10, 1, -48 );
setRotateKey( spep_3-3 + 12, 1, -47.6 );
setRotateKey( spep_3-3 + 14, 1, -47.1 );
setRotateKey( spep_3-3 + 16, 1, -46.7 );
setRotateKey( spep_3-3 + 18, 1, -46.3 );
setRotateKey( spep_3-3 + 20, 1, -45.9 );
setRotateKey( spep_3-3 + 22, 1, -45.4 );
setRotateKey( spep_3-3 + 24, 1, -45 );
setRotateKey( spep_3-3 + 26, 1, -44.6 );
setRotateKey( spep_3-3 + 28, 1, -44.2 );
setRotateKey( spep_3-3 + 30, 1, -43.8 );
setRotateKey( spep_3-3 + 32, 1, -43.3 );
setRotateKey( spep_3-3 + 34, 1, -42.9 );
setRotateKey( spep_3-3 + 36, 1, -42.5 );
setRotateKey( spep_3-3 + 38, 1, -42.1 );
setRotateKey( spep_3-3 + 40, 1, -41.7 );
setRotateKey( spep_3-3 + 43, 1, -41.2 );
setRotateKey( spep_3-3 + 44, 1, -31.8 );
setRotateKey( spep_3-3 + 57, 1, -31.8 );
setRotateKey( spep_3-3 + 58, 1, 9.7 );
setRotateKey( spep_3-3 + 102, 1, 9.7 );

--SE
--足払い
SE007 = playSe( spep_3 + 6, 1010 );
SE008 = playSe( spep_3 + 6, 1110 );

--ハイキック
SE009 = playSe( spep_3 + 42, 1189 );
SE010 = playSe( spep_3 + 46, 1001 );
setSeVolumeByWorkId( spep_3 + 46, SE010, 65 );
stopSe( spep_3 + 60, SE010, 6 );
SE011 = playSe( spep_3 + 46, 1009 );
setSeVolumeByWorkId( spep_3 + 46, SE011, 79 );
stopSe( spep_3 + 60, SE011, 6 );

--ジャンプ蹴り上げ
SE012 = playSe( spep_3 + 66, 1010 );
setSeVolumeByWorkId( spep_3 + 66, SE012, 86 );
SE013 = playSe( spep_3 + 68, 1001 );
setSeVolumeByWorkId( spep_3 + 68, SE013, 73 );
SE014 = playSe( spep_3 + 68, 1110 );
setSeVolumeByWorkId( spep_3 + 68, SE014, 86 );

--敵追いかける
SE015 = playSe( spep_3 + 86, 1183,"",0.5 );
SE016 = playSe( spep_3 + 96, 1182 );
setSeVolumeByWorkId( spep_3 + 96, SE016, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+100;
------------------------------------------------------
-- 手刀
------------------------------------------------------
-- ** エフェクト等 ** --
knifehand_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, knifehand_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, knifehand_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, knifehand_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, knifehand_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knifehand_f, 0 );
setEffRotateKey( spep_4 + 84, knifehand_f, 0 );
setEffAlphaKey( spep_4 + 0, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 82, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 83, knifehand_f, 255 );
setEffAlphaKey( spep_4 + 84, knifehand_f, 0 );

-- ** エフェクト等 ** --
knifehand_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, knifehand_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, knifehand_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, knifehand_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, knifehand_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knifehand_b, 0 );
setEffRotateKey( spep_4 + 84, knifehand_b, 0 );
setEffAlphaKey( spep_4 + 0, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 82, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 83, knifehand_b, 255 );
setEffAlphaKey( spep_4 + 84, knifehand_b, 0 );

--敵の動き
setDisp( spep_4-3 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_4 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_4-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_4-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_4-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_4-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_4-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_4-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_4-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_4-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_4-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_4-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_4-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_4-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_4-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_4-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_4-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_4-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_4-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_4-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_4-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_4-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_4-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_4-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_4-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_4-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_4-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_4-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_4-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_4-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_4-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_4-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_4-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_4 + 0,1,0.3,0.3);
setScaleKey( spep_4-3 + 2,1,0.38,0.38);
setScaleKey( spep_4-3 + 4,1,0.44,0.44);
setScaleKey( spep_4-3 + 6,1,0.52,0.52);
setScaleKey( spep_4-3 + 8,1,0.6,0.6);
setScaleKey( spep_4-3 + 10,1,0.68,0.68);
setScaleKey( spep_4-3 + 12,1,0.74,0.74);
setScaleKey( spep_4-3 + 14,1,0.82,0.82);
setScaleKey( spep_4-3 + 16,1,0.9,0.9);
setScaleKey( spep_4-3 + 18,1,0.96,0.96);
setScaleKey( spep_4-3 + 20,1,0.96,0.96);
setScaleKey( spep_4-3 + 22,1,0.98,0.98);
setScaleKey( spep_4-3 + 24,1,0.98,0.98);
setScaleKey( spep_4-3 + 26,1,0.98,0.98);
setScaleKey( spep_4-3 + 28,1,1,1);
setScaleKey( spep_4-3 + 30,1,1,1);
setScaleKey( spep_4-3 + 32,1,1,1);
setScaleKey( spep_4-3 + 35,1,1,1);
setScaleKey( spep_4-3 + 36,1,1.27,1.27);
setScaleKey( spep_4-3 + 38,1,1.54,1.54);
setScaleKey( spep_4-3 + 40,1,1.8,1.8);
setScaleKey( spep_4-3 + 42,1,2.07,2.07);
setScaleKey( spep_4-3 + 44,1,2.32,2.32);
setScaleKey( spep_4-3 + 46,1,2.57,2.57);
setScaleKey( spep_4-3 + 48,1,2.84,2.84);
setScaleKey( spep_4-3 + 50,1,3.09,3.09);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 50, 1, 0 );

--SE
--敵追いかける
stopSe( spep_4 + 44, SE015, 6 );
SE017 = playSe( spep_4 + 0, 9 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE017, 5 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 10 );
setSeVolumeByWorkId( spep_4 + 3, SE017, 15 );
setSeVolumeByWorkId( spep_4 + 4, SE017, 20 );
setSeVolumeByWorkId( spep_4 + 5, SE017, 25 );
setSeVolumeByWorkId( spep_4 + 6, SE017, 30 );
setSeVolumeByWorkId( spep_4 + 7, SE017, 35 );
setSeVolumeByWorkId( spep_4 + 8, SE017, 40 );
setSeVolumeByWorkId( spep_4 + 9, SE017, 45 );
setSeVolumeByWorkId( spep_4 + 10, SE017, 50 );
setSeVolumeByWorkId( spep_4 + 11, SE017, 55 );
setSeVolumeByWorkId( spep_4 + 12, SE017, 60 );
setSeVolumeByWorkId( spep_4 + 13, SE017, 65 );
setSeVolumeByWorkId( spep_4 + 14, SE017, 70 );
setSeVolumeByWorkId( spep_4 + 15, SE017, 75 );
setSeVolumeByWorkId( spep_4 + 16, SE017, 80 );
setSeVolumeByWorkId( spep_4 + 17, SE017, 85 );
setSeVolumeByWorkId( spep_4 + 18, SE017, 90 );
setSeVolumeByWorkId( spep_4 + 19, SE017, 95 );
setSeVolumeByWorkId( spep_4 + 20, SE017, 100 );
stopSe( spep_4 + 44, SE017, 6 );

--敵飛んでいく
SE018 = playSe( spep_4 + 60, 1183,"",0.5 );
setSeVolumeByWorkId( spep_4 + 60, SE018, 0 );
setSeVolumeByWorkId( spep_4 + 61, SE018, 3.3 );
setSeVolumeByWorkId( spep_4 + 62, SE018, 6.6 );
setSeVolumeByWorkId( spep_4 + 63, SE018, 9.9 );
setSeVolumeByWorkId( spep_4 + 64, SE018, 13.2 );
setSeVolumeByWorkId( spep_4 + 65, SE018, 16.5 );
setSeVolumeByWorkId( spep_4 + 66, SE018, 19.8 );
setSeVolumeByWorkId( spep_4 + 67, SE018, 23.1 );
setSeVolumeByWorkId( spep_4 + 68, SE018, 26.4 );
setSeVolumeByWorkId( spep_4 + 69, SE018, 29.7 );
setSeVolumeByWorkId( spep_4 + 70, SE018, 33 );
setSeVolumeByWorkId( spep_4 + 71, SE018, 36.3 );
setSeVolumeByWorkId( spep_4 + 72, SE018, 39.6 );
setSeVolumeByWorkId( spep_4 + 73, SE018, 42.9 );
setSeVolumeByWorkId( spep_4 + 74, SE018, 46.2 );
setSeVolumeByWorkId( spep_4 + 75, SE018, 49.5 );
setSeVolumeByWorkId( spep_4 + 76, SE018, 52.8 );
setSeVolumeByWorkId( spep_4 + 77, SE018, 56.1 );
setSeVolumeByWorkId( spep_4 + 78, SE018, 59 );
setStartTimeMs( SE018,  983 );

--裏拳
SE019 = playSe( spep_4 + 38, 1003 );
setSeVolumeByWorkId( spep_4 + 38, SE019, 69 );
SE020 = playSe( spep_4 + 42, 1009 );
SE021 = playSe( spep_4 + 44, 1000 );
SE022 = playSe( spep_4 + 44, 1110 );
setSeVolumeByWorkId( spep_4 + 44, SE022, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+84;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusenga, 0 );
setEffRotateKey( spep_5 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_5 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_5 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_5 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_5 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--敵飛んでいく
stopSe( spep_5 + 20, SE018, 20 );

--playSe( spep_5 + 0, 1023 );--爆発
playSe( spep_5 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 98 );
end