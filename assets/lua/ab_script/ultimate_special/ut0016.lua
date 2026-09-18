--1021920:超サイヤ人孫悟空(GT)_渾身のかめはめ波（アクティブ）
--sp_effect_a1_00291

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
SP_01=	157266	;--	悟空登場〜フィニッシュ
SP_02=	157267	;--	悟空登場〜フィニッシュ
SP_03=	157268	;--	KO


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

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 450 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 510);      -- スキップ先フレーム指定

           --敵飲み込まれる
           SE016 = playSe( spep_0 + 510, 1226 );
           stopSe( spep_0 + 594, SE016, 104 );

           SE017 = playSe( spep_0 + 510, 1161 );
           setSeVolumeByWorkId( spep_0 + 510, SE017, 50 );
           stopSe( spep_0 + 590, SE017, 98 );

           SE018 = playSe( spep_0 + 510, 1024 );
           setSeVolumeByWorkId( spep_0 + 510, SE018, 71 );

           SE019 = playSe( spep_0 + 510, 1067 );
           setSeVolumeByWorkId( spep_0 + 510, SE019, 79 );

           SE020 = playSe( spep_0 + 510, 1159 );
           setSeVolumeByWorkId( spep_0 + 510, SE020, 79 );
           stopSe( spep_0 + 644, SE020, 10 );

       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 悟空登場〜フィニッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 620, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 620, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 620, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 620, eff_b, 255 );

--敵の動き
setDisp( spep_0-3 + 426, 1, 1);
changeAnime( spep_0-3 + 426, 1, 118);
setBlendColor(spep_0-3 + 426,1,3,0.39,0.71,0.78,0.68);
setBlendColor(spep_0 + 450,1,3,0.39,0.71,0.78,0.68);

setMoveKey( spep_0-3 + 426, 1, 186, 151 , 0 );
setMoveKey( spep_0 + 450, 1, 186, 151 , 0 );

setScaleKey( spep_0-3 + 426, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 450, 1, 1.04, 1.04 );

setRotateKey( spep_0-3 + 426, 1, -9.5 );
setRotateKey( spep_0 + 450, 1, -9.5 );

--SE
--セリフカットイン
SE001 = playSe( spep_0 + 0, 1018 );

--カメラ引く
SE002 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
stopSe( spep_0 + 98, SE002, 30 );
SE003 = playSe( spep_0 + 0, 1168 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );

--砂巻き上がる
SE004 = playSe( spep_0 + 96, 1024 );
setSeVolumeByWorkId( spep_0 + 96, SE004, 83 );
SE005 = playSe( spep_0 + 96, 1035 );

--カメラ横向き
SE006 = playSe( spep_0 + 168, 1278 );
stopSe( spep_0 + 256, SE006, 40 );

--気ダメ
SE007 = playSe( spep_0 + 240, 1258 );
setSeVolumeByWorkId( spep_0 + 240, SE007, 0 );
setSeVolumeByWorkId( spep_0 + 241, SE007, 4.1 );
setSeVolumeByWorkId( spep_0 + 242, SE007, 8.2 );
setSeVolumeByWorkId( spep_0 + 243, SE007, 12.3 );
setSeVolumeByWorkId( spep_0 + 244, SE007, 16.4 );
setSeVolumeByWorkId( spep_0 + 245, SE007, 20.5 );
setSeVolumeByWorkId( spep_0 + 246, SE007, 24.6 );
setSeVolumeByWorkId( spep_0 + 247, SE007, 28.7 );
setSeVolumeByWorkId( spep_0 + 248, SE007, 32.8 );
setSeVolumeByWorkId( spep_0 + 249, SE007, 36.9 );
setSeVolumeByWorkId( spep_0 + 250, SE007, 41 );
setSeVolumeByWorkId( spep_0 + 251, SE007, 45.1 );
setSeVolumeByWorkId( spep_0 + 252, SE007, 49.2 );
setSeVolumeByWorkId( spep_0 + 253, SE007, 53.3 );
setSeVolumeByWorkId( spep_0 + 254, SE007, 57.4 );
setSeVolumeByWorkId( spep_0 + 255, SE007, 61.5 );
setSeVolumeByWorkId( spep_0 + 256, SE007, 65.6 );
setSeVolumeByWorkId( spep_0 + 257, SE007, 69.7 );
setSeVolumeByWorkId( spep_0 + 258, SE007, 73.8 );
setSeVolumeByWorkId( spep_0 + 259, SE007, 77.9 );
setSeVolumeByWorkId( spep_0 + 260, SE007, 82 );
setSeVolumeByWorkId( spep_0 + 261, SE007, 86.1 );
setSeVolumeByWorkId( spep_0 + 262, SE007, 91 );
stopSe( spep_0 + 310, SE007, 24 );
setPitch( spep_0 + 240, SE007, -300 );
setTimeStretch( SE007, 0.8, 10, 1 );
SE008 = playSe( spep_0 + 256, 1306 );
setSeVolumeByWorkId( spep_0 + 256, SE008, 67 );
stopSe( spep_0 + 350, SE008, 36 );
SE009 = playSe( spep_0 + 256, 1226 );
setSeVolumeByWorkId( spep_0 + 256, SE009, 71 );
SE010 = playSe( spep_0 + 256, 1265 );
stopSe( spep_0 + 356, SE010, 24 );

--かめはめ波発射
SE011 = playSe( spep_0 + 336, 1205 );
SE012 = playSe( spep_0 + 336, 1146 );
SE013 = playSe( spep_0 + 336, 1284 );

--追いかめはめ波
SE015 = playSe( spep_0 + 420, 1021 );
setSeVolumeByWorkId( spep_0 + 420, SE015, 83 );

--敵飲み込まれる
SE016 = playSe( spep_0 + 422, 1226 );
setSeVolumeByWorkId( spep_0 + 422, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 423, SE016, 2.5 );
setSeVolumeByWorkId( spep_0 + 424, SE016, 5 );
setSeVolumeByWorkId( spep_0 + 425, SE016, 7.5 );
setSeVolumeByWorkId( spep_0 + 426, SE016, 10 );
setSeVolumeByWorkId( spep_0 + 427, SE016, 12.5 );
setSeVolumeByWorkId( spep_0 + 428, SE016, 15 );
setSeVolumeByWorkId( spep_0 + 429, SE016, 17.5 );
setSeVolumeByWorkId( spep_0 + 430, SE016, 20 );
setSeVolumeByWorkId( spep_0 + 431, SE016, 22.5 );
setSeVolumeByWorkId( spep_0 + 432, SE016, 25 );
setSeVolumeByWorkId( spep_0 + 433, SE016, 27.5 );
setSeVolumeByWorkId( spep_0 + 434, SE016, 30 );
setSeVolumeByWorkId( spep_0 + 435, SE016, 32.5 );
setSeVolumeByWorkId( spep_0 + 436, SE016, 35 );
setSeVolumeByWorkId( spep_0 + 437, SE016, 37.5 );

--ボイス
--か…
playVoice( spep_0 + 0, 267 );
setVoiceVolume( spep_0 + 0, 267, 120 );

--め…（２回目）
playVoice( spep_0 + 94, 268 );
setVoiceVolume( spep_0 + 94, 268, 120 );

--は…
playVoice( spep_0 + 168, 269 );
setVoiceVolume( spep_0 + 168, 269, 105 );

--め…（４回目）
playVoice( spep_0 + 242, 270 );
setVoiceVolume( spep_0 + 242, 270, 110 );

--波あぁぁーー！！
playVoice( spep_0 + 296, 271 );
setVoiceVolume( spep_0 + 296, 271, 130 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 620, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 450; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );

    pauseAll( SP_dodge, 67 );
    
    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 186, 151 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.04, 1.04 );
    setRotateKey( SP_dodge + 9, 1, -9.5 );

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

-- ** エフェクト等 ** --
KO = entryEffect( spep_0 + 606, SP_03, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_0 + 606, KO, 0, 0 , 0 );
setEffMoveKey( spep_0 + 726, KO, 0, 0 , 0 );
setEffScaleKey( spep_0 + 606, KO, 1.0 , 1.0  );
setEffScaleKey( spep_0 + 726, KO, 1.0 , 1.0  );
setEffRotateKey( spep_0 + 606, KO, 0 );
setEffRotateKey( spep_0 + 726, KO, 0 );
setEffAlphaKey( spep_0 + 606, KO, 255 );
setEffAlphaKey( spep_0 + 726, KO, 255 );

--敵の動き
changeAnime( spep_0-3 + 482, 1, 106);

setBlendColor(spep_0-3 + 482,1,3,0.5,0.72,1,0.49);
setBlendColor(spep_0-3 +538,1,3,0.5,0.72,1,0.49);
setBlendColor(spep_0-3 +539,1,3,0.507,0.7247,1,0.499);
setBlendColor(spep_0-3 +540,1,3,0.514,0.7294,1,0.508);
setBlendColor(spep_0-3 +541,1,3,0.521,0.7341,1,0.517);
setBlendColor(spep_0-3 +542,1,3,0.528,0.7388,1,0.526);
setBlendColor(spep_0-3 +543,1,3,0.535,0.7435,1,0.535);
setBlendColor(spep_0-3 +544,1,3,0.542,0.7482,1,0.544);
setBlendColor(spep_0-3 +545,1,3,0.549,0.7529,1,0.553);
setBlendColor(spep_0-3 +546,1,3,0.556,0.7576,1,0.562);
setBlendColor(spep_0-3 +547,1,3,0.563,0.7623,1,0.571);
setBlendColor(spep_0-3 +548,1,3,0.57,0.767,1,0.58);
setBlendColor(spep_0-3 +549,1,3,0.577,0.7717,1,0.589);
setBlendColor(spep_0-3 +550,1,3,0.584,0.7764,1,0.598);
setBlendColor(spep_0-3 +551,1,3,0.591,0.7811,1,0.607);
setBlendColor(spep_0-3 +552,1,3,0.598,0.7858,1,0.616);
setBlendColor(spep_0-3 +553,1,3,0.605,0.7905,1,0.625);
setBlendColor(spep_0-3 +554,1,3,0.612,0.7952,1,0.634);
setBlendColor(spep_0-3 +555,1,3,0.619,0.7999,1,0.643);
setBlendColor(spep_0-3 +556,1,3,0.626,0.8046,1,0.652);
setBlendColor(spep_0-3 +557,1,3,0.633,0.8093,1,0.661);
setBlendColor(spep_0-3 +558,1,3,0.64,0.814,1,0.67);
setBlendColor(spep_0-3 +559,1,3,0.647,0.8187,1,0.679);
setBlendColor(spep_0-3 +560,1,3,0.654,0.8234,1,0.688);
setBlendColor(spep_0-3 +561,1,3,0.661,0.8281,1,0.697);
setBlendColor(spep_0-3 +562,1,3,0.668,0.8328,1,0.706);
setBlendColor(spep_0-3 +563,1,3,0.675,0.8375,1,0.715);
setBlendColor(spep_0-3 +564,1,3,0.682,0.8422,1,0.724);
setBlendColor(spep_0-3 +565,1,3,0.689,0.8469,1,0.733);
setBlendColor(spep_0-3 +566,1,3,0.696,0.8516,1,0.742);
setBlendColor(spep_0-3 +567,1,3,0.703,0.8563,1,0.751);
setBlendColor(spep_0-3 +568,1,3,0.71,0.861,1,0.76);
setBlendColor(spep_0-3 +569,1,3,0.717,0.8657,1,0.769);
setBlendColor(spep_0-3 +570,1,3,0.724,0.8704,1,0.778);
setBlendColor(spep_0-3 +571,1,3,0.731,0.8751,1,0.787);
setBlendColor(spep_0-3 +572,1,3,0.738,0.8798,1,0.796);
setBlendColor(spep_0-3 +573,1,3,0.745,0.8845,1,0.805);
setBlendColor(spep_0-3 +574,1,3,0.752,0.8892,1,0.814);
setBlendColor(spep_0-3 +575,1,3,0.759,0.8939,1,0.823);
setBlendColor(spep_0-3 +576,1,3,0.766,0.8986,1,0.832);
setBlendColor(spep_0-3 +577,1,3,0.773,0.9033,1,0.841);
setBlendColor(spep_0-3 +578,1,3,0.78,0.908,1,0.85);
setBlendColor(spep_0-3 +579,1,3,0.787,0.9127,1,0.859);
setBlendColor(spep_0-3 +580,1,3,0.794,0.9174,1,0.868);
setBlendColor(spep_0-3 +581,1,3,0.801,0.9221,1,0.877);
setBlendColor(spep_0-3 +582,1,3,0.81,0.93,1,0.89);
setBlendColor(spep_0 +604,1,3,0.81,0.93,1,0.89);
setBlendColor(spep_0 +606,1,3,0.81,0.93,1,0);

setMoveKey( spep_0-3 + 481, 1, 186, 151 , 0 );

setMoveKey( spep_0-3 + 482, 1, -42.1, -20.2 , 0 );
setMoveKey( spep_0-3 + 484, 1, -40.3, -18.7 , 0 );
setMoveKey( spep_0-3 + 486, 1, -38.4, -17.3 , 0 );
setMoveKey( spep_0-3 + 488, 1, -36.7, -15.9 , 0 );
setMoveKey( spep_0-3 + 490, 1, -34.9, -14.5 , 0 );
setMoveKey( spep_0-3 + 492, 1, -33.2, -13.2 , 0 );
setMoveKey( spep_0-3 + 494, 1, -31.6, -11.9 , 0 );
setMoveKey( spep_0-3 + 496, 1, -30, -10.6 , 0 );
setMoveKey( spep_0-3 + 498, 1, -28.4, -9.4 , 0 );
setMoveKey( spep_0-3 + 500, 1, -26.9, -8.2 , 0 );
setMoveKey( spep_0-3 + 502, 1, -25.3, -7 , 0 );
setMoveKey( spep_0-3 + 504, 1, -23.8, -5.8 , 0 );
setMoveKey( spep_0-3 + 506, 1, -22.4, -4.6 , 0 );
setMoveKey( spep_0-3 + 508, 1, -20.9, -3.4 , 0 );
setMoveKey( spep_0-3 + 510, 1, -19.4, -2.2 , 0 );
setMoveKey( spep_0-3 + 512, 1, -18, -1.1 , 0 );
setMoveKey( spep_0-3 + 514, 1, -16.6, 0.1 , 0 );
setMoveKey( spep_0-3 + 516, 1, -15.2, 1.2 , 0 );
setMoveKey( spep_0-3 + 518, 1, -13.8, 2.3 , 0 );
setMoveKey( spep_0-3 + 520, 1, -12.4, 3.5 , 0 );
setMoveKey( spep_0-3 + 522, 1, -11.1, 4.6 , 0 );
setMoveKey( spep_0-3 + 524, 1, -9.7, 5.7 , 0 );
setMoveKey( spep_0-3 + 526, 1, -8.3, 6.8 , 0 );
setMoveKey( spep_0-3 + 528, 1, -7, 8 , 0 );
setMoveKey( spep_0-3 + 530, 1, -5.6, 9.1 , 0 );
setMoveKey( spep_0-3 + 532, 1, -4.3, 10.2 , 0 );
setMoveKey( spep_0-3 + 534, 1, -3, 11.3 , 0 );
setMoveKey( spep_0-3 + 536, 1, -1.7, 12.4 , 0 );
setMoveKey( spep_0-3 + 538, 1, -0.4, 13.5 , 0 );
setMoveKey( spep_0-3 + 540, 1, 0.9, 14.6 , 0 );
setMoveKey( spep_0-3 + 542, 1, 2.1, 15.6 , 0 );
setMoveKey( spep_0-3 + 544, 1, 3.3, 16.6 , 0 );
setMoveKey( spep_0-3 + 546, 1, 4.5, 17.6 , 0 );
setMoveKey( spep_0-3 + 548, 1, 5.6, 18.5 , 0 );
setMoveKey( spep_0-3 + 550, 1, 6.8, 19.4 , 0 );
setMoveKey( spep_0-3 + 552, 1, 7.8, 20.3 , 0 );
setMoveKey( spep_0-3 + 554, 1, 8.9, 21.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, 9.9, 22 , 0 );
setMoveKey( spep_0-3 + 558, 1, 10.9, 22.9 , 0 );
setMoveKey( spep_0-3 + 560, 1, 11.9, 23.6 , 0 );
setMoveKey( spep_0-3 + 562, 1, 12.8, 24.4 , 0 );
setMoveKey( spep_0-3 + 564, 1, 13.7, 25.2 , 0 );
setMoveKey( spep_0-3 + 566, 1, 14.6, 25.9 , 0 );
setMoveKey( spep_0-3 + 568, 1, 15.4, 26.6 , 0 );
setMoveKey( spep_0-3 + 570, 1, 16.2, 27.2 , 0 );
setMoveKey( spep_0-3 + 572, 1, 17, 27.9 , 0 );
setMoveKey( spep_0-3 + 574, 1, 17.8, 28.5 , 0 );
setMoveKey( spep_0-3 + 576, 1, 18.5, 29.1 , 0 );
setMoveKey( spep_0-3 + 578, 1, 19.2, 29.6 , 0 );
setMoveKey( spep_0-3 + 580, 1, 19.9, 30.2 , 0 );
setMoveKey( spep_0-3 + 582, 1, 20.5, 30.7 , 0 );
setMoveKey( spep_0-3 + 584, 1, 21.1, 31.1 , 0 );
setMoveKey( spep_0-3 + 586, 1, 21.7, 31.6 , 0 );
setMoveKey( spep_0-3 + 588, 1, 21.1, 31.2 , 0 );
setMoveKey( spep_0-3 + 590, 1, 21.7, 31.6 , 0 );
setMoveKey( spep_0-3 + 592, 1, 22.2, 32 , 0 );
setMoveKey( spep_0-3 + 594, 1, 22.7, 32.4 , 0 );
setMoveKey( spep_0-3 + 596, 1, 23.2, 32.8 , 0 );
setMoveKey( spep_0-3 + 598, 1, 23.7, 33.1 , 0 );
setMoveKey( spep_0-3 + 600, 1, 24.1, 33.4 , 0 );
setMoveKey( spep_0-3 + 602, 1, 24.4, 33.7 , 0 );
setMoveKey( spep_0-3 + 610, 1, 24.8, 34.5 , 0 );

setScaleKey( spep_0-3 + 481, 1, 1.04, 1.04 );

setScaleKey( spep_0-3 + 482, 1, 2, 2 );
setScaleKey( spep_0-3 + 610, 1, 2, 2 );

setRotateKey( spep_0-3 + 481, 1, -9.5 );

setRotateKey( spep_0-3 + 482, 1, -20 );
setRotateKey( spep_0-3 + 484, 1, -19.8 );
setRotateKey( spep_0-3 + 486, 1, -19.7 );
setRotateKey( spep_0-3 + 488, 1, -19.5 );
setRotateKey( spep_0-3 + 490, 1, -19.4 );
setRotateKey( spep_0-3 + 492, 1, -19.2 );
setRotateKey( spep_0-3 + 494, 1, -19.1 );
setRotateKey( spep_0-3 + 496, 1, -19 );
setRotateKey( spep_0-3 + 498, 1, -18.8 );
setRotateKey( spep_0-3 + 500, 1, -18.7 );
setRotateKey( spep_0-3 + 502, 1, -18.6 );
setRotateKey( spep_0-3 + 504, 1, -18.5 );
setRotateKey( spep_0-3 + 506, 1, -18.3 );
setRotateKey( spep_0-3 + 508, 1, -18.2 );
setRotateKey( spep_0-3 + 510, 1, -18.1 );
setRotateKey( spep_0-3 + 512, 1, -18 );
setRotateKey( spep_0-3 + 514, 1, -17.9 );
setRotateKey( spep_0-3 + 516, 1, -17.8 );
setRotateKey( spep_0-3 + 518, 1, -17.7 );
setRotateKey( spep_0-3 + 520, 1, -17.6 );
setRotateKey( spep_0-3 + 522, 1, -17.5 );
setRotateKey( spep_0-3 + 524, 1, -17.4 );
setRotateKey( spep_0-3 + 526, 1, -17.3 );
setRotateKey( spep_0-3 + 528, 1, -17.2 );
setRotateKey( spep_0-3 + 530, 1, -17.1 );
setRotateKey( spep_0-3 + 532, 1, -17.1 );
setRotateKey( spep_0-3 + 534, 1, -17 );
setRotateKey( spep_0-3 + 536, 1, -16.9 );
setRotateKey( spep_0-3 + 538, 1, -16.8 );
setRotateKey( spep_0-3 + 540, 1, -16.7 );
setRotateKey( spep_0-3 + 542, 1, -16.6 );
setRotateKey( spep_0-3 + 544, 1, -16.6 );
setRotateKey( spep_0-3 + 546, 1, -16.5 );
setRotateKey( spep_0-3 + 548, 1, -16.4 );
setRotateKey( spep_0-3 + 550, 1, -16.3 );
setRotateKey( spep_0-3 + 552, 1, -16.3 );
setRotateKey( spep_0-3 + 554, 1, -16.2 );
setRotateKey( spep_0-3 + 556, 1, -16.1 );
setRotateKey( spep_0-3 + 558, 1, -16.1 );
setRotateKey( spep_0-3 + 560, 1, -16 );
setRotateKey( spep_0-3 + 562, 1, -15.9 );
setRotateKey( spep_0-3 + 564, 1, -15.9 );
setRotateKey( spep_0-3 + 566, 1, -15.8 );
setRotateKey( spep_0-3 + 568, 1, -15.7 );
setRotateKey( spep_0-3 + 570, 1, -15.7 );
setRotateKey( spep_0-3 + 572, 1, -15.6 );
setRotateKey( spep_0-3 + 574, 1, -15.6 );
setRotateKey( spep_0-3 + 576, 1, -15.5 );
setRotateKey( spep_0-3 + 578, 1, -15.5 );
setRotateKey( spep_0-3 + 580, 1, -15.4 );
setRotateKey( spep_0-3 + 582, 1, -15.4 );
setRotateKey( spep_0-3 + 584, 1, -15.3 );
setRotateKey( spep_0-3 + 590, 1, -15.3 );
setRotateKey( spep_0-3 + 592, 1, -15.2 );
setRotateKey( spep_0-3 + 594, 1, -15.2 );
setRotateKey( spep_0-3 + 596, 1, -15.1 );
setRotateKey( spep_0-3 + 598, 1, -15.1 );
setRotateKey( spep_0-3 + 610, 1, -15 );

--SE
setSeVolumeByWorkId( spep_0 + 438, SE016, 40 );
setSeVolumeByWorkId( spep_0 + 439, SE016, 42.5 );
setSeVolumeByWorkId( spep_0 + 440, SE016, 45 );
setSeVolumeByWorkId( spep_0 + 441, SE016, 47.5 );
setSeVolumeByWorkId( spep_0 + 442, SE016, 50 );
setSeVolumeByWorkId( spep_0 + 443, SE016, 52.5 );
setSeVolumeByWorkId( spep_0 + 444, SE016, 55 );
setSeVolumeByWorkId( spep_0 + 445, SE016, 57.5 );
setSeVolumeByWorkId( spep_0 + 446, SE016, 60 );
setSeVolumeByWorkId( spep_0 + 447, SE016, 62.5 );
setSeVolumeByWorkId( spep_0 + 448, SE016, 65 );
setSeVolumeByWorkId( spep_0 + 449, SE016, 67.5 );
setSeVolumeByWorkId( spep_0 + 450, SE016, 70 );
setSeVolumeByWorkId( spep_0 + 451, SE016, 72.5 );
setSeVolumeByWorkId( spep_0 + 452, SE016, 75 );
setSeVolumeByWorkId( spep_0 + 453, SE016, 77.5 );
setSeVolumeByWorkId( spep_0 + 454, SE016, 80 );
setSeVolumeByWorkId( spep_0 + 455, SE016, 82.5 );
setSeVolumeByWorkId( spep_0 + 456, SE016, 85 );
setSeVolumeByWorkId( spep_0 + 457, SE016, 87.5 );
setSeVolumeByWorkId( spep_0 + 458, SE016, 90 );
setSeVolumeByWorkId( spep_0 + 459, SE016, 92.5 );
setSeVolumeByWorkId( spep_0 + 460, SE016, 95 );
setSeVolumeByWorkId( spep_0 + 461, SE016, 97.5 );
setSeVolumeByWorkId( spep_0 + 462, SE016, 100 );
stopSe( spep_0 + 594, SE016, 104 );
SE017 = playSe( spep_0 + 470, 1161 );
setSeVolumeByWorkId( spep_0 + 470, SE017, 50 );
stopSe( spep_0 + 590, SE017, 98 );
SE018 = playSe( spep_0 + 470, 1024 );
setSeVolumeByWorkId( spep_0 + 470, SE018, 71 );
SE019 = playSe( spep_0 + 474, 1067 );
setSeVolumeByWorkId( spep_0 + 474, SE019, 79 );
SE020 = playSe( spep_0 + 474, 1159 );
setSeVolumeByWorkId( spep_0 + 474, SE020, 79 );
stopSe( spep_0 + 644, SE020, 10 );
SE014 = playSe( spep_0 + 518, 1266 );
setSeVolumeByWorkId( spep_0 + 518, SE014, 0 );
setSeVolumeByWorkId( spep_0 + 519, SE014, 4.4 );
setSeVolumeByWorkId( spep_0 + 520, SE014, 8.8 );
setSeVolumeByWorkId( spep_0 + 521, SE014, 13.2 );
setSeVolumeByWorkId( spep_0 + 522, SE014, 17.6 );
setSeVolumeByWorkId( spep_0 + 523, SE014, 22 );
setSeVolumeByWorkId( spep_0 + 524, SE014, 26.4 );
setSeVolumeByWorkId( spep_0 + 525, SE014, 30.8 );
setSeVolumeByWorkId( spep_0 + 526, SE014, 35.2 );
setSeVolumeByWorkId( spep_0 + 527, SE014, 39.6 );
setSeVolumeByWorkId( spep_0 + 528, SE014, 44 );
setSeVolumeByWorkId( spep_0 + 529, SE014, 48.4 );
setSeVolumeByWorkId( spep_0 + 530, SE014, 52.8 );
setSeVolumeByWorkId( spep_0 + 531, SE014, 57.2 );
setSeVolumeByWorkId( spep_0 + 532, SE014, 61.6 );
setSeVolumeByWorkId( spep_0 + 533, SE014, 66 );
setSeVolumeByWorkId( spep_0 + 534, SE014, 70.4 );
setSeVolumeByWorkId( spep_0 + 535, SE014, 74.8 );
setSeVolumeByWorkId( spep_0 + 536, SE014, 79.2 );
setSeVolumeByWorkId( spep_0 + 537, SE014, 83.6 );
setSeVolumeByWorkId( spep_0 + 538, SE014, 88 );
setSeVolumeByWorkId( spep_0 + 539, SE014, 92.4 );
setSeVolumeByWorkId( spep_0 + 540, SE014, 96.8 );
setSeVolumeByWorkId( spep_0 + 541, SE014, 101.2 );
setSeVolumeByWorkId( spep_0 + 542, SE014, 105.6 );
setSeVolumeByWorkId( spep_0 + 543, SE014, 110 );
setSeVolumeByWorkId( spep_0 + 544, SE014, 114.4 );
setSeVolumeByWorkId( spep_0 + 545, SE014, 118.8 );
setSeVolumeByWorkId( spep_0 + 546, SE014, 123.2 );
setSeVolumeByWorkId( spep_0 + 547, SE014, 127.6 );
setSeVolumeByWorkId( spep_0 + 548, SE014, 132 );
setSeVolumeByWorkId( spep_0 + 549, SE014, 136.4 );
setSeVolumeByWorkId( spep_0 + 550, SE014, 141 );
setStartTimeMs( SE014,  2317 );
stopSe( spep_0 + 604, SE014, 38 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 510 );
entryFade( spep_0 +600, 2,  8, 2, 255, 255, 255, 255);             -- black fade
endPhase( spep_0 + 610 );
else end