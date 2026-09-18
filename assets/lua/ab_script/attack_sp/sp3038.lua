--1034030:LR_超サイヤ人孫悟空_超必殺技：超かめはめ波
--sp_effect_a1_00542
--sp3038

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164564; --スタート〜フィニッシュ ef_001
SP_02  = 164565; --KO ef_002

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

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

else
    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 1272;
CARD_FRAME = 232;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ(ef_001)
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
spep_x = spep_0 + 148; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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
]]
--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 668 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 704 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 668 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 668 + OFFSET_X, 1, -33.6 * mirror, 313.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -33.6 * mirror, 313.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -40.8 * mirror, 312.4 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -40.8 * mirror, 312.4 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -47.9 * mirror, 311.8 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -47.9 * mirror, 311.8 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -54.8 * mirror, 311.1 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -54.8 * mirror, 311.1 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -61.4 * mirror, 310.4 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -61.4 * mirror, 310.4 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -67.8 * mirror, 309.7 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -67.8 * mirror, 309.7 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -73.8 * mirror, 309.2 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -73.8 * mirror, 309.2 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -79.6 * mirror, 308.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -79.6 * mirror, 308.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -84.9 * mirror, 308 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -84.9 * mirror, 308 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -89.8 * mirror, 307.5 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -89.8 * mirror, 307.5 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -94.3 * mirror, 307.1 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -94.3 * mirror, 307.1 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -98.2 * mirror, 306.7 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -98.2 * mirror, 306.7 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -101.4 * mirror, 306.4 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -101.4 * mirror, 306.4 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -103.9 * mirror, 306.2 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -103.9 * mirror, 306.2 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -105.6 * mirror, 306 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -105.6 * mirror, 306 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -106.1 * mirror, 305.9 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -106.1 * mirror, 305.9 , 0 );

setScaleKey( spep_0 + 668 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_0 + 668 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 704 + OFFSET_X, 1, 0 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--かめはめ波溜め
SE001 = playSeVer2( spep_0 + 643, 1210, "",spep_0 + 990, 0, 38, -1);
setStartTimeMs( SE001,  10800 );
SE002 = playSeVer2( spep_0 + 667, 1356, "",spep_0 + 984, 0, 33, -1);
setStartTimeMs( SE002,  11200 );

--悟空にズーム
SE004 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 202, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 25 );
SE005 = playSeVer2( spep_0 + 5, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 5, SE005, 77 );
setTimeStretch( SE005, 1.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 13, 63, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 88, 1188, "", 0, 27, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE007, 60 );
setStartTimeMs( SE007,  117 );
--気ダメ
SE008 = playSeVer2( spep_0 + 139, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 139, 1503, "", 0, 0, 0, -1);
--オーラ
SE010 = playSeVer2( spep_0 + 141, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 141, SE010, 63 );
--気ダメ
SE011 = playSeVer2( spep_0 + 148, 1504, "", 0, 0, 0, -1);
--セリフカットイン
--SE012 = playSeVer2( spep_0 + 159, 1018, "", 0, 0, 0, -1);
--オーラ
SE013 = playSeVer2( spep_0 + 165, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 165, SE013, 63 );
SE014 = playSeVer2( spep_0 + 189, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 189, SE014, 63 );
SE015 = playSeVer2( spep_0 + 213, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 213, SE015, 63 );
SE016 = playSeVer2( spep_0 + 237, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 237, SE016, 63 );
--カードカットイン
--SE017 = playSeVer2( spep_0 + 241, 1035, "", 0, 0, 0, -1);
--オーラ
SE018 = playSeVer2( spep_0 + 329, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 329, SE018, 40 );
SE019 = playSeVer2( spep_0 + 331, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 331, SE019, 63 );
--髪なびく
SE020 = playSeVer2( spep_0 + 334, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE020, 63 );
--オーラ
SE021 = playSeVer2( spep_0 + 355, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 355, SE021, 63 );
SE022 = playSeVer2( spep_0 + 379, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 379, SE022, 63 );
SE023 = playSeVer2( spep_0 + 403, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 403, SE023, 63 );
SE024 = playSeVer2( spep_0 + 427, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 427, SE024, 63 );
SE025 = playSeVer2( spep_0 + 451, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 451, SE025, 63 );
SE026 = playSeVer2( spep_0 + 475, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 475, SE026, 63 );
SE027 = playSeVer2( spep_0 + 499, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 499, SE027, 63 );
SE028 = playSeVer2( spep_0 + 523, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 523, SE028, 63 );
--構える
SE029 = playSeVer2( spep_0 + 525, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 525, SE029, 59 );
--オーラ
SE030 = playSeVer2( spep_0 + 547, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 547, SE030, 63 );
--構える
SE031 = playSeVer2( spep_0 + 560, 1116, "",spep_0 + 609, 0, 30, -1);
--画面遷移
SE032 = playSeVer2( spep_0 + 560, 1072, "", 0, 0, 0, -1);
--オーラ
SE033 = playSeVer2( spep_0 + 571, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 571, SE033, 63 );
SE034 = playSeVer2( spep_0 + 595, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 595, SE034, 63 );
SE035 = playSeVer2( spep_0 + 619, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 619, SE035, 63 );
--かめはめ波溜め
SE036 = playSeVer2( spep_0 + 624, 1489, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 624, 1445, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 639, 1209, "", 0, 0, 0, -1);

--オーラ
SE039 = playSeVer2( spep_0 + 643, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 643, SE039, 63 );
SE040 = playSeVer2( spep_0 + 667, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 667, SE040, 63 );

--かめはめ波溜め
SE070 = playSeVer2( spep_0 + 643, 1210, "", 960, 0, 30, 0.6);
SE071 = playSeVer2( spep_0 + 667, 1356, "", 920, 0, 30, 0.6);



-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 686; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
--stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE070, 0);
stopSe( SP_dodge - 12, SE071, 0);

--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--かめはめ波溜め
SE003 = playSeVer2( spep_0 + 691, 1362, "",spep_0 + 984, 0, 43, 0.6);
--setStartTimeMs( SE003,  11600 );
setPitch( spep_0 + 691, SE003, 1200 );
setTimeStretch( SE003, 1.8, 30, 4 );
setSeVolumeByWorkId( spep_0 + 691, SE003, 120 );
--オーラ
SE041 = playSeVer2( spep_0 + 691, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 691, SE041, 63 );
SE042 = playSeVer2( spep_0 + 715, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 715, SE042, 63 );
SE043 = playSeVer2( spep_0 + 739, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 739, SE043, 63 );
SE044 = playSeVer2( spep_0 + 763, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 763, SE044, 63 );
SE045 = playSeVer2( spep_0 + 787, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 787, SE045, 63 );
SE046 = playSeVer2( spep_0 + 811, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 811, SE046, 63 );
--カメラパン
SE047 = playSeVer2( spep_0 + 827, 63, "",spep_0 + 918, 0, 28, -1);
--オーラ
SE048 = playSeVer2( spep_0 + 835, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 835, SE048, 63 );
SE049 = playSeVer2( spep_0 + 859, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 859, SE049, 63 );
SE050 = playSeVer2( spep_0 + 883, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 883, SE050, 63 );
SE051 = playSeVer2( spep_0 + 907, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 907, SE051, 63 );
SE052 = playSeVer2( spep_0 + 931, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 931, SE052, 63 );
--かめはめ波発射
SE053 = playSeVer2( spep_0 + 933, 1133, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 933, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 933, 1213, "",spep_0 + 1205, 0, 61, -1);
--オーラ
SE056 = playSeVer2( spep_0 + 955, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 955, SE056, 63 );
--かめはめ波発射２
SE057 = playSeVer2( spep_0 + 979, 1258, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 988, 1146, "", 0, 0, 0, -1);
--かめはめ波飛んでいく
SE059 = playSeVer2( spep_0 + 1024, 1161, "",spep_0 + 1188, 0, 52, -1);
SE060 = playSeVer2( spep_0 + 1054, 1304, "",spep_0 + 1182, 0, 21, -1);
setPitch( spep_0 + 1054, SE060, 600 );
setTimeStretch( SE060, 1.4, 30, 4 );
SE061 = playSeVer2( spep_0 + 1118, 1202, "",spep_0 + 1182, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE061, 202 );
--爆発
SE062 = playSeVer2( spep_0 + 1159, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 1165, 1067, "", 0, 0, 0, -1);
--画面遷移
SE064 = playSeVer2( spep_0 + 1207, 8, "", 0, 0, 0, -1);
--オーラ
SE065 = playSeVer2( spep_0 + 1226, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1226, SE065, 63 );
SE066 = playSeVer2( spep_0 + 1250, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1250, SE066, 63 );

-----------------------------
-- 終了
-----------------------------


--固有KO
if (_IS_PLAYER_SIDE_ == 1) then

    spep_1 = MAX_FRAME_0 - 56;--56

    KO = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0); -- KO(ef_002)
    setEffMoveKey( spep_1 + 0, KO, 0, 0 , 0);
    setEffMoveKey( spep_1 + 56, KO, 0, 0 , 0);
    setEffScaleKey( spep_1 + 0, KO, 1.0, 1.0);
    setEffScaleKey( spep_1 + 56, KO, 1.0, 1.0);
    setEffRotateKey( spep_1 + 0, KO, 0);
    setEffRotateKey( spep_1 + 56, KO, 0);
    setEffAlphaKey( spep_1 + 0, KO, 0);
    setEffAlphaKey( spep_1 + 54, KO, 0);
    setEffAlphaKey( spep_1 + 55, KO, 255);
    setEffAlphaKey( spep_1 + 56, KO, 255);

end

hideKoScreen();
fadeKoLabel(1,0.5);
dealDamage( spep_0 + 1152); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1272