--1033940:LR_ターレス_超必殺技：キルドライバー
--sp_effect_b4_00432
--sp3032

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164497 --最初〜最後まで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    setupMovie(0, SP_01, 0, 1);
else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで ef_001
-------------------------------------------------
MAX_FRAME_0 = 888;
CARD_FRAME = 456;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 220; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
showCardCutin(spep_0 + CARD_FRAME, 0);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 722 + OFFSET_X, 1, 1);
setDisp( spep_0 + 746 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 722 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 722 + OFFSET_X, 1, 576 * mirror, -691.6 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 576 * mirror, -691.6 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 572.1 * mirror, -686.9 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 572.1 * mirror, -686.9 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 567.3 * mirror, -681.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 567.3 * mirror, -681.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 561.2 * mirror, -673.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 561.2 * mirror, -673.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 553.1 * mirror, -664.4 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 553.1 * mirror, -664.4 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 542.6 * mirror, -651.8 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 542.6 * mirror, -651.8 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 528.4 * mirror, -634.8 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 528.4 * mirror, -634.8 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 509.1 * mirror, -611.9 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 509.1 * mirror, -611.9 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 483.1 * mirror, -581 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 483.1 * mirror, -581 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 448.3 * mirror, -539.6 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 448.3 * mirror, -539.6 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 403 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 403 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 345.8 * mirror, -417.5 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 345.8 * mirror, -417.5 , 0 );

setScaleKey( spep_0 + 722 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 2.75, 2.75 );

setRotateKey( spep_0 + 722 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 746 + OFFSET_X, 1, 0 * mirror );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 491, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 252, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--実食べる
SE004 = playSeVer2( spep_0 + 196, 1070, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE004, 166 );
SE005 = playSeVer2( spep_0 + 201, 1071, "",spep_0 + 225, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 201, SE005, 162 );

--握りつぶす
SE006 = playSeVer2( spep_0 + 268, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE006, 47 );
SE007 = playSeVer2( spep_0 + 306, 1234, "",spep_0 + 348, 0, 11, -1);
SE008 = playSeVer2( spep_0 + 322, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 322, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE009, 85 );
SE010 = playSeVer2( spep_0 + 322, 1292, "",spep_0 + 361, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 322, SE010, 234 );
SE011 = playSeVer2( spep_0 + 326, 1293, "", 0, 0, 0, -1);

--気が爆発する
SE012 = playSeVer2( spep_0 + 372, 1258, "",spep_0 + 484, 0, 27, -1);
SE013 = playSeVer2( spep_0 + 377, 1159, "",spep_0 + 484, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 377, SE013, 75 );

--手を合わせる
SE015 = playSeVer2( spep_0 + 547, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 547, SE015, 111 );
SE016 = playSeVer2( spep_0 + 551, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 551, SE016, 114 );
SE017 = playSeVer2( spep_0 + 560, 1243, "",spep_0 + 635, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 560, SE017, 120 );
SE018 = playSeVer2( spep_0 + 560, 1250, "",spep_0 + 633, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 560, SE018, 120 );

--気弾溜めはじめ
SE019 = playSeVer2( spep_0 + 592, 1130, "",spep_0 + 631, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 592, SE019, 44 );
setPitch( spep_0 + 592, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );

--気弾溜め
SE020 = playSeVer2( spep_0 + 618, 1276, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE020, 124 );
setPitch( spep_0 + 618, SE020, -200 );
setTimeStretch( SE020, 0.96, 30, 4 );
SE021 = playSeVer2( spep_0 + 618, 1132, "",spep_0 + 704, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 618, SE021, 82 );
setPitch( spep_0 + 618, SE021, 400 );
setTimeStretch( SE021, 1.27, 30, 4 );
SE022 = playSeVer2( spep_0 + 626, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE022, 129 );
setPitch( spep_0 + 626, SE022, 300 );
setTimeStretch( SE022, 1.2, 30, 4 );

--気弾発射
SE023 = playSeVer2( spep_0 + 687, 1146, "",spep_0 + 766, 0, 22, -1);
SE024 = playSeVer2( spep_0 + 687, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 687, SE024, 67 );
SE025 = playSeVer2( spep_0 + 690, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 734; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--爆発
SE026 = playSeVer2( spep_0 + 733, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 733, 1024, "",spep_0 + 812, 0, 32, -1);

--電気走る
SE028 = playSeVer2( spep_0 + 765, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 765, SE028, 76 );

--爆発
SE029 = playSeVer2( spep_0 + 792, 1159, "",spep_0 + 932, 0, 5, -1);
SE030 = playSeVer2( spep_0 + 805, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 780); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 888F