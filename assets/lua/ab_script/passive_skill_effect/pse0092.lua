--1031920:LR_ブロリー(怒り)_登場時演出
--battle_301333
--pse0092

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3279;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1036;

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

--入り
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 202, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 146 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 202, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 33 );
--構える
SE003 = playSeVer2( spep_0 + 8, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 100 );
setPitch( spep_0 + 8, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
--オーラ湧き上がる
SE004 = playSeVer2( spep_0 + 146, 1371, "",spep_0 + 380, 14, 64, -1);
setSeVolumeByWorkId( spep_0 + 146, SE004, 88 );
setStartTimeMs( SE004, 1500 );
setPitch( spep_0 + 146, SE004, -1000 );
setTimeStretch( SE004, 0.33, 30, 4 );
--気ダメ
SE005 = playSeVer2( spep_0 + 138, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 142, 1503, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 142, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE007, 174 );
SE008 = playSeVer2( spep_0 + 154, 1504, "", 0, 0, 0, -1);
--オーラ湧き上がる
SE009 = playSeVer2( spep_0 + 156, 1227, "",spep_0 + 366, 0, 74, -1);
SE010 = playSeVer2( spep_0 + 164, 1176, "",spep_0 + 370, 0, 78, -1);
SE011 = playSeVer2( spep_0 + 200, 1216, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE011, 79 );
--オーラ弾ける
SE012 = playSeVer2( spep_0 + 276, 1137, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 276, 1145, "", 0, 0, 0, -1);
--環境音
SE014 = playSeVer2( spep_0 + 290, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE014, 25 );
--セリフカットイン
SE015 = playSeVer2( spep_0 + 376, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE015, 63 );
--空気音
SE016 = playSeVer2( spep_0 + 790, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE016, 42 );
--ズーム
SE017 = playSeVer2( spep_0 + 812, 1072, "", 0, 0, 0, -1);
--地響き
SE018 = playSeVer2( spep_0 + 842, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE018, 35 );
--ラスト決め
SE019 = playSeVer2( spep_0 + 942, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE019, 68 );
SE020 = playSeVer2( spep_0 + 950, 1369, "", 0, 0, 0, -1);
-- ** ボイス ** --

--「うぅああぁぁーーっ！！！！」
playVoice( spep_0 + 56, 1070 );
setVoiceVolume( spep_0 + 56, 1070, 120 );

--「あそこまですごかったんだ…あいつ……！」
playVoice( spep_0 + 371, 1071 );
setVoiceVolume( spep_0 + 371, 1071, 120 );

--「だが ありゃ…　まともじゃないぞ……」
playVoice( spep_0 + 561, 1072 );
setVoiceVolume( spep_0 + 561, 1072, 120 );

--「ああぁぁーーっ！！！！」
playVoice( spep_0 + 842, 1073 );
setVoiceVolume( spep_0 + 842, 1073, 120 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1036

else end
