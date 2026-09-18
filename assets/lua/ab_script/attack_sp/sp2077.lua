--1020540:魔神トワ_インフィニットキリゾーン
--sp_effect_b4_00163

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
SP_01=	156194	;--	冒頭、気タメ&セリフカットイン
SP_02=	156195	;--	槍形成→投げ
SP_03=	156196	;--	魔法陣拘束：敵より前
SP_04=	156197	;--	魔法陣拘束：敵より後ろ
SP_05=	156198	;--	フィニッシュ：敵より前
SP_06=	156199	;--	フィニッシュ：敵より後ろ

--エフェクト(てき)
SP_01x=	156200	;--	冒頭、気タメ&セリフカットイン	(敵)
SP_02x=	156201	;--	槍形成→投げ	(敵)
SP_03x=	156196	;--	魔法陣拘束：敵より前	
SP_04x=	156197	;--	魔法陣拘束：敵より後ろ	
SP_05x=	156202	;--	フィニッシュ：敵より前	(敵)
SP_06x=	156199	;--	フィニッシュ：敵より後ろ	
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
-- 冒頭、気タメ&セリフカットイン
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
setEffAlphaKey( spep_0 + 101, tame, 0 );
setEffAlphaKey( spep_0 + 102, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 100, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+6  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+6  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +18, 190006, 72, 0x102, -1, 0, -60, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +18,  ctgogo,  -60,  510);
setEffMoveKey(  spep_0 +90,  ctgogo,  -60,  510);

setEffAlphaKey( spep_0 +18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 191 );
setEffAlphaKey( spep_0 + 88, ctgogo, 112 );
setEffAlphaKey( spep_0 + 90, ctgogo, 64 );

setEffRotateKey(  spep_0 +18,  ctgogo,  0);
setEffRotateKey(  spep_0 +90,  ctgogo,  0);

setEffScaleKey(  spep_0 +18,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo, 1.07, 1.07);

--SE
--オーラ
SE001 = playSe( spep_0 + 8, 1036 );
SE003 = playSe( spep_0 + 32, 1036 );
SE004 = playSe( spep_0 + 56, 1036 );
SE005 = playSe( spep_0 + 80, 1036 );

--顔カットイン
SE002 = playSe( spep_0 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 130 ); --くろ 背景

--白フェード
entryFade( spep_0 + 88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
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
spep_2 = spep_1 + 90;
------------------------------------------------------
-- 槍形成→投げ
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, throw, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, throw, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw, 0 );
setEffRotateKey( spep_2 + 96, throw, 0 );
setEffAlphaKey( spep_2 + 0, throw, 255 );
setEffAlphaKey( spep_2 + 96, throw, 255 );

--SE
--槍登場
SE007 = playSe( spep_2 + 6, 1221 );
SE008 = playSe( spep_2 + 6, 1161 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 60 );
SE009 = playSe( spep_2 + 6, 1265 );
SE010 = playSe( spep_2 + 6, 1152 );
setSeVolumeByWorkId( spep_2 + 6, SE010, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 96, 0,  0, 0, 0, 130 ); --くろ 背景

--白フェード
entryFade( spep_2 + 5, 0,2, 6, fcolor_r, fcolor_g, fcolor_b, 240 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );

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

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 48,  10012, 26, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_2-3 + 48, ctzuo, 26, 10 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 40.7, 353.3 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 26.3, 372.4 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 44.2, 359.1 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 29.5, 378.5 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 47.8, 364.9 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 32.8, 384.5 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 51.3, 370.8 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 36.1, 390.6 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 54.8, 376.6 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 72.3, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2-3 + 48, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 50, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-3 + 48, ctzuo, 9.7 );
setEffRotateKey( spep_2-3 + 50, ctzuo, 18.4 );
setEffRotateKey( spep_2-3 + 52, ctzuo, 27.2 );
setEffRotateKey( spep_2-3 + 74, ctzuo, 27.2 );

setEffAlphaKey( spep_2-3 + 48, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 72, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 0 );

--SE
--槍登場
stopSe( spep_2 + 30, SE008, 30 );
stopSe( spep_2 + 36, SE009, 38 );

--槍投げる
SE011 = playSe( spep_2 + 46, 1117 );
SE012 = playSe( spep_2 + 46, 1027 );
SE013 = playSe( spep_2 + 46, 1116 );

--白フェード
entryFade( spep_2 + 88, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;
------------------------------------------------------
-- 魔法陣拘束
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 180, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 180, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 180, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 180, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 178, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 18, 1, 106 );

a=-80;
b=10;
setMoveKey( spep_3 + 0, 1, 97.2+a, -163.7+b , 0 );
--setMoveKey( spep_3-3 + 2, 1, 97.3, -163.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 97.5+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 6, 1, 97.6+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.7+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 10, 1, 97.8+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 12, 1, 97.9+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 14, 1, 98+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 17, 1, 98.1+a, -163.6+b , 0 );

c=50;
setMoveKey( spep_3-3 + 18, 1, 121+a, -123.8+c , 0 );
setMoveKey( spep_3-3 + 20, 1, 123.3+a, -133.8+c , 0 );
setMoveKey( spep_3-3 + 22, 1, 133+a, -136.2+c , 0 );
setMoveKey( spep_3-3 + 24, 1, 129.9+a, -137.9+c , 0 );
setMoveKey( spep_3-3 + 26, 1, 138.6+a, -128+c , 0 );
setMoveKey( spep_3-3 + 28, 1, 130.7+a, -137.6+c , 0 );
setMoveKey( spep_3-3 + 30, 1, 135.6+a, -123.3+c , 0 );
setMoveKey( spep_3-3 + 32, 1, 136.3+a, -129.5+c , 0 );
setMoveKey( spep_3-3 + 34, 1, 136.4+a, -123.1+c , 0 );
setMoveKey( spep_3-3 + 36, 1, 133.3+a, -124.8+c , 0 );
setMoveKey( spep_3-3 + 38, 1, 142+a, -115+c , 0 );
setMoveKey( spep_3-3 + 40, 1, 134.1+a, -124.6+c , 0 );
setMoveKey( spep_3-3 + 42, 1, 139+a, -110.4+c , 0 );
setMoveKey( spep_3-3 + 44, 1, 139.7+a, -116.6+c , 0 );
setMoveKey( spep_3-3 + 46, 1, 139.8+a, -110.2+c , 0 );
setMoveKey( spep_3-3 + 48, 1, 136.7+a, -112+c , 0 );
setMoveKey( spep_3-3 + 50, 1, 145.4+a, -102.2+c , 0 );
setMoveKey( spep_3-3 + 52, 1, 137.5+a, -107.8+c , 0 );
setMoveKey( spep_3-3 + 54, 1, 142.4+a, -97.6+c , 0 );
setMoveKey( spep_3-3 + 56, 1, 142.5+a, -102+c , 0 );
setMoveKey( spep_3-3 + 58, 1, 142.2+a, -101.8+c , 0 );
setMoveKey( spep_3-3 + 60, 1, 138.6+a, -105.8+c , 0 );
setMoveKey( spep_3-3 + 62, 1, 146.7+a, -98.2+c , 0 );
setMoveKey( spep_3-3 + 64, 1, 138.4+a, -109.9+c , 0 );
setMoveKey( spep_3-3 + 66, 1, 142.8+a, -98+c , 0 );
setMoveKey( spep_3-3 + 68, 1, 142.9+a, -106.4+c , 0 );
setMoveKey( spep_3-3 + 70, 1, 142.6+a, -102.1+c , 0 );
setMoveKey( spep_3-3 + 72, 1, 139+a, -106.1+c , 0 );
setMoveKey( spep_3-3 + 74, 1, 147.1+a, -98.5+c , 0 );
setMoveKey( spep_3-3 + 76, 1, 138.8+a, -110.3+c , 0 );
setMoveKey( spep_3-3 + 78, 1, 143.2+a, -98.3+c , 0 );
setMoveKey( spep_3-3 + 80, 1, 143.3+a, -106.7+c , 0 );
setMoveKey( spep_3-3 + 82, 1, 143+a, -102.4+c , 0 );
setMoveKey( spep_3-3 + 84, 1, 139.4+a, -106.5+c , 0 );
setMoveKey( spep_3-3 + 86, 1, 148.1+a, -99.5+c , 0 );
setMoveKey( spep_3-3 + 88, 1, 140.6+a, -111.8+c , 0 );
setMoveKey( spep_3-3 + 90, 1, 145.7+a, -100.6+c , 0 );
setMoveKey( spep_3-3 + 92, 1, 146.3+a, -109.7+c , 0 );
setMoveKey( spep_3-3 + 94, 1, 147+a, -105.8+c , 0 );
setMoveKey( spep_3-3 + 96, 1, 144.1+a, -110.8+c , 0 );
setMoveKey( spep_3-3 + 98, 1, 152.5+a, -103.8+c , 0 );
setMoveKey( spep_3-3 + 100, 1, 144.8+a, -111.2+c , 0 );
setMoveKey( spep_3-3 + 102, 1, 149.3+a, -103.8+c , 0 );
setMoveKey( spep_3-3 + 104, 1, 149.1+a, -108.3+c , 0 );
setMoveKey( spep_3-3 + 106, 1, 149.4+a, -107.7+c , 0 );
setMoveKey( spep_3-3 + 108, 1, 145.9+a, -108.3+c , 0 );
setMoveKey( spep_3-3 + 110, 1, 154.5+a, -105.6+c , 0 );
setMoveKey( spep_3-3 + 112, 1, 147.9+a, -117.7+c , 0 );
setMoveKey( spep_3-3 + 114, 1, 153.3+a, -107.4+c , 0 );
setMoveKey( spep_3-3 + 116, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 118, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 120, 1, 150.4+a, -116.5+c , 0 );
setMoveKey( spep_3-3 + 122, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 124, 1, 150.2+a, -119.6+c , 0 );
setMoveKey( spep_3-3 + 126, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 128, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 130, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 132, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 134, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 136, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 138, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 140, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 142, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 144, 1, 150.4+a, -116.5+c , 0 );
setMoveKey( spep_3-3 + 146, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 148, 1, 150.2+a, -119.6+c , 0 );
setMoveKey( spep_3-3 + 150, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 152, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 154, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 156, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 158, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 160, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 162, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 164, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 166, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 168, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 170, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 172, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 174, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 176, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 178, 1, 154.2+a, -111.6+c , 0 );

setScaleKey( spep_3 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 17, 1,1.12, 1.12 );

setScaleKey( spep_3-3 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 84, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 86, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 94, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 108, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 110, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 114, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 116, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 178, 1, 0.93, 0.93 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 17, 1, 0 );
setRotateKey( spep_3-3 + 18, 1, -31 );
setRotateKey( spep_3-3 + 178, 1, -31 );

--SE
--槍投げる
stopSe( spep_3 + 10, SE013, 20 );

--地面サークル広がる
SE015 = playSe( spep_3 + 14, 1240 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 141 );
SE016 = playSe( spep_3 + 14, 1227 );
SE017 = playSe( spep_3 + 14, 1226 );
SE018 = playSe( spep_3 + 14, 1014 );
setSeVolumeByWorkId( spep_3 + 14, SE018, 115 );

--∞描かれる
SE014 = playSe( spep_3 + 82, 15 );
setSeVolumeByWorkId( spep_3 + 82, SE014, 0 );
setSeVolumeByWorkId( spep_3 + 83, SE014, 9.4 );
setSeVolumeByWorkId( spep_3 + 84, SE014, 18.8 );
setSeVolumeByWorkId( spep_3 + 85, SE014, 28.2 );
setSeVolumeByWorkId( spep_3 + 86, SE014, 37.6 );
setSeVolumeByWorkId( spep_3 + 87, SE014, 47 );
setStartTimeMs( SE014,  1367 );
setPitch( spep_3 + 82, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );
SE019 = playSe( spep_3 + 104, 15 );
setSeVolumeByWorkId( spep_3 + 104, SE019, 0 );
setSeVolumeByWorkId( spep_3 + 105, SE019, 7.8 );
setSeVolumeByWorkId( spep_3 + 106, SE019, 15.6 );
setSeVolumeByWorkId( spep_3 + 107, SE019, 23.4 );
setSeVolumeByWorkId( spep_3 + 108, SE019, 31.2 );
setSeVolumeByWorkId( spep_3 + 109, SE019, 39 );
setSeVolumeByWorkId( spep_3 + 110, SE019, 47 );
setStartTimeMs( SE019,  1367 );
setPitch( spep_3 + 104, SE019, -300 );
setTimeStretch( SE019, 0.8, 10, 1 );
SE020 = playSe( spep_3 + 82, 1026 );
setSeVolumeByWorkId( spep_3 + 82, SE020, 56 );
setPitch( spep_3 + 82, SE020, 500 );
setTimeStretch( SE020, 1.33, 10, 1 );
SE021 = playSe( spep_3 + 108, 1026 );
setSeVolumeByWorkId( spep_3 + 108, SE021, 56 );
setPitch( spep_3 + 108, SE021, 500 );
setTimeStretch( SE021, 1.33, 10, 1 );

--∞浮く
SE022 = playSe( spep_3 + 132, 1184 );
SE023 = playSe( spep_3 + 132, 1011 );
setSeVolumeByWorkId( spep_3 + 132, SE023, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 172, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 230, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 230, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 230, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 118, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 62, 1, 105 );

setBlendColor(spep_4-3 + 34, 1 , 3 , 0 , 0.79 ,0.97 ,1);
setBlendColor(spep_4-1 + 117, 1 , 3 , 0 , 0.79 ,0.97 ,1);
setBlendColor(spep_4-1 + 118, 1 , 3 , 0 , 0.79 ,0.97 ,0);

d=30;
e=10;

setMoveKey( spep_4 + 0, 1, 146.2-e, -246.1+d , 0 );
--setMoveKey( spep_4-3 + 2, 1, 142.4, -243.8 , 0 );
setMoveKey( spep_4-3 + 4, 1, 140.4-e, -243.5+d , 0 );
setMoveKey( spep_4-3 + 6, 1, 134.4-e, -244.7+d , 0 );
setMoveKey( spep_4-3 + 8, 1, 130.7-e, -242.4+d , 0 );
setMoveKey( spep_4-3 + 10, 1, 128.5-e, -242.1+d , 0 );
setMoveKey( spep_4-3 + 12, 1, 122.7-e, -243.3+d , 0 );
setMoveKey( spep_4-3 + 14, 1, 118.9-e, -241.1+d , 0 );
setMoveKey( spep_4-3 + 16, 1, 116.7-e, -240.8+d , 0 );
setMoveKey( spep_4-3 + 18, 1, 111-e, -241.9+d , 0 );
setMoveKey( spep_4-3 + 20, 1, 107.2-e, -239.8+d , 0 );
setMoveKey( spep_4-3 + 22, 1, 104.9-e, -239.4+d , 0 );
setMoveKey( spep_4-3 + 24, 1, 99.2-e, -240.5+d , 0 );
setMoveKey( spep_4-3 + 26, 1, 99.4-e, -238.9+d , 0 );
setMoveKey( spep_4-3 + 28, 1, 99.2-e, -240.5+d , 0 );
setMoveKey( spep_4-3 + 30, 1, 99.4-e, -370.8+d , 0 );
setMoveKey( spep_4-3 + 33, 1, 79.3-e, -483+d , 0 );

setMoveKey( spep_4-3 + 34, 1, 99.2-e, -671.3+d , 0 );
setMoveKey( spep_4-3 + 36, 1, 121.9-e, -614.4+d , 0 );
setMoveKey( spep_4-3 + 38, 1, 101-e, -564.1+d , 0 );
setMoveKey( spep_4-3 + 40, 1, 99.2-e, -530+d , 0 );
setMoveKey( spep_4-3 + 42, 1, 99.5-e, -493+d , 0 );
setMoveKey( spep_4-3 + 44, 1, 101.1-e, -457.9+d , 0 );
setMoveKey( spep_4-3 + 46, 1, 99.2-e, -423.8+d , 0 );
setMoveKey( spep_4-3 + 48, 1, 99.6-e, -386.8+d , 0 );
setMoveKey( spep_4-3 + 50, 1, 101.1-e, -351.8+d , 0 );
setMoveKey( spep_4-3 + 52, 1, 99.2-e, -317.5+d , 0 );
setMoveKey( spep_4-3 + 54, 1, 99.6-e, -280.5+d , 0 );
setMoveKey( spep_4-3 + 56, 1, 101.2-e, -245.6+d , 0 );
setMoveKey( spep_4-3 + 58, 1, 99.2-e, -211.2+d , 0 );
setMoveKey( spep_4-3 + 61, 1, 99.2-e, -175.8+d , 0 );

f=24;

setMoveKey( spep_4-3 + 62, 1, 153.3-f, -96.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 47.7-f, -94.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 152.9-f, -95.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, 70-f, -38.8 , 0 );
setMoveKey( spep_4-3 + 70, 1, 128.4-f, -40 , 0 );
setMoveKey( spep_4-3 + 72, 1, 101.6-f, 14.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.5-f, 42.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 100.8-f, 70.4 , 0 );
setMoveKey( spep_4-3 + 78, 1, 99.9-f, 70.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, 114.4-f, 63.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 116.9-f, 71.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 93.3-f, 64.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, 96.4-f, 72.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 108.4-f, 65.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 110.9-f, 74 , 0 );
setMoveKey( spep_4-3 + 92, 1, 89.8-f, 66.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 92.9-f, 75 , 0 );
setMoveKey( spep_4-3 + 96, 1, 102.4-f, 67.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 104.9-f, 76 , 0 );
setMoveKey( spep_4-3 + 100, 1, 86.3-f, 68.5 , 0 );
setMoveKey( spep_4-3 + 102, 1, 89.4-f, 77 , 0 );
setMoveKey( spep_4-3 + 104, 1, 96.4-f, 69.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 98.9-f+10, 78.1 , 0 );
setMoveKey( spep_4-3 + 108, 1, 82.8-f+20, 70.6 , 0 );
setMoveKey( spep_4-3 + 110, 1, 85.9-f+20, 79.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 90.4-f+10, 75.6 , 0 );
setMoveKey( spep_4-3 + 114, 1, 92.9-f+10, 80.1 , 0 );
setMoveKey( spep_4-3 + 116, 1, 79.3-f+18, 76.6 , 0 );
setMoveKey( spep_4-1 + 118, 1, 82.4-f+18, 81.2 , 0 );


setScaleKey( spep_4 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 10, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 61, 1, 0.4, 0.4 );

setScaleKey( spep_4-3 + 62, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 64, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 66, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 68, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 70, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 72, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 74, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 76, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 78, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 84, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 86, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 88, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 90, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 92, 1, 0.31, 0.31 );
setScaleKey( spep_4-3 + 94, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 96, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 98, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 100, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 102, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 104, 1, 0.24, 0.24 );
setScaleKey( spep_4-3 + 106, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 108, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 110, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 112, 1, 0.19, 0.19 );
setScaleKey( spep_4-3 + 114, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 116, 1, 0.16, 0.16 );
setScaleKey( spep_4-1 + 118, 1, 0.15, 0.15 );

setRotateKey( spep_4 + 0, 1, -31.2 );
setRotateKey( spep_4-3 + 34, 1, -31.2 );
setRotateKey( spep_4-3 + 36, 1, -30 );
setRotateKey( spep_4-3 + 38, 1, -28.7 );
setRotateKey( spep_4-3 + 40, 1, -27.4 );
setRotateKey( spep_4-3 + 42, 1, -26.2 );
setRotateKey( spep_4-3 + 44, 1, -24.9 );
setRotateKey( spep_4-3 + 46, 1, -23.6 );
setRotateKey( spep_4-3 + 48, 1, -22.3 );
setRotateKey( spep_4-3 + 50, 1, -21.1 );
setRotateKey( spep_4-3 + 52, 1, -19.8 );
setRotateKey( spep_4-3 + 54, 1, -18.5 );
setRotateKey( spep_4-3 + 56, 1, -17.3 );
setRotateKey( spep_4-3 + 58, 1, -16 );
setRotateKey( spep_4-3 + 61, 1, -14.7 );
setRotateKey( spep_4-3 + 62, 1, 0 );
setRotateKey( spep_4-1 + 118, 1, 0 );

--文字エントリー
ctgogogogo = entryEffectLife( spep_4 + 0,  10008, 118, 0x100, -1, 0, 25.6, 390.4 );--ゴゴゴゴ…
setEffShake( spep_4 + 0, ctgogogogo, 118, 10 );
setEffMoveKey( spep_4 + 0, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 2, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 6, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 8, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 10, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 12, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 14, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 16, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 18, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 20, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 22, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 24, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 26, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 28, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 30, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 32, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 34, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 36, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 38, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 40, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 42, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 44, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 46, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 48, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 50, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 52, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 54, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 56, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 58, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 60, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 62, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 64, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 66, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 68, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 70, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 72, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 74, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 76, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 78, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 80, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 82, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 84, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 86, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 88, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 90, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 92, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 94, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 96, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 98, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 100, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 102, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 104, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 106, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 108, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 110, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 112, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 114, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 116, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 118, ctgogogogo, 25.6, 390.4 , 0 );

setEffScaleKey( spep_4 + 0, ctgogogogo, 2.05,2.05 );
setEffScaleKey( spep_4 + 118, ctgogogogo, 2.05, 2.05 );

setEffRotateKey( spep_4 + 0, ctgogogogo, -16.2 );
setEffRotateKey( spep_4 + 118, ctgogogogo, -16.2 );

setEffAlphaKey( spep_4 + 0, ctgogogogo, 255 );
setEffAlphaKey( spep_4 + 118, ctgogogogo, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 118,  911, 106, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen2, 106, 20 );
setEffMoveKey( spep_4 + 118, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 224, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 118, shuchusen2, 1.08, 1.02 );
setEffScaleKey( spep_4 + 224, shuchusen2, 1.08, 1.02 );

setEffRotateKey( spep_4 + 118, shuchusen2, 180 );
setEffRotateKey( spep_4 + 224, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 118, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 224, shuchusen2, 255 );

--SE
--地面サークル広がる
stopSe( spep_4 + 64, SE016, 32 );
stopSe( spep_4 + 64, SE017, 28 );

--∞浮く
stopSe( spep_4 + 22, SE022, 14 );

--黒い玉浮く
SE024 = playSe( spep_4 + 26, 1027 );
SE025 = playSe( spep_4 + 34, 1161 );
setSeVolumeByWorkId( spep_4 + 34,SE025,0);
setSeVolumeByWorkId( spep_4 + 35,SE025,2.6);
setSeVolumeByWorkId( spep_4 + 36,SE025,5.2);
setSeVolumeByWorkId( spep_4 +37,SE025,7.8);
setSeVolumeByWorkId( spep_4 +38,SE025,10.4);
setSeVolumeByWorkId( spep_4 +39,SE025,13);
setSeVolumeByWorkId( spep_4 +40,SE025,15.6);
setSeVolumeByWorkId( spep_4 +41,SE025,18.2);
setSeVolumeByWorkId( spep_4 +42,SE025,20.8);
setSeVolumeByWorkId( spep_4 +43,SE025,23.4);
setSeVolumeByWorkId( spep_4 +44,SE025,26);
setSeVolumeByWorkId( spep_4 +45,SE025,28.6);
setSeVolumeByWorkId( spep_4 +46,SE025,31.2);
setSeVolumeByWorkId( spep_4 +47,SE025,33.8);
setSeVolumeByWorkId( spep_4 +48,SE025,36.4);
setSeVolumeByWorkId( spep_4 +49,SE025,39);
setSeVolumeByWorkId( spep_4 +50,SE025,41.6);
setSeVolumeByWorkId( spep_4 +51,SE025,44.2);
setSeVolumeByWorkId( spep_4 +52,SE025,46.8);
setSeVolumeByWorkId( spep_4 +53,SE025,49.4);
setSeVolumeByWorkId( spep_4 +54,SE025,52);
setSeVolumeByWorkId( spep_4 +55,SE025,54.6);
setSeVolumeByWorkId( spep_4 +56,SE025,57.2);
setSeVolumeByWorkId( spep_4 +57,SE025,59.8);
setSeVolumeByWorkId( spep_4 +58,SE025,62.4);
setSeVolumeByWorkId( spep_4 +59,SE025,65);
setSeVolumeByWorkId( spep_4 +60,SE025,67.6);
setSeVolumeByWorkId( spep_4 +61,SE025,70.2);
setSeVolumeByWorkId( spep_4 +62,SE025,72.8);
setSeVolumeByWorkId( spep_4 +63,SE025,75.4);
setSeVolumeByWorkId( spep_4 +64,SE025,78);
setSeVolumeByWorkId( spep_4 +65,SE025,80.6);
setSeVolumeByWorkId( spep_4 +66,SE025,83.2);
setSeVolumeByWorkId( spep_4 +67,SE025,85.8);
setSeVolumeByWorkId( spep_4 +68,SE025,88.4);
setSeVolumeByWorkId( spep_4 +69,SE025,91);
setSeVolumeByWorkId( spep_4 +70,SE025,93.6);
setSeVolumeByWorkId( spep_4 +71,SE025,96.2);
setSeVolumeByWorkId( spep_4 +72,SE025,100);
stopSe( spep_4 + 120, SE025, 26 );
SE026 = playSe( spep_4 + 38, 1116 );
stopSe( spep_4 + 64, SE026, 18 );
SE027 = playSe( spep_4 + 66, 1157 );
stopSe( spep_4 + 126, SE027, 6 );
setPitch( spep_4 + 66, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );

--爆発
SE028 = playSe( spep_4 + 120, 1067 );
SE029 = playSe( spep_4 + 120, 1159 );

--白フェード
entryFade( spep_4 + 116, 0,4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 230, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +120 );
endPhase( spep_4 + 220 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭、気タメ&セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );
setEffAlphaKey( spep_0 + 101, tame, 0 );
setEffAlphaKey( spep_0 + 102, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 100, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+6  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+6  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +18, 190006, 72, 0x102, -1, 0, -60, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +18,  ctgogo,  -60,  510);
setEffMoveKey(  spep_0 +90,  ctgogo,  -60,  510);

setEffAlphaKey( spep_0 +18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 191 );
setEffAlphaKey( spep_0 + 88, ctgogo, 112 );
setEffAlphaKey( spep_0 + 90, ctgogo, 64 );

setEffRotateKey(  spep_0 +18,  ctgogo,  0);
setEffRotateKey(  spep_0 +90,  ctgogo,  0);

setEffScaleKey(  spep_0 +18,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo, -1.07, 1.07);

--SE
--オーラ
SE001 = playSe( spep_0 + 8, 1036 );
SE003 = playSe( spep_0 + 32, 1036 );
SE004 = playSe( spep_0 + 56, 1036 );
SE005 = playSe( spep_0 + 80, 1036 );

--顔カットイン
SE002 = playSe( spep_0 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 130 ); --くろ 背景

--白フェード
entryFade( spep_0 + 88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
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
spep_2 = spep_1 + 90;
------------------------------------------------------
-- 槍形成→投げ
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, throw, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, throw, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw, 0 );
setEffRotateKey( spep_2 + 96, throw, 0 );
setEffAlphaKey( spep_2 + 0, throw, 255 );
setEffAlphaKey( spep_2 + 96, throw, 255 );

--SE
--槍登場
SE007 = playSe( spep_2 + 6, 1221 );
SE008 = playSe( spep_2 + 6, 1161 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 60 );
SE009 = playSe( spep_2 + 6, 1265 );
SE010 = playSe( spep_2 + 6, 1152 );
setSeVolumeByWorkId( spep_2 + 6, SE010, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 96, 0,  0, 0, 0, 130 ); --くろ 背景

--白フェード
entryFade( spep_2 + 5, 0,2, 6, fcolor_r, fcolor_g, fcolor_b, 240 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );

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

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 48,  10012, 26, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_2-3 + 48, ctzuo, 26, 10 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 40.7, 353.3 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 26.3, 372.4 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 44.2, 359.1 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 29.5, 378.5 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 47.8, 364.9 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 32.8, 384.5 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 51.3, 370.8 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 36.1, 390.6 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 54.8, 376.6 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 72.3, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2-3 + 48, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 50, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-3 + 48, ctzuo, 9.7 );
setEffRotateKey( spep_2-3 + 50, ctzuo, 18.4 );
setEffRotateKey( spep_2-3 + 52, ctzuo, 27.2 );
setEffRotateKey( spep_2-3 + 74, ctzuo, 27.2 );

setEffAlphaKey( spep_2-3 + 48, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 72, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 0 );

--SE
--槍登場
stopSe( spep_2 + 30, SE008, 30 );
stopSe( spep_2 + 36, SE009, 38 );

--槍投げる
SE011 = playSe( spep_2 + 46, 1117 );
SE012 = playSe( spep_2 + 46, 1027 );
SE013 = playSe( spep_2 + 46, 1116 );

--白フェード
entryFade( spep_2 + 88, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;
------------------------------------------------------
-- 魔法陣拘束
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 180, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 180, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 180, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 180, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 178, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 18, 1, 106 );

a=-80;
b=10;
setMoveKey( spep_3 + 0, 1, 97.2+a, -163.7+b , 0 );
--setMoveKey( spep_3-3 + 2, 1, 97.3, -163.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 97.5+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 6, 1, 97.6+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.7+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 10, 1, 97.8+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 12, 1, 97.9+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 14, 1, 98+a, -163.7+b , 0 );
setMoveKey( spep_3-3 + 17, 1, 98.1+a, -163.6+b , 0 );

c=50;
setMoveKey( spep_3-3 + 18, 1, 121+a, -123.8+c , 0 );
setMoveKey( spep_3-3 + 20, 1, 123.3+a, -133.8+c , 0 );
setMoveKey( spep_3-3 + 22, 1, 133+a, -136.2+c , 0 );
setMoveKey( spep_3-3 + 24, 1, 129.9+a, -137.9+c , 0 );
setMoveKey( spep_3-3 + 26, 1, 138.6+a, -128+c , 0 );
setMoveKey( spep_3-3 + 28, 1, 130.7+a, -137.6+c , 0 );
setMoveKey( spep_3-3 + 30, 1, 135.6+a, -123.3+c , 0 );
setMoveKey( spep_3-3 + 32, 1, 136.3+a, -129.5+c , 0 );
setMoveKey( spep_3-3 + 34, 1, 136.4+a, -123.1+c , 0 );
setMoveKey( spep_3-3 + 36, 1, 133.3+a, -124.8+c , 0 );
setMoveKey( spep_3-3 + 38, 1, 142+a, -115+c , 0 );
setMoveKey( spep_3-3 + 40, 1, 134.1+a, -124.6+c , 0 );
setMoveKey( spep_3-3 + 42, 1, 139+a, -110.4+c , 0 );
setMoveKey( spep_3-3 + 44, 1, 139.7+a, -116.6+c , 0 );
setMoveKey( spep_3-3 + 46, 1, 139.8+a, -110.2+c , 0 );
setMoveKey( spep_3-3 + 48, 1, 136.7+a, -112+c , 0 );
setMoveKey( spep_3-3 + 50, 1, 145.4+a, -102.2+c , 0 );
setMoveKey( spep_3-3 + 52, 1, 137.5+a, -107.8+c , 0 );
setMoveKey( spep_3-3 + 54, 1, 142.4+a, -97.6+c , 0 );
setMoveKey( spep_3-3 + 56, 1, 142.5+a, -102+c , 0 );
setMoveKey( spep_3-3 + 58, 1, 142.2+a, -101.8+c , 0 );
setMoveKey( spep_3-3 + 60, 1, 138.6+a, -105.8+c , 0 );
setMoveKey( spep_3-3 + 62, 1, 146.7+a, -98.2+c , 0 );
setMoveKey( spep_3-3 + 64, 1, 138.4+a, -109.9+c , 0 );
setMoveKey( spep_3-3 + 66, 1, 142.8+a, -98+c , 0 );
setMoveKey( spep_3-3 + 68, 1, 142.9+a, -106.4+c , 0 );
setMoveKey( spep_3-3 + 70, 1, 142.6+a, -102.1+c , 0 );
setMoveKey( spep_3-3 + 72, 1, 139+a, -106.1+c , 0 );
setMoveKey( spep_3-3 + 74, 1, 147.1+a, -98.5+c , 0 );
setMoveKey( spep_3-3 + 76, 1, 138.8+a, -110.3+c , 0 );
setMoveKey( spep_3-3 + 78, 1, 143.2+a, -98.3+c , 0 );
setMoveKey( spep_3-3 + 80, 1, 143.3+a, -106.7+c , 0 );
setMoveKey( spep_3-3 + 82, 1, 143+a, -102.4+c , 0 );
setMoveKey( spep_3-3 + 84, 1, 139.4+a, -106.5+c , 0 );
setMoveKey( spep_3-3 + 86, 1, 148.1+a, -99.5+c , 0 );
setMoveKey( spep_3-3 + 88, 1, 140.6+a, -111.8+c , 0 );
setMoveKey( spep_3-3 + 90, 1, 145.7+a, -100.6+c , 0 );
setMoveKey( spep_3-3 + 92, 1, 146.3+a, -109.7+c , 0 );
setMoveKey( spep_3-3 + 94, 1, 147+a, -105.8+c , 0 );
setMoveKey( spep_3-3 + 96, 1, 144.1+a, -110.8+c , 0 );
setMoveKey( spep_3-3 + 98, 1, 152.5+a, -103.8+c , 0 );
setMoveKey( spep_3-3 + 100, 1, 144.8+a, -111.2+c , 0 );
setMoveKey( spep_3-3 + 102, 1, 149.3+a, -103.8+c , 0 );
setMoveKey( spep_3-3 + 104, 1, 149.1+a, -108.3+c , 0 );
setMoveKey( spep_3-3 + 106, 1, 149.4+a, -107.7+c , 0 );
setMoveKey( spep_3-3 + 108, 1, 145.9+a, -108.3+c , 0 );
setMoveKey( spep_3-3 + 110, 1, 154.5+a, -105.6+c , 0 );
setMoveKey( spep_3-3 + 112, 1, 147.9+a, -117.7+c , 0 );
setMoveKey( spep_3-3 + 114, 1, 153.3+a, -107.4+c , 0 );
setMoveKey( spep_3-3 + 116, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 118, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 120, 1, 150.4+a, -116.5+c , 0 );
setMoveKey( spep_3-3 + 122, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 124, 1, 150.2+a, -119.6+c , 0 );
setMoveKey( spep_3-3 + 126, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 128, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 130, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 132, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 134, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 136, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 138, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 140, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 142, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 144, 1, 150.4+a, -116.5+c , 0 );
setMoveKey( spep_3-3 + 146, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 148, 1, 150.2+a, -119.6+c , 0 );
setMoveKey( spep_3-3 + 150, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 152, 1, 153.6+a, -116.7+c , 0 );
setMoveKey( spep_3-3 + 154, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 156, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 158, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 160, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 162, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 164, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 166, 1, 154.2+a, -111.6+c , 0 );
setMoveKey( spep_3-3 + 168, 1, 150.4+a, -112.5+c , 0 );
setMoveKey( spep_3-3 + 170, 1, 157.6+a, -108.7+c , 0 );
setMoveKey( spep_3-3 + 172, 1, 150.2+a, -115.6+c , 0 );
setMoveKey( spep_3-3 + 174, 1, 154.4+a, -108.5+c , 0 );
setMoveKey( spep_3-3 + 176, 1, 153.6+a, -112.7+c , 0 );
setMoveKey( spep_3-3 + 178, 1, 154.2+a, -111.6+c , 0 );

setScaleKey( spep_3 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 17, 1,1.12, 1.12 );

setScaleKey( spep_3-3 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 84, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 86, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 94, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 108, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 110, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 114, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 116, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 178, 1, 0.93, 0.93 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 17, 1, 0 );
setRotateKey( spep_3-3 + 18, 1, -31 );
setRotateKey( spep_3-3 + 178, 1, -31 );

--SE
--槍投げる
stopSe( spep_3 + 10, SE013, 20 );

--地面サークル広がる
SE015 = playSe( spep_3 + 14, 1240 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 141 );
SE016 = playSe( spep_3 + 14, 1227 );
SE017 = playSe( spep_3 + 14, 1226 );
SE018 = playSe( spep_3 + 14, 1014 );
setSeVolumeByWorkId( spep_3 + 14, SE018, 115 );

--∞描かれる
SE014 = playSe( spep_3 + 82, 15 );
setSeVolumeByWorkId( spep_3 + 82, SE014, 0 );
setSeVolumeByWorkId( spep_3 + 83, SE014, 9.4 );
setSeVolumeByWorkId( spep_3 + 84, SE014, 18.8 );
setSeVolumeByWorkId( spep_3 + 85, SE014, 28.2 );
setSeVolumeByWorkId( spep_3 + 86, SE014, 37.6 );
setSeVolumeByWorkId( spep_3 + 87, SE014, 47 );
setStartTimeMs( SE014,  1367 );
setPitch( spep_3 + 82, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );
SE019 = playSe( spep_3 + 104, 15 );
setSeVolumeByWorkId( spep_3 + 104, SE019, 0 );
setSeVolumeByWorkId( spep_3 + 105, SE019, 7.8 );
setSeVolumeByWorkId( spep_3 + 106, SE019, 15.6 );
setSeVolumeByWorkId( spep_3 + 107, SE019, 23.4 );
setSeVolumeByWorkId( spep_3 + 108, SE019, 31.2 );
setSeVolumeByWorkId( spep_3 + 109, SE019, 39 );
setSeVolumeByWorkId( spep_3 + 110, SE019, 47 );
setStartTimeMs( SE019,  1367 );
setPitch( spep_3 + 104, SE019, -300 );
setTimeStretch( SE019, 0.8, 10, 1 );
SE020 = playSe( spep_3 + 82, 1026 );
setSeVolumeByWorkId( spep_3 + 82, SE020, 56 );
setPitch( spep_3 + 82, SE020, 500 );
setTimeStretch( SE020, 1.33, 10, 1 );
SE021 = playSe( spep_3 + 108, 1026 );
setSeVolumeByWorkId( spep_3 + 108, SE021, 56 );
setPitch( spep_3 + 108, SE021, 500 );
setTimeStretch( SE021, 1.33, 10, 1 );

--∞浮く
SE022 = playSe( spep_3 + 132, 1184 );
SE023 = playSe( spep_3 + 132, 1011 );
setSeVolumeByWorkId( spep_3 + 132, SE023, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 172, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 230, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 230, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 230, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 118, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 62, 1, 105 );

setBlendColor(spep_4-3 + 34, 1 , 3 , 0 , 0.79 ,0.97 ,1);
setBlendColor(spep_4-1 + 117, 1 , 3 , 0 , 0.79 ,0.97 ,1);
setBlendColor(spep_4-1 + 118, 1 , 3 , 0 , 0.79 ,0.97 ,0);

d=30;

d=30;
e=10;

setMoveKey( spep_4 + 0, 1, 146.2-e, -246.1+d , 0 );
--setMoveKey( spep_4-3 + 2, 1, 142.4, -243.8 , 0 );
setMoveKey( spep_4-3 + 4, 1, 140.4-e, -243.5+d , 0 );
setMoveKey( spep_4-3 + 6, 1, 134.4-e, -244.7+d , 0 );
setMoveKey( spep_4-3 + 8, 1, 130.7-e, -242.4+d , 0 );
setMoveKey( spep_4-3 + 10, 1, 128.5-e, -242.1+d , 0 );
setMoveKey( spep_4-3 + 12, 1, 122.7-e, -243.3+d , 0 );
setMoveKey( spep_4-3 + 14, 1, 118.9-e, -241.1+d , 0 );
setMoveKey( spep_4-3 + 16, 1, 116.7-e, -240.8+d , 0 );
setMoveKey( spep_4-3 + 18, 1, 111-e, -241.9+d , 0 );
setMoveKey( spep_4-3 + 20, 1, 107.2-e, -239.8+d , 0 );
setMoveKey( spep_4-3 + 22, 1, 104.9-e, -239.4+d , 0 );
setMoveKey( spep_4-3 + 24, 1, 99.2-e, -240.5+d , 0 );
setMoveKey( spep_4-3 + 26, 1, 99.4-e, -238.9+d , 0 );
setMoveKey( spep_4-3 + 28, 1, 99.2-e, -240.5+d , 0 );
setMoveKey( spep_4-3 + 30, 1, 99.4-e, -370.8+d , 0 );
setMoveKey( spep_4-3 + 33, 1, 79.3-e, -483+d , 0 );

setMoveKey( spep_4-3 + 34, 1, 99.2-e, -671.3+d , 0 );
setMoveKey( spep_4-3 + 36, 1, 121.9-e, -614.4+d , 0 );
setMoveKey( spep_4-3 + 38, 1, 101-e, -564.1+d , 0 );
setMoveKey( spep_4-3 + 40, 1, 99.2-e, -530+d , 0 );
setMoveKey( spep_4-3 + 42, 1, 99.5-e, -493+d , 0 );
setMoveKey( spep_4-3 + 44, 1, 101.1-e, -457.9+d , 0 );
setMoveKey( spep_4-3 + 46, 1, 99.2-e, -423.8+d , 0 );
setMoveKey( spep_4-3 + 48, 1, 99.6-e, -386.8+d , 0 );
setMoveKey( spep_4-3 + 50, 1, 101.1-e, -351.8+d , 0 );
setMoveKey( spep_4-3 + 52, 1, 99.2-e, -317.5+d , 0 );
setMoveKey( spep_4-3 + 54, 1, 99.6-e, -280.5+d , 0 );
setMoveKey( spep_4-3 + 56, 1, 101.2-e, -245.6+d , 0 );
setMoveKey( spep_4-3 + 58, 1, 99.2-e, -211.2+d , 0 );
setMoveKey( spep_4-3 + 61, 1, 99.2-e, -175.8+d , 0 );

f=24;

setMoveKey( spep_4-3 + 62, 1, 153.3-f, -96.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 47.7-f, -94.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 152.9-f, -95.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, 70-f, -38.8 , 0 );
setMoveKey( spep_4-3 + 70, 1, 128.4-f, -40 , 0 );
setMoveKey( spep_4-3 + 72, 1, 101.6-f, 14.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.5-f, 42.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 100.8-f, 70.4 , 0 );
setMoveKey( spep_4-3 + 78, 1, 99.9-f, 70.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, 114.4-f, 63.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 116.9-f, 71.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 93.3-f, 64.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, 96.4-f, 72.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 108.4-f, 65.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 110.9-f, 74 , 0 );
setMoveKey( spep_4-3 + 92, 1, 89.8-f, 66.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 92.9-f, 75 , 0 );
setMoveKey( spep_4-3 + 96, 1, 102.4-f, 67.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 104.9-f, 76 , 0 );
setMoveKey( spep_4-3 + 100, 1, 86.3-f, 68.5 , 0 );
setMoveKey( spep_4-3 + 102, 1, 89.4-f, 77 , 0 );
setMoveKey( spep_4-3 + 104, 1, 96.4-f, 69.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 98.9-f+10, 78.1 , 0 );
setMoveKey( spep_4-3 + 108, 1, 82.8-f+20, 70.6 , 0 );
setMoveKey( spep_4-3 + 110, 1, 85.9-f+20, 79.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 90.4-f+10, 75.6 , 0 );
setMoveKey( spep_4-3 + 114, 1, 92.9-f+10, 80.1 , 0 );
setMoveKey( spep_4-3 + 116, 1, 79.3-f+18, 76.6 , 0 );
setMoveKey( spep_4-1 + 118, 1, 82.4-f+18, 81.2 , 0 );


setScaleKey( spep_4 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 10, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 61, 1, 0.4, 0.4 );

setScaleKey( spep_4-3 + 62, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 64, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 66, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 68, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 70, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 72, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 74, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 76, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 78, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 84, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 86, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 88, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 90, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 92, 1, 0.31, 0.31 );
setScaleKey( spep_4-3 + 94, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 96, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 98, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 100, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 102, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 104, 1, 0.24, 0.24 );
setScaleKey( spep_4-3 + 106, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 108, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 110, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 112, 1, 0.19, 0.19 );
setScaleKey( spep_4-3 + 114, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 116, 1, 0.16, 0.16 );
setScaleKey( spep_4-1 + 118, 1, 0.15, 0.15 );

setRotateKey( spep_4 + 0, 1, -31.2 );
setRotateKey( spep_4-3 + 34, 1, -31.2 );
setRotateKey( spep_4-3 + 36, 1, -30 );
setRotateKey( spep_4-3 + 38, 1, -28.7 );
setRotateKey( spep_4-3 + 40, 1, -27.4 );
setRotateKey( spep_4-3 + 42, 1, -26.2 );
setRotateKey( spep_4-3 + 44, 1, -24.9 );
setRotateKey( spep_4-3 + 46, 1, -23.6 );
setRotateKey( spep_4-3 + 48, 1, -22.3 );
setRotateKey( spep_4-3 + 50, 1, -21.1 );
setRotateKey( spep_4-3 + 52, 1, -19.8 );
setRotateKey( spep_4-3 + 54, 1, -18.5 );
setRotateKey( spep_4-3 + 56, 1, -17.3 );
setRotateKey( spep_4-3 + 58, 1, -16 );
setRotateKey( spep_4-3 + 61, 1, -14.7 );
setRotateKey( spep_4-3 + 62, 1, 0 );
setRotateKey( spep_4-1 + 118, 1, 0 );

--文字エントリー
ctgogogogo = entryEffectLife( spep_4 + 0,  10008, 118, 0x100, -1, 0, 25.6, 390.4 );--ゴゴゴゴ…
setEffShake( spep_4 + 0, ctgogogogo, 118, 10 );
setEffMoveKey( spep_4 + 0, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 2, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 6, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 8, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 10, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 12, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 14, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 16, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 18, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 20, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 22, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 24, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 26, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 28, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 30, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 32, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 34, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 36, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 38, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 40, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 42, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 44, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 46, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 48, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 50, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 52, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 54, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 56, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 58, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 60, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 62, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 64, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 66, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 68, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 70, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 72, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 74, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 76, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 78, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 80, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 82, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 84, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 86, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 88, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 90, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 92, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 94, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 96, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 98, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 100, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 102, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 104, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 106, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 108, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 110, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 112, ctgogogogo, 31.6, 398.4 , 0 );
setEffMoveKey( spep_4 + 114, ctgogogogo, 25.6, 390.4 , 0 );
setEffMoveKey( spep_4 + 116, ctgogogogo, 33.3, 392.7 , 0 );
setEffMoveKey( spep_4 + 118, ctgogogogo, 25.6, 390.4 , 0 );

setEffScaleKey( spep_4 + 0, ctgogogogo, 2.05,2.05 );
setEffScaleKey( spep_4 + 118, ctgogogogo, 2.05, 2.05 );

setEffRotateKey( spep_4 + 0, ctgogogogo, -16.2 );
setEffRotateKey( spep_4 + 118, ctgogogogo, -16.2 );

setEffAlphaKey( spep_4 + 0, ctgogogogo, 255 );
setEffAlphaKey( spep_4 + 118, ctgogogogo, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 118,  911, 106, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen2, 106, 20 );
setEffMoveKey( spep_4 + 118, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 224, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 118, shuchusen2, 1.08, 1.02 );
setEffScaleKey( spep_4 + 224, shuchusen2, 1.08, 1.02 );

setEffRotateKey( spep_4 + 118, shuchusen2, 180 );
setEffRotateKey( spep_4 + 224, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 118, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 224, shuchusen2, 255 );

--SE
--地面サークル広がる
stopSe( spep_4 + 64, SE016, 32 );
stopSe( spep_4 + 64, SE017, 28 );

--∞浮く
stopSe( spep_4 + 22, SE022, 14 );

--黒い玉浮く
SE024 = playSe( spep_4 + 26, 1027 );
SE025 = playSe( spep_4 + 34, 1161 );
setSeVolumeByWorkId( spep_4 + 34,SE025,0);
setSeVolumeByWorkId( spep_4 + 35,SE025,2.6);
setSeVolumeByWorkId( spep_4 + 36,SE025,5.2);
setSeVolumeByWorkId( spep_4 +37,SE025,7.8);
setSeVolumeByWorkId( spep_4 +38,SE025,10.4);
setSeVolumeByWorkId( spep_4 +39,SE025,13);
setSeVolumeByWorkId( spep_4 +40,SE025,15.6);
setSeVolumeByWorkId( spep_4 +41,SE025,18.2);
setSeVolumeByWorkId( spep_4 +42,SE025,20.8);
setSeVolumeByWorkId( spep_4 +43,SE025,23.4);
setSeVolumeByWorkId( spep_4 +44,SE025,26);
setSeVolumeByWorkId( spep_4 +45,SE025,28.6);
setSeVolumeByWorkId( spep_4 +46,SE025,31.2);
setSeVolumeByWorkId( spep_4 +47,SE025,33.8);
setSeVolumeByWorkId( spep_4 +48,SE025,36.4);
setSeVolumeByWorkId( spep_4 +49,SE025,39);
setSeVolumeByWorkId( spep_4 +50,SE025,41.6);
setSeVolumeByWorkId( spep_4 +51,SE025,44.2);
setSeVolumeByWorkId( spep_4 +52,SE025,46.8);
setSeVolumeByWorkId( spep_4 +53,SE025,49.4);
setSeVolumeByWorkId( spep_4 +54,SE025,52);
setSeVolumeByWorkId( spep_4 +55,SE025,54.6);
setSeVolumeByWorkId( spep_4 +56,SE025,57.2);
setSeVolumeByWorkId( spep_4 +57,SE025,59.8);
setSeVolumeByWorkId( spep_4 +58,SE025,62.4);
setSeVolumeByWorkId( spep_4 +59,SE025,65);
setSeVolumeByWorkId( spep_4 +60,SE025,67.6);
setSeVolumeByWorkId( spep_4 +61,SE025,70.2);
setSeVolumeByWorkId( spep_4 +62,SE025,72.8);
setSeVolumeByWorkId( spep_4 +63,SE025,75.4);
setSeVolumeByWorkId( spep_4 +64,SE025,78);
setSeVolumeByWorkId( spep_4 +65,SE025,80.6);
setSeVolumeByWorkId( spep_4 +66,SE025,83.2);
setSeVolumeByWorkId( spep_4 +67,SE025,85.8);
setSeVolumeByWorkId( spep_4 +68,SE025,88.4);
setSeVolumeByWorkId( spep_4 +69,SE025,91);
setSeVolumeByWorkId( spep_4 +70,SE025,93.6);
setSeVolumeByWorkId( spep_4 +71,SE025,96.2);
setSeVolumeByWorkId( spep_4 +72,SE025,100);
stopSe( spep_4 + 120, SE025, 26 );
SE026 = playSe( spep_4 + 38, 1116 );
stopSe( spep_4 + 64, SE026, 18 );
SE027 = playSe( spep_4 + 66, 1157 );
stopSe( spep_4 + 126, SE027, 6 );
setPitch( spep_4 + 66, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );

--爆発
SE028 = playSe( spep_4 + 120, 1067 );
SE029 = playSe( spep_4 + 120, 1159 );

--白フェード
entryFade( spep_4 + 116, 0,4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 230, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +120 );
endPhase( spep_4 + 220 );
end