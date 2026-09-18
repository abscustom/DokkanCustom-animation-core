--1024860:超サイヤ人孫悟空_超サイヤ人怒る！！！(アクティブ)
--sp_effect_b1_00208

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
SP_01=  160416;  --開幕～殴り飛ばしまで　前面   ef_001
SP_02=  160417;  --開幕～殴り飛ばしまで　背面   ef_002
SP_03=  160418;  --ダメージUI　前面   ef_003
SP_04=  160419;  --ダメージUI　背面   ef_004
SP_05=  160420;  --KO演出    ef_005

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
           skipFrame(0, spep_0 +526 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 768);      -- スキップ先フレーム指定
           
           --敵飛んでいく
       SE040 = playSeVer2( spep_0 + 768, 1121, "",spep_0 + 832, 0, 32, -1);

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
extra_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕～殴り飛ばしまで　前面   ef_001
setEffMoveKey( spep_0 + 0, extra_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 768, extra_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 768, extra_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_f, 0 );
setEffRotateKey( spep_0 + 768, extra_f, 0 );
setEffAlphaKey( spep_0 + 0, extra_f, 255 );
setEffAlphaKey( spep_0 + 766, extra_f, 255 );
setEffAlphaKey( spep_0 + 767, extra_f, 255 );
setEffAlphaKey( spep_0 + 768, extra_f, 0 );

--エフェクト
extra_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開幕～殴り飛ばしまで　背面   ef_002
setEffMoveKey( spep_0 + 0, extra_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 768, extra_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 768, extra_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_b, 0 );
setEffRotateKey( spep_0 + 768, extra_b, 0 );
setEffAlphaKey( spep_0 + 0, extra_b, 255 );
setEffAlphaKey( spep_0 + 766, extra_b, 255 );
setEffAlphaKey( spep_0 + 767, extra_b, 255 );
setEffAlphaKey( spep_0 + 768, extra_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 92, 1, 1 );
setDisp( spep_0 -3 + 272, 1, 0 );
changeAnime( spep_0 -3 + 92, 1, 2 );

setBlendColor( spep_0 -3 + 92, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 271, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 272, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_0 -3 + 92, 1, -245.4, -438.6 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -245.4, -438.6 , 0 );

setScaleKey( spep_0 -3 + 92, 1, 6.26, 6.26 );
setScaleKey( spep_0 -3 + 272, 1, 6.26, 6.26 );

setRotateKey( spep_0 -3 + 92, 1, 0 );
setRotateKey( spep_0 -3 + 272, 1, 0 );

-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 104, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 1382, "",spep_0 + 104, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 10 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 10 );
SE005 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 10 );
SE006 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 10 );
SE007 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 10 );
SE014 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 04, SE014, 50 );
SE015 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE015, 50 );
SE016 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE016, 50 );
SE017 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE017, 50 );
SE018 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE018, 50 );
SE019 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE019, 50 );
SE020 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE020, 50 );
SE021 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE021, 50 );
SE022 = playSeVer2( spep_0 + 496, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE022, 50 );

--入り
SE004 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 71 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 74, 1109, "", 0, 0, 0, -1);

--環境音
SE009 = playSeVer2( spep_0 + 74, 1349, "",spep_0 + 962, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 74, SE009, 25 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 108, 1018, "", 0, 0, 0, -1);

--気ダメ
SE011 = playSeVer2( spep_0 + 270, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE011, 38 );
SE012 = playSeVer2( spep_0 + 270, 1210, "",spep_0 + 638, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 270, SE012, 35 );
SE013 = playSeVer2( spep_0 + 288, 1035, "", 0, 0, 0, -1);

-- ** ボイス ** --
--いい加減にしろ
playVoice( spep_0 + 116, 485 );
setVoiceVolume( spep_0 + 116, 485, 100 );

--キサマはもう　あやまっても許さねえぞ！
playVoice( spep_0 + 324, 486 );
setVoiceVolume( spep_0 + 324, 486, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 770, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 526 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    
    setVoiceVolume( SP_dodge - 12, 486, 0 );
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 622, 1, 1 );
setDisp( spep_0 -3 + 750, 1, 0 );

changeAnime( spep_0 -3 + 622, 1, 0 );
changeAnime( spep_0 -3 + 636, 1, 4 );
changeAnime( spep_0 -3 + 660, 1, 2 );
changeAnime( spep_0 -3 + 740, 1, 7 );

setBlendColor( spep_0 -3 + 660, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 749, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 750, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_0 -3 + 622, 1, 5.9, -161.1 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 5.9, -161.1 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 5.9, -161.1 , 0 );
setMoveKey( spep_0 -3 + 635, 1, 5.9, -161.1 , 0 );--
setMoveKey( spep_0 -3 + 636, 1, -11.9, -84.3 , 0 );
setMoveKey( spep_0 -3 + 646, 1, -11.9, -84.3 , 0 );
setMoveKey( spep_0 -3 + 648, 1, -18.5, -76.7 , 0 );
setMoveKey( spep_0 -3 + 652, 1, -18.5, -76.7 , 0 );
setMoveKey( spep_0 -3 + 654, 1, -8.8, -67.6 , 0 );
setMoveKey( spep_0 -3 + 655, 1, -8.8, -67.6 , 0 );
setMoveKey( spep_0 -3 + 659, 1, -8.8, -67.6 , 0 );--
setMoveKey( spep_0 -3 + 660, 1, -143.6, -637.3 , 0 );
setMoveKey( spep_0 -3 + 662, 1, -147.6, -641.3 , 0 );
setMoveKey( spep_0 -3 + 664, 1, -143.6, -641.3 , 0 );
setMoveKey( spep_0 -3 + 666, 1, -144.4, -661.9 , 0 );
setMoveKey( spep_0 -3 + 668, 1, -140.4, -661.9 , 0 );
setMoveKey( spep_0 -3 + 670, 1, -144.4, -665.9 , 0 );
setMoveKey( spep_0 -3 + 672, 1, -137.1, -690.5 , 0 );
setMoveKey( spep_0 -3 + 674, 1, -141.1, -686.5 , 0 );
setMoveKey( spep_0 -3 + 676, 1, -137.1, -686.5 , 0 );
setMoveKey( spep_0 -3 + 678, 1, -137.8, -715.1 , 0 );
setMoveKey( spep_0 -3 + 680, 1, -133.8, -715.1 , 0 );
setMoveKey( spep_0 -3 + 682, 1, -137.8, -711.1 , 0 );
setMoveKey( spep_0 -3 + 684, 1, -130.6, -735.7 , 0 );
setMoveKey( spep_0 -3 + 686, 1, -134.6, -739.7 , 0 );
setMoveKey( spep_0 -3 + 688, 1, -130.6, -739.7 , 0 );
setMoveKey( spep_0 -3 + 690, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 692, 1, -127.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 694, 1, -131.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 696, 1, -127.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 698, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 700, 1, -127.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 702, 1, -131.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 704, 1, -127.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 706, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 708, 1, -127.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 710, 1, -131.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 712, 1, -127.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 714, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 716, 1, -127.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 718, 1, -131.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 720, 1, -127.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 722, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 724, 1, -127.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 726, 1, -131.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 728, 1, -127.3, -764.3 , 0 );
setMoveKey( spep_0 -3 + 730, 1, -131.3, -760.3 , 0 );
setMoveKey( spep_0 -3 + 732, 1, -129.3, -762.3 , 0 );
setMoveKey( spep_0 -3 + 734, 1, -107.3, -742.3 , 0 );
setMoveKey( spep_0 -3 + 736, 1, -145.3, -780.3 , 0 );
setMoveKey( spep_0 -3 + 738, 1, -109.3, -780.3 , 0 );
setMoveKey( spep_0 -3 + 738, 1, -109.3, -780.3 , 0 );
setMoveKey( spep_0 -3 + 739, 1, -109.3, -780.3 , 0 );--
setMoveKey( spep_0 -3 + 740, 1, -110, -223.3 , 0 );
setMoveKey( spep_0 -3 + 742, 1, -519.5, -221.3 , 0 );
setMoveKey( spep_0 -3 + 744, 1, -1002.9, -259.3 , 0 );
setMoveKey( spep_0 -3 + 746, 1, -1412.3, -259.3 , 0 );
setMoveKey( spep_0 -3 + 750, 1, -1412.3, -259.3 , 0 );

setScaleKey( spep_0 -3 + 622, 1, 5, 5 );
setScaleKey( spep_0 -3 + 634, 1, 5, 5 );
setScaleKey( spep_0 -3 + 635, 1, 5, 5 );--
setScaleKey( spep_0 -3 + 636, 1, 4.43, 4.43 );
setScaleKey( spep_0 -3 + 640, 1, 4.43, 4.43 );
setScaleKey( spep_0 -3 + 642, 1, 3.02, 3.02 );
setScaleKey( spep_0 -3 + 646, 1, 3.02, 3.02 );
setScaleKey( spep_0 -3 + 648, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 652, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 654, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 659, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -3 + 660, 1, 7, 7 );
setScaleKey( spep_0 -3 + 664, 1, 7, 7 );
setScaleKey( spep_0 -3 + 666, 1, 7.4, 7.4 );
setScaleKey( spep_0 -3 + 670, 1, 7.4, 7.4 );
setScaleKey( spep_0 -3 + 672, 1, 7.8, 7.8 );
setScaleKey( spep_0 -3 + 676, 1, 7.8, 7.8 );
setScaleKey( spep_0 -3 + 678, 1, 8.2, 8.2 );
setScaleKey( spep_0 -3 + 682, 1, 8.2, 8.2 );
setScaleKey( spep_0 -3 + 684, 1, 8.6, 8.6 );
setScaleKey( spep_0 -3 + 688, 1, 8.6, 8.6 );
setScaleKey( spep_0 -3 + 690, 1, 9, 9 );
setScaleKey( spep_0 -3 + 739, 1, 9, 9 );--
setScaleKey( spep_0 -3 + 740, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 750, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 622, 1, 0 );
setRotateKey( spep_0 -3 + 739, 1, 0 );
setRotateKey( spep_0 -3 + 740, 1, 56.7 );
setRotateKey( spep_0 -3 + 750, 1, 56.7 );

-- ** SE ** --
SE023 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE023, 50 );
SE024 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE024, 50 );
SE025 = playSeVer2( spep_0 + 568, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE025, 50 );

--気を爆発させる
SE026 = playSeVer2( spep_0 + 576, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE026, 63 );
SE027 = playSeVer2( spep_0 + 580, 1278, "",spep_0 + 692, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 580, SE027, 61 );
SE028 = playSeVer2( spep_0 + 580, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE028, 45 );
SE029 = playSeVer2( spep_0 + 580, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE029, 72 );

--敵ヒット
SE030 = playSeVer2( spep_0 + 628, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE030, 79 );
SE031 = playSeVer2( spep_0 + 628, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE031, 81 );

--敵に向かっていく
SE032 = playSeVer2( spep_0 + 654, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 654, 1355, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE033, 47 );
SE034 = playSeVer2( spep_0 + 654, 1314, "",spep_0 + 758, 0, 26, -1);
SE035 = playSeVer2( spep_0 + 658, 9, "", 0, 0, 0, -1);

--殴る
SE036 = playSeVer2( spep_0 + 720, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 730, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE037, 80 );
SE038 = playSeVer2( spep_0 + 730, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE038, 75 );
SE039 = playSeVer2( spep_0 + 730, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_0 + 760, 1121, "",spep_0 + 832, 0, 32, -1);

-- ** ボイス ** --
--このクズヤロー！！
playVoice( spep_0 + 520, 487 );
setVoiceVolume( spep_0 + 520, 487, 100 );

--次の準備
spep_1 = spep_0 + 768;

------------------------------------------------------
--フィニッシュ
------------------------------------------------------
--spep_1=0;
--エフェクト
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ダメージUI　前面   ef_003
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 156, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 156, finish_f, 255 );

--エフェクト
finish_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ダメージUI　背面   ef_004
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_b, 0 );
setEffRotateKey( spep_1 + 156, finish_b, 0 );
setEffAlphaKey( spep_1 + 0, finish_b, 255 );
setEffAlphaKey( spep_1 + 156, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_1 + 154, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_1 + 154, KO, 0, 0 , 0 );
setEffMoveKey( spep_1 + 390, KO, 0, 0 , 0 );
setEffScaleKey( spep_1 + 154, KO, 1.0 , 1.0 );
setEffScaleKey( spep_1 + 390, KO, 1.0 , 1.0 );
setEffRotateKey( spep_1 + 154, KO, 0 );
setEffRotateKey( spep_1 + 390, KO, 0 );
setEffAlphaKey( spep_1 + 154, KO, 255 );
setEffAlphaKey( spep_1 + 390, KO, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 38, 1, 0 );
changeAnime( spep_1 + 0, 1, 6 );

setMoveKey( spep_1 + 0, 1, 279.8, 502.4 , 0 );
setMoveKey( spep_1 + 1, 1, 277.1, 495.2 , 0 );
setMoveKey( spep_1 + 2, 1, 270.5, 477.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 261.4, 453.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 250.4, 424 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 237.9, 390.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 224.2, 354.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 209.5, 315.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 194, 273.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 177.8, 230.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 160.9, 185.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 143.4, 138.7 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 125.4, 90.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 106.9, 41.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 88, -9.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 68.6, -61.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 48.7, -114.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 28.4, -168.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 20.6, -228.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 20.6, -228.3 , 0 );

s1 = 0.05;
setScaleKey( spep_1 + 0, 1, 0.29 -s1, 0.29 -s1 );
setScaleKey( spep_1 -3 + 38, 1, 0.29 -s1, 0.29 -s1 );

setRotateKey( spep_1 + 0, 1, -82.5 );
setRotateKey( spep_1 -3 + 38, 1, -82.5 );

-- ** SE ** --
--地面激突
SE041 = playSeVer2( spep_1 + 30, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 30, 1023, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 30, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE043, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 158, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 34 );
entryFade( spep_1 +146, 2, 10, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 156 );

else end