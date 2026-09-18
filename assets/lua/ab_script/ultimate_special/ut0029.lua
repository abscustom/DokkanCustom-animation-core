--1024060:ラディッツ_ラディッツの制裁
--sp_effect_a2_00176

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
SP_01=	159434	;--	開幕〜フィニッシュ
SP_02=	159435	;--	開幕〜フィニッシュ

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
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 780 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 796);      -- スキップ先フレーム指定


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
finish_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 930, finish_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 930, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 930, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 930, finish_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 930, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 930, finish_b, 255 );

--敵の動き
setDisp( spep_0-3 + 712, 1, 1);

changeAnime( spep_0-3 + 712, 1, 117);

setMoveKey( spep_0-3 + 712, 1, -33.6, 1036.5 , 0 );
setMoveKey( spep_0-3 + 714, 1, -28.9, 1019.7 , 0 );
setMoveKey( spep_0-3 + 716, 1, -15, 969.8 , 0 );
setMoveKey( spep_0-3 + 718, 1, 8.3, 887.4 , 0 );
setMoveKey( spep_0-3 + 720, 1, 40.8, 774 , 0 );
setMoveKey( spep_0-3 + 722, 1, 82.7, 631.2 , 0 );
setMoveKey( spep_0-3 + 724, 1, 82.5, 616 , 0 );
setMoveKey( spep_0-3 + 726, 1, 81.9, 604.8 , 0 );
setMoveKey( spep_0-3 + 728, 1, 81.8, 570.8 , 0 );
setMoveKey( spep_0-3 + 730, 1, 74.5, 556 , 0 );
setMoveKey( spep_0-3 + 732, 1, 89, 531.4 , 0 );
setMoveKey( spep_0-3 + 734, 1, 74.1, 511.5 , 0 );
setMoveKey( spep_0-3 + 736, 1, 88.3, 468.6 , 0 );
setMoveKey( spep_0-3 + 738, 1, 80.7, 478.6 , 0 );
setMoveKey( spep_0-3 + 740, 1, 80.5, 461.3 , 0 );
setMoveKey( spep_0-3 + 742, 1, 73.1, 465.3 , 0 );
setMoveKey( spep_0-3 + 744, 1, 87.6, 461.2 , 0 );
setMoveKey( spep_0-3 + 746, 1, 72.6, 463.9 , 0 );
setMoveKey( spep_0-3 + 748, 1, 86.7, 445.6 , 0 );
setMoveKey( spep_0-3 + 750, 1, 72.8, 440.6 , 0 );
setMoveKey( spep_0-3 + 752, 1, 85.1, 448.4 , 0 );
setMoveKey( spep_0-3 + 754, 1, 78.5, 442 , 0 );
setMoveKey( spep_0-3 + 756, 1, 78.3, 421.8 , 0 );
setMoveKey( spep_0-3 + 758, 1, 70.8, 422.9 , 0 );
setMoveKey( spep_0-3 + 760, 1, 85.2, 416 , 0 );
setMoveKey( spep_0-3 + 762, 1, 70.1, 415.9 , 0 );
setMoveKey( spep_0-3 + 764, 1, 84.2, 394.7 , 0 );
setMoveKey( spep_0-3 + 766, 1, 70.2, 386.9 , 0 );
setMoveKey( spep_0-3 + 768, 1, 82.4, 391.9 , 0 );
setMoveKey( spep_0-3 + 770, 1, 75.8, 382.9 , 0 );
setMoveKey( spep_0-3 + 772, 1, 75.1, 351.6 , 0 );
setMoveKey( spep_0-3 + 774, 1, 67.3, 342 , 0 );
setMoveKey( spep_0-3 + 776, 1, 81.3, 324.9 , 0 );
setMoveKey( spep_0-3 + 778, 1, 65.9, 315 , 0 );
setMoveKey( spep_0-3 + 780, 1, 79.6, 284.4 , 0 );
setMoveKey( spep_0-3 + 782, 1, 64.6, 246.5 , 0 );
setMoveKey( spep_0-3 + 784, 1, 75.9, 222 , 0 );

setScaleKey( spep_0-3 + 712, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 714, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 716, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 718, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 720, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 722, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 740, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 742, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 746, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 748, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 750, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 752, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 754, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 756, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 758, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 760, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 762, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 764, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 766, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 768, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 770, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 772, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 774, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 776, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 778, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 780, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 782, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 784, 1, 0.65, 0.65 );

setRotateKey( spep_0-3 + 712, 1, -1.5 );
setRotateKey( spep_0-3 + 744, 1, -1.5 );
setRotateKey( spep_0-3 + 746, 1, -1.4 );
setRotateKey( spep_0-3 + 764, 1, -1.4 );
setRotateKey( spep_0-3 + 766, 1, -1.3 );
setRotateKey( spep_0-3 + 784, 1, -1.3 );


--SE
--土煙
SE001 = playSeVer2( spep_0 + 2, 1168, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE001, 50 );
setStartTimeMs( SE001,  1200 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 120, 1018, "", 0, 0, 0, -1);

--アップしてスカウター光る
SE003 = playSeVer2( spep_0 + 240, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE003, 73 );
SE004 = playSeVer2( spep_0 + 240, 32, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 254, 1042, "", 0, 0, 0, -1);

--腕広げる
SE006 = playSeVer2( spep_0 + 322, 1237, "",spep_0 + 392, 4, 36, -1);
setSeVolumeByWorkId( spep_0 + 322, SE006, 84 );
setStartTimeMs( SE006,  200 );
SE007 = playSeVer2( spep_0 + 314, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 314, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 314, 1233, "", 0, 0, 0, -1);

--気弾溜め始め
SE010 = playSeVer2( spep_0 + 366, 1136, "",spep_0 + 464, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 366, SE010, 72 );
SE011 = playSeVer2( spep_0 + 366, 1191, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE011, 62 );
SE012 = playSeVer2( spep_0 + 366, 1037, "",spep_0 + 522, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 366, SE012, 65 );
SE013 = playSeVer2( spep_0 + 366, 1158, "",spep_0 + 568, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 366, SE013, 80 );

--気弾溜め
SE014 = playSeVer2( spep_0 + 414, 1248, "",spep_0 + 518, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 414, SE014, 56 );
SE015 = playSeVer2( spep_0 + 444, 1255, "",spep_0 + 732, 0, 14, -1);
SE016 = playSeVer2( spep_0 + 444, 1271, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 444, 1002, "",spep_0 + 516, 0, 24, -1);

--気弾溜めながら飛び上がる
SE018 = playSeVer2( spep_0 + 536, 1116, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 536, 1199, "",spep_0 + 616, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 536, SE019, 158 );
SE020 = playSeVer2( spep_0 + 536, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE020, 73 );

--振りかぶる
SE021 = playSeVer2( spep_0 + 596, 1004, "", 0, 0, 0, -1);

--気弾溜めながら飛び上がる
SE022 = playSeVer2( spep_0 + 604, 1199, "",spep_0 + 690, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 604, SE022, 158 );
SE023 = playSeVer2( spep_0 + 672, 1199, "",spep_0 + 732, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 672, SE023, 158 );

--気弾投げる
SE024 = playSeVer2( spep_0 + 712, 1004, "", 0, 0, 0, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_0 + 722, 1304, "",spep_0 + 826, 14, 22, -1);
setStartTimeMs( SE025,  167 );

--気弾投げる
SE026 = playSeVer2( spep_0 + 716, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE026, 74 );
SE027 = playSeVer2( spep_0 + 716, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE027, 85 );

--気弾飛んでいく
SE028 = playSeVer2( spep_0 + 744, 1193, "",spep_0 + 826, 12, 20, -1);
setStartTimeMs( SE028,  467 );

--気弾投げる
SE029 = playSeVer2( spep_0 + 720, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 720, SE029, -300 );
setTimeStretch( SE029, 0.8, 30, 4 );

--ボイス
--……その程度か
playVoice( spep_0 + 8, 409 );
setVoiceVolume( spep_0 + 8, 409, 100 );

--今度はオレの出番かな？では技の見本をみせてやろう……
playVoice( spep_0 + 132, 410 );
setVoiceVolume( spep_0 + 132, 410, 100 );
setSeVolumeByWorkId( spep_0 + 720, SE029, 200 );

--くたばれぇーー！！
playVoice( spep_0 + 644, 411 );
setVoiceVolume( spep_0 + 644, 411, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 930, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 780; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE024, 0 );
    stopSe( SP_dodge - 12, SE025, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    stopSe( SP_dodge - 12, SE028, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 75.9, 222 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.65, 0.65 );
    setRotateKey( SP_dodge + 9, 1, -1.3 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-1 + 792, 1, 0);

setMoveKey( spep_0-3 + 786, 1, 68.3, 183.9 , 0 );
setMoveKey( spep_0-3 + 788, 1, 67.1, 132.5 , 0 );
setMoveKey( spep_0-3 + 790, 1, 58.7, 102.9 , 0 );
setMoveKey( spep_0-1 + 792, 1, 72.1, 66 , 0 );

setScaleKey( spep_0-3 + 786, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 788, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 790, 1, 0.79, 0.79 );
setScaleKey( spep_0-1 + 792, 1, 0.84, 0.84 );

setRotateKey( spep_0-1 + 792, 1, -1.3 );

--SE
--爆発
SE030 = playSeVer2( spep_0 + 808, 1159, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 816, 1067, "", 0, 0, 0, -1);

--爆風
SE032 = playSeVer2( spep_0 + 838, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE032, 60 );
setPitch( spep_0 + 838, SE032, -800 );
setTimeStretch( SE032, 0.47, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 814 );
endPhase( spep_0 + 920 );
else end