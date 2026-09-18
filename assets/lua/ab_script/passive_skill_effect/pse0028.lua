-- 1026730: LR_ドクターウイロー_登場時演出
-- battle_301257
-- pse0028

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_01 = 3196;  -- 登場時演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場時演出 (516F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + 516, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + 516, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + 516, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + 516, entry_SP_01, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 210, 0, 140, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--画面遷移
SE003 = playSeVer2( spep_0 + 84, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE003, 72 );

--ズームイン
SE004 = playSeVer2( spep_0 + 108, 1203, "",spep_0 + 264, 44, 44, -1);
setSeVolumeByWorkId( spep_0 + 108, SE004, 60 );
SE005 = playSeVer2( spep_0 + 114, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 81 );
setPitch( spep_0 + 114, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 188, 1072, "", 0, 0, 0, -1);

--セリフカットイン
SE007 = playSeVer2( spep_0 + 206, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 56 );

--環境音
SE008 = playSeVer2( spep_0 + 276, 1371, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE008, 50 );
setStartTimeMs( SE008,  1000 );
setPitch( spep_0 + 276, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 230, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE009, 18 );

--泡
SE010 = playSeVer2( spep_0 + 340, 1173, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE010, 68 );
setStartTimeMs( SE010,  500 );
setPitch( spep_0 + 340, SE010, 500 );
setTimeStretch( SE010, 1.33, 30, 4 );
setBandpassFilter( spep_0 + 340, SE010, 560, 24000 );
SE011 = playSeVer2( spep_0 + 358, 1202, "",spep_0 + 426, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 358, SE011, 71 );
setPitch( spep_0 + 358, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );
SE012 = playSeVer2( spep_0 + 404, 1202, "",spep_0 + 514, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 404, SE012, 65 );
setPitch( spep_0 + 404, SE012, -800 );
setTimeStretch( SE012, 0.47, 30, 4 );
SE013 = playSeVer2( spep_0 + 466, 1173, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE013, 54 );
setStartTimeMs( SE013,  467 );
setPitch( spep_0 + 466, SE013, 500 );
setTimeStretch( SE013, 1.33, 30, 4 );
setBandpassFilter( spep_0 + 466, SE013, 560, 24000 );

--ボイス
--「ふふふ！私の出番がまわってこようとはな！！」
playVoice( spep_0 + 190, 648 );
setVoiceVolume( spep_0 + 190, 648, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 516 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
endPhase( spep_0 + 516 );

else end
