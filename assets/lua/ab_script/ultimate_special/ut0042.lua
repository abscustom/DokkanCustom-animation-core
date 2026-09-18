--1025070:UR_孫悟空(少年期)_怒りのかめはめ波
--sp_effect_a1_00372
--ut0042

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

--味方側
SP_01 = 160653;	--冒頭～撃つまで	ef_001
SP_02 = 160654;	--敵へ気弾命中　前面	ef_002
SP_03 = 160655;	--敵へ気弾命中　背面	ef_003
SP_04 = 160656;	--KO演出	ef_004


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
        spep_1 = spep_0 + 882;


       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 860 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 860 -12, SP_01, spep_0 + 860 -12, 1);
       else
           skipFrame(0, spep_1 + 80);      -- スキップ先フレーム指定
setupMovie(spep_1 + 80, SP_01, spep_1 + 80-1 + 2, 1);
           --爆発
           SE029 = playSeVer2( spep_1 + 84, 1069, "", 0, 6, 0, -1);
           setStartTimeMs( SE029,  200 );
           SE030 = playSeVer2( spep_1 + 83, 1067, "", 0, 0, 0, -1);
           SE031 = playSeVer2( spep_1 + 83, 1159, "", 0, 0, 0, -1);
           SE032 = playSeVer2( spep_1 + 84, 1188, "", 0, 0, 0, -1);
 end
    else 
        setupMovie(0, SP_01, 2, 1);
    end
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～撃つまで(906F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 906, 0x100, -1, 0, 0, 0 );  --冒頭～撃つまで	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 906, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 906, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 906, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 906 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 906, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 67 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 184, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--気立ち上がる
SE003 = playSeVer2( spep_0 + 114, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE003, 72 );
SE004 = playSeVer2( spep_0 + 114, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE004, 65 );
SE005 = playSeVer2( spep_0 + 122, 44, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 132, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE006, 78 );
SE007 = playSeVer2( spep_0 + 132, 1259, "", 0, 0, 0, -1);
setPitch( spep_0 + 132, SE007, -600 );
setTimeStretch( SE007, 0.6, 30, 4 );

--遠方で気が立ち上がる
SE008 = playSeVer2( spep_0 + 232, 1226, "",spep_0 + 492, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 232, SE008, 126 );

--気を高める
SE009 = playSeVer2( spep_0 + 306, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE009, 62 );
SE010 = playSeVer2( spep_0 + 310, 1264, "",spep_0 + 484, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 310, SE010, 68 );
SE011 = playSeVer2( spep_0 + 310, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE011, 72 );

--土煙
SE012 = playSeVer2( spep_0 + 440, 1258, "",spep_0 + 580, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 440, SE012, 47 );
SE013 = playSeVer2( spep_0 + 440, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE013, 70 );

--セリフカットイン
SE014 = playSeVer2( spep_0 + 516, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE014, 63 );

--気ダメ
SE015 = playSeVer2( spep_0 + 562, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 562, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE016, 45 );

--腕広げる
SE017 = playSeVer2( spep_0 + 592, 1003, "", 0, 0, 0, -1);

--かめはめ波溜め
SE018 = playSeVer2( spep_0 + 662, 1210, "",spep_0 + 762, 18, 20, -1);
setSeVolumeByWorkId( spep_0 + 662, SE018, 66 );
setStartTimeMs( SE018,  850 );
SE020 = playSeVer2( spep_0 + 662, 1209, "",spep_0 + 762, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 662, SE020, 67 );

--カメラパン
SE019 = playSeVer2( spep_0 + 628, 44, "", 0, 0, 0, -1);

--かめはめ波発射
SE021 = playSeVer2( spep_0 + 742, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 742, SE021, 72 );
SE022 = playSeVer2( spep_0 + 742, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 742, SE022, 60 );
SE023 = playSeVer2( spep_0 + 742, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 742, SE023, 74 );
SE024 = playSeVer2( spep_0 + 742, 1213, "",spep_0 + 988, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 742, SE024, 49 );

-- ** ボイス ** --
--うわあああああ！！
playVoice( spep_0 + 40, 504 );
setVoiceVolume( spep_0 + 40, 504, 100 );

--うわああああ…！！
playVoice( spep_0 + 306, 505 );
setVoiceVolume( spep_0 + 306, 505, 100 );

--できそこねえのバケモンは、おめえのほうだーーー！
playVoice( spep_0 + 516, 506 );
setVoiceVolume( spep_0 + 516, 506, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 906 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 860 ; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

    setVoiceVolume( SP_dodge - 12, 506, 0 );
   
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

-- ** 音 ** --
--敵貫く
SE025 = playSeVer2( spep_0 + 900, 1133, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 900, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 900, SE026, 88 );
SE027 = playSeVer2( spep_0 + 900, 1145, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 906;


------------------------------------------------------
-- 敵へ気弾命中(208F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵へ気弾命中　前面	ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 206, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 206, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 206, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 203, finish_f, 255 );
setEffAlphaKey( spep_1 + 204, finish_f, 0 );
setEffAlphaKey( spep_1 + 206, finish_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 90, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 -3 + 18, 1, 108 );

setMoveKey( spep_1 + 0, 1, -36, -136.8 , 0 );
setMoveKey( spep_1 + 1, 1, -40.4, -93.7 , 0 );
setMoveKey( spep_1 + 2, 1, -24.2, -88.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -33.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -20.5, -21.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -25.9, 14.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -18.7, 2.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -25.8, 9.3 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -18.6, 7.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -3.9, 7.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -3.9, 9.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -7.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -0.7, 4.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -5.5, 9.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -5.5, 9.1 , 0 );

s1 = 0.3;
setScaleKey( spep_1 + 0, 1, 3.59, 3.59 );
setScaleKey( spep_1 + 1, 1, 3.19, 3.19 );
setScaleKey( spep_1 + 2, 1, 2.8, 2.8 );
setScaleKey( spep_1 -3 + 6, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 8, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 10, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 17, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 18, 1, 1.62 +s1, 1.62 +s1 );
setScaleKey( spep_1 -3 + 90, 1, 1.62 +s1, 1.62 +s1 );

setRotateKey( spep_1 -3 + 0, 1, -45.1 );
setRotateKey( spep_1 -3 + 17, 1, -45.1 );
setRotateKey( spep_1 -3 + 18, 1, -64.2 );
setRotateKey( spep_1 -3 + 90, 1, -64.2 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 87, 906, 117, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 87, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 87, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 204, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 87, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 204, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 87, shuchusen, 0 );
setEffRotateKey( spep_1 + 204, shuchusen, 0 );
setEffAlphaKey( spep_1 + 87, shuchusen, 255 );
setEffAlphaKey( spep_1 + 204, shuchusen, 255 );

-- ** 音 ** --
--敵貫く
SE028 = playSeVer2( spep_1 + 2, 1026, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_1 + 84, 1069, "", 0, 6, 0, -1);
setStartTimeMs( SE029,  200 );
SE030 = playSeVer2( spep_1 + 82, 1067, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 82, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 84, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 88 );
entryFade( spep_1 +196, 2,  10, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 208 );


else end