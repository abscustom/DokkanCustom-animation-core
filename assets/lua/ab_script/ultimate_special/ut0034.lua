--1024660:合体ザマス_絶対のいかずち(アクティブスキル)
--sp_effect_a4_00022

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
SP_01=	160136	;--	開幕～雷発射　前面
SP_02=	160137	;--	開幕～雷発射　背面
SP_03=	160138	;--	フィニッシュ　前面
SP_04=	160139	;--	フィニッシュ　背面
SP_05=	160140	;--	KO演出

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
           skipFrame(0, spep_0 +450 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 60);      -- スキップ先フレーム指定
           
           --爆発
           SE034 = playSeVer2( spep_1 + 36, 1024, "", 0, 0, 0, -1);

           --イナヅマ
           SE035 = playSeVer2( spep_1 + 50, 1231, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_1 + 50, SE035, 129 );
           SE036 = playSeVer2( spep_1 + 56, 1302, "",spep_1 + 96, 0, 10, -1);
           setSeVolumeByWorkId( spep_1 + 56, SE036, 40 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕～雷発射
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
extra_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 882, extra_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 882, extra_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_f, 0 );
setEffRotateKey( spep_0 + 882, extra_f, 0 );
setEffAlphaKey( spep_0 + 0, extra_f, 255 );
setEffAlphaKey( spep_0 + 880, extra_f, 255 );
setEffAlphaKey( spep_0 + 881, extra_f, 255 );
setEffAlphaKey( spep_0 + 882, extra_f, 0 );

--エフェクト
extra_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 882, extra_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 882, extra_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_b, 0 );
setEffRotateKey( spep_0 + 882, extra_b, 0 );
setEffAlphaKey( spep_0 + 0, extra_b, 255 );
setEffAlphaKey( spep_0 + 880, extra_b, 255 );
setEffAlphaKey( spep_0 + 881, extra_b, 255 );
setEffAlphaKey( spep_0 + 882, extra_b, 0 );

--敵の動き
setDisp( spep_0-3 + 342, 1, 1);

changeAnime( spep_0-3 + 342, 1, 117);

setMoveKey( spep_0-3 + 342, 1, 98, 104.9 , 0 );
setMoveKey( spep_0-3 + 344, 1, 98.3, 104.7 , 0 );
setMoveKey( spep_0-3 + 346, 1, 98.5, 104.4 , 0 );
setMoveKey( spep_0-3 + 348, 1, 98.8, 104.2 , 0 );
setMoveKey( spep_0-3 + 350, 1, 99, 103.9 , 0 );
setMoveKey( spep_0-3 + 352, 1, 99.3, 103.7 , 0 );
setMoveKey( spep_0-3 + 354, 1, 99.6, 103.4 , 0 );
setMoveKey( spep_0-3 + 356, 1, 99.8, 103.2 , 0 );
setMoveKey( spep_0-3 + 358, 1, 100.1, 102.9 , 0 );
setMoveKey( spep_0-3 + 360, 1, 100.3, 102.7 , 0 );
setMoveKey( spep_0-3 + 362, 1, 100.6, 102.4 , 0 );
setMoveKey( spep_0-3 + 364, 1, 100.8, 102.2 , 0 );
setMoveKey( spep_0-3 + 366, 1, 101.1, 101.9 , 0 );
setMoveKey( spep_0-3 + 368, 1, 101.4, 101.7 , 0 );
setMoveKey( spep_0-3 + 370, 1, 101.6, 101.4 , 0 );
setMoveKey( spep_0-3 + 372, 1, 101.9, 101.2 , 0 );
setMoveKey( spep_0-3 + 374, 1, 102.1, 100.9 , 0 );
setMoveKey( spep_0-3 + 376, 1, 102.4, 100.7 , 0 );
setMoveKey( spep_0-3 + 378, 1, 102.7, 100.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 102.9, 100.2 , 0 );
setMoveKey( spep_0-3 + 382, 1, 103.2, 100 , 0 );
setMoveKey( spep_0-3 + 384, 1, 103.4, 99.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 103.7, 99.5 , 0 );
setMoveKey( spep_0-3 + 388, 1, 103.9, 99.2 , 0 );
setMoveKey( spep_0-3 + 390, 1, 104.2, 99 , 0 );
setMoveKey( spep_0-3 + 392, 1, 104.5, 98.7 , 0 );
setMoveKey( spep_0-3 + 394, 1, 104.7, 98.5 , 0 );
setMoveKey( spep_0-3 + 396, 1, 105, 98.2 , 0 );
setMoveKey( spep_0-3 + 398, 1, 105.2, 98 , 0 );
setMoveKey( spep_0-3 + 400, 1, 105.5, 97.7 , 0 );
setMoveKey( spep_0-3 + 402, 1, 105.8, 97.5 , 0 );
setMoveKey( spep_0-3 + 404, 1, 106, 97.2 , 0 );
setMoveKey( spep_0-3 + 406, 1, 106.3, 97 , 0 );
setMoveKey( spep_0-3 + 408, 1, 106.5, 96.7 , 0 );
setMoveKey( spep_0-3 + 410, 1, 106.8, 96.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 107, 96.2 , 0 );
setMoveKey( spep_0-3 + 414, 1, 107.3, 96 , 0 );
setMoveKey( spep_0-3 + 416, 1, 107.6, 95.8 , 0 );
setMoveKey( spep_0-3 + 418, 1, 107.8, 95.5 , 0 );
setMoveKey( spep_0-3 + 420, 1, 108.1, 95.3 , 0 );
setMoveKey( spep_0-3 + 422, 1, 108.3, 95 , 0 );
setMoveKey( spep_0-3 + 424, 1, 108.6, 94.8 , 0 );
setMoveKey( spep_0-3 + 426, 1, 108.9, 94.5 , 0 );
setMoveKey( spep_0-3 + 428, 1, 109.1, 94.3 , 0 );
setMoveKey( spep_0-3 + 430, 1, 109.4, 94 , 0 );
setMoveKey( spep_0-3 + 432, 1, 109.6, 93.8 , 0 );
setMoveKey( spep_0-3 + 434, 1, 109.9, 93.5 , 0 );
setMoveKey( spep_0-3 + 436, 1, 110.1, 93.3 , 0 );
setMoveKey( spep_0-3 + 438, 1, 110.4, 93 , 0 );
setMoveKey( spep_0-3 + 440, 1, 110.7, 92.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, 110.9, 92.5 , 0 );
setMoveKey( spep_0-3 + 444, 1, 111.2, 92.3 , 0 );
setMoveKey( spep_0-3 + 446, 1, 111.4, 92 , 0 );
setMoveKey( spep_0-3 + 448, 1, 111.7, 91.8 , 0 );
setMoveKey( spep_0-3 + 450, 1, 112, 91.6 , 0 );
setMoveKey( spep_0-3 + 452, 1, 112.2, 91.3 , 0 );
setMoveKey( spep_0-3 + 454, 1, 112.5, 91.1 , 0 );

setScaleKey( spep_0-3 + 342, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 454, 1, 0.2, 0.2 );

setRotateKey( spep_0-3 + 342, 1, 0 );
setRotateKey( spep_0-3 + 454, 1, 0 );

--SE
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "", 0, 0, 0, -1);
SE001_02 = playSeVer2( spep_0 + 260, 1268, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE007, 147 );
setSeVolumeByWorkId( spep_0 + 190, SE010, 158 );

--画面遷移
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.67, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--後ろに行く
SE005 = playSeVer2( spep_0 + 50, 1240, "",spep_0 + 138, 0, 16, -1);

--光の柱立つ
SE004 = playSeVer2( spep_0 + 102, 1284, "",spep_0 + 298, 14, 88, -1);
setStartTimeMs( SE004,  867 );
SE006 = playSeVer2( spep_0 + 102, 1264, "",spep_0 + 298, 14, 88, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 63 );

--翼広げる
SE007 = playSeVer2( spep_0 + 188, 1216, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE007, 107 );
setStartTimeMs( SE007,  1200 );
setPitch( spep_0 + 188, SE007, -1000 );
setTimeStretch( SE007, 0.33, 30, 4 );
SE008 = playSeVer2( spep_0 + 212, 1278, "",spep_0 + 316, 20, 48, -1);
setSeVolumeByWorkId( spep_0 + 212, SE008, 72 );
setStartTimeMs( SE008,  917 );
SE009 = playSeVer2( spep_0 + 192, 1289, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 32 );
setStartTimeMs( SE009,  200 );
setPitch( spep_0 + 192, SE009, 300 );
setTimeStretch( SE009, 1.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 190, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE010, 138 );
setPitch( spep_0 + 190, SE010, -700 );
setTimeStretch( SE010, 0.53, 30, 4 );
SE011 = playSeVer2( spep_0 + 202, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE011, 143 );
SE012 = playSeVer2( spep_0 + 202, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 68 );
setPitch( spep_0 + 202, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );

--環境音
SE013 = playSeVer2( spep_0 + 340, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE013, 40 );

--ボイス
--さぁ、大地を貫き全てを洗い流そう　神の世の到来を祝う宴の始まりだ
playVoice( spep_0 + 0, 463 );
setVoiceVolume( spep_0 + 0, 463, 148 );
setVoiceVolume( spep_0 + 207, 463, 148 );
setVoiceVolume( spep_0 + 208, 463, 148 );
setVoiceVolume( spep_0 + 209, 463, 161 );
setVoiceVolume( spep_0 + 338, 463, 148 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 884, 0, 0, 0, 0, 255);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +450; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE001_02, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );


    setVoiceVolume( SP_dodge - 12, 463, 0 );

    setVoiceVolume( SP_dodge - 12, 445, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 112.5, 91.1 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.2, 0.2 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-1 + 498, 1, 0);

setMoveKey( spep_0-3 + 456, 1, 112.7, 90.8 , 0 );
setMoveKey( spep_0-3 + 458, 1, 113, 90.6 , 0 );
setMoveKey( spep_0-3 + 460, 1, 113.2, 90.3 , 0 );
setMoveKey( spep_0-3 + 462, 1, 113.5, 90.1 , 0 );
setMoveKey( spep_0-3 + 464, 1, 113.8, 89.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, 114, 89.6 , 0 );
setMoveKey( spep_0-3 + 468, 1, 114.3, 89.3 , 0 );
setMoveKey( spep_0-3 + 470, 1, 114.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 472, 1, 114.8, 88.8 , 0 );
setMoveKey( spep_0-3 + 474, 1, 115.1, 88.6 , 0 );
setMoveKey( spep_0-3 + 476, 1, 115.3, 88.3 , 0 );
setMoveKey( spep_0-3 + 478, 1, 115.6, 88.1 , 0 );
setMoveKey( spep_0-3 + 480, 1, 115.8, 87.8 , 0 );
setMoveKey( spep_0-3 + 482, 1, 116.1, 87.6 , 0 );
setMoveKey( spep_0-3 + 484, 1, 116.3, 87.3 , 0 );
setMoveKey( spep_0-3 + 486, 1, 116.6, 87.1 , 0 );
setMoveKey( spep_0-3 + 488, 1, 116.9, 86.9 , 0 );
setMoveKey( spep_0-3 + 490, 1, 117.1, 86.6 , 0 );
setMoveKey( spep_0-3 + 492, 1, 117.4, 86.4 , 0 );
setMoveKey( spep_0-3 + 494, 1, 117.6, 86.1 , 0 );
setMoveKey( spep_0-3 + 496, 1, 117.9, 85.9 , 0 );
setMoveKey( spep_0-1 + 498, 1, 118.2, 85.6 , 0 );

setScaleKey( spep_0-1 + 498, 1, 0.2, 0.2 );

setRotateKey( spep_0-1 + 498, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 768, 1, 1);
setDisp( spep_0-1 + 882, 1, 0);

changeAnime( spep_0-3 + 768, 1, 118);
changeAnime( spep_0-3 + 790, 1, 106);

a=50;

setMoveKey( spep_0-3 + 768, 1, 190.3, -372.9+a , 0 );
setMoveKey( spep_0-3 + 776, 1, 190.3, -372.9+a , 0 );
setMoveKey( spep_0-3 + 778, 1, 200.3, -366.9+a , 0 );
setMoveKey( spep_0-3 + 780, 1, 196.3, -378.9+a , 0 );
setMoveKey( spep_0-3 + 782, 1, 180.3, -378.9+a , 0 );
setMoveKey( spep_0-3 + 784, 1, 180.3, -362.9+a , 0 );
setMoveKey( spep_0-3 + 786, 1, 194.3, -362.9+a , 0 );
setMoveKey( spep_0-3 + 788, 1, 196.3, -374.9+a , 0 );
setMoveKey( spep_0-3 + 789, 1, 196.3, -374.9+a , 0 );

setMoveKey( spep_0-3 + 790, 1, 184.3, -380.9+a , 0 );
setMoveKey( spep_0-3 + 792, 1, 184.3, -362.4+a , 0 );
setMoveKey( spep_0-3 + 794, 1, 188.3, -343.9+a , 0 );
setMoveKey( spep_0-3 + 796, 1, 188.3, -329.5+a , 0 );
setMoveKey( spep_0-3 + 798, 1, 184.3, -329.5+a , 0 );
setMoveKey( spep_0-3 + 812, 1, 184.3, -329.5+a , 0 );
setMoveKey( spep_0-3 + 814, 1, 188.3, -311.5+a , 0 );
setMoveKey( spep_0-3 + 816, 1, 188.3, -337.5+a , 0 );
setMoveKey( spep_0-3 + 818, 1, 170.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 820, 1, 190.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 822, 1, 188.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 824, 1, 188.3, -335.5+a , 0 );
setMoveKey( spep_0-3 + 826, 1, 188.3, -323.5+a , 0 );
setMoveKey( spep_0-3 + 828, 1, 174.3, -317.5+a , 0 );
setMoveKey( spep_0-3 + 830, 1, 178.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 832, 1, 174.3, -311.5+a , 0 );
setMoveKey( spep_0-3 + 834, 1, 196.3, -317.5+a , 0 );
setMoveKey( spep_0-3 + 836, 1, 196.3, -337.5+a , 0 );
setMoveKey( spep_0-3 + 838, 1, 184.3, -337.5+a , 0 );
setMoveKey( spep_0-3 + 840, 1, 184.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 842, 1, 192.3, -327.5+a , 0 );
setMoveKey( spep_0-3 + 844, 1, 192.3, -331.5+a , 0 );
setMoveKey( spep_0-3 + 846, 1, 188.3, -331.5+a , 0 );
setMoveKey( spep_0-3 + 856, 1, 188.3, -331.5+a , 0 );
setMoveKey( spep_0-3 + 858, 1, 178.3, -319.5+a , 0 );
setMoveKey( spep_0-3 + 860, 1, 188.3, -329.5+a , 0 );
setMoveKey( spep_0-3 + 862, 1, 194.3, -317.5+a , 0 );
setMoveKey( spep_0-3 + 864, 1, 186.3, -303.5+a , 0 );
setMoveKey( spep_0-3 + 866, 1, 172.3, -313.5+a , 0 );
setMoveKey( spep_0-3 + 868, 1, 186.3, -319.5+a , 0 );
setMoveKey( spep_0-3 + 870, 1, 184.3, -299.5+a , 0 );
setMoveKey( spep_0-3 + 872, 1, 172.3, -305.5+a , 0 );
setMoveKey( spep_0-3 + 874, 1, 192.3, -311.5+a , 0 );
setMoveKey( spep_0-3 + 876, 1, 184.3, -313.5+a , 0 );
setMoveKey( spep_0-3 + 878, 1, 192.3, -307.5+a , 0 );
setMoveKey( spep_0-3 + 880, 1, 190.3, -311.5+a , 0 );
setMoveKey( spep_0-1 + 882, 1, 190.3, -301.5+a , 0 );

setScaleKey( spep_0-3 + 768, 1, 1.2, 1.2 );
setScaleKey( spep_0-1 + 882, 1, 1.2, 1.2 );

setRotateKey( spep_0-3 + 768, 1, 0 );
setRotateKey( spep_0-3 + 789, 1, 0 );

setRotateKey( spep_0-3 + 790, 1, 0 );
setRotateKey( spep_0-3 + 792, 1, 0 );
setRotateKey( spep_0-3 + 794, 1, 6.2 );
setRotateKey( spep_0-3 + 796, 1, 6.2 );
setRotateKey( spep_0-3 + 798, 1, 0 );
setRotateKey( spep_0-3 + 800, 1, 0 );
setRotateKey( spep_0-3 + 802, 1, 6.2 );
setRotateKey( spep_0-3 + 804, 1, 6.2 );
setRotateKey( spep_0-3 + 806, 1, 0 );
setRotateKey( spep_0-3 + 808, 1, 0 );
setRotateKey( spep_0-3 + 810, 1, 6.2 );
setRotateKey( spep_0-3 + 812, 1, 6.2 );
setRotateKey( spep_0-3 + 814, 1, 0 );
setRotateKey( spep_0-3 + 816, 1, 0 );
setRotateKey( spep_0-3 + 818, 1, 6.2 );
setRotateKey( spep_0-3 + 820, 1, 6.2 );
setRotateKey( spep_0-3 + 822, 1, 0 );
setRotateKey( spep_0-3 + 824, 1, 0 );
setRotateKey( spep_0-3 + 826, 1, 6.2 );
setRotateKey( spep_0-3 + 828, 1, 6.2 );
setRotateKey( spep_0-3 + 830, 1, 0 );
setRotateKey( spep_0-3 + 832, 1, 0 );
setRotateKey( spep_0-3 + 834, 1, 6.2 );
setRotateKey( spep_0-3 + 836, 1, 6.2 );
setRotateKey( spep_0-3 + 838, 1, 0 );
setRotateKey( spep_0-3 + 840, 1, 0 );
setRotateKey( spep_0-3 + 842, 1, 6.2 );
setRotateKey( spep_0-3 + 844, 1, 6.2 );
setRotateKey( spep_0-3 + 846, 1, 0 );
setRotateKey( spep_0-3 + 848, 1, 0 );
setRotateKey( spep_0-3 + 850, 1, 6.2 );
setRotateKey( spep_0-3 + 852, 1, 6.2 );
setRotateKey( spep_0-3 + 854, 1, 0 );
setRotateKey( spep_0-3 + 856, 1, 0 );
setRotateKey( spep_0-3 + 858, 1, 6.2 );
setRotateKey( spep_0-3 + 860, 1, 6.2 );
setRotateKey( spep_0-3 + 862, 1, 0 );
setRotateKey( spep_0-3 + 864, 1, 0 );
setRotateKey( spep_0-3 + 866, 1, 6.2 );
setRotateKey( spep_0-3 + 868, 1, 6.2 );
setRotateKey( spep_0-3 + 870, 1, 0 );
setRotateKey( spep_0-3 + 872, 1, 0 );
setRotateKey( spep_0-3 + 874, 1, 6.2 );
setRotateKey( spep_0-3 + 876, 1, 6.2 );
setRotateKey( spep_0-3 + 878, 1, 0 );
setRotateKey( spep_0-3 + 880, 1, 0 );
setRotateKey( spep_0-3 + 882, 1, 6.2 );

--SE
--画面ズーム
SE014 = playSeVer2( spep_0 + 640, 1116, "",spep_0 + 688, 0, 20, -1);
SE015 = playSeVer2( spep_0 + 640, 1278, "",spep_0 + 738, 0, 36, -1);
SE016 = playSeVer2( spep_0 + 640, 1229, "",spep_0 + 768, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 640, SE016, 200 );

--気弾発射
SE017 = playSeVer2( spep_0 + 750, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE017, 86 );
SE018 = playSeVer2( spep_0 + 750, 1177, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 750, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE019, 88 );

--イナヅマ
SE020 = playSeVer2( spep_0 + 766, 1231, "",spep_0 + 816, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 766, SE020, 180 );
SE021 = playSeVer2( spep_0 + 774, 1302, "",spep_0 + 814, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 774, SE021, 40 );
SE022 = playSeVer2( spep_0 + 800, 1231, "",spep_0 + 840, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 800, SE022, 185 );
SE023 = playSeVer2( spep_0 + 804, 1302, "",spep_0 + 834, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 804, SE023, 40 );

--爆発
SE024 = playSeVer2( spep_0 + 804, 1024, "", 0, 0, 0, -1);

--イナヅマ
SE025 = playSeVer2( spep_0 + 828, 1231, "",spep_0 + 862, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 828, SE025, 185 );
SE026 = playSeVer2( spep_0 + 834, 1302, "",spep_0 + 862, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 834, SE026, 40 );
SE027 = playSeVer2( spep_0 + 850, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 850, SE027, 181 );
SE029 = playSeVer2( spep_0 + 854, 1302, "",spep_0 + 894, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 854, SE029, 40 );

--ボイス
--絶対のいかずち
playVoice( spep_0 + 652, 464 );
setVoiceVolume( spep_0 + 652, 464, 158 );

--次の準備
spep_1 = spep_0 + 882;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
--エフェクト
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 170, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 170, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 170, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 170, finish_f, 255 );

--エフェクト
finish_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 170, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 170, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 170, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
setEffAlphaKey( spep_1 + 170, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_1 + 168, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_1 + 168, KO, 0, 0 , 0 );
setEffMoveKey( spep_1 + 374, KO, 0, 0 , 0 );
setEffScaleKey( spep_1 + 168, KO, 1.0 , 1.0 );
setEffScaleKey( spep_1 + 374, KO, 1.0 , 1.0 );
setEffRotateKey( spep_1 + 168, KO, 0 );
setEffRotateKey( spep_1 + 374, KO, 0 );
setEffAlphaKey( spep_1 + 168, KO, 255 );
setEffAlphaKey( spep_1 + 374, KO, 255 );

--敵の動き
setDisp( spep_1-3 + 36, 1, 1);
setDisp( spep_1-1 + 80, 1, 0);

changeAnime( spep_1-3 + 36, 1, 106);

setMoveKey( spep_1-3 + 36, 1, -565, 32 , 0 );
setMoveKey( spep_1-3 + 38, 1, -474.5, 14.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -422.6, 8.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, -376.9, -4.3 , 0 );
setMoveKey( spep_1-3 + 44, 1, -339.8, -5.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, -305.4, -18 , 0 );
setMoveKey( spep_1-3 + 48, 1, -268.8, -29.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, -237.3, -24.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, -206.2, -23.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, -183.4, -37.7 , 0 );
setMoveKey( spep_1-3 + 56, 1, -172.6, -41.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, -145.4, -41 , 0 );
setMoveKey( spep_1-3 + 60, 1, -117.8, -44.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, -109.5, -47.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, -92.5, -53.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, -76.7, -68.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, -59.9, -60.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, -42.1, -62.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, -39.3, -64.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, -19.3, -68.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, -8.1, -66.2 , 0 );
setMoveKey( spep_1-3 + 78, 1, 4.3, -67.7 , 0 );
setMoveKey( spep_1-1 + 80, 1, 16, -63 , 0 );

setScaleKey( spep_1-3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_1-1 + 80, 1, 0.6, 0.6 );

setRotateKey( spep_1-3 + 36, 1, 33.8 );
setRotateKey( spep_1-3 + 38, 1, 33.9 );
setRotateKey( spep_1-1 + 80, 1, 33.9 );

--SE
--気弾発射
SE028 = playSeVer2( spep_1 + 0, 1212, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE028, 74 );
setStartTimeMs( SE028,  633 );

--イナヅマ
SE030 = playSeVer2( spep_1 + 6, 1231, "",spep_1 + 46, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 6, SE030, 183 );
SE031 = playSeVer2( spep_1 + 12, 1302, "",spep_1 + 44, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 12, SE031, 40 );
SE032 = playSeVer2( spep_1 + 30, 1231, "",spep_1 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 30, SE032, 180 );
SE033 = playSeVer2( spep_1 + 36, 1302, "",spep_1 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 36, SE033, 40 );

--爆発
SE034 = playSeVer2( spep_1 + 36, 1024, "", 0, 0, 0, -1);

--イナヅマ
SE035 = playSeVer2( spep_1 + 50, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE035, 189 );
SE036 = playSeVer2( spep_1 + 56, 1302, "",spep_1 + 96, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 56, SE036, 40 );

--炎の柱立つ
SE037 = playSeVer2( spep_1 + 62, 1226, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 62, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 62, SE038, 130 );
SE039 = playSeVer2( spep_1 + 62, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 62, SE039, 72 );
SE040 = playSeVer2( spep_1 + 62, 1159, "", 0, 0, 0, -1);

--土煙
SE041 = playSeVer2( spep_1 + 126, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 60 );
entryFade( spep_1 +160, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 170 );
else end