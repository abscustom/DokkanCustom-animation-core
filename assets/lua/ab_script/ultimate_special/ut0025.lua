--4022430:超サイヤ人4ゴジータ_ウルトラビッグバンかめはめ波
--sp_effect_a1_00329

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
SP_01=	158944	;--	目閉じまで
SP_02=	158945	;--	発射まで
SP_03=	158946	;--	被弾　手前
SP_04=	158947	;--	被弾　奥

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1=spep_0+500-66;
        spep_2=spep_1+592;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 590 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 80);      -- スキップ先フレーム指定
             --環境音
             SE001 = playSeVer2( spep_2 + 80, 1269, "", 0, 0, 0, -1);
             setSeVolumeByWorkId( spep_2 + 80, SE001, 24 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 目閉じまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
crush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, crush, 0, 0, 0 );
setEffMoveKey( spep_0 + 500, crush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, crush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 500, crush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, crush, 0 );
setEffRotateKey( spep_0 + 500, crush, 0 );
setEffAlphaKey( spep_0 + 0, crush, 255 );
setEffAlphaKey( spep_0 + 500, crush, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );

--風が吹く
SE002 = playSeVer2( spep_0 + 7, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 7, SE002, 56 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 83, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 83, SE003, 79 );

--振り返る
SE004 = playSeVer2( spep_0 + 108, 44, "",spep_0 + 155, 19, 20, -1);
SE005 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 170 );
SE006 = playSeVer2( spep_0 + 124, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 136, 1192, "",spep_0 + 163, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 166 );
SE008 = playSeVer2( spep_0 + 136, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE008, 65 );
SE009 = playSeVer2( spep_0 + 136, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE009, 160 );

--カメラパンアップ
SE010 = playSeVer2( spep_0 + 169, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 169, SE010, 84 );
setPitch( spep_0 + 169, SE010, -600 );


--金色に包まれる
SE011 = playSeVer2( spep_0 + 350, 1072, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 378, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE013, 203 );
setPitch( spep_0 + 378, SE013, -500 );
setTimeStretch( SE013, 0.67, 30, 4 );
SE014 = playSeVer2( spep_0 + 378, 1116, "",spep_0 + 430, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 378, SE014, 80 );

--精神世界
SE012 = playSeVer2( spep_0 + 425, 1315, "",spep_0 + 631, 9, 30, -1);
setSeVolumeByWorkId( spep_0 + 425, SE012, 228 );
setStartTimeMs( SE012,  1033 );
setPitch( spep_0 + 425, SE012, 100 );
setTimeStretch( SE012, 1.07, 30, 4 );
SE015 = playSeVer2( spep_0 + 420, 1263, "",spep_0 + 625, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 420, SE015, 221 );
setTimeStretch( SE015, 1.43, 30, 4 );
SE016 = playSeVer2( spep_0 + 435, 1288, "",spep_0 + 619, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 435, SE016, 224 );
setPitch( spep_0 + 435, SE016, 700 );
setTimeStretch( SE016, 1.47, 30, 4 );
SE017 = playSeVer2( spep_0 + 465, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 465, SE017, 64 );

--ボイス
--さぁてと、いよいよこのオレの必殺技を見せてやるか
playVoice( spep_0 + 67, 375 );
setVoiceVolume( spep_0 + 67, 375, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 502, 0, 0, 0, 0, 255 );

--次の準備
spep_1=spep_0+500-66;
------------------------------------------------------
-- 発射まで
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_1 + 592, beam, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_1 + 592, beam, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 592, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 590, beam, 255 );
setEffAlphaKey( spep_1 + 591, beam, 255 );
setEffAlphaKey( spep_1 + 592, beam, 0 );

--SE
--気弾溜め
SE018 = playSeVer2( spep_1 + 145, 1296, "",spep_1 + 343, 0, 8, -1);
SE019 = playSeVer2( spep_1 + 145, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 145, SE019, 73 );
SE020 = playSeVer2( spep_1 + 145, 1210, "",spep_1 + 530, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 145, SE020, 82 );
SE021 = playSeVer2( spep_1 + 161, 1281, "",spep_1 + 531, 0, 17, -1);
setSeVolumeByWorkId( spep_1 + 161, SE021, 50 );
setPitch( spep_1 + 161, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );

--前に腕出す
SE022 = playSeVer2( spep_1 + 186, 1072, "", 0, 11, 0, -1);
setSeVolumeByWorkId( spep_1 + 186, SE022, 141 );
setStartTimeMs( SE022,  333 );
SE023 = playSeVer2( spep_1 + 183, 1126, "",spep_1 + 361, 17, 137, -1);
setSeVolumeByWorkId( spep_1 + 183, SE023, 94 );
setPitch( spep_1 + 183, SE023, -100 );
setTimeStretch( SE023, 0.93, 30, 4 );

--前に出して気弾溜め
SE024 = playSeVer2( spep_1 + 200, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 200, SE024, 132 );

--気弾溜め
SE025 = playSeVer2( spep_1 + 325, 1296, "",spep_1 + 483, 9, 7, -1);
setStartTimeMs( SE025,  400 );
SE026 = playSeVer2( spep_1 + 466, 1296, "",spep_1 + 526, 9, 15, -1);
setStartTimeMs( SE026,  400 );

--気弾発射
SE027 = playSeVer2( spep_1 + 509, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 509, SE027, 79 );
SE028 = playSeVer2( spep_1 + 509, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 509, SE028, 126 );
SE029 = playSeVer2( spep_1 + 509, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 509, SE029, 123 );
SE030 = playSeVer2( spep_1 + 509, 1213, "",spep_1 + 679, 0, 15, -1);
setSeVolumeByWorkId( spep_1 + 509, SE030, 81 );

--ボイス
--これであの世へ送ってやる
playVoice( spep_1 + 192, 376 );
setVoiceVolume( spep_1 + 192, 376, 100 );

--ウルトラビッグバンかめはめ波
playVoice( spep_1 + 320, 377 );
setVoiceVolume( spep_1 + 320, 377, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 600, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 590; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    stopSe( SP_dodge - 12, SE030, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--次の準備
spep_2=spep_1+592;
------------------------------------------------------
-- 発射まで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 224, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 224, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 224, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 224, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 224, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 224, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 78, 1, 0);

changeAnime( spep_2 + 0, 1, 102);
changeAnime( spep_2-3 + 10, 1, 106);

setBlendColor(spep_2-3 + 20 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0);
setBlendColor(spep_2-3 + 21 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.033);
setBlendColor(spep_2-3 + 22 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.066);
setBlendColor(spep_2-3 + 23 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.099);
setBlendColor(spep_2-3 + 24 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.132);
setBlendColor(spep_2-3 + 25 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.165);
setBlendColor(spep_2-3 + 26 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.198);
setBlendColor(spep_2-3 + 27 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.231);
setBlendColor(spep_2-3 + 28 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.264);
setBlendColor(spep_2-3 + 29 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.297);
setBlendColor(spep_2-3 + 30 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.33);
setBlendColor(spep_2-3 + 31 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.363);
setBlendColor(spep_2-3 + 32 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.396);
setBlendColor(spep_2-3 + 33 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.429);
setBlendColor(spep_2-3 + 34 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.462);
setBlendColor(spep_2-3 + 35 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.495);
setBlendColor(spep_2-3 + 36 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.528);
setBlendColor(spep_2-3 + 37 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.561);
setBlendColor(spep_2-3 + 38 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.594);
setBlendColor(spep_2-3 + 39 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.627);
setBlendColor(spep_2-3 + 40 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.66);
setBlendColor(spep_2-3 + 41 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.693);
setBlendColor(spep_2-3 + 42 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.726);
setBlendColor(spep_2-3 + 43 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.759);
setBlendColor(spep_2-3 + 44 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.792);
setBlendColor(spep_2-3 + 45 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.825);
setBlendColor(spep_2-3 + 46 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.858);
setBlendColor(spep_2-3 + 47 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.891);
setBlendColor(spep_2-3 + 48 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.924);
setBlendColor(spep_2-3 + 49 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.957);
setBlendColor(spep_2-3 + 50 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.99);
setBlendColor(spep_2-1 + 78 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0.99);
setBlendColor(spep_2 + 78 ,1 ,3 ,0.01 ,0.74 ,0.91 ,0);

setMoveKey( spep_2 + 0, 1, -51, 1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -51, 1 , 0 );
setMoveKey( spep_2-3 + 4, 1, -51, 0.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, -51, 0.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, -51.1, 0.9 , 0 );
setMoveKey( spep_2-3 + 9, 1, -51.1, 0.9 , 0 );

setMoveKey( spep_2-3 + 10, 1, -51.1, 0.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, -15.2, 7.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 12.8, 13.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 32.8, 17.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 24.5, 17 , 0 );
setMoveKey( spep_2-3 + 20, 1, 60.3, 24.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 38.6, 12.8 , 0 );
setMoveKey( spep_2-3 + 24, 1, 59.4, 19.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, 42.1, 16.1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 59.7, 25.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 48.9, 18.4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 55.4, 28.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 51.7, 18.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 62.7, 24.1 , 0 );
setMoveKey( spep_2-3 + 38, 1, 54.9, 17.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 56.8, 26.4 , 0 );
setMoveKey( spep_2-3 + 42, 1, 60.6, 18.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 62.8, 25.4 , 0 );
setMoveKey( spep_2-3 + 46, 1, 59.2, 20.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 65.9, 24.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 61.8, 24.2 , 0 );
setMoveKey( spep_2-3 + 52, 1, 65.8, 25.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 63, 23.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 68.7, 23.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, 66.5, 25.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 69.9, 25.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 69.1, 24.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 72.2, 26.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, 71.2, 26.8 , 0 );
setMoveKey( spep_2-3 + 68, 1, 73.6, 26 , 0 );
setMoveKey( spep_2-3 + 70, 1, 73.4, 26.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, 75.4, 27.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 76.3, 26.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, 77.6, 27.9 , 0 );
setMoveKey( spep_2-1 + 78, 1, 77.5, 27.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
setScaleKey( spep_2-3 + 9, 1, 2, 2 );

setScaleKey( spep_2-3 + 10, 1, 2, 2 );
setScaleKey( spep_2-1 + 78, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, -6.3 );
setRotateKey( spep_2-3 + 9, 1, -6.3 );

setRotateKey( spep_2-3 + 10, 1, -25.1 );
setRotateKey( spep_2-3 + 12, 1, -23.1 );
setRotateKey( spep_2-3 + 14, 1, -21.6 );
setRotateKey( spep_2-3 + 16, 1, -20.5 );
setRotateKey( spep_2-3 + 18, 1, -19.8 );
setRotateKey( spep_2-3 + 20, 1, -19.6 );
setRotateKey( spep_2-1 + 78, 1, -19.6 );

--SE
--気弾飲まれる
SE031 = playSeVer2( spep_2 + 0, 1211, "",spep_2 + 102, 0, 29, -1);
SE032 = playSeVer2( spep_2 + 0, 1161, "",spep_2 + 102, 0, 29, -1);
SE033 = playSeVer2( spep_2 + 0, 1021, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 27, 1258, "",spep_2 + 105, 11, 37, -1);
setStartTimeMs( SE034,  100 );

--爆発
SE035 = playSeVer2( spep_2 + 107, 1069, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 124, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE036, 116 );
SE037 = playSeVer2( spep_2 + 124, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 124, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 224, 0, 0, 0, 0, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 118 );
endPhase( spep_2 + 218 );
else end