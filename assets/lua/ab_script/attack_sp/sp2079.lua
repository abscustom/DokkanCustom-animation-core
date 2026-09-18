--1020680:超サイヤ人4バーダック_リベリオンハンマー
--sp_effect_b1_00127

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
SP_01=	156261	;--	構え
SP_02=	156262	;--	前方突進
SP_03=	156263	;--	殴りかかり
SP_04=	156265	;--	命中
SP_05=	156267	;--	命中　背景

--エフェクト(てき方)
SP_01x=	156261	;--	構え	
SP_02x=	156262	;--	前方突進	
SP_03x=	156264	;--	殴りかかり	(敵)
SP_04x=	156266	;--	命中	(敵)
SP_05x=	156267	;--	命中　背景	

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
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, -100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  -100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  -100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 16,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 16, shuchusen1, 86, 10 );
setEffMoveKey( spep_0-3 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 16, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 100, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0+10 , 4, 88, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
--顔カットイン
SE001 = playSe( spep_0 + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 12, 1035 );

--オーラ
SE003 = playSe( spep_0 + 12, 1036 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 89 );

--構える
SE004 = playSe( spep_0 + 14, 1233 );
SE005 = playSe( spep_0 + 24, 1006 );

--オーラ
SE006 = playSe( spep_0 + 36, 1036 );
setSeVolumeByWorkId( spep_0 + 36, SE006, 89 );
SE007 = playSe( spep_0 + 60, 1036 );
setSeVolumeByWorkId( spep_0 + 60, SE007, 89 );
SE008 = playSe( spep_0 + 84, 1036 );
setSeVolumeByWorkId( spep_0 + 84, SE008, 89 );

--白フェード
entryFade( spep_0+92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

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
entryFade( spep_1 + 84, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;
------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 76,rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76,rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,rush, 0 );
setEffRotateKey( spep_2 + 76,rush, 0 );
setEffAlphaKey( spep_2 + 0,rush, 255 );
setEffAlphaKey( spep_2 + 76,rush, 255 );
setEffAlphaKey( spep_2 + 77,rush, 0 );
setEffAlphaKey( spep_2 + 78,rush, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 10,  906, 68+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 10, shuchusen2, 68+3, 20 );
setEffMoveKey( spep_2-3 + 10, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 10, shuchusen2, 1, 1 );
setEffScaleKey( spep_2 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 10, shuchusen2, 180 );
setEffRotateKey( spep_2 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 10, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen2, 255 );

--SE
--大猿バックに飛び込む
SE010 = playSe( spep_2 + 0, 1182 );
SE011 = playSe( spep_2 + 0, 9 );
setTimeStretch( SE011, 1.43, 10, 1 );
SE012 = playSe( spep_2 + 0, 1125 );
--横ダッシュ
SE013 = playSe( spep_2 + 46, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 76, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;
------------------------------------------------------
-- 殴りかかり
------------------------------------------------------
-- ** エフェクト等 ** --
panting = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,panting, 0, 0, 0 );
setEffMoveKey( spep_3 + 56,panting, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,panting, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56,panting, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,panting, 0 );
setEffRotateKey( spep_3 + 56,panting, 0 );
setEffAlphaKey( spep_3 + 0,panting, 255 );
setEffAlphaKey( spep_3 + 54,panting, 255 );
setEffAlphaKey( spep_3 + 55,panting, 255 );
setEffAlphaKey( spep_3 + 56,panting, 0 );

--SE
--横ダッシュ
SE014 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE014, 29 );
SE015 = playSe( spep_3 + 0, 1183 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );

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
--大猿バックに飛び込む
stopSe( spep_3 + 18, SE012, 26 );
-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
hot_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,hot_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160,hot_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,hot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160,hot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,hot_f, 0 );
setEffRotateKey( spep_4 + 160,hot_f, 0 );
setEffAlphaKey( spep_4 + 0,hot_f, 255 );
setEffAlphaKey( spep_4 + 160,hot_f, 255 );

-- ** エフェクト等 ** --
hot_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,hot_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160,hot_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,hot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160,hot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,hot_b, 0 );
setEffRotateKey( spep_4 + 160,hot_b, 0 );
setEffAlphaKey( spep_4 + 0,hot_b, 255 );
setEffAlphaKey( spep_4 + 160,hot_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 18,  906, 40, 0x100, -1, 0, 50, -68 );
setEffShake( spep_4-3 + 18, shuchusen3,40, 20 );
setEffMoveKey( spep_4-3 + 18, shuchusen3, 50, -68 , 0 );
setEffMoveKey( spep_4-3 + 58, shuchusen3, 50, -68 , 0 );

setEffScaleKey( spep_4-3 + 18, shuchusen3, 1.31, 1.07 );
setEffScaleKey( spep_4-3 + 58, shuchusen3, 1.31, 1.07 );

setEffRotateKey( spep_4-3 + 18, shuchusen3, 180 );
setEffRotateKey( spep_4-3 + 58, shuchusen3, 180 );

setEffAlphaKey( spep_4-3 + 18, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 44, shuchusen3, 226 );
setEffAlphaKey( spep_4-3 + 46, shuchusen3, 198 );
setEffAlphaKey( spep_4-3 + 48, shuchusen3, 169 );
setEffAlphaKey( spep_4-3 + 50, shuchusen3, 140 );
setEffAlphaKey( spep_4-3 + 52, shuchusen3, 112 );
setEffAlphaKey( spep_4-3 + 54, shuchusen3, 83 );
setEffAlphaKey( spep_4-3 + 56, shuchusen3, 55 );
setEffAlphaKey( spep_4-3 + 58, shuchusen3, 26 );


--敵の動き
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4-1 + 106, 1, 0);
changeAnime( spep_4 + 0, 1, 101);
changeAnime( spep_4-3 + 10, 1, 108);
changeAnime( spep_4-3 + 58, 1, 105);

setMoveKey( spep_4 + 0, 1, 121.5, -61.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 120.8, -60.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 119.9, -58.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 119.1, -57.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 118.2, -56.6 , 0 );
setMoveKey( spep_4-3 + 9, 1, 118.2, -56.6 , 0 );

b=-40;
c=-20;

setMoveKey( spep_4-3 + 10, 1, 117.4+c, -55.4+b , 0 );
setMoveKey( spep_4-3 + 12, 1, 116.4+c, -54.1+b , 0 );
setMoveKey( spep_4-3 + 14, 1, 134.8+c, -62.5+b , 0 );
setMoveKey( spep_4-3 + 16, 1, 121.2+c, -45.8+b , 0 );
setMoveKey( spep_4-3 + 18, 1, 118.1+c, -59.2+b , 0 );
setMoveKey( spep_4-3 + 20, 1, 109.6+c, -51+b , 0 );
setMoveKey( spep_4-3 + 22, 1, 137.2+c, -60.7+b , 0 );
setMoveKey( spep_4-3 + 24, 1, 109.9+c, -51.2+b , 0 );
setMoveKey( spep_4-3 + 26, 1, 121.8+c, -43.4+b , 0 );
setMoveKey( spep_4-3 + 28, 1, 136.2+c, -61.6+b , 0 );
setMoveKey( spep_4-3 + 30, 1, 121+c, -45.8+b , 0 );
setMoveKey( spep_4-3 + 32, 1, 117.4+c, -60.4+b , 0 );
setMoveKey( spep_4-3 + 34, 1, 117+c, -57.7+b , 0 );
setMoveKey( spep_4-3 + 36, 1, 116.2+c, -61.6+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 108.3+c, -71.4+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 118.2+c, -63.4+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 112.3+c, -35+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 144.4+c, -77.7+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 123.5+c, -44.5+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 148+c, -5.6+b , 0 );
setMoveKey( spep_4-3 + 50, 1, 98.4+c, -76.4+b , 0 );
setMoveKey( spep_4-3 + 52, 1, 109.2+c, -30.9+b , 0 );
setMoveKey( spep_4-3 + 54, 1, 139.9+c, -75.5+b , 0 );
setMoveKey( spep_4-3 + 56, 1, 51+c, -21.3+b , 0 );
setMoveKey( spep_4-3 + 57, 1, 51+c, -21.3+b , 0 );

setMoveKey( spep_4-3 + 58, 1, 116.3, -47.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 68.4, -84.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 88.9, -62.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 82.1, -59.5 , 0 );
setMoveKey( spep_4-3 + 66, 1, 78.4, -53.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 86.8, -44.7 , 0 );
setMoveKey( spep_4-3 + 70, 1, 98.5, -37.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, 111.8, -32.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 124.9, -29.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 136.4, -29.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 145.8, -29 , 0 );
setMoveKey( spep_4-3 + 80, 1, 146.9, -30.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, 146.9, -31.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 146.7, -30.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 147.2, -28.7 , 0 );
setMoveKey( spep_4-3 + 88, 1, 148.8, -26.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 151.4, -24.2 , 0 );
setMoveKey( spep_4-3 + 92, 1, 154.8, -22.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, 158.2, -22.5 , 0 );
setMoveKey( spep_4-3 + 96, 1, 161.2, -23 , 0 );
setMoveKey( spep_4-3 + 98, 1, 163.3, -23.6 , 0 );
setMoveKey( spep_4-3 + 100, 1, 164.8, -24.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 165.9, -24 , 0 );
setMoveKey( spep_4-3 + 104, 1, 167, -23.2 , 0 );
setMoveKey( spep_4-1 + 106, 1, 168.4, -22.1 , 0 );

a=0.3;

setScaleKey( spep_4 + 0, 1, 1.3+a, 1.3+a );
setScaleKey( spep_4-3 + 9, 1, 1.3+a, 1.3+a );
setScaleKey( spep_4-3 + 10, 1, 1.34+a, 1.34+a );
setScaleKey( spep_4-3 + 14, 1, 1.85+a, 1.85+a );
setScaleKey( spep_4-3 + 16, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 18, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 20, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 22, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 24, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 26, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 28, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 30, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 32, 1, 1.87+a, 1.87+a );
setScaleKey( spep_4-3 + 34, 1, 1.43+a, 1.43+a );
setScaleKey( spep_4-3 + 36, 1, 1.07+a, 1.07+a );
setScaleKey( spep_4-3 + 38, 1, 0.9+a, 0.9+a );
setScaleKey( spep_4-3 + 40, 1, 1.06+a, 1.06+a );
setScaleKey( spep_4-3 + 42, 1, 1.41+a, 1.41+a );
setScaleKey( spep_4-3 + 44, 1, 1.99+a, 1.99+a );
setScaleKey( spep_4-3 + 46, 1, 2.4+a, 2.4+a );
setScaleKey( spep_4-3 + 48, 1, 2.68+a, 2.68+a );
setScaleKey( spep_4-3 + 50, 1, 2.55+a, 2.55+a );
setScaleKey( spep_4-3 + 52, 1, 2.5+a, 2.5+a );
setScaleKey( spep_4-3 + 54, 1, 2.28+a, 2.28+a );
setScaleKey( spep_4-3 + 56, 1, 2.17+a, 2.17+a );
setScaleKey( spep_4-3 + 57, 1, 2.17+a, 2.17+a );

setScaleKey( spep_4-3 + 58, 1, 1.54+a, 1.54+a );
setScaleKey( spep_4-3 + 60, 1, 1.29+a, 1.29+a );
setScaleKey( spep_4-3 + 62, 1, 1.07+a, 1.07+a );
setScaleKey( spep_4-3 + 64, 1, 0.88+a, 0.88+a );
setScaleKey( spep_4-3 + 66, 1, 0.75+a, 0.75+a );
setScaleKey( spep_4-3 + 68, 1, 0.68+a, 0.68+a );
setScaleKey( spep_4-3 + 70, 1, 0.61+a, 0.61+a );
setScaleKey( spep_4-3 + 72, 1, 0.54+a, 0.54+a );
--setScaleKey( spep_4-3 + 74, 1, 0.46+a, 0.46+a );
--setScaleKey( spep_4-3 + 76, 1, 0.39+a, 0.39+a );
--setScaleKey( spep_4-3 + 78, 1, 0.32+a, 0.32+a );
--setScaleKey( spep_4-3 + 80, 1, 0.3+a, 0.3+a );
--setScaleKey( spep_4-3 + 82, 1, 0.29+a, 0.29+a );
--setScaleKey( spep_4-3 + 84, 1, 0.27+a, 0.27+a );
--setScaleKey( spep_4-3 + 86, 1, 0.25+a, 0.25+a );
--setScaleKey( spep_4-3 + 88, 1, 0.24+a, 0.24+a );
--setScaleKey( spep_4-3 + 90, 1, 0.22+a, 0.22+a );
--setScaleKey( spep_4-3 + 92, 1, 0.2+a, 0.2+a );
--setScaleKey( spep_4-3 + 94, 1, 0.19+a, 0.19+a );
setScaleKey( spep_4-3 + 96, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 98, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 100, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 102, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 104, 1, 0.1, 0.1 );
setScaleKey( spep_4-1 + 106, 1, 0.09, 0.09 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 10, 1, 0 );
setRotateKey( spep_4-3 + 12, 1, -3.7 );
setRotateKey( spep_4-3 + 14, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 3.7 );
setRotateKey( spep_4-3 + 18, 1, 0 );
setRotateKey( spep_4-3 + 20, 1, -3.7 );
setRotateKey( spep_4-3 + 22, 1, 0 );
setRotateKey( spep_4-3 + 24, 1, 3.7 );
setRotateKey( spep_4-3 + 26, 1, 0 );
setRotateKey( spep_4-3 + 28, 1, -3.7 );
setRotateKey( spep_4-3 + 30, 1, 0 );
setRotateKey( spep_4-3 + 32, 1, 3.7 );
setRotateKey( spep_4-3 + 34, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -3.7 );
setRotateKey( spep_4-3 + 38, 1, 0 );
setRotateKey( spep_4-3 + 40, 1, 3.7 );
setRotateKey( spep_4-3 + 42, 1, 0 );
setRotateKey( spep_4-3 + 44, 1, -3.7 );
setRotateKey( spep_4-3 + 46, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, 3.7 );
setRotateKey( spep_4-3 + 50, 1, 0 );
setRotateKey( spep_4-3 + 52, 1, -3.7 );
setRotateKey( spep_4-3 + 54, 1, 0 );
setRotateKey( spep_4-3 + 56, 1, 3.7 );
setRotateKey( spep_4-3 + 57, 1, 3.7 );

setRotateKey( spep_4-3 + 58, 1, 34.1 );
setRotateKey( spep_4-3 + 60, 1, 70.1 );
setRotateKey( spep_4-3 + 62, 1, 106.1 );
setRotateKey( spep_4-3 + 64, 1, 142.1 );
setRotateKey( spep_4-3 + 66, 1, 178.1 );
setRotateKey( spep_4-3 + 68, 1, 214.1 );
setRotateKey( spep_4-3 + 70, 1, 250.1 );
setRotateKey( spep_4-3 + 72, 1, 286.1 );
setRotateKey( spep_4-3 + 74, 1, 322.1 );
setRotateKey( spep_4-3 + 76, 1, 358.1 );
setRotateKey( spep_4-3 + 78, 1, 394.1 );
setRotateKey( spep_4-3 + 80, 1, 430.1 );
setRotateKey( spep_4-3 + 82, 1, 466.1 );
setRotateKey( spep_4-3 + 84, 1, 502.1 );
setRotateKey( spep_4-3 + 86, 1, 538.1 );
setRotateKey( spep_4-3 + 88, 1, 574.1 );
setRotateKey( spep_4-3 + 90, 1, 610.1 );
setRotateKey( spep_4-3 + 92, 1, 646.1 );
setRotateKey( spep_4-3 + 94, 1, 682.1 );
setRotateKey( spep_4-3 + 96, 1, 718.1 );
setRotateKey( spep_4-3 + 98, 1, 754.1 );
setRotateKey( spep_4-3 + 100, 1, 790.1 );
setRotateKey( spep_4-3 + 102, 1, 826.1 );
setRotateKey( spep_4-3 + 104, 1, 862.1 );
setRotateKey( spep_4-1 + 106, 1, 898.1 );

--SE
--ラストパンチ
SE016 = playSe( spep_4 + 8, 1003 );
SE017 = playSe( spep_4 + 14, 1026 );
SE018 = playSe( spep_4 + 14, 1110 );
SE019 = playSe( spep_4 + 14, 1182 );
SE020 = playSe( spep_4 + 14, 1024 );
setSeVolumeByWorkId( spep_4 + 14, SE020, 65 );
SE021 = playSe( spep_4 + 18, 1025 );
SE022 = playSe( spep_4 + 22, 1011 );

--敵飛んでいく
SE023 = playSe( spep_4 + 50, 1116 );
stopSe( spep_4 + 76, SE023, 20 );
SE024 = playSe( spep_4 + 62, 1277 );
setSeVolumeByWorkId( spep_4 + 62, SE024, 65 );

--終わり
dealDamage( spep_4 +36 );
endPhase( spep_4 + 150 );
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
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 16,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 16, shuchusen1, 86, 10 );
setEffMoveKey( spep_0-3 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 16, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 100, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0+10 , 4, 88, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
--顔カットイン
SE001 = playSe( spep_0 + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 12, 1035 );

--オーラ
SE003 = playSe( spep_0 + 12, 1036 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 89 );

--構える
SE004 = playSe( spep_0 + 14, 1233 );
SE005 = playSe( spep_0 + 24, 1006 );

--オーラ
SE006 = playSe( spep_0 + 36, 1036 );
setSeVolumeByWorkId( spep_0 + 36, SE006, 89 );
SE007 = playSe( spep_0 + 60, 1036 );
setSeVolumeByWorkId( spep_0 + 60, SE007, 89 );
SE008 = playSe( spep_0 + 84, 1036 );
setSeVolumeByWorkId( spep_0 + 84, SE008, 89 );

--白フェード
entryFade( spep_0+92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

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
entryFade( spep_1 + 84, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;
------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 76,rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76,rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,rush, 0 );
setEffRotateKey( spep_2 + 76,rush, 0 );
setEffAlphaKey( spep_2 + 0,rush, 255 );
setEffAlphaKey( spep_2 + 76,rush, 255 );
setEffAlphaKey( spep_2 + 77,rush, 0 );
setEffAlphaKey( spep_2 + 78,rush, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 10,  906, 68+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 10, shuchusen2, 68+3, 20 );
setEffMoveKey( spep_2-3 + 10, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 10, shuchusen2, 1, 1 );
setEffScaleKey( spep_2 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 10, shuchusen2, 180 );
setEffRotateKey( spep_2 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 10, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen2, 255 );

--SE
--大猿バックに飛び込む
SE010 = playSe( spep_2 + 0, 1182 );
SE011 = playSe( spep_2 + 0, 9 );
setTimeStretch( SE011, 1.43, 10, 1 );
SE012 = playSe( spep_2 + 0, 1125 );
--横ダッシュ
SE013 = playSe( spep_2 + 46, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 76, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;
------------------------------------------------------
-- 殴りかかり
------------------------------------------------------
-- ** エフェクト等 ** --
panting = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,panting, 0, 0, 0 );
setEffMoveKey( spep_3 + 56,panting, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,panting, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56,panting, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,panting, 0 );
setEffRotateKey( spep_3 + 56,panting, 0 );
setEffAlphaKey( spep_3 + 0,panting, 255 );
setEffAlphaKey( spep_3 + 54,panting, 255 );
setEffAlphaKey( spep_3 + 55,panting, 255 );
setEffAlphaKey( spep_3 + 56,panting, 0 );

--SE
--横ダッシュ
SE014 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE014, 29 );
SE015 = playSe( spep_3 + 0, 1183 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );

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
--大猿バックに飛び込む
stopSe( spep_3 + 18, SE012, 26 );
-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
hot_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,hot_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160,hot_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,hot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160,hot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,hot_f, 0 );
setEffRotateKey( spep_4 + 160,hot_f, 0 );
setEffAlphaKey( spep_4 + 0,hot_f, 255 );
setEffAlphaKey( spep_4 + 160,hot_f, 255 );

-- ** エフェクト等 ** --
hot_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,hot_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160,hot_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,hot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160,hot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,hot_b, 0 );
setEffRotateKey( spep_4 + 160,hot_b, 0 );
setEffAlphaKey( spep_4 + 0,hot_b, 255 );
setEffAlphaKey( spep_4 + 160,hot_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 18,  906, 40, 0x100, -1, 0, 50, -68 );
setEffShake( spep_4-3 + 18, shuchusen3,40, 20 );
setEffMoveKey( spep_4-3 + 18, shuchusen3, 50, -68 , 0 );
setEffMoveKey( spep_4-3 + 58, shuchusen3, 50, -68 , 0 );

setEffScaleKey( spep_4-3 + 18, shuchusen3, 1.31, 1.07 );
setEffScaleKey( spep_4-3 + 58, shuchusen3, 1.31, 1.07 );

setEffRotateKey( spep_4-3 + 18, shuchusen3, 180 );
setEffRotateKey( spep_4-3 + 58, shuchusen3, 180 );

setEffAlphaKey( spep_4-3 + 18, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 44, shuchusen3, 226 );
setEffAlphaKey( spep_4-3 + 46, shuchusen3, 198 );
setEffAlphaKey( spep_4-3 + 48, shuchusen3, 169 );
setEffAlphaKey( spep_4-3 + 50, shuchusen3, 140 );
setEffAlphaKey( spep_4-3 + 52, shuchusen3, 112 );
setEffAlphaKey( spep_4-3 + 54, shuchusen3, 83 );
setEffAlphaKey( spep_4-3 + 56, shuchusen3, 55 );
setEffAlphaKey( spep_4-3 + 58, shuchusen3, 26 );


--敵の動き
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4-1 + 106, 1, 0);
changeAnime( spep_4 + 0, 1, 101);
changeAnime( spep_4-3 + 10, 1, 108);
changeAnime( spep_4-3 + 58, 1, 105);

setMoveKey( spep_4 + 0, 1, 121.5, -61.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 120.8, -60.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 119.9, -58.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 119.1, -57.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 118.2, -56.6 , 0 );
setMoveKey( spep_4-3 + 9, 1, 118.2, -56.6 , 0 );

b=-40;
c=-20;

setMoveKey( spep_4-3 + 10, 1, 117.4+c, -55.4+b , 0 );
setMoveKey( spep_4-3 + 12, 1, 116.4+c, -54.1+b , 0 );
setMoveKey( spep_4-3 + 14, 1, 134.8+c, -62.5+b , 0 );
setMoveKey( spep_4-3 + 16, 1, 121.2+c, -45.8+b , 0 );
setMoveKey( spep_4-3 + 18, 1, 118.1+c, -59.2+b , 0 );
setMoveKey( spep_4-3 + 20, 1, 109.6+c, -51+b , 0 );
setMoveKey( spep_4-3 + 22, 1, 137.2+c, -60.7+b , 0 );
setMoveKey( spep_4-3 + 24, 1, 109.9+c, -51.2+b , 0 );
setMoveKey( spep_4-3 + 26, 1, 121.8+c, -43.4+b , 0 );
setMoveKey( spep_4-3 + 28, 1, 136.2+c, -61.6+b , 0 );
setMoveKey( spep_4-3 + 30, 1, 121+c, -45.8+b , 0 );
setMoveKey( spep_4-3 + 32, 1, 117.4+c, -60.4+b , 0 );
setMoveKey( spep_4-3 + 34, 1, 117+c, -57.7+b , 0 );
setMoveKey( spep_4-3 + 36, 1, 116.2+c, -61.6+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 108.3+c, -71.4+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 118.2+c, -63.4+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 112.3+c, -35+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 144.4+c, -77.7+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 123.5+c, -44.5+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 148+c, -5.6+b , 0 );
setMoveKey( spep_4-3 + 50, 1, 98.4+c, -76.4+b , 0 );
setMoveKey( spep_4-3 + 52, 1, 109.2+c, -30.9+b , 0 );
setMoveKey( spep_4-3 + 54, 1, 139.9+c, -75.5+b , 0 );
setMoveKey( spep_4-3 + 56, 1, 51+c, -21.3+b , 0 );
setMoveKey( spep_4-3 + 57, 1, 51+c, -21.3+b , 0 );

setMoveKey( spep_4-3 + 58, 1, 116.3, -47.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 68.4, -84.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 88.9, -62.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 82.1, -59.5 , 0 );
setMoveKey( spep_4-3 + 66, 1, 78.4, -53.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 86.8, -44.7 , 0 );
setMoveKey( spep_4-3 + 70, 1, 98.5, -37.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, 111.8, -32.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 124.9, -29.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 136.4, -29.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 145.8, -29 , 0 );
setMoveKey( spep_4-3 + 80, 1, 146.9, -30.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, 146.9, -31.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 146.7, -30.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 147.2, -28.7 , 0 );
setMoveKey( spep_4-3 + 88, 1, 148.8, -26.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 151.4, -24.2 , 0 );
setMoveKey( spep_4-3 + 92, 1, 154.8, -22.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, 158.2, -22.5 , 0 );
setMoveKey( spep_4-3 + 96, 1, 161.2, -23 , 0 );
setMoveKey( spep_4-3 + 98, 1, 163.3, -23.6 , 0 );
setMoveKey( spep_4-3 + 100, 1, 164.8, -24.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 165.9, -24 , 0 );
setMoveKey( spep_4-3 + 104, 1, 167, -23.2 , 0 );
setMoveKey( spep_4-1 + 106, 1, 168.4, -22.1 , 0 );

a=0.3;

setScaleKey( spep_4 + 0, 1, 1.3+a, 1.3+a );
setScaleKey( spep_4-3 + 9, 1, 1.3+a, 1.3+a );
setScaleKey( spep_4-3 + 10, 1, 1.34+a, 1.34+a );
setScaleKey( spep_4-3 + 14, 1, 1.85+a, 1.85+a );
setScaleKey( spep_4-3 + 16, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 18, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 20, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 22, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 24, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 26, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 28, 1, 2.01+a, 2.01+a );
setScaleKey( spep_4-3 + 30, 1, 1.95+a, 1.95+a );
setScaleKey( spep_4-3 + 32, 1, 1.87+a, 1.87+a );
setScaleKey( spep_4-3 + 34, 1, 1.43+a, 1.43+a );
setScaleKey( spep_4-3 + 36, 1, 1.07+a, 1.07+a );
setScaleKey( spep_4-3 + 38, 1, 0.9+a, 0.9+a );
setScaleKey( spep_4-3 + 40, 1, 1.06+a, 1.06+a );
setScaleKey( spep_4-3 + 42, 1, 1.41+a, 1.41+a );
setScaleKey( spep_4-3 + 44, 1, 1.99+a, 1.99+a );
setScaleKey( spep_4-3 + 46, 1, 2.4+a, 2.4+a );
setScaleKey( spep_4-3 + 48, 1, 2.68+a, 2.68+a );
setScaleKey( spep_4-3 + 50, 1, 2.55+a, 2.55+a );
setScaleKey( spep_4-3 + 52, 1, 2.5+a, 2.5+a );
setScaleKey( spep_4-3 + 54, 1, 2.28+a, 2.28+a );
setScaleKey( spep_4-3 + 56, 1, 2.17+a, 2.17+a );
setScaleKey( spep_4-3 + 57, 1, 2.17+a, 2.17+a );

setScaleKey( spep_4-3 + 58, 1, 1.54+a, 1.54+a );
setScaleKey( spep_4-3 + 60, 1, 1.29+a, 1.29+a );
setScaleKey( spep_4-3 + 62, 1, 1.07+a, 1.07+a );
setScaleKey( spep_4-3 + 64, 1, 0.88+a, 0.88+a );
setScaleKey( spep_4-3 + 66, 1, 0.75+a, 0.75+a );
setScaleKey( spep_4-3 + 68, 1, 0.68+a, 0.68+a );
setScaleKey( spep_4-3 + 70, 1, 0.61+a, 0.61+a );
setScaleKey( spep_4-3 + 72, 1, 0.54+a, 0.54+a );
--setScaleKey( spep_4-3 + 74, 1, 0.46+a, 0.46+a );
--setScaleKey( spep_4-3 + 76, 1, 0.39+a, 0.39+a );
--setScaleKey( spep_4-3 + 78, 1, 0.32+a, 0.32+a );
--setScaleKey( spep_4-3 + 80, 1, 0.3+a, 0.3+a );
--setScaleKey( spep_4-3 + 82, 1, 0.29+a, 0.29+a );
--setScaleKey( spep_4-3 + 84, 1, 0.27+a, 0.27+a );
--setScaleKey( spep_4-3 + 86, 1, 0.25+a, 0.25+a );
--setScaleKey( spep_4-3 + 88, 1, 0.24+a, 0.24+a );
--setScaleKey( spep_4-3 + 90, 1, 0.22+a, 0.22+a );
--setScaleKey( spep_4-3 + 92, 1, 0.2+a, 0.2+a );
--setScaleKey( spep_4-3 + 94, 1, 0.19+a, 0.19+a );
setScaleKey( spep_4-3 + 96, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 98, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 100, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 102, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 104, 1, 0.1, 0.1 );
setScaleKey( spep_4-1 + 106, 1, 0.09, 0.09 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 10, 1, 0 );
setRotateKey( spep_4-3 + 12, 1, -3.7 );
setRotateKey( spep_4-3 + 14, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 3.7 );
setRotateKey( spep_4-3 + 18, 1, 0 );
setRotateKey( spep_4-3 + 20, 1, -3.7 );
setRotateKey( spep_4-3 + 22, 1, 0 );
setRotateKey( spep_4-3 + 24, 1, 3.7 );
setRotateKey( spep_4-3 + 26, 1, 0 );
setRotateKey( spep_4-3 + 28, 1, -3.7 );
setRotateKey( spep_4-3 + 30, 1, 0 );
setRotateKey( spep_4-3 + 32, 1, 3.7 );
setRotateKey( spep_4-3 + 34, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -3.7 );
setRotateKey( spep_4-3 + 38, 1, 0 );
setRotateKey( spep_4-3 + 40, 1, 3.7 );
setRotateKey( spep_4-3 + 42, 1, 0 );
setRotateKey( spep_4-3 + 44, 1, -3.7 );
setRotateKey( spep_4-3 + 46, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, 3.7 );
setRotateKey( spep_4-3 + 50, 1, 0 );
setRotateKey( spep_4-3 + 52, 1, -3.7 );
setRotateKey( spep_4-3 + 54, 1, 0 );
setRotateKey( spep_4-3 + 56, 1, 3.7 );
setRotateKey( spep_4-3 + 57, 1, 3.7 );

setRotateKey( spep_4-3 + 58, 1, 34.1 );
setRotateKey( spep_4-3 + 60, 1, 70.1 );
setRotateKey( spep_4-3 + 62, 1, 106.1 );
setRotateKey( spep_4-3 + 64, 1, 142.1 );
setRotateKey( spep_4-3 + 66, 1, 178.1 );
setRotateKey( spep_4-3 + 68, 1, 214.1 );
setRotateKey( spep_4-3 + 70, 1, 250.1 );
setRotateKey( spep_4-3 + 72, 1, 286.1 );
setRotateKey( spep_4-3 + 74, 1, 322.1 );
setRotateKey( spep_4-3 + 76, 1, 358.1 );
setRotateKey( spep_4-3 + 78, 1, 394.1 );
setRotateKey( spep_4-3 + 80, 1, 430.1 );
setRotateKey( spep_4-3 + 82, 1, 466.1 );
setRotateKey( spep_4-3 + 84, 1, 502.1 );
setRotateKey( spep_4-3 + 86, 1, 538.1 );
setRotateKey( spep_4-3 + 88, 1, 574.1 );
setRotateKey( spep_4-3 + 90, 1, 610.1 );
setRotateKey( spep_4-3 + 92, 1, 646.1 );
setRotateKey( spep_4-3 + 94, 1, 682.1 );
setRotateKey( spep_4-3 + 96, 1, 718.1 );
setRotateKey( spep_4-3 + 98, 1, 754.1 );
setRotateKey( spep_4-3 + 100, 1, 790.1 );
setRotateKey( spep_4-3 + 102, 1, 826.1 );
setRotateKey( spep_4-3 + 104, 1, 862.1 );
setRotateKey( spep_4-1 + 106, 1, 898.1 );

--SE
--ラストパンチ
SE016 = playSe( spep_4 + 8, 1003 );
SE017 = playSe( spep_4 + 14, 1026 );
SE018 = playSe( spep_4 + 14, 1110 );
SE019 = playSe( spep_4 + 14, 1182 );
SE020 = playSe( spep_4 + 14, 1024 );
setSeVolumeByWorkId( spep_4 + 14, SE020, 65 );
SE021 = playSe( spep_4 + 18, 1025 );
SE022 = playSe( spep_4 + 22, 1011 );

--敵飛んでいく
SE023 = playSe( spep_4 + 50, 1116 );
stopSe( spep_4 + 76, SE023, 20 );
SE024 = playSe( spep_4 + 62, 1277 );
setSeVolumeByWorkId( spep_4 + 62, SE024, 65 );

--終わり
dealDamage( spep_4 +36 );
endPhase( spep_4 + 150 );
end