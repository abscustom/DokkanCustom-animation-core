--1028320:LR_孫悟飯(ビースト)_アクティブバフ：悟飯の自信
--battle_301283
--bs0042

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3220; --アクティブバフ ef_001

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

MAX_FRAME_0 = 422;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--爆発
SE002 = playSeVer2( spep_0 + 6, 1024, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1023, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 56, 1067, "", 0, 0, 0, -1);

--歩いてくる
SE005 = playSeVer2( spep_0 + 106, 1033, "",spep_0 + 158, 12, 16, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 55 );
SE006 = playSeVer2( spep_0 + 110, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 200 );
SE007 = playSeVer2( spep_0 + 148, 1033, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 79 );
SE008 = playSeVer2( spep_0 + 152, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE008, 200 );

--画面遷移
SE009 = playSeVer2( spep_0 + 196, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE009, 54 );
setPitch( spep_0 + 196, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );

--足を止める
SE010 = playSeVer2( spep_0 + 202, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE010, 168 );
SE011 = playSeVer2( spep_0 + 202, 1192, "",spep_0 + 234, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 202, SE011, 151 );

--画面遷移
SE012 = playSeVer2( spep_0 + 220, 1188, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE012, 52 );

--セリフカットイン
SE013 = playSeVer2( spep_0 + 318, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE013, 63 );

--ラスト決め
SE014 = playSeVer2( spep_0 + 318, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE014, 56 );

-- ** ボイス ** --
--「この程度か」
playVoice( spep_0 + 310, 750 );
setVoiceVolume( spep_0 + 310, 750, 116 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);  --422f

else end