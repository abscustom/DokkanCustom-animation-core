-- 1028720: LR_ギニュー(特戦隊)_アクティブバフ：スペシャルファイティングポーズ
-- battle_301285
-- bs0044

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3228; -- アクティブバフ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブバフ
-------------------------------------------------

MAX_FRAME_0 = 602;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--空気音
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 152, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 36 );

--カメラパン
SE002 = playSeVer2( spep_0 + 4, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 67 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 18, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 56 );

--ギニュー光溢れる
SE004 = playSeVer2( spep_0 + 182, 1437, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE004, 72 );
setStartTimeMs( SE004,  2233 );
setPitch( spep_0 + 182, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

--５人並ぶ
SE005 = playSeVer2( spep_0 + 104, 1232, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 108, 1369, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 112, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 79 );

--ギニュー構える
SE008 = playSeVer2( spep_0 + 178, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1006, "", 0, 0, 0, -1);

--ギニュー光溢れる
SE009 = playSeVer2( spep_0 + 194, 1434, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE009, 71 );
setStartTimeMs( SE009,  267 );
setPitch( spep_0 + 194, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE011 = playSeVer2( spep_0 + 196, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE011, 69 );
setPitch( spep_0 + 196, SE011, -600 );
setTimeStretch( SE011, 0.6, 30, 4 );

--５人顔アップ
SE012 = playSeVer2( spep_0 + 248, 1354, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 254, 8, "", 0, 0, 0, -1);

--力溜める
SE014 = playSeVer2( spep_0 + 302, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 302, 1263, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 308, 1264, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE016, 66 );
setStartTimeMs( SE016,  100 );
SE017 = playSeVer2( spep_0 + 316, 1363, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE017, 60 );
setPitch( spep_0 + 316, SE017, 600 );
setTimeStretch( SE017, 1.4, 30, 4 );

--爆発
SE018 = playSeVer2( spep_0 + 428, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE018, 65 );
SE019 = playSeVer2( spep_0 + 434, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE019, 63 );
SE020 = playSeVer2( spep_0 + 436, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE020, 83 );
setPitch( spep_0 + 436, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );
SE021 = playSeVer2( spep_0 + 436, 1062, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「では ゆくぞ！！」
playVoice( spep_0 + 14, 781 );
setVoiceVolume( spep_0 + 14, 781, 116 );

--「これがギニュー特戦隊のスペシャルファイティングポーズだ！！！！」
playVoice( spep_0 + 298, 782 );
setVoiceVolume( spep_0 + 298, 782, 116 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 602

else end