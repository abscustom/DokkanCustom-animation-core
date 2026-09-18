--1021030:ザンギャ_スカイザッパー(UR)
--sp_effect_a1_00256

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
SP_01=	156386	;--	手で顔を覆う
SP_02=	156388	;--	地上の敵を追い越す
SP_03=	156390	;--	地上の敵を追い越す
SP_04=	156392	;--	回転して糸状のビーム発射
SP_05=	156394	;--	敵にエフェクト巻きつく
SP_06=	156395	;--	敵にエフェクト巻きつく　
SP_07=	156396	;--	飛び蹴り
SP_08=	156398	;--	蹴り→パンチ→瞬間移動
SP_09=	156400	;--	蹴り→パンチ→瞬間移動
SP_10=	156402	;--	膝蹴り
SP_11=	156404	;--	膝蹴り
SP_12=	156406	;--	肘打ち
SP_13=	156407	;--	肘打ち
SP_14=	156409	;--	バストアップ、振向き
SP_15=	156411	;--	後ろ回し蹴り
SP_16=	156413	;--	後ろ回し蹴り
SP_17=	156415	;--	finish 

--エフェクト(てき)
SP_01x=	156387	;--	手で顔を覆う
SP_02x=	156389	;--	地上の敵を追い越す
SP_03x=	156391	;--	地上の敵を追い越す
SP_04x=	156393	;--	回転して糸状のビーム発射
SP_05x=	156394	;--	敵にエフェクト巻きつく
SP_06x=	156395	;--	敵にエフェクト巻きつく　
SP_07x=	156397	;--	飛び蹴り
SP_08x=	156399	;--	蹴り→パンチ→瞬間移動
SP_09x=	156401	;--	蹴り→パンチ→瞬間移動
SP_10x=	156403	;--	膝蹴り
SP_11x=	156405	;--	膝蹴り
SP_12x=	156406	;--	肘打ち
SP_13x=	156408	;--	肘打ち
SP_14x=	156410	;--	バストアップ、振向き
SP_15x=	156412	;--	後ろ回し蹴り
SP_16x=	156414	;--	後ろ回し蹴り
SP_17x=	156415	;--	finish 
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
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

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
setStartTimeMs( SE011,  120 );

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
setEffMoveKey( spep_6 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 96, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 96, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 96, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 96, panting_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 88, 1, 0 );

changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6-3 + 8, 1, 8 );
changeAnime( spep_6-3 + 76, 1, 107 );

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
setMoveKey( spep_6-3 + 38, 1, -79.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -41, -20.7 , 0 );
setMoveKey( spep_6-3 + 44, 1, -29.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -22.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -19.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, -21.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -23.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -25.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, -27.9, -20.7 , 0 );
setMoveKey( spep_6-3 + 58, 1, -30, -20.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, -32.2, -20.7 , 0 );
setMoveKey( spep_6-3 + 62, 1, -34.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 64, 1, -36.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 66, 1, -38.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 68, 1, -40.7, -20.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, -42.9, -20.7 , 0 );
setMoveKey( spep_6-3 + 72, 1, -45, -20.7 , 0 );
setMoveKey( spep_6-3 + 75, 1, -47.1, -20.7 , 0 );
setMoveKey( spep_6-3 + 76, 1, 70.5, -100.8 , 0 );
setMoveKey( spep_6-3 + 78, 1, 111.9, -188.8 , 0 );
setMoveKey( spep_6-3 + 80, 1, 167.6, -307.2 , 0 );
setMoveKey( spep_6-3 + 82, 1, 235.9, -452.4 , 0 );
setMoveKey( spep_6-3 + 84, 1, 319.2, -629.2 , 0 );
setMoveKey( spep_6-3 + 86, 1, 425.4, -854.7 , 0 );
setMoveKey( spep_6-3 + 88, 1, 588.2, -1200 , 0 );

a=0.5;

setScaleKey( spep_6 + 0, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 75, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 76, 1, 0.75+a, 0.75+a );
setScaleKey( spep_6-3 + 78, 1, 1.33+a, 1.33+a );
setScaleKey( spep_6-3 + 80, 1, 2.11+a, 2.11+a );
setScaleKey( spep_6-3 + 82, 1, 3.06+a, 3.06+a );
setScaleKey( spep_6-3 + 84, 1, 4.23+a, 4.23+a );
setScaleKey( spep_6-3 + 86, 1, 5.71+a, 5.71+a );
setScaleKey( spep_6-3 + 88, 1, 7.99+a, 7.99+a );

setRotateKey( spep_6 + 0, 1, 37.2 );
setRotateKey( spep_6-3 + 7, 1, 37.2 );
setRotateKey( spep_6-3 + 8, 1, 5 );
setRotateKey( spep_6-3 + 75, 1, 5 );
setRotateKey( spep_6-3 + 76, 1, -70 );
setRotateKey( spep_6-3 + 78, 1, -68.4 );
setRotateKey( spep_6-3 + 80, 1, -66.2 );
setRotateKey( spep_6-3 + 82, 1, -63.6 );
setRotateKey( spep_6-3 + 84, 1, -60.4 );
setRotateKey( spep_6-3 + 86, 1, -56.3 );
setRotateKey( spep_6-3 + 88, 1, -50 );

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

--背後から殴る
SE024 = playSe( spep_6 + 74, 1003 );
SE025 = playSe( spep_6 + 76, 1009 );
SE026 = playSe( spep_6 + 78, 1110 );

--瞬間移動
SE027 = playSe( spep_6 + 90, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 96;
------------------------------------------------------
-- 膝蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
knee_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, knee_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, knee_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, knee_f, 0 );
setEffRotateKey( spep_7 + 56, knee_f, 0 );
setEffAlphaKey( spep_7 + 0, knee_f, 255 );
setEffAlphaKey( spep_7 + 54, knee_f, 255 );
setEffAlphaKey( spep_7 + 55, knee_f, 255 );
setEffAlphaKey( spep_7 + 56, knee_f, 0 );

-- ** エフェクト等 ** --
knee_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, knee_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, knee_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, knee_b, 0 );
setEffRotateKey( spep_7 + 56, knee_b, 0 );
setEffAlphaKey( spep_7 + 0, knee_b, 255 );
setEffAlphaKey( spep_7 + 54, knee_b, 255 );
setEffAlphaKey( spep_7 + 55, knee_b, 255 );
setEffAlphaKey( spep_7 + 56, knee_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 107 );
changeAnime( spep_7-3 + 18, 1, 108 );

setMoveKey( spep_7 + 0, 1, 83.7, -256.7 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 90.9, -246.4 , 0 );
setMoveKey( spep_7-3 + 4, 1, 98.1, -236 , 0 );
setMoveKey( spep_7-3 + 6, 1, 105.4, -225.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, 112.6, -215.3 , 0 );
setMoveKey( spep_7-3 + 10, 1, 119.8, -204.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 127, -194.6 , 0 );
setMoveKey( spep_7-3 + 14, 1, 134.2, -184.2 , 0 );
setMoveKey( spep_7-3 + 17, 1, 141.4, -173.9 , 0 );
e=80;
setMoveKey( spep_7-3 + 18, 1, 217.5+e, 27.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, 231+e, 67.2 , 0 );
setMoveKey( spep_7-3 + 22, 1, 244.5+e, 107.3 , 0 );
setMoveKey( spep_7-3 + 24, 1, 245+e, 109 , 0 );
setMoveKey( spep_7-3 + 26, 1, 245.5+e, 110.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 246+e, 112.3 , 0 );
setMoveKey( spep_7-3 + 30, 1, 246.5+e, 114 , 0 );
setMoveKey( spep_7-3 + 32, 1, 247+e, 115.6 , 0 );
setMoveKey( spep_7-3 + 34, 1, 247.4+e, 117.3 , 0 );
setMoveKey( spep_7-3 + 36, 1, 247.9+e, 118.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 248.4+e, 120.6 , 0 );
setMoveKey( spep_7-3 + 40, 1, 248.9+e, 122.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 249.4+e, 123.9 , 0 );
setMoveKey( spep_7-3 + 44, 1, 249.9+e, 125.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, 250.4+e, 127.3 , 0 );
setMoveKey( spep_7-3 + 48, 1, 250.9+e, 128.9 , 0 );
setMoveKey( spep_7-3 + 50, 1, 251.3+e, 130.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, 251.8+e, 132.2 , 0 );
setMoveKey( spep_7-3 + 54, 1, 252.3+e, 133.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, 252.8+e, 135.6 , 0 );
setMoveKey( spep_7-3 + 58, 1, 253.3+e, 137.2 , 0 );


b=0.3;
c=2;

setScaleKey( spep_7 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_7-3 + 2, 1, 0.36, 0.36 );
--setScaleKey( spep_7-3 + 4, 1, 0.42, 0.42 );
--setScaleKey( spep_7-3 + 6, 1, 0.49, 0.49 );
setScaleKey( spep_7-3 + 8, 1, 0.55+b, 0.55+b );
setScaleKey( spep_7-3 + 10, 1, 0.61+b, 0.61+b );
setScaleKey( spep_7-3 + 12, 1, 0.67+b, 0.67+b );
setScaleKey( spep_7-3 + 14, 1, 0.74+b, 0.74+b );
setScaleKey( spep_7-3 + 17, 1, 0.8+b, 0.8+b );
setScaleKey( spep_7-3 + 18, 1, 2.9+c, 2.9+c );
setScaleKey( spep_7-3 + 58, 1, 2.9+c, 2.9+c );

setRotateKey( spep_7-3 + 0, 1, -70 );
setRotateKey( spep_7-3 + 17, 1, -70 );
setRotateKey( spep_7-3 + 18, 1, -30 );
setRotateKey( spep_7-3 + 58, 1, -30 );

--SE
--膝蹴り
SE028 = playSe( spep_7 + 16, 1190 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;
------------------------------------------------------
-- 肘打ち
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 46, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, elbow_f, 0 );
setEffRotateKey( spep_8 + 46, elbow_f, 0 );
setEffAlphaKey( spep_8 + 0, elbow_f, 255 );
setEffAlphaKey( spep_8 + 46, elbow_f, 255 );
setEffAlphaKey( spep_8 + 47, elbow_f, 0 );
setEffAlphaKey( spep_8 + 48, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 46, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, elbow_b, 0 );
setEffRotateKey( spep_8 + 46, elbow_b, 0 );
setEffAlphaKey( spep_8 + 0, elbow_b, 255 );
setEffAlphaKey( spep_8 + 46, elbow_b, 255 );
setEffAlphaKey( spep_8 + 47, elbow_b, 0 );
setEffAlphaKey( spep_8 + 48, elbow_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_8-3 + 8,  10018, 16, 0x100, -1, 0, 124.2, 57.7 );--ドゴォンッ
setEffShake( spep_8-3 + 8, ctdogon, 16, 10 );
setEffMoveKey( spep_8-3 + 8, ctdogon, 124.2, 57.7 , 0 );
setEffMoveKey( spep_8-3 + 10, ctdogon, 159.7, 192.7 , 0 );
setEffMoveKey( spep_8-3 + 12, ctdogon, 159.7, 187.3 , 0 );
setEffMoveKey( spep_8-3 + 14, ctdogon, 163.7, 191.5 , 0 );
setEffMoveKey( spep_8-3 + 16, ctdogon, 159.3, 187.3 , 0 );
setEffMoveKey( spep_8-3 + 18, ctdogon, 161.6, 194.1 , 0 );
setEffMoveKey( spep_8-3 + 20, ctdogon, 160, 189.4 , 0 );
setEffMoveKey( spep_8-3 + 22, ctdogon, 160.1, 193.2 , 0 );
setEffMoveKey( spep_8-3 + 24, ctdogon, 194.1, 190.2 , 0 );

setEffScaleKey( spep_8-3 + 8, ctdogon, 1.09, 1.09 );
setEffScaleKey( spep_8-3 + 10, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_8-3 + 12, ctdogon, 2.09, 2.09 );
setEffScaleKey( spep_8-3 + 14, ctdogon, 2.1, 2.1 );
setEffScaleKey( spep_8-3 + 16, ctdogon, 2.11, 2.11 );
setEffScaleKey( spep_8-3 + 18, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_8-3 + 20, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_8-3 + 22, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_8-3 + 24, ctdogon, 2.14, 2.14 );

setEffRotateKey( spep_8-3 + 8, ctdogon, 13 );
setEffRotateKey( spep_8-3 + 24, ctdogon, 13 );

setEffAlphaKey( spep_8-3 + 8, ctdogon, 26 );
setEffAlphaKey( spep_8-3 + 10, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 24, ctdogon, 13 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 46, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );
changeAnime( spep_8-3 + 11, 1, 106 );
changeAnime( spep_8-3 + 12, 1, 108 );
changeAnime( spep_8-3 + 22, 1, 106 );

setMoveKey( spep_8 + 0, 1, 79.9, -70.2 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 79.9, -67.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 79.9, -65.2 , 0 );
setMoveKey( spep_8-3 + 6, 1, 79.9, -62.7 , 0 );
setMoveKey( spep_8-3 + 9, 1, 79.9, -60.2 , 0 );
setMoveKey( spep_8-3 + 11, 1, 59.9, -99.9 , 0 );
setMoveKey( spep_8-3 + 12, 1, 40.1, -159.8 , 0 );
setMoveKey( spep_8-3 + 14, 1, 40, -251.4 , 0 );
setMoveKey( spep_8-3 + 16, 1, 40, -343.1 , 0 );
setMoveKey( spep_8-3 + 18, 1, 40, -361.4 , 0 );
setMoveKey( spep_8-3 + 21, 1, 40.1, -379.8 , 0 );
setMoveKey( spep_8-3 + 22, 1, 39.9, -299.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, 39.9, -265.4 , 0 );
setMoveKey( spep_8-3 + 26, 1, 39.9, -246.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, 39.9, -232 , 0 );
setMoveKey( spep_8-3 + 30, 1, 39.9, -220.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, 39.9, -210.9 , 0 );
setMoveKey( spep_8-3 + 34, 1, 39.9, -202.6 , 0 );
setMoveKey( spep_8-3 + 36, 1, 39.9, -195.2 , 0 );
setMoveKey( spep_8-3 + 38, 1, 39.9, -188.5 , 0 );
setMoveKey( spep_8-3 + 40, 1, 39.9, -182.4 , 0 );
setMoveKey( spep_8-3 + 42, 1, 39.9, -176.9 , 0 );
setMoveKey( spep_8-3 + 44, 1, 39.9, -171.7 , 0 );
setMoveKey( spep_8-3 + 46, 1, 39.9, -166.8 , 0 );
setMoveKey( spep_8 + 46, 1, 39.9, -162 , 0 );

d=0.3;

setScaleKey( spep_8 + 0, 1, 1.6+d, 1.6+d );
setScaleKey( spep_8 + 46, 1, 1.6+d, 1.6+d );

setRotateKey( spep_8 + 0, 1, -40 );
setRotateKey( spep_8-3 + 9, 1, -40 );
setRotateKey( spep_8-3 + 11, 1, 35 );
setRotateKey( spep_8-3 + 12, 1, 75 );
setRotateKey( spep_8-3 + 21, 1, 75 );
setRotateKey( spep_8-3 + 22, 1, 25 );
setRotateKey( spep_8 + 46, 1, 25 );

--SE
--叩きつけ
SE029 = playSe( spep_8 + 0, 1189 );
SE030 = playSe( spep_8 + 4, 1009 );
SE031 = playSe( spep_8 + 4, 1187 );
setSeVolumeByWorkId( spep_8 + 4, SE031, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0,50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 46;
------------------------------------------------------
-- バストアップ、振向き
------------------------------------------------------
-- ** エフェクト等 ** --
spin = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, spin, 0, 0, 0 );
setEffMoveKey( spep_9 + 86, spin, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, spin, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, spin, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, spin, 0 );
setEffRotateKey( spep_9 + 86, spin, 0 );
setEffAlphaKey( spep_9 + 0, spin, 255 );
setEffAlphaKey( spep_9 + 86, spin, 255 );
setEffAlphaKey( spep_9 + 87, spin, 0 );
setEffAlphaKey( spep_9 + 88, spin, 0 );

--SE
--ドヤァ
SE032 = playSe( spep_9 + 0, 1072,"",0.5 );
setSeVolumeByWorkId( spep_9 + 0, SE032, 110 );
setTimeStretch( SE032, 1.42, 20, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0,90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 86;
------------------------------------------------------
-- 後ろ回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_10 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 36, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 36, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kick2_f, 0 );
setEffRotateKey( spep_10 + 36, kick2_f, 0 );
setEffAlphaKey( spep_10 + 0, kick2_f, 255 );
setEffAlphaKey( spep_10 + 36, kick2_f, 255 );
setEffAlphaKey( spep_10 + 37, kick2_f, 0 );
setEffAlphaKey( spep_10 + 38, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_10 + 0, SP_16, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 36, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 36, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kick2_b, 0 );
setEffRotateKey( spep_10 + 36, kick2_b, 0 );
setEffAlphaKey( spep_10 + 0, kick2_b, 255 );
setEffAlphaKey( spep_10 + 36, kick2_b, 255 );
setEffAlphaKey( spep_10 + 37, kick2_b, 0 );
setEffAlphaKey( spep_10 + 38, kick2_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_10-3 + 14,  10020, 12, 0x100, -1, 0, 164.1, -54.5 );
setEffShake( spep_10-3 + 14, ctbaki, 12, 10 );
setEffMoveKey( spep_10-3 + 14, ctbaki, 164.1, -54.5 , 0 );
setEffMoveKey( spep_10-3 + 16, ctbaki, 144.3, -249.4 , 0 );
setEffMoveKey( spep_10-3 + 18, ctbaki, 148.7, -254.7 , 0 );
setEffMoveKey( spep_10-3 + 20, ctbaki, 149.1, -247.7 , 0 );
setEffMoveKey( spep_10-3 + 22, ctbaki, 148.2, -255.2 , 0 );
setEffMoveKey( spep_10-3 + 24, ctbaki, 144.3, -249.5 , 0 );
setEffMoveKey( spep_10-3 + 26, ctbaki, 148.3, -262.5 , 0 );

setEffScaleKey( spep_10-3 + 14, ctbaki, 0.84, 0.84 );
setEffScaleKey( spep_10-3 + 16, ctbaki, 2, 2 );
setEffScaleKey( spep_10-3 + 26, ctbaki, 2, 2 );

setEffRotateKey( spep_10-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_10-3 + 26, ctbaki, 0 );

setEffAlphaKey( spep_10-3 + 14, ctbaki, 26 );
setEffAlphaKey( spep_10-3 + 16, ctbaki, 255 );
setEffAlphaKey( spep_10-3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_10-3 + 26, ctbaki, 13 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10-3 + 32, 1, 0 );

changeAnime( spep_10 + 0, 1, 106 );
changeAnime( spep_10-3 + 12, 1, 108 );

setMoveKey( spep_10 + 0, 1, 39.9, -62 , 0 );
--setMoveKey( spep_10 + 2, 1, 39.9, -59.9 , 0 );
setMoveKey( spep_10-3 + 4, 1, 39.9, -57.9 , 0 );
setMoveKey( spep_10-3 + 6, 1, 39.9, -55.9 , 0 );
setMoveKey( spep_10-3 + 8, 1, 39.9, -53.9 , 0 );
setMoveKey( spep_10-3 + 11, 1, 39.9, -52 , 0 );
setMoveKey( spep_10-3 + 12, 1, 159.8, -42.1 , 0 );
setMoveKey( spep_10-3 + 14, 1, 198.8, -41.1 , 0 );
setMoveKey( spep_10-3 + 16, 1, 462.9, -11.1 , 0 );
setMoveKey( spep_10-3 + 18, 1, 516.6, -5.9 , 0 );
setMoveKey( spep_10-3 + 20, 1, 554.6, -2.2 , 0 );
setMoveKey( spep_10-3 + 22, 1, 584.2, 0.7 , 0 );
setMoveKey( spep_10-3 + 24, 1, 608.3, 3 , 0 );
setMoveKey( spep_10-3 + 26, 1, 628.1, 5 , 0 );
setMoveKey( spep_10-3 + 28, 1, 644.5, 6.6 , 0 );
setMoveKey( spep_10-3 + 30, 1, 658, 7.9 , 0 );
setMoveKey( spep_10-3 + 32, 1, 668.8, 8.9 , 0 );

setScaleKey( spep_10 + 0, 1, 1.6+d, 1.6+d );
setScaleKey( spep_10-3 + 32, 1, 1.6+d, 1.6+d );

setRotateKey( spep_10 + 0, 1, 25 );
setRotateKey( spep_10-3 + 11, 1, 25 );
setRotateKey( spep_10-3 + 12, 1, 0 );
setRotateKey( spep_10-3 + 32, 1, 0 );

--SE
--蹴り
SE033 = playSe( spep_10 + 10, 1120 );

--白フェード
entryFade( spep_10 +34, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0,40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 40;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_11 + 0, 1, 1 );
changeAnime( spep_11 + 0, 1, 107 );
setMoveKey( spep_11 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_11 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_11 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_11 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_11 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_11 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_11 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_11 + 0, 1, 105 );
setRotateKey( spep_11 -3 + 4, 1, 240 );
setRotateKey( spep_11 -3 + 6, 1, 405 );
setRotateKey( spep_11 -3 + 8, 1, 600 );
setRotateKey( spep_11 -3 + 10, 1, 825 );
setRotateKey( spep_11 -3 + 12, 1, 1080 );
setRotateKey( spep_11 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_11 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, bg, 0 );
setEffRotateKey( spep_11 + 100, bg, 0 );
setEffAlphaKey( spep_11 + 0, bg, 255 );
setEffAlphaKey( spep_11 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_11 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_11 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_11 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_11 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_11 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_11 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_11 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_11 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_11 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_11 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_11 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_11 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_11 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_11 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_11 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_11 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_11 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_11 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusenga, 0 );
setEffRotateKey( spep_11 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_11 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_11 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_11 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_11 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_11 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_11 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_11 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_11 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_11 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_11 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_11 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_11 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_11 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_11 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_11 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_11 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_11 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_11 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_11 + 14, ctga, 14, 20 );

setEffMoveKey( spep_11 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_11 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_11 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_11 + 14, ctga, -10.9 );
setEffRotateKey( spep_11 + 15, ctga, -10.9 );
setEffRotateKey( spep_11 + 16, ctga, -14.9 );
setEffRotateKey( spep_11 + 17, ctga, -14.9 );
setEffRotateKey( spep_11 + 18, ctga, -10.9 );
setEffRotateKey( spep_11 + 19, ctga, -10.9 );
setEffRotateKey( spep_11 + 20, ctga, -14.9 );
setEffRotateKey( spep_11 + 21, ctga, -14.9 );
setEffRotateKey( spep_11 + 22, ctga, -10.9 );
setEffRotateKey( spep_11 + 23, ctga, -10.9 );
setEffRotateKey( spep_11 + 24, ctga, -14.9 );
setEffRotateKey( spep_11 + 25, ctga, -14.9 );
setEffRotateKey( spep_11 + 26, ctga, -10.9 );
setEffRotateKey( spep_11 + 27, ctga, -10.9 );
setEffRotateKey( spep_11 + 28, ctga, -14.9 );
setEffRotateKey( spep_11 + 100, ctga, -14.9 );

setEffAlphaKey( spep_11 + 14, ctga, 255 );
setEffAlphaKey( spep_11 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_11 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_11 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_11 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_11 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_11 + 2, hibiware, 0 );
setEffRotateKey( spep_11 + 100, hibiware, 0 );

setEffAlphaKey( spep_11 + 2, hibiware, 0 );
setEffAlphaKey( spep_11 + 13, hibiware, 0 );
setEffAlphaKey( spep_11 + 14, hibiware, 255 );
setEffAlphaKey( spep_11 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--playSe( spep_11 + 0, 1023 );--爆発
playSe( spep_11 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_11 +10 );
endPhase( spep_11 + 98 );
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
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

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
setStartTimeMs( SE011,  120 );

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
setEffMoveKey( spep_6 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_f, 0 );
setEffRotateKey( spep_6 + 96, panting_f, 0 );
setEffAlphaKey( spep_6 + 0, panting_f, 255 );
setEffAlphaKey( spep_6 + 96, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, panting_b, 0 );
setEffRotateKey( spep_6 + 96, panting_b, 0 );
setEffAlphaKey( spep_6 + 0, panting_b, 255 );
setEffAlphaKey( spep_6 + 96, panting_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 88, 1, 0 );

changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6-3 + 8, 1, 8 );
changeAnime( spep_6-3 + 76, 1, 107 );

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
setMoveKey( spep_6-3 + 38, 1, -79.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -41, -20.7 , 0 );
setMoveKey( spep_6-3 + 44, 1, -29.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -22.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -19.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, -21.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -23.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -25.8, -20.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, -27.9, -20.7 , 0 );
setMoveKey( spep_6-3 + 58, 1, -30, -20.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, -32.2, -20.7 , 0 );
setMoveKey( spep_6-3 + 62, 1, -34.3, -20.7 , 0 );
setMoveKey( spep_6-3 + 64, 1, -36.5, -20.7 , 0 );
setMoveKey( spep_6-3 + 66, 1, -38.6, -20.7 , 0 );
setMoveKey( spep_6-3 + 68, 1, -40.7, -20.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, -42.9, -20.7 , 0 );
setMoveKey( spep_6-3 + 72, 1, -45, -20.7 , 0 );
setMoveKey( spep_6-3 + 75, 1, -47.1, -20.7 , 0 );
setMoveKey( spep_6-3 + 76, 1, 70.5, -100.8 , 0 );
setMoveKey( spep_6-3 + 78, 1, 111.9, -188.8 , 0 );
setMoveKey( spep_6-3 + 80, 1, 167.6, -307.2 , 0 );
setMoveKey( spep_6-3 + 82, 1, 235.9, -452.4 , 0 );
setMoveKey( spep_6-3 + 84, 1, 319.2, -629.2 , 0 );
setMoveKey( spep_6-3 + 86, 1, 425.4, -854.7 , 0 );
setMoveKey( spep_6-3 + 88, 1, 588.2, -1200 , 0 );

a=0.5;

setScaleKey( spep_6 + 0, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 75, 1, 1.57+a, 1.57+a );
setScaleKey( spep_6-3 + 76, 1, 0.75+a, 0.75+a );
setScaleKey( spep_6-3 + 78, 1, 1.33+a, 1.33+a );
setScaleKey( spep_6-3 + 80, 1, 2.11+a, 2.11+a );
setScaleKey( spep_6-3 + 82, 1, 3.06+a, 3.06+a );
setScaleKey( spep_6-3 + 84, 1, 4.23+a, 4.23+a );
setScaleKey( spep_6-3 + 86, 1, 5.71+a, 5.71+a );
setScaleKey( spep_6-3 + 88, 1, 7.99+a, 7.99+a );

setRotateKey( spep_6 + 0, 1, 37.2 );
setRotateKey( spep_6-3 + 7, 1, 37.2 );
setRotateKey( spep_6-3 + 8, 1, 5 );
setRotateKey( spep_6-3 + 75, 1, 5 );
setRotateKey( spep_6-3 + 76, 1, -70 );
setRotateKey( spep_6-3 + 78, 1, -68.4 );
setRotateKey( spep_6-3 + 80, 1, -66.2 );
setRotateKey( spep_6-3 + 82, 1, -63.6 );
setRotateKey( spep_6-3 + 84, 1, -60.4 );
setRotateKey( spep_6-3 + 86, 1, -56.3 );
setRotateKey( spep_6-3 + 88, 1, -50 );

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

--背後から殴る
SE024 = playSe( spep_6 + 74, 1003 );
SE025 = playSe( spep_6 + 76, 1009 );
SE026 = playSe( spep_6 + 78, 1110 );

--瞬間移動
SE027 = playSe( spep_6 + 90, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 96;
------------------------------------------------------
-- 膝蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
knee_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, knee_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, knee_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, knee_f, 0 );
setEffRotateKey( spep_7 + 56, knee_f, 0 );
setEffAlphaKey( spep_7 + 0, knee_f, 255 );
setEffAlphaKey( spep_7 + 54, knee_f, 255 );
setEffAlphaKey( spep_7 + 55, knee_f, 255 );
setEffAlphaKey( spep_7 + 56, knee_f, 0 );

-- ** エフェクト等 ** --
knee_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, knee_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, knee_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, knee_b, 0 );
setEffRotateKey( spep_7 + 56, knee_b, 0 );
setEffAlphaKey( spep_7 + 0, knee_b, 255 );
setEffAlphaKey( spep_7 + 54, knee_b, 255 );
setEffAlphaKey( spep_7 + 55, knee_b, 255 );
setEffAlphaKey( spep_7 + 56, knee_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 107 );
changeAnime( spep_7-3 + 18, 1, 108 );

setMoveKey( spep_7 + 0, 1, 83.7, -256.7 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 90.9, -246.4 , 0 );
setMoveKey( spep_7-3 + 4, 1, 98.1, -236 , 0 );
setMoveKey( spep_7-3 + 6, 1, 105.4, -225.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, 112.6, -215.3 , 0 );
setMoveKey( spep_7-3 + 10, 1, 119.8, -204.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 127, -194.6 , 0 );
setMoveKey( spep_7-3 + 14, 1, 134.2, -184.2 , 0 );
setMoveKey( spep_7-3 + 17, 1, 141.4, -173.9 , 0 );
e=80;
setMoveKey( spep_7-3 + 18, 1, 217.5+e, 27.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, 231+e, 67.2 , 0 );
setMoveKey( spep_7-3 + 22, 1, 244.5+e, 107.3 , 0 );
setMoveKey( spep_7-3 + 24, 1, 245+e, 109 , 0 );
setMoveKey( spep_7-3 + 26, 1, 245.5+e, 110.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 246+e, 112.3 , 0 );
setMoveKey( spep_7-3 + 30, 1, 246.5+e, 114 , 0 );
setMoveKey( spep_7-3 + 32, 1, 247+e, 115.6 , 0 );
setMoveKey( spep_7-3 + 34, 1, 247.4+e, 117.3 , 0 );
setMoveKey( spep_7-3 + 36, 1, 247.9+e, 118.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 248.4+e, 120.6 , 0 );
setMoveKey( spep_7-3 + 40, 1, 248.9+e, 122.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 249.4+e, 123.9 , 0 );
setMoveKey( spep_7-3 + 44, 1, 249.9+e, 125.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, 250.4+e, 127.3 , 0 );
setMoveKey( spep_7-3 + 48, 1, 250.9+e, 128.9 , 0 );
setMoveKey( spep_7-3 + 50, 1, 251.3+e, 130.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, 251.8+e, 132.2 , 0 );
setMoveKey( spep_7-3 + 54, 1, 252.3+e, 133.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, 252.8+e, 135.6 , 0 );
setMoveKey( spep_7-3 + 58, 1, 253.3+e, 137.2 , 0 );


b=0.3;
c=2;

setScaleKey( spep_7 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_7-3 + 2, 1, 0.36, 0.36 );
--setScaleKey( spep_7-3 + 4, 1, 0.42, 0.42 );
--setScaleKey( spep_7-3 + 6, 1, 0.49, 0.49 );
setScaleKey( spep_7-3 + 8, 1, 0.55+b, 0.55+b );
setScaleKey( spep_7-3 + 10, 1, 0.61+b, 0.61+b );
setScaleKey( spep_7-3 + 12, 1, 0.67+b, 0.67+b );
setScaleKey( spep_7-3 + 14, 1, 0.74+b, 0.74+b );
setScaleKey( spep_7-3 + 17, 1, 0.8+b, 0.8+b );
setScaleKey( spep_7-3 + 18, 1, 2.9+c, 2.9+c );
setScaleKey( spep_7-3 + 58, 1, 2.9+c, 2.9+c );

setRotateKey( spep_7-3 + 0, 1, -70 );
setRotateKey( spep_7-3 + 17, 1, -70 );
setRotateKey( spep_7-3 + 18, 1, -30 );
setRotateKey( spep_7-3 + 58, 1, -30 );

--SE
--膝蹴り
SE028 = playSe( spep_7 + 16, 1190 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;
------------------------------------------------------
-- 肘打ち
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 46, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, elbow_f, 0 );
setEffRotateKey( spep_8 + 46, elbow_f, 0 );
setEffAlphaKey( spep_8 + 0, elbow_f, 255 );
setEffAlphaKey( spep_8 + 46, elbow_f, 255 );
setEffAlphaKey( spep_8 + 47, elbow_f, 0 );
setEffAlphaKey( spep_8 + 48, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 46, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, elbow_b, 0 );
setEffRotateKey( spep_8 + 46, elbow_b, 0 );
setEffAlphaKey( spep_8 + 0, elbow_b, 255 );
setEffAlphaKey( spep_8 + 46, elbow_b, 255 );
setEffAlphaKey( spep_8 + 47, elbow_b, 0 );
setEffAlphaKey( spep_8 + 48, elbow_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_8-3 + 8,  10018, 16, 0x100, -1, 0, 124.2, 57.7 );--ドゴォンッ
setEffShake( spep_8-3 + 8, ctdogon, 16, 10 );
setEffMoveKey( spep_8-3 + 8, ctdogon, 124.2, 57.7 , 0 );
setEffMoveKey( spep_8-3 + 10, ctdogon, 159.7, 192.7 , 0 );
setEffMoveKey( spep_8-3 + 12, ctdogon, 159.7, 187.3 , 0 );
setEffMoveKey( spep_8-3 + 14, ctdogon, 163.7, 191.5 , 0 );
setEffMoveKey( spep_8-3 + 16, ctdogon, 159.3, 187.3 , 0 );
setEffMoveKey( spep_8-3 + 18, ctdogon, 161.6, 194.1 , 0 );
setEffMoveKey( spep_8-3 + 20, ctdogon, 160, 189.4 , 0 );
setEffMoveKey( spep_8-3 + 22, ctdogon, 160.1, 193.2 , 0 );
setEffMoveKey( spep_8-3 + 24, ctdogon, 194.1, 190.2 , 0 );

setEffScaleKey( spep_8-3 + 8, ctdogon, 1.09, 1.09 );
setEffScaleKey( spep_8-3 + 10, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_8-3 + 12, ctdogon, 2.09, 2.09 );
setEffScaleKey( spep_8-3 + 14, ctdogon, 2.1, 2.1 );
setEffScaleKey( spep_8-3 + 16, ctdogon, 2.11, 2.11 );
setEffScaleKey( spep_8-3 + 18, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_8-3 + 20, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_8-3 + 22, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_8-3 + 24, ctdogon, 2.14, 2.14 );

setEffRotateKey( spep_8-3 + 8, ctdogon, 13 );
setEffRotateKey( spep_8-3 + 24, ctdogon, 13 );

setEffAlphaKey( spep_8-3 + 8, ctdogon, 26 );
setEffAlphaKey( spep_8-3 + 10, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 24, ctdogon, 13 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 46, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );
changeAnime( spep_8-3 + 11, 1, 106 );
changeAnime( spep_8-3 + 12, 1, 108 );
changeAnime( spep_8-3 + 22, 1, 106 );

setMoveKey( spep_8 + 0, 1, 79.9, -70.2 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 79.9, -67.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 79.9, -65.2 , 0 );
setMoveKey( spep_8-3 + 6, 1, 79.9, -62.7 , 0 );
setMoveKey( spep_8-3 + 9, 1, 79.9, -60.2 , 0 );
setMoveKey( spep_8-3 + 11, 1, 59.9, -99.9 , 0 );
setMoveKey( spep_8-3 + 12, 1, 40.1, -159.8 , 0 );
setMoveKey( spep_8-3 + 14, 1, 40, -251.4 , 0 );
setMoveKey( spep_8-3 + 16, 1, 40, -343.1 , 0 );
setMoveKey( spep_8-3 + 18, 1, 40, -361.4 , 0 );
setMoveKey( spep_8-3 + 21, 1, 40.1, -379.8 , 0 );
setMoveKey( spep_8-3 + 22, 1, 39.9, -299.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, 39.9, -265.4 , 0 );
setMoveKey( spep_8-3 + 26, 1, 39.9, -246.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, 39.9, -232 , 0 );
setMoveKey( spep_8-3 + 30, 1, 39.9, -220.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, 39.9, -210.9 , 0 );
setMoveKey( spep_8-3 + 34, 1, 39.9, -202.6 , 0 );
setMoveKey( spep_8-3 + 36, 1, 39.9, -195.2 , 0 );
setMoveKey( spep_8-3 + 38, 1, 39.9, -188.5 , 0 );
setMoveKey( spep_8-3 + 40, 1, 39.9, -182.4 , 0 );
setMoveKey( spep_8-3 + 42, 1, 39.9, -176.9 , 0 );
setMoveKey( spep_8-3 + 44, 1, 39.9, -171.7 , 0 );
setMoveKey( spep_8-3 + 46, 1, 39.9, -166.8 , 0 );
setMoveKey( spep_8 + 46, 1, 39.9, -162 , 0 );

d=0.3;

setScaleKey( spep_8 + 0, 1, 1.6+d, 1.6+d );
setScaleKey( spep_8 + 46, 1, 1.6+d, 1.6+d );

setRotateKey( spep_8 + 0, 1, -40 );
setRotateKey( spep_8-3 + 9, 1, -40 );
setRotateKey( spep_8-3 + 11, 1, 35 );
setRotateKey( spep_8-3 + 12, 1, 75 );
setRotateKey( spep_8-3 + 21, 1, 75 );
setRotateKey( spep_8-3 + 22, 1, 25 );
setRotateKey( spep_8 + 46, 1, 25 );

--SE
--叩きつけ
SE029 = playSe( spep_8 + 0, 1189 );
SE030 = playSe( spep_8 + 4, 1009 );
SE031 = playSe( spep_8 + 4, 1187 );
setSeVolumeByWorkId( spep_8 + 4, SE031, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0,50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 46;
------------------------------------------------------
-- バストアップ、振向き
------------------------------------------------------
-- ** エフェクト等 ** --
spin = entryEffect( spep_9 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, spin, 0, 0, 0 );
setEffMoveKey( spep_9 + 86, spin, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, spin, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, spin, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, spin, 0 );
setEffRotateKey( spep_9 + 86, spin, 0 );
setEffAlphaKey( spep_9 + 0, spin, 255 );
setEffAlphaKey( spep_9 + 86, spin, 255 );
setEffAlphaKey( spep_9 + 87, spin, 0 );
setEffAlphaKey( spep_9 + 88, spin, 0 );

--SE
--ドヤァ
SE032 = playSe( spep_9 + 0, 1072,"",0.5 );
setSeVolumeByWorkId( spep_9 + 0, SE032, 110 );
setTimeStretch( SE032, 1.42, 20, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0,90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 86;
------------------------------------------------------
-- 後ろ回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_10 + 0, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 36, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 36, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kick2_f, 0 );
setEffRotateKey( spep_10 + 36, kick2_f, 0 );
setEffAlphaKey( spep_10 + 0, kick2_f, 255 );
setEffAlphaKey( spep_10 + 36, kick2_f, 255 );
setEffAlphaKey( spep_10 + 37, kick2_f, 0 );
setEffAlphaKey( spep_10 + 38, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_10 + 0, SP_16x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 36, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 36, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kick2_b, 0 );
setEffRotateKey( spep_10 + 36, kick2_b, 0 );
setEffAlphaKey( spep_10 + 0, kick2_b, 255 );
setEffAlphaKey( spep_10 + 36, kick2_b, 255 );
setEffAlphaKey( spep_10 + 37, kick2_b, 0 );
setEffAlphaKey( spep_10 + 38, kick2_b, 0 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10-3 + 32, 1, 0 );

changeAnime( spep_10 + 0, 1, 106 );
changeAnime( spep_10-3 + 12, 1, 108 );

setMoveKey( spep_10 + 0, 1, 39.9, -62 , 0 );
--setMoveKey( spep_10 + 2, 1, 39.9, -59.9 , 0 );
setMoveKey( spep_10-3 + 4, 1, 39.9, -57.9 , 0 );
setMoveKey( spep_10-3 + 6, 1, 39.9, -55.9 , 0 );
setMoveKey( spep_10-3 + 8, 1, 39.9, -53.9 , 0 );
setMoveKey( spep_10-3 + 11, 1, 39.9, -52 , 0 );
setMoveKey( spep_10-3 + 12, 1, 159.8, -42.1 , 0 );
setMoveKey( spep_10-3 + 14, 1, 198.8, -41.1 , 0 );
setMoveKey( spep_10-3 + 16, 1, 462.9, -11.1 , 0 );
setMoveKey( spep_10-3 + 18, 1, 516.6, -5.9 , 0 );
setMoveKey( spep_10-3 + 20, 1, 554.6, -2.2 , 0 );
setMoveKey( spep_10-3 + 22, 1, 584.2, 0.7 , 0 );
setMoveKey( spep_10-3 + 24, 1, 608.3, 3 , 0 );
setMoveKey( spep_10-3 + 26, 1, 628.1, 5 , 0 );
setMoveKey( spep_10-3 + 28, 1, 644.5, 6.6 , 0 );
setMoveKey( spep_10-3 + 30, 1, 658, 7.9 , 0 );
setMoveKey( spep_10-3 + 32, 1, 668.8, 8.9 , 0 );

setScaleKey( spep_10 + 0, 1, 1.6+d, 1.6+d );
setScaleKey( spep_10-3 + 32, 1, 1.6+d, 1.6+d );

setRotateKey( spep_10 + 0, 1, 25 );
setRotateKey( spep_10-3 + 11, 1, 25 );
setRotateKey( spep_10-3 + 12, 1, 0 );
setRotateKey( spep_10-3 + 32, 1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_10-3 + 14,  10020, 12, 0x100, -1, 0, 164.1, -54.5 );
setEffShake( spep_10-3 + 14, ctbaki, 12, 10 );
setEffMoveKey( spep_10-3 + 14, ctbaki, 164.1, -54.5 , 0 );
setEffMoveKey( spep_10-3 + 16, ctbaki, 144.3, -249.4 , 0 );
setEffMoveKey( spep_10-3 + 18, ctbaki, 148.7, -254.7 , 0 );
setEffMoveKey( spep_10-3 + 20, ctbaki, 149.1, -247.7 , 0 );
setEffMoveKey( spep_10-3 + 22, ctbaki, 148.2, -255.2 , 0 );
setEffMoveKey( spep_10-3 + 24, ctbaki, 144.3, -249.5 , 0 );
setEffMoveKey( spep_10-3 + 26, ctbaki, 148.3, -262.5 , 0 );

setEffScaleKey( spep_10-3 + 14, ctbaki, 0.84, 0.84 );
setEffScaleKey( spep_10-3 + 16, ctbaki, 2, 2 );
setEffScaleKey( spep_10-3 + 26, ctbaki, 2, 2 );

setEffRotateKey( spep_10-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_10-3 + 26, ctbaki, 0 );

setEffAlphaKey( spep_10-3 + 14, ctbaki, 26 );
setEffAlphaKey( spep_10-3 + 16, ctbaki, 255 );
setEffAlphaKey( spep_10-3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_10-3 + 26, ctbaki, 13 );

--SE
--蹴り
SE033 = playSe( spep_10 + 10, 1120 );

--白フェード
entryFade( spep_10 +34, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0,40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 40;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_11 + 0, 1, 1 );
changeAnime( spep_11 + 0, 1, 107 );
setMoveKey( spep_11 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_11 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_11 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_11 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_11 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_11 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_11 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_11 + 0, 1, 105 );
setRotateKey( spep_11 -3 + 4, 1, 240 );
setRotateKey( spep_11 -3 + 6, 1, 405 );
setRotateKey( spep_11 -3 + 8, 1, 600 );
setRotateKey( spep_11 -3 + 10, 1, 825 );
setRotateKey( spep_11 -3 + 12, 1, 1080 );
setRotateKey( spep_11 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_11 + 0, SP_17x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_11 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, bg, 0 );
setEffRotateKey( spep_11 + 100, bg, 0 );
setEffAlphaKey( spep_11 + 0, bg, 255 );
setEffAlphaKey( spep_11 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_11 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_11 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_11 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_11 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_11 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_11 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_11 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_11 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_11 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_11 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_11 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_11 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_11 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_11 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_11 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_11 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_11 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_11 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusenga, 0 );
setEffRotateKey( spep_11 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_11 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_11 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_11 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_11 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_11 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_11 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_11 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_11 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_11 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_11 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_11 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_11 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_11 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_11 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_11 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_11 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_11 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_11 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_11 + 14, ctga, 14, 20 );

setEffMoveKey( spep_11 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_11 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_11 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_11 + 14, ctga, -10.9 );
setEffRotateKey( spep_11 + 15, ctga, -10.9 );
setEffRotateKey( spep_11 + 16, ctga, -14.9 );
setEffRotateKey( spep_11 + 17, ctga, -14.9 );
setEffRotateKey( spep_11 + 18, ctga, -10.9 );
setEffRotateKey( spep_11 + 19, ctga, -10.9 );
setEffRotateKey( spep_11 + 20, ctga, -14.9 );
setEffRotateKey( spep_11 + 21, ctga, -14.9 );
setEffRotateKey( spep_11 + 22, ctga, -10.9 );
setEffRotateKey( spep_11 + 23, ctga, -10.9 );
setEffRotateKey( spep_11 + 24, ctga, -14.9 );
setEffRotateKey( spep_11 + 25, ctga, -14.9 );
setEffRotateKey( spep_11 + 26, ctga, -10.9 );
setEffRotateKey( spep_11 + 27, ctga, -10.9 );
setEffRotateKey( spep_11 + 28, ctga, -14.9 );
setEffRotateKey( spep_11 + 100, ctga, -14.9 );

setEffAlphaKey( spep_11 + 14, ctga, 255 );
setEffAlphaKey( spep_11 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_11 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_11 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_11 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_11 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_11 + 2, hibiware, 0 );
setEffRotateKey( spep_11 + 100, hibiware, 0 );

setEffAlphaKey( spep_11 + 2, hibiware, 0 );
setEffAlphaKey( spep_11 + 13, hibiware, 0 );
setEffAlphaKey( spep_11 + 14, hibiware, 255 );
setEffAlphaKey( spep_11 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--playSe( spep_11 + 0, 1023 );--爆発
playSe( spep_11 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_11 +10 );
endPhase( spep_11 + 98 );
end