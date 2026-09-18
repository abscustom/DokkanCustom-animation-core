--1021970:タピオン＆ミノシア_ふたりの勇者（アクティブ）
--sp_effect_b4_00186

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 157195;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1110, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1110, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1110, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1110, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );

--セリフカットイン
SE002 = playSe( spep_0 + 22, 1018 );

--炎の音
SE003 = playSe( spep_0 + 208, 1268 );
setSeVolumeByWorkId( spep_0 + 208, SE003,158);
setSeVolumeByWorkId( spep_0 + 432, SE003,158);
setSeVolumeByWorkId( spep_0 + 433, SE003,155.66);
setSeVolumeByWorkId( spep_0 + 434, SE003,153.32);
setSeVolumeByWorkId( spep_0 + 435, SE003,150.98);
setSeVolumeByWorkId( spep_0 + 436, SE003,148.64);
setSeVolumeByWorkId( spep_0 + 437, SE003,146.3);
setSeVolumeByWorkId( spep_0 + 438, SE003,143.96);
setSeVolumeByWorkId( spep_0 + 439, SE003,141.62);
setSeVolumeByWorkId( spep_0 + 440, SE003,139.28);
setSeVolumeByWorkId( spep_0 + 441, SE003,136.94);
setSeVolumeByWorkId( spep_0 + 442, SE003,134.6);
setSeVolumeByWorkId( spep_0 + 443, SE003,132.26);
setSeVolumeByWorkId( spep_0 + 444, SE003,129.92);
setSeVolumeByWorkId( spep_0 + 445, SE003,127.58);
setSeVolumeByWorkId( spep_0 + 446, SE003,125.24);
setSeVolumeByWorkId( spep_0 + 447, SE003,122.9);
setSeVolumeByWorkId( spep_0 + 448, SE003,120.56);
setSeVolumeByWorkId( spep_0 + 449, SE003,118.22);
setSeVolumeByWorkId( spep_0 + 450, SE003,115.88);
setSeVolumeByWorkId( spep_0 + 451, SE003,113.54);
setSeVolumeByWorkId( spep_0 + 452, SE003,111.2);
setSeVolumeByWorkId( spep_0 + 453, SE003,108.86);
setSeVolumeByWorkId( spep_0 + 454, SE003,106.52);
setSeVolumeByWorkId( spep_0 + 455, SE003,104.18);
setSeVolumeByWorkId( spep_0 + 456, SE003,101.84);
setSeVolumeByWorkId( spep_0 + 457, SE003,99.49);
setSeVolumeByWorkId( spep_0 + 458, SE003,97.15);
setSeVolumeByWorkId( spep_0 + 459, SE003,94.81);
setSeVolumeByWorkId( spep_0 + 460, SE003,92.47);
setSeVolumeByWorkId( spep_0 + 461, SE003,90.13);
setSeVolumeByWorkId( spep_0 + 462, SE003,87.79);
setSeVolumeByWorkId( spep_0 + 463, SE003,85.45);
setSeVolumeByWorkId( spep_0 + 464, SE003,83.11);
setSeVolumeByWorkId( spep_0 + 465, SE003,80.77);
setSeVolumeByWorkId( spep_0 + 466, SE003,78.43);
setSeVolumeByWorkId( spep_0 + 467, SE003,76.09);
setSeVolumeByWorkId( spep_0 + 468, SE003,73.75);
setSeVolumeByWorkId( spep_0 + 469, SE003,71.41);
setSeVolumeByWorkId( spep_0 + 470, SE003,69.07);
setSeVolumeByWorkId( spep_0 + 471, SE003,66.73);
setSeVolumeByWorkId( spep_0 + 472, SE003,64.39);
setSeVolumeByWorkId( spep_0 + 473, SE003,62.05);
setSeVolumeByWorkId( spep_0 + 474, SE003,59.71);
setSeVolumeByWorkId( spep_0 + 475, SE003,57.37);
setSeVolumeByWorkId( spep_0 + 476, SE003,55.03);
setSeVolumeByWorkId( spep_0 + 477, SE003,52.68);
setSeVolumeByWorkId( spep_0 + 478, SE003,50.35);
setSeVolumeByWorkId( spep_0 + 479, SE003,48.01);
setSeVolumeByWorkId( spep_0 + 480, SE003,45.67);
setSeVolumeByWorkId( spep_0 + 481, SE003,43.33);
setSeVolumeByWorkId( spep_0 + 482, SE003,40.98);
setSeVolumeByWorkId( spep_0 + 483, SE003,38.65);
setSeVolumeByWorkId( spep_0 + 484, SE003,36.31);
setSeVolumeByWorkId( spep_0 + 485, SE003,33.97);
setSeVolumeByWorkId( spep_0 + 486, SE003,31.63);
setSeVolumeByWorkId( spep_0 + 487, SE003,29.28);
setSeVolumeByWorkId( spep_0 + 488, SE003,26.95);
setSeVolumeByWorkId( spep_0 + 489, SE003,24.61);
setSeVolumeByWorkId( spep_0 + 490, SE003,22);
stopSe( spep_0 + 678, SE003, 76 );

--剣しまう
SE004 = playSe( spep_0 + 488, 1150 );
setSeVolumeByWorkId( spep_0 + 488, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 489, SE004, 5.2 );
setSeVolumeByWorkId( spep_0 + 490, SE004, 10.4 );
setSeVolumeByWorkId( spep_0 + 491, SE004, 15.6 );
setSeVolumeByWorkId( spep_0 + 492, SE004, 20.8 );
setSeVolumeByWorkId( spep_0 + 493, SE004, 26 );
setSeVolumeByWorkId( spep_0 + 494, SE004, 31.2 );
setSeVolumeByWorkId( spep_0 + 495, SE004, 36.4 );
setSeVolumeByWorkId( spep_0 + 496, SE004, 41.6 );
setSeVolumeByWorkId( spep_0 + 497, SE004, 46.8 );
setSeVolumeByWorkId( spep_0 + 498, SE004, 52 );
setSeVolumeByWorkId( spep_0 + 499, SE004, 57.2 );
setSeVolumeByWorkId( spep_0 + 500, SE004, 62.4 );
setSeVolumeByWorkId( spep_0 + 501, SE004, 67.6 );
setSeVolumeByWorkId( spep_0 + 502, SE004, 72 );
setPitch( spep_0 + 490, SE004, -400 );
setTimeStretch( SE004, 0.73, 10, 1 );
SE005 = playSe( spep_0 + 510, 1061 );
setSeVolumeByWorkId( spep_0 + 510, SE005, 70 );
setPitch( spep_0 + 510, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );
stopSe( spep_0 + 528, SE005, 18 );

--ミノシア振り向く
SE006 = playSe( spep_0 + 638, 63 );
setSeVolumeByWorkId( spep_0 + 638, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 639, SE006, 6.3 );
setSeVolumeByWorkId( spep_0 + 640, SE006, 12.6 );
setSeVolumeByWorkId( spep_0 + 641, SE006, 18.9 );
setSeVolumeByWorkId( spep_0 + 642, SE006, 25.2 );
setSeVolumeByWorkId( spep_0 + 643, SE006, 31.5 );
setSeVolumeByWorkId( spep_0 + 644, SE006, 37.8 );
setSeVolumeByWorkId( spep_0 + 645, SE006, 44.1 );
setSeVolumeByWorkId( spep_0 + 646, SE006, 50.4 );
setStartTimeMs( SE006,  600 );
stopSe( spep_0 + 656, SE006, 24 );

--環境音
SE007 = playSe( spep_0 + 756, 1278 );
setSeVolumeByWorkId( spep_0 + 756, SE007, 26 );

--タピオン奥
SE008 = playSe( spep_0 + 756, 44 )
setSeVolumeByWorkId( spep_0 + 756, SE008, 62 )
setTimeStretch( SE008, 1.25, 10, 1 );

--ミノシア奥
SE009 = playSe( spep_0 + 824, 44 )
setSeVolumeByWorkId( spep_0 + 824, SE009, 56 )
setTimeStretch( SE009, 1.25, 10, 1 );

---------------------------------------------
----ボイス
---------------------------------------------
--もう…誰も死なせやしない！
playVoice( spep_0 + 3, 253 );
setVoiceVolume( spep_0 + 3, 253, 228 );

--この伝説の剣と笛で、守ってみせる！
playVoice( spep_0 + 463, 254 );
setVoiceVolume( spep_0 + 463, 254, 228 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 +1100 );
else end