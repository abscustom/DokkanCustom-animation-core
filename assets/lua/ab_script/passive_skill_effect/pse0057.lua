--1029400:LR_伝説の超サイヤ人ブロリー_登場時演出
--sp_effect_b4_00345
--pse0057

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163082;  --登場時演出ef_001

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

if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
MAX_FRAME_0 = 860;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
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

--入り
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 250, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 250, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--力む
SE003 = playSeVer2( spep_0 + 96, 1344, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 138, 1035, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE008, 63 );

--画面遷移
SE009 = playSeVer2( spep_0 + 214, 8, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE010, 40 );

--腕前に出す
SE011 = playSeVer2( spep_0 + 230, 1003, "", 0, 0, 0, -1);

--セリフカットイン
SE012 = playSeVer2( spep_0 + 240, 1018, "", 0, 0, 0, -1);

--指輪光る
SE006 = playSeVer2( spep_0 + 242, 1329, "",spep_0 + 490, 24, 50, -1);
setSeVolumeByWorkId( spep_0 + 242, SE006, 191 );
setStartTimeMs( SE006,  1233 );
setPitch( spep_0 + 242, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );

--オーラ
SE014 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE014, 32 );
SE015 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE015, 32 );
SE016 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE016, 32 );

--環境音
SE017 = playSeVer2( spep_0 + 308, 1226, "",spep_0 + 744, 44, 78, -1);
setSeVolumeByWorkId( spep_0 + 308, SE017, 72 );

--オーラ
SE018 = playSeVer2( spep_0 + 326, 1227, "",spep_0 + 854, 0, 98, -1);
SE019 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE019, 63 );
SE020 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE020, 63 );
SE021 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE021, 63 );
SE022 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE022, 63 );
SE024 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE024, 63 );
SE025 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE025, 32 );
SE026 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE026, 32 );

--指輪光る
SE023 = playSeVer2( spep_0 + 490, 1329, "",spep_0 + 796, 26, 132, -1);
setSeVolumeByWorkId( spep_0 + 490, SE023, 158 );
setStartTimeMs( SE023,  1233 );
setPitch( spep_0 + 490, SE023, -200 );
setTimeStretch( SE023, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 492, 1228, "",spep_0 + 772, 14, 136, -1);
setSeVolumeByWorkId( spep_0 + 492, SE013, 66 );
setStartTimeMs( SE013,  3967 );
setPitch( spep_0 + 492, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );

--オーラ
SE027 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE027, 32 );
SE029 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE029, 32 );
SE030 = playSeVer2( spep_0 + 542, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE030, 32 );
SE031 = playSeVer2( spep_0 + 566, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE031, 32 );

--サークレット光る
SE028 = playSeVer2( spep_0 + 586, 1185, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE028, 226 );
setStartTimeMs( SE028,  1533 );
setPitch( spep_0 + 586, SE028, -1200 );
setTimeStretch( SE028, 0.2, 30, 4 );
SE032 = playSeVer2( spep_0 + 588, 1184, "",spep_0 + 714, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 588, SE032, 63 );

--オーラ
SE033 = playSeVer2( spep_0 + 590, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE033, 63 );
SE034 = playSeVer2( spep_0 + 614, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE034, 63 );
SE035 = playSeVer2( spep_0 + 638, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE035, 63 );
SE036 = playSeVer2( spep_0 + 662, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE036, 63 );
SE037 = playSeVer2( spep_0 + 686, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 686, SE037, 54 );
SE038 = playSeVer2( spep_0 + 710, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE038, 35 );
SE039 = playSeVer2( spep_0 + 734, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE039, 25 );
SE040 = playSeVer2( spep_0 + 758, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE040, 17 );

--収まる
SE041 = playSeVer2( spep_0 + 772, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE041, 68 );

--オーラ
SE042 = playSeVer2( spep_0 + 782, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE042, 7 );

-- ** ボイス ** --

--「うううう……」--
playVoice( spep_0 + 0, 823 );
setVoiceVolume( spep_0 + 0, 823, 114 );

--「やめろ、ブロリー」--
playVoice( spep_0 + 218, 824 );
setVoiceVolume( spep_0 + 218, 824, 114 );

--「やめろーー！！！」--
playVoice( spep_0 + 462, 825 );
setVoiceVolume( spep_0 + 462, 825, 114 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --860f

else end
