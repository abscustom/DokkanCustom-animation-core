--1025630:ジャッキー・チュン_最大出力かめはめ波(アクティブスキル)
--sp_effect_a1_00384

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
SP_01=	161000	;--	開幕～発射まで
SP_02=	161001	;--	フィニッシュ　前面
SP_03=	161002	;--	フィニッシュ　背面

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
changeAnime( 0, 1, 0);

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
        spep_1 = spep_0 + 616;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 600 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 0);      -- スキップ先フレーム指定

           --SE
           --かめはめ波横向き発射
           SE018 = playSeVer2( spep_1 + 0, 1133, "", 0, 0, 0, -1);
           SE019 = playSeVer2( spep_1 + 0, 1161, "", 0, 0, 0, -1);

           --かめはめ波飛んでいく
           SE020 = playSeVer2( spep_1 + 0, 1390, "", 0, 0, 0, -1);
           
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕～発射まで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 616, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 616, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 616, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 616, first, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--服投げ捨てる
SE002 = playSeVer2( spep_0 + 9, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 9, SE002, 127 );
SE003 = playSeVer2( spep_0 + 20, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 123 );
SE004 = playSeVer2( spep_0 + 41, 1237, "", 0, 18, 0, -1);
setStartTimeMs( SE004,  120 );
setPitch( spep_0 + 41, SE004, -200 );  
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 54, 1013, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 108, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 83 );

--力む
SE007 = playSeVer2( spep_0 + 186, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE007, 83 );
SE008 = playSeVer2( spep_0 + 192, 1330, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 246, 1330, "", 0, 0, 0, -1);
setPitch( spep_0 + 246, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 338, 1018, "", 0, 0, 0, -1);

--手前に出す
SE011 = playSeVer2( spep_0 + 353, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 353, SE011, 83 );
SE012 = playSeVer2( spep_0 + 357, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 357, SE012, 79 );

--構える
SE013 = playSeVer2( spep_0 + 391, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 391, SE013, 79 );

--かめはめ波溜め
SE014 = playSeVer2( spep_0 + 427, 1209, "", 0, 0, 0, -1);

--かめはめ波発射
SE015 = playSeVer2( spep_0 + 498, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE015, 86 );
SE016 = playSeVer2( spep_0 + 498, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE016, 56 );
SE017 = playSeVer2( spep_0 + 498, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE017, 68 );
setPitch( spep_0 + 498, SE017, -200 );
setTimeStretch( SE017, 0.87, 30, 4 );

--かめはめ波横向き発射
SE018 = playSeVer2( spep_0 + 572, 1133, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 572, 1161, "", 0, 0, 0, -1);

--ボイス
--かめはめ波…
playVoice( spep_0 + 340, 512 );
setVoiceVolume( spep_0 + 340, 512, 126 );

--MAXパワー！！
playVoice( spep_0 + 450, 513 );
setVoiceVolume( spep_0 + 450, 513, 100 )

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 620, 0, 0, 0, 0, 255);  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 600; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );

    
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
--SE
--かめはめ波飛んでいく
SE020 = playSeVer2( spep_0 + 600, 1390, "", 0, 0, 0, -1);

--次の準備
spep_1 = spep_0 + 616;
------------------------------------------------------
--開幕～発射まで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, finish_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 130, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 130, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, finish_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 130, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
setEffAlphaKey( spep_1 + 130, finish_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 96, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 10, 1, 106 );

setBlendColor(  spep_1-3 + 10, 1,3 ,0 ,0 ,0 ,0.034);
setBlendColor(  spep_1-3 + 11, 1,3 ,0 ,0 ,0 ,0.068);
setBlendColor(  spep_1-3 + 12, 1,3 ,0 ,0 ,0 ,0.102);
setBlendColor(  spep_1-3 + 13, 1,3 ,0 ,0 ,0 ,0.136);
setBlendColor(  spep_1-3 + 14, 1,3 ,0 ,0 ,0 ,0.17);
setBlendColor(  spep_1-3 + 15, 1,3 ,0 ,0 ,0 ,0.204);
setBlendColor(  spep_1-3 + 16, 1,3 ,0 ,0 ,0 ,0.238);
setBlendColor(  spep_1-3 + 17, 1,3 ,0 ,0 ,0 ,0.272);
setBlendColor(  spep_1-3 + 18, 1,3 ,0 ,0 ,0 ,0.306);
setBlendColor(  spep_1-3 + 19, 1,3 ,0 ,0 ,0 ,0.34);
setBlendColor(  spep_1-3 + 20, 1,3 ,0 ,0 ,0 ,0.374);
setBlendColor(  spep_1-3 + 21, 1,3 ,0 ,0 ,0 ,0.408);
setBlendColor(  spep_1-3 + 22, 1,3 ,0 ,0 ,0 ,0.442);
setBlendColor(  spep_1-3 + 23, 1,3 ,0 ,0 ,0 ,0.476);
setBlendColor(  spep_1-3 + 24, 1,3 ,0 ,0 ,0 ,0.51);
setBlendColor(  spep_1-3 + 25, 1,3 ,0 ,0 ,0 ,0.544);
setBlendColor(  spep_1-3 + 26, 1,3 ,0 ,0 ,0 ,0.578);
setBlendColor(  spep_1-3 + 27, 1,3 ,0 ,0 ,0 ,0.612);
setBlendColor(  spep_1-3 + 28, 1,3 ,0 ,0 ,0 ,0.646);
setBlendColor(  spep_1-3 + 29, 1,3 ,0 ,0 ,0 ,0.68);
setBlendColor(  spep_1-3 + 30, 1,3 ,0 ,0 ,0 ,0.714);
setBlendColor(  spep_1-3 + 31, 1,3 ,0 ,0 ,0 ,0.748);
setBlendColor(  spep_1-3 + 32, 1,3 ,0 ,0 ,0 ,0.782);
setBlendColor(  spep_1-3 + 33, 1,3 ,0 ,0 ,0 ,0.816);
setBlendColor(  spep_1-3 + 34, 1,3 ,0 ,0 ,0 ,0.85);
setBlendColor(  spep_1-3 + 35, 1,3 ,0 ,0 ,0 ,0.884);
setBlendColor(  spep_1-3 + 36, 1,3 ,0 ,0 ,0 ,0.918);
setBlendColor(  spep_1-3 + 37, 1,3 ,0 ,0 ,0 ,0.952);
setBlendColor(  spep_1-3 + 38, 1,3 ,0 ,0 ,0 ,0.986);
setBlendColor(  spep_1-3 + 39, 1,3 ,0 ,0 ,0 ,1);
setBlendColor(  spep_1-3 + 96, 1,3 ,0 ,0 ,0 ,1);
setBlendColor(  spep_1 + 96, 1,3 ,0 ,0 ,0 ,0);

setMoveKey( spep_1 + 0, 1, 5.5, -8.3 , 0 );
setMoveKey( spep_1-3 + 9, 1, 5.5, -8.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, -14, -12 , 0 );
setMoveKey( spep_1-3 + 12, 1, -12.7, -11.3 , 0 );
setMoveKey( spep_1-3 + 14, 1, 2.5, 1.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, -22.3, -24 , 0 );
setMoveKey( spep_1-3 + 18, 1, 4.9, -23.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, -17.9, -0.7 , 0 );
setMoveKey( spep_1-3 + 22, 1, 7.3, 4 , 0 );
setMoveKey( spep_1-3 + 24, 1, -17.5, -21.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 9.7, -20.7 , 0 );
setMoveKey( spep_1-3 + 28, 1, -13.1, 2 , 0 );
setMoveKey( spep_1-3 + 30, 1, -1.9, -5.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, -0.7, -4.7 , 0 );
setMoveKey( spep_1-3 + 34, 1, 0.5, -4.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 1.7, -3.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 2.9, -2.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 4.1, -2.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 5.3, -1.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 6.5, -0.8 , 0 );
setMoveKey( spep_1-3 + 46, 1, 7.7, -0.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 8.9, 0.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 9.2, 0.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 9.5, 0.8 , 0 );
setMoveKey( spep_1-3 + 54, 1, 9.8, 1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 10, 1.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 10.3, 1.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 10.6, 1.4 , 0 );
setMoveKey( spep_1-3 + 62, 1, 10.9, 1.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 11.2, 1.8 , 0 );
setMoveKey( spep_1-3 + 66, 1, 11.5, 1.9 , 0 );
setMoveKey( spep_1-3 + 68, 1, 11.8, 2.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 12, 2.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 12.3, 2.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 12.6, 2.5 , 0 );
setMoveKey( spep_1-3 + 76, 1, 12.9, 2.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, 13.2, 2.8 , 0 );
setMoveKey( spep_1-3 + 80, 1, 13.5, 3 , 0 );
setMoveKey( spep_1-3 + 82, 1, 13.8, 3.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 14, 3.3 , 0 );
setMoveKey( spep_1-3 + 86, 1, 14.3, 3.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 14.6, 3.6 , 0 );
setMoveKey( spep_1-3 + 90, 1, 14.9, 3.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, 15.2, 3.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 15.5, 4.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 15.7, 4.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1-3 + 96, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 9, 1, 0 );
setRotateKey( spep_1-3 + 10, 1, -37.9 );
setRotateKey( spep_1-3 + 96, 1, -37.9 );

setAlphaKey( spep_1-3 + 0, 1, 255 );
setAlphaKey( spep_1-3 + 10, 1, 255 );
setAlphaKey( spep_1-3 + 49, 1, 255 );
setAlphaKey( spep_1-3 + 50, 1, 244 );
setAlphaKey( spep_1-3 + 52, 1, 234 );
setAlphaKey( spep_1-3 + 54, 1, 223 );
setAlphaKey( spep_1-3 + 56, 1, 212 );
setAlphaKey( spep_1-3 + 58, 1, 202 );
setAlphaKey( spep_1-3 + 60, 1, 191 );
setAlphaKey( spep_1-3 + 62, 1, 181 );
setAlphaKey( spep_1-3 + 64, 1, 170 );
setAlphaKey( spep_1-3 + 66, 1, 159 );
setAlphaKey( spep_1-3 + 68, 1, 149 );
setAlphaKey( spep_1-3 + 70, 1, 138 );
setAlphaKey( spep_1-3 + 72, 1, 128 );
setAlphaKey( spep_1-3 + 74, 1, 117 );
setAlphaKey( spep_1-3 + 76, 1, 106 );
setAlphaKey( spep_1-3 + 78, 1, 96 );
setAlphaKey( spep_1-3 + 80, 1, 85 );
setAlphaKey( spep_1-3 + 82, 1, 74 );
setAlphaKey( spep_1-3 + 84, 1, 64 );
setAlphaKey( spep_1-3 + 86, 1, 53 );
setAlphaKey( spep_1-3 + 88, 1, 43 );
setAlphaKey( spep_1-3 + 90, 1, 32 );
setAlphaKey( spep_1-3 + 92, 1, 21 );
setAlphaKey( spep_1-3 + 94, 1, 11 );
setAlphaKey( spep_1-3 + 96, 1, 0 );
setAlphaKey( spep_1 + 96, 1, 255 );

--SE
--敵ヒット
SE021 = playSeVer2( spep_1 + 7, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 7, SE021, 91 );
SE022 = playSeVer2( spep_1 + 7, 1024, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 18, 1258, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE023, 72 );
setStartTimeMs( SE023,  33 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 0, 0, 0, 255);  --黒　背景

--終わり
dealDamage( spep_1 + 8 );
endPhase( spep_1 + 120 ); -- 終了フレーム
end