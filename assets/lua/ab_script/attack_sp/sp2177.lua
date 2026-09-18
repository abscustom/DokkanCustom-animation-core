--1021940:超サイヤ人ベジータ(GT)_ギャリック砲（ドッカン後）
--sp_effect_a1_00295
--sp2177

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
SP_01= 157273 ;-- 冒頭〜気の解放
SP_02= 157274 ;-- 旋回して敵に気弾連撃：手前
SP_03= 157275 ;-- 旋回して敵に気弾連撃：奥
SP_04= 157276 ;-- 画面奥から突進
SP_05= 157277 ;-- 噴煙の中の敵を殴る：手前
SP_06= 157278 ;-- 噴煙の中の敵を殴る：奥
SP_07= 157279 ;-- 構え
SP_08= 157280 ;-- 発射：手前
SP_09= 157282 ;-- 発射：奥（敵味方共通）
SP_10= 157340 ;-- 旋回して敵に気弾連撃キャラ

--エフェクト(敵)
SP_01x= 157273 ;-- 冒頭〜気の解放 
SP_02x= 157274 ;-- 旋回して敵に気弾連撃：手前 
SP_03x= 157275 ;-- 旋回して敵に気弾連撃：奥 
SP_04x= 157276 ;-- 画面奥から突進 
SP_05x= 157277 ;-- 噴煙の中の敵を殴る：手前 
SP_06x= 157278 ;-- 噴煙の中の敵を殴る：奥 
SP_07x= 157279 ;-- 構え 
SP_08x= 157281 ;-- 発射：手前 (敵)
SP_09x= 157282 ;-- 発射：奥（敵味方共通） 
SP_10x= 157340 ;-- 旋回して敵に気弾連撃キャラ
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
-- 冒頭〜気の解放
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 92, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 92, beginning, 255 );
setEffAlphaKey( spep_0 + 93, beginning, 0 );
setEffAlphaKey( spep_0 + 94, beginning, 0 );

--SE
--力む
SE001 = playSe( spep_0 + 0, 1233 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 25 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 50 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 75 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 100 );
setStartTimeMs( SE001,  117 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 );
SE002 = playSe( spep_0 + 6, 1203 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 6, SE002, 126 );
setPitch( spep_0 + 6, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );
stopSe( spep_0 + 34, SE002, 10 );
SE003 = playSe( spep_0 + 6, 1294 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 6, SE003, 141 );
setPitch( spep_0 + 6, SE003, -800 );
setTimeStretch( SE003, 0.47, 10, 1 );
stopSe( spep_0 + 36, SE003, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE001, 0 );


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
--気ダメ
SE004 = playSe( spep_0 + 36, 1035 );

--白フェード
entryFade( spep_0 + 84, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
------------------------------------------------------
-- 旋回して敵に気弾連撃
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_f, 0 );
setEffRotateKey( spep_1 + 96, kidan_f, 0 );
setEffAlphaKey( spep_1 + 0, kidan_f, 255 );
setEffAlphaKey( spep_1 + 94, kidan_f, 255 );
setEffAlphaKey( spep_1 + 95, kidan_f, 255 );
setEffAlphaKey( spep_1 + 96, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_c = entryEffect( spep_1 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_c, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_c, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_c, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_c, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_c, 0 );
setEffRotateKey( spep_1 + 96, kidan_c, 0 );
setEffAlphaKey( spep_1 + 0, kidan_c, 255 );
setEffAlphaKey( spep_1 + 94, kidan_c, 255 );
setEffAlphaKey( spep_1 + 95, kidan_c, 255 );
setEffAlphaKey( spep_1 + 96, kidan_c, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_b, 0 );
setEffRotateKey( spep_1 + 96, kidan_b, 0 );
setEffAlphaKey( spep_1 + 0, kidan_b, 255 );
setEffAlphaKey( spep_1 + 94, kidan_b, 255 );
setEffAlphaKey( spep_1 + 95, kidan_b, 255 );
setEffAlphaKey( spep_1 + 96, kidan_b, 0 );

--文字エントリー
ctzubababa = entryEffectLife( spep_1-3 + 66,  10015, 32, 0x100, -1, 0, -52.7, 129.4 );--ズバババッ
setEffShake( spep_1-3 + 66, ctzubababa, 32, 10 );
setEffMoveKey( spep_1-3 + 66, ctzubababa, -52.7, 129.4 , 0 );
setEffMoveKey( spep_1-3 + 68, ctzubababa, -57.9, 132.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 72, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 74, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 76, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 92, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzubababa, -54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzubababa, -59, 132 , 0 );
setEffMoveKey( spep_1-3 + 98, ctzubababa, -54.8, 127.8 , 0 );

setEffScaleKey( spep_1-3 + 66, ctzubababa,2.01,2.01);
setEffScaleKey( spep_1-3 + 68, ctzubababa,2.05,2.05);
setEffScaleKey( spep_1-3 + 70, ctzubababa,2.12,2.12);
setEffScaleKey( spep_1-3 + 98, ctzubababa,2.12,2.12);

setEffRotateKey( spep_1-3 + 66, ctzubababa, 17.1 );
setEffRotateKey( spep_1-3 + 98, ctzubababa, 17.1 );

setEffAlphaKey( spep_1-3 + 66, ctzubababa, 85 );
setEffAlphaKey( spep_1-3 + 68, ctzubababa, 170 );
setEffAlphaKey( spep_1-3 + 70, ctzubababa, 255 );
setEffAlphaKey( spep_1-3 + 98, ctzubababa, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 100.6, 13.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 124.1, 13.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 147.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, 171, 13.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, 194.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 10, 1, 217.9, 13.2 , 0 );
setMoveKey( spep_1-3 + 12, 1, 241.4, 13.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 264.8, 13.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 279.1, 13.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 293.3, 13.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 307.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 321.7, 13.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 336, 13.2 , 0 );
setMoveKey( spep_1-1 + 26, 1, 350.2, 13.2 , 0 );

setScaleKey( spep_1 + 0, 1, 0.52,0.52);
setScaleKey( spep_1-3 + 4, 1, 0.54,0.54);
setScaleKey( spep_1-3 + 6, 1, 0.55,0.55);
setScaleKey( spep_1-3 + 8, 1, 0.55,0.55);
setScaleKey( spep_1-3 + 10, 1,0.57,0.57);
setScaleKey( spep_1-3 + 12, 1,0.57,0.57);
setScaleKey( spep_1-3 + 14, 1,0.58,0.58);
setScaleKey( spep_1-3 + 16, 1,0.58,0.58);
setScaleKey( spep_1-3 + 18, 1,0.6,0.6);
setScaleKey( spep_1-3 + 20, 1,0.6,0.6);
setScaleKey( spep_1-3 + 22, 1,0.61,0.61);
setScaleKey( spep_1-3 + 24, 1,0.61,0.61);
setScaleKey( spep_1-1 + 26, 1,0.63,0.63);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 26, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 40, 1, 1);
setDisp( spep_1-1 + 98, 1, 0);

changeAnime( spep_1-3 + 40, 1, 104);

setMoveKey( spep_1-3 + 40, 1, 854.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, 823.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 44, 1, 793.5, 14.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, 763.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, 732.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 702.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 671.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 641.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 56, 1, 611, 14.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, 580.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 550.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 62, 1, 519.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 64, 1, 489.3, 14.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 458.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 428.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 70, 1, 398, 14.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, 367.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, 337.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 306.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, 303.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, 299.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 296.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 292.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, 289, 14.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 285.5, 14.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 281.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 278.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, 274.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 96, 1, 271.3, 14.7 , 0 );
setMoveKey( spep_1-1 + 98, 1, 267.8, 14.7 , 0 );

setScaleKey( spep_1-3 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_1-1 + 98, 1, 0.7, 0.7 );

setRotateKey( spep_1-3 + 40, 1, 0 );
setRotateKey( spep_1-1 + 98, 1, 0 );

--SE
--ダッシュで奥へいく
SE005 = playSe( spep_1 + 0, 1182 );
SE006 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE006, 75 );
SE007 = playSe( spep_1 + 0, 1167 );
setSeVolumeByWorkId( spep_1 + 0, SE007, 43 );
SE008 = playSe( spep_1 + 8, 1277 );

--連続気弾
SE009 = playSe( spep_1 + 64, 1016 );
SE010 = playSe( spep_1 + 70, 1016 );
SE011 = playSe( spep_1 + 74, 1011 );
SE012 = playSe( spep_1 + 78, 1016 );
SE013 = playSe( spep_1 + 78, 1023 );
setSeVolumeByWorkId( spep_1 + 78, SE013, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
-- 画面奥から突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, rush_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 86, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 84, rush_f, 255 );
setEffAlphaKey( spep_2 + 85, rush_f, 255 );
setEffAlphaKey( spep_2 + 86, rush_f, 0 );

--手前にダッシュしてくる
SE014 = playSe( spep_2 + 0, 1182 );
SE015 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 82 );
stopSe( spep_2 + 54, SE015, 18 );
SE016 = playSe( spep_2 + 0, 1314 );
setSeVolumeByWorkId( spep_2 + 0, SE016, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE016, 2.1 );
setSeVolumeByWorkId( spep_2 + 2, SE016, 4.2 );
setSeVolumeByWorkId( spep_2 + 3, SE016, 6.3 );
setSeVolumeByWorkId( spep_2 + 4, SE016, 8.4 );
setSeVolumeByWorkId( spep_2 + 5, SE016, 10.5 );
setSeVolumeByWorkId( spep_2 + 6, SE016, 12.6 );
setSeVolumeByWorkId( spep_2 + 7, SE016, 14.7 );
setSeVolumeByWorkId( spep_2 + 8, SE016, 16.8 );
setSeVolumeByWorkId( spep_2 + 9, SE016, 18.9 );
setSeVolumeByWorkId( spep_2 + 10, SE016, 21 );
setSeVolumeByWorkId( spep_2 + 11, SE016, 23.1 );
setSeVolumeByWorkId( spep_2 + 12, SE016, 25.2 );
setSeVolumeByWorkId( spep_2 + 13, SE016, 27.3 );
setSeVolumeByWorkId( spep_2 + 14, SE016, 29.4 );
setSeVolumeByWorkId( spep_2 + 15, SE016, 31.5 );
setSeVolumeByWorkId( spep_2 + 16, SE016, 33.6 );
setSeVolumeByWorkId( spep_2 + 17, SE016, 35.7 );
setSeVolumeByWorkId( spep_2 + 18, SE016, 37.8 );
setSeVolumeByWorkId( spep_2 + 19, SE016, 39.9 );
setSeVolumeByWorkId( spep_2 + 20, SE016, 42 );
setSeVolumeByWorkId( spep_2 + 21, SE016, 44.1 );
setSeVolumeByWorkId( spep_2 + 22, SE016, 46.2 );
setSeVolumeByWorkId( spep_2 + 23, SE016, 48.3 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 50.4 );
setSeVolumeByWorkId( spep_2 + 25, SE016, 52.5 );
setSeVolumeByWorkId( spep_2 + 26, SE016, 54.6 );
setSeVolumeByWorkId( spep_2 + 27, SE016, 56.7 );
setSeVolumeByWorkId( spep_2 + 28, SE016, 58.8 );
setSeVolumeByWorkId( spep_2 + 29, SE016, 60.9 );
setSeVolumeByWorkId( spep_2 + 30, SE016, 63 );
setSeVolumeByWorkId( spep_2 + 31, SE016, 65.1 );
setSeVolumeByWorkId( spep_2 + 32, SE016, 67.2 );
setSeVolumeByWorkId( spep_2 + 33, SE016, 69.3 );
setSeVolumeByWorkId( spep_2 + 34, SE016, 71.4 );
setSeVolumeByWorkId( spep_2 + 35, SE016, 73.5 );
setSeVolumeByWorkId( spep_2 + 36, SE016, 75.6 );
setSeVolumeByWorkId( spep_2 + 37, SE016, 77.7 );
setSeVolumeByWorkId( spep_2 + 38, SE016, 79.8 );
setSeVolumeByWorkId( spep_2 + 39, SE016, 81.9 );
setSeVolumeByWorkId( spep_2 + 40, SE016, 84 );
setSeVolumeByWorkId( spep_2 + 41, SE016, 86.1 );
setSeVolumeByWorkId( spep_2 + 42, SE016, 88.2 );
setSeVolumeByWorkId( spep_2 + 43, SE016, 90.3 );
setSeVolumeByWorkId( spep_2 + 44, SE016, 92.4 );
setSeVolumeByWorkId( spep_2 + 45, SE016, 94.5 );
setSeVolumeByWorkId( spep_2 + 46, SE016, 96.6 );
setSeVolumeByWorkId( spep_2 + 47, SE016, 98.7 );
setSeVolumeByWorkId( spep_2 + 48, SE016, 100.8 );
SE018 = playSe( spep_2 + 44, 1116 );
stopSe( spep_2 + 70, SE018, 22 );
SE019 = playSe( spep_2 + 54, 9 );
setSeVolumeByWorkId( spep_2 + 54, SE019, 94 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
-- 噴煙の中の敵を殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 112, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 110, panting_f, 255 );
setEffAlphaKey( spep_3 + 111, panting_f, 255 );
setEffAlphaKey( spep_3 + 112, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 112, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 110, panting_b, 255 );
setEffAlphaKey( spep_3 + 111, panting_b, 255 );
setEffAlphaKey( spep_3 + 112, panting_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 64,  10020, 18, 0x100, -1, 0, -153.2, 240.3 );--バキッ
setEffShake( spep_3-3 + 64, ctbaki, 18, 10 );
setEffMoveKey( spep_3-3 + 64, ctbaki, -153.2, 240.3 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbaki, -97.2, 350.3 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbaki, -140.9, 348.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbaki, -134.5, 323.6 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbaki, -112.7, 337.3 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbaki, -150.1, 328 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbaki, -119.1, 330.6 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbaki, -143, 324.2 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbaki, -117.2, 321.3 , 0 );
setEffMoveKey( spep_3-3 + 82, ctbaki, -129.7, 314.5 , 0 );

setEffScaleKey( spep_3-3 + 64, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 66, ctbaki, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 68, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 70, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 72, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_3-3 + 74, ctbaki, 2, 2 );
setEffScaleKey( spep_3-3 + 76, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_3-3 + 78, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_3-3 + 80, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3-3 + 82, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_3-3 + 64, ctbaki, -16.8 );
setEffRotateKey( spep_3-3 + 82, ctbaki, -16.8 );

--敵の動き
setDisp( spep_3-3 + 38, 1, 1);
setDisp( spep_3-1 + 114, 1, 0);

changeAnime( spep_3-3 + 38, 1, 106);
changeAnime( spep_3-3 + 64, 1, 5);

setMoveKey( spep_3-3 + 38, 1, 0.1, 0.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 0, 0.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 0, 0.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 0, 0.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, 0, 0.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_3-3 + 49, 1, 0, 0 , 0 );
setMoveKey( spep_3-3 + 50, 1, 3.9, 7.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 3.9, 7.8 , 0 );
setMoveKey( spep_3-3 + 63, 1, 3.9, 7.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, -35.8, 164.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 25.9, 164.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, -11.6, 164.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, -8.7, 149.4 , 0 );
setMoveKey( spep_3-3 + 72, 1, 18.9, 165 , 0 );
setMoveKey( spep_3-3 + 74, 1, -21.4, 165 , 0 );
setMoveKey( spep_3-3 + 76, 1, 12.8, 165 , 0 );
setMoveKey( spep_3-3 + 78, 1, -18.3, 165 , 0 );
setMoveKey( spep_3-3 + 80, 1, 6.6, 163.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, -16.8, 166.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, 5, 165 , 0 );
setMoveKey( spep_3-3 + 86, 1, -6, 168.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, 0.4, 166.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, -2.8, 169.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, 2, 168.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, -2.8, 171.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, 2, 169.8 , 0 );
setMoveKey( spep_3-3 + 98, 1, -1.2, 171.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, 3.6, 169.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, 0.4, 171.4 , 0 );
setMoveKey( spep_3-3 + 104, 1, 0.4, 171.4 , 0 );
setMoveKey( spep_3-3 + 106, 1, 0.4, 171.5 , 0 );
setMoveKey( spep_3-1 + 114, 1, 0.4, 171.5 , 0 );

setScaleKey( spep_3-3 + 38, 1,1.62,1.62);
setScaleKey( spep_3-3 + 40, 1,1.77,1.77);
setScaleKey( spep_3-3 + 42, 1,1.94,1.94);
setScaleKey( spep_3-3 + 44, 1,2.1,2.1);
setScaleKey( spep_3-3 + 46, 1,2.25,2.25);
setScaleKey( spep_3-3 + 48, 1,2.41,2.41);
setScaleKey( spep_3-3 + 49, 1,2.41,2.41);
setScaleKey( spep_3-3 + 50, 1,4.44,4.44);
setScaleKey( spep_3-3 + 52, 1,4.5,4.5);
setScaleKey( spep_3-3 + 54, 1,4.56,4.56);
setScaleKey( spep_3-3 + 56, 1,4.62,4.62);
setScaleKey( spep_3-3 + 58, 1,4.68,4.68);
setScaleKey( spep_3-3 + 60, 1,4.74,4.74);
setScaleKey( spep_3-3 + 62, 1,4.8,4.8);
setScaleKey( spep_3-3 + 63, 1,4.8,4.8);

setScaleKey( spep_3-3 + 64, 1,2.88,2.88);
setScaleKey( spep_3-3 + 66, 1,2.26,2.26);
setScaleKey( spep_3-3 + 68, 1,1.65,1.65);
setScaleKey( spep_3-3 + 70, 1,1.04,1.04);
setScaleKey( spep_3-3 + 72, 1,0.43,0.43);
setScaleKey( spep_3-3 + 74, 1,0.42,0.42);
setScaleKey( spep_3-3 + 76, 1,0.4,0.4);
setScaleKey( spep_3-3 + 78, 1,0.4,0.4);
setScaleKey( spep_3-3 + 80, 1,0.39,0.39);
setScaleKey( spep_3-3 + 82, 1,0.38,0.38);
setScaleKey( spep_3-3 + 84, 1,0.37,0.37);
setScaleKey( spep_3-3 + 86, 1,0.37,0.37);
setScaleKey( spep_3-3 + 88, 1,0.36,0.36);
setScaleKey( spep_3-3 + 90, 1,0.34,0.34);
setScaleKey( spep_3-3 + 92, 1,0.33,0.33);
setScaleKey( spep_3-3 + 94, 1,0.33,0.33);
setScaleKey( spep_3-3 + 96, 1,0.32,0.32);
setScaleKey( spep_3-3 + 98, 1,0.31,0.31);
setScaleKey( spep_3-3 + 100, 1,0.3,0.3);
setScaleKey( spep_3-3 + 102, 1,0.3,0.3);
setScaleKey( spep_3-3 + 104, 1,0.28,0.28);
setScaleKey( spep_3-3 + 106, 1,0.27,0.27);
setScaleKey( spep_3-3 + 108, 1,0.26,0.26);
setScaleKey( spep_3-3 + 110, 1,0.26,0.26);
setScaleKey( spep_3-3 + 112, 1,0.25,0.25);
setScaleKey( spep_3-1 + 114, 1,0.24,0.24);

setRotateKey( spep_3-3 + 38, 1, -50 );
setRotateKey( spep_3-3 + 63, 1, -50 );
setRotateKey( spep_3-3 + 64, 1, 0 );
setRotateKey( spep_3-1 + 114, 1, 0 );

--SE
--手前にダッシュしてくる
stopSe( spep_3 + 70, SE016, 26 );
stopSe( spep_3 + 4, SE019, 8 );

--爆発してズーム
SE017 = playSe( spep_3 + 0, 1069 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 1, SE017, 11.3 );
setSeVolumeByWorkId( spep_3 + 2, SE017, 22.6 );
setSeVolumeByWorkId( spep_3 + 3, SE017, 33.9 );
setSeVolumeByWorkId( spep_3 + 4, SE017, 45.2 );
setSeVolumeByWorkId( spep_3 + 5, SE017, 56.5 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 67.8 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 79.1 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 90.4 );
setSeVolumeByWorkId( spep_3 + 9, SE017, 101.7 );
setSeVolumeByWorkId( spep_3 + 10, SE017, 113 );
setSeVolumeByWorkId( spep_3 + 11, SE017, 124.3 );
setSeVolumeByWorkId( spep_3 + 12, SE017, 135.6 );
setSeVolumeByWorkId( spep_3 + 13, SE017, 146.9 );
setSeVolumeByWorkId( spep_3 + 14, SE017, 158 );
stopSe( spep_3 + 124, SE017, 0 );
setStartTimeMs( SE017,  900 );
SE020 = playSe( spep_3 + 8, 1183 );
stopSe( spep_3 + 70, SE020, 28 );
SE021 = playSe( spep_3 + 12, 20 );
setSeVolumeByWorkId( spep_3 + 12, SE021, 112 );
stopSe( spep_3 + 124, SE021, 0 );

--パンチ
SE022 = playSe( spep_3 + 62, 1003 );
SE023 = playSe( spep_3 + 68, 1120 );
SE024 = playSe( spep_3 + 68, 1027 );
setSeVolumeByWorkId( spep_3 + 68, SE024, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+112;
------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 190, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 190, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 190, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +98;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE025 = playSe( spep_4 + 0, 1036 );
setSeVolumeByWorkId( spep_4 + 0, SE025, 50 );

--振りかぶる
SE026 = playSe( spep_4 + 6, 1004 );
setPitch( spep_4 + 6, SE026, -300 );
setTimeStretch( SE026, 0.93, 10, 1 );

--オーラ
SE027 = playSe( spep_4 + 24, 1036 );
setSeVolumeByWorkId( spep_4 + 24, SE027, 50 );
SE028 = playSe( spep_4 + 48, 1036 );
setSeVolumeByWorkId( spep_4 + 48, SE028, 50 );

--構える
SE029 = playSe( spep_4 + 64, 1233 );

--オーラ
SE030 = playSe( spep_4 + 72, 1036 );
setSeVolumeByWorkId( spep_4 + 72, SE030, 50 );

--構える
SE031 = playSe( spep_4 + 72, 1003 );
setSeVolumeByWorkId( spep_4 + 72, SE031, 76 );
SE032 = playSe( spep_4 + 74, 1006 );
setSeVolumeByWorkId( spep_4 + 74, SE032, 83 );

--オーラ
SE033 = playSe( spep_4 + 96, 1036 );
setSeVolumeByWorkId( spep_4 + 96, SE033, 50 );

--力む
SE034 = playSe( spep_4 + 104, 1233 );
setPitch( spep_4 + 104, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--顔カットイン
SE035 = playSe( spep_x + 12, 1018 );

--力む
SE036 = playSe( spep_4 + 116, 1250 );
setSeVolumeByWorkId( spep_4 + 116, SE036, 251 );
stopSe( spep_4 + 178, SE036, 14 );
setPitch( spep_4 + 116, SE036, -1200 );
setTimeStretch( SE036, 0.2, 10, 1 );
SE037 = playSe( spep_4 + 116, 1294 );
setSeVolumeByWorkId( spep_4 + 116, SE037, 316 );

--オーラ
SE038 = playSe( spep_4 + 120, 1036 );
setSeVolumeByWorkId( spep_4 + 120, SE038, 50 );
SE039 = playSe( spep_4 + 144, 1036 );
setSeVolumeByWorkId( spep_4 + 144, SE039, 50 );
SE040 = playSe( spep_4 + 168, 1036 );
setSeVolumeByWorkId( spep_4 + 168, SE040, 50 );


--白フェード
entryFade( spep_4 + 182, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+190;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_5 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 260, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 260, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 260, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 260, hit_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_6-3 + 30,  10012, 52, 0x100, -1, 0, -42, 396.5 );--ズオッ
setEffShake( spep_6-3 + 30, ctzuo, 52, 10 );
setEffMoveKey( spep_6-3 + 30, ctzuo, -42, 396.5 , 0 );
setEffMoveKey( spep_6-3 + 32, ctzuo, -46.9, 394.4 , 0 );
setEffMoveKey( spep_6-3 + 34, ctzuo, -35.4, 393.7 , 0 );
setEffMoveKey( spep_6-3 + 36, ctzuo, -45.8, 404.4 , 0 );
setEffMoveKey( spep_6-3 + 38, ctzuo, -38.7, 392.1 , 0 );
setEffMoveKey( spep_6-3 + 40, ctzuo, -45.7, 403.5 , 0 );
setEffMoveKey( spep_6-3 + 42, ctzuo, -37, 392.2 , 0 );
setEffMoveKey( spep_6-3 + 44, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 46, ctzuo, -39.2, 386.8 , 0 );
setEffMoveKey( spep_6-3 + 48, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_6-3 + 50, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_6-3 + 52, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_6-3 + 54, ctzuo, -39.5, 387.8 , 0 );
setEffMoveKey( spep_6-3 + 56, ctzuo, -42.6, 405.9 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzuo, -44.8, 388.9 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzuo, -36.4, 403.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzuo, -43.6, 391.7 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzuo, -33.6, 398.7 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzuo, -46.5, 394.4 , 0 );
setEffMoveKey( spep_6-3 + 68, ctzuo, -35.7, 402.4 , 0 );
setEffMoveKey( spep_6-3 + 70, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 72, ctzuo, -39.1, 386.8 , 0 );
setEffMoveKey( spep_6-3 + 74, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_6-3 + 76, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_6-3 + 78, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_6-3 + 82, ctzuo, -39.5, 387.8 , 0 );

setEffScaleKey( spep_6-3 + 30, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_6-3 + 82, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_6-3 + 30, ctzuo, 30 );
setEffRotateKey( spep_6-3 + 82, ctzuo, 30 );

setEffAlphaKey( spep_6-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 72, ctzuo, 213 );
setEffAlphaKey( spep_6-3 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6-3 + 76, ctzuo, 128 );
setEffAlphaKey( spep_6-3 + 78, ctzuo, 85 );
setEffAlphaKey( spep_6-3 + 80, ctzuo, 42 );
setEffAlphaKey( spep_6-3 + 82, ctzuo, 0 );

--敵の動き
setDisp( spep_6-3 + 102, 1, 1);
setDisp( spep_6-1 + 136, 1, 0);

changeAnime( spep_6-3 + 102, 1, 105);

setMoveKey( spep_6-3 + 102, 1, -49, 127.4 , 0 );
setMoveKey( spep_6-3 + 104, 1, -20.9, 95.7 , 0 );
setMoveKey( spep_6-3 + 106, 1, 4.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 108, 1, 26.5, 42.3 , 0 );
setMoveKey( spep_6-3 + 110, 1, 45.7, 20.6 , 0 );
setMoveKey( spep_6-3 + 112, 1, 62, 2.3 , 0 );
setMoveKey( spep_6-3 + 114, 1, 67, -0.8 , 0 );
setMoveKey( spep_6-3 + 116, 1, 71.7, -3.6 , 0 );
setMoveKey( spep_6-3 + 118, 1, 75.9, -6.1 , 0 );
setMoveKey( spep_6-3 + 120, 1, 79.7, -8.4 , 0 );
setMoveKey( spep_6-3 + 122, 1, 83, -10.4 , 0 );
setMoveKey( spep_6-3 + 124, 1, 85.9, -12.2 , 0 );
setMoveKey( spep_6-3 + 126, 1, 88.3, -13.6 , 0 );
setMoveKey( spep_6-3 + 128, 1, 90.3, -14.8 , 0 );
setMoveKey( spep_6-3 + 130, 1, 91.9, -15.8 , 0 );
setMoveKey( spep_6-3 + 132, 1, 93, -16.5 , 0 );
setMoveKey( spep_6-3 + 134, 1, 93.6, -16.9 , 0 );
setMoveKey( spep_6-1 + 136, 1, 93.5, -16.7 , 0 );

setScaleKey( spep_6-3 + 102, 1, 2.3, 2.3 );
setScaleKey( spep_6-3 + 104, 1, 1.87, 1.87 );
setScaleKey( spep_6-3 + 106, 1, 1.48, 1.48 );
setScaleKey( spep_6-3 + 108, 1, 1.14, 1.14 );
setScaleKey( spep_6-3 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 112, 1, 0.6, 0.6 );
setScaleKey( spep_6-3 + 114, 1, 0.57, 0.57 );
setScaleKey( spep_6-3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_6-3 + 118, 1, 0.51, 0.51 );
setScaleKey( spep_6-3 + 120, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 122, 1, 0.47, 0.47 );
setScaleKey( spep_6-3 + 124, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 126, 1, 0.43, 0.43 );
setScaleKey( spep_6-3 + 128, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 130, 1, 0.41, 0.41 );
setScaleKey( spep_6-1 + 136, 1, 0.4, 0.4 );

setRotateKey( spep_6-3 + 102, 1, 0 );
setRotateKey( spep_6-1 + 136, 1, 0 );

--SE
--ファイナルフラッシュ発射
SE042 = playSe( spep_6 + 14, 20 );
setSeVolumeByWorkId( spep_6 + 14, SE042, 88 );
SE043 = playSe( spep_6 + 14, 1188 );
setSeVolumeByWorkId( spep_6 + 14, SE043, 78 );
SE044 = playSe( spep_6 + 16, 1213 );
setSeVolumeByWorkId( spep_6 + 16, SE044, 82 );
stopSe( spep_6 + 142, SE044, 10 );

--気弾飛んでいく
SE045 = playSe( spep_6 + 82, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_6 + 82, SE045, 0 );
setSeVolumeByWorkId( spep_6 + 83, SE045, 5 );
setSeVolumeByWorkId( spep_6 + 84, SE045, 10 );
setSeVolumeByWorkId( spep_6 + 85, SE045, 15 );
setSeVolumeByWorkId( spep_6 + 86, SE045, 20 );
setSeVolumeByWorkId( spep_6 + 87, SE045, 25 );
setSeVolumeByWorkId( spep_6 + 88, SE045, 30 );
setSeVolumeByWorkId( spep_6 + 89, SE045, 35 );
setSeVolumeByWorkId( spep_6 + 90, SE045, 40 );
setSeVolumeByWorkId( spep_6 + 91, SE045, 45 );
setSeVolumeByWorkId( spep_6 + 92, SE045, 50 );
setSeVolumeByWorkId( spep_6 + 93, SE045, 55 );
setSeVolumeByWorkId( spep_6 + 94, SE045, 60 );
setSeVolumeByWorkId( spep_6 + 95, SE045, 65 );
setSeVolumeByWorkId( spep_6 + 96, SE045, 70 );
setSeVolumeByWorkId( spep_6 + 97, SE045, 75 );
setSeVolumeByWorkId( spep_6 + 98, SE045, 80 );
setSeVolumeByWorkId( spep_6 + 99, SE045, 85 );
setSeVolumeByWorkId( spep_6 + 100, SE045, 90 );
setSeVolumeByWorkId( spep_6 + 101, SE045, 95 );
setSeVolumeByWorkId( spep_6 + 102, SE045, 100 );
stopSe( spep_6 + 140, SE045, 10 );
setStartTimeMs( SE045,  833 );
SE046 = playSe( spep_6 + 96, 1241 ,"",0.6);
setSeVolumeByWorkId( spep_6 + 96, SE046, 117 );
stopSe( spep_6 + 142, SE046, 8 );

--爆発
SE047 = playSe( spep_6 + 138, 1024 );
setSeVolumeByWorkId( spep_6 + 138, SE047, 76 );
SE048 = playSe( spep_6 + 138, 1159 );
setSeVolumeByWorkId( spep_6 + 138, SE048, 87 );
SE049 = playSe( spep_6 + 138, 1068 );
setSeVolumeByWorkId( spep_6 + 138, SE049, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +150 );
endPhase( spep_6 + 250 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜気の解放
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, -1.0, 1.0 );
setEffScaleKey( spep_0 + 92, beginning, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 92, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 92, beginning, 255 );
setEffAlphaKey( spep_0 + 93, beginning, 0 );
setEffAlphaKey( spep_0 + 94, beginning, 0 );

--SE
--力む
SE001 = playSe( spep_0 + 0, 1233 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 25 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 50 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 75 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 100 );
setStartTimeMs( SE001,  117 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 );
SE002 = playSe( spep_0 + 6, 1203 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 6, SE002, 126 );
setPitch( spep_0 + 6, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );
stopSe( spep_0 + 34, SE002, 10 );
SE003 = playSe( spep_0 + 6, 1294 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 6, SE003, 141 );
setPitch( spep_0 + 6, SE003, -800 );
setTimeStretch( SE003, 0.47, 10, 1 );
stopSe( spep_0 + 36, SE003, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE001, 0 );


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
--気ダメ
SE004 = playSe( spep_0 + 36, 1035 );

--白フェード
entryFade( spep_0 + 84, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
------------------------------------------------------
-- 旋回して敵に気弾連撃
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_f, 0 );
setEffRotateKey( spep_1 + 96, kidan_f, 0 );
setEffAlphaKey( spep_1 + 0, kidan_f, 255 );
setEffAlphaKey( spep_1 + 94, kidan_f, 255 );
setEffAlphaKey( spep_1 + 95, kidan_f, 255 );
setEffAlphaKey( spep_1 + 96, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_c = entryEffect( spep_1 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_c, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_c, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_c, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_c, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_c, 0 );
setEffRotateKey( spep_1 + 96, kidan_c, 0 );
setEffAlphaKey( spep_1 + 0, kidan_c, 255 );
setEffAlphaKey( spep_1 + 94, kidan_c, 255 );
setEffAlphaKey( spep_1 + 95, kidan_c, 255 );
setEffAlphaKey( spep_1 + 96, kidan_c, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 96, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_b, 0 );
setEffRotateKey( spep_1 + 96, kidan_b, 0 );
setEffAlphaKey( spep_1 + 0, kidan_b, 255 );
setEffAlphaKey( spep_1 + 94, kidan_b, 255 );
setEffAlphaKey( spep_1 + 95, kidan_b, 255 );
setEffAlphaKey( spep_1 + 96, kidan_b, 0 );

--文字エントリー
ctzubababa = entryEffectLife( spep_1-3 + 66,  10015, 32, 0x100, -1, 0, 52.7, 129.4 );--ズバババッ
setEffShake( spep_1-3 + 66, ctzubababa, 32, 10 );
setEffMoveKey( spep_1-3 + 66, ctzubababa, 52.7, 129.4 , 0 );
setEffMoveKey( spep_1-3 + 68, ctzubababa, 57.9, 132.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 72, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 74, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 76, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 92, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzubababa, 54.8, 127.8 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzubababa, 59, 132 , 0 );
setEffMoveKey( spep_1-3 + 98, ctzubababa, 54.8, 127.8 , 0 );

setEffScaleKey( spep_1-3 + 66, ctzubababa,2.01,2.01);
setEffScaleKey( spep_1-3 + 68, ctzubababa,2.05,2.05);
setEffScaleKey( spep_1-3 + 70, ctzubababa,2.12,2.12);
setEffScaleKey( spep_1-3 + 98, ctzubababa,2.12,2.12);

setEffRotateKey( spep_1-3 + 66, ctzubababa, -17.1 );
setEffRotateKey( spep_1-3 + 98, ctzubababa, -17.1 );

setEffAlphaKey( spep_1-3 + 66, ctzubababa, 85 );
setEffAlphaKey( spep_1-3 + 68, ctzubababa, 170 );
setEffAlphaKey( spep_1-3 + 70, ctzubababa, 255 );
setEffAlphaKey( spep_1-3 + 98, ctzubababa, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 1 );

setMoveKey( spep_1 + 0, 1, -100.6, 13.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 124.1, 13.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, -147.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, -171, 13.2 , 0 );
setMoveKey( spep_1-3 + 8, 1, -194.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 10, 1, -217.9, 13.2 , 0 );
setMoveKey( spep_1-3 + 12, 1, -241.4, 13.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, -264.8, 13.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, -279.1, 13.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, -293.3, 13.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, -307.5, 13.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, -321.7, 13.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, -336, 13.2 , 0 );
setMoveKey( spep_1-1 + 26, 1, -350.2, 13.2 , 0 );

setScaleKey( spep_1 + 0, 1, 0.52,0.52);
setScaleKey( spep_1-3 + 4, 1, 0.54,0.54);
setScaleKey( spep_1-3 + 6, 1, 0.55,0.55);
setScaleKey( spep_1-3 + 8, 1, 0.55,0.55);
setScaleKey( spep_1-3 + 10, 1,0.57,0.57);
setScaleKey( spep_1-3 + 12, 1,0.57,0.57);
setScaleKey( spep_1-3 + 14, 1,0.58,0.58);
setScaleKey( spep_1-3 + 16, 1,0.58,0.58);
setScaleKey( spep_1-3 + 18, 1,0.6,0.6);
setScaleKey( spep_1-3 + 20, 1,0.6,0.6);
setScaleKey( spep_1-3 + 22, 1,0.61,0.61);
setScaleKey( spep_1-3 + 24, 1,0.61,0.61);
setScaleKey( spep_1-1 + 26, 1,0.63,0.63);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 26, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 40, 1, 1);
setDisp( spep_1-1 + 98, 1, 0);

changeAnime( spep_1-3 + 40, 1, 4);

setMoveKey( spep_1-3 + 40, 1, -854.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, -823.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 44, 1, -793.5, 14.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, -763.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, -732.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, -702.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, -671.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, -641.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 56, 1, -611, 14.7 , 0 );
setMoveKey( spep_1-3 + 58, 1, -580.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, -550.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 62, 1, -519.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 64, 1, -489.3, 14.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, -458.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, -428.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 70, 1, -398, 14.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, -367.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, -337.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, -306.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, -303.2, 14.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, -299.7, 14.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, -296.1, 14.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, -292.6, 14.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, -289, 14.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, -285.5, 14.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, -281.9, 14.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, -278.4, 14.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, -274.8, 14.7 , 0 );
setMoveKey( spep_1-3 + 96, 1, -271.3, 14.7 , 0 );
setMoveKey( spep_1-1 + 98, 1, -267.8, 14.7 , 0 );

setScaleKey( spep_1-3 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_1-1 + 98, 1, 0.7, 0.7 );

setRotateKey( spep_1-3 + 40, 1, 0 );
setRotateKey( spep_1-1 + 98, 1, 0 );

--SE
--ダッシュで奥へいく
SE005 = playSe( spep_1 + 0, 1182 );
SE006 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE006, 75 );
SE007 = playSe( spep_1 + 0, 1167 );
setSeVolumeByWorkId( spep_1 + 0, SE007, 43 );
SE008 = playSe( spep_1 + 8, 1277 );

--連続気弾
SE009 = playSe( spep_1 + 64, 1016 );
SE010 = playSe( spep_1 + 70, 1016 );
SE011 = playSe( spep_1 + 74, 1011 );
SE012 = playSe( spep_1 + 78, 1016 );
SE013 = playSe( spep_1 + 78, 1023 );
setSeVolumeByWorkId( spep_1 + 78, SE013, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+96;
------------------------------------------------------
-- 画面奥から突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, rush_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 86, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 84, rush_f, 255 );
setEffAlphaKey( spep_2 + 85, rush_f, 255 );
setEffAlphaKey( spep_2 + 86, rush_f, 0 );

--手前にダッシュしてくる
SE014 = playSe( spep_2 + 0, 1182 );
SE015 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 82 );
stopSe( spep_2 + 54, SE015, 18 );
SE016 = playSe( spep_2 + 0, 1314 );
setSeVolumeByWorkId( spep_2 + 0, SE016, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE016, 2.1 );
setSeVolumeByWorkId( spep_2 + 2, SE016, 4.2 );
setSeVolumeByWorkId( spep_2 + 3, SE016, 6.3 );
setSeVolumeByWorkId( spep_2 + 4, SE016, 8.4 );
setSeVolumeByWorkId( spep_2 + 5, SE016, 10.5 );
setSeVolumeByWorkId( spep_2 + 6, SE016, 12.6 );
setSeVolumeByWorkId( spep_2 + 7, SE016, 14.7 );
setSeVolumeByWorkId( spep_2 + 8, SE016, 16.8 );
setSeVolumeByWorkId( spep_2 + 9, SE016, 18.9 );
setSeVolumeByWorkId( spep_2 + 10, SE016, 21 );
setSeVolumeByWorkId( spep_2 + 11, SE016, 23.1 );
setSeVolumeByWorkId( spep_2 + 12, SE016, 25.2 );
setSeVolumeByWorkId( spep_2 + 13, SE016, 27.3 );
setSeVolumeByWorkId( spep_2 + 14, SE016, 29.4 );
setSeVolumeByWorkId( spep_2 + 15, SE016, 31.5 );
setSeVolumeByWorkId( spep_2 + 16, SE016, 33.6 );
setSeVolumeByWorkId( spep_2 + 17, SE016, 35.7 );
setSeVolumeByWorkId( spep_2 + 18, SE016, 37.8 );
setSeVolumeByWorkId( spep_2 + 19, SE016, 39.9 );
setSeVolumeByWorkId( spep_2 + 20, SE016, 42 );
setSeVolumeByWorkId( spep_2 + 21, SE016, 44.1 );
setSeVolumeByWorkId( spep_2 + 22, SE016, 46.2 );
setSeVolumeByWorkId( spep_2 + 23, SE016, 48.3 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 50.4 );
setSeVolumeByWorkId( spep_2 + 25, SE016, 52.5 );
setSeVolumeByWorkId( spep_2 + 26, SE016, 54.6 );
setSeVolumeByWorkId( spep_2 + 27, SE016, 56.7 );
setSeVolumeByWorkId( spep_2 + 28, SE016, 58.8 );
setSeVolumeByWorkId( spep_2 + 29, SE016, 60.9 );
setSeVolumeByWorkId( spep_2 + 30, SE016, 63 );
setSeVolumeByWorkId( spep_2 + 31, SE016, 65.1 );
setSeVolumeByWorkId( spep_2 + 32, SE016, 67.2 );
setSeVolumeByWorkId( spep_2 + 33, SE016, 69.3 );
setSeVolumeByWorkId( spep_2 + 34, SE016, 71.4 );
setSeVolumeByWorkId( spep_2 + 35, SE016, 73.5 );
setSeVolumeByWorkId( spep_2 + 36, SE016, 75.6 );
setSeVolumeByWorkId( spep_2 + 37, SE016, 77.7 );
setSeVolumeByWorkId( spep_2 + 38, SE016, 79.8 );
setSeVolumeByWorkId( spep_2 + 39, SE016, 81.9 );
setSeVolumeByWorkId( spep_2 + 40, SE016, 84 );
setSeVolumeByWorkId( spep_2 + 41, SE016, 86.1 );
setSeVolumeByWorkId( spep_2 + 42, SE016, 88.2 );
setSeVolumeByWorkId( spep_2 + 43, SE016, 90.3 );
setSeVolumeByWorkId( spep_2 + 44, SE016, 92.4 );
setSeVolumeByWorkId( spep_2 + 45, SE016, 94.5 );
setSeVolumeByWorkId( spep_2 + 46, SE016, 96.6 );
setSeVolumeByWorkId( spep_2 + 47, SE016, 98.7 );
setSeVolumeByWorkId( spep_2 + 48, SE016, 100.8 );
SE018 = playSe( spep_2 + 44, 1116 );
stopSe( spep_2 + 70, SE018, 22 );
SE019 = playSe( spep_2 + 54, 9 );
setSeVolumeByWorkId( spep_2 + 54, SE019, 94 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
-- 噴煙の中の敵を殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 112, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 110, panting_f, 255 );
setEffAlphaKey( spep_3 + 111, panting_f, 255 );
setEffAlphaKey( spep_3 + 112, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 112, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 112, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 110, panting_b, 255 );
setEffAlphaKey( spep_3 + 111, panting_b, 255 );
setEffAlphaKey( spep_3 + 112, panting_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 64,  10020, 18, 0x100, -1, 0, 153.2, 240.3 );--バキッ
setEffShake( spep_3-3 + 64, ctbaki, 18, 10 );
setEffMoveKey( spep_3-3 + 64, ctbaki, 153.2, 240.3 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbaki, 97.2, 350.3 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbaki, 140.9, 348.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbaki, 134.5, 323.6 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbaki, 112.7, 337.3 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbaki, 150.1, 328 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbaki, 119.1, 330.6 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbaki, 143, 324.2 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbaki, 117.2, 321.3 , 0 );
setEffMoveKey( spep_3-3 + 82, ctbaki, 129.7, 314.5 , 0 );

setEffScaleKey( spep_3-3 + 64, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 66, ctbaki, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 68, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 70, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 72, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_3-3 + 74, ctbaki, 2, 2 );
setEffScaleKey( spep_3-3 + 76, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_3-3 + 78, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_3-3 + 80, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3-3 + 82, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_3-3 + 64, ctbaki, 16.8 );
setEffRotateKey( spep_3-3 + 82, ctbaki, 16.8 );

--敵の動き
setDisp( spep_3-3 + 38, 1, 1);
setDisp( spep_3-1 + 114, 1, 0);

changeAnime( spep_3-3 + 38, 1, 6);
changeAnime( spep_3-3 + 64, 1, 105);

setMoveKey( spep_3-3 + 38, 1, -0.1, 0.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 0, 0.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 0, 0.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 0, 0.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, 0, 0.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_3-3 + 49, 1, 0, 0 , 0 );
setMoveKey( spep_3-3 + 50, 1, -3.9, 7.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, -3.9, 7.8 , 0 );
setMoveKey( spep_3-3 + 63, 1, -3.9, 7.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 35.8, 164.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, -25.9, 164.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, 11.6, 164.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 8.7, 149.4 , 0 );
setMoveKey( spep_3-3 + 72, 1, -18.9, 165 , 0 );
setMoveKey( spep_3-3 + 74, 1, 21.4, 165 , 0 );
setMoveKey( spep_3-3 + 76, 1, -12.8, 165 , 0 );
setMoveKey( spep_3-3 + 78, 1, 18.3, 165 , 0 );
setMoveKey( spep_3-3 + 80, 1, -6.6, 163.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 16.8, 166.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, -5, 165 , 0 );
setMoveKey( spep_3-3 + 86, 1, 6, 168.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, -0.4, 166.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 2.8, 169.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, -2, 168.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 2.8, 171.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, -2, 169.8 , 0 );
setMoveKey( spep_3-3 + 98, 1, 1.2, 171.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, -3.6, 169.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, -0.4, 171.4 , 0 );
setMoveKey( spep_3-3 + 104, 1, -0.4, 171.4 , 0 );
setMoveKey( spep_3-3 + 106, 1, -0.4, 171.5 , 0 );
setMoveKey( spep_3-1 + 114, 1, -0.4, 171.5 , 0 );

setScaleKey( spep_3-3 + 38, 1,1.62,1.62);
setScaleKey( spep_3-3 + 40, 1,1.77,1.77);
setScaleKey( spep_3-3 + 42, 1,1.94,1.94);
setScaleKey( spep_3-3 + 44, 1,2.1,2.1);
setScaleKey( spep_3-3 + 46, 1,2.25,2.25);
setScaleKey( spep_3-3 + 48, 1,2.41,2.41);
setScaleKey( spep_3-3 + 49, 1,2.41,2.41);
setScaleKey( spep_3-3 + 50, 1,4.44,4.44);
setScaleKey( spep_3-3 + 52, 1,4.5,4.5);
setScaleKey( spep_3-3 + 54, 1,4.56,4.56);
setScaleKey( spep_3-3 + 56, 1,4.62,4.62);
setScaleKey( spep_3-3 + 58, 1,4.68,4.68);
setScaleKey( spep_3-3 + 60, 1,4.74,4.74);
setScaleKey( spep_3-3 + 62, 1,4.8,4.8);
setScaleKey( spep_3-3 + 63, 1,4.8,4.8);

setScaleKey( spep_3-3 + 64, 1,2.88,2.88);
setScaleKey( spep_3-3 + 66, 1,2.26,2.26);
setScaleKey( spep_3-3 + 68, 1,1.65,1.65);
setScaleKey( spep_3-3 + 70, 1,1.04,1.04);
setScaleKey( spep_3-3 + 72, 1,0.43,0.43);
setScaleKey( spep_3-3 + 74, 1,0.42,0.42);
setScaleKey( spep_3-3 + 76, 1,0.4,0.4);
setScaleKey( spep_3-3 + 78, 1,0.4,0.4);
setScaleKey( spep_3-3 + 80, 1,0.39,0.39);
setScaleKey( spep_3-3 + 82, 1,0.38,0.38);
setScaleKey( spep_3-3 + 84, 1,0.37,0.37);
setScaleKey( spep_3-3 + 86, 1,0.37,0.37);
setScaleKey( spep_3-3 + 88, 1,0.36,0.36);
setScaleKey( spep_3-3 + 90, 1,0.34,0.34);
setScaleKey( spep_3-3 + 92, 1,0.33,0.33);
setScaleKey( spep_3-3 + 94, 1,0.33,0.33);
setScaleKey( spep_3-3 + 96, 1,0.32,0.32);
setScaleKey( spep_3-3 + 98, 1,0.31,0.31);
setScaleKey( spep_3-3 + 100, 1,0.3,0.3);
setScaleKey( spep_3-3 + 102, 1,0.3,0.3);
setScaleKey( spep_3-3 + 104, 1,0.28,0.28);
setScaleKey( spep_3-3 + 106, 1,0.27,0.27);
setScaleKey( spep_3-3 + 108, 1,0.26,0.26);
setScaleKey( spep_3-3 + 110, 1,0.26,0.26);
setScaleKey( spep_3-3 + 112, 1,0.25,0.25);
setScaleKey( spep_3-1 + 114, 1,0.24,0.24);

setRotateKey( spep_3-3 + 38, 1, 50 );
setRotateKey( spep_3-3 + 63, 1, 50 );
setRotateKey( spep_3-3 + 64, 1, 0 );
setRotateKey( spep_3-1 + 114, 1, 0 );

--SE
--手前にダッシュしてくる
stopSe( spep_3 + 70, SE016, 26 );
stopSe( spep_3 + 4, SE019, 8 );

--爆発してズーム
SE017 = playSe( spep_3 + 0, 1069 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 1, SE017, 11.3 );
setSeVolumeByWorkId( spep_3 + 2, SE017, 22.6 );
setSeVolumeByWorkId( spep_3 + 3, SE017, 33.9 );
setSeVolumeByWorkId( spep_3 + 4, SE017, 45.2 );
setSeVolumeByWorkId( spep_3 + 5, SE017, 56.5 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 67.8 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 79.1 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 90.4 );
setSeVolumeByWorkId( spep_3 + 9, SE017, 101.7 );
setSeVolumeByWorkId( spep_3 + 10, SE017, 113 );
setSeVolumeByWorkId( spep_3 + 11, SE017, 124.3 );
setSeVolumeByWorkId( spep_3 + 12, SE017, 135.6 );
setSeVolumeByWorkId( spep_3 + 13, SE017, 146.9 );
setSeVolumeByWorkId( spep_3 + 14, SE017, 158 );
stopSe( spep_3 + 124, SE017, 0 );
setStartTimeMs( SE017,  900 );
SE020 = playSe( spep_3 + 8, 1183 );
stopSe( spep_3 + 70, SE020, 28 );
SE021 = playSe( spep_3 + 12, 20 );
setSeVolumeByWorkId( spep_3 + 12, SE021, 112 );
stopSe( spep_3 + 124, SE021, 0 );

--パンチ
SE022 = playSe( spep_3 + 62, 1003 );
SE023 = playSe( spep_3 + 68, 1120 );
SE024 = playSe( spep_3 + 68, 1027 );
setSeVolumeByWorkId( spep_3 + 68, SE024, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+112;
------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 190, tame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 190, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 190, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +98;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE025 = playSe( spep_4 + 0, 1036 );
setSeVolumeByWorkId( spep_4 + 0, SE025, 50 );

--振りかぶる
SE026 = playSe( spep_4 + 6, 1004 );
setPitch( spep_4 + 6, SE026, -300 );
setTimeStretch( SE026, 0.93, 10, 1 );

--オーラ
SE027 = playSe( spep_4 + 24, 1036 );
setSeVolumeByWorkId( spep_4 + 24, SE027, 50 );
SE028 = playSe( spep_4 + 48, 1036 );
setSeVolumeByWorkId( spep_4 + 48, SE028, 50 );

--構える
SE029 = playSe( spep_4 + 64, 1233 );

--オーラ
SE030 = playSe( spep_4 + 72, 1036 );
setSeVolumeByWorkId( spep_4 + 72, SE030, 50 );

--構える
SE031 = playSe( spep_4 + 72, 1003 );
setSeVolumeByWorkId( spep_4 + 72, SE031, 76 );
SE032 = playSe( spep_4 + 74, 1006 );
setSeVolumeByWorkId( spep_4 + 74, SE032, 83 );

--オーラ
SE033 = playSe( spep_4 + 96, 1036 );
setSeVolumeByWorkId( spep_4 + 96, SE033, 50 );

--力む
SE034 = playSe( spep_4 + 104, 1233 );
setPitch( spep_4 + 104, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--顔カットイン
SE035 = playSe( spep_x + 12, 1018 );

--力む
SE036 = playSe( spep_4 + 116, 1250 );
setSeVolumeByWorkId( spep_4 + 116, SE036, 251 );
stopSe( spep_4 + 178, SE036, 14 );
setPitch( spep_4 + 116, SE036, -1200 );
setTimeStretch( SE036, 0.2, 10, 1 );
SE037 = playSe( spep_4 + 116, 1294 );
setSeVolumeByWorkId( spep_4 + 116, SE037, 316 );

--オーラ
SE038 = playSe( spep_4 + 120, 1036 );
setSeVolumeByWorkId( spep_4 + 120, SE038, 50 );
SE039 = playSe( spep_4 + 144, 1036 );
setSeVolumeByWorkId( spep_4 + 144, SE039, 50 );
SE040 = playSe( spep_4 + 168, 1036 );
setSeVolumeByWorkId( spep_4 + 168, SE040, 50 );

--白フェード
entryFade( spep_4 + 182, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+190;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 260, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 101, hit_f, 255 );
setEffAlphaKey( spep_6 + 102, hit_f, 0 );

hit_f_1 = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f_1, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_f_1, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f_1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_f_1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f_1, 0 );
setEffRotateKey( spep_6 + 260, hit_f_1, 0 );
setEffAlphaKey( spep_6 + 0, hit_f_1, 0 );
setEffAlphaKey( spep_6 + 101, hit_f_1, 0 );
setEffAlphaKey( spep_6 + 102, hit_f_1, 255 );
setEffAlphaKey( spep_6 + 260, hit_f_1, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 260, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 101, hit_b, 255 );
setEffAlphaKey( spep_6 + 102, hit_b, 0 );

hit_b_1 = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b_1, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, hit_b_1, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b_1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, hit_b_1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b_1, 0 );
setEffRotateKey( spep_6 + 260, hit_b_1, 0 );
setEffAlphaKey( spep_6 + 0, hit_b_1, 0 );
setEffAlphaKey( spep_6 + 101, hit_b_1, 0 );
setEffAlphaKey( spep_6 + 102, hit_b_1, 255 );
setEffAlphaKey( spep_6 + 260, hit_b_1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_6-3 + 30,  10012, 52, 0x100, -1, 0, -42, 396.5 );--ズオッ
setEffShake( spep_6-3 + 30, ctzuo, 52, 10 );
setEffMoveKey( spep_6-3 + 30, ctzuo, -42, 396.5 , 0 );
setEffMoveKey( spep_6-3 + 32, ctzuo, -46.9, 394.4 , 0 );
setEffMoveKey( spep_6-3 + 34, ctzuo, -35.4, 393.7 , 0 );
setEffMoveKey( spep_6-3 + 36, ctzuo, -45.8, 404.4 , 0 );
setEffMoveKey( spep_6-3 + 38, ctzuo, -38.7, 392.1 , 0 );
setEffMoveKey( spep_6-3 + 40, ctzuo, -45.7, 403.5 , 0 );
setEffMoveKey( spep_6-3 + 42, ctzuo, -37, 392.2 , 0 );
setEffMoveKey( spep_6-3 + 44, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 46, ctzuo, -39.2, 386.8 , 0 );
setEffMoveKey( spep_6-3 + 48, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_6-3 + 50, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_6-3 + 52, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_6-3 + 54, ctzuo, -39.5, 387.8 , 0 );
setEffMoveKey( spep_6-3 + 56, ctzuo, -42.6, 405.9 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzuo, -44.8, 388.9 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzuo, -36.4, 403.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzuo, -43.6, 391.7 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzuo, -33.6, 398.7 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzuo, -46.5, 394.4 , 0 );
setEffMoveKey( spep_6-3 + 68, ctzuo, -35.7, 402.4 , 0 );
setEffMoveKey( spep_6-3 + 70, ctzuo, -44.3, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 72, ctzuo, -39.1, 386.8 , 0 );
setEffMoveKey( spep_6-3 + 74, ctzuo, -46.3, 405.2 , 0 );
setEffMoveKey( spep_6-3 + 76, ctzuo, -44.7, 390.7 , 0 );
setEffMoveKey( spep_6-3 + 78, ctzuo, -38.4, 401.2 , 0 );
setEffMoveKey( spep_6-3 + 82, ctzuo, -39.5, 387.8 , 0 );

setEffScaleKey( spep_6-3 + 30, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_6-3 + 82, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_6-3 + 30, ctzuo, 30 );
setEffRotateKey( spep_6-3 + 82, ctzuo, 30 );

setEffAlphaKey( spep_6-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 72, ctzuo, 213 );
setEffAlphaKey( spep_6-3 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6-3 + 76, ctzuo, 128 );
setEffAlphaKey( spep_6-3 + 78, ctzuo, 85 );
setEffAlphaKey( spep_6-3 + 80, ctzuo, 42 );
setEffAlphaKey( spep_6-3 + 82, ctzuo, 0 );

--敵の動き
setDisp( spep_6-3 + 102, 1, 1);
setDisp( spep_6-1 + 136, 1, 0);

changeAnime( spep_6-3 + 102, 1, 105);

setMoveKey( spep_6-3 + 102, 1, -49, 127.4 , 0 );
setMoveKey( spep_6-3 + 104, 1, -20.9, 95.7 , 0 );
setMoveKey( spep_6-3 + 106, 1, 4.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 108, 1, 26.5, 42.3 , 0 );
setMoveKey( spep_6-3 + 110, 1, 45.7, 20.6 , 0 );
setMoveKey( spep_6-3 + 112, 1, 62, 2.3 , 0 );
setMoveKey( spep_6-3 + 114, 1, 67, -0.8 , 0 );
setMoveKey( spep_6-3 + 116, 1, 71.7, -3.6 , 0 );
setMoveKey( spep_6-3 + 118, 1, 75.9, -6.1 , 0 );
setMoveKey( spep_6-3 + 120, 1, 79.7, -8.4 , 0 );
setMoveKey( spep_6-3 + 122, 1, 83, -10.4 , 0 );
setMoveKey( spep_6-3 + 124, 1, 85.9, -12.2 , 0 );
setMoveKey( spep_6-3 + 126, 1, 88.3, -13.6 , 0 );
setMoveKey( spep_6-3 + 128, 1, 90.3, -14.8 , 0 );
setMoveKey( spep_6-3 + 130, 1, 91.9, -15.8 , 0 );
setMoveKey( spep_6-3 + 132, 1, 93, -16.5 , 0 );
setMoveKey( spep_6-3 + 134, 1, 93.6, -16.9 , 0 );
setMoveKey( spep_6-1 + 136, 1, 93.5, -16.7 , 0 );

setScaleKey( spep_6-3 + 102, 1, 2.3, 2.3 );
setScaleKey( spep_6-3 + 104, 1, 1.87, 1.87 );
setScaleKey( spep_6-3 + 106, 1, 1.48, 1.48 );
setScaleKey( spep_6-3 + 108, 1, 1.14, 1.14 );
setScaleKey( spep_6-3 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 112, 1, 0.6, 0.6 );
setScaleKey( spep_6-3 + 114, 1, 0.57, 0.57 );
setScaleKey( spep_6-3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_6-3 + 118, 1, 0.51, 0.51 );
setScaleKey( spep_6-3 + 120, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 122, 1, 0.47, 0.47 );
setScaleKey( spep_6-3 + 124, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 126, 1, 0.43, 0.43 );
setScaleKey( spep_6-3 + 128, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 130, 1, 0.41, 0.41 );
setScaleKey( spep_6-1 + 136, 1, 0.4, 0.4 );

setRotateKey( spep_6-3 + 102, 1, 0 );
setRotateKey( spep_6-1 + 136, 1, 0 );

--SE
--ファイナルフラッシュ発射
SE042 = playSe( spep_6 + 14, 20 );
setSeVolumeByWorkId( spep_6 + 14, SE042, 88 );
SE043 = playSe( spep_6 + 14, 1188 );
setSeVolumeByWorkId( spep_6 + 14, SE043, 78 );
SE044 = playSe( spep_6 + 16, 1213 );
setSeVolumeByWorkId( spep_6 + 16, SE044, 82 );
stopSe( spep_6 + 142, SE044, 10 );

--気弾飛んでいく
SE045 = playSe( spep_6 + 82, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_6 + 82, SE045, 0 );
setSeVolumeByWorkId( spep_6 + 83, SE045, 5 );
setSeVolumeByWorkId( spep_6 + 84, SE045, 10 );
setSeVolumeByWorkId( spep_6 + 85, SE045, 15 );
setSeVolumeByWorkId( spep_6 + 86, SE045, 20 );
setSeVolumeByWorkId( spep_6 + 87, SE045, 25 );
setSeVolumeByWorkId( spep_6 + 88, SE045, 30 );
setSeVolumeByWorkId( spep_6 + 89, SE045, 35 );
setSeVolumeByWorkId( spep_6 + 90, SE045, 40 );
setSeVolumeByWorkId( spep_6 + 91, SE045, 45 );
setSeVolumeByWorkId( spep_6 + 92, SE045, 50 );
setSeVolumeByWorkId( spep_6 + 93, SE045, 55 );
setSeVolumeByWorkId( spep_6 + 94, SE045, 60 );
setSeVolumeByWorkId( spep_6 + 95, SE045, 65 );
setSeVolumeByWorkId( spep_6 + 96, SE045, 70 );
setSeVolumeByWorkId( spep_6 + 97, SE045, 75 );
setSeVolumeByWorkId( spep_6 + 98, SE045, 80 );
setSeVolumeByWorkId( spep_6 + 99, SE045, 85 );
setSeVolumeByWorkId( spep_6 + 100, SE045, 90 );
setSeVolumeByWorkId( spep_6 + 101, SE045, 95 );
setSeVolumeByWorkId( spep_6 + 102, SE045, 100 );
stopSe( spep_6 + 140, SE045, 10 );
setStartTimeMs( SE045,  833 );
SE046 = playSe( spep_6 + 96, 1241 ,"",0.6);
setSeVolumeByWorkId( spep_6 + 96, SE046, 117 );
stopSe( spep_6 + 142, SE046, 8 );

--爆発
SE047 = playSe( spep_6 + 138, 1024 );
setSeVolumeByWorkId( spep_6 + 138, SE047, 76 );
SE048 = playSe( spep_6 + 138, 1159 );
setSeVolumeByWorkId( spep_6 + 138, SE048, 87 );
SE049 = playSe( spep_6 + 138, 1068 );
setSeVolumeByWorkId( spep_6 + 138, SE049, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +150 );
endPhase( spep_6 + 250 );
end