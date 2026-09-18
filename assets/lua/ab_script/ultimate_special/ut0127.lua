--1034070:LR_超サイヤ人孫悟飯(少年期)_アクティブ必殺：四大超サイヤ人集結！
--sp_effect_a1_00547
--ut0127

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164560; --敵に気功波が迫り顔に埋まる ef_001

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 430 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 430 - 13, SP_01, spep_0 + 430 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 1380;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
           --４人発射中
           SE044 = playSeVer2( spep_0 + 1380+3, 1161, "",spep_0 + 1568, 0, 29, -1);
           setSeVolumeByWorkId( spep_0 + 1380+3, SE044, 74 );
       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵に気功波が迫り顔に埋まる
-------------------------------------------------
MAX_FRAME_0 = 1768;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 2, SP_01, 0x100, -1, 0, 0, 0); -- 敵に気功波が迫り顔に埋まる(ef_001)
setEffMoveKey( spep_0 + 2, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 2, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 2, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 2, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 406 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 406 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 446 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 406 + OFFSET_X, 1, -349.8, -318.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -349.8, -318.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -335.3, -296.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -335.3, -296.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -326.9, -294.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -326.9, -294.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -328.2, -291.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -328.2, -291.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -332.2, -301.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -332.2, -301.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -297.9, -290.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -297.9, -290.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -131.6, -327 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -131.6, -327 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -130.4, -333.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -130.4, -333.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 573.1, -60 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 573.1, -60 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 955.9, 427.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 955.9, 427.1 , 0 );

setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 8.49, 8.5 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 8.49, 8.5 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 7.22, 7.23 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 7.22, 7.23 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 11.35, 11.37 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 11.35, 11.37 );

setRotateKey( spep_0 + 406  + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 22.3 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 377, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--風圧
SE003 = playSeVer2( spep_0 + 134, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE003, 39 );

--構える
SE005 = playSeVer2( spep_0 + 223, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 223, SE005, 176 );

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 249, 1210, "",spep_0 + 346, 7, 17, -1);
setStartTimeMs( SE004,  1167 );
SE006 = playSeVer2( spep_0 + 249, 1209, "",spep_0 + 347, 0, 19, -1);
SE007 = playSeVer2( spep_0 + 327, 1022, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 327, 1146, "",spep_0 + 469, 0, 27, -1);
SE009 = playSeVer2( spep_0 + 327, 1177, "",spep_0 + 469, 0, 26, -1);

--かめはめ波飛んでいく
SE010 = playSeVer2( spep_0 + 411, 1021, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「絶対に地球を守ってみせる！！」
playVoice( spep_0 + 0, 1241 );
setVoiceVolume( spep_0 + 0, 1241, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 430; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------
-- ** SE ** --
--敵ヒット
SE011 = playSeVer2( spep_0 + 442, 1024, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 454, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE012, 63 );
SE013 = playSeVer2( spep_0 + 478, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE013, 63 );
SE016 = playSeVer2( spep_0 + 502, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE016, 63 );
SE017 = playSeVer2( spep_0 + 526, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE017, 63 );

--トランクス気ダメ
SE014 = playSeVer2( spep_0 + 492, 1191, "",spep_0 + 588, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 492, SE014, 123 );
SE015 = playSeVer2( spep_0 + 492, 1296, "",spep_0 + 638, 0, 67, -1);

--画面遷移
SE018 = playSeVer2( spep_0 + 544, 1232, "", 0, 0, 0, -1);

--かめはめ波中
SE019 = playSeVer2( spep_0 + 549, 1211, "",spep_0 + 883, 0, 63, -1);
setSeVolumeByWorkId( spep_0 + 549, SE019, 292 );
SE020 = playSeVer2( spep_0 + 549, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 549, SE020, 66 );

--オーラ
SE021 = playSeVer2( spep_0 + 549, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 549, SE021, 63 );
SE022 = playSeVer2( spep_0 + 573, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 573, SE022, 63 );
SE025 = playSeVer2( spep_0 + 597, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 597, SE025, 63 );
SE028 = playSeVer2( spep_0 + 621, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 621, SE028, 63 );

--悟空かめはめ波溜め
SE023 = playSeVer2( spep_0 + 581, 1210, "",spep_0 + 1011, 0, 36, -1);
SE024 = playSeVer2( spep_0 + 590, 1209, "", 0, 0, 0, -1);

--悟空きダメ
SE026 = playSeVer2( spep_0 + 620, 1035, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 620, 1503, "", 0, 0, 0, -1);

--悟空かめはめ波溜め
SE029 = playSeVer2( spep_0 + 733, 1296, "",spep_0 + 878, 19, 35, -1);
setStartTimeMs( SE029,  267 );

--空気音
SE030 = playSeVer2( spep_0 + 717, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 717, SE030, 54 );

--トランクス発射
SE031 = playSeVer2( spep_0 + 837, 1284, "", 0, 0, 0, -1);

--ベジータ発射
SE032 = playSeVer2( spep_0 + 870, 1258, "", 0, 0, 0, -1);

--悟空発射
SE033 = playSeVer2( spep_0 + 960, 1511, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 960, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 960, SE034, 72 );
SE035 = playSeVer2( spep_0 + 960, 1211, "", spep_0 + 1330, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 960, SE035, 226 );
SE036 = playSeVer2( spep_0 + 970, 1133, "", 0, 0, 0, -1);

--白光に集まる
SE037 = playSeVer2( spep_0 + 1132, 1443, "",spep_0 + 1297, 14, 43, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE037, 153 );
setStartTimeMs( SE037,  917 );
SE038 = playSeVer2( spep_0 + 1098, 1215, "",spep_0 + 1274, 0, 38, -1);
SE039 = playSeVer2( spep_0 + 1126, 1475, "", 0, 0, 0, -1);

--４人発射
SE040 = playSeVer2( spep_0 + 1231, 1258, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1245, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1245, SE041, 72 );
SE042 = playSeVer2( spep_0 + 1245, 1223, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1245, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1245, SE043, 140 );

--４人発射中
SE044 = playSeVer2( spep_0 + 1330, 1161, "",spep_0 + 1568, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 1330, SE044, 74 );

--ラスト発射
SE045 = playSeVer2( spep_0 + 1525, 1258, "",spep_0 + 1642, 0, 34, -1);
SE046 = playSeVer2( spep_0 + 1530, 1284, "",spep_0 + 1641, 0, 28, -1);
SE047 = playSeVer2( spep_0 + 1530, 1146, "",spep_0 + 1638, 0, 25, -1);
SE048 = playSeVer2( spep_0 + 1530, 1285, "",spep_0 + 1640, 0, 29, -1);

--宇宙へ
SE049 = playSeVer2( spep_0 + 1606, 1296, "",spep_0 + 1761, 0, 110, -1);
setPitch( spep_0 + 1606, SE049, 400 );
setSeVolumeByWorkId( spep_0 + 1606, SE049, 80 );
SE050 = playSeVer2( spep_0 + 1606, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1606, SE050, 150 );
SE051 = playSeVer2( spep_0 + 1606, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1606, SE051, 77 );

-- ** ボイス ** --
--「はーーーーっ！！！！」
playVoice( spep_0 + 1395, 1242 );
setVoiceVolume( spep_0 + 1395, 1242, 100 );

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1618); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1768F

else end