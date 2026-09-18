--1030610:UR_トランクス(幼年期)+孫悟天(幼年期)_合流演出
--battle_301319
--pse0077

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3266;  -- 登場時演出 ef_001


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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 514;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);

--悟天走ってくる
SE003 = playSeVer2( spep_0 + 2, 1108, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 138 );
SE006 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 191 );
SE007 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE007, 237 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 64, 44, "",spep_0 + 120, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 66 );
SE009 = playSeVer2( spep_0 + 64, 1207, "",spep_0 + 114, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 64, SE009, 56 );

--着地
SE010 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE010, 123 );
SE011 = playSeVer2( spep_0 + 100, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE011, 145 );

--画面遷移
SE012 = playSeVer2( spep_0 + 144, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 67 );

--うなづく
SE013 = playSeVer2( spep_0 + 256, 4, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_0 + 316, 1072, "", 0, 0, 0, -1);

--ラスト決め
SE015 = playSeVer2( spep_0 + 356, 1062, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 356, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE016, 63 );

endPhase( spep_0 + MAX_FRAME_0); -- 514F

end
