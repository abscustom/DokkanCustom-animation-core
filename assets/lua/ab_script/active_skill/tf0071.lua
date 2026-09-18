--1029700:LR_孫悟飯(幼年期)/ピッコロ_アクティブ交代
--battle_301303
--tf0071

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3241;  --アクティブ交代演出ef_001

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
-- アクティブ交代演出
-------------------------------------------------
MAX_FRAME_0 = 954;

setupMovie(0, SP_01, 0, 0);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アクティブ交代演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 70, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ネイル気があふれる
SE002 = playSeVer2( spep_0 + 6, 1227, "",spep_0 + 272, 0, 88, -1);
SE003 = playSeVer2( spep_0 + 6, 1248, "",spep_0 + 136, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 77 );
SE004 = playSeVer2( spep_0 + 6, 1266, "",spep_0 + 254, 0, 76, -1);
SE005 = playSeVer2( spep_0 + 6, 1022, "",spep_0 + 114, 0, 62, -1);
SE006 = playSeVer2( spep_0 + 60, 1240, "",spep_0 + 168, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 153 );
SE007 = playSeVer2( spep_0 + 60, 1214, "",spep_0 + 304, 0, 116, -1);

--環境音2
SE040 = playSeVer2( spep_0 + 65, 1269, "", 420, 10, 10, -1);
setSeVolumeByWorkId( spep_0 + 65, SE040, 25 );
SE041 = playSeVer2( spep_0 + 420, 1269, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE041, 25 );

--気に包まれる
SE008 = playSeVer2( spep_0 + 94, 1157, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 112, 1127, "",spep_0 + 282, 8, 90, -1);
setStartTimeMs( SE009,  300 );
SE010 = playSeVer2( spep_0 + 112, 1060, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 170, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 83 );

--マントひるがえる
SE012 = playSeVer2( spep_0 + 216, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 76 );
SE013 = playSeVer2( spep_0 + 282, 1332, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 282, 1116, "",spep_0 + 350, 0, 32, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 306, 1018, "", 0, 0, 0, -1);

--ピッコロ両手広げる
SE016 = playSeVer2( spep_0 + 332, 1062, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 332, 1237, "", 0, 0, 0, -1);

--飛び立つ
SE018 = playSeVer2( spep_0 + 408, 1035, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 408, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE019, 63 );
SE020 = playSeVer2( spep_0 + 416, 1207, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE020, 68 );

--飛んでくる
SE021 = playSeVer2( spep_0 + 442, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE021, 84 );
SE022 = playSeVer2( spep_0 + 442, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE022, 74 );
SE023 = playSeVer2( spep_0 + 470, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE023, 178 );
SE024 = playSeVer2( spep_0 + 472, 1121, "",spep_0 + 590, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 472, SE024, 62 );
setPitch( spep_0 + 472, SE024, 300 );
setTimeStretch( SE024, 1.2, 30, 4 );
SE025 = playSeVer2( spep_0 + 506, 1019, "",spep_0 + 578, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 506, SE025, 74 );

--ピッコロ出現する
SE026 = playSeVer2( spep_0 + 542, 1014, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 542, 1035, "", 0, 0, 0, -1);

--画面遷移
SE028 = playSeVer2( spep_0 + 750, 1232, "", 0, 0, 0, -1);

--環境音
SE029 = playSeVer2( spep_0 + 752, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE029, 25 );

--マントひるがえる
SE030 = playSeVer2( spep_0 + 760, 1332, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 832, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 832, SE031, -300 );
setTimeStretch( SE031, 0.8, 30, 4 );

--ラスト決め
SE032 = playSeVer2( spep_0 + 838, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE032, 63 );

-- ** ボイス ** --

--「オレはいま究極のパワーをてにいれたのだーーーっ！！」
playVoice( spep_0 + 302, 862 );
setVoiceVolume( spep_0 + 302, 862, 112 );

--「ピ……ピッコロさんっ！！！」
playVoice( spep_0 + 618, 864 );
setVoiceVolume( spep_0 + 618, 864, 112 );

--「待たせたな……」
playVoice( spep_0 + 826, 863 );
setVoiceVolume( spep_0 + 826, 863, 112 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 954F

end
