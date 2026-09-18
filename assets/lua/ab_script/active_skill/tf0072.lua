--1029850:UR_フリーザ(最終形態) /クウラ(最終形態)_アクティブ交代
--battle_301306
--tf0072

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3245;  --アクティブ交代演出 ef_001

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブ交代演出
-------------------------------------------------
MAX_FRAME_0 = 860;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブ交代演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩いてくる
SE002 = playSeVer2( spep_0 + 0, 1135, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 36, 1135, "", 0, 0, 0, -1);

--足踏み出す
SE004 = playSeVer2( spep_0 + 122, 1135, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 122, 1347, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 119 );

--画面遷移
SE006 = playSeVer2( spep_0 + 216, 1072, "", 0, 0, 0, -1);

--背景暗くなる
SE007 = playSeVer2( spep_0 + 348, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE007, 146 );

--目光る
SE008 = playSeVer2( spep_0 + 380, 1271, "",spep_0 + 540, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 380, SE008, 127 );
SE009 = playSeVer2( spep_0 + 384, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE009, 65 );

--目線カットイン
SE010 = playSeVer2( spep_0 + 522, 1018, "", 0, 0, 0, -1);

--足太くなる
SE011 = playSeVer2( spep_0 + 522, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 522, 1044, "",spep_0 + 644, 0, 22, -1);
SE013 = playSeVer2( spep_0 + 530, 1190, "", 0, 0, 0, -1);

--カメラ回転する
SE014 = playSeVer2( spep_0 + 608, 8, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 608, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE015, 45 );
SE016 = playSeVer2( spep_0 + 644, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE016, 45 );
setTimeStretch( SE016, 1.4, 30, 4 );
SE017 = playSeVer2( spep_0 + 644, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE017, 77 );

--回転終わり
SE018 = playSeVer2( spep_0 + 706, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 706, 1004, "", 0, 0, 0, -1);

--ラスト決め
SE020 = playSeVer2( spep_0 + 778, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE020, 77 );

-- ** ボイス ** --
--「軍も……一族も……しょせんは淘汰される存在」
playVoice( spep_0 + 0, 879 );
setVoiceVolume( spep_0 + 0, 879, 112 );

--「"最強"を冠するのはたったひとりなのだから…！」
playVoice( spep_0 + 266, 880 );
setVoiceVolume( spep_0 + 268, 880, 112 );

--「…それがこのオレだ！！！」
playVoice( spep_0 + 704, 881 );
setVoiceVolume( spep_0 + 706, 881, 112 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 860F

end
