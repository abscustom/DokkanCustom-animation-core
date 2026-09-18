--4026400：LR_魔人ベジータ_フィニッシュ(チャージ失敗)：不完全な支配
--sp_effect_a1_00392
--fi0004

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 161510;	--バビディ祈り	ef_001		味方側
SP_02 = 161511;	--ベジータ移動、タメ	ef_002		味方側
SP_03 = 161512;	--ベジータ攻撃	ef_003		味方側
SP_04 = 161513;	--ヒット、爆発	ef_004		味方側　前面
SP_04b = 161514;  --ヒット、爆発	ef_004_back		味方側　裏面

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
        spep_1 = spep_0 + 276;
        spep_2 = spep_1 + 634;
        spep_3 = spep_2 + 132;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_2 + 100 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_3 + 58);      -- スキップ先フレーム指定
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
--バビディ祈り
------------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 276, base_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_0 + 276, base_0, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0, 0 );
setEffRotateKey( spep_0 + 276, base_0, 0 );
setEffAlphaKey( spep_0 + 0, base_0, 255 );
setEffAlphaKey( spep_0 + 276, base_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 276 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 88 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 132, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
-- 「ベジータ！！」
playVoice( spep_0 + 4, 600 );
setVoiceVolume( spep_0 + 8, 600, 100 );

-- 「そいつらからエネルギーをうばうんだよ！」
playVoice( spep_0 + 72, 601 );
setVoiceVolume( spep_0 + 76, 601, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 276;

------------------------------------------------------
--ベジータ移動、タメ
------------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 634, base_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 634, base_1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, base_1, 0 );
setEffRotateKey( spep_1 + 634, base_1, 0 );
setEffAlphaKey( spep_1 + 0, base_1, 255 );
setEffAlphaKey( spep_1 + 634, base_1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 634 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
-- ** SE ** --
--オーラ
SE005 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 50 );

--イナヅマ
SE006 = playSeVer2( spep_1 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 45 );

--オーラ
SE007 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE007, 50 );
SE008 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 44, SE008, 50 );

--歩く
SE009 = playSeVer2( spep_1 + 50, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE009, 200 );

--オーラ
SE010 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE010, 50 );
SE011 = playSeVer2( spep_1 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE011, 50 );

--歩く
SE012 = playSeVer2( spep_1 + 114, 1106, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_1 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 116, SE013, 50 );
SE014 = playSeVer2( spep_1 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE014, 50 );

--地響き
SE015 = playSeVer2( spep_1 + 148, 1044, "",spep_1 + 584, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 148, SE015, 50 );

--気ダメ
SE016 = playSeVer2( spep_1 + 148, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 148, SE016, 56 );

--イナヅマ
SE017 = playSeVer2( spep_1 + 154, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 154, SE017, 40 );

--オーラ
SE018 = playSeVer2( spep_1 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE018, 50 );
SE019 = playSeVer2( spep_1 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 188, SE019, 50 );
SE020 = playSeVer2( spep_1 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 212, SE020, 50 );
SE021 = playSeVer2( spep_1 + 236, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 236, SE021, 50 );
SE022 = playSeVer2( spep_1 + 260, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 260, SE022, 50 );
SE023 = playSeVer2( spep_1 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 284, SE023, 50 );

--イナヅマ
SE024 = playSeVer2( spep_1 + 300, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 300, SE024, 40 );

--オーラ
SE025 = playSeVer2( spep_1 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 308, SE025, 50 );
SE026 = playSeVer2( spep_1 + 332, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 332, SE026, 50 );
SE027 = playSeVer2( spep_1 + 356, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE027, 50 );
SE028 = playSeVer2( spep_1 + 380, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 380, SE028, 50 );
SE029 = playSeVer2( spep_1 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 404, SE029, 50 );
SE030 = playSeVer2( spep_1 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 428, SE030, 50 );
SE031 = playSeVer2( spep_1 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 452, SE031, 50 );
SE032 = playSeVer2( spep_1 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 476, SE032, 50 );
SE033 = playSeVer2( spep_1 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 500, SE033, 50 );
SE034 = playSeVer2( spep_1 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 524, SE034, 50 );
SE035 = playSeVer2( spep_1 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 548, SE035, 50 );

--気を爆発
SE036 = playSeVer2( spep_1 + 558, 1035, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 558, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 558, SE037, 71 );

-- ** ボイス ** --
-- 「ことわる……！！」
playVoice( spep_1 + 4, 602 );
setVoiceVolume( spep_1 + 4, 602, 126 );

-- 「カラダと心は支配されても　誇りだけは思いどおりにならんぞ！！！」
playVoice( spep_1 + 157, 603 );
setVoiceVolume( spep_1 + 157, 603, 121 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 634;

------------------------------------------------------
--ベジータ攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 132, base_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 132, base_2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, base_2, 0 );
setEffRotateKey( spep_2 + 132, base_2, 0 );
setEffAlphaKey( spep_2 + 0, base_2, 255 );
setEffAlphaKey( spep_2 + 132 -2, base_2, 255 );
setEffAlphaKey( spep_2 + 132 -1, base_2, 255 );
setEffAlphaKey( spep_2 + 132, base_2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 132 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
-- ** SE ** --
--腕前に出す
SE038 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);

--オーラ
SE039 = playSeVer2( spep_2 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE039, 63 );

--気弾溜め
SE040 = playSeVer2( spep_2 + 16, 1296, "",spep_2 + 100, 0, 10, -1);
SE041 = playSeVer2( spep_2 + 16, 1282, "",spep_2 + 100, 0, 10, -1);
SE042 = playSeVer2( spep_2 + 16, 1356, "",spep_2 + 100, 0, 10, -1);

--オーラ
SE043 = playSeVer2( spep_2 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE043, 63 );
SE044 = playSeVer2( spep_2 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE044, 63 );
SE045 = playSeVer2( spep_2 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE045, 63 );

--気弾発射
SE046 = playSeVer2( spep_2 + 86, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 86, 1146, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_2 + 100 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE040, 0);
  stopSe( SP_dodge - 12, SE041, 0);
  stopSe( SP_dodge - 12, SE042, 0);
  stopSe( SP_dodge - 12, SE043, 0);
  stopSe( SP_dodge - 12, SE044, 0);
  stopSe( SP_dodge - 12, SE045, 0);
  stopSe( SP_dodge - 12, SE046, 0);
  stopSe( SP_dodge - 12, SE047, 0);
  
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
--オーラ
SE048 = playSeVer2( spep_2 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE048, 63 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 132;

-------------------------------------------------
-- ヒット、爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 186, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 186, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 186, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 186, base_3f, 255);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 186, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 186, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 186, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 186, base_3b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 186 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -1 + 56, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -1 + 38, 1, 108 );

setMoveKey( spep_3 + 0, 1, -12, -10.7 , 0 );
setMoveKey( spep_3 -1 + 2, 1, -1.1, 12.3 , 0 );
setMoveKey( spep_3 -1 + 3, 1, -1.1, 12.3 , 0 );
setMoveKey( spep_3 -1 + 4, 1, 10, -34.7 , 0 );
setMoveKey( spep_3 -1 + 5, 1, 10, -34.7 , 0 );
setMoveKey( spep_3 -1 + 6, 1, -26, -26.7 , 0 );
setMoveKey( spep_3 -1 + 7, 1, -26, -26.7 , 0 );
setMoveKey( spep_3 -1 + 8, 1, -30, -2.7 , 0 );
setMoveKey( spep_3 -1 + 9, 1, -30, -2.7 , 0 );
setMoveKey( spep_3 -1 + 10, 1, -20, 13.3 , 0 );
setMoveKey( spep_3 -1 + 11, 1, -20, 13.3 , 0 );
setMoveKey( spep_3 -1 + 12, 1, -6.1, -36.7 , 0 );
setMoveKey( spep_3 -1 + 13, 1, -6.1, -36.7 , 0 );
setMoveKey( spep_3 -1 + 14, 1, -28, -18.7 , 0 );
setMoveKey( spep_3 -1 + 15, 1, -28, -18.7 , 0 );
setMoveKey( spep_3 -1 + 16, 1, 2, -12.7 , 0 );
setMoveKey( spep_3 -1 + 17, 1, 2, -12.7 , 0 );
setMoveKey( spep_3 -1 + 18, 1, -28, 1.4 , 0 );
setMoveKey( spep_3 -1 + 19, 1, -28, 1.4 , 0 );
setMoveKey( spep_3 -1 + 20, 1, -1, 12.4 , 0 );
setMoveKey( spep_3 -1 + 21, 1, -1, 12.4 , 0 );
setMoveKey( spep_3 -1 + 22, 1, 10.1, -34.6 , 0 );
setMoveKey( spep_3 -1 + 23, 1, 10.1, -34.6 , 0 );
setMoveKey( spep_3 -1 + 24, 1, -25.8, -26.5 , 0 );
setMoveKey( spep_3 -1 + 25, 1, -25.8, -26.5 , 0 );
setMoveKey( spep_3 -1 + 26, 1, -29.8, -2.5 , 0 );
setMoveKey( spep_3 -1 + 27, 1, -29.8, -2.5 , 0 );
setMoveKey( spep_3 -1 + 28, 1, -19.7, 13.5 , 0 );
setMoveKey( spep_3 -1 + 29, 1, -19.7, 13.5 , 0 );
setMoveKey( spep_3 -1 + 30, 1, -5.8, -36.4 , 0 );
setMoveKey( spep_3 -1 + 31, 1, -5.8, -36.4 , 0 );
setMoveKey( spep_3 -1 + 32, 1, -27.6, -18.3 , 0 );
setMoveKey( spep_3 -1 + 33, 1, -27.6, -18.3 , 0 );
setMoveKey( spep_3 -1 + 34, 1, 2.5, -12.3 , 0 );
setMoveKey( spep_3 -1 + 35, 1, 2.5, -12.3 , 0 );
setMoveKey( spep_3 -1 + 36, 1, -27.4, 1.9 , 0 );
setMoveKey( spep_3 -1 + 37, 1, -27.4, 1.9 , 0 );
setMoveKey( spep_3 -1 + 38, 1, -0.4, 12.9 , 0 );
setMoveKey( spep_3 -1 + 39, 1, -0.4, 12.9 , 0 );
setMoveKey( spep_3 -1 + 40, 1, 55, -18.8 , 0 );
setMoveKey( spep_3 -1 + 41, 1, 55, -18.8 , 0 );
setMoveKey( spep_3 -1 + 42, 1, 62.2, 4.2 , 0 );
setMoveKey( spep_3 -1 + 43, 1, 62.2, 4.2 , 0 );
setMoveKey( spep_3 -1 + 44, 1, 100.1, 42.6 , 0 );
setMoveKey( spep_3 -1 + 45, 1, 100.1, 42.6 , 0 );
setMoveKey( spep_3 -1 + 46, 1, 150.5, 72.6 , 0 );
setMoveKey( spep_3 -1 + 47, 1, 150.5, 72.6 , 0 );
setMoveKey( spep_3 -1 + 48, 1, 203.2, 36 , 0 );
setMoveKey( spep_3 -1 + 49, 1, 203.2, 36 , 0 );
setMoveKey( spep_3 -1 + 50, 1, 218.1, 66.8 , 0 );
setMoveKey( spep_3 -1 + 51, 1, 218.1, 66.8 , 0 );
setMoveKey( spep_3 -1 + 52, 1, 283, 84.8 , 0 );
setMoveKey( spep_3 -1 + 53, 1, 283, 84.8 , 0 );
setMoveKey( spep_3 -1 + 54, 1, 285.5, 110.2 , 0 );
setMoveKey( spep_3 -1 + 55, 1, 285.5, 110.2 , 0 );
setMoveKey( spep_3 -1 + 56, 1, 331.5, 108.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_3 -1 + 2, 1, 2.19, 2.19 );
setScaleKey( spep_3 -1 + 3, 1, 2.19, 2.19 );
setScaleKey( spep_3 -1 + 4, 1, 2.18, 2.18 );
setScaleKey( spep_3 -1 + 15, 1, 2.18, 2.18 );
setScaleKey( spep_3 -1 + 16, 1, 2.17, 2.17 );
setScaleKey( spep_3 -1 + 19, 1, 2.17, 2.17 );
setScaleKey( spep_3 -1 + 20, 1, 2.16, 2.16 );
setScaleKey( spep_3 -1 + 23, 1, 2.16, 2.16 );
setScaleKey( spep_3 -1 + 24, 1, 2.15, 2.15 );
setScaleKey( spep_3 -1 + 25, 1, 2.15, 2.15 );
setScaleKey( spep_3 -1 + 26, 1, 2.14, 2.14 );
setScaleKey( spep_3 -1 + 27, 1, 2.14, 2.14 );
setScaleKey( spep_3 -1 + 28, 1, 2.13, 2.13 );
setScaleKey( spep_3 -1 + 29, 1, 2.13, 2.13 );
setScaleKey( spep_3 -1 + 30, 1, 2.12, 2.12 );
setScaleKey( spep_3 -1 + 31, 1, 2.12, 2.12 );
setScaleKey( spep_3 -1 + 32, 1, 2.1, 2.1 );
setScaleKey( spep_3 -1 + 33, 1, 2.1, 2.1 );
setScaleKey( spep_3 -1 + 34, 1, 2.08, 2.08 );
setScaleKey( spep_3 -1 + 35, 1, 2.08, 2.08 );
setScaleKey( spep_3 -1 + 36, 1, 2.06, 2.06 );
setScaleKey( spep_3 -1 + 37, 1, 2.06, 2.06 );
setScaleKey( spep_3 -1 + 38, 1, 2.04, 2.04 );
setScaleKey( spep_3 -1 + 39, 1, 2.04, 2.04 );
setScaleKey( spep_3 -1 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_3 -1 + 41, 1, 1.85, 1.85 );
setScaleKey( spep_3 -1 + 42, 1, 1.66, 1.66 );
setScaleKey( spep_3 -1 + 43, 1, 1.66, 1.66 );
setScaleKey( spep_3 -1 + 44, 1, 1.47, 1.47 );
setScaleKey( spep_3 -1 + 45, 1, 1.47, 1.47 );
setScaleKey( spep_3 -1 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_3 -1 + 47, 1, 1.28, 1.28 );
setScaleKey( spep_3 -1 + 48, 1, 1.1, 1.1 );
setScaleKey( spep_3 -1 + 49, 1, 1.1, 1.1 );
setScaleKey( spep_3 -1 + 50, 1, 0.92, 0.92 );
setScaleKey( spep_3 -1 + 51, 1, 0.92, 0.92 );
setScaleKey( spep_3 -1 + 52, 1, 0.75, 0.75 );
setScaleKey( spep_3 -1 + 53, 1, 0.75, 0.75 );
setScaleKey( spep_3 -1 + 54, 1, 0.58, 0.58 );
setScaleKey( spep_3 -1 + 55, 1, 0.58, 0.58 );
setScaleKey( spep_3 -1 + 56, 1, 0.42, 0.42 );

setRotateKey( spep_3 -1 + 0, 1, 0 );
setRotateKey( spep_3 -1 + 56, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE049 = playSeVer2( spep_3 + 0, 1021, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_3 + 22, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE050, 158 );

--爆発
SE051 = playSeVer2( spep_3 + 80, 1145, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_3 + 80, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_3 + 88, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_3 + 70 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_3 + 176 );
end