--1023130:ナッパ(青年期)_ブレイクキャノン
--sp_effect_a7_00044

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
SP_01=	158360	;--	登場～セリフカットイン
SP_02=	158361	;--	顔アップ　気弾をためる
SP_03=	158362	;--	気弾発射　（手前）
SP_04=	158363	;--	気弾発射　（奥）

--エフェクト(てき)
SP_01x=	158360	;--	登場～セリフカットイン	
SP_02x=	158361	;--	顔アップ　気弾をためる	
SP_03x=	158364	;--	気弾発射　（手前）	(敵)
SP_04x=	158365	;--	気弾発射　（奥）	(敵)

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
--登場～セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 102, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 102, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 102, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 102, appearance, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -80, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -80,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -80,  515);

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
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 95 );
SE002 = playSeVer2( spep_0 + 10, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 74 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 94, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+102;
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
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--顔アップ　気弾をためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 144, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 144, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 144, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 144, tame, 255 );

--SE
--構える
SE005 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 0, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );

--気弾溜め
SE006 = playSeVer2( spep_2 + 22, 1037, "",spep_2 + 146, 0, 4, -1);
SE007 = playSeVer2( spep_2 + 22, 1144, "",spep_2 + 146, 0, 4, -1);
SE008 = playSeVer2( spep_2 + 22, 1227, "",spep_2 + 146, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 22, SE008, 130 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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

--発射前気弾溜め
SE009 = playSeVer2( spep_2 + 94, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE009, 170 );

--白フェード
entryFade( spep_2 + 136, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 144; 
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 200, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 200, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 200, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 200, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 200, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 200, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 56, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 318.8, 193.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 306.5, 179 , 0 );
setMoveKey( spep_3-3 + 4, 1, 294.1, 164.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, 281.7, 149.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 269.3, 134.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 257, 120.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 244.7, 105.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 232.3, 90.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 219.9, 76 , 0 );
setMoveKey( spep_3-3 + 18, 1, 207.6, 61.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 195.2, 46.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 182.8, 31.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, 170.4, 17.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 158.1, 2.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 145.7, -12.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 145.1, -13.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 144.4, -14.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 131.5, -33.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 155.3, -4.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 124.1, -17.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 160, -30.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 141.1, -19.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 158.5, -8.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 127.6, -39.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151, -10.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, 120.3, -23.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 155.6, -36.4 , 0 );
setMoveKey( spep_3-3 + 54, 1, 160.8, 4.3 , 0 );
setMoveKey( spep_3-1 + 56, 1, 130.4, -44.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
--setScaleKey( spep_3-3 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 4, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 6, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 10, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 14, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 16, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 20, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 22, 1, 0.41, 0.41 );
setScaleKey( spep_3-3 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 26, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 30, 1, 0.38, 0.38 );
setScaleKey( spep_3-3 + 44, 1, 0.38, 0.38 );
setScaleKey( spep_3-3 + 46, 1, 0.37, 0.37 );
setScaleKey( spep_3-1 + 56, 1, 0.37, 0.37 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 56, 1, 0 );

--SE
--気弾発射
SE010 = playSeVer2( spep_3 + 0, 1258, "",spep_3 + 48, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE010, 65 );
SE011 = playSeVer2( spep_3 + 4, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 4, 1146, "",spep_3 + 90, 0, 6, -1);
SE013 = playSeVer2( spep_3 + 4, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE013, 62 );
SE014 = playSeVer2( spep_3 + 4, 1178, "", 0, 0, 0, -1);

--気弾ヒット
SE015 = playSeVer2( spep_3 + 22, 1024, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 22, 1017, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_3 + 78, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 80, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_3+90);
endPhase( spep_3 + 190 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--登場～セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 102, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 102, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 102, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 102, appearance, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -80, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -80,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -80,  515);

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
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 95 );
SE002 = playSeVer2( spep_0 + 10, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 74 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 94, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+102;
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
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--顔アップ　気弾をためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 144, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 144, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 144, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 144, tame, 255 );

--SE
--構える
SE005 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 0, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );

--気弾溜め
SE006 = playSeVer2( spep_2 + 22, 1037, "",spep_2 + 146, 0, 4, -1);
SE007 = playSeVer2( spep_2 + 22, 1144, "",spep_2 + 146, 0, 4, -1);
SE008 = playSeVer2( spep_2 + 22, 1227, "",spep_2 + 146, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 22, SE008, 130 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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

--発射前気弾溜め
SE009 = playSeVer2( spep_2 + 94, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE009, 170 );

--白フェード
entryFade( spep_2 + 136, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 144; 
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 200, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 200, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 200, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 200, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 200, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 200, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 56, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 318.8, 193.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 306.5, 179 , 0 );
setMoveKey( spep_3-3 + 4, 1, 294.1, 164.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, 281.7, 149.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 269.3, 134.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 257, 120.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 244.7, 105.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 232.3, 90.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 219.9, 76 , 0 );
setMoveKey( spep_3-3 + 18, 1, 207.6, 61.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 195.2, 46.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 182.8, 31.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, 170.4, 17.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 158.1, 2.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 145.7, -12.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 145.1, -13.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 144.4, -14.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 131.5, -33.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 155.3, -4.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 124.1, -17.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 160, -30.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 141.1, -19.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 158.5, -8.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 127.6, -39.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151, -10.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, 120.3, -23.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 155.6, -36.4 , 0 );
setMoveKey( spep_3-3 + 54, 1, 160.8, 4.3 , 0 );
setMoveKey( spep_3-1 + 56, 1, 130.4, -44.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
--setScaleKey( spep_3-3 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 4, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 6, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 10, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 14, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 16, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 20, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 22, 1, 0.41, 0.41 );
setScaleKey( spep_3-3 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 26, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 30, 1, 0.38, 0.38 );
setScaleKey( spep_3-3 + 44, 1, 0.38, 0.38 );
setScaleKey( spep_3-3 + 46, 1, 0.37, 0.37 );
setScaleKey( spep_3-1 + 56, 1, 0.37, 0.37 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 56, 1, 0 );

--SE
--気弾発射
SE010 = playSeVer2( spep_3 + 0, 1258, "",spep_3 + 48, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE010, 65 );
SE011 = playSeVer2( spep_3 + 4, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 4, 1146, "",spep_3 + 90, 0, 6, -1);
SE013 = playSeVer2( spep_3 + 4, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE013, 62 );
SE014 = playSeVer2( spep_3 + 4, 1178, "", 0, 0, 0, -1);

--気弾ヒット
SE015 = playSeVer2( spep_3 + 22, 1024, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 22, 1017, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_3 + 78, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 80, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_3+90);
endPhase( spep_3 + 190 );
end