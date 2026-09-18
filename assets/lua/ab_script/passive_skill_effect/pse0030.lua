--1027220:LR_合体ザマス_登場時演出
--battle_301263
--pse0030

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3199;  -- 登場時演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出 (536F)
------------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 536;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
setTimeStretch( SE002, 1.82, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 56 );

--手広げる
SE004 = playSeVer2( spep_0 + 54, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 54, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );

--頭に手を置く
SE005 = playSeVer2( spep_0 + 182, 1116, "",spep_0 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 182, SE005, 61 );
setPitch( spep_0 + 182, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 200, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE006, 68 );
setPitch( spep_0 + 200, SE006, -900 );
setTimeStretch( SE006, 0.4, 30, 4 );

--画面遷移
SE007 = playSeVer2( spep_0 + 402, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE007, 66 );

--最後決め
SE008 = playSeVer2( spep_0 + 460, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE008, 73 );
SE009 = playSeVer2( spep_0 + 460, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE009, 65 );
setPitch( spep_0 + 460, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 460, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE010, 56 );

--ボイス
--「神が行えば善となることも人が行えば、　これみな悪となり罪となるのだ」
playVoice( spep_0 + 12, 676 );
setVoiceVolume( spep_0 + 12, 676, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--終わり
endPhase( spep_0 + MAX_FRAME_0 );--536

else end