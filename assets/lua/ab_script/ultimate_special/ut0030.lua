--1024080:ナッパ_栽培マンアタック(アクティブ)
--sp_effect_a7_00053

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
SP_01 = 159502  ;-- 田植え→生まれ→自爆  ef_001
SP_02 = 159503  ;-- 田植え→生まれ→自爆  ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
           skipFrame(0, spep_0 + 400 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 476);      -- スキップ先フレーム指定


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
setEffMoveKey( spep_0 + 580, finish_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 580, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 580, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 580, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 580, finish_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 580, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 580, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 580, finish_b, 255 );

--敵の動き
-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 420, 1, 1 );
setDisp( spep_0 -3 + 476, 1, 0 );
changeAnime( spep_0 -3 + 420, 1, 104 );
changeAnime( spep_0 -3 + 440, 1, 106 );

setMoveKey( spep_0 -3 + 420, 1, 179.2, 70.2 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 159.6, 64 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 140.1, 57.8 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 120.6, 51.6 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 101, 45.4 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 81.5, 39.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 62, 33 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 42.4, 26.9 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 22.9, 20.7 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 3.4, 14.5 , 0 );
setMoveKey( spep_0 -3 + 439, 1, 3.4, 14.5 , 0 );--
setMoveKey( spep_0 -3 + 440, 1, 24.2, 58.9 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 24.6, 68.1 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 24.2, 59 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 24.6, 68.1 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 24.6, 68.1 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 25.8, 60.6 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 24.6, 68.1 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 24.6, 68.1 , 0 );

setScaleKey( spep_0 -3 + 420, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 422, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 424, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 426, 1, 1.57, 1.57 );
setScaleKey( spep_0 -3 + 428, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 430, 1, 1.88, 1.88 );
setScaleKey( spep_0 -3 + 432, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 434, 1, 2.19, 2.19 );
setScaleKey( spep_0 -3 + 436, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 438, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 439, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -3 + 440, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 474, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 476, 1, 2.5, 2.5 );

setRotateKey( spep_0 -3 + 420, 1, 0 );
setRotateKey( spep_0 -3 + 439, 1, 0 );--
setRotateKey( spep_0 -3 + 440, 1, -54 );
setRotateKey( spep_0 -3 + 474, 1, -54 );
setRotateKey( spep_0 -3 + 476, 1, -54 );

--SE
--ナッパアップ
SE001 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 4, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 29, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 166 );

--タネ落とす
SE004 = playSeVer2( spep_0 + 54, 38, "",spep_0 + 80, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 62 );
SE005 = playSeVer2( spep_0 + 64, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 112 );

--土ならす
SE006 = playSeVer2( spep_0 + 82, 1331, "",spep_0 + 118, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 157 );
SE007 = playSeVer2( spep_0 + 88, 1111, "",spep_0 + 104, 0, 6, -1);

--液垂らす
SE008 = playSeVer2( spep_0 + 142, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE008, 146 );
setPitch( spep_0 + 142, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 186, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE009, 141 );
setPitch( spep_0 + 190, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );

--土に染み渡る
SE010 = playSeVer2( spep_0 + 228, 1292, "",spep_0 + 286, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 2328, SE010, 143 );
setPitch( spep_0 + 228, SE010, 400 );
setTimeStretch( SE010, 1.27, 30, 4 );
SE011 = playSeVer2( spep_0 + 228, 1294, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE011, 127 );

--栽培マン生まれる
SE012 = playSeVer2( spep_0 + 292, 1168, "",spep_0 + 394, 6, 52, -1);
setStartTimeMs( SE012,  717 );
SE013 = playSeVer2( spep_0 + 290, 1011, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_0 + 338, 1072, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 400; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
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

--SE
--栽培マン飛びつく
SE015 = playSeVer2( spep_0 + 392, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 396, 1207, "",spep_0 + 440, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 396, SE016, 71 );
SE017 = playSeVer2( spep_0 + 396, 1117, "",spep_0 + 440, 0, 10, -1);
SE018 = playSeVer2( spep_0 + 428, 1007, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 428, 1153, "",spep_0 + 464, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 428, SE019, 78 );
SE020 = playSeVer2( spep_0 + 432, 1012, "", 0, 0, 0, -1);

--爆発予兆
SE021 = playSeVer2( spep_0 + 448, 1157, "",spep_0 + 486, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 448, SE021, 138 );

--爆発
SE022 = playSeVer2( spep_0 + 478, 1023, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 478, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 582, 0, 0, 0, 0, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 480 );
endPhase( spep_0 + 570 );
else end