--1030940:UR_セル(完全体)_アクティブバフ：死闘開始
--sp_effect_b4_00377
--bs0053

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163697;  --アクティブバフ演出 ef_001

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

-------------------------------------------------
-- アクティブバフ演出
-------------------------------------------------
MAX_FRAME_0 = 1018;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出(ef_001)
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

-- ** 白背景 ** --
entryFade( spep_0 + 842, 8, 2, 50, fcolor_r, fcolor_g, fcolor_b, 235);  --白 背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 758, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--羽ひらく
SE004 = playSeVer2( spep_0 + 230, 1060, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 230, 1414, "", 0, 0, 0, -1);

--空気音
SE006 = playSeVer2( spep_0 + 280, 1129, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE006, 56 );
setTimeStretch( SE006, 1.25, 30, 4 );

--右手握る
SE007 = playSeVer2( spep_0 + 356, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 356, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 364, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE009, 74 );

--左手握る
SE010 = playSeVer2( spep_0 + 482, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 482, 1233, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 488, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE012, 71 );

--画面遷移
SE013 = playSeVer2( spep_0 + 522, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE013, 71 );

--気を高める
SE014 = playSeVer2( spep_0 + 638, 1416, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE014, 186 );
setStartTimeMs( SE014,  767 );
setPitch( spep_0 + 638, SE014, -100 );
setTimeStretch( SE014, 0.93, 30, 4 );
SE015 = playSeVer2( spep_0 + 652, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE015, 82 );
SE016 = playSeVer2( spep_0 + 652, 1214, "",spep_0 + 918, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 652, SE016, 170 );
SE017 = playSeVer2( spep_0 + 652, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE017, 50 );
setPitch( spep_0 + 652, SE017, -1200 );
setTimeStretch( SE017, 0.2, 30, 4 );
SE018 = playSeVer2( spep_0 + 652, 1158, "",spep_0 + 910, 0, 88, -1);
setSeVolumeByWorkId( spep_0 + 652, SE018, 52 );
SE019 = playSeVer2( spep_0 + 696, 1284, "",spep_0 + 806, 0, 70, -1);
SE020 = playSeVer2( spep_0 + 736, 1188, "", 0, 0, 0, -1);

--光溢れる
SE021 = playSeVer2( spep_0 + 782, 1258, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 798, 1114, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 798, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE023, 77 );
SE024 = playSeVer2( spep_0 + 798, 1179, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_0 + 814, 8, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_0 + 836, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 836, SE026, 43 );
SE027 = playSeVer2( spep_0 + 836, 1267, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 836, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 836, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );
SE029 = playSeVer2( spep_0 + 860, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 860, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );
SE030 = playSeVer2( spep_0 + 884, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 884, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );
SE031 = playSeVer2( spep_0 + 908, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 908, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_0 + 926, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 926, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );

--ラスト決め
SE033 = playSeVer2( spep_0 + 940, 1369, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_0 + 956, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 956, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_0 + 980, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 980, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );

-- ** ボイス ** --

--「準備運動はこれぐらいでいいだろう……」
playVoice( spep_0 + 8, 970 );	setVoiceVolume( spep_0 + 8, 966, 124 );

--「は！！！」
playVoice( spep_0 + 562, 971 );	setVoiceVolume( spep_0 + 562, 971, 124 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1018F

end
