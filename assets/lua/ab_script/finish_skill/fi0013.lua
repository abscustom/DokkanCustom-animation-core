--1029090:LR_ジレン_フィニッシュ(成功)：呼び覚まされるフルパワー
--sp_effect_a9_00132
--fi0013

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163022; -- ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
     
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
 
       if(_IS_DODGE_ == 1) then
            skipFrame(0, spep_0 + 400 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
            skipFrame(0, spep_0 + 910 -1 );      -- スキップ先フレーム指定
            --オーラ
            SE021 = playSeVer2( spep_0 + 910, 1176, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 910, SE021, 68 );
            --画面遷移
            SE024 = playSeVer2( spep_0 + 910, 1232, "", 0, 0, 0, -1);
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- フィニッシュ演出
------------------------------------------------------

MAX_FRAME_0 = 1130;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --敵よりも前面 (ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0 );
setEffAlphaKey( spep_0 + 0, base_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 340, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );

--握り拳つくる
SE003 = playSeVer2( spep_0 + 30, 1233, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 216, 8, "", 0, 0, 0, -1);

--炎溢れる
SE005 = playSeVer2( spep_0 + 294, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE005, 79 );
SE008 = playSeVer2( spep_0 + 296, 1024, "", 0, 0, 0, -1);

--炎音
SE006 = playSeVer2( spep_0 + 296, 1267, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 296, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE007, 120 );

--炎溢れる
SE009 = playSeVer2( spep_0 + 330, 1404, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE009, 166 );
SE010 = playSeVer2( spep_0 + 360, 1177, "", 0, 16, 0, -1);
setStartTimeMs( SE010,  500 );

-- ** ボイス ** --
--「強さこそ正義…!強さこそ絶対だ!」
playVoice( spep_0 + 0, 804 );
setVoiceVolume( spep_0 + 0, 804, 110 );
---「うおおおおおおおお!!!!」
playVoice( spep_0 + 234, 805 );
setVoiceVolume( spep_0 + 234, 805, 110 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 400 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    setVoiceVolume( SP_dodge - 12, 805, 0 );

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
--目線カットイン
SE011 = playSeVer2( spep_0 + 414, 1018, "", 0, 0, 0, -1);

--地響き
SE012 = playSeVer2( spep_0 + 436, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE012, 56 );

--服破れる
SE013 = playSeVer2( spep_0 + 464, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE013, 80 );
SE014 = playSeVer2( spep_0 + 464, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE014, 60 );
SE015 = playSeVer2( spep_0 + 472, 1190, "",spep_0 + 560, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 472, SE015, 80 );

--カメラ引き炎
SE016 = playSeVer2( spep_0 + 494, 1264, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE016, 81 );
setPitch( spep_0 + 494, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 512, 1044, "", 704, 40, 30, -1);
setSeVolumeByWorkId( spep_0 + 512, SE017, 51 );
SE018 = playSeVer2( spep_0 + 514, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE018, 76 );
setPitch( spep_0 + 514, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );

--ズームアウト
SE019 = playSeVer2( spep_0 + 534, 1072, "", 0, 0, 0, -1);

--画面遷移
SE020 = playSeVer2( spep_0 + 656, 1188, "", 0, 20, 0, -1);
setStartTimeMs( SE020,  233 );

--オーラ
SE021 = playSeVer2( spep_0 + 676, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE021, 68 );

--画面遷移フラッシュ
SE022 = playSeVer2( spep_0 + 724, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE022,  167 );
setPitch( spep_0 + 724, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );
setSeVolumeByWorkId( spep_0 + 724, SE022, 150 );
SE023 = playSeVer2( spep_0 + 824, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE023,  167 );
setSeVolumeByWorkId( spep_0 + 724, SE023, 150 );

--画面遷移
SE024 = playSeVer2( spep_0 + 904, 1232, "", 0, 0, 0, -1);

--ラスト決め
SE025 = playSeVer2( spep_0 + 1004, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 1004, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );
SE026 = playSeVer2( spep_0 + 1004, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1004, SE026, 78 );
SE027 = playSeVer2( spep_0 + 1004, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1004, SE027, 80 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
endPhase( spep_0 + MAX_FRAME_0 ); -- 1130F

end