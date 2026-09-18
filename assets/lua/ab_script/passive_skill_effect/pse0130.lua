--1034300:UR_超サイヤ人3孫悟空(ミニ)(DAIMA)_登場時演出
--battle_301363
--pse0130

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3313; --登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
MAX_FRAME_0 = 992;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 277, 0, 77, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 63 );

--溜め予兆
SE003 = playSeVer2( spep_0 + 80, 1116, "",spep_0 + 148, 0, 43, -1);
SE004 = playSeVer2( spep_0 + 91, 1241, "",spep_0 + 226, 0, 64, -1);
SE005 = playSeVer2( spep_0 + 91, 1265, "",spep_0 + 232, 0, 80, -1);

--気ダメ
SE006 = playSeVer2( spep_0 + 145, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 145, 1503, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 163, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 163, SE008, 63 );
SE009 = playSeVer2( spep_0 + 187, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 187, SE009, 63 );
SE010 = playSeVer2( spep_0 + 211, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 211, SE010, 63 );

--紐きれる
SE011 = playSeVer2( spep_0 + 226, 1521, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE011, 120 );

--オーラ
SE012 = playSeVer2( spep_0 + 235, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 235, SE012, 63 );
SE015 = playSeVer2( spep_0 + 259, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 259, SE015, 63 );
SE016 = playSeVer2( spep_0 + 283, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 283, SE016, 63 );

--画面遷移
SE013 = playSeVer2( spep_0 + 250, 1232, "", 0, 0, 0, -1);

--電気走る
SE014 = playSeVer2( spep_0 + 258, 1513, "",spep_0 + 606, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 258, SE014, 50 );

--オーラ
SE018 = playSeVer2( spep_0 + 307, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 307, SE018, 63 );

--髪のびる
SE017 = playSeVer2( spep_0 + 283, 1468, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 310, 1330, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 331, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 331, SE020, 63 );
SE021 = playSeVer2( spep_0 + 355, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 355, SE021, 63 );
SE022 = playSeVer2( spep_0 + 379, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 379, SE022, 63 );
SE023 = playSeVer2( spep_0 + 403, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 403, SE023, 63 );
SE024 = playSeVer2( spep_0 + 427, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 427, SE024, 63 );

--カメラパン
SE025 = playSeVer2( spep_0 + 427, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 427, SE025, 43 );
setTimeStretch( SE025, 1.43, 30, 4 );

--オーラ
SE026 = playSeVer2( spep_0 + 451, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 451, SE026, 63 );
SE027 = playSeVer2( spep_0 + 475, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 475, SE027, 63 );
SE028 = playSeVer2( spep_0 + 499, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 499, SE028, 63 );
SE029 = playSeVer2( spep_0 + 523, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 523, SE029, 63 );

--気が爆発する
SE030 = playSeVer2( spep_0 + 523, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 523, SE030, 51 );
SE031 = playSeVer2( spep_0 + 523, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 523, SE031, 99 );
SE032 = playSeVer2( spep_0 + 531, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 531, SE032, 55 );
SE033 = playSeVer2( spep_0 + 531, 1371, "",spep_0 + 663, 0, 55, -1);
SE034 = playSeVer2( spep_0 + 532, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE034, 44 );

--画面遷移
SE035 = playSeVer2( spep_0 + 598, 1072, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_0 + 612, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE036, 50 );
SE039 = playSeVer2( spep_0 + 642, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 642, SE039, 50 );
SE040 = playSeVer2( spep_0 + 666, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 666, SE040, 50 );
SE041 = playSeVer2( spep_0 + 690, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE041, 50 );
SE042 = playSeVer2( spep_0 + 714, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 714, SE042, 50 );
SE043 = playSeVer2( spep_0 + 738, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 738, SE043, 50 );
SE044 = playSeVer2( spep_0 + 762, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE044, 50 );

--電気走る
SE037 = playSeVer2( spep_0 + 633, 1513, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 633, SE037, 60 );

--カメラパン
SE038 = playSeVer2( spep_0 + 633, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 633, SE038, 65 );
setTimeStretch( SE038, 1.25, 30, 4 );

--顔向く
SE045 = playSeVer2( spep_0 + 775, 1189, "", 0, 0, 0, -1);

--オーラ
SE046 = playSeVer2( spep_0 + 786, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE046, 50 );
SE047 = playSeVer2( spep_0 + 810, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 810, SE047, 50 );

--ラスト決め
SE048 = playSeVer2( spep_0 + 831, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 831, SE048, 69 );
SE049 = playSeVer2( spep_0 + 831, 1062, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_0 + 834, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 834, SE050, 50 );
SE051 = playSeVer2( spep_0 + 858, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE051, 50 );
SE052 = playSeVer2( spep_0 + 882, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 882, SE052, 50 );
SE053 = playSeVer2( spep_0 + 906, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 906, SE053, 50 );
SE054 = playSeVer2( spep_0 + 930, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 930, SE054, 50 );
SE055 = playSeVer2( spep_0 + 954, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 954, SE055, 50 );
SE056 = playSeVer2( spep_0 + 978, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 978, SE056, 50 );


-- ** ボイス ** --
--「やるしかねえか！はあああーーーっ！！」
playVoice( spep_0 + 0, 1223 );
setVoiceVolume( spep_0 + 0, 1223, 120 );

--「だあーーーっ！！！」
playVoice( spep_0 + 498, 1224 );
setVoiceVolume( spep_0 + 498, 1224, 120 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 992f

end