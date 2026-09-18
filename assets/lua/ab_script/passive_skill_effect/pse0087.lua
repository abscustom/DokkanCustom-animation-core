--1031430:LR_ゴクウブラック(超サイヤ人ロゼ)+ザマス_：合流演出
--sp_effect_b4_00391
--pse0087

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163963;  -- 合流演出 ef_001


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
-- 合流演出
-------------------------------------------------
MAX_FRAME_0 = 1062;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 合流演出(ef_001)
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

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 63 );

--光おりてくる
SE003 = playSeVer2( spep_0 + 262, 1437, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE003, 58 );
setStartTimeMs( SE003,  2067 );

--雲間光る
SE004 = playSeVer2( spep_0 + 204, 1264, "", 0, 0, 0, -1);
setPitch( spep_0 + 204, SE004, -900 );
setTimeStretch( SE004, 0.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 204, 1265, "", 0, 0, 0, -1);

--光おりてくる
SE006 = playSeVer2( spep_0 + 278, 1371, "", 0, 0, 0, -1);
setPitch( spep_0 + 278, SE006, -300 );
setTimeStretch( SE006, 0.9, 30, 4 );

--着地
SE007 = playSeVer2( spep_0 + 772, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE007, 170 );
SE008 = playSeVer2( spep_0 + 778, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE008, 191 );

--腕上げる
SE009 = playSeVer2( spep_0 + 908, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 908, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 908, SE010, 170 );

--構える
SE011 = playSeVer2( spep_0 + 934, 1233, "", 0, 0, 0, -1);

--ラスト決め
SE012 = playSeVer2( spep_0 + 972, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「オレの正義を成し遂げるには最高の理解者が必要だった」
playVoice( spep_0 + 6, 1022 );
setVoiceVolume( spep_0 + 6, 1022, 116 );

--「今この世界で絶対的な力を持つのは私と私」
playVoice( spep_0 + 436, 1023 );
setVoiceVolume( spep_0 + 436, 1023, 116 );

--「この二人だけだ」
playVoice( spep_0 + 858, 1024 );
setVoiceVolume( spep_0 + 858, 1024, 116 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1062F

else end
