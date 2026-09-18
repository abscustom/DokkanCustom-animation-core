--1023880:孫悟飯(青年期)&孫悟天(幼年期)_兄弟コンビネーション
--sp_effect_b1_00189

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
SP_01=	159094	;--	立ちアップ絵
SP_02=	159096	;--	悟飯が画面手前に迫る
SP_03=	159097	;--	悟飯格闘　
SP_04=	159098	;--	悟飯格闘　
SP_05=	159101	;--	悟天が画面手前に迫る
SP_06=	159102	;--	悟天が殴る
SP_07=	159103	;--	悟天が殴る
SP_08=	159106	;--	フィニッシュ絵

--エフェクト(てき)
SP_01x=	159095	;--	立ちアップ絵	(敵)
SP_02x=	159096	;--	悟飯が画面手前に迫る	
SP_03x=	159099	;--	悟飯格闘　	(敵)
SP_04x=	159100	;--	悟飯格闘　	(敵)
SP_05x=	159101	;--	悟天が画面手前に迫る	
SP_06x=	159104	;--	悟天が殴る	(敵)
SP_07x=	159105	;--	悟天が殴る	(敵)
SP_08x=	159107	;--	フィニッシュ絵	(敵)

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
--立ちアップ絵
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );
setEffAlphaKey( spep_0 + 91, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

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
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--悟飯が画面手前に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, approaching, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching, 0 );
setEffRotateKey( spep_2 + 56, approaching, 0 );
setEffAlphaKey( spep_2 + 0, approaching, 255 );
setEffAlphaKey( spep_2 + 54, approaching, 255 );
setEffAlphaKey( spep_2 + 55, approaching, 255 );
setEffAlphaKey( spep_2 + 56, approaching, 0 );

--SE
--悟飯向かってくる
SE003 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 0, 1107, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 10, 1182, "",spep_2 + 86, 0, 8, -1);
SE006 = playSeVer2( spep_2 + 10, 1117, "",spep_2 + 86, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
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

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--悟飯格闘　
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 136, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 136, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 136, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 134, fighting_f, 255 );
setEffAlphaKey( spep_3 + 135, fighting_f, 255 );
setEffAlphaKey( spep_3 + 136, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 136, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 136, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 136, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 134, fighting_b, 255 );
setEffAlphaKey( spep_3 + 135, fighting_b, 255 );
setEffAlphaKey( spep_3 + 136, fighting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 116, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 106 );
changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 98, 1, 107 );

setMoveKey( spep_3 + 0, 1, 355.7, -124.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 261.9, -125 , 0 );
setMoveKey( spep_3-3 + 4, 1, 218.3, -125.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 187.2, -125.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 163, -125.5 , 0 );
setMoveKey( spep_3-3 + 10, 1, 143.1, -125.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 126.5, -125.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 112.4, -126 , 0 );
setMoveKey( spep_3-3 + 16, 1, 100.4, -126.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 90.1, -126.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 81.4, -126.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 74.2, -126.7 , 0 );
setMoveKey( spep_3-3 + 25, 1, 68.6, -126.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 99.3, -42 , 0 );
setMoveKey( spep_3-3 + 28, 1, 83, -65.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 88.8, -58.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 85.4, -53.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 82, -49 , 0 );
setMoveKey( spep_3-3 + 36, 1, 85.1, -44.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 88.2, -39.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 88.7, -37.3 , 0 );
setMoveKey( spep_3-3 + 43, 1, 89.1, -35.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 125.7, -49.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 111.2, -65.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 98.8, -52.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 99.5, -55.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 106.9, -53 , 0 );
setMoveKey( spep_3-3 + 54, 1, 125.9, -23.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 126.7, -43.5 , 0 );
setMoveKey( spep_3-3 + 58, 1, 140.8, -52.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 135.7, -51 , 0 );
setMoveKey( spep_3-3 + 62, 1, 130.7, -49.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 147.8, -40.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 124.3, -61.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 125.9, -57.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 129.2, -58.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 152.9, -34.8 , 0 );
setMoveKey( spep_3-3 + 74, 1, 130.3, -57.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 132.9, -49.7 , 0 );
setMoveKey( spep_3-3 + 78, 1, 130.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 128.2, -50 , 0 );
setMoveKey( spep_3-3 + 82, 1, 126.2, -49.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 124.9, -48.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 123.5, -48.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 125.3, -47.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 126.9, -47.1 , 0 );
setMoveKey( spep_3-3 + 92, 1, 128.6, -46.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 130.3, -46 , 0 );
setMoveKey( spep_3-3 + 97, 1, 132, -45.4 , 0 );
setMoveKey( spep_3-3 + 98, 1, 141.5, -16.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, 138.6, -16.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 239.9, 3.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 259.3, 4.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, 312.3, 9.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 365.4, 13.8 , 0 );
setMoveKey( spep_3-3 + 110, 1, 413.2, 21.3 , 0 );
setMoveKey( spep_3-3 + 112, 1, 461, 28.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 508.9, 33.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 556.7, 37.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 25, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 44, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 46, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 97, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 98, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 100, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 104, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 106, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 108, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 110, 1, 1.83, 1.83 );
setScaleKey( spep_3-3 + 112, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 114, 1, 2.27, 2.27 );
setScaleKey( spep_3-3 + 116, 1, 2.49, 2.49 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 25, 1, 0 );
setRotateKey( spep_3-3 + 26, 1, -33.4 );
setRotateKey( spep_3-3 + 28, 1, -32.6 );
setRotateKey( spep_3-3 + 30, 1, -31.6 );
setRotateKey( spep_3-3 + 32, 1, -30.7 );
setRotateKey( spep_3-3 + 34, 1, -29.8 );
setRotateKey( spep_3-3 + 36, 1, -28.8 );
setRotateKey( spep_3-3 + 38, 1, -27.9 );
setRotateKey( spep_3-3 + 40, 1, -27 );
setRotateKey( spep_3-3 + 43, 1, -26 );
setRotateKey( spep_3-3 + 44, 1, -17.5 );
setRotateKey( spep_3-3 + 46, 1, -16.3 );
setRotateKey( spep_3-3 + 48, 1, -15.1 );
setRotateKey( spep_3-3 + 50, 1, -13.8 );
setRotateKey( spep_3-3 + 52, 1, -12.6 );
setRotateKey( spep_3-3 + 54, 1, -15.3 );
setRotateKey( spep_3-3 + 62, 1, -15.3 );
setRotateKey( spep_3-3 + 64, 1, -10.6 );
setRotateKey( spep_3-3 + 66, 1, -9.7 );
setRotateKey( spep_3-3 + 68, 1, -8.8 );
setRotateKey( spep_3-3 + 70, 1, -7.9 );
setRotateKey( spep_3-3 + 72, 1, -8.3 );
setRotateKey( spep_3-3 + 74, 1, -7.8 );
setRotateKey( spep_3-3 + 76, 1, -7.4 );
setRotateKey( spep_3-3 + 78, 1, -6.9 );
setRotateKey( spep_3-3 + 80, 1, -6.4 );
setRotateKey( spep_3-3 + 82, 1, -6 );
setRotateKey( spep_3-3 + 84, 1, -5.5 );
setRotateKey( spep_3-3 + 86, 1, -5.1 );
setRotateKey( spep_3-3 + 88, 1, -4.6 );
setRotateKey( spep_3-3 + 90, 1, -4.2 );
setRotateKey( spep_3-3 + 92, 1, -3.7 );
setRotateKey( spep_3-3 + 94, 1, -3.3 );
setRotateKey( spep_3-3 + 97, 1, -2.8 );
setRotateKey( spep_3-3 + 98, 1, -17 );
setRotateKey( spep_3-3 + 100, 1, -14.8 );
setRotateKey( spep_3-3 + 102, 1, -12.6 );
setRotateKey( spep_3-3 + 104, 1, -10.4 );
setRotateKey( spep_3-3 + 106, 1, -8.2 );
setRotateKey( spep_3-3 + 108, 1, -6.1 );
setRotateKey( spep_3-3 + 110, 1, -3.9 );
setRotateKey( spep_3-3 + 112, 1, -1.7 );
setRotateKey( spep_3-3 + 114, 1, 0.5 );
setRotateKey( spep_3-3 + 116, 1, 2.7 );

--SE
--初手キック
SE007 = playSeVer2( spep_3 + 24, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_3 + 24, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE009 = playSeVer2( spep_3 + 42, 1110, "",spep_3 + 62, 0, 10, -1);
SE010 = playSeVer2( spep_3 + 42, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE012 = playSeVer2( spep_3 + 50, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE012, 87 );
SE013 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 76, 0, 8, -1);
setPitch( spep_3 + 58, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_3 + 58, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE014, 87 );
SE015 = playSeVer2( spep_3 + 66, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_3 + 90, 1003, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 96, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 136;
------------------------------------------------------
--悟天が画面手前に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching2, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, approaching2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, approaching2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching2, 0 );
setEffRotateKey( spep_4 + 56, approaching2, 0 );
setEffAlphaKey( spep_4 + 0, approaching2, 255 );
setEffAlphaKey( spep_4 + 54, approaching2, 255 );
setEffAlphaKey( spep_4 + 55, approaching2, 255 );
setEffAlphaKey( spep_4 + 56, approaching2, 0 );

--SE
--悟天向かってくる
SE019 = playSeVer2( spep_4 + 16, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 20, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE020, 123 );
SE021 = playSeVer2( spep_4 + 16, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_4 + 16, SE021, 60 );
setTimeStretch( SE021, 1.25, 30, 4 );
SE022 = playSeVer2( spep_4 + 84, 1019, "",spep_4 + 102, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 84, SE022, 123 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 56;
------------------------------------------------------
--悟天が殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, punching_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punching_f, 0 );
setEffRotateKey( spep_5 + 86, punching_f, 0 );
setEffAlphaKey( spep_5 + 0, punching_f, 255 );
setEffAlphaKey( spep_5 + 84, punching_f, 255 );
setEffAlphaKey( spep_5 + 85, punching_f, 255 );
setEffAlphaKey( spep_5 + 86, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, punching_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punching_b, 0 );
setEffRotateKey( spep_5 + 86, punching_b, 0 );
setEffAlphaKey( spep_5 + 0, punching_b, 255 );
setEffAlphaKey( spep_5 + 84, punching_b, 255 );
setEffAlphaKey( spep_5 + 85, punching_b, 255 );
setEffAlphaKey( spep_5 + 86, punching_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 40, 1, 7 );

setMoveKey( spep_5 + 0, 1, -644.2, 58 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -618.6, 54.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, -593, 50.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, -567.4, 46.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, -541.8, 42.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, -516.3, 38.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, -490.7, 34.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -465.1, 30.6 , 0 );
setMoveKey( spep_5-3 + 16, 1, -439.5, 26.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, -414, 22.8 , 0 );
setMoveKey( spep_5-3 + 20, 1, -388.4, 18.8 , 0 );
setMoveKey( spep_5-3 + 22, 1, -362.8, 14.9 , 0 );
setMoveKey( spep_5-3 + 24, 1, -337.2, 11 , 0 );
setMoveKey( spep_5-3 + 26, 1, -311.6, 7 , 0 );
setMoveKey( spep_5-3 + 28, 1, -286, 3.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, -260.5, -0.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, -234.9, -4.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, -209.3, -8.7 , 0 );
setMoveKey( spep_5-3 + 36, 1, -183.7, -12.5 , 0 );
setMoveKey( spep_5-3 + 39, 1, -158.2, -16.5 , 0 );
setMoveKey( spep_5-3 + 40, 1, 191.3, -59.4 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, -29.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 102.3, 42.4 , 0 );
setMoveKey( spep_5-3 + 46, 1, 97.4, -1.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 76.6, 37.7 , 0 );
setMoveKey( spep_5-3 + 50, 1, 85.7, 21.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 104.2, 27.7 , 0 );
setMoveKey( spep_5-3 + 54, 1, 88.6, 37.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, 71.3, 30.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 75.2, 36.6 , 0 );
setMoveKey( spep_5-3 + 60, 1, 75, 41.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 67, 39.9 , 0 );
setMoveKey( spep_5-3 + 64, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_5-3 + 66, 1, 60.7, 45.1 , 0 );
setMoveKey( spep_5-3 + 68, 1, 60.5, 51.6 , 0 );
setMoveKey( spep_5-3 + 70, 1, 58.4, 52.3 , 0 );
setMoveKey( spep_5-3 + 72, 1, 48.4, 54.9 , 0 );
setMoveKey( spep_5-3 + 74, 1, -114.5, 282.6 , 0 );
setMoveKey( spep_5-3 + 76, 1, -287.2, 508.4 , 0 );
setMoveKey( spep_5-3 + 78, 1, -461.8, 742 , 0 );
setMoveKey( spep_5-3 + 80, 1, -628.6, 975.6 , 0 );

setScaleKey( spep_5 + 0, 1, 2.05, 2.05 );
--setScaleKey( spep_5-3 + 2, 1, 2.09, 2.09 );
setScaleKey( spep_5-3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_5-3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_5-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_5-3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_5-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_5-3 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_5-3 + 18, 1, 2.37, 2.37 );
setScaleKey( spep_5-3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_5-3 + 22, 1, 2.44, 2.44 );
setScaleKey( spep_5-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_5-3 + 26, 1, 2.51, 2.51 );
setScaleKey( spep_5-3 + 28, 1, 2.55, 2.55 );
setScaleKey( spep_5-3 + 30, 1, 2.58, 2.58 );
setScaleKey( spep_5-3 + 32, 1, 2.62, 2.62 );
setScaleKey( spep_5-3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_5-3 + 36, 1, 2.69, 2.69 );
setScaleKey( spep_5-3 + 39, 1, 2.72, 2.72 );
setScaleKey( spep_5-3 + 40, 1, 1.86, 1.86 );
setScaleKey( spep_5-3 + 72, 1, 1.86, 1.86 );
setScaleKey( spep_5-3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_5-3 + 76, 1, 2.57, 2.57 );
setScaleKey( spep_5-3 + 78, 1, 2.93, 2.93 );
setScaleKey( spep_5-3 + 80, 1, 3.28, 3.28 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 39, 1, 0 );
setRotateKey( spep_5-3 + 40, 1, 70 );
setRotateKey( spep_5-3 + 80, 1, 70 );

--SE
--悟天パンチ
SE023 = playSeVer2( spep_5 + 30, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 38, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 38, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 86;
------------------------------------------------------
--フィニッシュ絵
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--SE
--悟天着地
SE026 = playSeVer2( spep_6 + 0 -10, 1207, "",spep_6 + 42, 16, 28, -1);
setStartTimeMs( SE026,  467 );
SE027 = playSeVer2( spep_6 + 24, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE027, 170 );
SE028 = playSeVer2( spep_6 + 38, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE028, 172 );

--終わり
dealDamage(spep_6+10);
endPhase( spep_6 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--立ちアップ絵
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );
setEffAlphaKey( spep_0 + 91, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

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
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--悟飯が画面手前に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, approaching, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, approaching, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, approaching, 0 );
setEffRotateKey( spep_2 + 56, approaching, 0 );
setEffAlphaKey( spep_2 + 0, approaching, 255 );
setEffAlphaKey( spep_2 + 54, approaching, 255 );
setEffAlphaKey( spep_2 + 55, approaching, 255 );
setEffAlphaKey( spep_2 + 56, approaching, 0 );

--SE
--悟飯向かってくる
SE003 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 0, 1107, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 10, 1182, "",spep_2 + 86, 0, 8, -1);
SE006 = playSeVer2( spep_2 + 10, 1117, "",spep_2 + 86, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
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

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--悟飯格闘　
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 136, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 136, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 136, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 134, fighting_f, 255 );
setEffAlphaKey( spep_3 + 135, fighting_f, 255 );
setEffAlphaKey( spep_3 + 136, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 136, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 136, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 136, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 134, fighting_b, 255 );
setEffAlphaKey( spep_3 + 135, fighting_b, 255 );
setEffAlphaKey( spep_3 + 136, fighting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 116, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 106 );
changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 98, 1, 107 );

setMoveKey( spep_3 + 0, 1, 355.7, -124.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 261.9, -125 , 0 );
setMoveKey( spep_3-3 + 4, 1, 218.3, -125.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 187.2, -125.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 163, -125.5 , 0 );
setMoveKey( spep_3-3 + 10, 1, 143.1, -125.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 126.5, -125.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 112.4, -126 , 0 );
setMoveKey( spep_3-3 + 16, 1, 100.4, -126.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 90.1, -126.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 81.4, -126.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 74.2, -126.7 , 0 );
setMoveKey( spep_3-3 + 25, 1, 68.6, -126.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 99.3, -42 , 0 );
setMoveKey( spep_3-3 + 28, 1, 83, -65.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 88.8, -58.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 85.4, -53.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 82, -49 , 0 );
setMoveKey( spep_3-3 + 36, 1, 85.1, -44.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 88.2, -39.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 88.7, -37.3 , 0 );
setMoveKey( spep_3-3 + 43, 1, 89.1, -35.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 125.7, -49.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 111.2, -65.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 98.8, -52.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 99.5, -55.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 106.9, -53 , 0 );
setMoveKey( spep_3-3 + 54, 1, 125.9, -23.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 126.7, -43.5 , 0 );
setMoveKey( spep_3-3 + 58, 1, 140.8, -52.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 135.7, -51 , 0 );
setMoveKey( spep_3-3 + 62, 1, 130.7, -49.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 147.8, -40.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 124.3, -61.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 125.9, -57.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 129.2, -58.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 152.9, -34.8 , 0 );
setMoveKey( spep_3-3 + 74, 1, 130.3, -57.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 132.9, -49.7 , 0 );
setMoveKey( spep_3-3 + 78, 1, 130.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 128.2, -50 , 0 );
setMoveKey( spep_3-3 + 82, 1, 126.2, -49.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 124.9, -48.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 123.5, -48.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 125.3, -47.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 126.9, -47.1 , 0 );
setMoveKey( spep_3-3 + 92, 1, 128.6, -46.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 130.3, -46 , 0 );
setMoveKey( spep_3-3 + 97, 1, 132, -45.4 , 0 );
setMoveKey( spep_3-3 + 98, 1, 141.5, -16.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, 138.6, -16.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 239.9, 3.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 259.3, 4.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, 312.3, 9.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 365.4, 13.8 , 0 );
setMoveKey( spep_3-3 + 110, 1, 413.2, 21.3 , 0 );
setMoveKey( spep_3-3 + 112, 1, 461, 28.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 508.9, 33.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 556.7, 37.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 25, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 44, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 46, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 97, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 98, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 100, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 104, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 106, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 108, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 110, 1, 1.83, 1.83 );
setScaleKey( spep_3-3 + 112, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 114, 1, 2.27, 2.27 );
setScaleKey( spep_3-3 + 116, 1, 2.49, 2.49 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 25, 1, 0 );
setRotateKey( spep_3-3 + 26, 1, -33.4 );
setRotateKey( spep_3-3 + 28, 1, -32.6 );
setRotateKey( spep_3-3 + 30, 1, -31.6 );
setRotateKey( spep_3-3 + 32, 1, -30.7 );
setRotateKey( spep_3-3 + 34, 1, -29.8 );
setRotateKey( spep_3-3 + 36, 1, -28.8 );
setRotateKey( spep_3-3 + 38, 1, -27.9 );
setRotateKey( spep_3-3 + 40, 1, -27 );
setRotateKey( spep_3-3 + 43, 1, -26 );
setRotateKey( spep_3-3 + 44, 1, -17.5 );
setRotateKey( spep_3-3 + 46, 1, -16.3 );
setRotateKey( spep_3-3 + 48, 1, -15.1 );
setRotateKey( spep_3-3 + 50, 1, -13.8 );
setRotateKey( spep_3-3 + 52, 1, -12.6 );
setRotateKey( spep_3-3 + 54, 1, -15.3 );
setRotateKey( spep_3-3 + 62, 1, -15.3 );
setRotateKey( spep_3-3 + 64, 1, -10.6 );
setRotateKey( spep_3-3 + 66, 1, -9.7 );
setRotateKey( spep_3-3 + 68, 1, -8.8 );
setRotateKey( spep_3-3 + 70, 1, -7.9 );
setRotateKey( spep_3-3 + 72, 1, -8.3 );
setRotateKey( spep_3-3 + 74, 1, -7.8 );
setRotateKey( spep_3-3 + 76, 1, -7.4 );
setRotateKey( spep_3-3 + 78, 1, -6.9 );
setRotateKey( spep_3-3 + 80, 1, -6.4 );
setRotateKey( spep_3-3 + 82, 1, -6 );
setRotateKey( spep_3-3 + 84, 1, -5.5 );
setRotateKey( spep_3-3 + 86, 1, -5.1 );
setRotateKey( spep_3-3 + 88, 1, -4.6 );
setRotateKey( spep_3-3 + 90, 1, -4.2 );
setRotateKey( spep_3-3 + 92, 1, -3.7 );
setRotateKey( spep_3-3 + 94, 1, -3.3 );
setRotateKey( spep_3-3 + 97, 1, -2.8 );
setRotateKey( spep_3-3 + 98, 1, -17 );
setRotateKey( spep_3-3 + 100, 1, -14.8 );
setRotateKey( spep_3-3 + 102, 1, -12.6 );
setRotateKey( spep_3-3 + 104, 1, -10.4 );
setRotateKey( spep_3-3 + 106, 1, -8.2 );
setRotateKey( spep_3-3 + 108, 1, -6.1 );
setRotateKey( spep_3-3 + 110, 1, -3.9 );
setRotateKey( spep_3-3 + 112, 1, -1.7 );
setRotateKey( spep_3-3 + 114, 1, 0.5 );
setRotateKey( spep_3-3 + 116, 1, 2.7 );

--SE
--初手キック
SE007 = playSeVer2( spep_3 + 24, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_3 + 24, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE009 = playSeVer2( spep_3 + 42, 1110, "",spep_3 + 62, 0, 10, -1);
SE010 = playSeVer2( spep_3 + 42, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 50, 1110, "",spep_3 + 70, 0, 8, -1);
SE012 = playSeVer2( spep_3 + 50, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE012, 87 );
SE013 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 76, 0, 8, -1);
setPitch( spep_3 + 58, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_3 + 58, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE014, 87 );
SE015 = playSeVer2( spep_3 + 66, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_3 + 90, 1003, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 96, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 136;
------------------------------------------------------
--悟天が画面手前に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching2 = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching2, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, approaching2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, approaching2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching2, 0 );
setEffRotateKey( spep_4 + 56, approaching2, 0 );
setEffAlphaKey( spep_4 + 0, approaching2, 255 );
setEffAlphaKey( spep_4 + 54, approaching2, 255 );
setEffAlphaKey( spep_4 + 55, approaching2, 255 );
setEffAlphaKey( spep_4 + 56, approaching2, 0 );

--SE
--悟天向かってくる
SE019 = playSeVer2( spep_4 + 16, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 20, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE020, 123 );
SE021 = playSeVer2( spep_4 + 16, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_4 + 16, SE021, 60 );
setTimeStretch( SE021, 1.25, 30, 4 );
SE022 = playSeVer2( spep_4 + 84, 1019, "",spep_4 + 102, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 84, SE022, 123 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 56;
------------------------------------------------------
--悟天が殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, punching_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, punching_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, punching_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punching_f, 0 );
setEffRotateKey( spep_5 + 86, punching_f, 0 );
setEffAlphaKey( spep_5 + 0, punching_f, 255 );
setEffAlphaKey( spep_5 + 84, punching_f, 255 );
setEffAlphaKey( spep_5 + 85, punching_f, 255 );
setEffAlphaKey( spep_5 + 86, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, punching_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, punching_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, punching_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punching_b, 0 );
setEffRotateKey( spep_5 + 86, punching_b, 0 );
setEffAlphaKey( spep_5 + 0, punching_b, 255 );
setEffAlphaKey( spep_5 + 84, punching_b, 255 );
setEffAlphaKey( spep_5 + 85, punching_b, 255 );
setEffAlphaKey( spep_5 + 86, punching_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 40, 1, 7 );

setMoveKey( spep_5 + 0, 1, -644.2, 58 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -618.6, 54.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, -593, 50.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, -567.4, 46.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, -541.8, 42.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, -516.3, 38.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, -490.7, 34.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -465.1, 30.6 , 0 );
setMoveKey( spep_5-3 + 16, 1, -439.5, 26.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, -414, 22.8 , 0 );
setMoveKey( spep_5-3 + 20, 1, -388.4, 18.8 , 0 );
setMoveKey( spep_5-3 + 22, 1, -362.8, 14.9 , 0 );
setMoveKey( spep_5-3 + 24, 1, -337.2, 11 , 0 );
setMoveKey( spep_5-3 + 26, 1, -311.6, 7 , 0 );
setMoveKey( spep_5-3 + 28, 1, -286, 3.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, -260.5, -0.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, -234.9, -4.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, -209.3, -8.7 , 0 );
setMoveKey( spep_5-3 + 36, 1, -183.7, -12.5 , 0 );
setMoveKey( spep_5-3 + 39, 1, -158.2, -16.5 , 0 );
setMoveKey( spep_5-3 + 40, 1, 191.3, -59.4 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, -29.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 102.3, 42.4 , 0 );
setMoveKey( spep_5-3 + 46, 1, 97.4, -1.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 76.6, 37.7 , 0 );
setMoveKey( spep_5-3 + 50, 1, 85.7, 21.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 104.2, 27.7 , 0 );
setMoveKey( spep_5-3 + 54, 1, 88.6, 37.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, 71.3, 30.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 75.2, 36.6 , 0 );
setMoveKey( spep_5-3 + 60, 1, 75, 41.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 67, 39.9 , 0 );
setMoveKey( spep_5-3 + 64, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_5-3 + 66, 1, 60.7, 45.1 , 0 );
setMoveKey( spep_5-3 + 68, 1, 60.5, 51.6 , 0 );
setMoveKey( spep_5-3 + 70, 1, 58.4, 52.3 , 0 );
setMoveKey( spep_5-3 + 72, 1, 48.4, 54.9 , 0 );
setMoveKey( spep_5-3 + 74, 1, -114.5, 282.6 , 0 );
setMoveKey( spep_5-3 + 76, 1, -287.2, 508.4 , 0 );
setMoveKey( spep_5-3 + 78, 1, -461.8, 742 , 0 );
setMoveKey( spep_5-3 + 80, 1, -628.6, 975.6 , 0 );

setScaleKey( spep_5 + 0, 1, 2.05, 2.05 );
--setScaleKey( spep_5-3 + 2, 1, 2.09, 2.09 );
setScaleKey( spep_5-3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_5-3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_5-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_5-3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_5-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_5-3 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_5-3 + 18, 1, 2.37, 2.37 );
setScaleKey( spep_5-3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_5-3 + 22, 1, 2.44, 2.44 );
setScaleKey( spep_5-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_5-3 + 26, 1, 2.51, 2.51 );
setScaleKey( spep_5-3 + 28, 1, 2.55, 2.55 );
setScaleKey( spep_5-3 + 30, 1, 2.58, 2.58 );
setScaleKey( spep_5-3 + 32, 1, 2.62, 2.62 );
setScaleKey( spep_5-3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_5-3 + 36, 1, 2.69, 2.69 );
setScaleKey( spep_5-3 + 39, 1, 2.72, 2.72 );
setScaleKey( spep_5-3 + 40, 1, 1.86, 1.86 );
setScaleKey( spep_5-3 + 72, 1, 1.86, 1.86 );
setScaleKey( spep_5-3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_5-3 + 76, 1, 2.57, 2.57 );
setScaleKey( spep_5-3 + 78, 1, 2.93, 2.93 );
setScaleKey( spep_5-3 + 80, 1, 3.28, 3.28 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 39, 1, 0 );
setRotateKey( spep_5-3 + 40, 1, 70 );
setRotateKey( spep_5-3 + 80, 1, 70 );

--SE
--悟天パンチ
SE023 = playSeVer2( spep_5 + 30, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 38, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 38, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 86;
------------------------------------------------------
--フィニッシュ絵
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--SE
--悟天着地
SE026 = playSeVer2( spep_6 + 0 -10, 1207, "",spep_6 + 42, 16, 28, -1);
setStartTimeMs( SE026,  467 );
SE027 = playSeVer2( spep_6 + 24, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE027, 170 );
SE028 = playSeVer2( spep_6 + 38, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE028, 172 );

--終わり
dealDamage(spep_6+10);
endPhase( spep_6 + 110 );
end