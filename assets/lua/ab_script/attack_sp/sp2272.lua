--4022390:超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_かめはめ波&ギャリック砲
--sp_effect_a1_00331
--sp2722

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
SP_01= 158720;-- 悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
SP_02= 158721;-- 悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
SP_03= 158722;-- かめはめ波&ギャリック砲発射〜フィニッシュ
SP_04= 158723;-- かめはめ波&ギャリック砲発射〜フィニッシュ

--エフェクト(てき)
SP_01x= 158724;-- 悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
SP_02x= 158725;-- 悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
SP_03x= 158726;-- かめはめ波&ギャリック砲発射〜フィニッシュ
SP_04x= 158727;-- かめはめ波&ギャリック砲発射〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


adjustAttackerLabel( 0, 205);


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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 712, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 712, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 712, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 712, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 712, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 712, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 712, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 712, tame_b, 255 );

--敵の動き
setDisp( spep_0-3 + 90, 1, 1);
setDisp( spep_0-1 + 178, 1, 0);

changeAnime( spep_0-3 + 90, 1, 16);

setMoveKey( spep_0-3 + 90, 1, -2.5, 13 , 0 );
setMoveKey( spep_0-3 + 92, 1, -4, 13.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -5.6, 13.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, -7.1, 13.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, -8.7, 13.2 , 0 );
setMoveKey( spep_0-3 + 100, 1, -8.6, 5.5 , 0 );
setMoveKey( spep_0-3 + 102, 1, -8.5, 3.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, -8.4, 6 , 0 );
setMoveKey( spep_0-3 + 106, 1, -8.4, 8.2 , 0 );
setMoveKey( spep_0-3 + 108, 1, -8.3, 10.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, -4.3, 14.5 , 0 );
setMoveKey( spep_0-3 + 112, 1, -2.5, 14.5 , 0 );
setMoveKey( spep_0-3 + 114, 1, -0.6, 14.5 , 0 );
setMoveKey( spep_0-3 + 116, 1, -6.6, 14.5 , 0 );
setMoveKey( spep_0-3 + 118, 1, -16.2, 14.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, -21.8, 14.6 , 0 );
setMoveKey( spep_0-3 + 122, 1, -23.1, 12.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, -16.7, 5 , 0 );
setMoveKey( spep_0-3 + 126, 1, -14.4, 5.4 , 0 );
setMoveKey( spep_0-3 + 128, 1, -14.1, 9.6 , 0 );
setMoveKey( spep_0-3 + 130, 1, -15.7, 11.9 , 0 );
setMoveKey( spep_0-3 + 132, 1, -19.2, 12 , 0 );
setMoveKey( spep_0-3 + 134, 1, -20.6, 10.2 , 0 );
setMoveKey( spep_0-3 + 136, 1, -22, 8.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, -21.3, 4.8 , 0 );
setMoveKey( spep_0-3 + 140, 1, -18.6, -2.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, -18, -1.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, -15.4, 3.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, -12.9, 7.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, -14.5, 12.1 , 0 );
setMoveKey( spep_0-3 + 150, 1, -13, 11.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, -11.5, 10.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, -13, 11 , 0 );
setMoveKey( spep_0-3 + 156, 1, -14.4, 11.3 , 0 );
setMoveKey( spep_0-3 + 158, 1, -15.7, 9.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, -16.7, 8.3 , 0 );
setMoveKey( spep_0-3 + 162, 1, -17.6, 7.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, -18.3, 8.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, -14.8, 10.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, -11.3, 12.1 , 0 );
setMoveKey( spep_0-3 + 170, 1, -12.4, 15.9 , 0 );
setMoveKey( spep_0-3 + 172, 1, -13.1, 13.9 , 0 );
setMoveKey( spep_0-3 + 174, 1, -15.2, 14.3 , 0 );
setMoveKey( spep_0-3 + 176, 1, -14.1, 16.6 , 0 );
setMoveKey( spep_0-1 + 178, 1, -12, 18 , 0 );

setScaleKey( spep_0-3 + 90, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 94, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 96, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 102, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 104, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 110, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 112, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 120, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 122, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 128, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 130, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 138, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 140, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 146, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 148, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 154, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 156, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 164, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 166, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 172, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 174, 1, 0.3, 0.3 );
setScaleKey( spep_0-1 + 178, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 90, 1, 0 );
setRotateKey( spep_0-1 + 178, 1, 0 );


--SE
--後ろ向きに飛ぶ
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 226, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 226, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 69 );

--服風でなびく
SE003 = playSeVer2( spep_0 + 12, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 12, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 40, 1333, "",spep_0 + 100, 0, 20, -1);
setPitch( spep_0 + 40, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 80, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 80, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 150, 1333, "",spep_0 + 190, 0, 16, -1);

--二人突っ込んでいく
SE008 = playSeVer2( spep_0 + 190, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE008, 126 );
SE009 = playSeVer2( spep_0 + 192, 1258, "",spep_0 + 298, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 80 );
SE010 = playSeVer2( spep_0 + 192, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 75 );
setPitch( spep_0 + 192, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 200, 1277, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 200, 1278, "",spep_0 + 334, 0, 26, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 712, 0, 0, 0, 0, 255 );  --黒　背景
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 224; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    
    -----------------------------
    --回避しなかった場合
    -----------------------------

--顔カットインのタイミング指定
spep_x=spep_0 +622;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_0-3 + 234, 1, 1);
setDisp( spep_0-1 + 468, 1, 0);

changeAnime( spep_0-3 + 234, 1, 0);
changeAnime( spep_0-3 + 268, 1, 100);
changeAnime( spep_0-3 + 310, 1, 106);
changeAnime( spep_0-3 + 312, 1, 108);
changeAnime( spep_0-3 + 320, 1, 106);
changeAnime( spep_0-3 + 364, 1, 108);
changeAnime( spep_0-3 + 382, 1, 105);
changeAnime( spep_0-3 + 398, 1, 8);
changeAnime( spep_0-3 + 428, 1, 6);

setMoveKey( spep_0-3 + 234, 1, 27.1, 112.7 , 0 );--0
setMoveKey( spep_0-3 + 236, 1, 19.9, 116.7 , 0 );
setMoveKey( spep_0-3 + 238, 1, -49.2, 137.7 , 0 );
setMoveKey( spep_0-3 + 240, 1, -37.7, 152.2 , 0 );
setMoveKey( spep_0-3 + 242, 1, -75.9, 148.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, -76.9, 148.8 , 0 );
setMoveKey( spep_0-3 + 246, 1, -86.4, 148.7 , 0 );
setMoveKey( spep_0-3 + 248, 1, -116.3, 154.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -111.5, 155.8 , 0 );
setMoveKey( spep_0-3 + 252, 1, -130.2, 150.7 , 0 );
setMoveKey( spep_0-3 + 254, 1, -134.5, 155.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, -134.5, 155.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, -150.6, 150.3 , 0 );
setMoveKey( spep_0-3 + 260, 1, -153.2, 144.9 , 0 );
setMoveKey( spep_0-3 + 262, 1, -158.9, 149.8 , 0 );
setMoveKey( spep_0-3 + 267, 1, -158.2, 140.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, -144.5, 130.1 , 0 );--100
setMoveKey( spep_0-3 + 270, 1, -144.5, 129.8 , 0 );
setMoveKey( spep_0-3 + 272, 1, -110, 112 , 0 );
setMoveKey( spep_0-3 + 274, 1, -110, 112 , 0 );
setMoveKey( spep_0-3 + 276, 1, -66.9, 98.8 , 0 );
setMoveKey( spep_0-3 + 278, 1, -34.4, 84.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, -34.4, 84.1 , 0 );
setMoveKey( spep_0-3 + 282, 1, -34.4, 83.8 , 0 );
setMoveKey( spep_0-3 + 284, 1, 74.5, 37 , 0 );
setMoveKey( spep_0-3 + 286, 1, 105, 19.6 , 0 );
setMoveKey( spep_0-3 + 288, 1, 131.1, 7.5 , 0 );
setMoveKey( spep_0-3 + 290, 1, 154.7, -5.8 , 0 );
setMoveKey( spep_0-3 + 292, 1, 169.4, -18.9 , 0 );
setMoveKey( spep_0-3 + 294, 1, 186.6, -31 , 0 );
setMoveKey( spep_0-3 + 296, 1, 200, -42.8 , 0 );
setMoveKey( spep_0-3 + 298, 1, 215.5, -54.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 215.4, -55.2 , 0 );
setMoveKey( spep_0-3 + 302, 1, 224.9, -70 , 0 );
setMoveKey( spep_0-3 + 304, 1, 224.8, -70.3 , 0 );
setMoveKey( spep_0-3 + 306, 1, 239.3, -89.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, 139.1, -77.8 , 0 );
setMoveKey( spep_0-3 + 309, 1, 139.1, -77.8 , 0 );
setMoveKey( spep_0-3 + 310, 1, 80.7, -21.3 , 0 );--106
setMoveKey( spep_0-3 + 311, 1, 80.7, -21.3 , 0 );
setMoveKey( spep_0-3 + 312, 1, 100.7, -26.6 , 0 );--108
setMoveKey( spep_0-3 + 314, 1, 109.3, -26.7 , 0 );
setMoveKey( spep_0-3 + 316, 1, 100.3, -21.8 , 0 );
setMoveKey( spep_0-3 + 318, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 319, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 99.1, -4.5 , 0 );--106
setMoveKey( spep_0-3 + 322, 1, 93.9, -28.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, 113, -19.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, 113.7, -19.2 , 0 );
setMoveKey( spep_0-3 + 328, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 109.3, -10.2 , 0 );
setMoveKey( spep_0-3 + 332, 1, 105.3, -12.2 , 0 );
setMoveKey( spep_0-3 + 334, 1, 117.5, -23.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, 118, -23.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, 114, -18.7 , 0 );
setMoveKey( spep_0-3 + 340, 1, 130.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 342, 1, 129.8, -25 , 0 );
setMoveKey( spep_0-3 + 344, 1, 130.7, -29 , 0 );
setMoveKey( spep_0-3 + 346, 1, 131, -28.8 , 0 );
setMoveKey( spep_0-3 + 348, 1, 133.3, -29 , 0 );
setMoveKey( spep_0-3 + 350, 1, 133.5, -28.9 , 0 );
setMoveKey( spep_0-3 + 352, 1, 132.7, -31.2 , 0 );
setMoveKey( spep_0-3 + 354, 1, 130.1, -29.3 , 0 );
setMoveKey( spep_0-3 + 356, 1, 130.2, -29.3 , 0 );
setMoveKey( spep_0-3 + 358, 1, 127.6, -28.7 , 0 );
setMoveKey( spep_0-3 + 363, 1, 127.6, -28.7 , 0 );
setMoveKey( spep_0-3 + 364, 1, 127.6, -30.5 , 0 );--108
setMoveKey( spep_0-3 + 366, 1, 115.5, -21.7 , 0 );
setMoveKey( spep_0-3 + 368, 1, 116.1, -18.4 , 0 );
setMoveKey( spep_0-3 + 370, 1, 116.1, -18.4 , 0 );
setMoveKey( spep_0-3 + 372, 1, 109.6, -23.4 , 0 );
setMoveKey( spep_0-3 + 374, 1, 109.6, -23.4 , 0 );
setMoveKey( spep_0-3 + 376, 1, 104.8, -27.3 , 0 );
setMoveKey( spep_0-3 + 378, 1, 94.7, -35.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 105.5, -16.1 , 0 );
setMoveKey( spep_0-3 + 381, 1, 105.5, -16.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, 17.7, -65.5 , 0 );--105
setMoveKey( spep_0-3 + 384, 1, 59.7, 5.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 55.2, -8.2 , 0 );
setMoveKey( spep_0-3 + 388, 1, 50.6, -4.9 , 0 );
setMoveKey( spep_0-3 + 390, 1, 38.5, -7.3 , 0 );
setMoveKey( spep_0-3 + 392, 1, 34.1, -4.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, 31.8, -8.6 , 0 );
setMoveKey( spep_0-3 + 396, 1, 27.5, -5.7 , 0 );
setMoveKey( spep_0-3 + 397, 1, 27.5, -5.7 , 0 );
setMoveKey( spep_0-3 + 398, 1, -40.1, 3.2 , 0 );--8
setMoveKey( spep_0-3 + 400, 1, -37.3, 3.5 , 0 );
setMoveKey( spep_0-3 + 402, 1, -47.9, 14.1 , 0 );
setMoveKey( spep_0-3 + 404, 1, -34.6, 20 , 0 );
setMoveKey( spep_0-3 + 406, 1, -20.4, 23.1 , 0 );
setMoveKey( spep_0-3 + 408, 1, -7.5, 26 , 0 );
setMoveKey( spep_0-3 + 410, 1, 4, 28.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 14.3, 31.5 , 0 );
setMoveKey( spep_0-3 + 414, 1, 23.1, 33.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, 30.6, 35.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, 36.7, 36.5 , 0 );
setMoveKey( spep_0-3 + 420, 1, 41.4, 37.5 , 0 );
setMoveKey( spep_0-3 + 422, 1, 44.8, 38.3 , 0 );
setMoveKey( spep_0-3 + 424, 1, 46.8, 38.7 , 0 );
setMoveKey( spep_0-3 + 426, 1, 47.5, 38.9 , 0 );
setMoveKey( spep_0-3 + 427, 1, 47.5, 38.9 , 0 );
setMoveKey( spep_0-3 + 428, 1, 62.5, 27.9 , 0 );--6
setMoveKey( spep_0-3 + 430, 1, 80.3, 48.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, 80.3, 48.9 , 0 );
setMoveKey( spep_0-3 + 434, 1, 116.6, 87.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, 116.6, 87.4 , 0 );
setMoveKey( spep_0-3 + 438, 1, 164.4, 128.9 , 0 );
setMoveKey( spep_0-3 + 440, 1, 147.5, 124.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, 124.7, 141.3 , 0 );
setMoveKey( spep_0-3 + 444, 1, 120, 143.6 , 0 );
setMoveKey( spep_0-3 + 446, 1, 116.3, 145.6 , 0 );
setMoveKey( spep_0-3 + 448, 1, 113.3, 147.5 , 0 );
setMoveKey( spep_0-3 + 450, 1, 110.5, 148.2 , 0 );
setMoveKey( spep_0-3 + 452, 1, 107.9, 148.9 , 0 );
setMoveKey( spep_0-3 + 454, 1, 105.6, 149.5 , 0 );
setMoveKey( spep_0-3 + 456, 1, 104, 152.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, 103.7, 150.4 , 0 );
setMoveKey( spep_0-3 + 460, 1, 101.8, 150.9 , 0 );
setMoveKey( spep_0-3 + 462, 1, 99.2, 157.9 , 0 );
setMoveKey( spep_0-3 + 464, 1, 97.9, 159.5 , 0 );
setMoveKey( spep_0-3 + 466, 1, 96.8, 161.2 , 0 );
setMoveKey( spep_0-1 + 468, 1, 96.1, 162.6 , 0 );

setScaleKey( spep_0-3 + 234, 1, 0.08, 0.08 );--0
setScaleKey( spep_0-3 + 236, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 240, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 242, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 267, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 268, 1, 0.07, 0.07 );--100
setScaleKey( spep_0-3 + 274, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 276, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 288, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 290, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 292, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 294, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 300, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 302, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 304, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 306, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 308, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 309, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 310, 1, 0.6, 0.6 );--106
setScaleKey( spep_0-3 + 311, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 312, 1, 0.6, 0.6 );--108
setScaleKey( spep_0-3 + 319, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 320, 1, 0.6, 0.6 );--106
setScaleKey( spep_0-3 + 322, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 326, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 328, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 330, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 332, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 334, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 336, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 338, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 340, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 342, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 344, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 348, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 350, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 356, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 358, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 363, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 364, 1, 0.52, 0.52 );--108
setScaleKey( spep_0-3 + 366, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 370, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 372, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 374, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 376, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 378, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 380, 1, 2, 2 );
setScaleKey( spep_0-3 + 381, 1, 2, 2 );
setScaleKey( spep_0-3 + 382, 1, 2.4, 2.4 );--105
setScaleKey( spep_0-3 + 384, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 386, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 388, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 390, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 392, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 394, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 396, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 397, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 398, 1, 0.35, 0.35 );--8
setScaleKey( spep_0-3 + 427, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 428, 1, 0.35, 0.35 );--6
setScaleKey( spep_0-3 + 440, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 442, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 444, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 446, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 448, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 450, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 452, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 454, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 456, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 458, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 460, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 462, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 464, 1, 0.2, 0.2 );
setScaleKey( spep_0-1 + 468, 1, 0.2, 0.2 );

setRotateKey( spep_0-3 + 234, 1, 0 );--0
setRotateKey( spep_0-3 + 246, 1, 0 );
setRotateKey( spep_0-3 + 248, 1, -10 );
setRotateKey( spep_0-3 + 258, 1, -10 );
setRotateKey( spep_0-3 + 260, 1, -15 );
setRotateKey( spep_0-3 + 267, 1, -15 );
setRotateKey( spep_0-3 + 268, 1, -14.8 );--100
setRotateKey( spep_0-3 + 274, 1, -14.8 );
setRotateKey( spep_0-3 + 276, 1, -10 );
setRotateKey( spep_0-3 + 278, 1, -5 );
setRotateKey( spep_0-3 + 282, 1, -5 );
setRotateKey( spep_0-3 + 284, 1, 0 );
setRotateKey( spep_0-3 + 286, 1, 0 );
setRotateKey( spep_0-3 + 288, 1, 5 );
setRotateKey( spep_0-3 + 290, 1, 4.8 );
setRotateKey( spep_0-3 + 294, 1, 4.8 );
setRotateKey( spep_0-3 + 296, 1, 10 );
setRotateKey( spep_0-3 + 300, 1, 10 );
setRotateKey( spep_0-3 + 302, 1, 9.8 );
setRotateKey( spep_0-3 + 304, 1, 9.8 );
setRotateKey( spep_0-3 + 306, 1, 15 );
setRotateKey( spep_0-3 + 308, 1, 14.8 );
setRotateKey( spep_0-3 + 309, 1, 14.8 );
setRotateKey( spep_0-3 + 310, 1, -30.2 );--106
setRotateKey( spep_0-3 + 311, 1, -30.2 );
setRotateKey( spep_0-3 + 312, 1, 14.8 );--108
setRotateKey( spep_0-3 + 319, 1, 14.8 );
setRotateKey( spep_0-3 + 320, 1, -30.2 );--106
setRotateKey( spep_0-3 + 363, 1, -30.2 );
setRotateKey( spep_0-3 + 364, 1, 14.8 );--108
setRotateKey( spep_0-3 + 376, 1, 14.8 );
setRotateKey( spep_0-3 + 378, 1, 14.9 );
setRotateKey( spep_0-3 + 380, 1, 15 );
setRotateKey( spep_0-3 + 381, 1, 15 );
setRotateKey( spep_0-3 + 382, 1, 15 );--105
setRotateKey( spep_0-3 + 384, 1, 15 );
setRotateKey( spep_0-3 + 386, 1, 17.5 );
setRotateKey( spep_0-3 + 388, 1, 20 );
setRotateKey( spep_0-3 + 390, 1, 22.4 );
setRotateKey( spep_0-3 + 392, 1, 24.9 );
setRotateKey( spep_0-3 + 394, 1, 27.4 );
setRotateKey( spep_0-3 + 396, 1, 29.9 );
setRotateKey( spep_0-3 + 397, 1, 29.9 );
setRotateKey( spep_0-3 + 398, 1, 29.9 );--8
setRotateKey( spep_0-3 + 402, 1, 29.9 );
setRotateKey( spep_0-3 + 404, 1, 34.3 );
setRotateKey( spep_0-3 + 406, 1, 38.4 );
setRotateKey( spep_0-3 + 408, 1, 42.1 );
setRotateKey( spep_0-3 + 410, 1, 45.4 );
setRotateKey( spep_0-3 + 412, 1, 48.3 );
setRotateKey( spep_0-3 + 414, 1, 50.8 );
setRotateKey( spep_0-3 + 416, 1, 53 );
setRotateKey( spep_0-3 + 418, 1, 54.7 );
setRotateKey( spep_0-3 + 420, 1, 56.1 );
setRotateKey( spep_0-3 + 422, 1, 57 );
setRotateKey( spep_0-3 + 424, 1, 57.6 );
setRotateKey( spep_0-3 + 426, 1, 57.8 );
setRotateKey( spep_0-3 + 427, 1, 57.8 );
setRotateKey( spep_0-3 + 428, 1, 57.8 );--6
setRotateKey( spep_0-3 + 430, 1, 30 );
setRotateKey( spep_0-3 + 432, 1, 30 );
setRotateKey( spep_0-3 + 434, 1, 10 );
setRotateKey( spep_0-3 + 436, 1, 10 );
setRotateKey( spep_0-3 + 438, 1, 0 );
setRotateKey( spep_0-3 + 440, 1, -10 );
setRotateKey( spep_0-3 + 442, 1, -13.7 );
setRotateKey( spep_0-3 + 444, 1, -15.5 );
setRotateKey( spep_0-3 + 446, 1, -16.8 );
setRotateKey( spep_0-3 + 448, 1, -18 );
setRotateKey( spep_0-3 + 450, 1, -19 );
setRotateKey( spep_0-3 + 452, 1, -19.9 );
setRotateKey( spep_0-3 + 454, 1, -20.7 );
setRotateKey( spep_0-3 + 456, 1, -21.5 );
setRotateKey( spep_0-3 + 458, 1, -22.2 );
setRotateKey( spep_0-3 + 460, 1, -22.8 );
setRotateKey( spep_0-3 + 462, 1, -23.4 );
setRotateKey( spep_0-3 + 464, 1, -24 );
setRotateKey( spep_0-3 + 466, 1, -24.5 );
setRotateKey( spep_0-1 + 468, 1, -24.8 );

--SE
--振りかぶる
SE013 = playSeVer2( spep_0 + 254, 1116, "",spep_0 + 298, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 254, SE013, 79 );
SE014 = playSeVer2( spep_0 + 296, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE014, 67 );
setPitch( spep_0 + 296, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--二人殴る
SE015 = playSeVer2( spep_0 + 306, 1187, "",spep_0 + 318, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 306, SE015, 81 );
setPitch( spep_0 + 306, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 306, 1359, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 308, 1110, "",spep_0 + 354, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 308, SE017, 73 );

--画面遷移
SE018 = playSeVer2( spep_0 + 342, 1072, "", 0, 0, 0, -1);
setPitch( spep_0 + 342, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );

--ベジータ攻撃する
SE019 = playSeVer2( spep_0 + 388, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 396, 1359, "",spep_0 + 434, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 396, 1110, "",spep_0 + 450, 0, 20, -1);

--悟空攻撃する
SE023 = playSeVer2( spep_0 + 424, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 426, 1009, "",spep_0 + 454, 0, 10, -1);
SE025 = playSeVer2( spep_0 + 426, 1359, "",spep_0 + 452, 0, 4, -1);
SE026 = playSeVer2( spep_0 + 426, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE026, 87 );

--ベジータ退避
SE027 = playSeVer2( spep_0 + 436, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 438, 1277, "", 0, 0, 0, -1);

--悟空退避
SE029 = playSeVer2( spep_0 + 454, 1182, "", 0, 0, 0, -1);

--二人奥に
SE022 = playSeVer2( spep_0 + 480, 1278, "",spep_0 + 624, 10, 38, -1);
setStartTimeMs( SE022,  1133 );
SE030 = playSeVer2( spep_0 + 480, 1277, "",spep_0 + 626, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 480, SE030, 126 );
setTimeStretch( SE030, 1.42, 30, 4 );
SE031 = playSeVer2( spep_0 + 480, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE031, 112 );
SE032 = playSeVer2( spep_0 + 480, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE032, 119 );
SE033 = playSeVer2( spep_0 + 506, 1175, "",spep_0 + 690, 0, 100, 0.7);
setSeVolumeByWorkId( spep_0 + 506, SE033, 60 );

--二人気弾溜め
SE034 = playSeVer2( spep_0 + 584, 1210, "",spep_0 + 726, 18, 10, 0.7);
setStartTimeMs( SE034,  783 );

--画面遷移
SE035 = playSeVer2( spep_0 + 548, 1072, "", 0, 0, 0, -1);

--二人気弾溜め
SE036 = playSeVer2( spep_0 + 584, 1209, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 584, 1296, "",spep_0 + 726, 0, 10, -1);

--顔カットイン
SE038 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 704, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+712;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 92;
------------------------------------------------------
--かめはめ波&ギャリック砲発射〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 300, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 300, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 300, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 76, 1, 1);
setDisp( spep_2-1 + 120, 1, 0);

changeAnime( spep_2-3 + 76, 1, 105);
changeAnime( spep_2-3 + 86, 1, 108);

setMoveKey( spep_2-3 + 76, 1, 294.4, 116.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 294.4, 126.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, 276.3, 119 , 0 );
setMoveKey( spep_2-3 + 82, 1, 259.2, 98 , 0 );
setMoveKey( spep_2-3 + 84, 1, 259.2, 102 , 0 );
setMoveKey( spep_2-3 + 85, 1, 259.2, 102 , 0 );
setMoveKey( spep_2-3 + 86, 1, 270.2, 95 , 0 );
setMoveKey( spep_2-3 + 88, 1, 270.2, 109 , 0 );
setMoveKey( spep_2-3 + 90, 1, 260.2, 84 , 0 );
setMoveKey( spep_2-3 + 92, 1, 261.2, 95.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 261.2, 82 , 0 );
setMoveKey( spep_2-3 + 96, 1, 260.2, 101 , 0 );
setMoveKey( spep_2-3 + 98, 1, 260.2, 101 , 0 );
setMoveKey( spep_2-3 + 100, 1, 254.2, 104 , 0 );
setMoveKey( spep_2-3 + 102, 1, 233.2, 84 , 0 );
setMoveKey( spep_2-3 + 104, 1, 233.2, 88 , 0 );
setMoveKey( spep_2-3 + 106, 1, 273.2, 88 , 0 );
setMoveKey( spep_2-3 + 108, 1, 259.2, 104 , 0 );
setMoveKey( spep_2-3 + 110, 1, 272.2, 78 , 0 );
setMoveKey( spep_2-3 + 112, 1, 282.2, 119.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 282.2, 106 , 0 );
setMoveKey( spep_2-3 + 116, 1, 263.2, 112 , 0 );
setMoveKey( spep_2-3 + 118, 1, 260.2, 99 , 0 );
setMoveKey( spep_2-1 + 120, 1, 263.2, 110 , 0 );

setScaleKey( spep_2-3 + 76, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 78, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 80, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 82, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 85, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 86, 1, 0.45, 0.45 );
setScaleKey( spep_2-1 + 120, 1, 0.45, 0.45 );

setRotateKey( spep_2-3 + 76, 1, 23.6 );
setRotateKey( spep_2-3 + 85, 1, 23.6 );
setRotateKey( spep_2-3 + 86, 1, 23.7 );
setRotateKey( spep_2-1 + 120, 1, 23.7 );

--SE
--気弾発射
SE040 = playSeVer2( spep_2 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE040, 84 );
SE041 = playSeVer2( spep_2 + 4, 1213, "",spep_2 + 180, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE041, 82 );
SE042 = playSeVer2( spep_2 + 4, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE042, 122 );
SE043 = playSeVer2( spep_2 + 4, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE043, 77 );

--気弾飛んでいく
SE044 = playSeVer2( spep_2 + 48, 1146, "", 0, 0, 0, -1);

--気弾ヒット
SE045 = playSeVer2( spep_2 + 118, 1011, "", 0, 0, 0, -1);

--爆発
SE046 = playSeVer2( spep_2 + 156, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 156, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE048 = playSeVer2( spep_2 + 188, 1188, "", 0, 0, 0, -1);

--爆風
SE049 = playSeVer2( spep_2 + 190, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE049, 120 );
setPitch( spep_2 + 190, SE049, -600 );
setTimeStretch( SE049, 0.6, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + 290 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--悟空&ベジータ登場〜かめはめ波&ギャリック砲タメ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 712, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 712, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 712, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 712, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 712, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 712, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 712, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 712, tame_b, 255 );

--敵の動き
setDisp( spep_0-3 + 90, 1, 1);
setDisp( spep_0-1 + 178, 1, 0);

changeAnime( spep_0-3 + 90, 1, 16);

setMoveKey( spep_0-3 + 90, 1, -2.5, 13 , 0 );
setMoveKey( spep_0-3 + 92, 1, -4, 13.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -5.6, 13.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, -7.1, 13.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, -8.7, 13.2 , 0 );
setMoveKey( spep_0-3 + 100, 1, -8.6, 5.5 , 0 );
setMoveKey( spep_0-3 + 102, 1, -8.5, 3.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, -8.4, 6 , 0 );
setMoveKey( spep_0-3 + 106, 1, -8.4, 8.2 , 0 );
setMoveKey( spep_0-3 + 108, 1, -8.3, 10.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, -4.3, 14.5 , 0 );
setMoveKey( spep_0-3 + 112, 1, -2.5, 14.5 , 0 );
setMoveKey( spep_0-3 + 114, 1, -0.6, 14.5 , 0 );
setMoveKey( spep_0-3 + 116, 1, -6.6, 14.5 , 0 );
setMoveKey( spep_0-3 + 118, 1, -16.2, 14.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, -21.8, 14.6 , 0 );
setMoveKey( spep_0-3 + 122, 1, -23.1, 12.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, -16.7, 5 , 0 );
setMoveKey( spep_0-3 + 126, 1, -14.4, 5.4 , 0 );
setMoveKey( spep_0-3 + 128, 1, -14.1, 9.6 , 0 );
setMoveKey( spep_0-3 + 130, 1, -15.7, 11.9 , 0 );
setMoveKey( spep_0-3 + 132, 1, -19.2, 12 , 0 );
setMoveKey( spep_0-3 + 134, 1, -20.6, 10.2 , 0 );
setMoveKey( spep_0-3 + 136, 1, -22, 8.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, -21.3, 4.8 , 0 );
setMoveKey( spep_0-3 + 140, 1, -18.6, -2.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, -18, -1.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, -15.4, 3.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, -12.9, 7.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, -14.5, 12.1 , 0 );
setMoveKey( spep_0-3 + 150, 1, -13, 11.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, -11.5, 10.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, -13, 11 , 0 );
setMoveKey( spep_0-3 + 156, 1, -14.4, 11.3 , 0 );
setMoveKey( spep_0-3 + 158, 1, -15.7, 9.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, -16.7, 8.3 , 0 );
setMoveKey( spep_0-3 + 162, 1, -17.6, 7.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, -18.3, 8.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, -14.8, 10.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, -11.3, 12.1 , 0 );
setMoveKey( spep_0-3 + 170, 1, -12.4, 15.9 , 0 );
setMoveKey( spep_0-3 + 172, 1, -13.1, 13.9 , 0 );
setMoveKey( spep_0-3 + 174, 1, -15.2, 14.3 , 0 );
setMoveKey( spep_0-3 + 176, 1, -14.1, 16.6 , 0 );
setMoveKey( spep_0-1 + 178, 1, -12, 18 , 0 );

setScaleKey( spep_0-3 + 90, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 94, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 96, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 102, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 104, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 110, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 112, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 120, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 122, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 128, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 130, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 138, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 140, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 146, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 148, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 154, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 156, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 164, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 166, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 172, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 174, 1, 0.3, 0.3 );
setScaleKey( spep_0-1 + 178, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 90, 1, 0 );
setRotateKey( spep_0-1 + 178, 1, 0 );


--SE
--後ろ向きに飛ぶ
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 226, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 226, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 69 );

--服風でなびく
SE003 = playSeVer2( spep_0 + 12, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 12, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 40, 1333, "",spep_0 + 100, 0, 20, -1);
setPitch( spep_0 + 40, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 80, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 80, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 150, 1333, "",spep_0 + 190, 0, 16, -1);

--二人突っ込んでいく
SE008 = playSeVer2( spep_0 + 190, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE008, 126 );
SE009 = playSeVer2( spep_0 + 192, 1258, "",spep_0 + 298, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 80 );
SE010 = playSeVer2( spep_0 + 192, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 75 );
setPitch( spep_0 + 192, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 200, 1277, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 200, 1278, "",spep_0 + 334, 0, 26, 0.6);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 712, 0, 0, 0, 0, 255 );  --黒　背景
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 224; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    
    -----------------------------
    --回避しなかった場合
    -----------------------------

--顔カットインのタイミング指定
spep_x=spep_0 +622;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_0-3 + 234, 1, 1);
setDisp( spep_0-1 + 468, 1, 0);

changeAnime( spep_0-3 + 234, 1, 0);
changeAnime( spep_0-3 + 268, 1, 100);
changeAnime( spep_0-3 + 310, 1, 106);
changeAnime( spep_0-3 + 312, 1, 108);
changeAnime( spep_0-3 + 320, 1, 106);
changeAnime( spep_0-3 + 364, 1, 108);
changeAnime( spep_0-3 + 382, 1, 105);
changeAnime( spep_0-3 + 398, 1, 8);
changeAnime( spep_0-3 + 428, 1, 6);

setMoveKey( spep_0-3 + 234, 1, 27.1, 112.7 , 0 );--0
setMoveKey( spep_0-3 + 236, 1, 19.9, 116.7 , 0 );
setMoveKey( spep_0-3 + 238, 1, -49.2, 137.7 , 0 );
setMoveKey( spep_0-3 + 240, 1, -37.7, 152.2 , 0 );
setMoveKey( spep_0-3 + 242, 1, -75.9, 148.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, -76.9, 148.8 , 0 );
setMoveKey( spep_0-3 + 246, 1, -86.4, 148.7 , 0 );
setMoveKey( spep_0-3 + 248, 1, -116.3, 154.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -111.5, 155.8 , 0 );
setMoveKey( spep_0-3 + 252, 1, -130.2, 150.7 , 0 );
setMoveKey( spep_0-3 + 254, 1, -134.5, 155.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, -134.5, 155.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, -150.6, 150.3 , 0 );
setMoveKey( spep_0-3 + 260, 1, -153.2, 144.9 , 0 );
setMoveKey( spep_0-3 + 262, 1, -158.9, 149.8 , 0 );
setMoveKey( spep_0-3 + 267, 1, -158.2, 140.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, -144.5, 130.1 , 0 );--100
setMoveKey( spep_0-3 + 270, 1, -144.5, 129.8 , 0 );
setMoveKey( spep_0-3 + 272, 1, -110, 112 , 0 );
setMoveKey( spep_0-3 + 274, 1, -110, 112 , 0 );
setMoveKey( spep_0-3 + 276, 1, -66.9, 98.8 , 0 );
setMoveKey( spep_0-3 + 278, 1, -34.4, 84.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, -34.4, 84.1 , 0 );
setMoveKey( spep_0-3 + 282, 1, -34.4, 83.8 , 0 );
setMoveKey( spep_0-3 + 284, 1, 74.5, 37 , 0 );
setMoveKey( spep_0-3 + 286, 1, 105, 19.6 , 0 );
setMoveKey( spep_0-3 + 288, 1, 131.1, 7.5 , 0 );
setMoveKey( spep_0-3 + 290, 1, 154.7, -5.8 , 0 );
setMoveKey( spep_0-3 + 292, 1, 169.4, -18.9 , 0 );
setMoveKey( spep_0-3 + 294, 1, 186.6, -31 , 0 );
setMoveKey( spep_0-3 + 296, 1, 200, -42.8 , 0 );
setMoveKey( spep_0-3 + 298, 1, 215.5, -54.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 215.4, -55.2 , 0 );
setMoveKey( spep_0-3 + 302, 1, 224.9, -70 , 0 );
setMoveKey( spep_0-3 + 304, 1, 224.8, -70.3 , 0 );
setMoveKey( spep_0-3 + 306, 1, 239.3, -89.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, 139.1, -77.8 , 0 );
setMoveKey( spep_0-3 + 309, 1, 139.1, -77.8 , 0 );
setMoveKey( spep_0-3 + 310, 1, 80.7, -21.3 , 0 );--106
setMoveKey( spep_0-3 + 311, 1, 80.7, -21.3 , 0 );
setMoveKey( spep_0-3 + 312, 1, 100.7, -26.6 , 0 );--108
setMoveKey( spep_0-3 + 314, 1, 109.3, -26.7 , 0 );
setMoveKey( spep_0-3 + 316, 1, 100.3, -21.8 , 0 );
setMoveKey( spep_0-3 + 318, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 319, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 99.1, -4.5 , 0 );--106
setMoveKey( spep_0-3 + 322, 1, 93.9, -28.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, 113, -19.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, 113.7, -19.2 , 0 );
setMoveKey( spep_0-3 + 328, 1, 106.8, -25.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 109.3, -10.2 , 0 );
setMoveKey( spep_0-3 + 332, 1, 105.3, -12.2 , 0 );
setMoveKey( spep_0-3 + 334, 1, 117.5, -23.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, 118, -23.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, 114, -18.7 , 0 );
setMoveKey( spep_0-3 + 340, 1, 130.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 342, 1, 129.8, -25 , 0 );
setMoveKey( spep_0-3 + 344, 1, 130.7, -29 , 0 );
setMoveKey( spep_0-3 + 346, 1, 131, -28.8 , 0 );
setMoveKey( spep_0-3 + 348, 1, 133.3, -29 , 0 );
setMoveKey( spep_0-3 + 350, 1, 133.5, -28.9 , 0 );
setMoveKey( spep_0-3 + 352, 1, 132.7, -31.2 , 0 );
setMoveKey( spep_0-3 + 354, 1, 130.1, -29.3 , 0 );
setMoveKey( spep_0-3 + 356, 1, 130.2, -29.3 , 0 );
setMoveKey( spep_0-3 + 358, 1, 127.6, -28.7 , 0 );
setMoveKey( spep_0-3 + 363, 1, 127.6, -28.7 , 0 );
setMoveKey( spep_0-3 + 364, 1, 127.6, -30.5 , 0 );--108
setMoveKey( spep_0-3 + 366, 1, 115.5, -21.7 , 0 );
setMoveKey( spep_0-3 + 368, 1, 116.1, -18.4 , 0 );
setMoveKey( spep_0-3 + 370, 1, 116.1, -18.4 , 0 );
setMoveKey( spep_0-3 + 372, 1, 109.6, -23.4 , 0 );
setMoveKey( spep_0-3 + 374, 1, 109.6, -23.4 , 0 );
setMoveKey( spep_0-3 + 376, 1, 104.8, -27.3 , 0 );
setMoveKey( spep_0-3 + 378, 1, 94.7, -35.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 105.5, -16.1 , 0 );
setMoveKey( spep_0-3 + 381, 1, 105.5, -16.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, 17.7, -65.5 , 0 );--105
setMoveKey( spep_0-3 + 384, 1, 59.7, 5.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 55.2, -8.2 , 0 );
setMoveKey( spep_0-3 + 388, 1, 50.6, -4.9 , 0 );
setMoveKey( spep_0-3 + 390, 1, 38.5, -7.3 , 0 );
setMoveKey( spep_0-3 + 392, 1, 34.1, -4.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, 31.8, -8.6 , 0 );
setMoveKey( spep_0-3 + 396, 1, 27.5, -5.7 , 0 );
setMoveKey( spep_0-3 + 397, 1, 27.5, -5.7 , 0 );
setMoveKey( spep_0-3 + 398, 1, -40.1, 3.2 , 0 );--8
setMoveKey( spep_0-3 + 400, 1, -37.3, 3.5 , 0 );
setMoveKey( spep_0-3 + 402, 1, -47.9, 14.1 , 0 );
setMoveKey( spep_0-3 + 404, 1, -34.6, 20 , 0 );
setMoveKey( spep_0-3 + 406, 1, -20.4, 23.1 , 0 );
setMoveKey( spep_0-3 + 408, 1, -7.5, 26 , 0 );
setMoveKey( spep_0-3 + 410, 1, 4, 28.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 14.3, 31.5 , 0 );
setMoveKey( spep_0-3 + 414, 1, 23.1, 33.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, 30.6, 35.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, 36.7, 36.5 , 0 );
setMoveKey( spep_0-3 + 420, 1, 41.4, 37.5 , 0 );
setMoveKey( spep_0-3 + 422, 1, 44.8, 38.3 , 0 );
setMoveKey( spep_0-3 + 424, 1, 46.8, 38.7 , 0 );
setMoveKey( spep_0-3 + 426, 1, 47.5, 38.9 , 0 );
setMoveKey( spep_0-3 + 427, 1, 47.5, 38.9 , 0 );
setMoveKey( spep_0-3 + 428, 1, 62.5, 27.9 , 0 );--6
setMoveKey( spep_0-3 + 430, 1, 80.3, 48.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, 80.3, 48.9 , 0 );
setMoveKey( spep_0-3 + 434, 1, 116.6, 87.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, 116.6, 87.4 , 0 );
setMoveKey( spep_0-3 + 438, 1, 164.4, 128.9 , 0 );
setMoveKey( spep_0-3 + 440, 1, 147.5, 124.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, 124.7, 141.3 , 0 );
setMoveKey( spep_0-3 + 444, 1, 120, 143.6 , 0 );
setMoveKey( spep_0-3 + 446, 1, 116.3, 145.6 , 0 );
setMoveKey( spep_0-3 + 448, 1, 113.3, 147.5 , 0 );
setMoveKey( spep_0-3 + 450, 1, 110.5, 148.2 , 0 );
setMoveKey( spep_0-3 + 452, 1, 107.9, 148.9 , 0 );
setMoveKey( spep_0-3 + 454, 1, 105.6, 149.5 , 0 );
setMoveKey( spep_0-3 + 456, 1, 104, 152.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, 103.7, 150.4 , 0 );
setMoveKey( spep_0-3 + 460, 1, 101.8, 150.9 , 0 );
setMoveKey( spep_0-3 + 462, 1, 99.2, 157.9 , 0 );
setMoveKey( spep_0-3 + 464, 1, 97.9, 159.5 , 0 );
setMoveKey( spep_0-3 + 466, 1, 96.8, 161.2 , 0 );
setMoveKey( spep_0-1 + 468, 1, 96.1, 162.6 , 0 );

setScaleKey( spep_0-3 + 234, 1, 0.08, 0.08 );--0
setScaleKey( spep_0-3 + 236, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 240, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 242, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 267, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 268, 1, 0.07, 0.07 );--100
setScaleKey( spep_0-3 + 274, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 276, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 288, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 290, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 292, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 294, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 300, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 302, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 304, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 306, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 308, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 309, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 310, 1, 0.6, 0.6 );--106
setScaleKey( spep_0-3 + 311, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 312, 1, 0.6, 0.6 );--108
setScaleKey( spep_0-3 + 319, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 320, 1, 0.6, 0.6 );--106
setScaleKey( spep_0-3 + 322, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 326, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 328, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 330, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 332, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 334, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 336, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 338, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 340, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 342, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 344, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 348, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 350, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 356, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 358, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 363, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 364, 1, 0.52, 0.52 );--108
setScaleKey( spep_0-3 + 366, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 370, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 372, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 374, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 376, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 378, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 380, 1, 2, 2 );
setScaleKey( spep_0-3 + 381, 1, 2, 2 );
setScaleKey( spep_0-3 + 382, 1, 2.4, 2.4 );--105
setScaleKey( spep_0-3 + 384, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 386, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 388, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 390, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 392, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 394, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 396, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 397, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 398, 1, 0.35, 0.35 );--8
setScaleKey( spep_0-3 + 427, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 428, 1, 0.35, 0.35 );--6
setScaleKey( spep_0-3 + 440, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 442, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 444, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 446, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 448, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 450, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 452, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 454, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 456, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 458, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 460, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 462, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 464, 1, 0.2, 0.2 );
setScaleKey( spep_0-1 + 468, 1, 0.2, 0.2 );

setRotateKey( spep_0-3 + 234, 1, 0 );--0
setRotateKey( spep_0-3 + 246, 1, 0 );
setRotateKey( spep_0-3 + 248, 1, -10 );
setRotateKey( spep_0-3 + 258, 1, -10 );
setRotateKey( spep_0-3 + 260, 1, -15 );
setRotateKey( spep_0-3 + 267, 1, -15 );
setRotateKey( spep_0-3 + 268, 1, -14.8 );--100
setRotateKey( spep_0-3 + 274, 1, -14.8 );
setRotateKey( spep_0-3 + 276, 1, -10 );
setRotateKey( spep_0-3 + 278, 1, -5 );
setRotateKey( spep_0-3 + 282, 1, -5 );
setRotateKey( spep_0-3 + 284, 1, 0 );
setRotateKey( spep_0-3 + 286, 1, 0 );
setRotateKey( spep_0-3 + 288, 1, 5 );
setRotateKey( spep_0-3 + 290, 1, 4.8 );
setRotateKey( spep_0-3 + 294, 1, 4.8 );
setRotateKey( spep_0-3 + 296, 1, 10 );
setRotateKey( spep_0-3 + 300, 1, 10 );
setRotateKey( spep_0-3 + 302, 1, 9.8 );
setRotateKey( spep_0-3 + 304, 1, 9.8 );
setRotateKey( spep_0-3 + 306, 1, 15 );
setRotateKey( spep_0-3 + 308, 1, 14.8 );
setRotateKey( spep_0-3 + 309, 1, 14.8 );
setRotateKey( spep_0-3 + 310, 1, -30.2 );--106
setRotateKey( spep_0-3 + 311, 1, -30.2 );
setRotateKey( spep_0-3 + 312, 1, 14.8 );--108
setRotateKey( spep_0-3 + 319, 1, 14.8 );
setRotateKey( spep_0-3 + 320, 1, -30.2 );--106
setRotateKey( spep_0-3 + 363, 1, -30.2 );
setRotateKey( spep_0-3 + 364, 1, 14.8 );--108
setRotateKey( spep_0-3 + 376, 1, 14.8 );
setRotateKey( spep_0-3 + 378, 1, 14.9 );
setRotateKey( spep_0-3 + 380, 1, 15 );
setRotateKey( spep_0-3 + 381, 1, 15 );
setRotateKey( spep_0-3 + 382, 1, 15 );--105
setRotateKey( spep_0-3 + 384, 1, 15 );
setRotateKey( spep_0-3 + 386, 1, 17.5 );
setRotateKey( spep_0-3 + 388, 1, 20 );
setRotateKey( spep_0-3 + 390, 1, 22.4 );
setRotateKey( spep_0-3 + 392, 1, 24.9 );
setRotateKey( spep_0-3 + 394, 1, 27.4 );
setRotateKey( spep_0-3 + 396, 1, 29.9 );
setRotateKey( spep_0-3 + 397, 1, 29.9 );
setRotateKey( spep_0-3 + 398, 1, 29.9 );--8
setRotateKey( spep_0-3 + 402, 1, 29.9 );
setRotateKey( spep_0-3 + 404, 1, 34.3 );
setRotateKey( spep_0-3 + 406, 1, 38.4 );
setRotateKey( spep_0-3 + 408, 1, 42.1 );
setRotateKey( spep_0-3 + 410, 1, 45.4 );
setRotateKey( spep_0-3 + 412, 1, 48.3 );
setRotateKey( spep_0-3 + 414, 1, 50.8 );
setRotateKey( spep_0-3 + 416, 1, 53 );
setRotateKey( spep_0-3 + 418, 1, 54.7 );
setRotateKey( spep_0-3 + 420, 1, 56.1 );
setRotateKey( spep_0-3 + 422, 1, 57 );
setRotateKey( spep_0-3 + 424, 1, 57.6 );
setRotateKey( spep_0-3 + 426, 1, 57.8 );
setRotateKey( spep_0-3 + 427, 1, 57.8 );
setRotateKey( spep_0-3 + 428, 1, 57.8 );--6
setRotateKey( spep_0-3 + 430, 1, 30 );
setRotateKey( spep_0-3 + 432, 1, 30 );
setRotateKey( spep_0-3 + 434, 1, 10 );
setRotateKey( spep_0-3 + 436, 1, 10 );
setRotateKey( spep_0-3 + 438, 1, 0 );
setRotateKey( spep_0-3 + 440, 1, -10 );
setRotateKey( spep_0-3 + 442, 1, -13.7 );
setRotateKey( spep_0-3 + 444, 1, -15.5 );
setRotateKey( spep_0-3 + 446, 1, -16.8 );
setRotateKey( spep_0-3 + 448, 1, -18 );
setRotateKey( spep_0-3 + 450, 1, -19 );
setRotateKey( spep_0-3 + 452, 1, -19.9 );
setRotateKey( spep_0-3 + 454, 1, -20.7 );
setRotateKey( spep_0-3 + 456, 1, -21.5 );
setRotateKey( spep_0-3 + 458, 1, -22.2 );
setRotateKey( spep_0-3 + 460, 1, -22.8 );
setRotateKey( spep_0-3 + 462, 1, -23.4 );
setRotateKey( spep_0-3 + 464, 1, -24 );
setRotateKey( spep_0-3 + 466, 1, -24.5 );
setRotateKey( spep_0-1 + 468, 1, -24.8 );

--SE
--振りかぶる
SE013 = playSeVer2( spep_0 + 254, 1116, "",spep_0 + 298, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 254, SE013, 79 );
SE014 = playSeVer2( spep_0 + 296, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE014, 67 );
setPitch( spep_0 + 296, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--二人殴る
SE015 = playSeVer2( spep_0 + 306, 1187, "",spep_0 + 318, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 306, SE015, 81 );
setPitch( spep_0 + 306, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 306, 1359, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 308, 1110, "",spep_0 + 354, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 308, SE017, 73 );

--画面遷移
SE018 = playSeVer2( spep_0 + 342, 1072, "", 0, 0, 0, -1);
setPitch( spep_0 + 342, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );

--ベジータ攻撃する
SE019 = playSeVer2( spep_0 + 388, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 396, 1359, "",spep_0 + 434, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 396, 1110, "",spep_0 + 450, 0, 20, -1);

--悟空攻撃する
SE023 = playSeVer2( spep_0 + 424, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 426, 1009, "",spep_0 + 454, 0, 10, -1);
SE025 = playSeVer2( spep_0 + 426, 1359, "",spep_0 + 452, 0, 4, -1);
SE026 = playSeVer2( spep_0 + 426, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE026, 87 );

--ベジータ退避
SE027 = playSeVer2( spep_0 + 436, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 438, 1277, "", 0, 0, 0, -1);

--悟空退避
SE029 = playSeVer2( spep_0 + 454, 1182, "", 0, 0, 0, -1);

--二人奥に
SE022 = playSeVer2( spep_0 + 480, 1278, "",spep_0 + 624, 10, 38, -1);
setStartTimeMs( SE022,  1133 );
SE030 = playSeVer2( spep_0 + 480, 1277, "",spep_0 + 626, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 480, SE030, 126 );
setTimeStretch( SE030, 1.42, 30, 4 );
SE031 = playSeVer2( spep_0 + 480, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE031, 112 );
SE032 = playSeVer2( spep_0 + 480, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE032, 119 );
SE033 = playSeVer2( spep_0 + 506, 1175, "",spep_0 + 690, 0, 100, 0.7);
setSeVolumeByWorkId( spep_0 + 506, SE033, 60 );

--二人気弾溜め
SE034 = playSeVer2( spep_0 + 584, 1210, "",spep_0 + 726, 18, 10, 0.7);
setStartTimeMs( SE034,  783 );

--画面遷移
SE035 = playSeVer2( spep_0 + 548, 1072, "", 0, 0, 0, -1);

--二人気弾溜め
SE036 = playSeVer2( spep_0 + 584, 1209, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 584, 1296, "",spep_0 + 726, 0, 10, -1);

--顔カットイン
SE038 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 704, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+712;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 92;
------------------------------------------------------
--かめはめ波&ギャリック砲発射〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 300, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 300, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 300, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 300, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 300, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 76, 1, 1);
setDisp( spep_2-1 + 120, 1, 0);

changeAnime( spep_2-3 + 76, 1, 105);
changeAnime( spep_2-3 + 86, 1, 108);

setMoveKey( spep_2-3 + 76, 1, 294.4, 116.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 294.4, 126.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, 276.3, 119 , 0 );
setMoveKey( spep_2-3 + 82, 1, 259.2, 98 , 0 );
setMoveKey( spep_2-3 + 84, 1, 259.2, 102 , 0 );
setMoveKey( spep_2-3 + 85, 1, 259.2, 102 , 0 );
setMoveKey( spep_2-3 + 86, 1, 270.2, 95 , 0 );
setMoveKey( spep_2-3 + 88, 1, 270.2, 109 , 0 );
setMoveKey( spep_2-3 + 90, 1, 260.2, 84 , 0 );
setMoveKey( spep_2-3 + 92, 1, 261.2, 95.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 261.2, 82 , 0 );
setMoveKey( spep_2-3 + 96, 1, 260.2, 101 , 0 );
setMoveKey( spep_2-3 + 98, 1, 260.2, 101 , 0 );
setMoveKey( spep_2-3 + 100, 1, 254.2, 104 , 0 );
setMoveKey( spep_2-3 + 102, 1, 233.2, 84 , 0 );
setMoveKey( spep_2-3 + 104, 1, 233.2, 88 , 0 );
setMoveKey( spep_2-3 + 106, 1, 273.2, 88 , 0 );
setMoveKey( spep_2-3 + 108, 1, 259.2, 104 , 0 );
setMoveKey( spep_2-3 + 110, 1, 272.2, 78 , 0 );
setMoveKey( spep_2-3 + 112, 1, 282.2, 119.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 282.2, 106 , 0 );
setMoveKey( spep_2-3 + 116, 1, 263.2, 112 , 0 );
setMoveKey( spep_2-3 + 118, 1, 260.2, 99 , 0 );
setMoveKey( spep_2-1 + 120, 1, 263.2, 110 , 0 );

setScaleKey( spep_2-3 + 76, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 78, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 80, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 82, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 85, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 86, 1, 0.45, 0.45 );
setScaleKey( spep_2-1 + 120, 1, 0.45, 0.45 );

setRotateKey( spep_2-3 + 76, 1, 23.6 );
setRotateKey( spep_2-3 + 85, 1, 23.6 );
setRotateKey( spep_2-3 + 86, 1, 23.7 );
setRotateKey( spep_2-1 + 120, 1, 23.7 );

--SE
--気弾発射
SE040 = playSeVer2( spep_2 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE040, 84 );
SE041 = playSeVer2( spep_2 + 4, 1213, "",spep_2 + 180, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 4, SE041, 82 );
SE042 = playSeVer2( spep_2 + 4, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE042, 122 );
SE043 = playSeVer2( spep_2 + 4, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE043, 77 );

--気弾飛んでいく
SE044 = playSeVer2( spep_2 + 48, 1146, "", 0, 0, 0, -1);

--気弾ヒット
SE045 = playSeVer2( spep_2 + 118, 1011, "", 0, 0, 0, -1);

--爆発
SE046 = playSeVer2( spep_2 + 156, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 156, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE048 = playSeVer2( spep_2 + 188, 1188, "", 0, 0, 0, -1);

--爆風
SE049 = playSeVer2( spep_2 + 190, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE049, 120 );
setPitch( spep_2 + 190, SE049, -600 );
setTimeStretch( SE049, 0.6, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + 290 );
end