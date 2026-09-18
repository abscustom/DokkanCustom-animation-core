--1024830:クウラ(最終形態)_スーパーノヴァ(アクティブ)
--sp_effect_a2_00182
--ut0037

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
SP_01=  160323;  --クウラが浮上〜フィニッシュ ef_001
SP_03=  160325;  --KO ef_003

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

           skipFrame(0, spep_0 +700 -13);        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 700 -13, SP_01, spep_0 + 700 -13 + 2, 1);

       else

           skipFrame(0, spep_0 + 870);      -- スキップ先フレーム指定

           setupMovie(spep_0 + 870 , SP_01, spep_0 + 870  + 2, 1);

           --気弾地面に埋まっていく
           SE026 = playSeVer2( spep_0 + 872, 1213, "", 0, 16, 0, -1);
           setStartTimeMs( SE026,  267 );
           SE027 = playSeVer2( spep_0 + 872, 1343, "", 0, 0, 0, -1);
           SE028 = playSeVer2( spep_0 + 872, 1024, "", 0, 0, 0, -1);
           SE029 = playSeVer2( spep_0 + 872, 1044, "", 0, 0, 0, -1);
           
           --風圧
           SE030 = playSeVer2( spep_0 + 916, 1258, "", 0, 40, 0, -1);
           setSeVolumeByWorkId( spep_0 + 916, SE030, 70 );
           SE031 = playSeVer2( spep_0 + 940, 1259, "", 0, 0, 0, -1);
           setPitch( spep_0 + 940, SE031, -600 );
           setTimeStretch( SE031, 0.6, 30, 4 );

        end

    else

        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--クウラが浮上〜フィニッシュ
------------------------------------------------------
--はじめの準備
spep_0 = 0;

--エフェクト
extra_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- クウラが浮上〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, extra_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1058, extra_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1058, extra_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_f, 0 );
setEffRotateKey( spep_0 + 1058, extra_f, 0 );
setEffAlphaKey( spep_0 + 0, extra_f, 255 );
setEffAlphaKey( spep_0 + 1058, extra_f, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_0 + 1056, SP_03, 0x100, -1, 0, 0, 0 );  -- KO演出(ef_003)
setEffMoveKey( spep_0 + 1056, KO, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1186, KO, 0, 0 , 0 );
setEffScaleKey( spep_0 + 1056, KO, 1.0 , 1.0 );
setEffScaleKey( spep_0 + 1186, KO, 1.0 , 1.0 );
setEffRotateKey( spep_0 + 1056, KO, 0 );
setEffRotateKey( spep_0 + 1186, KO, 0 );
setEffAlphaKey( spep_0 + 1056, KO, 255 );
setEffAlphaKey( spep_0 + 1186, KO, 255 );


--SE
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1241, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1170, "", 0, 0, 0, -1);

--環境音
SE003 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 368, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 20 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE005 = playSeVer2( spep_0 + 4, 44, "", 0, 0, 0, -1);

--顔アップ
SE006 = playSeVer2( spep_0 + 190, 1116, "",spep_0 + 232, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 196, 1004, "", 0, 0, 0, -1);

--腕を上げる
SE008 = playSeVer2( spep_0 + 260, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE009 = playSeVer2( spep_0 + 278, 1158, "",spep_0 + 548, 0, 24, -1);
SE010 = playSeVer2( spep_0 + 278, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE010, 79 );
SE011 = playSeVer2( spep_0 + 278, 1226, "",spep_0 + 436, 0, 26, -1);

--アップ気弾溜め
SE012 = playSeVer2( spep_0 + 412, 1356, "",spep_0 + 572, 10, 42, -1);
setSeVolumeByWorkId( spep_0 + 412, SE012, 65 );
setStartTimeMs( SE012,  833 );
SE013 = playSeVer2( spep_0 + 412, 1213, "",spep_0 + 572, 10, 42, -1);
setSeVolumeByWorkId( spep_0 + 412, SE013, 68 );
setStartTimeMs( SE013,  600 );
SE014 = playSeVer2( spep_0 + 412, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE014, 126 );

--気弾投げ
SE015 = playSeVer2( spep_0 + 528, 1237, "",spep_0 + 632, 4, 40, -1);
setSeVolumeByWorkId( spep_0 + 528, SE015, 70 );
setStartTimeMs( SE015,  167 );
SE016 = playSeVer2( spep_0 + 528, 1193, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE016, 127 );
SE017 = playSeVer2( spep_0 + 528, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE017, 77 );
SE018 = playSeVer2( spep_0 + 528, 1284, "",spep_0 + 616, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 528, SE018, 77 );

--気弾向かっていく
SE019 = playSeVer2( spep_0 + 628, 1213, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE019, 89 );
setStartTimeMs( SE019,  283 );
SE020 = playSeVer2( spep_0 + 630, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE020, 112 );
SE021 = playSeVer2( spep_0 + 632, 1044, "",spep_0 + 868, 0, 0, -1);

--ボイス
--オレは弟のように甘くはない　一人残らず根絶やしにしてくれる！
playVoice( spep_0 + 0, 479 );
setVoiceVolume( spep_0 + 0, 479, 112 );

--この星ごと
playVoice( spep_0 + 414, 480 );
setVoiceVolume( spep_0 + 414, 480, 112 );

--消えてなくなれ！！
playVoice( spep_0 + 504, 481 );
setVoiceVolume( spep_0 + 504, 481, 112 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 884, 0, 0, 0, 0, 255);       -- ベース暗め 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +700; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );

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
setDisp( spep_0-3 + 724, 1, 1);
setDisp( spep_0-3 + 768, 1, 0);

changeAnime( spep_0-3 + 724, 1, 104);
changeAnime( spep_0-3 + 760, 1, 108);

setBlendColor( spep_0 -3 + 724, 1, 3, 0.45, 0.26, 0.16, 0.7 );
setBlendColor( spep_0 -3 + 767, 1, 3, 0.45, 0.26, 0.16, 0.7 );
setBlendColor( spep_0 -3 + 768, 1, 3, 0.73, 0.28, 0, 0 );

b1 = 5
setMoveKey( spep_0 -3 + 724, 1, 94.4, -79.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 726, 1, 94.8, -82.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 728, 1, 98.1, -85 -b1 , 0 );
setMoveKey( spep_0 -3 + 730, 1, 94.8, -82.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 732, 1, 98.8, -82.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 734, 1, 94.8, -85.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 736, 1, 98.4, -83.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 738, 1, 94.8, -86.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 740, 1, 99.8, -87.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 742, 1, 94.8, -87.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 744, 1, 98.8, -87 -b1 , 0 );
setMoveKey( spep_0 -3 + 746, 1, 98.8, -91 -b1 , 0 );
setMoveKey( spep_0 -3 + 748, 1, 99.8, -88 -b1 , 0 );
setMoveKey( spep_0 -3 + 750, 1, 99.1, -92 -b1 , 0 );
setMoveKey( spep_0 -3 + 752, 1, 101.5, -94 -b1 , 0 );
setMoveKey( spep_0 -3 + 754, 1, 100.5, -93 -b1 , 0 );
setMoveKey( spep_0 -3 + 756, 1, 99.8, -88.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 758, 1, 110.2, -103.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 759, 1, 110.2, -103.1 -b1 , 0 );

setMoveKey( spep_0 -3 + 760, 1, 144.7, -135.9 , 0 );
setMoveKey( spep_0 -3 + 762, 1, 140.8, -158.6 , 0 );
setMoveKey( spep_0 -3 + 764, 1, 144.6, -159.9 , 0 );
setMoveKey( spep_0 -3 + 766, 1, 190.5, -200.1 , 0 );
setMoveKey( spep_0 -3 + 768, 1, 190.5, -200.1 , 0 );

setScaleKey( spep_0 -3 + 724, 1, 1.1, 1 );
setScaleKey( spep_0 -3 + 768, 1, 1.1, 1 );

setRotateKey( spep_0 -3 + 724, 1, 30 );
setRotateKey( spep_0 -3 + 758, 1, 30 );
setRotateKey( spep_0 -3 + 760, 1, 40 );
setRotateKey( spep_0 -3 + 762, 1, 60 );
setRotateKey( spep_0 -3 + 762, 1, 60 );
setRotateKey( spep_0 -3 + 768, 1, 60 );

--SE
--地面に着く
SE022 = playSeVer2( spep_0 + 696, 1188, "", 0, 0, 0, -1);

--敵ヒット
SE023 = playSeVer2( spep_0 + 750, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE023, 83 );
SE024 = playSeVer2( spep_0 + 750, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE024, 88 );
SE025 = playSeVer2( spep_0 + 758, 1168, "", 0, 0, 0, -1);

--気弾地面に埋まっていく
SE026 = playSeVer2( spep_0 + 850, 1213, "", 0, 16, 0, -1);
setStartTimeMs( SE026,  267 );
SE027 = playSeVer2( spep_0 + 846, 1343, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 864, 1024, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 864, 1044, "", 0, 0, 0, -1);

--風圧
SE030 = playSeVer2( spep_0 + 916, 1258, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE030, 70 );
SE031 = playSeVer2( spep_0 + 940, 1259, "", 0, 0, 0, -1);
setPitch( spep_0 + 940, SE031, -600 );
setTimeStretch( SE031, 0.6, 30, 4 );

--ボイス

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 870 );
entryFade( spep_0 +1048, 2,  8, 2, 0, 0, 0, 255); -- black fade
endPhase( spep_0 + 1058 );

else end