--1030340:LR_超サイヤ人3孫悟空(GT)(黄金大猿)_アクティブ大猿化
--battle_301313
--tf0076

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3262;  -- 大猿変身演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 大猿変身演出
-------------------------------------------------
MAX_FRAME_0 = 1344;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 大猿変身演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 460, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--心音
SE004 = playSeVer2( spep_0 + 86, 1473, "",spep_0 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 148 );
SE006 = playSeVer2( spep_0 + 232, 1473, "",spep_0 + 318, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 232, SE006, 148 );
SE008 = playSeVer2( spep_0 + 284, 1473, "",spep_0 + 370, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 284, SE008, 148 );

--力む
SE005 = playSeVer2( spep_0 + 198, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE005, 68 );
setPitch( spep_0 + 198, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );

--起き上がる
SE007 = playSeVer2( spep_0 + 252, 1116, "",spep_0 + 306, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 252, SE007, 71 );

--気が溢れる
SE009 = playSeVer2( spep_0 + 296, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE009, 89 );
SE010 = playSeVer2( spep_0 + 296, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE010, 88 );
setTimeStretch( SE010, 1.25, 30, 4 );

--地響き
SE011 = playSeVer2( spep_0 + 302, 1226, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE011, 69 );
SE014 = playSeVer2( spep_0 + 396, 1044, "",spep_0 + 1148, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 396, SE014, 62 );

--地面が爆発する
SE012 = playSeVer2( spep_0 + 382, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE012, 68 );
SE013 = playSeVer2( spep_0 + 384, 1067, "", 0, 0, 0, -1);

--目線カットイン
SE015 = playSeVer2( spep_0 + 572, 1018, "", 0, 0, 0, -1);

--気が爆発する
SE016 = playSeVer2( spep_0 + 580, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE016, 72 );
SE017 = playSeVer2( spep_0 + 580, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 580, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 580, 1147, "",spep_0 + 708, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 580, SE019, 63 );

--大猿化始まる
SE020 = playSeVer2( spep_0 + 680, 1190, "", 0, 0, 0, -1);

--さらに気が高まる
SE021 = playSeVer2( spep_0 + 730, 1264, "", 0, 0, 0, -1);

--大猿化
SE022 = playSeVer2( spep_0 + 802, 1321, "",spep_0 + 934, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 802, SE022, 80 );
SE023 = playSeVer2( spep_0 + 806, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE023, 80 );
SE024 = playSeVer2( spep_0 + 806, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE024, 80 );

--腕大きくなる
SE025 = playSeVer2( spep_0 + 872, 1330, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 878, 1294, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE026, 216 );

--腕金髪化
SE027 = playSeVer2( spep_0 + 902, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE027, 63 );

--踏み出す
SE028 = playSeVer2( spep_0 + 974, 1162, "",spep_0 + 1094, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 974, SE028, 81 );
SE029 = playSeVer2( spep_0 + 980, 1011, "", 0, 0, 0, -1);

--足金髪化
SE030 = playSeVer2( spep_0 + 992, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 992, SE030, 71 );

--体出す
SE031 = playSeVer2( spep_0 + 1062, 1162, "",spep_0 + 1180, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE031, 63 );
SE032 = playSeVer2( spep_0 + 1068, 1011, "", 0, 0, 0, -1);

--体金髪化
SE033 = playSeVer2( spep_0 + 1082, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1082, SE033, 71 );

--カメラ引く
SE034 = playSeVer2( spep_0 + 1120, 44, "", 0, 0, 0, -1);

--環境音
SE035 = playSeVer2( spep_0 + 1124, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1124, SE035, 25 );

--腕上げる
SE036 = playSeVer2( spep_0 + 1196, 1004, "", 0, 0, 0, -1);

--叫ぶ
SE037 = playSeVer2( spep_0 + 1202, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1202, SE037, 126 );
SE038 = playSeVer2( spep_0 + 1228, 1125, "",spep_0 + 1376, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1228, SE038, 126 );

--ラスト気爆発
SE039 = playSeVer2( spep_0 + 1232, 1148, "",spep_0 + 1310, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 1232, SE039, 71 );
SE040 = playSeVer2( spep_0 + 1264, 1156, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1264, 1159, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「うわあああぁぁーーーっ！！！！」
playVoice( spep_0 + 414, 915 );
setVoiceVolume( spep_0 + 414, 915, 130 );

--終わり
endPhase( spep_0 + MAX_FRAME_0 );    -- 1344F

end
