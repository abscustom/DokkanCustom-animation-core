--1033010:UR_ダーブラ_登場時演出
--sp_effect_b4_00420
--pse0113
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(味方)
SP_01 = 164391; --登場時演出 ef_001

 
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
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 1078;
 
setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --登場時演出(ef_001)
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

--扉開く
SE002 = playSeVer2( spep_0 + 14, 91, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1506, "", 0, 0, 0, -1);
setPitch( spep_0 + 28, SE003, -400 );
setTimeStretch( SE003, 1.7, 30, 4 );
SE004 = playSeVer2( spep_0 + 28, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 146 );
SE005 = playSeVer2( spep_0 + 238, 92, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE005, 63 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 334, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE006, 63 );

--煙出る
SE007 = playSeVer2( spep_0 + 716, 1219, "", 0, 0, 0, -1);

--踏み出す
SE008 = playSeVer2( spep_0 + 880, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE008, 155 );
SE009 = playSeVer2( spep_0 + 910, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE009, 170 );

--ラスト決め
SE010 = playSeVer2( spep_0 + 950, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 954, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 954, SE011, 66 );
SE012 = playSeVer2( spep_0 + 988, 1332, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「ここまでだったな。 このわたしが、あいてをすることになってしまった……」
playVoice( spep_0 + 332, 1161 );
setVoiceVolume( spep_0 + 332, 1161, 100 );

--「さっさとかかってこい」
playVoice( spep_0 + 958, 1162 );
setVoiceVolume( spep_0 + 958, 1162, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 1078f
 
end