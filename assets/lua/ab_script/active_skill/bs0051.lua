-- 4030440:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空_アクティブバフ：純粋サイヤ人のプライド
-- battle_301308
-- bs0051

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3258; -- アクティブバフ演出 ef_001

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

MAX_FRAME_0 = 770;

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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--ポタラ握る
SE003 = playSeVer2( spep_0 + 110, 1372, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE003, 351 );
setStartTimeMs( SE003,  1167 );
SE004 = playSeVer2( spep_0 + 118, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE004, 63 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 144, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE005, 63 );

--ポタラ握り潰す
SE006 = playSeVer2( spep_0 + 348, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE006, 60 );
SE007 = playSeVer2( spep_0 + 354, 1250, "",spep_0 + 438, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 354, SE007, 69 );
SE008 = playSeVer2( spep_0 + 354, 1469, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE008, 68 );
SE009 = playSeVer2( spep_0 + 366, 1372, "",spep_0 + 442, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 366, SE009, 314 );

--画面遷移
SE010 = playSeVer2( spep_0 + 536, 1232, "", 0, 0, 0, -1);

--気ダメ
SE011 = playSeVer2( spep_0 + 648, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE011, 119 );
SE012 = playSeVer2( spep_0 + 648, 1126, "",spep_0 + 744, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 648, SE012, 48 );
SE013 = playSeVer2( spep_0 + 648, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE013, 68 );

--オーラ
SE014 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE014, 63 );
SE015 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE015, 63 );
SE019 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE019, 63 );
SE020 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE020, 63 );
SE021 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE021, 63 );

--ラスト決め
SE016 = playSeVer2( spep_0 + 680, 12, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 680, 1062, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 680, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE018, 71 );

-- ** 音 ** --
--「…やっぱこいつはオラたち向きじゃねえ……」
playVoice( spep_0 + 132, 908 );
setVoiceVolume( spep_0 + 132, 908, 116 );

--「…よく言ったなカカロット それこそが……」
playVoice( spep_0 + 330, 909 );
setVoiceVolume( spep_0 + 330, 909, 116 );

--「サイヤ人だ」
playVoice( spep_0 + 534, 910 );
setVoiceVolume( spep_0 + 534, 910, 116 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 770f

else end