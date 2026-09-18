--4026910：LR_超サイヤ人4孫悟空&スーパーウーブ_フィニッシュ(チャージ失敗)：サイヤパワー増加
--battle_301261
--fi0008

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


--エフェクト(味方)
SP_01 = 3198;  --ef_002 (チャージ失敗)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

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

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 160 -12 -1);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 268 -1);      -- スキップ先フレーム指定
           
           --「さあ…続きを楽しもうじゃねえか！」
           playVoice( spep_0 + 268, 655 );
           setVoiceVolume( spep_0 + 268, 655, 200 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- チャージ失敗(464f)
------------------------------------------------------
MAX_FRAME_0 = 464;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0, 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0 );
setEffAlphaKey( spep_0 + 0, base_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);

--オーラ弾ける
SE006 = playSeVer2( spep_0 + 44, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 65 );
SE007 = playSeVer2( spep_0 + 44, 1026, "",spep_0 + 92, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 44, SE007, 89 );
SE008 = playSeVer2( spep_0 + 44, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE008, 68 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 160 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  
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
--手握る
SE009 = playSeVer2( spep_0 + 184, 1233, "",spep_0 + 202, 4, 6, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 54 );
setStartTimeMs( SE009,  100 );
setPitch( spep_0 + 184, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 186, 1111, "",spep_0 + 202, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 186, SE010, 135 );
SE011 = playSeVer2( spep_0 + 226, 1233, "",spep_0 + 244, 4, 6, -1);
setSeVolumeByWorkId( spep_0 + 226, SE011, 68 );
setStartTimeMs( SE011,  100 );
setPitch( spep_0 + 226, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 230, 1111, "",spep_0 + 246, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 230, SE012, 150 );
SE013 = playSeVer2( spep_0 + 230, 1330, "",spep_0 + 248, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 230, SE013, 68 );

--セリフカットイン
SE014 = playSeVer2( spep_0 + 270, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE014, 56 );

--気を高める
SE015 = playSeVer2( spep_0 + 288, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE015, 32 );
SE016 = playSeVer2( spep_0 + 292, 1035, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 292, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 50 );

--オーラ
SE018 = playSeVer2( spep_0 + 322, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE018, 56 );
SE019 = playSeVer2( spep_0 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE019, 56 );

SE021 = playSeVer2( spep_0 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE021, 56 );

SE023 = playSeVer2( spep_0 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE023, 56 );
SE024 = playSeVer2( spep_0 + 418, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE024, 56 );
SE025 = playSeVer2( spep_0 + 442, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE025, 56 );

--指をふる
SE020 = playSeVer2( spep_0 + 344, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE020, 73 );

SE022 = playSeVer2( spep_0 + 370, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE022, 78 );

-- ** ボイス ** --
--「さあ…続きを楽しもうじゃねえか！」
playVoice( spep_0 + 264, 655 );
setVoiceVolume( spep_0 + 264 -19, 655, 160 );


-- ** ダメージ表示 ** --
-- hideKoScreen();
--dealDamage( spep_3 + 70 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_0 + MAX_FRAME_0 ); --464
end