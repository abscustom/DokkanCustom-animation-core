--1032260:UR_超サイヤ人4孫悟空(ミニ)(DAIMA)_アクティブ必殺：かめはめ波
--sp_effect_a1_00512
--ut0114

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164215; --気だめ〜KO ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 718 -13);   -- スキップかつ回避された時のスキップ先フレーム指定

           skipFrame(0, spep_0 + 718 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 718 -13, SP_01, spep_0 + 718 -13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 840 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 840 , SP_01, spep_0 + 840 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           --かめはめ波発射
           SE046 = playSeVer2( spep_0 + 840 + 1, 1211, "", spep_0 + 1048 , 0, 20, -1);
           setSeVolumeByWorkId( spep_0 + 840 + 1, SE046, 229 );

           --気弾中
           SE048 = playSeVer2( spep_0 + 840 + 1, 1161, "",spep_0 + 988, 0, 28, -1);
           setSeVolumeByWorkId( spep_0 + 840 + 1, SE048, 45 );

        end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- 気だめ〜KO
-------------------------------------------------

MAX_FRAME_0 = 1262;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめ〜KO(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
 
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 732 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 788 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 732 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 748 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 732 + OFFSET_X, 1, 129, -64.8 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 129, -64.8 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 127.7, -63.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 127.7, -63.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 148.5, -87 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 148.5, -87 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 134.6, -49.8 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 134.6, -49.8 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 114.6, -74.2 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 114.6, -74.2 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 119, -45.9 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 119, -45.9 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 115, -72.3 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 115, -72.3 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 119.5, -74.4 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 119.5, -74.4 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 118, -46 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 118, -46 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 129.4, -75 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 129.4, -75 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 134.3, -52.3 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 134.3, -52.3 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 127.8, -70.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 127.8, -70.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 133.8, -51.8 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 133.8, -51.8 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 125.8, -68.7 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 125.8, -68.7 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 147.8, -55.3 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 147.8, -55.3 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 140.3, -71.7 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 140.3, -71.7 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 127.8, -47.8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 127.8, -47.8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 135.8, -70.7 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 135.8, -70.7 , 0 );

setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 732 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, 15 );

setBlendColor( spep_0 + 732 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.2 );
setBlendColor( spep_0 + 744 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.5 );
setBlendColor( spep_0 + 748 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.8 );
setBlendColor( spep_0 + 756 + OFFSET_X, 1, 3, 0.384, 0.639, 1, 0.7 );
setBlendColor( spep_0 + 760 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.8 );
setBlendColor( spep_0 + 764 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.5 );
setBlendColor( spep_0 + 772 + OFFSET_X, 1, 3, 0.709, 0.901, 1, 0.9 );
setBlendColor( spep_0 + 788 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 232, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 234, 0, 60, -1);
SE003 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 186, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 60 );
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 63 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 63 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );

--画面遷移
SE008 = playSeVer2( spep_0 + 68, 1289, "", 0, 0, 0, -1);
setPitch( spep_0 + 68, SE008, 300 );   
setTimeStretch( SE008, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 68, SE008, 70 );
SE009 = playSeVer2( spep_0 + 68, 22, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 63 );
SE011 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 63 );
SE012 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 63 );

--気ダメ
SE013 = playSeVer2( spep_0 + 142, 1035, "", 0, 0, 0, -1);
setPitch( spep_0 + 142, SE013, -100 );  
setTimeStretch( SE013, 0.93, 30, 4 );
setSeVolumeByWorkId( spep_0 + 142, SE013, 120 );
SE014 = playSeVer2( spep_0 + 142, 1503, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_0 + 142, 1159, "",spep_0 + 414, 0, 154, -1);
setSeVolumeByWorkId( spep_0 + 142, SE015, 56 );

--気ダメ
SE016 = playSeVer2( spep_0 + 162, 1504, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_0 + 196, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE017, 69 );

--かめはめ波溜め始め
SE018 = playSeVer2( spep_0 + 294, 1303, "",spep_0 + 440, 10, 66, -1);
setSeVolumeByWorkId( spep_0 + 294, SE018, 70 );
setStartTimeMs( SE018,  667 );
setPitch( spep_0 + 294, SE018, -500 );  
setTimeStretch( SE018, 0.67, 30, 4 );
SE019 = playSeVer2( spep_0 + 268, 1133, "",spep_0 + 406, 10, 32, -1);
setSeVolumeByWorkId( spep_0 + 268, SE019, 72 );
setStartTimeMs( SE019,  200 );
setPitch( spep_0 + 268, SE019, 900 );   
setTimeStretch( SE019, 1.6, 30, 4 );
SE020 = playSeVer2( spep_0 + 272, 1202, "", 0, 0, 0, -1);
setPitch( spep_0 + 272, SE020, 300 );   
setTimeStretch( SE020, 0.65, 30, 4 );
setSeVolumeByWorkId( spep_0 + 272, SE020, 120 );
SE021 = playSeVer2( spep_0 + 272, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE021, 54 );
SE022 = playSeVer2( spep_0 + 274, 1191, "",spep_0 + 338, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 274, SE022, 148 );

--オーラ
SE023 = playSeVer2( spep_0 + 320, 1513, "",spep_0 + 674, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 320, SE023, 60 );
SE024 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE024, 50 );

--セリフカットイン
SE025 = playSeVer2( spep_0 + 334, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE025, 63 );

--オーラ
SE026 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE026, 50 );
SE027 = playSeVer2( spep_0 + 368, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE027, 50 );
SE028 = playSeVer2( spep_0 + 392, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE028, 50 );

--かめはめ波溜め
SE029 = playSeVer2( spep_0 + 408, 1210, "",spep_0 + 684, 58, 34, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE030, 50 );
SE031 = playSeVer2( spep_0 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE031, 50 );

--かめはめ波溜め
SE032 = playSeVer2( spep_0 + 438, 1209, "", 0, 0, 0, -1);

--地面爆発
SE033 = playSeVer2( spep_0 + 448, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE033, 71 );

--オーラ
SE034 = playSeVer2( spep_0 + 464, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE034, 50 );
SE035 = playSeVer2( spep_0 + 488, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE035, 50 );
SE036 = playSeVer2( spep_0 + 512, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE036, 50 );
SE037 = playSeVer2( spep_0 + 536, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE037, 50 );
SE038 = playSeVer2( spep_0 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE038, 50 );
SE039 = playSeVer2( spep_0 + 584, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE039, 50 );
SE040 = playSeVer2( spep_0 + 608, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE040, 50 );
SE041 = playSeVer2( spep_0 + 632, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE041, 50 );

--かめはめ波発射
SE042 = playSeVer2( spep_0 + 644, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE042, 80 );
SE043 = playSeVer2( spep_0 + 644, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE043, 80 );
SE044 = playSeVer2( spep_0 + 648, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE044, 80 );

--オーラ
SE045 = playSeVer2( spep_0 + 656, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE045, 50 );

--かめはめ波発射
SE046 = playSeVer2( spep_0 + 656, 1211, "", spep_0 + 1048 , 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 656, SE046, 229 );
SE047 = playSeVer2( spep_0 + 686, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 686, SE047, 56 );


-- ** ボイス ** --
--「か…め…は…め…」
playVoice( spep_0 + 336, 1089 );
setVoiceVolume( spep_0 + 336, 1089, 134 );

--「波ーーっ！！！！」
playVoice( spep_0 + 630, 1090 );
setVoiceVolume( spep_0 + 630, 1090, 134 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 718; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE047, 0);
setVoiceVolume( SP_dodge - 12, 1090, 0 );
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾中
SE048 = playSeVer2( spep_0 + 742, 1161, "",spep_0 + 988, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 742, SE048, 45 );

--敵ヒット
SE049 = playSeVer2( spep_0 + 742, 1011, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 742, 1187, "", 0, 0, 0, -1);

--ズーム
SE051 = playSeVer2( spep_0 + 846, 1072, "", 0, 0, 0, -1);

--地響き
SE052 = playSeVer2( spep_0 + 856, 1226, "",spep_0 + 1184, 0, 108, -1);
setSeVolumeByWorkId( spep_0 + 856, SE052, 68 );

--ズーム
SE053 = playSeVer2( spep_0 + 872, 1116, "",spep_0 + 932, 0, 32, -1);

--気弾強くなる
SE054 = playSeVer2( spep_0 + 962, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 962, SE054, 100 );
SE055 = playSeVer2( spep_0 + 968, 1161, "",spep_0 + 1166, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 968, SE055, 77 );
SE056 = playSeVer2( spep_0 + 968, 1133, "", 0, 0, 0, -1);

--爆発
SE057 = playSeVer2( spep_0 + 1048, 1159, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1094, 1068, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 1136, 1067, "", 0, 0, 0, -1);

--風圧
SE060 = playSeVer2( spep_0 + 1176, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE060, 63 );
SE061 = playSeVer2( spep_0 + 1176, 1068, "", 0, 0, 0, -1);


--終わり
hideKoScreen();
dealDamage( spep_0 + 1144);
fadeKoLabel( 0.0, 0.5 );
endPhase( spep_0 + MAX_FRAME_0);--1262f (KO時 1468f)

else end