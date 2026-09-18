--1020640:超サイヤ人4ベジット(ゼノ)_かめはめ波
--sp_effect_a1_00258

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
SP_01=	156249	;--	気溜め〜かめはめ波溜め
SP_02=	156250	;--	かめはめ波発射〜敵にヒット
SP_03=	156251	;--	かめはめ波発射〜敵にヒット

--エフェクト(敵方)
SP_01x=	156252	;--	気溜め〜かめはめ波溜め	(敵)
SP_02x=	156253	;--	かめはめ波発射〜敵にヒット	(敵)
SP_03x=	156254	;--	かめはめ波発射〜敵にヒット	(敵)

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
-- 構え→気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 264, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 264, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 264, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 264, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07);

--SE
--気ダメ
SE001 = playSe( spep_0 + 0, 1035 );

--顔カットイン
SE002 = playSe( spep_0 + 12, 1018 );

--オーラ
SE003 = playSe( spep_0 + 32, 1036 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 79 );
SE004 = playSe( spep_0 + 56, 1036 );
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSe( spep_0 + 80, 1036 );
setSeVolumeByWorkId( spep_0 + 80, SE005, 79 );
SE008 = playSe( spep_0 + 104, 1036 );
setSeVolumeByWorkId( spep_0 + 104, SE008, 79 );
SE011 = playSe( spep_0 + 128, 1036 );
setSeVolumeByWorkId( spep_0 + 128, SE011, 79 );
SE013 = playSe( spep_0 + 152, 1036 );
setSeVolumeByWorkId( spep_0 + 152, SE013, 79 );
SE014 = playSe( spep_0 + 176, 1036 );
setSeVolumeByWorkId( spep_0 + 176, SE014, 79 );
SE017 = playSe( spep_0 + 200, 1036 );
setSeVolumeByWorkId( spep_0 + 200, SE017, 79 );
SE018 = playSe( spep_0 + 224, 1036 );
setSeVolumeByWorkId( spep_0 + 224, SE018, 79 );
SE019 = playSe( spep_0 + 248, 1036 );
setSeVolumeByWorkId( spep_0 + 248, SE019, 79 );

--オーラ青く
SE006 = playSe( spep_0 + 132, 1144 );
setSeVolumeByWorkId( spep_0+132,SE006,0);
setSeVolumeByWorkId( spep_0+133,SE006,4.6);
setSeVolumeByWorkId( spep_0+134,SE006,9.2);
setSeVolumeByWorkId( spep_0+135,SE006,13.8);
setSeVolumeByWorkId( spep_0+136,SE006,18.4);
setSeVolumeByWorkId( spep_0+137,SE006,23);
setSeVolumeByWorkId( spep_0+138,SE006,27.6);
setSeVolumeByWorkId( spep_0+139,SE006,32.2);
setSeVolumeByWorkId( spep_0+140,SE006,36.8);
setSeVolumeByWorkId( spep_0+141,SE006,41.4);
setSeVolumeByWorkId( spep_0+142,SE006,46);
setSeVolumeByWorkId( spep_0+143,SE006,50.6);
setSeVolumeByWorkId( spep_0+144,SE006,55.2);
setSeVolumeByWorkId( spep_0+145,SE006,59.8);
setSeVolumeByWorkId( spep_0+146,SE006,64.4);
setSeVolumeByWorkId( spep_0+147,SE006,69);
setSeVolumeByWorkId( spep_0+148,SE006,74);
setStartTimeMs( SE006,  667 );
stopSe( spep_0 + 180, SE006, 58 );
SE010 = playSe( spep_0 + 136, 1265 );
setSeVolumeByWorkId( spep_0+136,SE006,0);
setSeVolumeByWorkId( spep_0+137,SE006,15.6);
setSeVolumeByWorkId( spep_0+138,SE006,31.2);
setSeVolumeByWorkId( spep_0+139,SE006,46.8);
setSeVolumeByWorkId( spep_0+140,SE006,62.4);
setSeVolumeByWorkId( spep_0+141,SE006,78);
setSeVolumeByWorkId( spep_0+142,SE006,93.6);
setSeVolumeByWorkId( spep_0+143,SE006,109.2);
setSeVolumeByWorkId( spep_0+144,SE006,124.8);
setSeVolumeByWorkId( spep_0+145,SE006,141);
setStartTimeMs( SE010,  217 );
stopSe( spep_0 + 208, SE010, 62 );
SE012 = playSe( spep_0 + 138, 1176 );

--構え
SE007 = playSe( spep_0 + 100, 1233 );
setPitch( spep_0 + 100, SE007, -200 );
setTimeStretch( SE007, 0.87, 10, 1 );
SE009 = playSe( spep_0 + 112, 1232 );

--かめはめ波溜め
SE015 = playSe( spep_0 + 176, 1209 );
SE016 = playSe( spep_0 + 176, 1210 );

--白フェード
entryFade( spep_0+256 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+264;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--オーラ青く
stopSe( spep_1 + 10, SE012, 0 );

--かめはめ波溜め
stopSe( spep_1 + 10, SE015, 0 );
stopSe( spep_1 + 10, SE016, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- かめはめ波発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 202, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 202, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 202, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 202, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 202, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 202, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 202, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 202, beam_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 22,  10012, 22, 0x100, -1, 0, 71.4, 179.5 );--ズオッ
setEffShake( spep_2-3 + 22, ctzuo, 22, 10 );
setEffMoveKey( spep_2-3 + 22, ctzuo, 71.4, 179.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, 65, 194.1 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, 46, 242.3 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 12.9, 316.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, -38.9, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, -85.6, 380.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, -115.8, 406.7 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, -141.7, 418.1 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, -156.9, 432.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, -160.3, 430.4 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, -164.9, 438.8 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, -171, 441.1 , 0 );

setEffScaleKey( spep_2-3 + 22, ctzuo, 1.06, 1.06 );
--setEffScaleKey( spep_2-3 + 24, ctzuo, 0.36, 0.36 );
--setEffScaleKey( spep_2-3 + 26, ctzuo, 0.52, 0.52 );
--setEffScaleKey( spep_2-3 + 28, ctzuo, 0.8, 0.8 );
--setEffScaleKey( spep_2-3 + 30, ctzuo, 1.06, 1.06 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 3.8, 3.8 );
--setEffScaleKey( spep_2-3 + 34, ctzuo, 1.2, 1.2 );
--setEffScaleKey( spep_2-3 + 36, ctzuo, 1.27, 1.27 );
--setEffScaleKey( spep_2-3 + 38, ctzuo, 1.32, 1.32 );
--setEffScaleKey( spep_2-3 + 40, ctzuo, 1.33, 1.33 );
--setEffScaleKey( spep_2-3 + 42, ctzuo, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 44, ctzuo, 5.41, 5.41 );

setEffRotateKey( spep_2-3 + 22, ctzuo, -15 );
setEffRotateKey( spep_2-3 + 44, ctzuo, -15 );

setEffAlphaKey( spep_2-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzuo, 203 );
setEffAlphaKey( spep_2-3 + 32, ctzuo, 160 );
setEffAlphaKey( spep_2-3 + 34, ctzuo, 126 );
setEffAlphaKey( spep_2-3 + 36, ctzuo, 103 );
setEffAlphaKey( spep_2-3 + 38, ctzuo, 88 );
setEffAlphaKey( spep_2-3 + 40, ctzuo, 84 );
setEffAlphaKey( spep_2-3 + 42, ctzuo, 42 );
setEffAlphaKey( spep_2-3 + 44, ctzuo, 0 );

--SE
--かめはめ波発射
SE021 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE021, 89 );
SE022 = playSe( spep_2 + 18, 1022 );
setSeVolumeByWorkId( spep_2 + 18, SE022, 94 );
SE023 = playSe( spep_2 + 18, 1211 );
SE024 = playSe( spep_2 + 18, 1213 );
setSeVolumeByWorkId( spep_2 + 18, SE024, 59 );
SE025 = playSe( spep_2 + 18, 1223 );
setSeVolumeByWorkId( spep_2 + 18, SE025, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );
    stopSe( SP_dodge - 12, SE025, 0 );

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

--敵の動き
setDisp( spep_2-3 + 120, 1, 1);
setDisp( spep_2-1 + 174, 1, 0);

changeAnime( spep_2-3 + 120, 1, 104);
changeAnime( spep_2-3 + 170, 1, 108);

setBlendColor(spep_2-3 + 120, 1,3,0.36,0.67,0.82,0);
setBlendColor(spep_2-3 + 145, 1,3,0.36,0.67,0.82,0);
setBlendColor(spep_2-3 + 146, 1,3,0.36,0.67,0.82,0.3);
setBlendColor(spep_2-3 + 149, 1,3,0.36,0.67,0.82,0.3);
setBlendColor(spep_2-3 + 150, 1,3,0.36,0.67,0.82,0.45);
setBlendColor(spep_2-3 + 153, 1,3,0.36,0.67,0.82,0.45);
setBlendColor(spep_2-3 + 154, 1,3,0.36,0.67,0.82,0.6);
setBlendColor(spep_2-1 + 174, 1,3,0.36,0.67,0.82,0.6);
setBlendColor(spep_2 + 180, 1,3,0.36,0.67,0.82,0);

setMoveKey( spep_2-3 + 120, 1, 602.1, -20.9 , 0 );
setMoveKey( spep_2-3 + 140, 1, 602.1, -20.9 , 0 );
setMoveKey( spep_2-3 + 142, 1, 510, -32.8 , 0 );
setMoveKey( spep_2-3 + 144, 1, 377.6, -19.3 , 0 );
setMoveKey( spep_2-3 + 146, 1, 308.4, -2.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 270.9, -3.9 , 0 );
setMoveKey( spep_2-3 + 150, 1, 243.9, -5.2 , 0 );
setMoveKey( spep_2-3 + 152, 1, 243.7, -18.2 , 0 );
setMoveKey( spep_2-3 + 154, 1, 208.4, 21 , 0 );
setMoveKey( spep_2-3 + 156, 1, 196.8, 20.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, 208.2, 0 , 0 );
setMoveKey( spep_2-3 + 160, 1, 214, -12.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, 197.7, 7.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 195.1, 7.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 214.2, -6.9 , 0 );
setMoveKey( spep_2-3 + 168, 1, 233.9, -26.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, 226.8, -7.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, 223.5, -9.5 , 0 );
setMoveKey( spep_2-1 + 174, 1, 217.9, -12.8 , 0 );

setScaleKey( spep_2-3 + 120, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 140, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 142, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 144, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 146, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 148, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 150, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 152, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 154, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 156, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 158, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 160, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 164, 1, 1, 1 );
setScaleKey( spep_2-3 + 168, 1, 1, 1 );
setScaleKey( spep_2-3 + 170, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 172, 1, 0.96, 0.96 );
setScaleKey( spep_2-1 + 174, 1, 0.9, 0.9 );

setRotateKey( spep_2-3 + 120, 1, -10 );
setRotateKey( spep_2-1 + 174, 1, -10 );


--SE
--かめはめ波弾道
SE026 = playSe( spep_2 + 112, 1212 );
setSeVolumeByWorkId( spep_2+112,SE026,0);
setSeVolumeByWorkId( spep_2+113,SE026,6.4);
setSeVolumeByWorkId( spep_2+114,SE026,12.8);
setSeVolumeByWorkId( spep_2+115,SE026,19.2);
setSeVolumeByWorkId( spep_2+116,SE026,25.6);
setSeVolumeByWorkId( spep_2+117,SE026,32);
setSeVolumeByWorkId( spep_2+118,SE026,38.4);
setSeVolumeByWorkId( spep_2+119,SE026,44.8);
setSeVolumeByWorkId( spep_2+120,SE026,51.2);
setSeVolumeByWorkId( spep_2+121,SE026,57.6);
setSeVolumeByWorkId( spep_2+122,SE026,64);
setSeVolumeByWorkId( spep_2+123,SE026,71);
setStartTimeMs( SE026,  1067 );
SE027 = playSe( spep_2 + 116, 1202 );

--かめはめ波加速
SE028 = playSe( spep_2 + 166, 1021 );

--白フェード
entryFade( spep_2+194 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 202;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga, 0 );
setEffRotateKey( spep_3 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

--SE
playSe( spep_3 + 0, 1023 );--爆発
playSe( spep_3 + 14, 1054 );--ガッ

--かめはめ波発射
stopSe( spep_3 + 16, SE023, 0 );
stopSe( spep_3 + 16, SE024, 0 );

--かめはめ波弾道
stopSe( spep_3 + 0, SE026, 28 );

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え→気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 264, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 264, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 264, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 264, tame, 255 );

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

--SE
--気ダメ
SE001 = playSe( spep_0 + 0, 1035 );

--顔カットイン
SE002 = playSe( spep_0 + 12, 1018 );

--オーラ
SE003 = playSe( spep_0 + 32, 1036 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 79 );
SE004 = playSe( spep_0 + 56, 1036 );
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSe( spep_0 + 80, 1036 );
setSeVolumeByWorkId( spep_0 + 80, SE005, 79 );
SE008 = playSe( spep_0 + 104, 1036 );
setSeVolumeByWorkId( spep_0 + 104, SE008, 79 );
SE011 = playSe( spep_0 + 128, 1036 );
setSeVolumeByWorkId( spep_0 + 128, SE011, 79 );
SE013 = playSe( spep_0 + 152, 1036 );
setSeVolumeByWorkId( spep_0 + 152, SE013, 79 );
SE014 = playSe( spep_0 + 176, 1036 );
setSeVolumeByWorkId( spep_0 + 176, SE014, 79 );
SE017 = playSe( spep_0 + 200, 1036 );
setSeVolumeByWorkId( spep_0 + 200, SE017, 79 );
SE018 = playSe( spep_0 + 224, 1036 );
setSeVolumeByWorkId( spep_0 + 224, SE018, 79 );
SE019 = playSe( spep_0 + 248, 1036 );
setSeVolumeByWorkId( spep_0 + 248, SE019, 79 );

--オーラ青く
SE006 = playSe( spep_0 + 132, 1144 );
setSeVolumeByWorkId( spep_0+132,SE006,0);
setSeVolumeByWorkId( spep_0+133,SE006,4.6);
setSeVolumeByWorkId( spep_0+134,SE006,9.2);
setSeVolumeByWorkId( spep_0+135,SE006,13.8);
setSeVolumeByWorkId( spep_0+136,SE006,18.4);
setSeVolumeByWorkId( spep_0+137,SE006,23);
setSeVolumeByWorkId( spep_0+138,SE006,27.6);
setSeVolumeByWorkId( spep_0+139,SE006,32.2);
setSeVolumeByWorkId( spep_0+140,SE006,36.8);
setSeVolumeByWorkId( spep_0+141,SE006,41.4);
setSeVolumeByWorkId( spep_0+142,SE006,46);
setSeVolumeByWorkId( spep_0+143,SE006,50.6);
setSeVolumeByWorkId( spep_0+144,SE006,55.2);
setSeVolumeByWorkId( spep_0+145,SE006,59.8);
setSeVolumeByWorkId( spep_0+146,SE006,64.4);
setSeVolumeByWorkId( spep_0+147,SE006,69);
setSeVolumeByWorkId( spep_0+148,SE006,74);
setStartTimeMs( SE006,  667 );
stopSe( spep_0 + 180, SE006, 58 );
SE010 = playSe( spep_0 + 136, 1265 );
setSeVolumeByWorkId( spep_0+136,SE006,0);
setSeVolumeByWorkId( spep_0+137,SE006,15.6);
setSeVolumeByWorkId( spep_0+138,SE006,31.2);
setSeVolumeByWorkId( spep_0+139,SE006,46.8);
setSeVolumeByWorkId( spep_0+140,SE006,62.4);
setSeVolumeByWorkId( spep_0+141,SE006,78);
setSeVolumeByWorkId( spep_0+142,SE006,93.6);
setSeVolumeByWorkId( spep_0+143,SE006,109.2);
setSeVolumeByWorkId( spep_0+144,SE006,124.8);
setSeVolumeByWorkId( spep_0+145,SE006,141);
setStartTimeMs( SE010,  217 );
stopSe( spep_0 + 208, SE010, 62 );
SE012 = playSe( spep_0 + 138, 1176 );

--構え
SE007 = playSe( spep_0 + 100, 1233 );
setPitch( spep_0 + 100, SE007, -200 );
setTimeStretch( SE007, 0.87, 10, 1 );
SE009 = playSe( spep_0 + 112, 1232 );

--かめはめ波溜め
SE015 = playSe( spep_0 + 176, 1209 );
SE016 = playSe( spep_0 + 176, 1210 );

--白フェード
entryFade( spep_0+256 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+264;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--オーラ青く
stopSe( spep_1 + 10, SE012, 0 );

--かめはめ波溜め
stopSe( spep_1 + 10, SE015, 0 );
stopSe( spep_1 + 10, SE016, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- かめはめ波発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 202, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 202, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 202, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 202, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 202, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 202, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 202, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 202, beam_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 22,  10012, 22, 0x100, -1, 0, 71.4, 179.5 );--ズオッ
setEffShake( spep_2-3 + 22, ctzuo, 22, 10 );
setEffMoveKey( spep_2-3 + 22, ctzuo, 71.4, 179.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, 65, 194.1 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, 46, 242.3 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 12.9, 316.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, -38.9, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, -85.6, 380.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, -115.8, 406.7 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, -141.7, 418.1 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, -156.9, 432.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, -160.3, 430.4 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, -164.9, 438.8 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, -171, 441.1 , 0 );

setEffScaleKey( spep_2-3 + 22, ctzuo, 1.06, 1.06 );
--setEffScaleKey( spep_2-3 + 24, ctzuo, 0.36, 0.36 );
--setEffScaleKey( spep_2-3 + 26, ctzuo, 0.52, 0.52 );
--setEffScaleKey( spep_2-3 + 28, ctzuo, 0.8, 0.8 );
--setEffScaleKey( spep_2-3 + 30, ctzuo, 1.06, 1.06 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 3.8, 3.8 );
--setEffScaleKey( spep_2-3 + 34, ctzuo, 1.2, 1.2 );
--setEffScaleKey( spep_2-3 + 36, ctzuo, 1.27, 1.27 );
--setEffScaleKey( spep_2-3 + 38, ctzuo, 1.32, 1.32 );
--setEffScaleKey( spep_2-3 + 40, ctzuo, 1.33, 1.33 );
--setEffScaleKey( spep_2-3 + 42, ctzuo, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 44, ctzuo, 5.41, 5.41 );

setEffRotateKey( spep_2-3 + 22, ctzuo, -15 );
setEffRotateKey( spep_2-3 + 44, ctzuo, -15 );

setEffAlphaKey( spep_2-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzuo, 203 );
setEffAlphaKey( spep_2-3 + 32, ctzuo, 160 );
setEffAlphaKey( spep_2-3 + 34, ctzuo, 126 );
setEffAlphaKey( spep_2-3 + 36, ctzuo, 103 );
setEffAlphaKey( spep_2-3 + 38, ctzuo, 88 );
setEffAlphaKey( spep_2-3 + 40, ctzuo, 84 );
setEffAlphaKey( spep_2-3 + 42, ctzuo, 42 );
setEffAlphaKey( spep_2-3 + 44, ctzuo, 0 );

--SE
--かめはめ波発射
SE021 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE021, 89 );
SE022 = playSe( spep_2 + 18, 1022 );
setSeVolumeByWorkId( spep_2 + 18, SE022, 94 );
SE023 = playSe( spep_2 + 18, 1211 );
SE024 = playSe( spep_2 + 18, 1213 );
setSeVolumeByWorkId( spep_2 + 18, SE024, 59 );
SE025 = playSe( spep_2 + 18, 1223 );
setSeVolumeByWorkId( spep_2 + 18, SE025, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );
    stopSe( SP_dodge - 12, SE025, 0 );

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

--敵の動き
setDisp( spep_2-3 + 120, 1, 1);
setDisp( spep_2-1 + 174, 1, 0);

changeAnime( spep_2-3 + 120, 1, 104);
changeAnime( spep_2-3 + 170, 1, 108);

setBlendColor(spep_2-3 + 120, 1,3,0.36,0.67,0.82,0);
setBlendColor(spep_2-3 + 145, 1,3,0.36,0.67,0.82,0);
setBlendColor(spep_2-3 + 146, 1,3,0.36,0.67,0.82,0.3);
setBlendColor(spep_2-3 + 149, 1,3,0.36,0.67,0.82,0.3);
setBlendColor(spep_2-3 + 150, 1,3,0.36,0.67,0.82,0.45);
setBlendColor(spep_2-3 + 153, 1,3,0.36,0.67,0.82,0.45);
setBlendColor(spep_2-3 + 154, 1,3,0.36,0.67,0.82,0.6);
setBlendColor(spep_2-1 + 174, 1,3,0.36,0.67,0.82,0.6);
setBlendColor(spep_2 + 180, 1,3,0.36,0.67,0.82,0);

setMoveKey( spep_2-3 + 120, 1, 602.1, -20.9 , 0 );
setMoveKey( spep_2-3 + 140, 1, 602.1, -20.9 , 0 );
setMoveKey( spep_2-3 + 142, 1, 510, -32.8 , 0 );
setMoveKey( spep_2-3 + 144, 1, 377.6, -19.3 , 0 );
setMoveKey( spep_2-3 + 146, 1, 308.4, -2.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 270.9, -3.9 , 0 );
setMoveKey( spep_2-3 + 150, 1, 243.9, -5.2 , 0 );
setMoveKey( spep_2-3 + 152, 1, 243.7, -18.2 , 0 );
setMoveKey( spep_2-3 + 154, 1, 208.4, 21 , 0 );
setMoveKey( spep_2-3 + 156, 1, 196.8, 20.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, 208.2, 0 , 0 );
setMoveKey( spep_2-3 + 160, 1, 214, -12.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, 197.7, 7.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 195.1, 7.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 214.2, -6.9 , 0 );
setMoveKey( spep_2-3 + 168, 1, 233.9, -26.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, 226.8, -7.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, 223.5, -9.5 , 0 );
setMoveKey( spep_2-1 + 174, 1, 217.9, -12.8 , 0 );

setScaleKey( spep_2-3 + 120, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 140, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 142, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 144, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 146, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 148, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 150, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 152, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 154, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 156, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 158, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 160, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 164, 1, 1, 1 );
setScaleKey( spep_2-3 + 168, 1, 1, 1 );
setScaleKey( spep_2-3 + 170, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 172, 1, 0.96, 0.96 );
setScaleKey( spep_2-1 + 174, 1, 0.9, 0.9 );

setRotateKey( spep_2-3 + 120, 1, -10 );
setRotateKey( spep_2-1 + 174, 1, -10 );


--SE
--かめはめ波弾道
SE026 = playSe( spep_2 + 112, 1212 );
setSeVolumeByWorkId( spep_2+112,SE026,0);
setSeVolumeByWorkId( spep_2+113,SE026,6.4);
setSeVolumeByWorkId( spep_2+114,SE026,12.8);
setSeVolumeByWorkId( spep_2+115,SE026,19.2);
setSeVolumeByWorkId( spep_2+116,SE026,25.6);
setSeVolumeByWorkId( spep_2+117,SE026,32);
setSeVolumeByWorkId( spep_2+118,SE026,38.4);
setSeVolumeByWorkId( spep_2+119,SE026,44.8);
setSeVolumeByWorkId( spep_2+120,SE026,51.2);
setSeVolumeByWorkId( spep_2+121,SE026,57.6);
setSeVolumeByWorkId( spep_2+122,SE026,64);
setSeVolumeByWorkId( spep_2+123,SE026,71);
setStartTimeMs( SE026,  1067 );
SE027 = playSe( spep_2 + 116, 1202 );

--かめはめ波加速
SE028 = playSe( spep_2 + 166, 1021 );

--白フェード
entryFade( spep_2+194 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 202;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga, 0 );
setEffRotateKey( spep_3 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

--SE
playSe( spep_3 + 0, 1023 );--爆発
playSe( spep_3 + 14, 1054 );--ガッ

--かめはめ波発射
stopSe( spep_3 + 16, SE023, 0 );
stopSe( spep_3 + 16, SE024, 0 );

--かめはめ波弾道
stopSe( spep_3 + 0, SE026, 28 );

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 98 );
end