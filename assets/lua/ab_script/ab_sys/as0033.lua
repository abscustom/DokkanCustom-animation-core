--1034550:UR_ドクター・ゲロ_気弾吸収
--battle_39115
--as0033

setPhase(9); --フェーズ9開始

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 3317; --気弾吸収 ef_001

setEnvZoomEnable(0, 0); -- ズーム許可
removeAllEffect(2); --必要

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

setAlphaKey( 0, 1, 255 ); -- 初期化のため、コメントしない



ENABLE_AUTO_TIME_STRETCH(0.82);

------------------------------------------------------------------------------------------------------------
-- 冒頭
------------------------------------------------------------------------------------------------------------

-- ** 白フェード ** --
entryFade( 4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );

flipAttackerSide(0) -- 味方側の場合はあり（敵側の場合はコメントアウト）

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 4; -- 4F固定 (顔カットインが入るため)

setupMovie(spep_0, SP_01, 0, 1);

-------------------------------------------------
-- 気弾吸収
-------------------------------------------------
MAX_FRAME_0 = 422;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気弾吸収(ef_001)
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


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--気弾発射される
SE001 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 64 );
--とびたつ
SE002 = playSeVer2( spep_0 + 39, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 39, SE002, 94 );
SE003 = playSeVer2( spep_0 + 39, 1117, "",spep_0 + 88, 0, 25, -1);
--着地
SE004 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 186 );
SE005 = playSeVer2( spep_0 + 64, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 146 );
--気弾迫ってくる
SE006 = playSeVer2( spep_0 + 75, 1215, "",spep_0 + 302, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 75, 1161, "",spep_0 + 304, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 75, SE007, 60 );
SE008 = playSeVer2( spep_0 + 79, 1177, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 79, 1183, "", 0, 0, 0, -1);
--気弾吸収
SE010 = playSeVer2( spep_0 + 188, 1049, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 188, 1068, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 188, 1158, "",spep_0 + 317, 0, 24, 0.5);
setSeVolumeByWorkId( spep_0 + 188, SE012, 116 );
SE013 = playSeVer2( spep_0 + 210, 1128, "",spep_0 + 316, 0, 22, 0.5);
setPitch( spep_0 + 210, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );
--吸収完了
SE014 = playSeVer2( spep_0 + 275, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 275, SE014, 164 );
SE015 = playSeVer2( spep_0 + 282, 1309, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE015, 229 );
--画面遷移
SE016 = playSeVer2( spep_0 + 357, 8, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
recover( spep_0 + 300); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 422