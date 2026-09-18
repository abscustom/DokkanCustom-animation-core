-- 1028790: UR_超サイヤ人3孫悟空(天使)_登場時演出
-- sp_effect_b4_00327
-- pse0050

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162885;  -- 登場時演出 ef_001

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
-- 登場時演出 ef_001
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1072;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
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
--冒頭イナヅマ
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 202, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 56 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 56 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 56 );
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 56 );
SE011 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 56 );
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 56 );
SE015 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE015, 56 );
--冒頭環境音
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 196, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
--顔アップ
SE007 = playSeVer2( spep_0 + 80, 17, "",spep_0 + 150, 0, 28, -1);
SE008 = playSeVer2( spep_0 + 84, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE008, 40 );
SE009 = playSeVer2( spep_0 + 84, 1213, "",spep_0 + 248, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 84, SE009, 60 );
--破片飛んでくる
SE012 = playSeVer2( spep_0 + 130, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE012, 40 );
SE013 = playSeVer2( spep_0 + 134, 1403, "",spep_0 + 292, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 164 );
--悟空回転する
SE016 = playSeVer2( spep_0 + 238, 1288, "",spep_0 + 548, 64, 44, -1);
setSeVolumeByWorkId( spep_0 + 238, SE016, 73 );
setStartTimeMs( SE016,  1100 );
SE019 = playSeVer2( spep_0 + 294, 1241, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 354, 1396, "",spep_0 + 492, 0, 62, -1);
--大猿吠える
SE017 = playSeVer2( spep_0 + 196, 1066, "",spep_0 + 360, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 196, SE017, 120 );
SE018 = playSeVer2( spep_0 + 196, 1308, "",spep_0 + 540, 0, 42, -1);
--画面遷移
SE021 = playSeVer2( spep_0 + 450, 1072, "", 0, 0, 0, -1);
--気が爆発する
SE022 = playSeVer2( spep_0 + 486, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE022, 70 );
SE023 = playSeVer2( spep_0 + 490, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE023, 67 );
SE024 = playSeVer2( spep_0 + 490, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE024, 58 );
--画面遷移
SE025 = playSeVer2( spep_0 + 558, 8, "", 0, 0, 0, -1);
--オーラ
SE026 = playSeVer2( spep_0 + 582, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE026, 35 );
SE027 = playSeVer2( spep_0 + 592, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE027, 32 );
SE029 = playSeVer2( spep_0 + 616, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE029, 32 );
SE030 = playSeVer2( spep_0 + 640, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE030, 32 );
SE031 = playSeVer2( spep_0 + 664, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE031, 32 );
SE032 = playSeVer2( spep_0 + 688, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE032, 32 );
SE034 = playSeVer2( spep_0 + 712, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 712, SE034, 32 );
SE036 = playSeVer2( spep_0 + 736, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE036, 32 );
SE037 = playSeVer2( spep_0 + 760, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 760, SE037, 32 );
SE038 = playSeVer2( spep_0 + 784, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE038, 32 );
SE039 = playSeVer2( spep_0 + 808, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE039, 32 );
SE040 = playSeVer2( spep_0 + 832, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE040, 32 );
SE041 = playSeVer2( spep_0 + 856, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE041, 32 );
SE042 = playSeVer2( spep_0 + 880, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE042, 32 );
SE043 = playSeVer2( spep_0 + 904, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 904, SE043, 32 );
SE046 = playSeVer2( spep_0 + 928, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 928, SE046, 32 );
SE048 = playSeVer2( spep_0 + 952, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 952, SE048, 32 );
SE049 = playSeVer2( spep_0 + 976, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 976, SE049, 32 );
SE050 = playSeVer2( spep_0 + 1000, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1000, SE050, 32 );
SE051 = playSeVer2( spep_0 + 1024, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1024, SE051, 32 );
SE052 = playSeVer2( spep_0 + 1048, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1048, SE052, 32 );
--イナヅマ
SE028 = playSeVer2( spep_0 + 596, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE028, 40 );
SE035 = playSeVer2( spep_0 + 730, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE035, 40 );
SE047 = playSeVer2( spep_0 + 936, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 936, SE047, 40 );
--セリフカットイン	
SE033 = playSeVer2( spep_0 + 678, 1018, "", 0, 0, 0, -1);
--ラスト決め
SE044 = playSeVer2( spep_0 + 890, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 890, SE044, 60 );
SE045 = playSeVer2( spep_0 + 890, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 890, SE045, 64 );

-- ** ボイス ** --
--「ぐ……ぐ……」
playVoice( spep_0 + 0, 783 );
setVoiceVolume( spep_0 + 0, 783, 100 );

--「ああああ……」
playVoice( spep_0 + 80, 784 );
setVoiceVolume( spep_0 + 80, 784, 100 );

--「時間がかかって、すまなかったな。 まだこの変化に慣れていないんだ……」
playVoice( spep_0 + 681, 785 );
setVoiceVolume( spep_0 + 681, 785, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 1072

else end
