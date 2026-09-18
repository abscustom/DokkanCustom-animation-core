--4027230:LR_無限ザマス_アクティブ_フィールド変化：宇宙化
--sp_effect_b4_00298
--bs0037

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162165; --火柱が上がり→ザマス増殖 ef_001
SP_02 = 162167; --火柱が上がり→ザマス増殖 ef_002

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

OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 火柱が上がり→ザマス増殖(844F)
-------------------------------------------------

MAX_FRAME_0 = 844;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 火柱が上がり→ザマス増殖 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

base_1 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 火柱が上がり→ザマス増殖 ef_002
setEffMoveKey( spep_0 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_1, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_1, 0);
setEffAlphaKey( spep_0 + 0, base_1, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_1, 255);

-- ** 敵キャラクター ** --
setDisp(spep_0 + 116 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 206 + OFFSET_X, 1, 0 );
setDisp(spep_0 + 576 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 674 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 116 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 576 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 116 + OFFSET_X, 1, 195.1, -285.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 195.1, -285.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 195.5, -327.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 195.9, -369.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 196.2, -412 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 196.6, -454.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 196.9, -496.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 197.2, -538.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 197.6, -580.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 197.9, -622.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 198.2, -664.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 198.4, -706.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 198.7, -748.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 199, -790.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 199.2, -832.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 199.5, -875 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 199.7, -917.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 197.3, -961.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 200.1, -1001.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 197.7, -1045.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 200.5, -1085.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 198, -1129.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 200.8, -1169.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 198.3, -1214.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 209.1, -1308.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 217.4, -1408.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 225.6, -1511.8 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 230.9, -607.4 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 233.1, -622.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 235.4, -638.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 237.7, -654 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 239.9, -669.5 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 242.2, -685.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 244.4, -700.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 246.7, -716.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 248.9, -731.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 251.2, -747.2 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 253.4, -762.7 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 255.7, -778.2 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 257.9, -793.8 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 260.2, -809.3 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 262.4, -824.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 264.7, -840.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 266.9, -855.9 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 269.2, -871.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 271.4, -887 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 273.7, -902.5 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 275.9, -918 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 278.2, -933.6 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 280.4, -949.1 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 282.7, -964.6 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 284.9, -980.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 287.2, -995.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 289.4, -1011.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 291.7, -1026.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 293.9, -1042.3 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 296.2, -1057.8 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 298.4, -1073.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 300.7, -1088.9 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 302.9, -1104.4 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 305.2, -1119.9 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 307.4, -1135.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 309.7, -1151 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 311.9, -1166.5 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 314.2, -1182 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 316.4, -1197.6 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 318.7, -1213.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 320.9, -1228.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 323.2, -1244.2 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 325.4, -1259.7 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 327.7, -1275.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 329.9, -1290.8 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 332.2, -1306.3 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 334.4, -1321.8 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 336.7, -1337.4 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 338.9, -1352.9 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 341.2, -1368.4 , 0 );

setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 3.02, 3.02 );

setRotateKey( spep_0 + 116 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 674 + OFFSET_X, 1, 24 );

-- ** 音 ** --
--赤い光立ち昇る
SE001 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 80 );
SE002 = playSeVer2( spep_0 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 92 );
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );
SE004 = playSeVer2( spep_0 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 52 );
setTimeStretch( SE004, 1.25, 30, 4 );
SE005 = playSeVer2( spep_0 + 4, 1326, "",spep_0 + 250, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 4, SE005, 63 );
SE006 = playSeVer2( spep_0 + 16, 1374, "",spep_0 + 106, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 16, SE006, 72 );

--目線カットイン
SE007 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);

--赤い柱空にのびていく
SE008 = playSeVer2( spep_0 + 94, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 71 );
SE009 = playSeVer2( spep_0 + 100, 1014, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 1343, "",spep_0 + 294, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 100, SE010, 80 );
SE011 = playSeVer2( spep_0 + 106, 1336, "",spep_0 + 332, 0, 70, -1);
SE012 = playSeVer2( spep_0 + 120, 1121, "",spep_0 + 294, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 63 );


--空で弾ける
SE013 = playSeVer2( spep_0 + 256, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE013, 58 );
SE014 = playSeVer2( spep_0 + 256, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE014, 130 );
SE015 = playSeVer2( spep_0 + 256, 1371, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE015, 41 );
setPitch( spep_0 + 256, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );
SE016 = playSeVer2( spep_0 + 260, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE016, 71 );
SE017 = playSeVer2( spep_0 + 266, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE017, 71 );

--雲広がる
SE018 = playSeVer2( spep_0 + 272, 1343, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE018, 120 );
setPitch( spep_0 + 272, SE018, -700 );
setTimeStretch( SE018, 0.53, 30, 4 );
SE019 = playSeVer2( spep_0 + 284, 1398, "", spep_0 + 700, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 284, SE019, 178 );
setPitch( spep_0 + 284, SE019, -700 );
setTimeStretch( SE019, 0.53, 30, 4 );
SE020 = playSeVer2( spep_0 + 284, 1417, "",spep_0 + 694, 0, 78, -1);
setPitch( spep_0 + 284, SE020, -1200 );
setTimeStretch( SE020, 0.2, 30, 4 );

--ザマス現れる
SE022 = playSeVer2( spep_0 + 612, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE022, 79 );
SE023 = playSeVer2( spep_0 + 612, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE023, 25 );

-- ** ボイス ** --
--「ハハハハハ！」
playVoice( spep_0 + 636, 677 );	
setVoiceVolume( spep_0 + 636, 677, 130 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

--終わり
endPhase( spep_0 + MAX_FRAME_0);--844

else end