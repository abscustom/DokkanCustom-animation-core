--1021170:ジーン_破壊神の切り札
--sp_effect_a9_00081

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
SP_01=	156947	;--	登場～気弾作成
SP_02=	156948	;--	セリフカットイン
SP_03=	156949	;--	敵に気弾をはなち、フィニッシュまで
SP_04=	156950	;--	敵に気弾をはなち、フィニッシュまで

--エフェクト(味方)
SP_01x=	156947	;--	登場～気弾作成	
SP_02x=	156948	;--	セリフカットイン	
SP_03x=	156951	;--	敵に気弾をはなち、フィニッシュまで	(敵)
SP_04x=	156952	;--	敵に気弾をはなち、フィニッシュまで	(敵)

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
-- 登場～気弾作成
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 146, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 144, beginning, 255 );
setEffAlphaKey( spep_0 + 145, beginning, 255 );
setEffAlphaKey( spep_0 + 146, beginning, 0 );

--SE
--手合わせる
SE001 = playSe( spep_0 + 14, 1003 );
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 76 );
SE004 = playSe( spep_0 + 28, 1006 );

--気弾溜め
SE005 = playSe( spep_0 + 60, 1200 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 60, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 61, SE005, 62.8 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 125.6 );
setSeVolumeByWorkId( spep_0 + 63, SE005, 188.4 );
setSeVolumeByWorkId( spep_0 + 64, SE005, 251 );
setStartTimeMs( SE005,  417 );
stopSe( spep_0 + 134, SE005, 22 );
SE006 = playSe( spep_0 + 60, 1276 );
setPitch( spep_0 + 60, SE006, -400 );
setTimeStretch( SE006, 0.73, 10, 1 );
stopSe( spep_0 + 78, SE006, 20 );
SE007 = playSe( spep_0 + 62, 1158 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 62, SE007, 59 );
SE008 = playSe( spep_0 + 70, 1214 );
SE009 = playSe( spep_0 + 70, 49 );
setSeVolumeByWorkId( spep_0 + 70, SE009, 79 );
SE010 = playSe( spep_0 + 104, 49 );
setSeVolumeByWorkId( spep_0 + 104, SE010, 79 );

--腕構える
SE011 = playSe( spep_0 + 120, 1003 );

--気弾溜め
SE012 = playSe( spep_0 + 138, 49 );
setSeVolumeByWorkId( spep_0 + 138, SE012, 79 );

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 104, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 104, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 104, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 104, tame, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );


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

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--気弾溜め
SE003 = playSe( spep_1 + 14, 1255 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 14, SE003, 0 );
setSeVolumeByWorkId( spep_1 + 15, SE003, 12.6 );
setSeVolumeByWorkId( spep_1 + 16, SE003, 25.2 );
setSeVolumeByWorkId( spep_1 + 17, SE003, 37.8 );
setSeVolumeByWorkId( spep_1 + 18, SE003, 50.4 );
setSeVolumeByWorkId( spep_1 + 19, SE003, 63 );
setSeVolumeByWorkId( spep_1 + 20, SE003, 75.6 );
setSeVolumeByWorkId( spep_1 + 21, SE003, 88.2 );
setSeVolumeByWorkId( spep_1 + 22, SE003, 100.8 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 113.4 );
setSeVolumeByWorkId( spep_1 + 24, SE003, 126 );
setStartTimeMs( SE003,  2317 );

--腕振り上げる
SE013 = playSe( spep_1 + 20, 1116 );
stopSe( spep_1 + 42, SE013, 12 );
SE014 = playSe( spep_1 + 24, 1004 );

--顔カットイン
SE015 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_1 + 96, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+104;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--気弾溜め
stopSe( spep_2 + 0, SE003, 0 );
stopSe( spep_2 + 8, SE007, 0 );
stopSe( spep_2 + 8, SE008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 敵に気弾をはなち、フィニッシュまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 106, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 66, 1, 105 );

setMoveKey( spep_3 + 0, 1, 346.7, -182.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339, -168 , 0 );
setMoveKey( spep_3-3 + 4, 1, 331.3, -153.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 323.6, -138.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 315.9, -123.7 , 0 );
setMoveKey( spep_3-3 + 10, 1, 308.2, -108.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 300.6, -94.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 292.8, -79.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 285.1, -64.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 277.5, -49.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 269.7, -35 , 0 );
setMoveKey( spep_3-3 + 22, 1, 262.1, -20.3 , 0 );
setMoveKey( spep_3-3 + 24, 1, 254.3, -5.5 , 0 );
setMoveKey( spep_3-3 + 26, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 246.6, -22.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 246.6, 49.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 246.6, -14.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 65, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 251.1, 29.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 252.9, 43.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 254.5, 29.3 , 0 );
setMoveKey( spep_3-3 + 72, 1, 248.1, 16.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 257.6, 29.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 280, 55 , 0 );
setMoveKey( spep_3-3 + 78, 1, 260.4, 29.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 249.6, -1.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 262.8, 29.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, 263.8, 29.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 264.8, 29.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 265.7, 29.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 266.5, 29.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, 267.2, 29.7 , 0 );
setMoveKey( spep_3-3 + 94, 1, 267.8, 29.8 , 0 );
setMoveKey( spep_3-3 + 96, 1, 268.3, 29.8 , 0 );
setMoveKey( spep_3-3 + 98, 1, 268.7, 29.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, 269, 29.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, 269.3, 29.8 , 0 );
setMoveKey( spep_3-3 + 104, 1, 269.4, 29.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 269.5, 29.8 , 0 );

setScaleKey( spep_3 + 0, 1,1,1);
--setScaleKey( spep_3-3 + 2, 1,1,1);
setScaleKey( spep_3-3 + 4, 1,0.93,0.93);
setScaleKey( spep_3-3 + 6, 1,0.93,0.93);
setScaleKey( spep_3-3 + 8, 1,0.87,0.87);
setScaleKey( spep_3-3 + 12, 1, 0.87,0.87);
setScaleKey( spep_3-3 + 14, 1, 0.8,0.8);
setScaleKey( spep_3-3 + 18, 1, 0.8,0.8);
setScaleKey( spep_3-3 + 20, 1, 0.73,0.73);
setScaleKey( spep_3-3 + 22, 1, 0.73,0.73);
setScaleKey( spep_3-3 + 24, 1, 0.67,0.67);
setScaleKey( spep_3-3 + 65, 1, 0.67,0.67);
setScaleKey( spep_3-3 + 66, 1, 0.72,0.72);
setScaleKey( spep_3-3 + 68, 1, 0.66,0.66);
setScaleKey( spep_3-3 + 70, 1, 0.6,0.6);
setScaleKey( spep_3-3 + 72, 1, 0.55,0.55);
setScaleKey( spep_3-3 + 74, 1, 0.5,0.5);
setScaleKey( spep_3-3 + 76, 1, 0.46,0.46);
setScaleKey( spep_3-3 + 78, 1, 0.42,0.42);
setScaleKey( spep_3-3 + 80, 1, 0.38,0.38);
setScaleKey( spep_3-3 + 82, 1, 0.34,0.34);
setScaleKey( spep_3-3 + 84, 1, 0.31,0.31);
setScaleKey( spep_3-3 + 86, 1, 0.27,0.27);
setScaleKey( spep_3-3 + 88, 1, 0.25,0.25);
setScaleKey( spep_3-3 + 90, 1, 0.22,0.22);
setScaleKey( spep_3-3 + 92, 1, 0.2,0.2);
setScaleKey( spep_3-3 + 94, 1, 0.19,0.19);
setScaleKey( spep_3-3 + 96, 1, 0.16,0.16);
setScaleKey( spep_3-3 + 98, 1, 0.15,0.15);
setScaleKey( spep_3-3 + 100, 1,0.14,0.14);
setScaleKey( spep_3-3 + 102, 1,0.14,0.14);
setScaleKey( spep_3-3 + 104, 1,0.13,0.13);
setScaleKey( spep_3-3 + 106, 1,0.13,0.13);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 106, 1, 0 );

--SE
--発車前溜め
SE016 = playSe( spep_3 + 0, 1255 );
setStartTimeMs( SE016,  2317 );
stopSe( spep_3 + 22, SE016, 10 );
SE018 = playSe( spep_3 + 0, 49 );

--気弾発射
SE019 = playSe( spep_3 + 24, 1027 );
setSeVolumeByWorkId( spep_3 + 24, SE019, 78 );
SE020 = playSe( spep_3 + 24, 1179 );
SE021 = playSe( spep_3 + 24, 1145 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 24, SE021, 73 );
SE022 = playSe( spep_3 + 24, 1177 ,"",0.6);
SE023 = playSe( spep_3 + 30, 1211 );
setSeVolumeByWorkId( spep_3 + 30, SE023, 83 );

--敵ヒット
SE024 = playSe( spep_3 + 58, 1021 );

--爆発
SE025 = playSe( spep_3 + 104, 1160 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 70 );
endPhase( spep_3 +170 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場～気弾作成
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, -1.0, 1.0 );
setEffScaleKey( spep_0 + 146, beginning, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 146, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 144, beginning, 255 );
setEffAlphaKey( spep_0 + 145, beginning, 255 );
setEffAlphaKey( spep_0 + 146, beginning, 0 );

--SE
--手合わせる
SE001 = playSe( spep_0 + 14, 1003 );
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 76 );
SE004 = playSe( spep_0 + 28, 1006 );

--気弾溜め
SE005 = playSe( spep_0 + 60, 1200 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 60, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 61, SE005, 62.8 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 125.6 );
setSeVolumeByWorkId( spep_0 + 63, SE005, 188.4 );
setSeVolumeByWorkId( spep_0 + 64, SE005, 251 );
setStartTimeMs( SE005,  417 );
stopSe( spep_0 + 134, SE005, 22 );
SE006 = playSe( spep_0 + 60, 1276 );
setPitch( spep_0 + 60, SE006, -400 );
setTimeStretch( SE006, 0.73, 10, 1 );
stopSe( spep_0 + 78, SE006, 20 );
SE007 = playSe( spep_0 + 62, 1158 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 62, SE007, 59 );
SE008 = playSe( spep_0 + 70, 1214 );
SE009 = playSe( spep_0 + 70, 49 );
setSeVolumeByWorkId( spep_0 + 70, SE009, 79 );
SE010 = playSe( spep_0 + 104, 49 );
setSeVolumeByWorkId( spep_0 + 104, SE010, 79 );

--腕構える
SE011 = playSe( spep_0 + 120, 1003 );

--気弾溜め
SE012 = playSe( spep_0 + 138, 49 );
setSeVolumeByWorkId( spep_0 + 138, SE012, 79 );

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 104, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 104, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 104, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 104, tame, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );


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

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--気弾溜め
SE003 = playSe( spep_1 + 14, 1255 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 14, SE003, 0 );
setSeVolumeByWorkId( spep_1 + 15, SE003, 12.6 );
setSeVolumeByWorkId( spep_1 + 16, SE003, 25.2 );
setSeVolumeByWorkId( spep_1 + 17, SE003, 37.8 );
setSeVolumeByWorkId( spep_1 + 18, SE003, 50.4 );
setSeVolumeByWorkId( spep_1 + 19, SE003, 63 );
setSeVolumeByWorkId( spep_1 + 20, SE003, 75.6 );
setSeVolumeByWorkId( spep_1 + 21, SE003, 88.2 );
setSeVolumeByWorkId( spep_1 + 22, SE003, 100.8 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 113.4 );
setSeVolumeByWorkId( spep_1 + 24, SE003, 126 );
setStartTimeMs( SE003,  2317 );

--腕振り上げる
SE013 = playSe( spep_1 + 20, 1116 );
stopSe( spep_1 + 42, SE013, 12 );
SE014 = playSe( spep_1 + 24, 1004 );

--顔カットイン
SE015 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_1 + 96, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+104;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--気弾溜め
stopSe( spep_2 + 0, SE003, 0 );
stopSe( spep_2 + 8, SE007, 0 );
stopSe( spep_2 + 8, SE008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 敵に気弾をはなち、フィニッシュまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 106, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 66, 1, 105 );

setMoveKey( spep_3 + 0, 1, 346.7, -182.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339, -168 , 0 );
setMoveKey( spep_3-3 + 4, 1, 331.3, -153.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 323.6, -138.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 315.9, -123.7 , 0 );
setMoveKey( spep_3-3 + 10, 1, 308.2, -108.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 300.6, -94.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 292.8, -79.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 285.1, -64.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 277.5, -49.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 269.7, -35 , 0 );
setMoveKey( spep_3-3 + 22, 1, 262.1, -20.3 , 0 );
setMoveKey( spep_3-3 + 24, 1, 254.3, -5.5 , 0 );
setMoveKey( spep_3-3 + 26, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 246.6, -22.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 246.6, 49.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 246.6, -14.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 65, 1, 246.6, 9.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 251.1, 29.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 252.9, 43.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 254.5, 29.3 , 0 );
setMoveKey( spep_3-3 + 72, 1, 248.1, 16.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 257.6, 29.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 280, 55 , 0 );
setMoveKey( spep_3-3 + 78, 1, 260.4, 29.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 249.6, -1.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 262.8, 29.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, 263.8, 29.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 264.8, 29.7 , 0 );
setMoveKey( spep_3-3 + 88, 1, 265.7, 29.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 266.5, 29.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, 267.2, 29.7 , 0 );
setMoveKey( spep_3-3 + 94, 1, 267.8, 29.8 , 0 );
setMoveKey( spep_3-3 + 96, 1, 268.3, 29.8 , 0 );
setMoveKey( spep_3-3 + 98, 1, 268.7, 29.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, 269, 29.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, 269.3, 29.8 , 0 );
setMoveKey( spep_3-3 + 104, 1, 269.4, 29.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 269.5, 29.8 , 0 );

setScaleKey( spep_3 + 0, 1,1,1);
--setScaleKey( spep_3-3 + 2, 1,1,1);
setScaleKey( spep_3-3 + 4, 1,0.93,0.93);
setScaleKey( spep_3-3 + 6, 1,0.93,0.93);
setScaleKey( spep_3-3 + 8, 1,0.87,0.87);
setScaleKey( spep_3-3 + 12, 1, 0.87,0.87);
setScaleKey( spep_3-3 + 14, 1, 0.8,0.8);
setScaleKey( spep_3-3 + 18, 1, 0.8,0.8);
setScaleKey( spep_3-3 + 20, 1, 0.73,0.73);
setScaleKey( spep_3-3 + 22, 1, 0.73,0.73);
setScaleKey( spep_3-3 + 24, 1, 0.67,0.67);
setScaleKey( spep_3-3 + 65, 1, 0.67,0.67);
setScaleKey( spep_3-3 + 66, 1, 0.72,0.72);
setScaleKey( spep_3-3 + 68, 1, 0.66,0.66);
setScaleKey( spep_3-3 + 70, 1, 0.6,0.6);
setScaleKey( spep_3-3 + 72, 1, 0.55,0.55);
setScaleKey( spep_3-3 + 74, 1, 0.5,0.5);
setScaleKey( spep_3-3 + 76, 1, 0.46,0.46);
setScaleKey( spep_3-3 + 78, 1, 0.42,0.42);
setScaleKey( spep_3-3 + 80, 1, 0.38,0.38);
setScaleKey( spep_3-3 + 82, 1, 0.34,0.34);
setScaleKey( spep_3-3 + 84, 1, 0.31,0.31);
setScaleKey( spep_3-3 + 86, 1, 0.27,0.27);
setScaleKey( spep_3-3 + 88, 1, 0.25,0.25);
setScaleKey( spep_3-3 + 90, 1, 0.22,0.22);
setScaleKey( spep_3-3 + 92, 1, 0.2,0.2);
setScaleKey( spep_3-3 + 94, 1, 0.19,0.19);
setScaleKey( spep_3-3 + 96, 1, 0.16,0.16);
setScaleKey( spep_3-3 + 98, 1, 0.15,0.15);
setScaleKey( spep_3-3 + 100, 1,0.14,0.14);
setScaleKey( spep_3-3 + 102, 1,0.14,0.14);
setScaleKey( spep_3-3 + 104, 1,0.13,0.13);
setScaleKey( spep_3-3 + 106, 1,0.13,0.13);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 106, 1, 0 );

--SE
--発車前溜め
SE016 = playSe( spep_3 + 0, 1255 );
setStartTimeMs( SE016,  2317 );
stopSe( spep_3 + 22, SE016, 10 );
SE018 = playSe( spep_3 + 0, 49 );

--気弾発射
SE019 = playSe( spep_3 + 24, 1027 );
setSeVolumeByWorkId( spep_3 + 24, SE019, 78 );
SE020 = playSe( spep_3 + 24, 1179 );
SE021 = playSe( spep_3 + 24, 1145 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 24, SE021, 73 );
SE022 = playSe( spep_3 + 24, 1177 ,"",0.6);
SE023 = playSe( spep_3 + 30, 1211 );
setSeVolumeByWorkId( spep_3 + 30, SE023, 83 );

--敵ヒット
SE024 = playSe( spep_3 + 58, 1021 );

--爆発
SE025 = playSe( spep_3 + 104, 1160 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 70 );
endPhase( spep_3 +170 );
end