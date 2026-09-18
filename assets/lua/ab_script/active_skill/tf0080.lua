--1032310:LR_サードアイゴマー_アクティブ巨大化
--sp_effect_a9_00158
--tf0080

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- エフェクト(味方)
SP_01 = 164278; --ef_001 巨大化演出

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 巨大化演出
-------------------------------------------------
MAX_FRAME_0 = 798;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 巨大化演出
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--目が収縮する
SE001 = playSeVer2( spep_0 + 0, 1336, "",spep_0 + 108, 32, 30, -1);
setStartTimeMs( SE001,  1267 );
SE002 = playSeVer2( spep_0 + 0, 1292, "",spep_0 + 96, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 119 );
setPitch( spep_0 + 0, SE002, 700 );
setTimeStretch( SE002, 1.47, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1379, "",spep_0 + 108, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );

--スライム状大きくなる
SE004 = playSeVer2( spep_0 + 102, 1336, "",spep_0 + 228, 44, 30, -1);
setStartTimeMs( SE004,  1067 );
setPitch( spep_0 + 102, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--目の収縮終わり
SE005 = playSeVer2( spep_0 + 80, 1415, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 63 );
setStartTimeMs( SE005,  367 );
SE006 = playSeVer2( spep_0 + 68, 1294, "",spep_0 + 98, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 176 );
SE007 = playSeVer2( spep_0 + 82, 1473, "",spep_0 + 102, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 82, SE007, 145 );

--スライム状大きくなる
SE008 = playSeVer2( spep_0 + 90, 1308, "",spep_0 + 392, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 67 );
SE009 = playSeVer2( spep_0 + 104, 1214, "",spep_0 + 240, 0, 60, -1);
SE010 = playSeVer2( spep_0 + 104, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE010, 69 );

--頭光る
SE011 = playSeVer2( spep_0 + 180, 1239, "",spep_0 + 308, 16, 50, -1);
setStartTimeMs( SE011,  900 );
setPitch( spep_0 + 180, SE011, 800 );
setTimeStretch( SE011, 1.53, 30, 4 );
SE012 = playSeVer2( spep_0 + 176, 1371, "",spep_0 + 384, 0, 58, -1);
setPitch( spep_0 + 176, SE012, -900 );
setTimeStretch( SE012, 0.4, 30, 4 );
SE013 = playSeVer2( spep_0 + 176, 1374, "", 0, 0, 0, -1);
setPitch( spep_0 + 176, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

--目線カットイン
SE014 = playSeVer2( spep_0 + 224, 1018, "", 0, 0, 0, -1);

--目が出現する
SE015 = playSeVer2( spep_0 + 246, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE015, 77 );

--ズームする
SE016 = playSeVer2( spep_0 + 284, 1072, "", 0, 0, 0, -1);

--腕でてくる
SE017 = playSeVer2( spep_0 + 340, 1182, "", 0, 18, 0, -1);
setStartTimeMs( SE017,  33 );
SE018 = playSeVer2( spep_0 + 338, 1116, "",spep_0 + 396, 0, 32, -1);
SE019 = playSeVer2( spep_0 + 344, 1044, "",spep_0 + 526, 0, 50, -1);

--地面叩く
SE020 = playSeVer2( spep_0 + 428, 1061, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 428, 1159, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「フッフッフッフッフ…！」
playVoice( spep_0 + 596, 1093 );
setVoiceVolume( spep_0 + 596, 1093, 100 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0);   --798f


else end