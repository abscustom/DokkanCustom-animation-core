--1034410:UR_パンジ_登場時演出
--sp_effect_a9_00176
--pse0129

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164538; --セリフカットイン〜フィニッシュまで ef_001

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
-- 最初 〜 最後まで
------------------------------------------------------
MAX_FRAME_0 = 476;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜フィニッシュまで(ef_001)
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
SE002 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);

--マント翻る
SE003 = playSeVer2( spep_0 + 10, 1332, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 69 );
setStartTimeMs( SE003,  117 );

--ズーム
SE004 = playSeVer2( spep_0 + 40, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 70 );
SE006 = playSeVer2( spep_0 + 70, 1072, "", 0, 0, 0, -1);

--マント翻る
SE005 = playSeVer2( spep_0 + 50, 1331, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 121, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 121, SE007, 76 );
setPitch( spep_0 + 121, SE007, -600 );
setTimeStretch( SE007, 0.6, 30, 4 );

--マント脱ぐ
SE008 = playSeVer2( spep_0 + 192, 1333, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE008, 141 );
setStartTimeMs( SE008,  367 );
SE009 = playSeVer2( spep_0 + 210, 1317, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE009, 122 );
SE010 = playSeVer2( spep_0 + 210, 1013, "", 0, 0, 0, -1);

--セリフカットイン
SE011 = playSeVer2( spep_0 + 230, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE011, 63 );

--環境音
SE012 = playSeVer2( spep_0 + 224, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE012, 23 );
setPitch( spep_0 + 224, SE012, 600 );
setTimeStretch( SE012, 1.4, 30, 4 );

--マントなびく
SE013 = playSeVer2( spep_0 + 250, 1332, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 288, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE014, 52 );
SE015 = playSeVer2( spep_0 + 308, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE015, 63 );
SE016 = playSeVer2( spep_0 + 358, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE016, 45 );
SE017 = playSeVer2( spep_0 + 420, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE017, 76 );

--ラスト決め
SE018 = playSeVer2( spep_0 + 421, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 421, SE018, 66 );
SE019 = playSeVer2( spep_0 + 421, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 421, SE019, 58 );


-- ** ボイス ** --
--「あたしはパンジ！あたしもいっしょに行く！」
playVoice( spep_0 + 232, 1230 );
setVoiceVolume( spep_0 + 232, 1230, 116 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 476f

end