--1020310:孫悟空（身勝手の極意）_怒りの一閃
--sp_effect_b1_00131

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
SP_01=	156667	;--	前半
SP_02=	156668	;--	後半　奥
SP_03=	156669	;--	後半　手前
SP_04=  156741  ;-- KO演出

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
        spep_1 = spep_0 + 816;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 28 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 280);      -- スキップ先フレーム指定

           --ラストパンチ
           SE027 = playSe( spep_1 + 280, 1120 );
           SE028 = playSe( spep_1 + 280, 1156 );
           setSeVolumeByWorkId( spep_1 + 280, SE028, 65 );

           --ラスト環境音
           SE029 = playSe( spep_1 + 280, 1175 );
           setSeVolumeByWorkId( spep_1 + 280, SE029, 19 );
           SE030 = playSe( spep_1 + 280, 1278 );
           setSeVolumeByWorkId( spep_1 + 280, SE030, 19 );
           SE031 = playSe( spep_1 + 280, 1269 );
           setSeVolumeByWorkId( spep_1 + 280, SE031, 59 );

       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 816, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 816, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 816, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 814, first, 255 );
setEffAlphaKey( spep_0 + 815, first, 255 );
setEffAlphaKey( spep_0 + 816, first, 0 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );

--オーラ音
SE002 = playSe( spep_0 + 0, 1181 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 818, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 28; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+9, 1, 6, 8.2 , 0 );
    setScaleKey( SP_dodge+9, 1, 1.08, 1.08 );
    setRotateKey( SP_dodge+9, 1, 0 );
    
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
--SE
--環境音
stopSe( spep_0+4 + 744, SE001, 0 );

--オーラ音
stopSe( spep_0+4 + 744, SE002, 0 );

--拳握る
SE003 = playSe( spep_0+4 + 360, 1294 );
setSeVolumeByWorkId( spep_0+4 + 360, SE003, 111 );
setPitch( spep_0+4 + 360, SE003, 300 );
setTimeStretch( SE003, 1.2, 10, 1 );
SE004 = playSe( spep_0+4 + 364, 1250 );
setSeVolumeByWorkId( spep_0+4 + 364, SE004, 73 );
setPitch( spep_0+4 + 356, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );
stopSe( spep_0+4 + 412, SE004, 14 );

--セリフカットイン
SE005 = playSe( spep_0+4 + 640, 1018 );
setSeVolumeByWorkId( spep_0+4 + 640, SE005, 50 );

--気ダメ
SE006 = playSe( spep_0+4 + 748, 1188 );
setSeVolumeByWorkId( spep_0+4 + 748, SE006, 0 );
setSeVolumeByWorkId( spep_0+4 + 749, SE006, 28.1 );
setSeVolumeByWorkId( spep_0+4 + 750, SE006, 56 );
setStartTimeMs( SE006,  167 );
stopSe( spep_0+4 + 802, SE006, 24 );
SE007 = playSe( spep_0+4 + 738, 1258 );
setSeVolumeByWorkId( spep_0+4 + 738, SE007, 56 );
stopSe( spep_0+4 + 802, SE007, 24 );
SE008 = playSe( spep_0+4 + 746, 1035 );
stopSe( spep_0+4 + 802, SE008, 12 );
SE009 = playSe( spep_0+4 + 746, 1036 );
setSeVolumeByWorkId( spep_0+4 + 746, SE009, 79 );
SE010 = playSe( spep_0+4 + 750, 1298 );
setSeVolumeByWorkId( spep_0+4 + 750, SE010, 79 );
stopSe( spep_0+4 + 802, SE010, 12 );
SE011 = playSe( spep_0+4 + 750, 1261 );
setSeVolumeByWorkId( spep_0+4 + 750, SE011, 126 );
SE012 = playSe( spep_0+4 + 770, 1036 );
setSeVolumeByWorkId( spep_0+4 + 770, SE012, 79 );

--悟空飛んでいく
SE014 = playSe( spep_0+4 + 802, 1182 );
setSeVolumeByWorkId( spep_0+4 + 802, SE014, 112 );
SE015 = playSe( spep_0+4 + 802, 1277 );
setPitch( spep_0+4 + 802, SE015, 200 );
setTimeStretch( SE015, 1.13, 10, 1 );

--ボイス
--オラは別に正義のヒーローでもなんでもねえ…けんどな！
playVoice( spep_0-3 + 42, 194 );
setVoiceVolume( spep_0-3 + 42, 194, 100 );

--仲間を傷つけるやつは！！
playVoice( spep_0-3 + 456, 195 );
setVoiceVolume( spep_0-3 + 456, 195, 100 );

--ゆるさねえぞーーー！！！！
playVoice( spep_0+1 + 632, 196 );
setVoiceVolume( spep_0+1 + 632, 196, 100 );

--次の準備
spep_1=spep_0+816;
------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 402, finish_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 402, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 402, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 402, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 402, finish_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 402, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 402, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
setEffAlphaKey( spep_1 + 402, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_1 + 386, SP_04, 14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 386, KO, 0, 0, 0 );
setEffMoveKey( spep_1 + 400, KO, 0, 0, 0 );
setEffScaleKey( spep_1 + 386, KO, 1.0, 1.0 );
setEffScaleKey( spep_1 + 400, KO, 1.0, 1.0 );
setEffRotateKey( spep_1 + 386, KO, 0 );
setEffRotateKey( spep_1 + 400, KO, 0 );
setEffAlphaKey( spep_1 + 386, KO, 255 );
setEffAlphaKey( spep_1 + 400, KO, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1+2 + 19, 1, 0);
setDisp( spep_1+2 + 31, 1, 1);
setDisp( spep_1+2 + 33, 1, 0);
changeAnime( spep_1 + 0, 1, 4);
changeAnime( spep_1+2-3 + 20, 1, 8);
setBlendColor(spep_1+2-3 + 20,1,3,0.35,0.58,0.6,1);
setBlendColor(spep_1+2 + 34,1,3,0.35,0.58,0.6,1);
setBlendColor(spep_1+2 + 35,1,3,0.35,0.58,0.6,1);
setBlendColor(spep_1+2 + 36,1,3,0.35,0.58,0.6,0);

setMoveKey( spep_1+2 + 0, 1, -173.1, 11 , 0 );
setMoveKey( spep_1+2-3 + 19, 1, -173.1, 11 , 0 );
setMoveKey( spep_1+2-3 + 20, 1, -185.1, 5 , 0 );
setMoveKey( spep_1+2 + 34, 1, -185.1, 5 , 0 );

setScaleKey( spep_1+2 + 0, 1, 0.39, 0.39 );
setScaleKey( spep_1+2 + 34, 1, 0.39, 0.39 );

setRotateKey( spep_1+2 + 0, 1, 0 );
setRotateKey( spep_1+2 + 34, 1, 0 );

--敵の動き
setDisp( spep_1+2-3 + 192, 1, 1);
setDisp( spep_1+2-1 + 280, 1, 0);

changeAnime( spep_1+2-3 + 192, 1, 7);
setShakeChara(spep_1+2-3 + 192,1,90,5);

a=-60;
b=100;

setMoveKey( spep_1+2-3 + 192, 1, 60.3+a, -289.2+b , 0 );
setMoveKey( spep_1+2-3 + 194, 1, 59.9+a, -289.4+b , 0 );
setMoveKey( spep_1+2-3 + 196, 1, 59.6+a, -289.5+b , 0 );
setMoveKey( spep_1+2-3 + 198, 1, 59.3+a, -289.7+b , 0 );
setMoveKey( spep_1+2-3 + 200, 1, 59+a, -289.9+b , 0 );
setMoveKey( spep_1+2-3 + 202, 1, 58.7+a, -290+b , 0 );
setMoveKey( spep_1+2-3 + 204, 1, 58.4+a, -290.2+b , 0 );
setMoveKey( spep_1+2-3 + 206, 1, 58.1+a, -290.4+b , 0 );
setMoveKey( spep_1+2-3 + 208, 1, 57.8+a, -290.6+b , 0 );
setMoveKey( spep_1+2-3 + 210, 1, 57.5+a, -290.7+b , 0 );
setMoveKey( spep_1+2-3 + 212, 1, 57.2+a, -290.9+b , 0 );
setMoveKey( spep_1+2-3 + 214, 1, 56.9+a, -291.1+b , 0 );
setMoveKey( spep_1+2-3 + 216, 1, 56.6+a, -291.2+b , 0 );
setMoveKey( spep_1+2-3 + 218, 1, 56.3+a, -291.4+b , 0 );
setMoveKey( spep_1+2-3 + 220, 1, 56+a, -291.6+b , 0 );
setMoveKey( spep_1+2-3 + 222, 1, 55.7+a, -291.7+b , 0 );
setMoveKey( spep_1+2-3 + 224, 1, 55.4+a, -291.9+b , 0 );
setMoveKey( spep_1+2-3 + 226, 1, 55.1+a, -292.1+b , 0 );
setMoveKey( spep_1+2-3 + 228, 1, 54.8+a, -292.3+b , 0 );
setMoveKey( spep_1+2-3 + 230, 1, 54.5+a, -292.4+b , 0 );
setMoveKey( spep_1+2-3 + 232, 1, 54.1+a, -292.6+b , 0 );
setMoveKey( spep_1+2-3 + 234, 1, 53.8+a, -292.8+b , 0 );
setMoveKey( spep_1+2-3 + 236, 1, 53.5+a, -292.9+b , 0 );
setMoveKey( spep_1+2-3 + 238, 1, 53.2+a, -293.1+b , 0 );
setMoveKey( spep_1+2-3 + 240, 1, 52.9+a, -293.3+b , 0 );
setMoveKey( spep_1+2-3 + 242, 1, 52.6+a, -293.4+b , 0 );
setMoveKey( spep_1+2-3 + 244, 1, 52.3+a, -293.6+b , 0 );
setMoveKey( spep_1+2-3 + 246, 1, 52+a, -293.8+b , 0 );
setMoveKey( spep_1+2-3 + 248, 1, 51.7+a, -293.9+b , 0 );
setMoveKey( spep_1+2-3 + 250, 1, 51.4+a, -294.1+b , 0 );
setMoveKey( spep_1+2-3 + 252, 1, 51.1+a, -294.3+b , 0 );
setMoveKey( spep_1+2-3 + 254, 1, 50.8+a, -294.5+b , 0 );
setMoveKey( spep_1+2-3 + 256, 1, 50.5+a, -294.6+b , 0 );
setMoveKey( spep_1+2-3 + 258, 1, 50.2+a, -294.8+b , 0 );
setMoveKey( spep_1+2-3 + 260, 1, 49.9+a, -295+b , 0 );
setMoveKey( spep_1+2-3 + 262, 1, 49.6+a, -295.1+b , 0 );
setMoveKey( spep_1+2-3 + 264, 1, 49.3+a, -295.3+b , 0 );
setMoveKey( spep_1+2-3 + 266, 1, 49+a, -295.5+b , 0 );
setMoveKey( spep_1+2-3 + 268, 1, 48.7+a, -295.6+b , 0 );
setMoveKey( spep_1+2-3 + 270, 1, 48.4+a, -295.8+b , 0 );
setMoveKey( spep_1+2-3 + 272, 1, 48+a, -296+b , 0 );
setMoveKey( spep_1+2-3 + 274, 1, 47.7+a, -296.1+b , 0 );
setMoveKey( spep_1+2-3 + 276, 1, 47.4+a, -296.3+b , 0 );
setMoveKey( spep_1+2-3 + 278, 1, 47.1+a, -296.5+b , 0 );
setMoveKey( spep_1+2-1 + 280, 1, 46.8+a, -296.7+b , 0 );

setScaleKey( spep_1+2-3 + 192, 1, 2.3, 2.3 );
setScaleKey( spep_1+2-1 + 280, 1, 2.3, 2.3 );

setRotateKey( spep_1+2-3 + 192, 1, 86 );
setRotateKey( spep_1+2-1 + 280, 1, 86 );

--SE
--悟空飛んでいく
stopSe( spep_1+2 + 34, SE014, 10 );
stopSe( spep_1+2 + 34, SE015, 10 );

--敵にヒットする
SE013 = playSe( spep_1+2 + 2, 1124 );
setSeVolumeByWorkId( spep_1+2 + 2, SE013, 0 );
setSeVolumeByWorkId( spep_1+2 + 3, SE013, 2.4 );
setSeVolumeByWorkId( spep_1+2 + 4, SE013, 4.8 );
setSeVolumeByWorkId( spep_1+2 + 5, SE013, 7.2 );
setSeVolumeByWorkId( spep_1+2 + 6, SE013, 9.6 );
setSeVolumeByWorkId( spep_1+2 + 7, SE013, 12 );
setSeVolumeByWorkId( spep_1+2 + 8, SE013, 14.4 );
setSeVolumeByWorkId( spep_1+2 + 9, SE013, 16.8 );
setSeVolumeByWorkId( spep_1+2 + 10, SE013, 19.2 );
setSeVolumeByWorkId( spep_1+2 + 11, SE013, 21.6 );
setSeVolumeByWorkId( spep_1+2 + 12, SE013, 24 );
setSeVolumeByWorkId( spep_1+2 + 13, SE013, 26.4 );
setSeVolumeByWorkId( spep_1+2 + 14, SE013, 28.8 );
setSeVolumeByWorkId( spep_1+2 + 15, SE013, 31.2 );
setSeVolumeByWorkId( spep_1+2 + 16, SE013, 33.6 );
setSeVolumeByWorkId( spep_1+2 + 17, SE013, 36 );
setSeVolumeByWorkId( spep_1+2 + 18, SE013, 38.4 );
setSeVolumeByWorkId( spep_1+2 + 19, SE013, 40.8 );
setSeVolumeByWorkId( spep_1+2 + 20, SE013, 43.2 );
setSeVolumeByWorkId( spep_1+2 + 21, SE013, 45.6 );
setSeVolumeByWorkId( spep_1+2 + 22, SE013, 48 );
setSeVolumeByWorkId( spep_1+2 + 23, SE013, 50.4 );
setSeVolumeByWorkId( spep_1+2 + 24, SE013, 52.8 );
setSeVolumeByWorkId( spep_1+2 + 25, SE013, 55.2 );
setSeVolumeByWorkId( spep_1+2 + 26, SE013, 57.6 );
setSeVolumeByWorkId( spep_1+2 + 27, SE013, 60 );
setSeVolumeByWorkId( spep_1+2 + 28, SE013, 62.4 );
setSeVolumeByWorkId( spep_1+2 + 29, SE013, 64.8 );
setSeVolumeByWorkId( spep_1+2 + 30, SE013, 68 );
setStartTimeMs( SE013,  567 );
stopSe( spep_1+2 + 50, SE013, 16 );
SE016 = playSe( spep_1+2 + 6, 1069 );
setSeVolumeByWorkId( spep_1+2 + 6, SE016, 0 );
setSeVolumeByWorkId( spep_1+2 + 7, SE016, 21 );
setSeVolumeByWorkId( spep_1+2 + 8, SE016, 42 );
setSeVolumeByWorkId( spep_1+2 + 9, SE016, 63 );
setSeVolumeByWorkId( spep_1+2 + 10, SE016, 84 );
setStartTimeMs( SE016,  183 );
SE017 = playSe( spep_1+2 + 6, 1159 );
setSeVolumeByWorkId( spep_1+2 + 6, SE017, 59 );

--地面爆発
SE018 = playSe( spep_1+2 + 40, 1061 );
setSeVolumeByWorkId( spep_1+2 + 40, SE018, 72 );
setPitch( spep_1+2 + 40, SE018, 300 );
setTimeStretch( SE018, 1.2, 10, 1 );
SE019 = playSe( spep_1+2 + 42, 1159 );
setSeVolumeByWorkId( spep_1+2 + 42, SE019, 87 );
SE020 = playSe( spep_1+2 + 42, 1067 );
setSeVolumeByWorkId( spep_1+2 + 42, SE020, 60 );

--岩爆発１
SE021 = playSe( spep_1+8 + 78, 1061 );
setSeVolumeByWorkId( spep_1+8 + 78, SE021, 83 );
setPitch( spep_1+8 + 78, SE021, 300 );
setTimeStretch( SE021, 1.2, 10, 1 );
SE022 = playSe( spep_1+8 + 80, 1159 );
setSeVolumeByWorkId( spep_1+8 + 80, SE022, 72 );

--岩爆発２
SE023 = playSe( spep_1+8 + 94, 1061 );
setSeVolumeByWorkId( spep_1+8 + 94, SE023, 86 );
setPitch( spep_1+8 + 94, SE023, 300 );
setTimeStretch( SE023, 1.2, 10, 1 );
SE024 = playSe( spep_1+8 + 96, 1067 );
setSeVolumeByWorkId( spep_1+8 + 96, SE024, 81 );

--岩爆発３
SE025 = playSe( spep_1+8 + 116, 1061 );
setSeVolumeByWorkId( spep_1+8 + 116, SE025, 83 );
setPitch( spep_1+8 + 116, SE025, 300 );
setTimeStretch( SE025, 1.2, 10, 1 );
SE026 = playSe( spep_1+8 + 118, 1067 );
setSeVolumeByWorkId( spep_1+8 + 118, SE026, 79 );

--ラストパンチ
SE027 = playSe( spep_1+2 + 186, 1120 );
SE028 = playSe( spep_1+2 + 186, 1156 );
setSeVolumeByWorkId( spep_1+2 + 186, SE028, 65 );

--ラスト環境音
SE029 = playSe( spep_1+2 + 190, 1175 );
setSeVolumeByWorkId( spep_1+2 + 190, SE029, 19 );
SE030 = playSe( spep_1+2 + 206, 1278 );
setSeVolumeByWorkId( spep_1+2 + 206, SE030, 19 );
SE031 = playSe( spep_1+2 + 220, 1269 );
setSeVolumeByWorkId( spep_1+2 + 220, SE031, 59 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 280 );
entryFade( spep_1 +380, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 390 );

else end