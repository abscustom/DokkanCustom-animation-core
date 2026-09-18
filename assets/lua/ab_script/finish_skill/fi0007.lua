--4026910：LR_超サイヤ人4孫悟空&スーパーウーブ_フィニッシュ(成功)_変身：超フルパワー進化
--battle_301261
--fi0007

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


--エフェクト(味方)
SP_01 = 3197;  --ef_001 (成功)_変身

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
           skipFrame(0, spep_0 + 340 -12 -1 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 718 -1 );      -- スキップ先フレーム指定

           --空気音
           SE035 = playSeVer2( spep_0 + 718, 1175, "",spep_0 + 952, 0, 94, -1);
           setSeVolumeByWorkId( spep_0 + 718, SE035, 32 );

           --「超最終決戦といこうじゃねえか！」
           playVoice( spep_0 + 718, 654 );
           setVoiceVolume( spep_0 + 718, 651, 158 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- (成功)_変身(956f)
------------------------------------------------------
MAX_FRAME_0 = 956;

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

-- ** 敵キャラクター ** --
OFFSET_X = -1;

setDisp( spep_0 + 602 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 718 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 602 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 602 + OFFSET_X, 1, 110.1, 401.6 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 111, 401.6 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 111.9, 401.6 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 112.9, 401.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 113.8, 401.6 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 114.7, 401.6 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 115.7, 401.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 116.6, 401.6 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 117.5, 401.6 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 118.5, 401.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 119.4, 401.6 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 120.3, 401.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 121.3, 401.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 122.2, 401.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 123.1, 401.6 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 124.1, 401.6 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 125, 401.6 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 125.9, 401.6 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 126.9, 401.6 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 127.8, 401.6 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 128.7, 401.6 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 129.7, 401.6 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 130.6, 401.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 131.5, 401.6 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 132.5, 401.6 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 133.4, 401.6 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 134.3, 401.6 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 135.3, 401.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 136.2, 401.6 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 137.1, 401.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 138.1, 401.6 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 139, 401.6 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 139.9, 401.6 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 140.9, 401.6 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 141.8, 401.6 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 142.7, 401.6 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 143.7, 401.6 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 144.6, 401.6 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 145.5, 401.6 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 146.5, 401.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 147.4, 401.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 148.3, 401.6 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 149.3, 401.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 150.2, 401.6 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 151.1, 401.6 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 152.1, 401.6 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 153, 401.6 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 153.9, 401.6 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 154.9, 401.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 155.8, 401.6 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 156.7, 401.6 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 157.7, 401.6 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 158.6, 401.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 159.5, 401.6 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 160.5, 401.6 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 161.4, 401.6 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 162.3, 401.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 163.3, 401.6 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 164.2, 401.6 , 0 );

setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 602 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, -12.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );

--スーパーサイヤ人中効果音
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 79 );
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 79 );

SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 79 );

SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 79 );

SE012 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 79 );

SE015 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE015, 79 );

SE018 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE018, 79 );
SE019 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);

SE024 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);

--パンちゃん走ってくる
SE005 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 224 );

SE007 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE007, 178 );
SE008 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 158 );

SE010 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE010, 126 );
SE011 = playSeVer2( spep_0 + 116, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE011, 86 );

SE013 = playSeVer2( spep_0 + 128, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 71 );
SE014 = playSeVer2( spep_0 + 140, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE014, 65 );

SE016 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE016, 50 );

--パンちゃん気を高める
SE017 = playSeVer2( spep_0 + 160, 1035, "", 0, 0, 0, -1);

--全員気を高める
SE021 = playSeVer2( spep_0 + 224, 1258, "",spep_0 + 374, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 224, SE021, 86 );
SE022 = playSeVer2( spep_0 + 230, 1024, "",spep_0 + 352, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 230, SE022, 78 );
SE023 = playSeVer2( spep_0 + 230, 1026, "", 0, 0, 0, -1);

--気が弾ける
SE025 = playSeVer2( spep_0 + 254, 1264, "",spep_0 + 500, 0, 220, -1);
setSeVolumeByWorkId( spep_0 + 254, SE025, 59 );
SE026 = playSeVer2( spep_0 + 254, 1126, "",spep_0 + 474, 0, 194, -1);
setSeVolumeByWorkId( spep_0 + 254, SE026, 68 );
setPitch( spep_0 + 254, SE026, -500 );
setTimeStretch( SE026, 0.67, 30, 4 );

--環境音
SE027 = playSeVer2( spep_0 + 310, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE027, 25 );

--オーラ
SE028 = playSeVer2( spep_0 + 310, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE028, 40 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 340 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE020, 0);
  stopSe( SP_dodge - 12, SE021, 0);
  stopSe( SP_dodge - 12, SE022, 0);
  stopSe( SP_dodge - 12, SE023, 0);
  stopSe( SP_dodge - 12, SE024, 0);
  stopSe( SP_dodge - 12, SE025, 0);
  stopSe( SP_dodge - 12, SE026, 0);
  stopSe( SP_dodge - 12, SE027, 0);
  stopSe( SP_dodge - 12, SE028, 0);
  
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
--画面遷移
SE029 = playSeVer2( spep_0 + 352, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE029, 85 );
SE030 = playSeVer2( spep_0 + 352, 1116, "",spep_0 + 406, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 352, SE030, 84 );

--オーラ光る
SE031 = playSeVer2( spep_0 + 420, 1271, "",spep_0 + 554, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 420, SE031, 79 );

SE033 = playSeVer2( spep_0 + 536, 1271, "",spep_0 + 672, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 536, SE033, 85 );

--拳鳴らす
SE032 = playSeVer2( spep_0 + 448, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE032, 79 );

--画面遷移
SE034 = playSeVer2( spep_0 + 604, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE034, 77 );

--空気音
SE035 = playSeVer2( spep_0 + 604, 1175, "",spep_0 + 952, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 604, SE035, 32 );

--セリフカットイン
SE036 = playSeVer2( spep_0 + 720, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE036, 56 );

--セリフ決め
SE037 = playSeVer2( spep_0 + 722, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE037, 71 );
SE038 = playSeVer2( spep_0 + 722, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE038, 63 );

-- ** ボイス ** --
--「そろそろお互い本気を出して、決戦も決戦…」
playVoice( spep_0 + 420, 653 );
setVoiceVolume( spep_0 + 420, 653, 158 );

--「超最終決戦といこうじゃねえか！」
playVoice( spep_0 + 712, 654 );
setVoiceVolume( spep_0 + 712, 654, 158 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
--dealDamage( spep_3 + 70 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_0 + MAX_FRAME_0 ); --956
end