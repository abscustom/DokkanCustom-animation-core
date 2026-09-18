--1031720:LR_ゴールデンフリーザ+ゴジータ_アクティブターゲット集中：ゴールデンフリーザのプライド
--sp_effect_a9_00147
--bs0055

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164062;  -- 顔アップ〜気合いれる ef_001

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
-- 顔アップ〜気合いれる
-------------------------------------------------

MAX_FRAME_0 = 940;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 顔アップ〜気合いれる (ef_001)
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--気を高める
SE003 = playSeVer2( spep_0 + 138, 1278, "",spep_0 + 310, 0, 68, -1);
SE004 = playSeVer2( spep_0 + 138, 1356, "",spep_0 + 300, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 138, SE004, 62 );
SE005 = playSeVer2( spep_0 + 138, 1044, "",spep_0 + 324, 0, 48, -1);

--目光る
SE006 = playSeVer2( spep_0 + 216, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE006, 73 );

--爆発する
SE007 = playSeVer2( spep_0 + 248, 1159, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 248, 1145, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 346, 1371, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE009, 71 );
setStartTimeMs( SE009,  1500 );

--爆発する
SE010 = playSeVer2( spep_0 + 298, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE010, 63 );

--オーラ
SE011 = playSeVer2( spep_0 + 340, 1374, "", 0, 12, 0, -1);
setStartTimeMs( SE011,  467 );

--画面遷移
SE012 = playSeVer2( spep_0 + 346, 8, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 356, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE013, 129 );

--着地
SE014 = playSeVer2( spep_0 + 386, 1190, "",spep_0 + 432, 0, 26, -1);
SE015 = playSeVer2( spep_0 + 388, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE015, 145 );
SE016 = playSeVer2( spep_0 + 392, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE016, 155 );

--手握る
SE017 = playSeVer2( spep_0 + 494, 1344, "",spep_0 + 568, 0, 16, -1);
SE018 = playSeVer2( spep_0 + 542, 1006, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 542, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE019, 74 );

--オーラ
SE020 = playSeVer2( spep_0 + 690, 1371, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE020, 71 );
setStartTimeMs( SE020,  1500 );

--セリフカットイン
SE021 = playSeVer2( spep_0 + 616, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE021, 63 );

--カメラ引く
SE022 = playSeVer2( spep_0 + 676, 44, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 684, 1265, "", 0, 0, 0, -1);

--ラスト決め
SE024 = playSeVer2( spep_0 + 858, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE024, 63 );


-- ** ボイス ** --
--「このゴールデンフリーザの威力を　思い知らせてやりましょう！！」
playVoice( spep_0 + 612, 1066 );
setVoiceVolume( spep_0 + 612, 1066, 126 );


--終わり
endPhase( spep_0 + MAX_FRAME_0); -- 940f

else end