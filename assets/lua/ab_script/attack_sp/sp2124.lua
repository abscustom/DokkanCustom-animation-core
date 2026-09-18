--1021020:ザンギャ_スカイザッパー(SSR)
--sp_effect_b1_00128

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
SP_01=	156369	;--	手で顔を覆う
SP_02=	156371	;--	地上の敵を追い越す
SP_03=	156373	;--	地上の敵を追い越す
SP_04=	156375	;--	回転して糸状のビーム発射
SP_05=	156377	;--	敵にエフェクト巻きつく　
SP_06=	156378	;--	敵にエフェクト巻きつく
SP_07=	156379	;--	飛び蹴り
SP_08=	156381	;--	飛び蹴り→回し蹴り
SP_09=	156383	;--	飛び蹴り→回し蹴り
SP_10=	156385	;--	finish 

--エフェクト(てき)
SP_01x=	156370	;--	手で顔を覆う
SP_02x=	156372	;--	地上の敵を追い越す
SP_03x=	156374	;--	地上の敵を追い越す
SP_04x=	156376	;--	回転して糸状のビーム発射
SP_05x=	156377	;--	敵にエフェクト巻きつく　
SP_06x=	156378	;--	敵にエフェクト巻きつく
SP_07x=	156380	;--	飛び蹴り
SP_08x=	156382	;--	飛び蹴り→回し蹴り
SP_09x=	156384	;--	飛び蹴り→回し蹴り
SP_10x=	156385	;--	finish 
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
-- 手で顔を覆う
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 180, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 180, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 94, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 94, shuchusen1, 86, 20 );

setEffMoveKey( spep_0 + 94, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 94, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 180, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 94, shuchusen1, 0 );
setEffRotateKey( spep_0 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 94, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 180, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +82;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
--手広げる
SE001 = playSe( spep_0 + 12, 1003 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 86 );

--手をたたむ
SE002 = playSe( spep_0 + 58, 1013 );
setSeVolumeByWorkId( spep_0 + 58, SE002, 78 );
stopSe( spep_0 + 64, SE002, 8 );
SE003 = playSe( spep_0 + 60, 1007 );
setSeVolumeByWorkId( spep_0 + 60, SE003, 58 );
stopSe( spep_0 + 68, SE003, 8 );

--顔カットイン
SE004 = playSe( spep_0 + 94, 1018 );

--髪盛り上がる
SE005 = playSe( spep_0 + 94, 1278 );
setSeVolumeByWorkId( spep_0 + 94, SE005, 54 );
SE006 = playSe( spep_0 + 94, 1267 );
setSeVolumeByWorkId( spep_0 + 94, SE006, 188 );
setPitch( spep_0 + 94, SE006, 400 );   
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 120, SE006, 42 );
SE007 = playSe( spep_0 + 94, 1128 );
setSeVolumeByWorkId( spep_0 + 94, SE007, 56 );
stopSe( spep_0 + 166, SE007, 20 );
SE008 = playSe( spep_0 + 108, 1257 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 170, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+180;
------------------------------------------------------
-- 地上の敵を追い越す
------------------------------------------------------
-- ** エフェクト等 ** --
overtake_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, overtake_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, overtake_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, overtake_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, overtake_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, overtake_f, 0 );
setEffRotateKey( spep_1 + 56, overtake_f, 0 );
setEffAlphaKey( spep_1 + 0, overtake_f, 255 );
setEffAlphaKey( spep_1 + 56, overtake_f, 255 );
setEffAlphaKey( spep_1 + 57, overtake_f, 0 );
setEffAlphaKey( spep_1 + 58, overtake_f, 0 );

-- ** エフェクト等 ** --
overtake_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, overtake_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, overtake_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, overtake_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, overtake_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, overtake_b, 0 );
setEffRotateKey( spep_1 + 56, overtake_b, 0 );
setEffAlphaKey( spep_1 + 0, overtake_b, 255 );
setEffAlphaKey( spep_1 + 56, overtake_b, 255 );
setEffAlphaKey( spep_1 + 57, overtake_b, 0 );
setEffAlphaKey( spep_1 + 58, overtake_b, 0 );

--敵の動き
setDisp( spep_1-3 + 8, 1, 1);
setDisp( spep_1-1 + 58, 1, 0);

changeAnime( spep_1-3 + 8, 1, 118);

setMoveKey( spep_1-3 + 8, 1, 268.5, -698 , 0 );
setMoveKey( spep_1-3 + 10, 1, 169.4, -679.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 123.5, -670.8 , 0 );
setMoveKey( spep_1-3 + 14, 1, 92.6, -665 , 0 );
setMoveKey( spep_1-3 + 16, 1, 70.4, -660.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 55, -657.9 , 0 );
setMoveKey( spep_1-3 + 20, 1, 42.6, -656.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 30.3, -654.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 17.9, -652.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 5.4, -651.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, -7, -649.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, -19.6, -647.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, -32.2, -646 , 0 );
setMoveKey( spep_1-3 + 34, 1, -44.8, -644.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, -57.5, -642.5 , 0 );
setMoveKey( spep_1-3 + 38, 1, -70.2, -640.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -83, -639 , 0 );
setMoveKey( spep_1-3 + 42, 1, -95.8, -637.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, -108.7, -635.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, -121.6, -633.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, -134.5, -631.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, -147.5, -630.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, -160.6, -628.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, -173.7, -626.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, -186.8, -624.7 , 0 );
setMoveKey( spep_1-1 + 58, 1, -199.9, -622.7 , 0 );

setScaleKey( spep_1-3 + 8, 1, 10, 10 );
setScaleKey( spep_1-3 + 10, 1, 8.37, 8.37 );
setScaleKey( spep_1-3 + 12, 1, 7.62, 7.62 );
setScaleKey( spep_1-3 + 14, 1, 7.11, 7.11 );
setScaleKey( spep_1-3 + 16, 1, 6.75, 6.75 );
setScaleKey( spep_1-3 + 18, 1, 6.5, 6.5 );
setScaleKey( spep_1-3 + 20, 1, 6.28, 6.28 );
setScaleKey( spep_1-3 + 22, 1, 6.06, 6.06 );
setScaleKey( spep_1-3 + 24, 1, 5.84, 5.84 );
setScaleKey( spep_1-3 + 26, 1, 5.62, 5.62 );
setScaleKey( spep_1-3 + 28, 1, 5.4, 5.4 );
setScaleKey( spep_1-3 + 30, 1, 5.18, 5.18 );
setScaleKey( spep_1-3 + 32, 1, 4.96, 4.96 );
setScaleKey( spep_1-3 + 34, 1, 4.74, 4.74 );
setScaleKey( spep_1-3 + 36, 1, 4.51, 4.51 );
setScaleKey( spep_1-3 + 38, 1, 4.29, 4.29 );
setScaleKey( spep_1-3 + 40, 1, 4.06, 4.06 );
setScaleKey( spep_1-3 + 42, 1, 3.84, 3.84 );
setScaleKey( spep_1-3 + 44, 1, 3.61, 3.61 );
setScaleKey( spep_1-3 + 46, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 48, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 50, 1, 2.92, 2.92 );
setScaleKey( spep_1-3 + 52, 1, 2.69, 2.69 );
setScaleKey( spep_1-3 + 54, 1, 2.46, 2.46 );
setScaleKey( spep_1-3 + 56, 1, 2.23, 2.23 );
setScaleKey( spep_1-1 + 58, 1, 2, 2 );

setRotateKey( spep_1-3 + 8, 1, 10 );
setRotateKey( spep_1-3 + 10, 1, 9.9 );
setRotateKey( spep_1-3 + 14, 1, 9.9 );
setRotateKey( spep_1-3 + 16, 1, 9.8 );
setRotateKey( spep_1-1 + 58, 1, 9.8 );

--SE
--髪盛り上がる
stopSe( spep_1 + 0, SE005, 10 );

--ジャンプ
SE009 = playSe( spep_1 + 0, 1116 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 73 );
stopSe( spep_1 + 40, SE009, 32 );
SE010 = playSe( spep_1 + 0, 44 );
setSeVolumeByWorkId( spep_1 + 0, SE010, 81 );

--サイコスレッド投げる
SE011 = playSe( spep_1 + 40, 1287,"",0.5 );
setSeVolumeByWorkId( spep_1 + 40, SE011, 0 );
setStartTimeMs( SE011,  100 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- 回転して糸状のビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 76, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 76, beam, 255 );
setEffAlphaKey( spep_2 + 77, beam, 0 );
setEffAlphaKey( spep_2 + 78, beam, 0 );

--SE
--空中反転
SE012 = playSe( spep_2 + 0, 1246 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 12, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 13, SE012, 33.4 );
setSeVolumeByWorkId( spep_2 + 14, SE012, 66.8 );
setStartTimeMs( SE012,  200 );
SE013 = playSe( spep_2 + 8, 1225 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );


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
--サイコスレッド投げる
setSeVolumeByWorkId( spep_2 + 48, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 49, SE011, 41.9 );
setSeVolumeByWorkId( spep_2 + 50, SE011, 83.8 );
setSeVolumeByWorkId( spep_2 + 51, SE011, 125.7 );
setSeVolumeByWorkId( spep_2 + 52, SE011, 167.6 );
setSeVolumeByWorkId( spep_2 + 53, SE011, 209.5 );
setSeVolumeByWorkId( spep_2 + 54, SE011, 251.4 );
SE014 = playSe( spep_2 + 46, 1117 );
setSeVolumeByWorkId( spep_2 + 46, SE014, 91 );
stopSe( spep_2 + 54, SE014, 8 );

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 敵にエフェクト巻きつく　
------------------------------------------------------
-- ** エフェクト等 ** --
roll_r = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, roll_r, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, roll_r, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, roll_r, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, roll_r, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, roll_r, 0 );
setEffRotateKey( spep_3 + 76, roll_r, 0 );
setEffAlphaKey( spep_3 + 0, roll_r, 255 );
setEffAlphaKey( spep_3 + 76, roll_r, 255 );

-- ** エフェクト等 ** --
roll_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, roll_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, roll_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, roll_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, roll_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, roll_b, 0 );
setEffRotateKey( spep_3 + 76, roll_b, 0 );
setEffAlphaKey( spep_3 + 0, roll_b, 255 );
setEffAlphaKey( spep_3 + 76, roll_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 4 );
changeAnime( spep_3-3 + 20, 1, 6 );

setMoveKey( spep_3 + 0, 1, -22.3, -34.2 , 0 );
setMoveKey( spep_3-3 + 19, 1, -22.3, -34.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -10.4, 22.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 24, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 28, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 32, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 36, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 40, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 42, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 44, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 48, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 52, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 56, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 60, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 64, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 68, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 72, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 76, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, -4.2, 32 , 0 );

setScaleKey( spep_3 + 0, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 78, 1, 1.96, 1.96 );

setRotateKey( spep_3 + 0, 1, -10 );
setRotateKey( spep_3-3 + 19, 1, -10 );
setRotateKey( spep_3-3 + 20, 1, 37.1 );
setRotateKey( spep_3-3 + 22, 1, 37.2 );
setRotateKey( spep_3-3 + 78, 1, 37.2 );

--SE
--しびれる
SE015 = playSe( spep_3 + 18, 1038,"",0.5 );
setSeVolumeByWorkId( spep_3 + 18, SE015, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3 + 72, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+76;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

stopSe( spep_4 + 0, SE011, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, kick, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, kick, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick, 0 );
setEffRotateKey( spep_5 + 46, kick, 0 );
setEffAlphaKey( spep_5 + 0, kick, 255 );
setEffAlphaKey( spep_5 + 46, kick, 255 );
setEffAlphaKey( spep_5 + 47, kick, 0 );
setEffAlphaKey( spep_5 + 48, kick, 0 );

--SE
--体引く
SE017 = playSe( spep_5 + 0, 1004 );
setSeVolumeByWorkId( spep_5 + 0, SE017, 68 );
setPitch( spep_5 + 0, SE017, 400 );
setTimeStretch( SE017, 1.27, 10, 1 );

--敵向かっていく
SE018 = playSe( spep_5 + 36, 1116 );
stopSe( spep_5 + 58, SE018, 18 );
SE019 = playSe( spep_5 + 36, 1117 );
stopSe( spep_5 + 50, SE019, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 748, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;
------------------------------------------------------
-- 蹴り→パンチ→瞬間移動
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 86, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 86, panting_f, 255 );
setEffAlphaKey( spep_6 + 87, panting_f, 0 );
setEffAlphaKey( spep_6 + 88, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 86, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 86, panting_b, 255 );
setEffAlphaKey( spep_6 + 87, panting_b, 0 );
setEffAlphaKey( spep_6 + 88, panting_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_6-3 + 58,  10020, 12, 0x100, -1, 0, 164.1, -54.5 );
setEffShake( spep_6-3 + 58, ctbaki, 12, 10 );
setEffMoveKey( spep_6-3 + 58, ctbaki, 164.1, -54.5 , 0 );
setEffMoveKey( spep_6-3 + 60, ctbaki, 144.3, -249.4 , 0 );
setEffMoveKey( spep_6-3 + 62, ctbaki, 148.7, -254.7 , 0 );
setEffMoveKey( spep_6-3 + 64, ctbaki, 149.1, -247.7 , 0 );
setEffMoveKey( spep_6-3 + 66, ctbaki, 148.2, -255.2 , 0 );
setEffMoveKey( spep_6-3 + 68, ctbaki, 144.3, -249.5 , 0 );
setEffMoveKey( spep_6-3 + 70, ctbaki, 148.3, -262.5 , 0 );

setEffScaleKey( spep_6-3 + 58, ctbaki, 0.84, 0.84 );
setEffScaleKey( spep_6-3 + 60, ctbaki, 2, 2 );
setEffScaleKey( spep_6-3 + 70, ctbaki, 2, 2 );

setEffRotateKey( spep_6-3 + 58, ctbaki, 0 );
setEffRotateKey( spep_6-3 + 70, ctbaki, 0 );

setEffAlphaKey( spep_6-3 + 58, ctbaki, 26 );
setEffAlphaKey( spep_6-3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_6-3 + 68, ctbaki, 255 );
setEffAlphaKey( spep_6-3 + 70, ctbaki, 13 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6-3 + 8, 1, 8 );
changeAnime( spep_6-3 + 58, 1, 108 );

setMoveKey( spep_6 + 0, 1, 0.7, -20.8 , 0 );
setMoveKey( spep_6-3 + 7, 1, 0.7, -20.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, -120.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 12, 1, -121.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 14, 1, -122.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, -123.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, -124.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 20, 1, -125.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, -126.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 24, 1, -127.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, -128.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, -129.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 30, 1, -130.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 32, 1, -131.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, -132.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, -133.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 38, 1, -114.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, -95.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -76.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 44, 1, -57.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -38.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -19.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, -21.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -23.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -25.8, -20.8 , 0 );
setMoveKey( spep_6-3 + 57, 1, -27.9, -20.8 , 0 );
setMoveKey( spep_6-3 + 58, 1, 159.8, -2.1 , 0 );
setMoveKey( spep_6-3 + 60, 1, 198.8, -1.1 , 0 );
setMoveKey( spep_6-3 + 62, 1, 462.9, 28.9 , 0 );
setMoveKey( spep_6-3 + 64, 1, 516.6, 34.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, 554.6, 37.8 , 0 );
setMoveKey( spep_6-3 + 68, 1, 584.2, 40.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 608.3, 43 , 0 );
setMoveKey( spep_6-3 + 72, 1, 628.1, 45 , 0 );
setMoveKey( spep_6-3 + 74, 1, 644.5, 46.6 , 0 );
setMoveKey( spep_6-3 + 76, 1, 658, 47.9 , 0 );
setMoveKey( spep_6-3 + 78, 1, 668.8, 48.9 , 0 );

a=0.5;

setScaleKey( spep_6 + 0, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 57, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 58, 1, 1.6+a, 1.6+a );
setScaleKey( spep_6-3 + 78, 1, 1.6+a, 1.6+a );

setRotateKey( spep_6 + 0, 1, 37.2 );
setRotateKey( spep_6-3 + 7, 1, 37.2 );
setRotateKey( spep_6-3 + 8, 1, 5 );
setRotateKey( spep_6-3 + 57, 1, 5 );
setRotateKey( spep_6-3 + 58, 1, 0 );
setRotateKey( spep_6-3 + 78, 1, 0 );

--SE
--ダイナマイトキック
SE020 = playSe( spep_6 + 6, 1001 );
setSeVolumeByWorkId( spep_6 + 6, SE020, 79 );
SE021 = playSe( spep_6 + 6, 1010 );
SE022 = playSe( spep_6 + 8, 1110 );
setSeVolumeByWorkId( spep_6 + 8, SE022, 84 );

--回り込む
SE023 = playSe( spep_6 + 36, 1117 );
stopSe( spep_6 + 44, SE023, 18 );

--蹴り
SE024 = playSe( spep_6 + 56, 1120 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_6 +82, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_7 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 105 );
setRotateKey( spep_7 -3 + 4, 1, 240 );
setRotateKey( spep_7 -3 + 6, 1, 405 );
setRotateKey( spep_7 -3 + 8, 1, 600 );
setRotateKey( spep_7 -3 + 10, 1, 825 );
setRotateKey( spep_7 -3 + 12, 1, 1080 );
setRotateKey( spep_7 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga, 0 );
setEffRotateKey( spep_7 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_7 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_7 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_7 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_7 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_7 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_7 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_7 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_7 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_7 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_7 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--playSe( spep_7 + 0, 1023 );--爆発
playSe( spep_7 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_7 +10 );
endPhase( spep_7 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手で顔を覆う
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 180, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 180, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 94, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 94, shuchusen1, 86, 20 );

setEffMoveKey( spep_0 + 94, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 94, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 180, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 94, shuchusen1, 0 );
setEffRotateKey( spep_0 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 94, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 180, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +82;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
--手広げる
SE001 = playSe( spep_0 + 12, 1003 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 86 );

--手をたたむ
SE002 = playSe( spep_0 + 58, 1013 );
setSeVolumeByWorkId( spep_0 + 58, SE002, 78 );
stopSe( spep_0 + 64, SE002, 8 );
SE003 = playSe( spep_0 + 60, 1007 );
setSeVolumeByWorkId( spep_0 + 60, SE003, 58 );
stopSe( spep_0 + 68, SE003, 8 );

--顔カットイン
SE004 = playSe( spep_0 + 94, 1018 );

--髪盛り上がる
SE005 = playSe( spep_0 + 94, 1278 );
setSeVolumeByWorkId( spep_0 + 94, SE005, 54 );
SE006 = playSe( spep_0 + 94, 1267 );
setSeVolumeByWorkId( spep_0 + 94, SE006, 188 );
setPitch( spep_0 + 94, SE006, 400 );   
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 120, SE006, 42 );
SE007 = playSe( spep_0 + 94, 1128 );
setSeVolumeByWorkId( spep_0 + 94, SE007, 56 );
stopSe( spep_0 + 166, SE007, 20 );
SE008 = playSe( spep_0 + 108, 1257 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 170, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+180;
------------------------------------------------------
-- 地上の敵を追い越す
------------------------------------------------------
-- ** エフェクト等 ** --
overtake_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, overtake_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, overtake_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, overtake_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, overtake_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, overtake_f, 0 );
setEffRotateKey( spep_1 + 56, overtake_f, 0 );
setEffAlphaKey( spep_1 + 0, overtake_f, 255 );
setEffAlphaKey( spep_1 + 56, overtake_f, 255 );
setEffAlphaKey( spep_1 + 57, overtake_f, 0 );
setEffAlphaKey( spep_1 + 58, overtake_f, 0 );

-- ** エフェクト等 ** --
overtake_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, overtake_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, overtake_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, overtake_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, overtake_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, overtake_b, 0 );
setEffRotateKey( spep_1 + 56, overtake_b, 0 );
setEffAlphaKey( spep_1 + 0, overtake_b, 255 );
setEffAlphaKey( spep_1 + 56, overtake_b, 255 );
setEffAlphaKey( spep_1 + 57, overtake_b, 0 );
setEffAlphaKey( spep_1 + 58, overtake_b, 0 );

--敵の動き
setDisp( spep_1-3 + 8, 1, 1);
setDisp( spep_1-1 + 58, 1, 0);

changeAnime( spep_1-3 + 8, 1, 118);

setMoveKey( spep_1-3 + 8, 1, 268.5, -698 , 0 );
setMoveKey( spep_1-3 + 10, 1, 169.4, -679.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 123.5, -670.8 , 0 );
setMoveKey( spep_1-3 + 14, 1, 92.6, -665 , 0 );
setMoveKey( spep_1-3 + 16, 1, 70.4, -660.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 55, -657.9 , 0 );
setMoveKey( spep_1-3 + 20, 1, 42.6, -656.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 30.3, -654.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 17.9, -652.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 5.4, -651.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, -7, -649.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, -19.6, -647.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, -32.2, -646 , 0 );
setMoveKey( spep_1-3 + 34, 1, -44.8, -644.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, -57.5, -642.5 , 0 );
setMoveKey( spep_1-3 + 38, 1, -70.2, -640.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -83, -639 , 0 );
setMoveKey( spep_1-3 + 42, 1, -95.8, -637.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, -108.7, -635.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, -121.6, -633.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, -134.5, -631.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, -147.5, -630.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, -160.6, -628.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, -173.7, -626.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, -186.8, -624.7 , 0 );
setMoveKey( spep_1-1 + 58, 1, -199.9, -622.7 , 0 );

setScaleKey( spep_1-3 + 8, 1, 10, 10 );
setScaleKey( spep_1-3 + 10, 1, 8.37, 8.37 );
setScaleKey( spep_1-3 + 12, 1, 7.62, 7.62 );
setScaleKey( spep_1-3 + 14, 1, 7.11, 7.11 );
setScaleKey( spep_1-3 + 16, 1, 6.75, 6.75 );
setScaleKey( spep_1-3 + 18, 1, 6.5, 6.5 );
setScaleKey( spep_1-3 + 20, 1, 6.28, 6.28 );
setScaleKey( spep_1-3 + 22, 1, 6.06, 6.06 );
setScaleKey( spep_1-3 + 24, 1, 5.84, 5.84 );
setScaleKey( spep_1-3 + 26, 1, 5.62, 5.62 );
setScaleKey( spep_1-3 + 28, 1, 5.4, 5.4 );
setScaleKey( spep_1-3 + 30, 1, 5.18, 5.18 );
setScaleKey( spep_1-3 + 32, 1, 4.96, 4.96 );
setScaleKey( spep_1-3 + 34, 1, 4.74, 4.74 );
setScaleKey( spep_1-3 + 36, 1, 4.51, 4.51 );
setScaleKey( spep_1-3 + 38, 1, 4.29, 4.29 );
setScaleKey( spep_1-3 + 40, 1, 4.06, 4.06 );
setScaleKey( spep_1-3 + 42, 1, 3.84, 3.84 );
setScaleKey( spep_1-3 + 44, 1, 3.61, 3.61 );
setScaleKey( spep_1-3 + 46, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 48, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 50, 1, 2.92, 2.92 );
setScaleKey( spep_1-3 + 52, 1, 2.69, 2.69 );
setScaleKey( spep_1-3 + 54, 1, 2.46, 2.46 );
setScaleKey( spep_1-3 + 56, 1, 2.23, 2.23 );
setScaleKey( spep_1-1 + 58, 1, 2, 2 );

setRotateKey( spep_1-3 + 8, 1, 10 );
setRotateKey( spep_1-3 + 10, 1, 9.9 );
setRotateKey( spep_1-3 + 14, 1, 9.9 );
setRotateKey( spep_1-3 + 16, 1, 9.8 );
setRotateKey( spep_1-1 + 58, 1, 9.8 );

--SE
--髪盛り上がる
stopSe( spep_1 + 0, SE005, 10 );

--ジャンプ
SE009 = playSe( spep_1 + 0, 1116 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 73 );
stopSe( spep_1 + 40, SE009, 32 );
SE010 = playSe( spep_1 + 0, 44 );
setSeVolumeByWorkId( spep_1 + 0, SE010, 81 );

--サイコスレッド投げる
SE011 = playSe( spep_1 + 40, 1287,"",0.5 );
setSeVolumeByWorkId( spep_1 + 40, SE011, 0 );
setStartTimeMs( SE011,  100 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- 回転して糸状のビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 76, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 76, beam, 255 );
setEffAlphaKey( spep_2 + 77, beam, 0 );
setEffAlphaKey( spep_2 + 78, beam, 0 );

--SE
--空中反転
SE012 = playSe( spep_2 + 0, 1246 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 12, SE012, 0 );
setSeVolumeByWorkId( spep_2 + 13, SE012, 33.4 );
setSeVolumeByWorkId( spep_2 + 14, SE012, 66.8 );
setStartTimeMs( SE012,  200 );
SE013 = playSe( spep_2 + 8, 1225 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );


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
--サイコスレッド投げる
setSeVolumeByWorkId( spep_2 + 48, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 49, SE011, 41.9 );
setSeVolumeByWorkId( spep_2 + 50, SE011, 83.8 );
setSeVolumeByWorkId( spep_2 + 51, SE011, 125.7 );
setSeVolumeByWorkId( spep_2 + 52, SE011, 167.6 );
setSeVolumeByWorkId( spep_2 + 53, SE011, 209.5 );
setSeVolumeByWorkId( spep_2 + 54, SE011, 251.4 );
SE014 = playSe( spep_2 + 46, 1117 );
setSeVolumeByWorkId( spep_2 + 46, SE014, 91 );
stopSe( spep_2 + 54, SE014, 8 );

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 敵にエフェクト巻きつく　
------------------------------------------------------
-- ** エフェクト等 ** --
roll_r = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, roll_r, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, roll_r, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, roll_r, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, roll_r, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, roll_r, 0 );
setEffRotateKey( spep_3 + 76, roll_r, 0 );
setEffAlphaKey( spep_3 + 0, roll_r, 255 );
setEffAlphaKey( spep_3 + 76, roll_r, 255 );

-- ** エフェクト等 ** --
roll_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, roll_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, roll_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, roll_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, roll_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, roll_b, 0 );
setEffRotateKey( spep_3 + 76, roll_b, 0 );
setEffAlphaKey( spep_3 + 0, roll_b, 255 );
setEffAlphaKey( spep_3 + 76, roll_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 4 );
changeAnime( spep_3-3 + 20, 1, 6 );

setMoveKey( spep_3 + 0, 1, -22.3, -34.2 , 0 );
setMoveKey( spep_3-3 + 19, 1, -22.3, -34.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -10.4, 22.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 24, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 28, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 32, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 36, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 40, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 42, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 44, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 48, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 52, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 56, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 60, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 64, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 68, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 72, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, -4.2, 32 , 0 );
setMoveKey( spep_3-3 + 76, 1, -10.4, 18.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, -4.2, 32 , 0 );

setScaleKey( spep_3 + 0, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 78, 1, 1.96, 1.96 );

setRotateKey( spep_3 + 0, 1, -10 );
setRotateKey( spep_3-3 + 19, 1, -10 );
setRotateKey( spep_3-3 + 20, 1, 37.1 );
setRotateKey( spep_3-3 + 22, 1, 37.2 );
setRotateKey( spep_3-3 + 78, 1, 37.2 );

--SE
--しびれる
SE015 = playSe( spep_3 + 18, 1038,"",0.5 );
setSeVolumeByWorkId( spep_3 + 18, SE015, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3 + 72, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+76;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

stopSe( spep_4 + 0, SE011, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 飛び蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, kick, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, kick, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick, 0 );
setEffRotateKey( spep_5 + 46, kick, 0 );
setEffAlphaKey( spep_5 + 0, kick, 255 );
setEffAlphaKey( spep_5 + 46, kick, 255 );
setEffAlphaKey( spep_5 + 47, kick, 0 );
setEffAlphaKey( spep_5 + 48, kick, 0 );

--SE
--体引く
SE017 = playSe( spep_5 + 0, 1004 );
setSeVolumeByWorkId( spep_5 + 0, SE017, 68 );
setPitch( spep_5 + 0, SE017, 400 );
setTimeStretch( SE017, 1.27, 10, 1 );

--敵向かっていく
SE018 = playSe( spep_5 + 36, 1116 );
stopSe( spep_5 + 58, SE018, 18 );
SE019 = playSe( spep_5 + 36, 1117 );
stopSe( spep_5 + 50, SE019, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 748, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;
------------------------------------------------------
-- 蹴り→パンチ→瞬間移動
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 86, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 86, panting_f, 255 );
setEffAlphaKey( spep_6 + 87, panting_f, 0 );
setEffAlphaKey( spep_6 + 88, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 86, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 86, panting_b, 255 );
setEffAlphaKey( spep_6 + 87, panting_b, 0 );
setEffAlphaKey( spep_6 + 88, panting_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_6-3 + 58,  10020, 12, 0x100, -1, 0, 164.1, -54.5 );
setEffShake( spep_6-3 + 58, ctbaki, 12, 10 );
setEffMoveKey( spep_6-3 + 58, ctbaki, 164.1, -54.5 , 0 );
setEffMoveKey( spep_6-3 + 60, ctbaki, 144.3, -249.4 , 0 );
setEffMoveKey( spep_6-3 + 62, ctbaki, 148.7, -254.7 , 0 );
setEffMoveKey( spep_6-3 + 64, ctbaki, 149.1, -247.7 , 0 );
setEffMoveKey( spep_6-3 + 66, ctbaki, 148.2, -255.2 , 0 );
setEffMoveKey( spep_6-3 + 68, ctbaki, 144.3, -249.5 , 0 );
setEffMoveKey( spep_6-3 + 70, ctbaki, 148.3, -262.5 , 0 );

setEffScaleKey( spep_6-3 + 58, ctbaki, 0.84, 0.84 );
setEffScaleKey( spep_6-3 + 60, ctbaki, 2, 2 );
setEffScaleKey( spep_6-3 + 70, ctbaki, 2, 2 );

setEffRotateKey( spep_6-3 + 58, ctbaki, 0 );
setEffRotateKey( spep_6-3 + 70, ctbaki, 0 );

setEffAlphaKey( spep_6-3 + 58, ctbaki, 26 );
setEffAlphaKey( spep_6-3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_6-3 + 68, ctbaki, 255 );
setEffAlphaKey( spep_6-3 + 70, ctbaki, 13 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6-3 + 8, 1, 8 );
changeAnime( spep_6-3 + 58, 1, 108 );

setMoveKey( spep_6 + 0, 1, 0.7, -20.8 , 0 );
setMoveKey( spep_6-3 + 7, 1, 0.7, -20.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, -120.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 12, 1, -121.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 14, 1, -122.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, -123.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, -124.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 20, 1, -125.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, -126.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 24, 1, -127.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, -128.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, -129.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 30, 1, -130.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 32, 1, -131.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, -132.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, -133.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 38, 1, -114.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, -95.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -76.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 44, 1, -57.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -38.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -19.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, -21.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -23.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -25.8, -20.8 , 0 );
setMoveKey( spep_6-3 + 57, 1, -27.9, -20.8 , 0 );
setMoveKey( spep_6-3 + 58, 1, 159.8, -2.1 , 0 );
setMoveKey( spep_6-3 + 60, 1, 198.8, -1.1 , 0 );
setMoveKey( spep_6-3 + 62, 1, 462.9, 28.9 , 0 );
setMoveKey( spep_6-3 + 64, 1, 516.6, 34.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, 554.6, 37.8 , 0 );
setMoveKey( spep_6-3 + 68, 1, 584.2, 40.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 608.3, 43 , 0 );
setMoveKey( spep_6-3 + 72, 1, 628.1, 45 , 0 );
setMoveKey( spep_6-3 + 74, 1, 644.5, 46.6 , 0 );
setMoveKey( spep_6-3 + 76, 1, 658, 47.9 , 0 );
setMoveKey( spep_6-3 + 78, 1, 668.8, 48.9 , 0 );

a=0.5;

setScaleKey( spep_6 + 0, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 57, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 58, 1, 1.6+a, 1.6+a );
setScaleKey( spep_6-3 + 78, 1, 1.6+a, 1.6+a );

setRotateKey( spep_6 + 0, 1, 37.2 );
setRotateKey( spep_6-3 + 7, 1, 37.2 );
setRotateKey( spep_6-3 + 8, 1, 5 );
setRotateKey( spep_6-3 + 57, 1, 5 );
setRotateKey( spep_6-3 + 58, 1, 0 );
setRotateKey( spep_6-3 + 78, 1, 0 );

--SE
--ダイナマイトキック
SE020 = playSe( spep_6 + 6, 1001 );
setSeVolumeByWorkId( spep_6 + 6, SE020, 79 );
SE021 = playSe( spep_6 + 6, 1010 );
SE022 = playSe( spep_6 + 8, 1110 );
setSeVolumeByWorkId( spep_6 + 8, SE022, 84 );

--回り込む
SE023 = playSe( spep_6 + 36, 1117 );
stopSe( spep_6 + 44, SE023, 18 );

--蹴り
SE024 = playSe( spep_6 + 56, 1120 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_6 +82, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_7 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 105 );
setRotateKey( spep_7 -3 + 4, 1, 240 );
setRotateKey( spep_7 -3 + 6, 1, 405 );
setRotateKey( spep_7 -3 + 8, 1, 600 );
setRotateKey( spep_7 -3 + 10, 1, 825 );
setRotateKey( spep_7 -3 + 12, 1, 1080 );
setRotateKey( spep_7 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga, 0 );
setEffRotateKey( spep_7 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_7 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_7 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_7 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_7 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_7 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_7 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_7 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_7 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_7 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_7 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--playSe( spep_7 + 0, 1023 );--爆発
playSe( spep_7 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_7 +10 );
endPhase( spep_7 + 98 );

end