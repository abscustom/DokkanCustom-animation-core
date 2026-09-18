--1020660:超サイヤ人4ブロリー_ギガンティックデストラクション
--sp_effect_a2_00147

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
SP_01=	156324	;--	溜め
SP_02=	156325	;--	発射〜爆発
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
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, -40, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  -40,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  -40,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 120 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07);

--SE
--気弾溜め
SE001 = playSe( spep_0 + 0, 1191 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 178 );
SE002 = playSe( spep_0 + 0, 1200 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 132 );
SE003 = playSe( spep_0 + 0, 1265 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 124 );
SE005 = playSe( spep_0 + 44, 49 );
SE006 = playSe( spep_0 + 68, 1199 );
setTimeStretch( SE006, 1.11, 10, 1 );
SE007 = playSe( spep_0 + 68, 1158 );
setSeVolumeByWorkId( spep_0 + 68, SE007, 53 );
SE008 = playSe( spep_0 + 68, 1276 );
setSeVolumeByWorkId( spep_0 + 68, SE008, 59 );

--顔カットイン
SE004 = playSe( spep_0 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
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

--気弾溜め
stopSe( spep_1 + 2, SE001, 0 );
stopSe( spep_1 + 2, SE002, 0 );
stopSe( spep_1 + 2, SE003, 0 );
stopSe( spep_1 + 2, SE006, 0 );
stopSe( spep_1 + 2, SE007, 0 );
stopSe( spep_1 + 2, SE008, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_1 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 突進ー叩き落としまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 230, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 230, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 230, finish, 255 );

--敵の動き
setDisp( spep_2-3+66, 1, 1);

changeAnime( spep_2-3+66, 1, 118);

setMoveKey( spep_2-3 + 66, 1, 1019.1, -1094.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 859.3, -915.7 , 0 );
setMoveKey( spep_2-3 + 70, 1, 699.6, -736.8 , 0 );
setMoveKey( spep_2-3 + 72, 1, 539.9, -557.9 , 0 );

setScaleKey( spep_2-3 + 66, 1, 5.44, 5.44 );
setScaleKey( spep_2-3 + 68, 1, 4.86, 4.86 );
setScaleKey( spep_2-3 + 70, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 72, 1, 3.71, 3.71 );

setRotateKey( spep_2-3 + 66, 1, 4.5 );
setRotateKey( spep_2-3 + 68, 1, 4.9 );
setRotateKey( spep_2-3 + 70, 1, 5.4 );
setRotateKey( spep_2-3 + 72, 1, 5.8 );

--SE
--気弾溜めつづき
SE010 = playSe( spep_2 + 0, 1200 );
setSeVolumeByWorkId( spep_2 + 0, SE010, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE010, 70.5 );
setSeVolumeByWorkId( spep_2 + 2, SE010, 141 );
setStartTimeMs( SE010,  1417 );
stopSe( spep_2 + 66, SE010, 6 );
SE011 = playSe( spep_2 + 0, 1158 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE011, 35.5 );
setSeVolumeByWorkId( spep_2 + 2, SE011, 71 );
setStartTimeMs( SE011,  983 );
stopSe( spep_2 + 66, SE011, 6 );
SE012 = playSe( spep_2 + 0, 1191 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE012, 50 );
setSeVolumeByWorkId( spep_2 + 2, SE012, 100 );
setStartTimeMs( SE012,  967 );
stopSe( spep_2 + 66, SE012, 6 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 230, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 539.9, -557.9 , 0 );
    setScaleKey( SP_dodge+9, 1, 3.71, 3.71 );
    setRotateKey( SP_dodge+9, 1, 5.8 );

    
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

setDisp( spep_2-1+108, 1, 0);


setMoveKey( spep_2-3 + 74, 1, 380.2, -379 , 0 );
setMoveKey( spep_2-3 + 76, 1, 220.5, -200.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 216.4, -196.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 212.4, -192.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 208.3, -188.8 , 0 );
setMoveKey( spep_2-3 + 84, 1, 204.2, -185 , 0 );
setMoveKey( spep_2-3 + 86, 1, 200.2, -181.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, 196.1, -177.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 192.1, -173.8 , 0 );
setMoveKey( spep_2-3 + 92, 1, 188, -170 , 0 );
setMoveKey( spep_2-3 + 94, 1, 183.9, -166.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, 179.9, -162.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 175.8, -158.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 171.8, -155 , 0 );
setMoveKey( spep_2-3 + 102, 1, 167.7, -151.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 163.6, -147.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 159.6, -143.8 , 0 );
setMoveKey( spep_2-1 + 108, 1, 155.5, -140.1 , 0 );

setScaleKey( spep_2-3 + 74, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 78, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_2-3 + 82, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 84, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 86, 1, 2.46, 2.46 );
setScaleKey( spep_2-3 + 88, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 90, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 92, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 96, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 98, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 100, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 102, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 106, 1, 2.29, 2.29 );
setScaleKey( spep_2-1 + 108, 1, 2.27, 2.27 );

setRotateKey( spep_2-3 + 74, 1, 6.3 );
setRotateKey( spep_2-3 + 76, 1, 6.7 );
setRotateKey( spep_2-1 + 108, 1, 6.7 );

--SE
--気弾発射
SE013 = playSe( spep_2 + 64, 1027 );
SE014 = playSe( spep_2 + 64, 1193 );
stopSe( spep_2 + 114, SE014, 14 );
SE015 = playSe( spep_2 + 64, 1022 );

--爆発
SE016 = playSe( spep_2 + 108, 1159 );
SE017 = playSe( spep_2 + 108, 1023 );

--終わり
dealDamage( spep_2 +116 );
endPhase( spep_2 + 220 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, -40, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  -40,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  -40,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 120 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07);

--SE
--気弾溜め
SE001 = playSe( spep_0 + 0, 1191 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 178 );
SE002 = playSe( spep_0 + 0, 1200 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 132 );
SE003 = playSe( spep_0 + 0, 1265 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 124 );
SE005 = playSe( spep_0 + 44, 49 );
SE006 = playSe( spep_0 + 68, 1199 );
setTimeStretch( SE006, 1.11, 10, 1 );
SE007 = playSe( spep_0 + 68, 1158 );
setSeVolumeByWorkId( spep_0 + 68, SE007, 53 );
SE008 = playSe( spep_0 + 68, 1276 );
setSeVolumeByWorkId( spep_0 + 68, SE008, 59 );

--顔カットイン
SE004 = playSe( spep_0 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
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

--気弾溜め
stopSe( spep_1 + 2, SE001, 0 );
stopSe( spep_1 + 2, SE002, 0 );
stopSe( spep_1 + 2, SE003, 0 );
stopSe( spep_1 + 2, SE006, 0 );
stopSe( spep_1 + 2, SE007, 0 );
stopSe( spep_1 + 2, SE008, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_1 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 突進ー叩き落としまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 230, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 230, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 230, finish, 255 );

--敵の動き
setDisp( spep_2-3+66, 1, 1);

changeAnime( spep_2-3+66, 1, 118);

setMoveKey( spep_2-3 + 66, 1, 1019.1, -1094.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 859.3, -915.7 , 0 );
setMoveKey( spep_2-3 + 70, 1, 699.6, -736.8 , 0 );
setMoveKey( spep_2-3 + 72, 1, 539.9, -557.9 , 0 );

setScaleKey( spep_2-3 + 66, 1, 5.44, 5.44 );
setScaleKey( spep_2-3 + 68, 1, 4.86, 4.86 );
setScaleKey( spep_2-3 + 70, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 72, 1, 3.71, 3.71 );

setRotateKey( spep_2-3 + 66, 1, 4.5 );
setRotateKey( spep_2-3 + 68, 1, 4.9 );
setRotateKey( spep_2-3 + 70, 1, 5.4 );
setRotateKey( spep_2-3 + 72, 1, 5.8 );

--SE
--気弾溜めつづき
SE010 = playSe( spep_2 + 0, 1200 );
setSeVolumeByWorkId( spep_2 + 0, SE010, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE010, 70.5 );
setSeVolumeByWorkId( spep_2 + 2, SE010, 141 );
setStartTimeMs( SE010,  1417 );
stopSe( spep_2 + 66, SE010, 6 );
SE011 = playSe( spep_2 + 0, 1158 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE011, 35.5 );
setSeVolumeByWorkId( spep_2 + 2, SE011, 71 );
setStartTimeMs( SE011,  983 );
stopSe( spep_2 + 66, SE011, 6 );
SE012 = playSe( spep_2 + 0, 1191 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE012, 50 );
setSeVolumeByWorkId( spep_2 + 2, SE012, 100 );
setStartTimeMs( SE012,  967 );
stopSe( spep_2 + 66, SE012, 6 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 230, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 539.9, -557.9 , 0 );
    setScaleKey( SP_dodge+9, 1, 3.71, 3.71 );
    setRotateKey( SP_dodge+9, 1, 5.8 );

    
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

setDisp( spep_2-1+108, 1, 0);


setMoveKey( spep_2-3 + 74, 1, 380.2, -379 , 0 );
setMoveKey( spep_2-3 + 76, 1, 220.5, -200.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 216.4, -196.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 212.4, -192.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 208.3, -188.8 , 0 );
setMoveKey( spep_2-3 + 84, 1, 204.2, -185 , 0 );
setMoveKey( spep_2-3 + 86, 1, 200.2, -181.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, 196.1, -177.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 192.1, -173.8 , 0 );
setMoveKey( spep_2-3 + 92, 1, 188, -170 , 0 );
setMoveKey( spep_2-3 + 94, 1, 183.9, -166.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, 179.9, -162.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 175.8, -158.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 171.8, -155 , 0 );
setMoveKey( spep_2-3 + 102, 1, 167.7, -151.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 163.6, -147.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 159.6, -143.8 , 0 );
setMoveKey( spep_2-1 + 108, 1, 155.5, -140.1 , 0 );

setScaleKey( spep_2-3 + 74, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 78, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_2-3 + 82, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 84, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 86, 1, 2.46, 2.46 );
setScaleKey( spep_2-3 + 88, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 90, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 92, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 96, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 98, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 100, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 102, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 106, 1, 2.29, 2.29 );
setScaleKey( spep_2-1 + 108, 1, 2.27, 2.27 );

setRotateKey( spep_2-3 + 74, 1, 6.3 );
setRotateKey( spep_2-3 + 76, 1, 6.7 );
setRotateKey( spep_2-1 + 108, 1, 6.7 );

--SE
--気弾発射
SE013 = playSe( spep_2 + 64, 1027 );
SE014 = playSe( spep_2 + 64, 1193 );
stopSe( spep_2 + 114, SE014, 14 );
SE015 = playSe( spep_2 + 64, 1022 );

--爆発
SE016 = playSe( spep_2 + 108, 1159 );
SE017 = playSe( spep_2 + 108, 1023 );

--終わり
dealDamage( spep_2 +116 );
endPhase( spep_2 + 220 );
end