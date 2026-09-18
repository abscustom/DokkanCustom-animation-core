-- 1029360:LR_超サイヤ人孫悟空&超サイヤ人トランクス(青年期)&超サイヤ人孫悟飯(少年期)_スタンバイ
-- sp_effect_b4_00341
-- stb0010

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163103;  -- ef_001 歩き〜セリフ叫び

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
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 歩き〜セリフ叫び
------------------------------------------------------
MAX_FRAME_0 = 942;

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );      -- ef_001 歩き〜セリフ叫び
setEffMoveKey( spep_0 + 0, standby_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, standby_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, standby_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, standby_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, standby_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, standby_f, 0 );
setEffAlphaKey( spep_0 + 0, standby_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, standby_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩く
SE002 = playSeVer2( spep_0 + 44, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE002, 135 );
SE003 = playSeVer2( spep_0 + 90, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE003, 136 );
SE004 = playSeVer2( spep_0 + 130, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE004, 148 );

--環境音
SE005 = playSeVer2( spep_0 + 134, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE005, 25 );

--ベジータ力つきる
SE006 = playSeVer2( spep_0 + 148, 1331, "",spep_0 + 212, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 148, SE006, 61 );

--画面遷移
SE007 = playSeVer2( spep_0 + 190, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE007, 72 );
SE008 = playSeVer2( spep_0 + 256, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE008, 52 );
setPitch( spep_0 + 256, SE008, -300 );
setTimeStretch( SE008, 0.8, 30, 4 );
SE009 = playSeVer2( spep_0 + 306, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE009, 56 );
setPitch( spep_0 + 306, SE009, 300 );
setTimeStretch( SE009, 1.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 378, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE010, 71 );

--歩く
SE011 = playSeVer2( spep_0 + 378, 1106, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 378, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 424, 1108, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 424, 1107, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 468, 1108, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 468, 1106, "", 0, 0, 0, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 472, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE015, 63 );

--叫ぶ
SE018 = playSeVer2( spep_0 + 712, 1237, "", 0, 0, 0, -1);
setStartTimeMs( SE018,  167 );
SE019 = playSeVer2( spep_0 + 712, 1114, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 712, 1047, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 712, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 712, SE021, 54 );

--ラスト集中線
SE022 = playSeVer2( spep_0 + 792, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE022, 42 );
SE023 = playSeVer2( spep_0 + 792, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE023, 71 );
SE024 = playSeVer2( spep_0 + 792, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE024, 60 );
SE025 = playSeVer2( spep_0 + 808, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE025, 53 );
SE026 = playSeVer2( spep_0 + 808, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE026, 71 );

-- ** ボイス ** --
--「パワーをくれ。やつを倒せる」
playVoice( spep_0 + 480, 817 );
setVoiceVolume( spep_0 + 480, 817, 110 );

--「パワーをくれー！」
playVoice( spep_0 + 694, 818 );
setVoiceVolume( spep_0 + 694, 818, 110 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 942

else end