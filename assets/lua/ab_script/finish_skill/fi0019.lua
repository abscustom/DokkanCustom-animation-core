--4030800:LR_ピッコロ大魔王(老)_フィニッシュ(超成功)：若き日の力
--battle_301324
--fi0019

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
--エフェクト(味方)
SP_01 = 3265;  -- フィニッシュ(超成功) ef_001

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
          skipFrame(0, spep_0 + 14 - 13 );        -- スキップかつ回避された時のスキップ先フレーム指定

        else
          skipFrame(0, spep_0 + 814 -1 );      -- スキップ先フレーム指定

          --若返っていく
          SE014 = playSeVer2( spep_0 + 814, 1391, "",spep_0 + 1074, 0, 48, -1);
          SE015 = playSeVer2( spep_0 + 814, 1413, "", 0, 0, 0, -1);

          --腕力む1
          SE016 = playSeVer2( spep_0 + 814, 1233, "", 0, 0, 0, -1);
    end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- フィニッシュ(超成功)
------------------------------------------------------
MAX_FRAME_0 = 1092;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --フィニッシュ(超成功)(ef_001)
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

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE020, 0);
    
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 58, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE003, 75 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 228, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE004, 63 );

--集中線
SE005 = playSeVer2( spep_0 + 228, 1237, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 240, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE006, 63 );
SE007 = playSeVer2( spep_0 + 240, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE007, 78 );

--環境音
SE008 = playSeVer2( spep_0 + 410, 1350, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE008, 71 );

--光あふれる
SE009 = playSeVer2( spep_0 + 638, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE009, 63 );
SE010 = playSeVer2( spep_0 + 638, 1157, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 638, 1127, "", 0, 0, 0, -1);

--力む
SE012 = playSeVer2( spep_0 + 702, 1330, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 744, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE013, 76 );
setPitch( spep_0 + 744, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );

--若返っていく
SE014 = playSeVer2( spep_0 + 800, 1391, "",spep_0 + 1074, 0, 48, -1);
SE015 = playSeVer2( spep_0 + 800, 1413, "", 0, 0, 0, -1);

--腕力む1
SE016 = playSeVer2( spep_0 + 800, 1233, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 812, 1190, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 812, 1170, "", 0, 0, 0, -1);

--腕力む2
SE019 = playSeVer2( spep_0 + 890, 1233, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 902, 1190, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 902, 1170, "", 0, 0, 0, -1);

--変身後
SE022 = playSeVer2( spep_0 + 936, 1226, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 936, 1271, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 950, 1368, "",spep_0 + 1072, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 950, SE024, 67 );
--ラスト決め
SE025 = playSeVer2( spep_0 + 1028, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「さあ いえ」
playVoice( spep_0 + 0, 952 );
setVoiceVolume( spep_0 + 0, 952, 116 );
--「願いはなんだ」
playVoice( spep_0 + 98, 953 );
setVoiceVolume( spep_0 + 96, 953, 116 );
--「このわたしを若がえらせてくれ！！」
playVoice( spep_0 + 228, 954 );
setVoiceVolume( spep_0 + 226, 954, 116 );
--「もっともパワーにあふれていたあの頃にな！！！」
playVoice( spep_0 + 422, 955 );
setVoiceVolume( spep_0 + 420, 955, 116 );

-- ** ダメージ表示 ** --
--dealDamage( spep_0 + MAX_FRAME_0 - 100 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1092f

end