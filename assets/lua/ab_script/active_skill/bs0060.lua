-- 1032980:UR_ヤコン_アクティブデバフ：光吸収
-- sp_effect_b4_00417
-- bs0060

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164386; -- アクティブバフ演出 ef_001

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出 (ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 63 );

--口開ける
SE002 = playSeVer2( spep_0 + 18, 1153, "", 0, 8, 0, -1);
setStartTimeMs( SE002,  33 );

--吸い込む
SE003 = playSeVer2( spep_0 + 118, 1407, "",spep_0 + 310, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 120, 1427, "",spep_0 + 310, 0, 20, -1);
SE005 = playSeVer2( spep_0 + 122, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 71 );
SE006 = playSeVer2( spep_0 + 140, 1183, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 140, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE007, 45 );
setTimeStretch( SE007, 2, 30, 4 );
SE008 = playSeVer2( spep_0 + 174, 1258, "", 0, 44, 0, -1);
SE009 = playSeVer2( spep_0 + 248, 1313, "", 0, 0, 0, -1);
setPitch( spep_0 + 248, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );
SE010 = playSeVer2( spep_0 + 248, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE010, 130 );
setPitch( spep_0 + 248, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 248, 1014, "", 0, 0, 0, -1);

--環境音
SE012 = playSeVer2( spep_0 + 266, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE012, 25 );

--飲み込む
SE013 = playSeVer2( spep_0 + 300, 1134, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE013, 120 );

--ゲップ
SE014 = playSeVer2( spep_0 + 374, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE014, 79 );
SE015 = playSeVer2( spep_0 + 374, 1280, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE015, 153 );

-- ** ボイス ** --
--「いただきだーっ！！！」
playVoice( spep_0 + 10, 1164 );
setVoiceVolume( spep_0 + 10, 1164, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 472f

else end