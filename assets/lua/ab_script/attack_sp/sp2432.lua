--1025040:ハッチャン_ハッチャンアタック
--sp_effect_b1_00221

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
SP_01=	160599	;--	構え、台詞カットイン
SP_02=	160600	;--	気を溜めてジャンプ
SP_03=	160602	;--	気を溜めてジャンプ
SP_04=	160604	;--	手前に向かって突進
SP_05=	160606	;--	体当たり
SP_06=	160608	;--	体当たり
SP_07=	160610	;--	手前に向かって飛び蹴り
SP_08=	160612	;--	喧嘩キック
SP_09=	160614	;--	喧嘩キック

--エフェクト(敵)
SP_01x=	160599	;--	構え、台詞カットイン	
SP_02x=	160601	;--	気を溜めてジャンプ	(敵)
SP_03x=	160603	;--	気を溜めてジャンプ	(敵)
SP_04x=	160605	;--	手前に向かって突進	(敵)
SP_05x=	160607	;--	体当たり	(敵)
SP_06x=	160609	;--	体当たり	(敵)
SP_07x=	160611	;--	手前に向かって飛び蹴り	(敵)
SP_08x=	160613	;--	喧嘩キック	(敵)
SP_09x=	160615	;--	喧嘩キック	(敵)

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
changeAnime( 0, 1, 100);

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
--構え、台詞カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
stance = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stance, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, stance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, stance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stance, 0 );
setEffRotateKey( spep_0 + 100, stance, 0 );
setEffAlphaKey( spep_0 + 0, stance, 255 );
setEffAlphaKey( spep_0 + 98, stance, 255 );
setEffAlphaKey( spep_0 + 99, stance, 255 );
setEffAlphaKey( spep_0 + 100, stance, 0 );

--顔カットインの準備
spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

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
--構える
SE001 = playSeVer2( spep_0 + 32, 1150, "", 0, 5, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE001, 67 );
setStartTimeMs( SE001,  417 );
SE003 = playSeVer2( spep_0 + 32, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 120 );
SE004 = playSeVer2( spep_0 + 34, 1011, "",spep_0 + 80, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 85 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
------------------------------------------------------
--気を溜めてジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, jump_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_f, 0 );
setEffRotateKey( spep_1 + 76, jump_f, 0 );
setEffAlphaKey( spep_1 + 0, jump_f, 255 );
setEffAlphaKey( spep_1 + 74, jump_f, 255 );
setEffAlphaKey( spep_1 + 75, jump_f, 255 );
setEffAlphaKey( spep_1 + 76, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, jump_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_b, 0 );
setEffRotateKey( spep_1 + 76, jump_b, 0 );
setEffAlphaKey( spep_1 + 0, jump_b, 255 );
setEffAlphaKey( spep_1 + 74, jump_b, 255 );
setEffAlphaKey( spep_1 + 75, jump_b, 255 );
setEffAlphaKey( spep_1 + 76, jump_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );


changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 0.2, 479.8 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -3.7, 477.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 10, 493 , 0 );
setMoveKey( spep_1-3 + 6, 1, -5.6, 490.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 11.9, 474.9 , 0 );
setMoveKey( spep_1-3 + 10, 1, -7.6, 476.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, -7.6, 497.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, -7.6, 468.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, 0.2, 475.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 15.8, 495.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, -13.4, 473.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 10, 459.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 0.2, 494.5 , 0 );
setMoveKey( spep_1-3 + 26, 1, -3.7, 470.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, -9.5, 488.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 0.2, 474.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 19.7, 479.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 0.2, 454.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 34, 1, 0.43, 0.43 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 34, 1, 0 );

--SE
--エンジン起動
SE005 = playSeVer2( spep_1 + 4, 1201, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 4, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE006, 74 );
SE007 = playSeVer2( spep_1 + 4, 1217, "", 0, 0, 0, -1);
setPitch( spep_1 + 4, SE007, 200 );
setTimeStretch( SE007, 1.13, 30, 4 );
SE008 = playSeVer2( spep_1 + 4, 1200, "",spep_1 + 54, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    --敵位置の固定
    setMoveKey( SP_dodge+9, 1, 0.2, 454.3 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.43, 0.43 );
    setRotateKey( SP_dodge+9, 1, 0 );
    
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
--敵の動き
setDisp( spep_1-1 + 78, 1, 0 );

setMoveKey( spep_1-3 + 36, 1, 0.2, 454 , 0 );
setMoveKey( spep_1-3 + 38, 1, 0.2, 453.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 0.2, 453.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 0.2, 453.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, 0.2, 453.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 0.2, 452.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 0.2, 452.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 0.2, 452.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 0.2, 378.3 , 0 );
setMoveKey( spep_1-3 + 54, 1, 0.2, 362.9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 0.2, 349 , 0 );
setMoveKey( spep_1-3 + 58, 1, 0.2, 336.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 0.2, 325.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 0.2, 315.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 0.2, 307.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 0.2, 300.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 0.2, 295 , 0 );
setMoveKey( spep_1-3 + 70, 1, 0.2, 290.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 0.2, 286.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 0.2, 283.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, 0.2, 280.4 , 0 );
setMoveKey( spep_1-1 + 78, 1, 0.2, 278 , 0 );

setScaleKey( spep_1-1 + 78, 1, 0.43, 0.43 );

setRotateKey( spep_1-1 + 78, 1, 0 );

--SE
--飛び立つ
SE009 = playSeVer2( spep_1 + 46, 1011, "",spep_1 + 132, 0, 8, -1);
SE010 = playSeVer2( spep_1 + 46, 1068, "",spep_1 + 132, 0, 8, -1);
SE011 = playSeVer2( spep_1 + 46, 9, "",spep_1 + 132, 0, 8, -1);
setTimeStretch( SE011, 1.25, 30, 4 );
SE012 = playSeVer2( spep_1 + 52, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 52, SE012, 54 );
setTimeStretch( SE012, 1.17, 30, 4 );

-- ** 次の準備 ** --
spep_2= spep_1 + 76;
------------------------------------------------------
--手前に向かって突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 40, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 40, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 40, rush, 255 );

--白フェード
entryFade( spep_2 + 32, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 40;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--体当たり
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 68, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 66, hit_f, 255 );
setEffAlphaKey( spep_4 + 67, hit_f, 255 );
setEffAlphaKey( spep_4 + 68, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 68, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 66, hit_b, 255 );
setEffAlphaKey( spep_4 + 67, hit_b, 255 );
setEffAlphaKey( spep_4 + 68, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 16, 1, 105 );

setMoveKey( spep_4 + 0, 1, 66.3, 98.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 66.3, 97.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 66.3, 95.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 66.3, 93.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 66.3, 91.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, 66.3, 89.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 66.3, 88.1 , 0 );
setMoveKey( spep_4-3 + 15, 1, 66.3, 86.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 42.3, 101 , 0 );
setMoveKey( spep_4-3 + 18, 1, 35.8, 108.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 3.3, 138.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 103.2, 59.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 159.8, 96.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 212.3, 93.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 260.4, 91.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 304.5, 90.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 344.4, 88.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, 380.3, 86.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, 412.2, 85.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 440.1, 84.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 464.2, 83.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 484.4, 82.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 500.8, 81.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 513.4, 81.3 , 0 );
setMoveKey( spep_4-3 + 48, 1, 522.3, 81.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 15, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 16, 1, 1.24, 1.24 );
setScaleKey( spep_4-3 + 20, 1, 1.24, 1.24 );
setScaleKey( spep_4-3 + 22, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_4-3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 36, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 42, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 48, 1, 0.78, 0.78 );

setRotateKey( spep_4 + 0, 1, -14.3 );
setRotateKey( spep_4-3 + 15, 1, -14.3 );
setRotateKey( spep_4-3 + 16, 1, 10.4 );
setRotateKey( spep_4-3 + 20, 1, 10.4 );
setRotateKey( spep_4-3 + 22, 1, 14.4 );
setRotateKey( spep_4-3 + 24, 1, 18.1 );
setRotateKey( spep_4-3 + 26, 1, 21.5 );
setRotateKey( spep_4-3 + 28, 1, 24.6 );
setRotateKey( spep_4-3 + 30, 1, 27.5 );
setRotateKey( spep_4-3 + 32, 1, 30.1 );
setRotateKey( spep_4-3 + 34, 1, 32.4 );
setRotateKey( spep_4-3 + 36, 1, 34.5 );
setRotateKey( spep_4-3 + 38, 1, 36.3 );
setRotateKey( spep_4-3 + 40, 1, 37.8 );
setRotateKey( spep_4-3 + 42, 1, 39.1 );
setRotateKey( spep_4-3 + 44, 1, 40.2 );
setRotateKey( spep_4-3 + 46, 1, 41 );
setRotateKey( spep_4-3 + 48, 1, 41.6 );

--SE
--体当たり
SE014 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 30, 0, 10, -1);
SE015 = playSeVer2( spep_4 + 14, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 14, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 68;
------------------------------------------------------
--手前に向かって飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, fly, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, fly, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly, 0 );
setEffRotateKey( spep_5 + 110, fly, 0 );
setEffAlphaKey( spep_5 + 0, fly, 255 );
setEffAlphaKey( spep_5 + 108, fly, 255 );
setEffAlphaKey( spep_5 + 109, fly, 255 );
setEffAlphaKey( spep_5 + 110, fly, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 46, 38.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 59.1, 34.6 , 0 );
setMoveKey( spep_5-3 + 4, 1, 82.7, 26.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 116, 15.7 , 0 );
setMoveKey( spep_5-3 + 8, 1, 158.5, 1.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 209.5, -15.3 , 0 );
setMoveKey( spep_5-3 + 12, 1, 268.6, -34.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 335.3, -57.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, 409.2, -81.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 490, -108.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 577.4, -137.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 671.3, -168.5 , 0 );
setMoveKey( spep_5-3 + 24, 1, 771.3, -201.7 , 0 );
setMoveKey( spep_5-3 + 26, 1, 877.4, -236.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 989.5, -274.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 1107.3, -313.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.97, 0.97 );
--setScaleKey( spep_5-3 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_5-3 + 6, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 8, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 10, 1, 1.18, 1.18 );
setScaleKey( spep_5-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 14, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 18, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 20, 1, 1.65, 1.65 );
setScaleKey( spep_5-3 + 22, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 24, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_5-3 + 28, 1, 2.18, 2.18 );
setScaleKey( spep_5-3 + 30, 1, 2.33, 2.33 );

setRotateKey( spep_5 + 0, 1, 47.7 );
--setRotateKey( spep_5-3 + 2, 1, 47.4 );
setRotateKey( spep_5-3 + 4, 1, 46.7 );
setRotateKey( spep_5-3 + 6, 1, 45.8 );
setRotateKey( spep_5-3 + 8, 1, 44.6 );
setRotateKey( spep_5-3 + 10, 1, 43.2 );
setRotateKey( spep_5-3 + 12, 1, 41.6 );
setRotateKey( spep_5-3 + 14, 1, 39.8 );
setRotateKey( spep_5-3 + 16, 1, 37.8 );
setRotateKey( spep_5-3 + 18, 1, 35.5 );
setRotateKey( spep_5-3 + 20, 1, 33.1 );
setRotateKey( spep_5-3 + 22, 1, 30.6 );
setRotateKey( spep_5-3 + 24, 1, 27.8 );
setRotateKey( spep_5-3 + 26, 1, 24.9 );
setRotateKey( spep_5-3 + 28, 1, 21.8 );
setRotateKey( spep_5-3 + 30, 1, 18.6 );

--SE
--向かってくる
SE017 = playSeVer2( spep_5 + 0 -6, 1121, "",spep_5 + 98, 0, 42, -1);
setSeVolumeByWorkId( spep_5 + 0 -6, SE017, 46 );
SE018 = playSeVer2( spep_5 + 6 -6, 1278, "",spep_5 + 118, 0, 62, -1);
SE019 = playSeVer2( spep_5 + 6 -6, 1116, "",spep_5 + 50, 0, 14, -1);
SE020 = playSeVer2( spep_5 + 12 -6, 1019, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_5 + 12 -6, 9, "", 0, 0, 0, -1);
setTimeStretch( SE021, 1.18, 30, 4 );
SE022 = playSeVer2( spep_5 + 12 -6, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12 -6, SE022, 79 );
SE023 = playSeVer2( spep_5 + 76, 1019, "",spep_5 + 130, 0, 10, -1);

--振りかぶる
SE024 = playSeVer2( spep_5 + 64, 1116, "",spep_5 + 110, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 64, SE024, 157 );
SE025 = playSeVer2( spep_5 + 70, 1004, "", 0, 0, 0, -1);

--ラストキック
SE026 = playSeVer2( spep_5 + 96, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 96, SE026, 82 );
SE027 = playSeVer2( spep_5 + 98, 1120, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_5 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 98, SE028, 76 );
SE029 = playSeVer2( spep_5 + 98, 1009, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 110;
------------------------------------------------------
--手前に向かって飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 110, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 110, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 110, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 110, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -126.2, -209.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -126.2, -209.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, -211, -279.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 40.3, -69.4 , 0 );
setMoveKey( spep_6-3 + 8, 1, -43.6, -203.5 , 0 );
setMoveKey( spep_6-3 + 10, 1, -49.5, -111.8 , 0 );
setMoveKey( spep_6-3 + 12, 1, -12, -255.9 , 0 );
setMoveKey( spep_6-3 + 14, 1, 6.1, -144.3 , 0 );
setMoveKey( spep_6-3 + 16, 1, 71.6, -132.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 131, -121.7 , 0 );
setMoveKey( spep_6-3 + 20, 1, 184.8, -112 , 0 );
setMoveKey( spep_6-3 + 22, 1, 233.5, -103.1 , 0 );
setMoveKey( spep_6-3 + 24, 1, 277.7, -95.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, 318.1, -87.8 , 0 );
setMoveKey( spep_6-3 + 28, 1, 355.2, -81.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, 389.5, -74.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 421.9, -69 , 0 );
setMoveKey( spep_6-3 + 34, 1, 452.9, -63.5 , 0 );
setMoveKey( spep_6-3 + 36, 1, 483.1, -58 , 0 );
setMoveKey( spep_6-3 + 38, 1, 513.2, -52.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 543.8, -47 , 0 );
setMoveKey( spep_6-3 + 42, 1, 575.5, -41.3 , 0 );
setMoveKey( spep_6-3 + 44, 1, 608.9, -35.2 , 0 );
setMoveKey( spep_6-3 + 46, 1, 644.7, -28.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, 683.2, -21.8 , 0 );

setScaleKey( spep_6 + 0, 1, 7.32, 7.32 );
setScaleKey( spep_6-3 + 12, 1, 7.32, 7.32 );
setScaleKey( spep_6-3 + 14, 1, 7.09, 7.09 );
setScaleKey( spep_6-3 + 16, 1, 6.45, 6.45 );
setScaleKey( spep_6-3 + 18, 1, 5.88, 5.88 );
setScaleKey( spep_6-3 + 20, 1, 5.36, 5.36 );
setScaleKey( spep_6-3 + 22, 1, 4.88, 4.88 );
setScaleKey( spep_6-3 + 24, 1, 4.46, 4.46 );
setScaleKey( spep_6-3 + 26, 1, 4.06, 4.06 );
setScaleKey( spep_6-3 + 28, 1, 3.71, 3.71 );
setScaleKey( spep_6-3 + 30, 1, 3.37, 3.37 );
setScaleKey( spep_6-3 + 32, 1, 3.06, 3.06 );
setScaleKey( spep_6-3 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_6-3 + 36, 1, 2.47, 2.47 );
setScaleKey( spep_6-3 + 38, 1, 2.17, 2.17 );
setScaleKey( spep_6-3 + 40, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 44, 1, 1.25, 1.25 );
setScaleKey( spep_6-3 + 46, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 48, 1, 0.53, 0.53 );

setRotateKey( spep_6 + 0, 1, 11 );
setRotateKey( spep_6-3 + 14, 1, 11 );
setRotateKey( spep_6-3 + 16, 1, 13.9 );
setRotateKey( spep_6-3 + 18, 1, 16.6 );
setRotateKey( spep_6-3 + 20, 1, 19 );
setRotateKey( spep_6-3 + 22, 1, 21.2 );
setRotateKey( spep_6-3 + 24, 1, 23.2 );
setRotateKey( spep_6-3 + 26, 1, 25 );
setRotateKey( spep_6-3 + 28, 1, 26.7 );
setRotateKey( spep_6-3 + 30, 1, 28.2 );
setRotateKey( spep_6-3 + 32, 1, 29.7 );
setRotateKey( spep_6-3 + 34, 1, 31.1 );
setRotateKey( spep_6-3 + 36, 1, 32.5 );
setRotateKey( spep_6-3 + 38, 1, 33.8 );
setRotateKey( spep_6-3 + 40, 1, 35.2 );
setRotateKey( spep_6-3 + 42, 1, 36.6 );
setRotateKey( spep_6-3 + 44, 1, 38.1 );
setRotateKey( spep_6-3 + 46, 1, 39.7 );
setRotateKey( spep_6-3 + 48, 1, 41.5 );

-- 終わり
dealDamage(spep_6+0);
endPhase( spep_6 + 100 );
else 
------------------------------------------------------
--構え、台詞カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
stance = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stance, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, stance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, stance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stance, 0 );
setEffRotateKey( spep_0 + 100, stance, 0 );
setEffAlphaKey( spep_0 + 0, stance, 255 );
setEffAlphaKey( spep_0 + 98, stance, 255 );
setEffAlphaKey( spep_0 + 99, stance, 255 );
setEffAlphaKey( spep_0 + 100, stance, 0 );

--顔カットインの準備
spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(--セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

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
--構える
SE001 = playSeVer2( spep_0 + 32, 1150, "", 0, 5, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE001, 67 );
setStartTimeMs( SE001,  417 );
SE003 = playSeVer2( spep_0 + 32, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 120 );
SE004 = playSeVer2( spep_0 + 34, 1011, "",spep_0 + 80, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 85 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
------------------------------------------------------
--気を溜めてジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, jump_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 76, jump_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_f, 0 );
setEffRotateKey( spep_1 + 76, jump_f, 0 );
setEffAlphaKey( spep_1 + 0, jump_f, 255 );
setEffAlphaKey( spep_1 + 74, jump_f, 255 );
setEffAlphaKey( spep_1 + 75, jump_f, 255 );
setEffAlphaKey( spep_1 + 76, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, jump_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 76, jump_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_b, 0 );
setEffRotateKey( spep_1 + 76, jump_b, 0 );
setEffAlphaKey( spep_1 + 0, jump_b, 255 );
setEffAlphaKey( spep_1 + 74, jump_b, 255 );
setEffAlphaKey( spep_1 + 75, jump_b, 255 );
setEffAlphaKey( spep_1 + 76, jump_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );


changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 0.2, 479.8 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -3.7, 477.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 10, 493 , 0 );
setMoveKey( spep_1-3 + 6, 1, -5.6, 490.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 11.9, 474.9 , 0 );
setMoveKey( spep_1-3 + 10, 1, -7.6, 476.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, -7.6, 497.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, -7.6, 468.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, 0.2, 475.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 15.8, 495.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, -13.4, 473.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 10, 459.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 0.2, 494.5 , 0 );
setMoveKey( spep_1-3 + 26, 1, -3.7, 470.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, -9.5, 488.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 0.2, 474.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 19.7, 479.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 0.2, 454.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 34, 1, 0.43, 0.43 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 34, 1, 0 );

--SE
--エンジン起動
SE005 = playSeVer2( spep_1 + 4, 1201, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 4, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE006, 74 );
SE007 = playSeVer2( spep_1 + 4, 1217, "", 0, 0, 0, -1);
setPitch( spep_1 + 4, SE007, 200 );
setTimeStretch( SE007, 1.13, 30, 4 );
SE008 = playSeVer2( spep_1 + 4, 1200, "",spep_1 + 54, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    --敵位置の固定
    setMoveKey( SP_dodge+9, 1, 0.2, 454.3 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.43, 0.43 );
    setRotateKey( SP_dodge+9, 1, 0 );
    
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
--敵の動き
setDisp( spep_1-1 + 78, 1, 0 );

setMoveKey( spep_1-3 + 36, 1, 0.2, 454 , 0 );
setMoveKey( spep_1-3 + 38, 1, 0.2, 453.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 0.2, 453.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 0.2, 453.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, 0.2, 453.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 0.2, 452.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 0.2, 452.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 0.2, 452.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 0.2, 378.3 , 0 );
setMoveKey( spep_1-3 + 54, 1, 0.2, 362.9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 0.2, 349 , 0 );
setMoveKey( spep_1-3 + 58, 1, 0.2, 336.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 0.2, 325.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 0.2, 315.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 0.2, 307.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 0.2, 300.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 0.2, 295 , 0 );
setMoveKey( spep_1-3 + 70, 1, 0.2, 290.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 0.2, 286.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 0.2, 283.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, 0.2, 280.4 , 0 );
setMoveKey( spep_1-1 + 78, 1, 0.2, 278 , 0 );

setScaleKey( spep_1-1 + 78, 1, 0.43, 0.43 );

setRotateKey( spep_1-1 + 78, 1, 0 );

--SE
--飛び立つ
SE009 = playSeVer2( spep_1 + 46, 1011, "",spep_1 + 132, 0, 8, -1);
SE010 = playSeVer2( spep_1 + 46, 1068, "",spep_1 + 132, 0, 8, -1);
SE011 = playSeVer2( spep_1 + 46, 9, "",spep_1 + 132, 0, 8, -1);
setTimeStretch( SE011, 1.25, 30, 4 );
SE012 = playSeVer2( spep_1 + 52, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 52, SE012, 54 );
setTimeStretch( SE012, 1.17, 30, 4 );

-- ** 次の準備 ** --
spep_2= spep_1 + 76;
------------------------------------------------------
--手前に向かって突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 40, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 40, rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 40, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 40, rush, 255 );

--白フェード
entryFade( spep_2 + 32, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 40;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--体当たり
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 68, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 66, hit_f, 255 );
setEffAlphaKey( spep_4 + 67, hit_f, 255 );
setEffAlphaKey( spep_4 + 68, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 68, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 66, hit_b, 255 );
setEffAlphaKey( spep_4 + 67, hit_b, 255 );
setEffAlphaKey( spep_4 + 68, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 16, 1, 105 );

setMoveKey( spep_4 + 0, 1, 66.3, 98.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 66.3, 97.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 66.3, 95.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 66.3, 93.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 66.3, 91.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, 66.3, 89.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 66.3, 88.1 , 0 );
setMoveKey( spep_4-3 + 15, 1, 66.3, 86.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 42.3, 101 , 0 );
setMoveKey( spep_4-3 + 18, 1, 35.8, 108.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 3.3, 138.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 103.2, 59.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 159.8, 96.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 212.3, 93.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 260.4, 91.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 304.5, 90.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 344.4, 88.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, 380.3, 86.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, 412.2, 85.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 440.1, 84.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 464.2, 83.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 484.4, 82.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 500.8, 81.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 513.4, 81.3 , 0 );
setMoveKey( spep_4-3 + 48, 1, 522.3, 81.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 15, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 16, 1, 1.24, 1.24 );
setScaleKey( spep_4-3 + 20, 1, 1.24, 1.24 );
setScaleKey( spep_4-3 + 22, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_4-3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 36, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 42, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 48, 1, 0.78, 0.78 );

setRotateKey( spep_4 + 0, 1, -14.3 );
setRotateKey( spep_4-3 + 15, 1, -14.3 );
setRotateKey( spep_4-3 + 16, 1, 10.4 );
setRotateKey( spep_4-3 + 20, 1, 10.4 );
setRotateKey( spep_4-3 + 22, 1, 14.4 );
setRotateKey( spep_4-3 + 24, 1, 18.1 );
setRotateKey( spep_4-3 + 26, 1, 21.5 );
setRotateKey( spep_4-3 + 28, 1, 24.6 );
setRotateKey( spep_4-3 + 30, 1, 27.5 );
setRotateKey( spep_4-3 + 32, 1, 30.1 );
setRotateKey( spep_4-3 + 34, 1, 32.4 );
setRotateKey( spep_4-3 + 36, 1, 34.5 );
setRotateKey( spep_4-3 + 38, 1, 36.3 );
setRotateKey( spep_4-3 + 40, 1, 37.8 );
setRotateKey( spep_4-3 + 42, 1, 39.1 );
setRotateKey( spep_4-3 + 44, 1, 40.2 );
setRotateKey( spep_4-3 + 46, 1, 41 );
setRotateKey( spep_4-3 + 48, 1, 41.6 );

--SE
--体当たり
SE014 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 30, 0, 10, -1);
SE015 = playSeVer2( spep_4 + 14, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 14, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 68;
------------------------------------------------------
--手前に向かって飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, fly, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, fly, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly, 0 );
setEffRotateKey( spep_5 + 110, fly, 0 );
setEffAlphaKey( spep_5 + 0, fly, 255 );
setEffAlphaKey( spep_5 + 108, fly, 255 );
setEffAlphaKey( spep_5 + 109, fly, 255 );
setEffAlphaKey( spep_5 + 110, fly, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 46, 38.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 59.1, 34.6 , 0 );
setMoveKey( spep_5-3 + 4, 1, 82.7, 26.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 116, 15.7 , 0 );
setMoveKey( spep_5-3 + 8, 1, 158.5, 1.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 209.5, -15.3 , 0 );
setMoveKey( spep_5-3 + 12, 1, 268.6, -34.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 335.3, -57.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, 409.2, -81.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 490, -108.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 577.4, -137.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 671.3, -168.5 , 0 );
setMoveKey( spep_5-3 + 24, 1, 771.3, -201.7 , 0 );
setMoveKey( spep_5-3 + 26, 1, 877.4, -236.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 989.5, -274.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 1107.3, -313.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.97, 0.97 );
--setScaleKey( spep_5-3 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_5-3 + 6, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 8, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 10, 1, 1.18, 1.18 );
setScaleKey( spep_5-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 14, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 18, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 20, 1, 1.65, 1.65 );
setScaleKey( spep_5-3 + 22, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 24, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_5-3 + 28, 1, 2.18, 2.18 );
setScaleKey( spep_5-3 + 30, 1, 2.33, 2.33 );

setRotateKey( spep_5 + 0, 1, 47.7 );
--setRotateKey( spep_5-3 + 2, 1, 47.4 );
setRotateKey( spep_5-3 + 4, 1, 46.7 );
setRotateKey( spep_5-3 + 6, 1, 45.8 );
setRotateKey( spep_5-3 + 8, 1, 44.6 );
setRotateKey( spep_5-3 + 10, 1, 43.2 );
setRotateKey( spep_5-3 + 12, 1, 41.6 );
setRotateKey( spep_5-3 + 14, 1, 39.8 );
setRotateKey( spep_5-3 + 16, 1, 37.8 );
setRotateKey( spep_5-3 + 18, 1, 35.5 );
setRotateKey( spep_5-3 + 20, 1, 33.1 );
setRotateKey( spep_5-3 + 22, 1, 30.6 );
setRotateKey( spep_5-3 + 24, 1, 27.8 );
setRotateKey( spep_5-3 + 26, 1, 24.9 );
setRotateKey( spep_5-3 + 28, 1, 21.8 );
setRotateKey( spep_5-3 + 30, 1, 18.6 );

--SE
--向かってくる
SE017 = playSeVer2( spep_5 + 0 -6, 1121, "",spep_5 + 98, 0, 42, -1);
setSeVolumeByWorkId( spep_5 + 0 -6, SE017, 46 );
SE018 = playSeVer2( spep_5 + 6 -6, 1278, "",spep_5 + 118, 0, 62, -1);
SE019 = playSeVer2( spep_5 + 6 -6, 1116, "",spep_5 + 50, 0, 14, -1);
SE020 = playSeVer2( spep_5 + 12 -6, 1019, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_5 + 12 -6, 9, "", 0, 0, 0, -1);
setTimeStretch( SE021, 1.18, 30, 4 );
SE022 = playSeVer2( spep_5 + 12 -6, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12 -6, SE022, 79 );
SE023 = playSeVer2( spep_5 + 76, 1019, "",spep_5 + 130, 0, 10, -1);

--振りかぶる
SE024 = playSeVer2( spep_5 + 64, 1116, "",spep_5 + 110, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 64, SE024, 157 );
SE025 = playSeVer2( spep_5 + 70, 1004, "", 0, 0, 0, -1);

--ラストキック
SE026 = playSeVer2( spep_5 + 96, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 96, SE026, 82 );
SE027 = playSeVer2( spep_5 + 98, 1120, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_5 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 98, SE028, 76 );
SE029 = playSeVer2( spep_5 + 98, 1009, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 110;
------------------------------------------------------
--手前に向かって飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 110, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 110, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 110, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 110, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -126.2, -209.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -126.2, -209.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, -211, -279.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 40.3, -69.4 , 0 );
setMoveKey( spep_6-3 + 8, 1, -43.6, -203.5 , 0 );
setMoveKey( spep_6-3 + 10, 1, -49.5, -111.8 , 0 );
setMoveKey( spep_6-3 + 12, 1, -12, -255.9 , 0 );
setMoveKey( spep_6-3 + 14, 1, 6.1, -144.3 , 0 );
setMoveKey( spep_6-3 + 16, 1, 71.6, -132.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 131, -121.7 , 0 );
setMoveKey( spep_6-3 + 20, 1, 184.8, -112 , 0 );
setMoveKey( spep_6-3 + 22, 1, 233.5, -103.1 , 0 );
setMoveKey( spep_6-3 + 24, 1, 277.7, -95.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, 318.1, -87.8 , 0 );
setMoveKey( spep_6-3 + 28, 1, 355.2, -81.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, 389.5, -74.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 421.9, -69 , 0 );
setMoveKey( spep_6-3 + 34, 1, 452.9, -63.5 , 0 );
setMoveKey( spep_6-3 + 36, 1, 483.1, -58 , 0 );
setMoveKey( spep_6-3 + 38, 1, 513.2, -52.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 543.8, -47 , 0 );
setMoveKey( spep_6-3 + 42, 1, 575.5, -41.3 , 0 );
setMoveKey( spep_6-3 + 44, 1, 608.9, -35.2 , 0 );
setMoveKey( spep_6-3 + 46, 1, 644.7, -28.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, 683.2, -21.8 , 0 );

setScaleKey( spep_6 + 0, 1, 7.32, 7.32 );
setScaleKey( spep_6-3 + 12, 1, 7.32, 7.32 );
setScaleKey( spep_6-3 + 14, 1, 7.09, 7.09 );
setScaleKey( spep_6-3 + 16, 1, 6.45, 6.45 );
setScaleKey( spep_6-3 + 18, 1, 5.88, 5.88 );
setScaleKey( spep_6-3 + 20, 1, 5.36, 5.36 );
setScaleKey( spep_6-3 + 22, 1, 4.88, 4.88 );
setScaleKey( spep_6-3 + 24, 1, 4.46, 4.46 );
setScaleKey( spep_6-3 + 26, 1, 4.06, 4.06 );
setScaleKey( spep_6-3 + 28, 1, 3.71, 3.71 );
setScaleKey( spep_6-3 + 30, 1, 3.37, 3.37 );
setScaleKey( spep_6-3 + 32, 1, 3.06, 3.06 );
setScaleKey( spep_6-3 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_6-3 + 36, 1, 2.47, 2.47 );
setScaleKey( spep_6-3 + 38, 1, 2.17, 2.17 );
setScaleKey( spep_6-3 + 40, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 44, 1, 1.25, 1.25 );
setScaleKey( spep_6-3 + 46, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 48, 1, 0.53, 0.53 );

setRotateKey( spep_6 + 0, 1, 11 );
setRotateKey( spep_6-3 + 14, 1, 11 );
setRotateKey( spep_6-3 + 16, 1, 13.9 );
setRotateKey( spep_6-3 + 18, 1, 16.6 );
setRotateKey( spep_6-3 + 20, 1, 19 );
setRotateKey( spep_6-3 + 22, 1, 21.2 );
setRotateKey( spep_6-3 + 24, 1, 23.2 );
setRotateKey( spep_6-3 + 26, 1, 25 );
setRotateKey( spep_6-3 + 28, 1, 26.7 );
setRotateKey( spep_6-3 + 30, 1, 28.2 );
setRotateKey( spep_6-3 + 32, 1, 29.7 );
setRotateKey( spep_6-3 + 34, 1, 31.1 );
setRotateKey( spep_6-3 + 36, 1, 32.5 );
setRotateKey( spep_6-3 + 38, 1, 33.8 );
setRotateKey( spep_6-3 + 40, 1, 35.2 );
setRotateKey( spep_6-3 + 42, 1, 36.6 );
setRotateKey( spep_6-3 + 44, 1, 38.1 );
setRotateKey( spep_6-3 + 46, 1, 39.7 );
setRotateKey( spep_6-3 + 48, 1, 41.5 );

-- 終わり
dealDamage(spep_6+0);
endPhase( spep_6 + 100 );
end