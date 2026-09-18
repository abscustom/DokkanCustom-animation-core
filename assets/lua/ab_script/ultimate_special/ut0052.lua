-- 1026561: UR_マジュニア(巨大化)_超爆裂魔波
-- sp_effect_a7_00064

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161822;  -- 許さんぞ、、、から爆発 ef_001
SP_001b = 161823;  -- ↑敵を挟んだ背景 ef_001b
SP_002 = 161824;  -- 敵被弾_爆風 ef_002
SP_002b = 161825;  -- ↑敵を挟んだ背景 ef_002b
SP_003 = 161826;  -- KO演出 ef_003
SP_003b = 161827;  -- KO演出背景 ef_003b

-- 敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

--[[	
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
  
  --冒頭テンプレ_敵側(全体攻撃区別用)
  changeAnime( 0, 1, 100 );
  setDisp( 0, 1, 0 );
  
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

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
    	spep_0 = 0;
    	
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1070);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1350);      -- スキップ先フレーム指定

           --爆発
           SE031 = playSeVer2( spep_0 + 1350, 1128, "",spep_0 + 1506, 8, 26, -1);
		   setPitch( spep_0 + 1350, SE031, -800 );
		   setStartTimeMs( SE031,  817 );
		   SE032 = playSeVer2( spep_0 + 1350, 1159, "",spep_0 + 1506, 0, 26, -1);


       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 許さんぞ、、、から爆発 ef_001 (1470F)
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 許さんぞ、、、から爆発 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1470, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1470, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 1470, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 1470, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- ↑敵を挟んだ背景 ef_001b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1470, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1470, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 1470, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 1470, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 628 -4, 1, 1 );
setDisp( spep_0 + 716, 1, 0 );
changeAnime( spep_0 + 628 -4, 1, 118 );

setMoveKey( spep_0 + 628 -4, 1, 136.7, -32.5 , 0 );
setMoveKey( spep_0 + 630 -4, 1, 136.4, -32.5 , 0 );
setMoveKey( spep_0 + 632 -4, 1, 136.1, -32.4 , 0 );
setMoveKey( spep_0 + 634 -4, 1, 135.9, -32.3 , 0 );
setMoveKey( spep_0 + 636 -4, 1, 135.6, -32.3 , 0 );
setMoveKey( spep_0 + 638 -4, 1, 135.3, -32.2 , 0 );
setMoveKey( spep_0 + 640 -4, 1, 135, -32.1 , 0 );
setMoveKey( spep_0 + 642 -4, 1, 134.7, -32.1 , 0 );
setMoveKey( spep_0 + 644 -4, 1, 134.4, -32 , 0 );
setMoveKey( spep_0 + 646 -4, 1, 134.2, -31.9 , 0 );
setMoveKey( spep_0 + 648 -4, 1, 133.9, -31.9 , 0 );
setMoveKey( spep_0 + 650 -4, 1, 133.6, -31.8 , 0 );
setMoveKey( spep_0 + 652 -4, 1, 133.3, -31.7 , 0 );
setMoveKey( spep_0 + 654 -4, 1, 133, -31.7 , 0 );
setMoveKey( spep_0 + 656 -4, 1, 132.7, -31.6 , 0 );
setMoveKey( spep_0 + 658 -4, 1, 132.5, -31.5 , 0 );
setMoveKey( spep_0 + 660 -4, 1, 132.2, -31.5 , 0 );
setMoveKey( spep_0 + 662 -4, 1, 131.9, -31.4 , 0 );
setMoveKey( spep_0 + 664 -4, 1, 131.6, -31.3 , 0 );
setMoveKey( spep_0 + 666 -4, 1, 131.3, -31.3 , 0 );
setMoveKey( spep_0 + 668 -4, 1, 131.1, -31.2 , 0 );
setMoveKey( spep_0 + 670 -4, 1, 130.8, -31.1 , 0 );
setMoveKey( spep_0 + 672 -4, 1, 130.5, -31 , 0 );
setMoveKey( spep_0 + 674 -4, 1, 130.2, -31 , 0 );
setMoveKey( spep_0 + 676 -4, 1, 129.9, -30.9 , 0 );
setMoveKey( spep_0 + 678 -4, 1, 129.6, -30.8 , 0 );
setMoveKey( spep_0 + 680 -4, 1, 129.4, -30.8 , 0 );
setMoveKey( spep_0 + 682 -4, 1, 129.1, -30.7 , 0 );
setMoveKey( spep_0 + 684 -4, 1, 128.8, -30.6 , 0 );
setMoveKey( spep_0 + 686 -4, 1, 128.5, -30.6 , 0 );
setMoveKey( spep_0 + 688 -4, 1, 128.2, -30.5 , 0 );
setMoveKey( spep_0 + 690 -4, 1, 127.9, -30.4 , 0 );
setMoveKey( spep_0 + 692 -4, 1, 127.7, -30.4 , 0 );
setMoveKey( spep_0 + 694 -4, 1, 127.4, -30.3 , 0 );
setMoveKey( spep_0 + 696 -4, 1, 127.1, -30.2 , 0 );
setMoveKey( spep_0 + 698 -4, 1, 126.8, -30.2 , 0 );
setMoveKey( spep_0 + 700 -4, 1, 126.5, -30.1 , 0 );
setMoveKey( spep_0 + 702 -4, 1, 126.3, -30 , 0 );
setMoveKey( spep_0 + 704 -4, 1, 126, -30 , 0 );
setMoveKey( spep_0 + 706 -4, 1, 125.7, -29.9 , 0 );
setMoveKey( spep_0 + 708 -4, 1, 125.4, -29.8 , 0 );
setMoveKey( spep_0 + 710 -4, 1, 125.1, -29.8 , 0 );
setMoveKey( spep_0 + 712 -4, 1, 124.8, -29.7 , 0 );
setMoveKey( spep_0 + 714 -4, 1, 124.6, -29.6 , 0 );
setMoveKey( spep_0 + 716 -4, 1, 124.3, -29.6 , 0 );
setMoveKey( spep_0 + 716 -2, 1, 124.3, -29.6 , 0 );
setMoveKey( spep_0 + 716, 1, 124.3, -29.6 , 0 );

setScaleKey( spep_0 + 628 -4, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 702 -4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 716, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 628 -4, 1, 0 );
setRotateKey( spep_0 + 716, 1, 0 );

setAlphaKey( spep_0 + 628 -4, 1, 255 );
setAlphaKey( spep_0 + 716, 1, 255 );

-- ** 音 ** --
--威圧音
SE001 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--集中線
SE004 = playSeVer2( spep_0 + 250, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE004, 71 );
SE005 = playSeVer2( spep_0 + 250, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE005, 76 );

--エネルギー溜める
SE006 = playSeVer2( spep_0 + 470, 1400, "",spep_0 + 666, 12, 28, -1);
setSeVolumeByWorkId( spep_0 + 470, SE006, 112 );
setStartTimeMs( SE006,  1900 );
setPitch( spep_0 + 470, SE006, 600 );
setTimeStretch( SE006, 1.4, 30, 4 );
setBandpassFilter( spep_0 + 470, SE006, 700, 24000 );

--左腕つかむ
SE007 = playSeVer2( spep_0 + 366, 1233, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE007, 120 );
setStartTimeMs( SE007,  117 );
SE008 = playSeVer2( spep_0 + 368, 1352, "",spep_0 + 388, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 368, SE008, 93 );
setPitch( spep_0 + 368, SE008, 500 );
setTimeStretch( SE008, 1.33, 30, 4 );

--右腕つかむ
SE009 = playSeVer2( spep_0 + 430, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE009, 120 );
setStartTimeMs( SE009,  133 );
SE010 = playSeVer2( spep_0 + 432, 1352, "",spep_0 + 450, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 432, SE010, 89 );
setPitch( spep_0 + 432, SE010, 500 );
setTimeStretch( SE010, 1.33, 30, 4 );

--エネルギー溜める
SE011 = playSeVer2( spep_0 + 472, 1226, "",spep_0 + 762, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 472, SE011, 29 );
SE012 = playSeVer2( spep_0 + 472, 1227, "",spep_0 + 666, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 472, SE012, 73 );

--黒いオーラ出る
SE013 = playSeVer2( spep_0 + 640, 1266, "",spep_0 + 764, 26, 24, -1);
setSeVolumeByWorkId( spep_0 + 640, SE013, 50 );
setStartTimeMs( SE013,  983 );
SE014 = playSeVer2( spep_0 + 626, 1173, "",spep_0 + 688, 0, 28, -1);
SE015 = playSeVer2( spep_0 + 638, 1214, "",spep_0 + 760, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 638, SE015, 151 );
setPitch( spep_0 + 638, SE015, 500 );
setTimeStretch( SE015, 1.33, 30, 4 );

--気を爆発させる
SE016 = playSeVer2( spep_0 + 730, 1114, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 730, 1252, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 730, 1296, "",spep_0 + 798, 0, 42, -1);
setPitch( spep_0 + 730, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

--オーラ
SE019 = playSeVer2( spep_0 + 770, 1243, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 976, 1243, "",spep_0 + 1118, 0, 32, -1);

--イナヅマ
SE020 = playSeVer2( spep_0 + 770, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 770, SE020, 71 );
SE023 = playSeVer2( spep_0 + 976, 1147, "",spep_0 + 1118, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 976, SE023, 71 );

--地響き
SE021 = playSeVer2( spep_0 + 830, 1226, "",spep_0 + 1116, 0, 28, -1);

--気を爆発させる
SE024 = playSeVer2( spep_0 + 1072, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 1072, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1072, SE025, 257 );
SE026 = playSeVer2( spep_0 + 1072, 1258, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 1072, 1137, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「ゆるせんぞ…！　ピッコロ大魔王さまの　最後の賭けを受けてみるがいい…!!」
playVoice( spep_0 + 0, 632 );
setVoiceVolume( spep_0 + 0, 632, 100 );

--「かああああっ!!!!」
playVoice( spep_0 + 713, 633 );
setVoiceVolume( spep_0 + 713, 633, 100 );

--「死ねい!!!!」
playVoice( spep_0 + 939, 634 );
setVoiceVolume( spep_0 + 939, 634, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1470 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 1120 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    
    --setVoiceVolume( SP_dodge - 12, 506, 0 );
       
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    -- ** 敵キャラクター ** --

    pauseAll( SP_dodge, 67);   

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --

-- ** 音 ** --
--モノクロ風圧
SE028 = playSeVer2( spep_0 + 1146, 1226, "",spep_0 + 1266, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE028, 120 );
SE029 = playSeVer2( spep_0 + 1146, 1314, "",spep_0 + 1266, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE029, 130 );
setPitch( spep_0 + 1146, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );
SE030 = playSeVer2( spep_0 + 1146, 1407, "",spep_0 + 1266, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE030, 162 );
setPitch( spep_0 + 1146, SE030, -600 );
setTimeStretch( SE030, 0.6, 30, 4 );

--爆発
SE031 = playSeVer2( spep_0 + 1348, 1128, "",spep_0 + 1506, 8, 26, -1);
setPitch( spep_0 + 1348, SE031, -800 );
setStartTimeMs( SE031,  817 );
SE032 = playSeVer2( spep_0 + 1348, 1159, "",spep_0 + 1506, 0, 26, -1);
SE033 = playSeVer2( spep_0 + 1350, 1188, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 1350, 1067, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 1470;

------------------------------------------------------
-- 敵被弾_爆風 ef_002 (146F)
------------------------------------------------------
a = 1;
b = 3;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 - a + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 敵被弾_爆風 ef_002
setEffMoveKey( spep_1 - a + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 - a + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 - a + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 - a + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 - a + 0, finish_f, 0 );
setEffRotateKey( spep_1 - a + 146, finish_f, 0 );
setEffAlphaKey( spep_1 - a + 0, finish_f, 255 );
setEffAlphaKey( spep_1 - a + 146, finish_f, 255 );

finish_b = entryEffect( spep_1 - a + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- ↑敵を挟んだ背景 ef_002b
setEffMoveKey( spep_1 - a + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_1 - a + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_1 - a + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_1 - a + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_1 - a + 0, finish_b, 0 );
setEffRotateKey( spep_1 - a + 146, finish_b, 0 );
setEffAlphaKey( spep_1 - a + 0, finish_b, 255 );
setEffAlphaKey( spep_1 - a + 146, finish_b, 255 );

-- ** エフェクト等(KO) ** --
KO_b = entryEffect( spep_1  + 144, SP_003b, 0x100, -1, 0, 0, 0 );  -- KO演出背景 ef_003b
setEffMoveKey( spep_1 + 144, KO_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 266, KO_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 144, KO_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 266, KO_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 144, KO_b, 0 );
setEffRotateKey( spep_1 + 266, KO_b, 0 );
setEffAlphaKey( spep_1 + 144, KO_b, 255 );
setEffAlphaKey( spep_1 + 266, KO_b, 255 );

KO_f = entryEffectLife( spep_1 + 144, SP_003, 122, 0x100, -1, 0, 0, 0 );  -- KO演出 ef_003
setEffMoveKey( spep_1 + 144, KO_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 266, KO_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 144, KO_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 266, KO_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 144, KO_f, 0 );
setEffRotateKey( spep_1 + 266, KO_f, 0 );
setEffAlphaKey( spep_1 + 144, KO_f, 255 );
setEffAlphaKey( spep_1 + 266, KO_f, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_1 - b + 0, 1, 1 );
changeAnime( spep_1 - b + 0, 1, 108 );

setMoveKey( spep_1 - b + 0, 1, -1185.7, -263.3 , 0 );
setMoveKey( spep_1 - b + 2, 1, -1185.7, -263.3 , 0 );
setMoveKey( spep_1 - b + 4, 1, -1053.7, -233 , 0 );
setMoveKey( spep_1 - b + 6, 1, -921.7, -202.8 , 0 );
setMoveKey( spep_1 - b + 8, 1, -789.6, -172.6 , 0 );
setMoveKey( spep_1 - b + 10, 1, -657.6, -142.4 , 0 );
setMoveKey( spep_1 - b + 12, 1, -525.6, -112.2 , 0 );
setMoveKey( spep_1 - b + 14, 1, -393.5, -82 , 0 );
setMoveKey( spep_1 - b + 16, 1, -261.5, -51.8 , 0 );
setMoveKey( spep_1 - b + 18, 1, -129.4, -21.6 , 0 );
setMoveKey( spep_1 - b + 20, 1, 2.6, 8.6 , 0 );
setMoveKey( spep_1 + 146, 1, 2.6, 8.6 , 0 );

setScaleKey( spep_1 - b + 0, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 146, 1, 1.61, 1.61 );

setRotateKey( spep_1 - b + 0, 1, -0.1 );
setRotateKey( spep_1 + 146, 1, -0.1 );

setAlphaKey( spep_1 - b + 0, 1, 255 );
setAlphaKey( spep_1 + 146, 1, 255 );

setShakeChara( spep_1 - b + 20, 1, 126 + b, 12);


-- ** 音 ** --

--気圧の中
SE035 = playSeVer2( spep_1 + 0, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 0, 1161, "",spep_1 + 160, 0, 10, -1);
SE037 = playSeVer2( spep_1 + 48, 1258, "",spep_1 + 160, 26, 10, -1);

--気に飲まれる
SE038 = playSeVer2( spep_1 + 100, 1023, "",spep_1 + 160, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 146 + 2, 0, 0, 0, 0, 255 );


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 20 );
entryFade( spep_1 + 142, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 146 );

end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 敵被弾_爆風 ef_002 (144F)
------------------------------------------------------
spep_z = 0;
b = 3;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_z + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 敵被弾_爆風 ef_002
setEffMoveKey( spep_z + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_f, 0 );
setEffRotateKey( spep_z + 146, finish_f, 0 );
setEffAlphaKey( spep_z + 0, finish_f, 255 );
setEffAlphaKey( spep_z + 146, finish_f, 255 );

finish_b = entryEffect( spep_z + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- ↑敵を挟んだ背景 ef_002b
setEffMoveKey( spep_z + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_b, 0 );
setEffRotateKey( spep_z + 146, finish_b, 0 );
setEffAlphaKey( spep_z + 0, finish_b, 255 );
setEffAlphaKey( spep_z + 146, finish_b, 255 );

-- ** エフェクト等(KO) ** --
KO_b = entryEffect( spep_z + 144, SP_003b, 0x100, -1, 0, 0, 0 );  -- KO演出背景 ef_003b
setEffMoveKey( spep_z + 144, KO_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 266, KO_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 144, KO_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 266, KO_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 144, KO_b, 0 );
setEffRotateKey( spep_z + 266, KO_b, 0 );
setEffAlphaKey( spep_z + 144, KO_b, 255 );
setEffAlphaKey( spep_z + 266, KO_b, 255 );

KO_f = entryEffectLife( spep_z + 144, SP_003, 122, 0x100, -1, 0, 0, 0 );  -- KO演出 ef_003
setEffMoveKey( spep_z + 144, KO_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 266, KO_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 144, KO_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 266, KO_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 144, KO_f, 0 );
setEffRotateKey( spep_z + 266, KO_f, 0 );
setEffAlphaKey( spep_z + 144, KO_f, 255 );
setEffAlphaKey( spep_z + 266, KO_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 146 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
           
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    -- ** 敵キャラクター ** --
	setMoveKey( SP_dodge - b + 0, 1, -1185.7, -263.3 , 0 );
	setMoveKey( SP_dodge - b + 2, 1, -1185.7, -263.3 , 0 );
	setMoveKey( SP_dodge - b + 4, 1, -1053.7, -233 , 0 );
	setMoveKey( SP_dodge - b + 6, 1, -921.7, -202.8 , 0 );
	setMoveKey( SP_dodge - b + 8, 1, -789.6, -172.6 , 0 );
	setMoveKey( SP_dodge - b + 10, 1, -657.6, -142.4 , 0 );
	setMoveKey( SP_dodge - b + 12, 1, -525.6, -112.2 , 0 );
	setMoveKey( SP_dodge - b + 14, 1, -393.5, -82 , 0 );

	setScaleKey( SP_dodge - b + 0, 1, 1.61, 1.61 );
	setScaleKey( SP_dodge + 10, 1, 1.61, 1.61 );

	setRotateKey( SP_dodge - b + 0, 1, -0.1 );
	setRotateKey( SP_dodge + 10, 1, -0.1 );

	setAlphaKey( SP_dodge + 0, 1, 255 );
	setAlphaKey( SP_dodge + 10, 1, 255 );

    pauseAll( SP_dodge, 67);   

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
changeAnime( spep_z + 0, 1, 108 );
setDisp( spep_z + 0, 1, 1 );

setMoveKey( spep_z - b + 3, 1, -1185.7, -263.3 , 0 );
setMoveKey( spep_z - b + 4, 1, -1053.7, -233 , 0 );
setMoveKey( spep_z - b + 5, 1, -1053.7, -233 , 0 );
setMoveKey( spep_z - b + 6, 1, -921.7, -202.8 , 0 );
setMoveKey( spep_z - b + 7, 1, -921.7, -202.8 , 0 );
setMoveKey( spep_z - b + 8, 1, -789.6, -172.6 , 0 );
setMoveKey( spep_z - b + 9, 1, -789.6, -172.6 , 0 );
setMoveKey( spep_z - b + 10, 1, -657.6, -142.4 , 0 );
setMoveKey( spep_z - b + 12, 1, -525.6, -112.2 , 0 );
setMoveKey( spep_z - b + 14, 1, -393.5, -82 , 0 );
setMoveKey( spep_z - b + 16, 1, -261.5, -51.8 , 0 );
setMoveKey( spep_z - b + 18, 1, -129.4, -21.6 , 0 );
setMoveKey( spep_z - b + 20, 1, 2.6, 8.6 , 0 );
setMoveKey( spep_z + 146, 1, 2.6, 8.6 , 0 );

setScaleKey( spep_z - b + 0, 1, 1.61, 1.61 );
setScaleKey( spep_z + 146, 1, 1.61, 1.61 );

setRotateKey( spep_z - b + 0, 1, -0.1 );
setRotateKey( spep_z + 146, 1, -0.1 );

setAlphaKey( spep_z - b + 0, 1, 255 );
setAlphaKey( spep_z + 146, 1, 255 );

setShakeChara( spep_z - b + 20, 1, 126 + b, 12);


-- ** 音 ** --
--気圧の中
SE039 = playSeVer2( spep_z + 8, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_z + 8, 1161, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_z + 54, 1258, "", 0, 28, 0, -1);

--気に飲まれる
SE042 = playSeVer2( spep_z + 110, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_z + 20 );
entryFade( spep_z + 142, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_z + 146 );


else end
