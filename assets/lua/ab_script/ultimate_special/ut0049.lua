--1026130:孫悟飯(幼年期)_満月の出来事(アクティブ)
--sp_effect_a3_00101

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
SP_01 = 161449;  --開始～フィニッシュ   ef_001
SP_02 = 161450;  --開始～フィニッシュ    ef_001_back


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

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 646 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 750);      -- スキップ先フレーム指定

          --SE
          --爆発
            SE025 = playSeVer2( spep_0 + 750, 1159, "", 0, 0, 0, -1);
            SE026 = playSeVer2( spep_0 + 750, 1067, "", 0, 0, 0, -1);          
            SE027 = playSeVer2( spep_0 + 750, 1188, "", 0, 0, 0, -1);

            SE028 = playSeVer2( spep_0 + 750, 1268, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 750, SE028, 166 );
            SE029 = playSeVer2( spep_0 + 750, 1068, "", 0, 0, 0, -1);
            SE030 = playSeVer2( spep_0 + 750, 1226, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 750, SE030, 71 );


       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開始～フィニッシュ
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開始～フィニッシュ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 906, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 906, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 906, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 906, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開始～フィニッシュ   ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 906, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 906, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 906, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 906, first_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 906 + 2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 607, 1, 1 );
changeAnime( spep_0 + 607, 1, 104 );

setMoveKey( spep_0 + 607, 1, 88.8, -52.2 , 0 );
setMoveKey( spep_0 + 608, 1, 88.8, -52.2 , 0 );
setMoveKey( spep_0 + 609, 1, 88.4, -52.3 , 0 );
setMoveKey( spep_0 + 610, 1, 88.4, -52.3 , 0 );
setMoveKey( spep_0 + 611, 1, 88.1, -52.5 , 0 );
setMoveKey( spep_0 + 612, 1, 88.1, -52.5 , 0 );
setMoveKey( spep_0 + 613, 1, 87.9, -52.7 , 0 );
setMoveKey( spep_0 + 614, 1, 87.9, -52.7 , 0 );
setMoveKey( spep_0 + 615, 1, 87.5, -52.8 , 0 );
setMoveKey( spep_0 + 616, 1, 87.5, -52.8 , 0 );
setMoveKey( spep_0 + 617, 1, 87.3, -53 , 0 );
setMoveKey( spep_0 + 618, 1, 87.3, -53 , 0 );
setMoveKey( spep_0 + 619, 1, 86.9, -53.2 , 0 );
setMoveKey( spep_0 + 620, 1, 86.9, -53.2 , 0 );
setMoveKey( spep_0 + 621, 1, 86.6, -53.3 , 0 );
setMoveKey( spep_0 + 622, 1, 86.6, -53.3 , 0 );
setMoveKey( spep_0 + 623, 1, 86.3, -53.5 , 0 );
setMoveKey( spep_0 + 624, 1, 86.3, -53.5 , 0 );
setMoveKey( spep_0 + 625, 1, 86, -53.7 , 0 );
setMoveKey( spep_0 + 626, 1, 86, -53.7 , 0 );
setMoveKey( spep_0 + 627, 1, 85.7, -53.8 , 0 );
setMoveKey( spep_0 + 628, 1, 85.7, -53.8 , 0 );
setMoveKey( spep_0 + 629, 1, 85.4, -54 , 0 );
setMoveKey( spep_0 + 630, 1, 85.4, -54 , 0 );
setMoveKey( spep_0 + 631, 1, 78.2, -46.5 , 0 );
setMoveKey( spep_0 + 632, 1, 78.2, -46.5 , 0 );
setMoveKey( spep_0 + 633, 1, 81, -58.8 , 0 );
setMoveKey( spep_0 + 634, 1, 81, -58.8 , 0 );
setMoveKey( spep_0 + 635, 1, 86, -49.8 , 0 );
setMoveKey( spep_0 + 636, 1, 86, -49.8 , 0 );
setMoveKey( spep_0 + 637, 1, 89.5, -59.2 , 0 );
setMoveKey( spep_0 + 638, 1, 89.5, -59.2 , 0 );
setMoveKey( spep_0 + 639, 1, 80, -51.7 , 0 );
setMoveKey( spep_0 + 640, 1, 80, -51.7 , 0 );
setMoveKey( spep_0 + 641, 1, 87.4, -50.3 , 0 );
setMoveKey( spep_0 + 642, 1, 87.4, -50.3 , 0 );
setMoveKey( spep_0 + 643, 1, 80.2, -58.1 , 0 );
setMoveKey( spep_0 + 644, 1, 80.2, -58.1 , 0 );
setMoveKey( spep_0 + 645, 1, 86.7, -58.3 , 0 );

setScaleKey( spep_0 + 607, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 619, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 620, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 621, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 635, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 636, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 637, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 607, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--地響き
SE002 = playSeVer2( spep_0 + 66, 1044, "",spep_0 + 456, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 66, SE002, 40 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 76, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE003, 63 );

--巨大化
SE004 = playSeVer2( spep_0 + 76, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 73 );
SE005 = playSeVer2( spep_0 + 76, 1278, "",spep_0 + 266, 0, 108, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 60 );
SE006 = playSeVer2( spep_0 + 86, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 72 );

--足音
SE007 = playSeVer2( spep_0 + 192, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE007, 141 );
SE008 = playSeVer2( spep_0 + 226, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE008, 141 );
SE009 = playSeVer2( spep_0 + 270, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE009, 141 );
SE010 = playSeVer2( spep_0 + 306, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE010, 141 );
SE011 = playSeVer2( spep_0 + 352, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE011, 141 );
SE012 = playSeVer2( spep_0 + 392, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE012, 141 );

--力む
SE013 = playSeVer2( spep_0 + 414, 1330, "",spep_0 + 470, 0, 26, -1);
setPitch( spep_0 + 414, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--吠える
SE014 = playSeVer2( spep_0 + 450, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE014, 78 );
SE015 = playSeVer2( spep_0 + 450, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE015, 84 );

--気弾溜める
SE016 = playSeVer2( spep_0 + 522, 1144, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE016, 77 );
SE017 = playSeVer2( spep_0 + 522, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE017, 135 );
SE018 = playSeVer2( spep_0 + 522, 1311, "", 0, 0, 0, -1);

--気弾発射
SE019 = playSeVer2( spep_0 + 584, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE019, 77 );
SE020 = playSeVer2( spep_0 + 584, 1177, "",spep_0 + 732, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 584, SE020, 89 );
SE021 = playSeVer2( spep_0 + 584, 1258, "",spep_0 + 732, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 584, SE021, 80 );
SE022 = playSeVer2( spep_0 + 584, 1146, "",spep_0 + 732, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 584, SE022, 88 );
setPitch( spep_0 + 584, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--気弾飛んでいく
SE023 = playSeVer2( spep_0 + 630, 1145, "",spep_0 + 736, 0, 18, -1);


--ボイス
--「ぐおおおおお！！！」
playVoice( spep_0 + 64, 594 );
setVoiceVolume( spep_0 + 64, 594, 100 );

--「がああああ！！」
playVoice( spep_0 + 434, 595 );
setVoiceVolume( spep_0 + 434, 595, 100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 646; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 86.7, -58.3 , 0 );
    setMoveKey( SP_dodge + 1, 1, 78.8, -52.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, 78.8, -52.3 , 0 );
    setMoveKey( SP_dodge + 3, 1, 76.9, -61 , 0 );
    setMoveKey( SP_dodge + 4, 1, 76.9, -61 , 0 );
    setMoveKey( SP_dodge + 5, 1, 96.7, -31.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 96.7, -31.8 , 0 );
    setMoveKey( SP_dodge + 7, 1, 125.7, -62 , 0 );
    setMoveKey( SP_dodge + 8, 1, 125.7, -62 , 0 );
    setMoveKey( SP_dodge + 9, 1, 206.3, -63.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 206.3, -63.7 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 0.9, 0.9 );
    setScaleKey( SP_dodge + 6, 1, 0.9, 0.9 );
    setScaleKey( SP_dodge + 7, 1, 0.99, 0.99 );
    setScaleKey( SP_dodge + 8, 1, 0.99, 0.99 );
    setScaleKey( SP_dodge + 9, 1, 0.79, 0.79 );
    setScaleKey( SP_dodge + 10, 1, 0.79, 0.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 661, 1, 0 );
changeAnime( spep_0 + 653, 1, 108 );

setMoveKey( spep_0 + 646, 1, 86.7, -58.3 , 0 );
setMoveKey( spep_0 + 647, 1, 78.8, -52.3 , 0 );
setMoveKey( spep_0 + 648, 1, 78.8, -52.3 , 0 );
setMoveKey( spep_0 + 649, 1, 76.9, -61 , 0 );
setMoveKey( spep_0 + 650, 1, 76.9, -61 , 0 );
setMoveKey( spep_0 + 651, 1, 96.7, -31.8 , 0 );
setMoveKey( spep_0 + 652, 1, 96.7, -31.8 , 0 );
setMoveKey( spep_0 + 653, 1, 125.7, -62 , 0 );
setMoveKey( spep_0 + 654, 1, 125.7, -62 , 0 );
setMoveKey( spep_0 + 655, 1, 206.3, -63.7 , 0 );
setMoveKey( spep_0 + 656, 1, 206.3, -63.7 , 0 );
setMoveKey( spep_0 + 657, 1, 336.7, -129.7 , 0 );
setMoveKey( spep_0 + 658, 1, 336.7, -129.7 , 0 );
setMoveKey( spep_0 + 659, 1, 478.2, -123 , 0 );
setMoveKey( spep_0 + 660, 1, 478.2, -123 , 0 );
setMoveKey( spep_0 + 661, 1, 478.2, -123 , 0 );

setScaleKey( spep_0 + 646, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 652, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 653, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 654, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 655, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 656, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 657, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 658, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 659, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 660, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 661, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 646, 1, 0 );
setRotateKey( spep_0 + 660, 1, 0 );
setRotateKey( spep_0 + 661, 1, 0 );


-- ** 音 ** --
--気弾飛んでいく
SE024 = playSeVer2( spep_0 + 652, 1021, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_0 + 714, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 718, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 732, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 748, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE028, 166 );
SE029 = playSeVer2( spep_0 + 748, 1068, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 748, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE030, 71 );



--終わり
dealDamage( spep_0 + 752 );
endPhase( spep_0 + 896 );
end