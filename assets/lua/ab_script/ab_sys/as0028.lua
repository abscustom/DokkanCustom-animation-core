--4028690:UR_トッポ(破壊神モード)_気弾無効
--sp_effect_a9_00127
--as0028

setPhase(9); --フェーズ9開始
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト
SP_01 = 162764; -- 開幕～フィニッシュ ef_001

setEnvZoomEnable(0, 0); -- ズーム許可
removeAllEffect(2); --必要

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI(0, 0);

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

------------------------------------------------------------------------------------------------------------
--冒頭固定
------------------------------------------------------------------------------------------------------------
-- ** 白フェード ** --
entryFade( 4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );

------------------------------------------------------------------------------------------------------------
--味方側 or 敵側
--味方側の場合はあり
--敵側の場合はコメントアウト
--(ただし敵味方共通のエフェクトの場合で反転した敵側専用のエフェクトがある場合はあり)
------------------------------------------------------------------------------------------------------------
flipAttackerSide(0)

------------------------------------------------------------------------------------------------------------
--開始4F固定 (顔カットインが入るため)
------------------------------------------------------------------------------------------------------------

spep_0 = 4;

-------------------------------------------------
-- 開幕～フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 438;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕～フィニッシュ ef_001
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
--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 2, 1177, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 2, 1145, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1215, "",spep_0 + 184, 58, 26, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 71 );
setStartTimeMs( SE003,  633 );
--気弾加速
SE005 = playSeVer2( spep_0 + 28, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 78 );
SE006 = playSeVer2( spep_0 + 34, 1027, "", 0, 0, 0, -1);
--トッポアップ
SE007 = playSeVer2( spep_0 + 54, 1232, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 54, SE007 );
SE008 = playSeVer2( spep_0 + 54, 1227, "",spep_0 + 160, 0, 10, -1);
stopSeIfDoubleSpeed( spep_0 + 54, SE008 );
SE009 = playSeVer2( spep_0 + 54, 1176, "",spep_0 + 164, 0, 14, -1);
--気弾弾く
SE004 = playSeVer2( spep_0 + 134, 1437, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 134, SE004, 160 );
setStartTimeMs( SE004,  2200 );
SE010 = playSeVer2( spep_0 + 146, 1403, "",spep_0 + 354, 0, 152, -1);
SE011 = playSeVer2( spep_0 + 146, 1211, "",spep_0 + 384, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 146, SE011, 155 );
SE012 = playSeVer2( spep_0 + 146, 1213, "",spep_0 + 256, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 146, SE012, 47 );
--環境音
SE013 = playSeVer2( spep_0 + 158, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE013, 25 );

-- ** ダメージ表示 ** --
-- ** 無効演出の場合 ** --
dealDamage( spep_0 + 300 );
endPhase( spep_0 + MAX_FRAME_0 );  --438
