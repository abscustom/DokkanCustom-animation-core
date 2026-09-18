--1023930:孫悟空&チチ_芭蕉扇(アクティブスキル)
--sp_effect_b1_00184

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
SP_01=	159070	;--	筋斗雲に乗る二人
SP_02=	159071	;--	顔を見合わせる二人～芭蕉扇を振る
SP_03=	159072	;--	敵が飛ばされ～フィニッシュ
SP_04=	159073	;--	敵が飛ばされ～フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1=spep_0+192;
        spep_2=spep_1+270;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 240 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 0);      -- スキップ先フレーム指定
             --環境音
             SE001 = playSeVer2( spep_2 + 80, 1269, "", 0, 0, 0, -1);
             setSeVolumeByWorkId( spep_2 + 80, SE001, 24 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 筋斗雲に乗る二人
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ride = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ride, 0, 0, 0 );
setEffMoveKey( spep_0 + 192, ride, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ride, 1.0, 1.0 );
setEffScaleKey( spep_0 + 192, ride, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ride, 0 );
setEffRotateKey( spep_0 + 192, ride, 0 );
setEffAlphaKey( spep_0 + 0, ride, 255 );
setEffAlphaKey( spep_0 + 190, ride, 255 );
setEffAlphaKey( spep_0 + 191, ride, 255 );
setEffAlphaKey( spep_0 + 192, ride, 0 );

--SE
--筋斗雲で飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1027, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1186, "",spep_0 + 120, 0, 30, -1);
SE003 = playSeVer2( spep_0 + 0, 1327, "",spep_0 + 144, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 0, 1311, "", 0, 0, 0, -1);

--飛び降りる
SE005 = playSeVer2( spep_0 + 72, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 72, 1189, "", 0, 0, 0, -1);

--着地
SE007 = playSeVer2( spep_0 + 104, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 143 );
SE008 = playSeVer2( spep_0 + 104, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE008, 150 );

--集中線
SE009 = playSeVer2( spep_0 + 138, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 200, 0, 0, 0, 0, 255 );

--次の準備
spep_1=spep_0+192;
------------------------------------------------------
-- 筋斗雲に乗る二人顔を見合わせる二人～芭蕉扇を振る
------------------------------------------------------
-- ** エフェクト等 ** --
stare = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, stare, 0, 0, 0 );
setEffMoveKey( spep_1 + 266, stare, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, stare, 1.0, 1.0 );
setEffScaleKey( spep_1 + 266, stare, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, stare, 0 );
setEffRotateKey( spep_1 + 266, stare, 0 );
setEffAlphaKey( spep_1 + 0, stare, 255 );
setEffAlphaKey( spep_1 + 264, stare, 255 );
setEffAlphaKey( spep_1 + 265, stare, 255 );
setEffAlphaKey( spep_1 + 266, stare, 0 );

--SE
--芭蕉扇傾ける
SE010 = playSeVer2( spep_1 + 4, 1003, "",spep_1 + 24, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 4, SE010, 64 );
setPitch( spep_1 + 4, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );

--悟空頷く
SE011 = playSeVer2( spep_1 + 22, 1048, "", 0, 0, 0, -1);

--チチ頷く
SE012 = playSeVer2( spep_1 + 36, 4, "", 0, 0, 0, -1);

--芭蕉扇持ち上げる
SE013 = playSeVer2( spep_1 + 94, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 100, 1013, "", 0, 0, 0, -1);

--チチ振りかぶる
SE015 = playSeVer2( spep_1 + 156, 1116, "",spep_1 + 200, 0, 22, -1);
SE016 = playSeVer2( spep_1 + 156, 1117, "",spep_1 + 200, 0, 22, -1);
SE017 = playSeVer2( spep_1 + 156, 1264, "",spep_1 + 264, 0, 64, -1);

--芭蕉扇振り下ろす
SE018 = playSeVer2( spep_1 + 202, 1258, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 206, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 206, 1182, "", 0, 10, 0, -1);
SE021 = playSeVer2( spep_1 + 206, 1278, "",spep_1 + 296, 0, 24, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 270, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 240; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    
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

--次の準備
spep_2=spep_1+266;
------------------------------------------------------
-- 敵が飛ばされ～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 180, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 180, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 56, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 16, 1, 5 );

setMoveKey( spep_2 + 0, 1, 8.1, -10 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 8.1, -10 , 0 );
setMoveKey( spep_2-3 + 4, 1, 8.1, -9.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, 8.1, -9.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, 8, -9.9 , 0 );
setMoveKey( spep_2-3 + 10, 1, 8.1, -9.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 8, -9.9 , 0 );
setMoveKey( spep_2-3 + 15, 1, 8, -9.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, -2.8, -12.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, -2.8, -12.2 , 0 );
setMoveKey( spep_2-3 + 20, 1, -2.8, -11.7 , 0 );
setMoveKey( spep_2-3 + 22, 1, -2.8, -11.2 , 0 );
setMoveKey( spep_2-3 + 24, 1, -2.8, -10.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, -2.8, -10.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, -2.7, -9.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, -2.7, -9.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, -2.7, -8.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, -2.7, -8.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -2.7, -7.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, -2.7, -7.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, -2.6, -6.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, -2.6, -6.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, -2.7, -5.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, -2.9, -6 , 0 );
setMoveKey( spep_2-3 + 48, 1, -3.2, -6.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, -3.5, -6 , 0 );
setMoveKey( spep_2-3 + 52, 1, -3.8, -5.8 , 0 );
setMoveKey( spep_2-3 + 54, 1, -4, -5.6 , 0 );
setMoveKey( spep_2-1 + 56, 1, -4.3, -5.3 , 0 );

setScaleKey( spep_2 + 0, 1, 11.51, 11.51 );
setScaleKey( spep_2 + 2, 1, 7.01, 7.01 );
setScaleKey( spep_2 + 4, 1, 2.54, 2.54 );
--setScaleKey( spep_2 + 6, 1, 2.47, 2.47 );
--setScaleKey( spep_2 + 8, 1, 2.29, 2.29 );
setScaleKey( spep_2-3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 12, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 15, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 16, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 18, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 20, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 22, 1, 0.65, 0.65 );
setScaleKey( spep_2-3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 28, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 30, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 32, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 38, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 42, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 44, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 46, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 48, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 50, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 52, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 54, 1, 0.48, 0.48 );
setScaleKey( spep_2-1 + 56, 1, 0.48, 0.48 );

setRotateKey( spep_2-1 + 0, 1, 0 );
setRotateKey( spep_2-3 + 15, 1, 0 );
setRotateKey( spep_2-3 + 16, 1, 33.1 );
setRotateKey( spep_2-1 + 56, 1, 33.1 );

--SE
--敵ヒット
SE022 = playSeVer2( spep_2 + 0, 1011, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 76, 0, 14, -1);
SE024 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);

--岩激突
SE025 = playSeVer2( spep_2 + 54, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE025, 87 );
SE026 = playSeVer2( spep_2 + 58, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE026, 94 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 56 );
endPhase( spep_2 + 170 );
else end