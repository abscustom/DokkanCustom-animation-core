--1029050:LR_孫悟空(身勝手の極意“兆”)_登場時演出
--battle_301295
--pse0056

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3232;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1168;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
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
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 30 );
setTimeStretch( SE001, 1.54, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--髪ゆれる
SE003 = playSeVer2( spep_0 + 0, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );

--立ち絵フェードイン
SE004 = playSeVer2( spep_0 + 24, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 61 );
SE005 = playSeVer2( spep_0 + 118, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE005, 61 );
SE006 = playSeVer2( spep_0 + 182, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE006, 61 );
SE007 = playSeVer2( spep_0 + 232, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE007, 61 );
SE008 = playSeVer2( spep_0 + 288, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE008, 61 );
SE009 = playSeVer2( spep_0 + 354, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE009, 61 );
SE010 = playSeVer2( spep_0 + 418, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE010, 61 );
SE011 = playSeVer2( spep_0 + 474, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE011, 61 );

--セリフカットイン
SE012 = playSeVer2( spep_0 + 542, 1018, "", 0, 0, 0, -1);

--ベジータエネルギー放つ
SE013 = playSeVer2( spep_0 + 654, 1265, "",spep_0 + 842, 0, 68, -1);
SE014 = playSeVer2( spep_0 + 654, 1362, "",spep_0 + 846, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 654, SE014, 67 );
SE015 = playSeVer2( spep_0 + 668, 1328, "", 0, 0, 0, -1);

--オーラ放つ
SE016 = playSeVer2( spep_0 + 824, 1215, "",spep_0 + 946, 24, 70, -1);
setStartTimeMs( SE016,  1400 );
SE017 = playSeVer2( spep_0 + 816, 1266, "", 0, 34, 0, -1);
setSeVolumeByWorkId( spep_0 + 816, SE017, 50 );
setStartTimeMs( SE017,  933 );
SE019 = playSeVer2( spep_0 + 814, 1227, "", 0, 0, 0, -1);
setPitch( spep_0 + 814, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );
SE020 = playSeVer2( spep_0 + 818, 1271, "",spep_0 + 1012, 0, 102, -1);
SE021 = playSeVer2( spep_0 + 830, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE021, 151 );

--画面遷移
SE018 = playSeVer2( spep_0 + 794, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 794, SE018, 79 );
SE022 = playSeVer2( spep_0 + 888, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 888, SE022, 71 );

--目光る
SE023 = playSeVer2( spep_0 + 904, 1303, "",spep_0 + 1064, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 904, SE023, 56 );

--ラスト熱気
SE024 = playSeVer2( spep_0 + 976, 1259, "",spep_0 + 1078, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 976, SE024, 58 );
SE025 = playSeVer2( spep_0 + 988, 1188, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_0 + 988, SE025, 59 );

-- ** ボイス ** --
--「これも人間らしくていいな」
playVoice( spep_0 + 30, 852 );
setVoiceVolume( spep_0 + 30, 852, 100 );

--「悟空!」
playVoice( spep_0 + 122, 853 );
setVoiceVolume( spep_0 + 122, 853, 100 );

--「悟空!」
playVoice( spep_0 + 176, 854 );
setVoiceVolume( spep_0 + 176, 854, 100 );

--「孫!」
playVoice( spep_0 + 238, 855 );
setVoiceVolume( spep_0 + 238, 855, 100 );

--「悟空!」
playVoice( spep_0 + 300, 856 );
setVoiceVolume( spep_0 + 300, 856, 100 );

--「孫悟空さん!」
playVoice( spep_0 + 362, 857 );
setVoiceVolume( spep_0 + 362, 857, 100 );

--「父さん!」
playVoice( spep_0 + 420, 858 );
setVoiceVolume( spep_0 + 420, 858, 100 );

--「悟空！」
playVoice( spep_0 + 480, 859 );
setVoiceVolume( spep_0 + 480, 859, 100 );

--「カカロット…あとは頼んだぞ」
playVoice( spep_0 + 536, 801 );
setVoiceVolume( spep_0 + 536, 801, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1168

else end
