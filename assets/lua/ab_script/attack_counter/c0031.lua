--1031470:LR_超サイヤ人4ゴジータ_気弾カウンター
--sp_effect_a2_00264
--c0031

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163943; -- 気弾迎える～フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
adjustAttackerLabel( 0, 205);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------


spep_0 = 28; --冒頭顔カットイン入るため28F固定


------------------------------------------------------
-- 気弾迎える～フィニッシュ
------------------------------------------------------

MAX_FRAME_0 = 720;

setupMovie( spep_0 + 0 + 2, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 530 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 558 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 530 + OFFSET_X, 1, 3, 0.000, 0.396, 1.000, 0.5);
setBlendColor( spep_0 + 558 + OFFSET_X, 1, 3, 0, 0, 0, 0);

changeAnime( spep_0 + 530 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 530 + OFFSET_X, 1, 212.9, 367.6 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 212.9, 367.6 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 212.5, 366.9 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 212.5, 366.9 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 212, 366 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 212, 366 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 211.2, 364.8 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 211.2, 364.8 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 210.2, 363.1 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 210.2, 363.1 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 208.8, 360.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 208.8, 360.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 207.1, 357.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 207.1, 357.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 204.7, 354 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 204.7, 354 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 201.5, 348.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 201.5, 348.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 197.1, 341.5 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 197.1, 341.5 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 190.8, 331.3 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 190.8, 331.3 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 181.5, 316.1 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 181.5, 316.1 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 165.8, 290.3 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 165.8, 290.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 123.1, 221.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 123.1, 221.4 , 0 );

setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_0 + 530 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 252, 0, 126, -1);
--気弾せまる
SE003 = playSeVer2( spep_0 + 244, 1193, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE003, 61 );
setStartTimeMs( SE003, 2000 );
--気ダメ
SE004 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 146, 1504, "", 0, 0, 0, -1);
--顔アップ
SE007 = playSeVer2( spep_0 + 180, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 180, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 198, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE009, 68 );
--気弾せまる
SE010 = playSeVer2( spep_0 + 252, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE010, 71 );
SE011 = playSeVer2( spep_0 + 252, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE011, 69 );
--膝蹴り
SE012 = playSeVer2( spep_0 + 332, 1473, "",spep_0 + 354, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 332, SE012, 130 );
SE013 = playSeVer2( spep_0 + 332, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE013, 135 );
SE014 = playSeVer2( spep_0 + 332, 1049, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 344, 1147, "",spep_0 + 484, 0, 26, -1);
--気弾跳ね返す
SE016 = playSeVer2( spep_0 + 450, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 450, 1452, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 458, 1430, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE018, 135 );
--気弾飛んでいく
SE019 = playSeVer2( spep_0 + 514, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE019, 155 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 546; --エンドフェイズのフレーム数を置き換える
    
    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );


do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --

--爆発
SE020 = playSeVer2( spep_0 + 556, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 574, 1188, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 598, 1128, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 598, SE022, 56 );
setPitch( spep_0 + 598, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

--    stopSe( spep_0 + 578, SE010, 0 );

    setDisp( spep_0 + 568, 1, 1 );
    endPhase( spep_0 + 572 );

else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 580 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 720F

end