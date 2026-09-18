--1033970:LR_フリーザ(最終形態)_アクティブバフ：フリーザ恐怖の宣言
--battle_301359
--tf0087

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3311; --アクティブバフ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- アクティブバフ
------------------------------------------------------
MAX_FRAME_0 = 888;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アクティブバフ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--右手出す
SE002 = playSeVer2( spep_0 + 25, 44, "",spep_0 + 99, 0, 43, -1);
setSeVolumeByWorkId( spep_0 + 25, SE002, 71 );
SE003 = playSeVer2( spep_0 + 38, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 58 );
setPitch( spep_0 + 38, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
--左手出す
SE004 = playSeVer2( spep_0 + 140, 44, "",spep_0 + 215, 0, 43, -1);
setSeVolumeByWorkId( spep_0 + 140, SE004, 79 );
setPitch( spep_0 + 140, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 159, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 159, SE005, 64 );
setPitch( spep_0 + 159, SE005, -900 );
setTimeStretch( SE005, 0.4, 30, 4 );
--足踏み出す
SE006 = playSeVer2( spep_0 + 316, 1472, "", 0, 0, 0, -1);
--セリフカットイン
SE007 = playSeVer2( spep_0 + 408, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE007, 63 );
--画面遷移
SE008 = playSeVer2( spep_0 + 755, 1072, "", 0, 11, 0, -1);
setStartTimeMs( SE008,  317 );
--ラスト睨む
SE009 = playSeVer2( spep_0 + 762, 1271, "",spep_0 + 893, 0, 47, -1);
SE010 = playSeVer2( spep_0 + 768, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE010, 82 );

-- ** ボイス ** --
--「たのしかったよ……」
playVoice( spep_0 + 408, 1233 );
setVoiceVolume( spep_0 + 408, 1233, 112 );
--「こんなに運動をしたのはほんとうにひさしぶりだった…」
playVoice( spep_0 + 499, 1234 );
setVoiceVolume( spep_0 + 499, 1234, 112 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 888f

end