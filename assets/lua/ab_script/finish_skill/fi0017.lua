--4029480:LR_超サイヤ人孫悟飯(青年期)_フィニッシュ(成功)：兄弟かめはめ波
--sp_effect_a1_00452
--fi0017

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163194;  -- ef_001 腕アップ〜フィニッシュ

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
           skipFrame(0, spep_0 + 310 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 310 -13, SP_01, spep_0 + 310 -13 -2, 1);

       else
           skipFrame(0, spep_0 + 914);      -- スキップ先フレーム指定
           setupMovie(spep_0 + 914, SP_01, spep_0 + 914-2, 1);

           --かめはめ波中
           SE018 = playSeVer2( spep_0 + 914, 1211, "",spep_0 + 1128, 0, 20, -1);
           setSeVolumeByWorkId( spep_0 + 914, SE018, 275 );
           SE051 = playSeVer2( spep_0 + 914, 1161, "",spep_0 + 1134, 0, 26, -1);
       
       end
    else
        setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 腕アップ〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1260;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --腕アップ〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 400 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 322 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 362 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 322 + OFFSET_X, 1, -0.9, 136, 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -0.9, 136, 0 );

setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 71 );
SE003 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 71 );
SE004 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 71 );
SE006 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 71 );
SE007 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 71 );

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 122, 1210, "",spep_0 + 290, 40, 34, -1);
setStartTimeMs( SE005,  733 );
SE008 = playSeVer2( spep_0 + 114, 1200, "",spep_0 + 228, 0, 54, -1);
SE009 = playSeVer2( spep_0 + 114, 1209, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE010, 71 );
SE011 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE011, 71 );
SE012 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE012, 71 );
SE013 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE013, 71 );
SE014 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE014, 71 );

--かめはめ波発射
SE015 = playSeVer2( spep_0 + 242, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE015, 80 );
SE016 = playSeVer2( spep_0 + 242, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE016, 80 );
SE017 = playSeVer2( spep_0 + 242, 1213, "",spep_0 + 406, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 242, SE017, 72 );

-- ** ボイス ** --
--「かめはめ」（悟飯）
playVoice( spep_0 + 0, 835 );
setVoiceVolume( spep_0 + 0, 835, 110 );

--「波ーーー!!!」（悟飯）
SE_7_836 = playVoice( spep_0 + 244, 836 );
setVoiceVolume( spep_0 + 240, SE_7_836, 120 );

--「兄ちゃん!!」
playVoice( spep_0 + 538, 837 );
setVoiceVolume( spep_0 + 538, 837, 110 );

--「波ーーー!!!」（悟天）
playVoice( spep_0 + 724, 851 );
setVoiceVolume( spep_0 + 724, 851, 110 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 310; --エンドフェイズのフレーム数を置き換える

  pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
  pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
  stopMovie( SP_dodge + 9 );   -- 停止

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE015, 0);
  stopSe( SP_dodge - 12, SE016, 0);
  stopSe( SP_dodge - 12, SE017, 0);
  setVoiceVolume( SP_dodge - 12, SE_7_836, 0 );

  pauseAll( SP_dodge, 67);
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--かめはめ波中
SE018 = playSeVer2( spep_0 + 296, 1211, "",spep_0 + 1128, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 296, SE018, 275 );
SE022 = playSeVer2( spep_0 + 372, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE022, 54 );
SE034 = playSeVer2( spep_0 + 586, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE034, 54 );
SE046 = playSeVer2( spep_0 + 790, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE046, 54 );
SE051 = playSeVer2( spep_0 + 998, 1161, "",spep_0 + 1134, 0, 26, -1);

--かめはめ波飛んでいく
SE019 = playSeVer2( spep_0 + 318, 1022, "",spep_0 + 420, 0, 34, -1);
SE020 = playSeVer2( spep_0 + 318, 1202, "",spep_0 + 404, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 318, SE020, 158 );

--敵ヒット
SE021 = playSeVer2( spep_0 + 372, 1068, "", 0, 0, 0, -1);

--力む
SE023 = playSeVer2( spep_0 + 404, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE023, 133 );

--悟天走ってくる
SE024 = playSeVer2( spep_0 + 478, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE024, 260 );
SE026 = playSeVer2( spep_0 + 492, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE026, 257 );
SE028 = playSeVer2( spep_0 + 506, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE028, 288 );
SE029 = playSeVer2( spep_0 + 516, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE029, 275 );

--オーラ
SE025 = playSeVer2( spep_0 + 478, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE025, 50 );
SE027 = playSeVer2( spep_0 + 502, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE027, 50 );
SE030 = playSeVer2( spep_0 + 526, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE030, 50 );
SE032 = playSeVer2( spep_0 + 550, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE032, 50 );
SE033 = playSeVer2( spep_0 + 574, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE033, 50 );
SE035 = playSeVer2( spep_0 + 598, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE035, 50 );

--セリフカットイン
SE031 = playSeVer2( spep_0 + 540, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE031, 63 );

--悟飯気ダメ
SE036 = playSeVer2( spep_0 + 622, 1035, "", 0, 0, 0, -1);

--オーラ
SE037 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 694, 1036, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 718, 1036, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);

--悟天かめはめ波発射
SE043 = playSeVer2( spep_0 + 744, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE043, 80 );
SE044 = playSeVer2( spep_0 + 744, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE044, 80 );
SE045 = playSeVer2( spep_0 + 744, 1223, "", 0, 0, 0, -1);
setPitch( spep_0 + 744, SE045, -200 );
setTimeStretch( SE045, 0.87, 30, 4 );

--敵ヒット
SE047 = playSeVer2( spep_0 + 868, 1159, "", 0, 0, 0, -1);

--悟飯気合い入れ
SE048 = playSeVer2( spep_0 + 946, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE048, 45 );
SE049 = playSeVer2( spep_0 + 946, 1068, "", 0, 0, 0, -1);

--悟天気合い入れ
SE050 = playSeVer2( spep_0 + 998, 1258, "", 0, 0, 0, -1);

--敵爆発
SE052 = playSeVer2( spep_0 + 1094, 1179, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 1094, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE053, 68 );
SE054 = playSeVer2( spep_0 + 1094, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE054, 79 );

--ラスト爆発
SE055 = playSeVer2( spep_0 + 1138, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1138, SE055, 116 );
SE056 = playSeVer2( spep_0 + 1138, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1138, SE056, 77 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 1138 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1260f

end