--1022750:フリーザ(フルパワー)_オレに殺されるべきなんだ！(アクティブ)_ut0021
--sp_effect_a1_00308

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
SP_01 = 157945;  --冒頭から発射前まで ef_001
SP_02 = 157946;  --発射後からダメージまで　手前  ef_002
SP_03 = 157947;  --発射後からダメージまで　奥 ef_003
SP_04 = 157948;  --KO  ef_004


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.85);


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
        spep_1 = spep_0 + 730;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 140 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 288);      -- スキップ先フレーム指定

           --爆発
           SE025 = playSeVer2( spep_1 + 288, 1023, "", 0, 0, 0, -1);
           SE026 = playSeVer2( spep_1 + 294, 1067, "", 0, 0, 0, -1);
           SE027 = playSeVer2( spep_1 + 296, 1159, "", 0, 0, 0, -1);

       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭から発射前まで
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 734, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 734, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 734, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 732, tame_f, 255 );
setEffAlphaKey( spep_0 + 733, tame_f, 255 );
setEffAlphaKey( spep_0 + 734, tame_f, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 720, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--拳握る
SE002 = playSeVer2( spep_0 + 0, 1330, "",spep_0 + 40, 0, 14, -1);
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--拳握る
SE003 = playSeVer2( spep_0 + 0, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 77 );
setPitch( spep_0 + 0, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--力む
SE004 = playSeVer2( spep_0 + 38, 1250, "",spep_0 + 230, 0, 12, -1);
setPitch( spep_0 + 38, SE004, -800 );
setTimeStretch( SE004, 0.47, 30, 4 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 50, 1018, "", 0, 0, 0, -1);

--腕引く
SE006 = playSeVer2( spep_0 + 216, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE006, 82 );

--腕引く
SE007 = playSeVer2( spep_0 + 216, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE007, 70 );
setPitch( spep_0 + 216, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );

--腕引く
SE008 = playSeVer2( spep_0 + 224, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE008, 79 );

--力む
SE009 = playSeVer2( spep_0 + 314, 1330, "", 0, 0, 0, -1);

--画面遷移
SE010 = playSeVer2( spep_0 + 444, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE010,  283 );

--顔あげる
SE011 = playSeVer2( spep_0 + 524, 1004, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 596, 1116, "",spep_0 + 628, 0, 10, -1);

--気弾発射
SE013 = playSeVer2( spep_0 + 654, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE013, 79 );

--気弾発射
SE014 = playSeVer2( spep_0 + 656, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE014, 75 );

--気弾発射
SE015 = playSeVer2( spep_0 + 656, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE015, 84 );

--気弾溜め
SE016 = playSeVer2( spep_0 + 690, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE016, 80 );

--ボイス
--オレは宇宙一なんだ…
playVoice( spep_0 + 50, 319 );
setVoiceVolume( spep_0 + 50, 319, 100 );

--だから……だからきさまは…！
playVoice( spep_0 + 232, 320 );
setVoiceVolume( spep_0 + 232, 320, 100 );

--オレに…!!
playVoice( spep_0 + 456, 321 );
setVoiceVolume( spep_0 + 456, 321, 100 );

--殺されるべきなんだーっ！！
playVoice( spep_0 + 584, 331 );
setVoiceVolume( spep_0 + 584, 322, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 734, 0,  0, 0, 0, 255 ); --くろ 背景

--SE

--次の準備
spep_1=spep_0+734;


------------------------------------------------------
-- 冒頭から発射前まで
------------------------------------------------------
--spep_1=0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 424, finish_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 424, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 424, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
--setEffAlphaKey( spep_1 + 403, finish_f, 255 );
--setEffAlphaKey( spep_1 + 404, finish_f, 0 );
setEffAlphaKey( spep_1 + 423, finish_f, 255 );
setEffAlphaKey( spep_1 + 424, finish_f, 0 );

finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 424, finish_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 424, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 424, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
--setEffAlphaKey( spep_1 + 403, finish_b, 255 );
--setEffAlphaKey( spep_1 + 404, finish_b, 0 );
setEffAlphaKey( spep_1 + 423, finish_b, 255 );
setEffAlphaKey( spep_1 + 424, finish_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 278, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 -3 + 122, 1, 102 );
changeAnime( spep_1 -3 + 170, 1, 104 );
changeAnime( spep_1 -3 + 188, 1, 106 );

setBlendColor( spep_1 -3 + 130, 1, 3, 0.99, 0.55, 0.85, 0.02 );
setBlendColor( spep_1 -3 + 132, 1, 3, 0.99, 0.55, 0.85, 0.04 );
setBlendColor( spep_1 -3 + 134, 1, 3, 0.99, 0.55, 0.85, 0.06 );
setBlendColor( spep_1 -3 + 136, 1, 3, 0.99, 0.55, 0.85, 0.08 );
setBlendColor( spep_1 -3 + 138, 1, 3, 0.99, 0.55, 0.85, 0.1 );
setBlendColor( spep_1 -3 + 140, 1, 3, 0.99, 0.55, 0.85, 0.12 );
setBlendColor( spep_1 -3 + 142, 1, 3, 0.99, 0.55, 0.85, 0.14 );

setMoveKey( spep_1 + 0, 1, 302.4, 301.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 302.4, 301.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 280.8, 294.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 280.8, 294.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 319.9, 327.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 319.9, 327.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 280.9, 293.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 319.4, 293.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 296, 322.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 318.1, 297.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 289.7, 293.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 321, 310.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 289.8, 297 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 304.9, 312.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 287.3, 294.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 310, 309.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 294.4, 295 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 309.6, 304.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 296.1, 296.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 305.1, 308.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 298.9, 297.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 308.3, 307.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 298.2, 299.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 305.5, 309.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 304, 297.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 301.4, 306 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 302, 298.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 303.8, 306.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 298.9, 297.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 307.4, 303.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 298.5, 301.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 303.9, 299.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 303.6, 305.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 301.5, 299.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 304.7, 302.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 300.3, 299.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 302.1, 303.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 304.8, 300.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 300.4, 301.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 304.5, 302.3 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 300.8, 300.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 303.1, 303.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 302.7, 300.5 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 302.4, 302.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 302.4, 302.5 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 302.4, 302.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 302.4, 302.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 302.4, 302.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 302.4, 302.2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 302.4, 302.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 302.4, 302.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 302.4, 302 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 302.4, 301.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 302.4, 301.9 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 302.4, 301.8 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 302.4, 301.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 130.2, 88.2 , 0 );

setScaleKey( spep_1 + 0, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 121, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 122, 1, 2.04, 2.04 );

setRotateKey( spep_1 + 0, 1, -3.2 );
setRotateKey( spep_1 -3 + 121, 1, -3.2 );
setRotateKey( spep_1 -3 + 122, 1, -22.7 );

--SE
--気弾飛んでいく
SE017 = playSeVer2( spep_1 + 4, 1258, "", 0, 0, 0, -1);

--気弾飛んでいく
SE018 = playSeVer2( spep_1 + 6, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE019 = playSeVer2( spep_1 + 6, 1193, "",spep_1 + 204, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 6, SE019, 140 );

--気弾向かっていく
SE020 = playSeVer2( spep_1 + 126, 1021, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 374, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    --stopSe( SP_dodge - 12, SE023, 0 );
    --stopSe( SP_dodge - 12, SE024, 0 );

    setBlendColor( SP_dodge + 0, 1, 3, 0.99, 0.84, 0.96, 0 );

    --敵の動き
    setMoveKey( SP_dodge + 0, 1, 130.2, 88.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 130.2, 88.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.04, 2.04 );
    setScaleKey( SP_dodge + 10, 1, 2.04, 2.04 );

    setRotateKey( SP_dodge + 0, 1, -22.7 );
    setRotateKey( SP_dodge + 10, 1, -22.7 );

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

setBlendColor( spep_1 -3 + 144, 1, 3, 0.99, 0.55, 0.85, 0.16 );
setBlendColor( spep_1 -3 + 146, 1, 3, 0.99, 0.55, 0.85, 0.18 );
setBlendColor( spep_1 -3 + 148, 1, 3, 0.99, 0.55, 0.85, 0.2 );
setBlendColor( spep_1 -3 + 150, 1, 3, 0.99, 0.55, 0.85, 0.22 );
setBlendColor( spep_1 -3 + 152, 1, 3, 0.99, 0.55, 0.85, 0.24 );
setBlendColor( spep_1 -3 + 154, 1, 3, 0.99, 0.55, 0.85, 0.26 );
setBlendColor( spep_1 -3 + 156, 1, 3, 0.99, 0.55, 0.85, 0.28 );
setBlendColor( spep_1 -3 + 158, 1, 3, 0.99, 0.55, 0.85, 0.3 );
setBlendColor( spep_1 -3 + 160, 1, 3, 0.99, 0.55, 0.85, 0.32 );
setBlendColor( spep_1 -3 + 162, 1, 3, 0.99, 0.55, 0.85, 0.34 );
setBlendColor( spep_1 -3 + 164, 1, 3, 0.99, 0.55, 0.85, 0.36 );
setBlendColor( spep_1 -3 + 166, 1, 3, 0.99, 0.55, 0.85, 0.38 );
setBlendColor( spep_1 -3 + 168, 1, 3, 0.99, 0.55, 0.85, 0.4 );
setBlendColor( spep_1 -3 + 169, 1, 3, 0.99, 0.55, 0.85, 0.4 );
setBlendColor( spep_1 -3 + 170, 1, 3, 0.99, 0.65, 0.81, 0.4 );
setBlendColor( spep_1 -3 + 187, 1, 3, 0.99, 0.65, 0.81, 0.4 );
setBlendColor( spep_1 -3 + 188, 1, 3, 0.99, 0.84, 0.96, 0.7 );
setBlendColor( spep_1 -3 + 277, 1, 3, 0.99, 0.84, 0.96, 0.7 );
setBlendColor( spep_1 -3 + 278, 1, 3, 0.99, 0.84, 0.96, 0 );

setMoveKey( spep_1 -3 + 169, 1, 130.2, 88.2 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 32.1, -90.1 , 0 );
setMoveKey( spep_1 -3 + 187, 1, 32.1, -90.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 11.5, -50.7 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -19, -52.7 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 36.3, -46.1 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -12.7, -39.6 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 22.4, -70.1 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 15.1, -22.8 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 30.5, -59.5 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -3.1, -36.3 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 36.7, -52 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 5.8, -29.9 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 37.8, -41.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 13.7, -28.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 43.5, -29.5 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 23.4, -39.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 43.5, -30.8 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 32.5, -24.7 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 48.4, -28.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 34.5, -23.6 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 51.8, -24.9 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 67.8, -22.7 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 53.7, -19.7 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 74.7, -16.7 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 61.2, -15.7 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 63.1, -15.2 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 70.1, -14.2 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 72.5, -29.2 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 72.5, -12.7 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 75.5, -25.7 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 77.4, -24.6 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 79.4, -12.6 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 79.3, -27.1 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 83.8, -8.6 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 87.3, -18.6 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 90.2, -16.1 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 98.2, 4.4 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 98.1, -12.6 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 101.6, 6.4 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 101.6, -10.6 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 103.5, -7.6 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 107, 8.9 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 108.9, -5.6 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 111.4, 10.9 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 115.4, -3.1 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 117.8, -1.6 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 117.3, 16.9 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 120.7, -0.1 , 0 );

setScaleKey( spep_1 -3 + 169, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 170, 1, 2.96, 2.96 );
setScaleKey( spep_1 -3 + 278, 1, 2.96, 2.96 );

setRotateKey( spep_1 -3 + 169, 1, -22.7 );
setRotateKey( spep_1 -3 + 170, 1, -17 );
setRotateKey( spep_1 -3 + 187, 1, -17 );
setRotateKey( spep_1 -3 + 188, 1, -73.5 );
setRotateKey( spep_1 -3 + 190, 1, -73.4 );
setRotateKey( spep_1 -3 + 192, 1, -73.3 );
setRotateKey( spep_1 -3 + 194, 1, -73.3 );
setRotateKey( spep_1 -3 + 196, 1, -73.2 );
setRotateKey( spep_1 -3 + 198, 1, -73.1 );
setRotateKey( spep_1 -3 + 200, 1, -73 );
setRotateKey( spep_1 -3 + 202, 1, -73 );
setRotateKey( spep_1 -3 + 204, 1, -72.9 );
setRotateKey( spep_1 -3 + 206, 1, -72.8 );
setRotateKey( spep_1 -3 + 208, 1, -72.8 );
setRotateKey( spep_1 -3 + 210, 1, -72.7 );
setRotateKey( spep_1 -3 + 212, 1, -72.6 );
setRotateKey( spep_1 -3 + 214, 1, -72.6 );
setRotateKey( spep_1 -3 + 216, 1, -72.5 );
setRotateKey( spep_1 -3 + 218, 1, -72.4 );
setRotateKey( spep_1 -3 + 220, 1, -72.4 );
setRotateKey( spep_1 -3 + 222, 1, -72.3 );
setRotateKey( spep_1 -3 + 224, 1, -72.2 );
setRotateKey( spep_1 -3 + 226, 1, -72.2 );
setRotateKey( spep_1 -3 + 228, 1, -72.1 );
setRotateKey( spep_1 -3 + 230, 1, -72 );
setRotateKey( spep_1 -3 + 232, 1, -72 );
setRotateKey( spep_1 -3 + 234, 1, -71.9 );
setRotateKey( spep_1 -3 + 236, 1, -71.8 );
setRotateKey( spep_1 -3 + 238, 1, -71.8 );
setRotateKey( spep_1 -3 + 240, 1, -71.7 );
setRotateKey( spep_1 -3 + 242, 1, -71.6 );
setRotateKey( spep_1 -3 + 244, 1, -71.6 );
setRotateKey( spep_1 -3 + 246, 1, -71.5 );
setRotateKey( spep_1 -3 + 248, 1, -71.4 );
setRotateKey( spep_1 -3 + 250, 1, -71.4 );
setRotateKey( spep_1 -3 + 252, 1, -71.3 );
setRotateKey( spep_1 -3 + 254, 1, -71.2 );
setRotateKey( spep_1 -3 + 256, 1, -71.2 );
setRotateKey( spep_1 -3 + 258, 1, -71.1 );
setRotateKey( spep_1 -3 + 260, 1, -71 );
setRotateKey( spep_1 -3 + 262, 1, -71 );
setRotateKey( spep_1 -3 + 264, 1, -70.9 );
setRotateKey( spep_1 -3 + 266, 1, -70.8 );
setRotateKey( spep_1 -3 + 268, 1, -70.8 );
setRotateKey( spep_1 -3 + 270, 1, -70.7 );
setRotateKey( spep_1 -3 + 272, 1, -70.6 );
setRotateKey( spep_1 -3 + 274, 1, -70.6 );
setRotateKey( spep_1 -3 + 276, 1, -70.5 );
setRotateKey( spep_1 -3 + 278, 1, -70.4 );

KO = entryEffect( spep_1 + 412, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 412, KO, 0, 0 , 0 );
setEffMoveKey( spep_1 + 512, KO, 0, 0 , 0 );
setEffScaleKey( spep_1 + 412, KO, 1.0, 1.0 );
setEffScaleKey( spep_1 + 512, KO, 1.0, 1.0 );
setEffRotateKey( spep_1 + 412, KO, 0 );
setEffRotateKey( spep_1 + 512, KO, 0 );
setEffAlphaKey( spep_1 + 412, KO, 255 );
setEffAlphaKey( spep_1 + 512, KO, 255 );

--敵ヒット
SE021 = playSeVer2( spep_1 + 170, 1213, "",spep_1 + 302, 18, 30, -1);
setStartTimeMs( SE021,  283 );

--敵ヒット
SE022 = playSeVer2( spep_1 + 176, 1226, "",spep_1 + 302, 0, 32, -1);

--敵ヒット
SE023 = playSeVer2( spep_1 + 176, 1022, "", 0, 0, 0, -1);

--敵飲まれる
SE024 = playSeVer2( spep_1 + 232, 1258, "",spep_1 + 302, 14, 22, -1);
setSeVolumeByWorkId( spep_1 + 232, SE024, 70 );
setStartTimeMs( SE024,  133 );

--爆発
SE025 = playSeVer2( spep_1 + 288, 1023, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_1 + 294, 1067, "", 0, 0, 0, -1);

--爆発
SE027 = playSeVer2( spep_1 + 296, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 288 );
entryFade( spep_1 + 414, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 414 );
else end