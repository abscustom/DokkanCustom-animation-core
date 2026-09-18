--1024510:ゴールデンフリーザ_アースブレイカー(アクティブ)_ut0032
--sp_effect_b4_00239

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
SP_01 = 159932;  --開幕〜地球表面爆発
SP_02 = 159939;  --開幕〜地球表面爆発
SP_03 = 159940;  --地面が吹き上がる
SP_04 = 159941;  --地面が吹き上がる
SP_05 = 159942;  --地球爆発


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

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 914 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1110);      -- スキップ先フレーム指定

           --地球爆発
           SE027 = playSeVer2( spep_0 + 1110, 1069, "",spep_0 + 1224, 0, 12, -1);
           SE028 = playSeVer2( spep_0 + 1124, 1024, "",spep_0 + 1224, 0, 12, -1);
           SE029 = playSeVer2( spep_0 + 1124, 1188, "",spep_0 + 1224, 0, 12, -1);
           SE030 = playSeVer2( spep_0 + 1140, 1305, "",spep_0 + 1224, 0, 12, -1);
           setSeVolumeByWorkId( spep_0 + 1140, SE030, 193 );

       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ベジータ立ち〜敵が爆発にのまれる
------------------------------------------------------
--はじめの準備
spep_0=0;

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

-- ** エフェクト等 ** --
stand_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stand_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 1200, stand_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stand_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1200, stand_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stand_f, 0 );
setEffRotateKey( spep_0 + 1200, stand_f, 0 );
setEffAlphaKey( spep_0 + 0, stand_f, 255 );
setEffAlphaKey( spep_0 + 1200, stand_f, 255 );

-- ** エフェクト等 ** --
stand_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stand_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 1200, stand_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stand_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1200, stand_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stand_b, 0 );
setEffRotateKey( spep_0 + 1200, stand_b, 0 );
setEffAlphaKey( spep_0 + 0, stand_b, 255 );
setEffAlphaKey( spep_0 + 1200, stand_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_0 + 1218, SP_05, 0x80, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_0 + 1218, KO, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1448, KO, 0, 0 , 0 );
setEffScaleKey( spep_0 + 1218, KO, 1.0 +0.05, 1.0 +0.05 );
setEffScaleKey( spep_0 + 1448, KO, 1.0 +0.05, 1.0 +0.05 );
setEffRotateKey( spep_0 + 1218, KO, 0 );
setEffRotateKey( spep_0 + 1448, KO, 0 );
setEffAlphaKey( spep_0 + 1218, KO, 255 );
setEffAlphaKey( spep_0 + 1448, KO, 255 );

--敵の動き
setDisp( spep_0 -3 + 240, 1, 1 );
setDisp( spep_0 -3 + 300, 1, 0 );
changeAnime( spep_0 -3 + 240, 1, 100 );

setMoveKey( spep_0 -3 + 240, 1, 229.6, -126.9 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 229.9, -127.1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 230.2, -127.2 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 230.5, -127.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 230.8, -127.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 231.2, -127.8 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 231.5, -128 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 231.9, -128.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 232.2, -128.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 232.5, -128.5 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 232.8, -128.7 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 233.2, -128.9 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 233.5, -129.1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 233.8, -129.2 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 234.1, -129.5 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 234.4, -129.6 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 234.8, -129.8 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 235.1, -130 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 235.4, -130.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 235.7, -130.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 236.1, -130.5 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 236.4, -130.8 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 236.7, -130.9 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 237, -131.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 237.3, -131.3 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 237.7, -131.5 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 238, -131.7 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 238.3, -131.9 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 238.6, -132 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 239, -132.2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 239, -132.2 , 0 );

setScaleKey( spep_0 -3 + 240, 1, 1.85, 1.85 );
--setScaleKey( spep_0 -3 + 242, 1, 1.85, 1.85 );
--setScaleKey( spep_0 -3 + 244, 1, 1.86, 1.86 );
--setScaleKey( spep_0 -3 + 250, 1, 1.86, 1.86 );
--setScaleKey( spep_0 -3 + 252, 1, 1.87, 1.87 );
--setScaleKey( spep_0 -3 + 258, 1, 1.87, 1.87 );
--setScaleKey( spep_0 -3 + 260, 1, 1.88, 1.88 );
--setScaleKey( spep_0 -3 + 264, 1, 1.88, 1.88 );
--setScaleKey( spep_0 -3 + 266, 1, 1.89, 1.89 );
--setScaleKey( spep_0 -3 + 272, 1, 1.89, 1.89 );
--setScaleKey( spep_0 -3 + 274, 1, 1.9, 1.9 );
--setScaleKey( spep_0 -3 + 280, 1, 1.9, 1.9 );
--setScaleKey( spep_0 -3 + 282, 1, 1.91, 1.91 );
--setScaleKey( spep_0 -3 + 288, 1, 1.91, 1.91 );
--setScaleKey( spep_0 -3 + 290, 1, 1.92, 1.92 );
--setScaleKey( spep_0 -3 + 294, 1, 1.92, 1.92 );
--setScaleKey( spep_0 -3 + 296, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 300, 1, 1.93, 1.93 );

setRotateKey( spep_0 -3 + 240, 1, 0 );
setRotateKey( spep_0 -3 + 300, 1, 0 );

------------------------------------------------------
-- ボイス
------------------------------------------------------
--はあ、はあ！
playVoice( spep_0 + 0, 443 );
setVoiceVolume( spep_0 + 0, 442, 100 );

--ち、ちくしょう！ちくしょう！！
playVoice( spep_0 + 288, 444 );
setVoiceVolume( spep_0 + 288, 443, 100 );

--くぅうううう
playVoice( spep_0 + 548, 445 );
setVoiceVolume( spep_0 + 548, 444, 100 );

--キサマもろとも、この地球を破壊してやる！
playVoice( spep_0 + 660, 446 );
setVoiceVolume( spep_0 + 660, 445, 100 );

------------------------------------------------------
-- SE
------------------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1088, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--膝つく
SE002 = playSeVer2( spep_0 + 200, 1135, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 200, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE003, 79 );

--手をつく
SE004 = playSeVer2( spep_0 + 210, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE004, 295 );
SE005 = playSeVer2( spep_0 + 210, 1007, "", 0, 0, 0, -1);

--地面殴る
SE006 = playSeVer2( spep_0 + 352, 1168, "",spep_0 + 420, 8, 26, -1);
setSeVolumeByWorkId( spep_0 + 352, SE006, 45 );
setStartTimeMs( SE006,  1817 );
SE007 = playSeVer2( spep_0 + 348, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 352, 1135, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 352, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE009, 58 );

--地面殴る２
SE010 = playSeVer2( spep_0 + 464, 1168, "", 0, 110, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE010, 74 );
setStartTimeMs( SE010,  1800 );
SE011 = playSeVer2( spep_0 + 468, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE011, 70 );
SE012 = playSeVer2( spep_0 + 468, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE012, 91 );
SE013 = playSeVer2( spep_0 + 468, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE013, 79 );

--セリフカットイン
SE014 = playSeVer2( spep_0 + 656, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE014, 62 );

--集中線
SE015 = playSeVer2( spep_0 + 664, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE015, 48 );
SE016 = playSeVer2( spep_0 + 664, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE016, 40 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 1220, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +914; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );

    setVoiceVolume( SP_dodge - 12, 445, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_0 -3 + 970, 1, 1 );
setDisp( spep_0 -3 + 1114, 1, 0 );
changeAnime( spep_0 -3 + 970, 1, 104 );

a = 10;
b = 15;
setMoveKey( spep_0 -3 + 970, 1, 81.2 +a, 50.7 +b , 0 );
setMoveKey( spep_0 -3 + 972, 1, 78.7 +a, 55.6 +b , 0 );
setMoveKey( spep_0 -3 + 974, 1, 81.1 +a, 56.4 +b , 0 );
setMoveKey( spep_0 -3 + 976, 1, 83.5 +a, 52.4 +b , 0 );
setMoveKey( spep_0 -3 + 978, 1, 85.7 +a, 57.1 +b , 0 );
setMoveKey( spep_0 -3 + 980, 1, 83 +a, 59.2 +b , 0 );
setMoveKey( spep_0 -3 + 982, 1, 82.8 +a, 56.2 +b , 0 );
setMoveKey( spep_0 -3 + 984, 1, 85.1 +a, 55.9 +b , 0 );
setMoveKey( spep_0 -3 + 986, 1, 81.1 +a, 54.3 +b , 0 );
setMoveKey( spep_0 -3 + 988, 1, 82 +a, 57.5 +b , 0 );
setMoveKey( spep_0 -3 + 990, 1, 84.3 +a, 57.1 +b , 0 );
setMoveKey( spep_0 -3 + 992, 1, 81.6 +a, 58.9 +b , 0 );
setMoveKey( spep_0 -3 + 994, 1, 82.6 +a, 57.1 +b , 0 );
setMoveKey( spep_0 -3 + 996, 1, 83.7 +a, 60.2 +b , 0 );
setMoveKey( spep_0 -3 + 998, 1, 80.9 +a, 61.8 +b , 0 );
setMoveKey( spep_0 -3 + 1000, 1, 83.2 +a, 63.4 +b , 0 );
setMoveKey( spep_0 -3 + 1002, 1, 80.4 +a, 59.9 +b , 0 );
setMoveKey( spep_0 -3 + 1004, 1, 82.7 +a, 56.6 +b , 0 );
setMoveKey( spep_0 -3 + 1006, 1, 82.4 +a, 58.3 +b , 0 );
setMoveKey( spep_0 -3 + 1008, 1, 84.6 +a, 57.4 +b , 0 );
setMoveKey( spep_0 -3 + 1010, 1, 81.5 +a, 58.9 +b , 0 );
setMoveKey( spep_0 -3 + 1012, 1, 83.7 +a, 57.7 +b , 0 );
setMoveKey( spep_0 -3 + 1014, 1, 80.7 +a, 56.6 +b , 0 );
setMoveKey( spep_0 -3 + 1016, 1, 81.6 +a, 54.3 +b , 0 );
setMoveKey( spep_0 -3 + 1018, 1, 77.7 +a, 56.8 +b , 0 );
setMoveKey( spep_0 -3 + 1020, 1, 77.8 +a, 57.8 +b , 0 );
setMoveKey( spep_0 -3 + 1022, 1, 80.2 +a, 55.9 +b , 0 );
setMoveKey( spep_0 -3 + 1024, 1, 77.4 +a, 51.5 +b , 0 );
setMoveKey( spep_0 -3 + 1026, 1, 75.1 +a, 52.8 +b , 0 );
setMoveKey( spep_0 -3 + 1028, 1, 76.2 +a, 49.8 +b , 0 );
setMoveKey( spep_0 -3 + 1030, 1, 71.2 +a, 40.6 +b , 0 );
setMoveKey( spep_0 -3 + 1032, 1, 71.1 +a, 36.5 +b , 0 );
setMoveKey( spep_0 -3 + 1034, 1, 130.4 +a, 76.1 +b , 0 );
setMoveKey( spep_0 -3 + 1036, 1, 10.2 +a, -2.8 +b , 0 );
setMoveKey( spep_0 -3 + 1038, 1, 122.5 +a, -9.2 +b , 0 );
setMoveKey( spep_0 -3 + 1040, 1, 11 +a, 65.5 +b , 0 );
setMoveKey( spep_0 -3 + 1042, 1, 57.6 +a, 21.5 +b , 0 );
setMoveKey( spep_0 -3 + 1044, 1, 73.7 +a, 11.6 +b , 0 );
setMoveKey( spep_0 -3 + 1046, 1, 40.7 +a, 22.6 +b , 0 );
setMoveKey( spep_0 -3 + 1048, 1, 67.1 +a, 15 +b , 0 );
setMoveKey( spep_0 -3 + 1050, 1, 73.6 +a, 10.6 +b , 0 );
setMoveKey( spep_0 -3 + 1052, 1, 45.4 +a, 19.8 +b , 0 );
setMoveKey( spep_0 -3 + 1054, 1, 72 +a, 16.8 +b , 0 );
setMoveKey( spep_0 -3 + 1056, 1, 49.6 +a, 12.6 +b , 0 );
setMoveKey( spep_0 -3 + 1058, 1, 56.5 +a, 17.4 +b , 0 );
setMoveKey( spep_0 -3 + 1060, 1, 66.9 +a, 14.6 +b , 0 );
setMoveKey( spep_0 -3 + 1062, 1, 48.7 +a, 15.3 +b , 0 );
setMoveKey( spep_0 -3 + 1064, 1, 41.4 +a, 16.3 +b , 0 );
setMoveKey( spep_0 -3 + 1066, 1, 65.1 +a, 17.6 +b , 0 );
setMoveKey( spep_0 -3 + 1068, 1, 50 +a, 14.9 +b , 0 );
setMoveKey( spep_0 -3 + 1070, 1, 56.3 +a, 17.2 +b , 0 );
setMoveKey( spep_0 -3 + 1072, 1, 66.7 +a, 14.3 +b , 0 );
setMoveKey( spep_0 -3 + 1074, 1, 48.5 +a, 15 +b , 0 );
setMoveKey( spep_0 -3 + 1076, 1, 41.2 +a, 16 +b , 0 );
setMoveKey( spep_0 -3 + 1078, 1, 64.9 +a, 17.3 +b , 0 );
setMoveKey( spep_0 -3 + 1080, 1, 49.8 +a, 14.7 +b , 0 );
setMoveKey( spep_0 -3 + 1082, 1, 56.2 +a, 16.9 +b , 0 );
setMoveKey( spep_0 -3 + 1084, 1, 66.5 +a, 14.1 +b , 0 );
setMoveKey( spep_0 -3 + 1086, 1, 48.3 +a, 14.7 +b , 0 );
setMoveKey( spep_0 -3 + 1088, 1, 41 +a, 15.7 +b , 0 );
setMoveKey( spep_0 -3 + 1090, 1, 64.7 +a, 17.1 +b , 0 );
setMoveKey( spep_0 -3 + 1092, 1, 49.6 +a, 14.4 +b , 0 );
setMoveKey( spep_0 -3 + 1094, 1, 40.9 +a, 15.7 +b , 0 );
setMoveKey( spep_0 -3 + 1096, 1, 71.4 +a, 15.8 +b , 0 );
setMoveKey( spep_0 -3 + 1098, 1, 48.8 +a, 11.6 +b , 0 );
setMoveKey( spep_0 -3 + 1100, 1, 55.8 +a, 16.5 +b , 0 );
setMoveKey( spep_0 -3 + 1102, 1, 66.3 +a, 13.7 +b , 0 );
setMoveKey( spep_0 -3 + 1104, 1, 48 +a, 14.3 +b , 0 );
setMoveKey( spep_0 -3 + 1106, 1, 71.2 +a, 15.5 +b , 0 );
setMoveKey( spep_0 -3 + 1108, 1, 48.7 +a, 11.4 +b , 0 );
setMoveKey( spep_0 -3 + 1110, 1, 55.7 +a, 16.2 +b , 0 );
setMoveKey( spep_0 -3 + 1112, 1, 66.1 +a, 13.4 +b , 0 );
setMoveKey( spep_0 -3 + 1114, 1, 47.8 +a, 14.1 +b , 0 );
--setMoveKey( spep_0 -3 + 1116, 1, 40.5, 15.2 , 0 );
--setMoveKey( spep_0 -3 + 1118, 1, 64.2, 16.4 , 0 );
--setMoveKey( spep_0 -3 + 1120, 1, 49.2, 13.7 , 0 );
--setMoveKey( spep_0 -3 + 1122, 1, 55.5, 15.9 , 0 );
--setMoveKey( spep_0 -3 + 1124, 1, 65.9, 13.1 , 0 );
--setMoveKey( spep_0 -3 + 1126, 1, 47.7, 13.8 , 0 );
--setMoveKey( spep_0 -3 + 1128, 1, 40.3, 14.8 , 0 );

s = 0.1;
setScaleKey( spep_0 -3 + 970, 1, 0.64 +s, 0.64 +s );
setScaleKey( spep_0 -3 + 978, 1, 0.64 +s, 0.64 +s );
setScaleKey( spep_0 -3 + 980, 1, 0.63 +s, 0.63 +s );
setScaleKey( spep_0 -3 + 996, 1, 0.63 +s, 0.63 +s );
setScaleKey( spep_0 -3 + 998, 1, 0.62 +s, 0.62 +s );
setScaleKey( spep_0 -3 + 1012, 1, 0.62 +s, 0.62 +s );
setScaleKey( spep_0 -3 + 1014, 1, 0.61 +s, 0.61 +s );
setScaleKey( spep_0 -3 + 1026, 1, 0.61 +s, 0.61 +s );
setScaleKey( spep_0 -3 + 1028, 1, 0.58 +s, 0.58 +s );
setScaleKey( spep_0 -3 + 1030, 1, 0.55 +s, 0.55 +s );
setScaleKey( spep_0 -3 + 1032, 1, 0.52 +s, 0.52 +s );
setScaleKey( spep_0 -3 + 1034, 1, 0.49 +s, 0.49 +s );
setScaleKey( spep_0 -3 + 1036, 1, 0.47 +s, 0.47 +s );
setScaleKey( spep_0 -3 + 1038, 1, 0.44 +s, 0.44 +s );
setScaleKey( spep_0 -3 + 1040, 1, 0.41 +s, 0.41 +s );
setScaleKey( spep_0 -3 + 1042, 1, 0.38 +s, 0.38 +s );
setScaleKey( spep_0 -3 + 1044, 1, 0.35 +s, 0.35 +s );
setScaleKey( spep_0 -3 + 1080, 1, 0.35 +s, 0.35 +s );
setScaleKey( spep_0 -3 + 1082, 1, 0.34 +s, 0.34 +s );
setScaleKey( spep_0 -3 + 1114, 1, 0.34 +s, 0.34 +s );

setRotateKey( spep_0 -3 + 970, 1, 0 );
setRotateKey( spep_0 -3 + 1114, 1, 0 );

--力込める
SE017 = playSeVer2( spep_0 + 914, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 914, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914, SE018, 90 );

--地響き
SE019 = playSeVer2( spep_0 + 926, 1044, "",spep_0 + 1046, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 926, SE019, 62 );
SE020 = playSeVer2( spep_0 + 926, 1226, "",spep_0 + 1156, 0, 12, -1);

--地面爆発
SE021 = playSeVer2( spep_0 + 1028, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE021, 136 );
setPitch( spep_0 + 1028, SE021, -600 );
setTimeStretch( SE021, 0.6, 30, 4 );
SE022 = playSeVer2( spep_0 + 1028, 1159, "",spep_0 + 1132, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE022, 96 );
SE023 = playSeVer2( spep_0 + 1046, 1059, "",spep_0 + 1092, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE023, 99 );
setPitch( spep_0 + 1046, SE023, -400 );
setTimeStretch( SE023, 0.73, 30, 4 );
SE024 = playSeVer2( spep_0 + 1046, 1044, "",spep_0 + 1156, 0, 14, -1);
SE025 = playSeVer2( spep_0 + 1062, 1068, "",spep_0 + 1126, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE025, 105 );
SE026 = playSeVer2( spep_0 + 1078, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE026, 91 );

--地球爆発
SE027 = playSeVer2( spep_0 + 1110, 1069, "",spep_0 + 1224, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE027, 120 );
SE028 = playSeVer2( spep_0 + 1124, 1024, "",spep_0 + 1224, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1124, SE028, 110 );
SE029 = playSeVer2( spep_0 + 1124, 1188, "",spep_0 + 1224, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1124, SE029, 110 );
SE030 = playSeVer2( spep_0 + 1140, 1305, "",spep_0 + 1224, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1140, SE030, 193 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 1110 );
entryFade( spep_0 +1210, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_0 + 1220 );

else end
end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_z + 86, hit_f, 0, 0, 0 );
setEffScaleKey( spep_z + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_f, 0 );
setEffRotateKey( spep_z + 86, hit_f, 0 );
setEffAlphaKey( spep_z + 0, hit_f, 255 );
setEffAlphaKey( spep_z + 86, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_z + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_z + 86, hit_b, 0, 0, 0 );
setEffScaleKey( spep_z + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_b, 0 );
setEffRotateKey( spep_z + 86, hit_b, 0 );
setEffAlphaKey( spep_z + 0, hit_b, 255 );
setEffAlphaKey( spep_z + 86, hit_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_z + 82, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_z + 82, KO, 0, 0 , 0 );
setEffMoveKey( spep_z + 312, KO, 0, 0 , 0 );
setEffScaleKey( spep_z + 82, KO, 1.0 +0.05, 1.0 +0.05 );
setEffScaleKey( spep_z + 312, KO, 1.0 +0.05, 1.0 +0.05 );
setEffRotateKey( spep_z + 82, KO, 0 );
setEffRotateKey( spep_z + 312, KO, 0 );
setEffAlphaKey( spep_z + 82, KO, 255 );
setEffAlphaKey( spep_z + 312, KO, 255 );

--敵の動き
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z -3 + 20, 1, 106 );

setMoveKey( spep_z + 0, 1, 17, -259.1 , 0 );
setMoveKey( spep_z + 1, 1, 16.9, -255.8 , 0 );
setMoveKey( spep_z + 2, 1, 16.8, -261.2 , 0 );
setMoveKey( spep_z -3 + 6, 1, 17.8, -255.8 , 0 );
setMoveKey( spep_z -3 + 8, 1, 16.3, -263.6 , 0 );
setMoveKey( spep_z -3 + 10, 1, 17.8, -254 , 0 );
setMoveKey( spep_z -3 + 12, 1, 17.5, -265.8 , 0 );
setMoveKey( spep_z -3 + 14, 1, 16.3, -216.9 , 0 );
setMoveKey( spep_z -3 + 16, 1, 17.5, -200.1 , 0 );
setMoveKey( spep_z -3 + 19, 1, 16.3, -147 , 0 );
setMoveKey( spep_z -3 + 20, 1, 19.6, -117.1 , 0 );
setMoveKey( spep_z -3 + 22, 1, 20.9, -94.2 , 0 );
setMoveKey( spep_z -3 + 24, 1, 16.8, -122.8 , 0 );
setMoveKey( spep_z -3 + 26, 1, 14.9, -102.3 , 0 );
setMoveKey( spep_z -3 + 28, 1, 19.7, -119.4 , 0 );
setMoveKey( spep_z -3 + 30, 1, 13.2, -94.8 , 0 );
setMoveKey( spep_z -3 + 32, 1, 20.7, -126.6 , 0 );
setMoveKey( spep_z -3 + 34, 1, 18.9, -81.6 , 0 );
setMoveKey( spep_z -3 + 36, 1, 11.3, -133.8 , 0 );
setMoveKey( spep_z -3 + 38, 1, 15.6, -80.3 , 0 );
setMoveKey( spep_z -3 + 40, 1, 18.5, -126.1 , 0 );
setMoveKey( spep_z -3 + 42, 1, 19.3, -76.2 , 0 );
setMoveKey( spep_z -3 + 44, 1, 12.2, -130.1 , 0 );
setMoveKey( spep_z -3 + 46, 1, 15.6, -71.4 , 0 );
setMoveKey( spep_z -3 + 48, 1, 20.5, -124.7 , 0 );
setMoveKey( spep_z -3 + 50, 1, 14.3, -118 , 0 );
setMoveKey( spep_z -3 + 52, 1, 10.7, -65.7 , 0 );
setMoveKey( spep_z -3 + 54, 1, 19.8, -118 , 0 );
setMoveKey( spep_z -3 + 56, 1, 18.8, -57.6 , 0 );
setMoveKey( spep_z -3 + 58, 1, 11.2, -109 , 0 );
setMoveKey( spep_z -3 + 60, 1, 15.6, -55.7 , 0 );
setMoveKey( spep_z -3 + 62, 1, 18.8, -109.1 , 0 );
setMoveKey( spep_z -3 + 64, 1, 10.7, -86 , 0 );
setMoveKey( spep_z -3 + 66, 1, 15.6, -16.4 , 0 );
setMoveKey( spep_z -3 + 68, 1, 17.6, -53.3 , 0 );
setMoveKey( spep_z -3 + 70, 1, 9.6, 23.4 , 0 );
setMoveKey( spep_z -3 + 72, 1, 13.6, -11.6 , 0 );
setMoveKey( spep_z -3 + 74, 1, 19.1, 58 , 0 );
setMoveKey( spep_z -3 + 76, 1, 9.8, 21 , 0 );
setMoveKey( spep_z -3 + 78, 1, 18.2, 39.6 , 0 );
setMoveKey( spep_z -3 + 80, 1, 20.4, 116.3 , 0 );
setMoveKey( spep_z -3 + 82, 1, 11.4, 81.2 , 0 );
setMoveKey( spep_z -3 + 84, 1, 15.4, 150.8 , 0 );
setMoveKey( spep_z -3 + 86, 1, 19.8, 113.9 , 0 );
setMoveKey( spep_z -3 + 88, 1, 10.8, 137 , 0 );
setMoveKey( spep_z -3 + 89, 1, 10.8, 137 , 0 );

setScaleKey( spep_z + 0, 1, 1.12, 1.12 );
setScaleKey( spep_z -3 + 89, 1, 1.12, 1.12 );

setRotateKey( spep_z + 0, 1, -4.3 );
setRotateKey( spep_z + 1, 1, -4.5 );
setRotateKey( spep_z -3 + 19, 1, -4.5 );
setRotateKey( spep_z -3 + 20, 1, -4.3 );
setRotateKey( spep_z -3 + 22, 1, -4.5 );
setRotateKey( spep_z -3 + 89, 1, -4.5 );

--SE
--地響き
SE031 = playSeVer2( spep_z + 0, 1226, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_z + 0, 1044, "", 0, 0, 0, -1);

--爆発
SE033 = playSeVer2( spep_z + 22, 1188, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_z + 22, 1068, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_z + 22, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 86, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_z + 0 );
entryFade( spep_z +76, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_z + 86 );
end