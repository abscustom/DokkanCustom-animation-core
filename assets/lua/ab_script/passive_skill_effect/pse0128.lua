--1034430:UR_ドクター・アリンス_登場時演出
--sp_effect_a9_00178
--pse0128

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164530 --前面書き文字用 ef_001

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
MAX_FRAME_0 = 1532;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面書き文字用(ef_001)
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
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 21 );
setTimeStretch( SE001, 1.43, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1495, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 36 );
setPitch( spep_0 + 0, SE002, -900 );
setTimeStretch( SE002, 0.4, 30, 4 );

--入り
SE003 = playSeVer2( spep_0 + 1, 44, "", 0, 0, 0, -1);

--回転
SE004 = playSeVer2( spep_0 + 68, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 59 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 182, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE005, 63 );

--画面遷移
SE006 = playSeVer2( spep_0 + 477, 8, "", 0, 0, 0, -1);

--鍋音
SE007 = playSeVer2( spep_0 + 505, 1457, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 505, SE007, 45 );
SE008 = playSeVer2( spep_0 + 505, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 505, SE008, 41 );
setPitch( spep_0 + 505, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );
SE009 = playSeVer2( spep_0 + 662, 1471, "", 0, 10, 0, -1);
setStartTimeMs( SE009,  900 );
SE011 = playSeVer2( spep_0 + 746, 1471, "", 0, 10, 0, -1);
setStartTimeMs( SE011,  900 );

--噴き上がる
SE010 = playSeVer2( spep_0 + 681, 1027, "", 0, 14, 0, -1);
setStartTimeMs( SE010,  50 );
SE012 = playSeVer2( spep_0 + 750, 1027, "", 0, 14, 0, -1);
setStartTimeMs( SE012,  50 );

--唾液落ちる
SE013 = playSeVer2( spep_0 + 914, 1518, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 938, 1519, "", 0, 0, 0, -1);

--光たちのぼる
SE015 = playSeVer2( spep_0 + 1058, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE015, 62 );
SE016 = playSeVer2( spep_0 + 1064, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE016, 75 );
SE017 = playSeVer2( spep_0 + 1064, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE017, 82 );
SE018 = playSeVer2( spep_0 + 1076, 1226, "",spep_0 + 1341, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE018, 63 );
SE019 = playSeVer2( spep_0 + 1076, 1391, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE019, 62 );
setPitch( spep_0 + 1076, SE019, 500 );
setTimeStretch( SE019, 1.33, 30, 4 );
SE020 = playSeVer2( spep_0 + 1149, 1404, "", 0, 0, 0, -1);

--気が弾ける
SE021 = playSeVer2( spep_0 + 1291, 1479, "", 0, 0, 0, -1);

--環境音
SE022 = playSeVer2( spep_0 + 1291, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1291, SE022, 25 );

--ラスト決め
SE023 = playSeVer2( spep_0 + 1333, 1062, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 1333, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1333, SE024, 58 );

-- ** ボイス ** --
--「じゃあ 本命の作戦に取りかかるとするか」
playVoice( spep_0 + 182, 1231 );
setVoiceVolume( spep_0 + 182, 1231, 100 );

-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1532f

end