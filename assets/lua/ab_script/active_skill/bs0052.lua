-- 4030540:LR_孫悟空+フリーザ(最終形態)(天使)_アクティブ回復＋バフ：フリーザからのほどこし
-- battle_301317
-- bs0052

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3263; -- アクティブバフ演出 ef_001

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
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 1100;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出(ef_001)
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
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1444, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1449, "",spep_0 + 144, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 132 );
SE003 = playSeVer2( spep_0 + 0, 1281, "",spep_0 + 142, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );

--入り
SE004 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 73 );

--気弾発射
SE005 = playSeVer2( spep_0 + 74, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 61 );
SE006 = playSeVer2( spep_0 + 74, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 126 );
SE007 = playSeVer2( spep_0 + 74, 1423, "",spep_0 + 216, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 74, SE007, 73 );
SE008 = playSeVer2( spep_0 + 74, 1446, "",spep_0 + 216, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 74, SE008, 81 );

--気弾まとわりつく
SE009 = playSeVer2( spep_0 + 192, 1478, "",spep_0 + 282, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 174 );

--気弾弾ける
SE010 = playSeVer2( spep_0 + 232, 1479, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE010, 157 );

--煙
SE011 = playSeVer2( spep_0 + 240, 1219, "",spep_0 + 406, 0, 54, -1);

--環境音
SE012 = playSeVer2( spep_0 + 240, 1269, "", 0, 58, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 25 );

--拳握る
SE013 = playSeVer2( spep_0 + 394, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 438, 1189, "", 0, 0, 0, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 500, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE015, 63 );

--画面遷移
SE016 = playSeVer2( spep_0 + 686, 8, "", 0, 0, 0, -1);

--悟空エネルギーわける
SE017 = playSeVer2( spep_0 + 716, 63, "",spep_0 + 798, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 716, SE017, 77 );
SE018 = playSeVer2( spep_0 + 716, 1046, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE018, 71 );
SE019 = playSeVer2( spep_0 + 718, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 718, SE019, 74 );
setPitch( spep_0 + 718, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );
SE020 = playSeVer2( spep_0 + 730, 1176, "",spep_0 + 904, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 730, SE020, 37 );
SE021 = playSeVer2( spep_0 + 730, 1211, "",spep_0 + 906, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 730, SE021, 115 );

--画面遷移
SE022 = playSeVer2( spep_0 + 856, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「力が……！」
playVoice( spep_0 + 406, 947 );
setVoiceVolume( spep_0 + 406, 947, 122 );

--「わたしの気を少しわけてあげたんですよ」
playVoice( spep_0 + 502, 948 );
setVoiceVolume( spep_0 + 502, 948, 122 );

--「これで…貸し借りなしですよ」
playVoice( spep_0 + 890, 949 );
setVoiceVolume( spep_0 + 890, 949, 122 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1100f

else end