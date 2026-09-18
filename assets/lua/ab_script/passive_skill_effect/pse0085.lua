--1031280:LR_天津飯_登場時演出
--battle_301328
--pse0085

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3273;  -- 登場時演出 ef_001


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
MAX_FRAME_0 = 514;

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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ドラ
SE002 = playSeVer2( spep_0 + 0, 57, "",spep_0 + 140, 0, 108, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 43 );

--踏み出す
SE003 = playSeVer2( spep_0 + 94, 1192, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 98, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE004, 214 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 112, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 63 );

--拳あわせる
SE006 = playSeVer2( spep_0 + 262, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 270, 1006, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 404, 44, "", 0, 0, 0, -1);

--構える
SE009 = playSeVer2( spep_0 + 436, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE009, 79 );
SE010 = playSeVer2( spep_0 + 444, 1013, "", 0, 0, 0, -1);

--ラスト決め
SE011 = playSeVer2( spep_0 + 460, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE011, 86 );
SE012 = playSeVer2( spep_0 + 460, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE012, 78 );

-- ** ボイス ** --

--「ふふふ・・・」
playVoice( spep_0 + 88, 1006 );
setVoiceVolume( spep_0 + 88, 1006, 124 );

--「やつとならすこしは楽しい勝負ができそうだぜ・・・」
playVoice( spep_0 + 186, 1007 );
setVoiceVolume( spep_0 + 186, 1007, 124 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --514F

end
