--人造人間17号(第7宇宙チーム)_第７宇宙総攻撃

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
SP_01 = 156921;  --冒頭〜発射まで
SP_02 = 156922;  --ビーム〜ラスト：手前
SP_03 = 156923;  --ビーム〜ラスト：奥
SP_04 = 156924;  --書き文字_セリフ文字

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

    if (_IS_SKIP_ == 1) then
      spep_0 = 0;
      spep_1 = spep_0 + 800;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 190 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 224);      -- スキップ先フレーム指定
       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭〜発射まで(800F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffectLife( spep_0 + 0, SP_01, 800, 0x100, -1, 0, 0, 0 );  --冒頭〜発射まで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 800, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 800, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 800, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 799, start, 255 );
setEffAlphaKey( spep_0 + 800, start, 0 );

-- ** ボイス ** --
--オレたち全員で攻撃するしかないな
playVoice( spep_0 + 3, 258 );
setVoiceVolume( spep_0 + 3, 258, 105 );
setVoiceVolume( spep_0 + 36, 258, 90 );

-- ** 音 ** --
--セリフカットイン
SE001 = playSe( spep_0 + 0, 1018 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 70 ); 

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 10 );  
stopSe( spep_0 + 246, SE002, 0 );

SE003 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 18 );
stopSe( spep_0 + 246, SE003, 0 );

--全員フレームイン
SE004 = playSe( spep_0 + 134, 8 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 190 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

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

-- ** ボイス ** --
--はああああああ（全員気ダメ）
playVoice( spep_0 + 167, 259 );
setVoiceVolume( spep_0 + 167, 259, 79 );

--よし！
playVoice( spep_0 + 284, 260 );
setVoiceVolume( spep_0 + 284, 260, 79 );

--はあーーー！！（孫悟空）
playVoice( spep_0 + 434, 261 );
setVoiceVolume( spep_0 + 434, 261, 100 );

--はあーーー！！（ベジータ）
playVoice( spep_0 + 496, 262 );
setVoiceVolume( spep_0 + 496, 262, 89 );

--はあーーーー！！（アル飯）
playVoice( spep_0 + 576, 263 );
setVoiceVolume( spep_0 + 576, 263, 100 );

--はああーーー！！（17号）
playVoice( spep_0 + 650, 264 );
setVoiceVolume( spep_0 + 650, 264, 100 );

--キィェェエエイ！！（フリーザ）
playVoice( spep_0 + 730, 265 );
setVoiceVolume( spep_0 + 730, 265, 79 );

-- ** 音 ** --
--全員気ダメ
SE005 = playSe( spep_0 + 220, 1024 );
setSeVolumeByWorkId( spep_0 + 220, SE005, 76 );
SE006 = playSe( spep_0 + 220, 1035 );
SE007 = playSe( spep_0 + 220, 1188 );
setSeVolumeByWorkId( spep_0 + 220, SE007, 63 );
SE008 = playSe( spep_0 + 220, 1067 );
setSeVolumeByWorkId( spep_0 + 220, SE008, 79 );
SE009 = playSe( spep_0 + 224, 1298 );

--オーラ
SE010 = playSe( spep_0 + 256, 1036 );
setSeVolumeByWorkId( spep_0 + 256, SE010, 79 );
SE011 = playSe( spep_0 + 280, 1036 );
setSeVolumeByWorkId( spep_0 + 280, SE011, 79 );
SE012 = playSe( spep_0 + 304, 1036 );
setSeVolumeByWorkId( spep_0 + 304, SE012, 79 );
SE014 = playSe( spep_0 + 328, 1036 );
setSeVolumeByWorkId( spep_0 + 328, SE014, 56 );
SE015 = playSe( spep_0 + 352, 1036 );
setSeVolumeByWorkId( spep_0 + 352, SE015, 38 );
SE018 = playSe( spep_0 + 376, 1036 );
setSeVolumeByWorkId( spep_0 + 376, SE018, 38 );

--構える
SE013 = playSe( spep_0 + 324, 1003 );

--悟空かめはめ波溜め
SE016 = playSe( spep_0 + 362, 1109 );
setSeVolumeByWorkId( spep_0 + 362, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 364, SE016, 34 );
setSeVolumeByWorkId( spep_0 + 366, SE016, 75 );
setSeVolumeByWorkId( spep_0 + 368, SE016, 101 );
setSeVolumeByWorkId( spep_0 + 370, SE016, 126 );
stopSe( spep_0 + 370, SE016, 58 );
SE017 = playSe( spep_0 + 368, 1209 );
setSeVolumeByWorkId( spep_0 + 368, SE017, 120 );
setPitch( spep_0 + 368, SE017, -300 );
setTimeStretch( SE017, 0.8, 10, 1 );
SE019 = playSe( spep_0 + 380, 1307 );
setSeVolumeByWorkId( spep_0 + 380, SE019, 214 );
stopSe( spep_0 + 434, SE019, 12 );
SE020 = playSe( spep_0 + 386, 1109 );
setSeVolumeByWorkId( spep_0 + 386, SE020, 0 );
setSeVolumeByWorkId( spep_0 + 388, SE020, 38 );
setSeVolumeByWorkId( spep_0 + 390, SE020, 61 );
setSeVolumeByWorkId( spep_0 + 392, SE020, 89 );
setSeVolumeByWorkId( spep_0 + 394, SE020, 121 );
setSeVolumeByWorkId( spep_0 + 396, SE020, 136 );
setSeVolumeByWorkId( spep_0 + 398, SE020, 158 );
stopSe( spep_0 + 398, SE020, 50 );
setPitch( spep_0 + 386, SE020, 200 );
setTimeStretch( SE020, 1.13, 10, 1 );

--悟空かめはめ波発射
SE021 = playSe( spep_0 + 434, 1258 );
setSeVolumeByWorkId( spep_0 + 434, SE021, 74 );
stopSe( spep_0 + 504, SE021, 30 );
SE022 = playSe( spep_0 + 438, 1223 );
stopSe( spep_0 + 504, SE022, 26 );
SE023 = playSe( spep_0 + 438, 1213 );
setSeVolumeByWorkId( spep_0 + 438, SE023, 62 );
stopSe( spep_0 + 506, SE023, 26 );

--ベジータ発射
SE024 = playSe( spep_0 + 504, 1133 );
setSeVolumeByWorkId( spep_0 + 504, SE024, 79 );
stopSe( spep_0 + 590, SE024, 20 );
SE025 = playSe( spep_0 + 504, 1265 );
stopSe( spep_0 + 590, SE025, 20 );
SE026 = playSe( spep_0 + 504, 1213 );
setSeVolumeByWorkId( spep_0 + 504, SE026, 72 );
stopSe( spep_0 + 590, SE026, 20 );

--悟飯発射
SE027 = playSe( spep_0 + 580, 1258 );
setSeVolumeByWorkId( spep_0 + 580, SE027, 59 );
stopSe( spep_0 + 660, SE027, 28 );
SE028 = playSe( spep_0 + 584, 1223 );
setSeVolumeByWorkId( spep_0 + 584, SE028, 68 );
stopSe( spep_0 + 660, SE028, 28 );
SE029 = playSe( spep_0 + 584, 1213 );
setSeVolumeByWorkId( spep_0 + 584, SE029, 56 );
stopSe( spep_0 + 660, SE029, 28 );

--17号発射
SE030 = playSe( spep_0 + 660, 1258 );
setSeVolumeByWorkId( spep_0 + 660, SE030, 65 );
stopSe( spep_0 + 726, SE030, 16 );
SE031 = playSe( spep_0 + 666, 1284 );
setSeVolumeByWorkId( spep_0 + 666, SE031, 74 );
stopSe( spep_0 + 726, SE031, 16 );
SE032 = playSe( spep_0 + 666, 1177 );
setSeVolumeByWorkId( spep_0 + 666, SE032, 61 );
stopSe( spep_0 + 726, SE032, 16 );
SE033 = playSe( spep_0 + 666, 1248 );
setSeVolumeByWorkId( spep_0 + 666, SE033, 126 );
setPitch( spep_0 + 666, SE033, -900 );
setTimeStretch( SE033, 0.4, 10, 1 );

--フリーザ発射
SE034 = playSe( spep_0 + 730, 1212 );
setSeVolumeByWorkId( spep_0 + 730, SE034, 0 );
setSeVolumeByWorkId( spep_0 + 732, SE034, 6 );
setSeVolumeByWorkId( spep_0 + 734, SE034, 14 );
setSeVolumeByWorkId( spep_0 + 736, SE034, 22 );
setSeVolumeByWorkId( spep_0 + 738, SE034, 27 );
setSeVolumeByWorkId( spep_0 + 740, SE034, 34 );
setSeVolumeByWorkId( spep_0 + 742, SE034, 42 );
setSeVolumeByWorkId( spep_0 + 744, SE034, 48 );
setSeVolumeByWorkId( spep_0 + 746, SE034, 56 );
setSeVolumeByWorkId( spep_0 + 748, SE034, 61 );
setSeVolumeByWorkId( spep_0 + 750, SE034, 67 );
setSeVolumeByWorkId( spep_0 + 752, SE034, 74 );
setSeVolumeByWorkId( spep_0 + 754, SE034, 85 );
stopSe( spep_0 + 800, SE034, 14 );
setStartTimeMs( SE034,  867 );
SE035 = playSe( spep_0 + 726, 1282 );
setSeVolumeByWorkId( spep_0 + 726, SE035, 71 );
stopSe( spep_0 + 800, SE035, 20 );
setPitch( spep_0 + 726, SE035, -300 );
setTimeStretch( SE035, 0.8, 10, 1 );
SE036 = playSe( spep_0 + 726, 1027 );
setSeVolumeByWorkId( spep_0 + 726, SE036, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 800;

------------------------------------------------------
-- 冒頭〜発射まで(336F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --冒頭〜発射まで(ef_001)
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 336, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 336, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 336, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 336, finish_f, 255 );

finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --冒頭〜発射まで(ef_001)
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 336, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 336, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 336, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
setEffAlphaKey( spep_1 + 336, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 38, 1, 0 );
setDisp( spep_1 -3 + 146, 1, 1 );
setDisp( spep_1 -3 + 185, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 146, 1, 104 );
changeAnime( spep_1 -3 + 154, 1, 108 );

setMoveKey( spep_1 + 0, 1, 168.9, 317.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 167.9, 317.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 166.8, 317.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 165.7, 317.6 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 164.7, 317.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 163.6, 317.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 162.5, 317.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 161.4, 317.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 160.4, 317.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 159.3, 317 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 158.2, 316.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 157.2, 316.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 156.1, 316.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 155, 316.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 154, 316.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 152.9, 316.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 151.8, 316.3 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 150.8, 316.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 150.8, 316.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 177.5, 382.2 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 169.7, 361.2 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 161.9, 340.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 154.1, 319.2 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 154.1, 319.2 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 151.1, 312.6 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 155.9, 317.4 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 162.7, 326.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 171.5, 339.5 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 182.4, 357.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 195.6, 379.2 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 211, 405.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 228.8, 437.5 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 249, 474.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 271.8, 515.8 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 297.1, 562.9 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 325.1, 615.3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 355.8, 673.4 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 389.3, 737.3 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 425.7, 807 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 465.1, 882.8 , 0 );
setMoveKey( spep_1 -3 + 185, 1, 465.1, 882.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 4, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 16, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 18, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 32, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 37, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 146, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 148, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 150, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 152, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 153, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 154, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 156, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 158, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 160, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 162, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 164, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 166, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 168, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 170, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 172, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 174, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 176, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 178, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 180, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 182, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 184, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 185, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 37, 1, 0 );
setRotateKey( spep_1 -3 + 146, 1, -20.7 );
setRotateKey( spep_1 -3 + 153, 1, -20.7 );
setRotateKey( spep_1 -3 + 154, 1, -35.9 );
setRotateKey( spep_1 -3 + 185, 1, -35.9 );

-- ** ボイス ** --
--はあーーーー！！（全員放つ）
playVoice( spep_1 + 45, 266 );
setVoiceVolume( spep_1 + 45, 266, 126 );

-- ** 音 ** --
--全員気弾飛んでいく
SE037 = playSe( spep_1 + 2, 1027 );
setSeVolumeByWorkId( spep_1 + 2, SE037, 61 );
SE038 = playSe( spep_1 + 2, 1213 );
setSeVolumeByWorkId( spep_1 + 2, SE038, 85 );
stopSe( spep_1 + 50, SE038, 42 );
SE039 = playSe( spep_1 + 2, 1241 );
stopSe( spep_1 + 50, SE039, 42 );

--気弾中
SE040 = playSe( spep_1 + 36, 1211 );
setSeVolumeByWorkId( spep_1 + 36, SE040, 115 );
stopSe( spep_1 + 152, SE040, 24 );
SE041 = playSe( spep_1 + 38, 1161 );
setSeVolumeByWorkId( spep_1 + 38, SE041, 78 );
stopSe( spep_1 + 152, SE041, 22 );
SE042 = playSe( spep_1 + 38, 1226 );
setSeVolumeByWorkId( spep_1 + 38, SE042, 51 );
stopSe( spep_1 + 154, SE042, 20 );

--全員気弾飛んでいく２
SE043 = playSe( spep_1 + 88, 1215 );
stopSe( spep_1 + 190, SE043, 36 );
SE044 = playSe( spep_1 + 138, 1258 );
setSeVolumeByWorkId( spep_1 + 138, SE044, 68 );
stopSe( spep_1 + 222, SE044, 18 );
SE045 = playSe( spep_1 + 144, 1021 );
SE046 = playSe( spep_1 + 150, 1284 );
setSeVolumeByWorkId( spep_1 + 150, SE046, 72 );
stopSe( spep_1 + 230, SE046, 14 );

--キラン
SE047 = playSe( spep_1 + 180, 1179 );
SE048 = playSe( spep_1 + 186, 1042 );

--爆発
SE049 = playSe( spep_1 + 224, 1159 );
SE050 = playSe( spep_1 + 232, 1067 );
SE051 = playSe( spep_1 + 244, 1188 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 224 );
endPhase( spep_1 + 334 -2 );

else end