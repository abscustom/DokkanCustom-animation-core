-- 1028980:UR_超サイヤ人2トランクス(未来)_登場時演出
-- sp_effect_b4_00328
-- pse0052

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162929;  -- 登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 942;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 332, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--回想
SE002 = playSeVer2( spep_0 + 82, 1266, "",spep_0 + 346, 30, 76, -1);
setStartTimeMs( SE002,  700 );
SE004 = playSeVer2( spep_0 + 86, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 78 );
SE005 = playSeVer2( spep_0 + 86, 1263, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 146, 1288, "",spep_0 + 330, 0, 66, -1);

--目を瞑る
SE003 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 56 );

--回想が廃墟に
SE007 = playSeVer2( spep_0 + 262, 1129, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE007, 39 );
SE008 = playSeVer2( spep_0 + 264, 1271, "",spep_0 + 392, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 264, SE008, 184 );

--環境音（廃墟）
SE009 = playSeVer2( spep_0 + 274, 1269, "",spep_0 + 506, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 274, SE009, 32 );
setPitch( spep_0 + 274, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );

--環境音
SE010 = playSeVer2( spep_0 + 400, 1269, "", spep_0 + 620, 50, 20, -1);
setSeVolumeByWorkId( spep_0 + 400, SE010, 25 );
setStartTimeMs( SE010,  67 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 432, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE011, 63 );

--気ダメ予兆
SE012 = playSeVer2( spep_0 + 524, 1157, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 524, 1147, "",spep_0 + 638, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 524, SE013, 54 );

--気ダメ
SE014 = playSeVer2( spep_0 + 586, 1035, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 610, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE015, 63 );
SE016 = playSeVer2( spep_0 + 634, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE016, 63 );
SE017 = playSeVer2( spep_0 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE017, 63 );
SE018 = playSeVer2( spep_0 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE018, 63 );
SE020 = playSeVer2( spep_0 + 706, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE020, 63 );
SE021 = playSeVer2( spep_0 + 730, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE021, 63 );
SE023 = playSeVer2( spep_0 + 754, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754, SE023, 63 );
SE024 = playSeVer2( spep_0 + 778, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE024, 63 );
SE025 = playSeVer2( spep_0 + 802, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE025, 63 );
SE026 = playSeVer2( spep_0 + 826, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE026, 63 );
SE027 = playSeVer2( spep_0 + 850, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 850, SE027, 63 );
SE029 = playSeVer2( spep_0 + 874, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 874, SE029, 63 );
SE030 = playSeVer2( spep_0 + 896, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 896, SE030, 63 );

--画面遷移
SE019 = playSeVer2( spep_0 + 700, 1072, "", 0, 0, 0, -1);

--イナヅマ
SE022 = playSeVer2( spep_0 + 732, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE022, 40 );
SE028 = playSeVer2( spep_0 + 864, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 864, SE028, 40 );

-- ** ボイス ** --
--「見ていてください！」
playVoice( spep_0 + 430, 798 );
setVoiceVolume( spep_0 + 430, 798, 110 );

--「みんなが笑ってすごせる世界を取りもどしてみせますから！」
playVoice( spep_0 + 614, 799 );
setVoiceVolume( spep_0 + 614, 799, 110 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 942

else end
