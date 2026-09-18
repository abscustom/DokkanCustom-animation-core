--4025740:孫悟空&ベジータ_元気玉(チャージ不足)
--sp_effect_a2_00203

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
SP_01 = 161422;  --投げるまで  ef_001
SP_02 = 161423;  --着弾　手前 ef_002
SP_03 = 161424;  --着弾　奥 ef_003
SP_04 = 161425;  --ダメージ表示 ef_004
SP_05 = 161583;  --KOのループ ef_005

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
        spep_1 = spep_0 + 642;
        spep_2 = spep_1 + 298;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 200 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 54);      -- スキップ先フレーム指定

          -- ** 音 ** --
          --気が膨れ上がる
            SE031 = playSeVer2( spep_2 + 54, 1128, "", 0, 10, 0, -1);
            setSeVolumeByWorkId( spep_2 + 54, SE031, 62 );
            setStartTimeMs( SE031,  600 );
            setPitch( spep_2 + 54, SE031, -1200 );
            setTimeStretch( SE031, 0.2, 30, 4 );
            SE032 = playSeVer2( spep_2 + 54, 1148, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_2 + 54, SE032, 40 );


       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--投げるまで(642f)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --投げるまで  ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 642, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 642, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 642, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 642-1, first, 255 );
setEffAlphaKey( spep_0 + 642-2, first, 255 );
setEffAlphaKey( spep_0 + 642, first, 0 );

-- ** 音 ** --
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 570, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--元気玉音
SE002 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 720, 0, 140, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--力む
SE004 = playSeVer2( spep_0 + 53, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 53, SE004, 68 );

--気づく
SE005 = playSeVer2( spep_0 + 114, 1126, "",spep_0 + 226, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 63 );
setPitch( spep_0 + 114, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 114, 1289, "",spep_0 + 226, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 79 );

--元気玉大きくなる
SE007 = playSeVer2( spep_0 + 184, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 184, 1312, "",spep_0 + 246, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 184, SE008, 79 );         

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 644, 0, 0, 0, 0, 255);  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
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
-- ** 音 ** --
-- ** SE ** --
--元気玉大きくなる
SE009 = playSeVer2( spep_0 + 191, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 191, SE009, 150 );
setTimeStretch( SE009, 0.55, 30, 4 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 260, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE010, 56 );

--元気玉飛んでいく
SE011 = playSeVer2( spep_0 + 533, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 533, SE011, 68 ); 
SE012 = playSeVer2( spep_0 + 566, 1193, "",spep_0 + 680, 22, 22, -1);
setSeVolumeByWorkId( spep_0 + 566, SE012, 56 ); setStartTimeMs( SE012,  550 );
SE013 = playSeVer2( spep_0 + 534, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE013, 60 ); 
SE014 = playSeVer2( spep_0 + 534, 1278, "",spep_0 + 680, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 534, SE014, 60 ); 
SE015 = playSeVer2( spep_0 + 541, 1259, "",spep_0 + 680, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 541, SE015, 73 ); 

--元気玉飛んでくる２
SE016 = playSeVer2( spep_0 + 581, 1044, "",spep_0 + 683, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 581, SE016, 72 );
SE017 = playSeVer2( spep_0 + 591, 1121, "",spep_0 + 683, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 591, SE017, 56 );

-- ** ボイス ** --
--「はなれてろベジータ！！！　いくぞーっ！！！！」
playVoice( spep_0 + 257, 566 );
setVoiceVolume( spep_0 + 257, 566, 112 );

--「くたばっちまえーっ！！！！」
playVoice( spep_0 + 528, 567 );
setVoiceVolume( spep_0 + 528, 567, 120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 642;

------------------------------------------------------
--着弾(298f)
------------------------------------------------------
-- ** エフェクト等 ** --
hidan_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --着弾　手前  ef_002
setEffMoveKey( spep_1 + 0, hidan_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 298, hidan_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 298, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hidan_f, 0 );
setEffRotateKey( spep_1 + 298, hidan_f, 0 );
setEffAlphaKey( spep_1 + 0, hidan_f, 255 );
setEffAlphaKey( spep_1 + 298-2, hidan_f, 255 );
setEffAlphaKey( spep_1 + 298-1, hidan_f, 255 );
setEffAlphaKey( spep_1 + 298, hidan_f, 0 );

hidan_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --着弾　奥  ef_003
setEffMoveKey( spep_1 + 0, hidan_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 298, hidan_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 298, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hidan_b, 0 );
setEffRotateKey( spep_1 + 298, hidan_b, 0 );
setEffAlphaKey( spep_1 + 0, hidan_b, 255 );
setEffAlphaKey( spep_1 + 298-2, hidan_b, 255 );
setEffAlphaKey( spep_1 + 298-1, hidan_b, 255 );
setEffAlphaKey( spep_1 + 298, hidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 10, 1, 0 );
changeAnime( spep_1 + 0, 1, 4 );

setMoveKey( spep_1 + 0, 1, 10.1, -116.1 , 0 );
setMoveKey( spep_1 + 10, 1, 10.1, -116.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 10, 1, 0.37, 0.37 );

setRotateKey( spep_1 + 0, 1, -11.3 );
setRotateKey( spep_1 + 10, 1, -11.3 );

setBlendColor( spep_1 + 0, 1, 3, 0.0, 0.6, 1.0, 0.4);
setBlendColor( spep_1 + 10, 1, 3, 0.0, 0.6, 1.0, 0.4);
setBlendColor( spep_1 + 12, 1, 3, 0.0, 0.0, 0.0, 0);

-- ** 音 ** --
-- ** SE ** --
--地面激突
SE018 = playSeVer2( spep_1 + 14, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE018, 81 );
SE019 = playSeVer2( spep_1 + 14, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE019, 72 );
SE020 = playSeVer2( spep_1 + 14, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE020, 63 );
SE021 = playSeVer2( spep_1 + 18, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE021, 89 );

--風圧音
SE022 = playSeVer2( spep_1 + 25, 1258, "", 0, 39, 0, -1);
SE023 = playSeVer2( spep_1 + 58, 1259, "", 0, 0, 0, -1);
setPitch( spep_1 + 58, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );
SE024 = playSeVer2( spep_1 + 70, 1044, "",spep_1 + 294, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 70, SE024, 63 );
SE025 = playSeVer2( spep_1 + 70, 1226, "",spep_1 + 482, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 70, SE025, 56 );

--腕を振り上げる
SE026 = playSeVer2( spep_1 + 176, 1004, "", 0, 0, 0, -1);

--腕振り下ろす
SE027 = playSeVer2( spep_1 + 218, 1116, "",spep_1 + 266, 0, 24, -1);
SE028 = playSeVer2( spep_1 + 218, 1003, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_1 + 254, 1069, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 272, 1159, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 300, 0, 0, 0, 0, 255);  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 298;

------------------------------------------------------
--ダメージ表示(318f)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0, 2000 );  --ダメージ表示  ef_004
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 160, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 160, finish, 255 );

KO = entryEffectLife( spep_2 + 146, SP_05, 14, 0x100, -1, 0, 0, 0, 1000 );  --KO演出  ef_005
setEffMoveKey( spep_2 + 146, KO, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, KO, 0, 0, 0 );
setEffScaleKey( spep_2 + 146, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 146, KO, 0 );
setEffRotateKey( spep_2 + 160, KO, 0 );
setEffAlphaKey( spep_2 + 146, KO, 255 );
setEffAlphaKey( spep_2 + 160, KO, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 160, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
-- ** SE ** --
--気が膨れ上がる
SE031 = playSeVer2( spep_2 + 10, 1128, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE031, 62 );
setStartTimeMs( SE031,  600 );
setPitch( spep_2 + 10, SE031, -1200 );
setTimeStretch( SE031, 0.2, 30, 4 );
SE032 = playSeVer2( spep_2 + 10, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE032, 40 );

--光溢れる
SE033 = playSeVer2( spep_2 + 92, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE033, 126 );
SE034 = playSeVer2( spep_2 + 92, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE034, 141 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 54 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 148 );
end