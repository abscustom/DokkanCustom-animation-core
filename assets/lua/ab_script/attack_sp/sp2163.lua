--1021680:超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_ダブルかめはめ波(SSR)
--sp_effect_a1_00280

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
SP_01=	156953	;--	かめはめ波溜め
SP_02=	156954	;--	かめはめ波発射〜爆発
SP_03=	156955	;--	かめはめ波発射〜爆発



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
-- かめはめ波発射〜爆発
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 200, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 200, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +104 +2;

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
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--かめはめ波溜め始まり
SE001 = playSe( spep_0 + 0, 1148 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 47 );
stopSe( spep_0 + 86, SE001, 20 );
SE002 = playSe( spep_0 + 0, 1199 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
setPitch( spep_0 + 0, SE002, 700 );
setTimeStretch( SE002, 1.47, 10, 1 );

--かめはめ波溜め２
SE003 = playSe( spep_0 + 28, 1252 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 29, SE003, 4.5 );
setSeVolumeByWorkId( spep_0 + 30, SE003, 9 );
setSeVolumeByWorkId( spep_0 + 31, SE003, 13.5 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 18 );
setSeVolumeByWorkId( spep_0 + 33, SE003, 22.5 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 27 );
setSeVolumeByWorkId( spep_0 + 35, SE003, 31.5 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 36 );
setSeVolumeByWorkId( spep_0 + 37, SE003, 40.5 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 45 );
setSeVolumeByWorkId( spep_0 + 39, SE003, 49.5 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 54 );
setSeVolumeByWorkId( spep_0 + 41, SE003, 58.5 );
setSeVolumeByWorkId( spep_0 + 42, SE003, 63 );
setSeVolumeByWorkId( spep_0 + 43, SE003, 67.5 );
setSeVolumeByWorkId( spep_0 + 44, SE003, 72 );
setSeVolumeByWorkId( spep_0 + 45, SE003, 76.5 );
setSeVolumeByWorkId( spep_0 + 46, SE003, 81 );
setSeVolumeByWorkId( spep_0 + 47, SE003, 85.5 );
setSeVolumeByWorkId( spep_0 + 48, SE003, 90 );
setSeVolumeByWorkId( spep_0 + 49, SE003, 94.5 );
setSeVolumeByWorkId( spep_0 + 50, SE003, 100 );
setStartTimeMs( SE003,  0 );
SE004 = playSe( spep_0 + 44, 1265 ,"",0.6);
stopSe( spep_0 + 128, SE004, 60 );
SE005 = playSe( spep_0 + 74, 1209 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 52 );

--かめはめ波溜め３
SE006 = playSe( spep_0 + 106, 1296 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 126 );

--顔カットイン
SE007 = playSe( spep_x +12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 194, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 200;
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

--かめはめ波溜め２
stopSe( spep_1 + 6, SE003, 0 );
stopSe( spep_1 + 6, SE005, 0 );

--かめはめ波溜め３
stopSe( spep_1 + 6, SE006, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--SE
--かめはめ波発射
SE009 = playSe( spep_2 + 8, 1177 );
SE010 = playSe( spep_2 + 10, 1213 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 60 );
SE011 = playSe( spep_2 + 10, 1133 );
SE012 = playSe( spep_2 + 10, 1022 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
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
--敵の動き
setDisp( spep_2-3 + 90, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 90, 1, 104 );
changeAnime( spep_2-3 + 104, 1, 105 );

setBlendColor(spep_2-3 + 90,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 95,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 96,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 121,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 122,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 123,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 124,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 148,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 150,1,3,0.57,0.83,1,0);

setMoveKey( spep_2-3 + 90, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 103, 1, 0, 73.9 , 0 );

setMoveKey( spep_2-3 + 104, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 111, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 115, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 119, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 120, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 123, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 129, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 135, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 137, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 139, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 143, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-3 + 147, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-1 + 148, 1, 0.5, 49.6 , 0 );

setScaleKey( spep_2-3 + 90, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 103, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 111, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 115, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 119, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 123, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 128, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 129, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 136, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 137, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 138, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 140, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 141, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 142, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 143, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 144, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 146, 1, 0.07, 0.07 );
setScaleKey( spep_2-1 + 148, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 90, 1, 0 );
setRotateKey( spep_2-1 + 148, 1, 0 );

--SE
--かめはめ波発射
stopSe( spep_2 + 100, SE009, 30 );
stopSe( spep_2 + 154, SE010, 22 );

--かめはめ波ヒット
SE014 = playSe( spep_2 + 100, 1027 );
setSeVolumeByWorkId( spep_2 + 100, SE014, 87 );
SE015 = playSe( spep_2 + 102, 1258 );
setSeVolumeByWorkId( spep_2 + 102, SE015, 67 );
SE013 = playSe( spep_2 + 130, 1198 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 130, SE013, 0 );
setSeVolumeByWorkId( spep_2 + 131, SE013, 10.8 );
setSeVolumeByWorkId( spep_2 + 132, SE013, 21.6 );
setSeVolumeByWorkId( spep_2 + 133, SE013, 32.4 );
setSeVolumeByWorkId( spep_2 + 134, SE013, 43.2 );
setSeVolumeByWorkId( spep_2 + 135, SE013, 54 );
setSeVolumeByWorkId( spep_2 + 136, SE013, 64.8 );
setSeVolumeByWorkId( spep_2 + 137, SE013, 75.6 );
setSeVolumeByWorkId( spep_2 + 138, SE013, 86 );
setStartTimeMs( SE013,  533 );

--爆発
SE016 = playSe( spep_2 + 158, 1024 );
setSeVolumeByWorkId( spep_2 + 158, SE016, 80 );
SE017 = playSe( spep_2 + 158, 1159 );
setSeVolumeByWorkId( spep_2 + 158, SE017, 76 );



-- ** ダメージ表示 ** --
dealDamage( spep_2 + 162 );
endPhase( spep_2 + 270 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- かめはめ波発射〜爆発
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 200, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 200, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +104 +2;

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
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--かめはめ波溜め始まり
SE001 = playSe( spep_0 + 0, 1148 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 47 );
stopSe( spep_0 + 86, SE001, 20 );
SE002 = playSe( spep_0 + 0, 1199 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
setPitch( spep_0 + 0, SE002, 700 );
setTimeStretch( SE002, 1.47, 10, 1 );

--かめはめ波溜め２
SE003 = playSe( spep_0 + 28, 1252 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 29, SE003, 4.5 );
setSeVolumeByWorkId( spep_0 + 30, SE003, 9 );
setSeVolumeByWorkId( spep_0 + 31, SE003, 13.5 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 18 );
setSeVolumeByWorkId( spep_0 + 33, SE003, 22.5 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 27 );
setSeVolumeByWorkId( spep_0 + 35, SE003, 31.5 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 36 );
setSeVolumeByWorkId( spep_0 + 37, SE003, 40.5 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 45 );
setSeVolumeByWorkId( spep_0 + 39, SE003, 49.5 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 54 );
setSeVolumeByWorkId( spep_0 + 41, SE003, 58.5 );
setSeVolumeByWorkId( spep_0 + 42, SE003, 63 );
setSeVolumeByWorkId( spep_0 + 43, SE003, 67.5 );
setSeVolumeByWorkId( spep_0 + 44, SE003, 72 );
setSeVolumeByWorkId( spep_0 + 45, SE003, 76.5 );
setSeVolumeByWorkId( spep_0 + 46, SE003, 81 );
setSeVolumeByWorkId( spep_0 + 47, SE003, 85.5 );
setSeVolumeByWorkId( spep_0 + 48, SE003, 90 );
setSeVolumeByWorkId( spep_0 + 49, SE003, 94.5 );
setSeVolumeByWorkId( spep_0 + 50, SE003, 100 );
setStartTimeMs( SE003,  0 );
SE004 = playSe( spep_0 + 44, 1265 ,"",0.6);
stopSe( spep_0 + 128, SE004, 60 );
SE005 = playSe( spep_0 + 74, 1209 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 52 );

--かめはめ波溜め３
SE006 = playSe( spep_0 + 106, 1296 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 126 );

--顔カットイン
SE007 = playSe( spep_x +12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 194, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 200;
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

--かめはめ波溜め２
stopSe( spep_1 + 6, SE003, 0 );
stopSe( spep_1 + 6, SE005, 0 );

--かめはめ波溜め３
stopSe( spep_1 + 6, SE006, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 87, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 87, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--SE
--かめはめ波発射
SE009 = playSe( spep_2 + 8, 1177 );
SE010 = playSe( spep_2 + 10, 1213 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 60 );
SE011 = playSe( spep_2 + 10, 1133 );
SE012 = playSe( spep_2 + 10, 1022 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
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
--敵の動き
setDisp( spep_2-3 + 90, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 90, 1, 104 );
changeAnime( spep_2-3 + 104, 1, 105 );

setBlendColor(spep_2-3 + 90,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 95,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 96,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 121,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 122,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 123,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 124,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 148,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 150,1,3,0.57,0.83,1,0);

setMoveKey( spep_2-3 + 90, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 103, 1, 0, 73.9 , 0 );

setMoveKey( spep_2-3 + 104, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 111, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 115, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 119, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 120, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 123, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 129, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 135, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 137, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 139, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 143, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-3 + 147, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-1 + 148, 1, 0.5, 49.6 , 0 );

setScaleKey( spep_2-3 + 90, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 103, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 111, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 115, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 119, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 123, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 128, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 129, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 136, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 137, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 138, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 140, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 141, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 142, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 143, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 144, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 146, 1, 0.07, 0.07 );
setScaleKey( spep_2-1 + 148, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 90, 1, 0 );
setRotateKey( spep_2-1 + 148, 1, 0 );

--SE
--かめはめ波発射
stopSe( spep_2 + 100, SE009, 30 );
stopSe( spep_2 + 154, SE010, 22 );

--かめはめ波ヒット
SE014 = playSe( spep_2 + 100, 1027 );
setSeVolumeByWorkId( spep_2 + 100, SE014, 87 );
SE015 = playSe( spep_2 + 102, 1258 );
setSeVolumeByWorkId( spep_2 + 102, SE015, 67 );
SE013 = playSe( spep_2 + 130, 1198 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 130, SE013, 0 );
setSeVolumeByWorkId( spep_2 + 131, SE013, 10.8 );
setSeVolumeByWorkId( spep_2 + 132, SE013, 21.6 );
setSeVolumeByWorkId( spep_2 + 133, SE013, 32.4 );
setSeVolumeByWorkId( spep_2 + 134, SE013, 43.2 );
setSeVolumeByWorkId( spep_2 + 135, SE013, 54 );
setSeVolumeByWorkId( spep_2 + 136, SE013, 64.8 );
setSeVolumeByWorkId( spep_2 + 137, SE013, 75.6 );
setSeVolumeByWorkId( spep_2 + 138, SE013, 86 );
setStartTimeMs( SE013,  533 );

--爆発
SE016 = playSe( spep_2 + 158, 1024 );
setSeVolumeByWorkId( spep_2 + 158, SE016, 80 );
SE017 = playSe( spep_2 + 158, 1159 );
setSeVolumeByWorkId( spep_2 + 158, SE017, 76 );



-- ** ダメージ表示 ** --
dealDamage( spep_2 + 162 );
endPhase( spep_2 + 270 );
end