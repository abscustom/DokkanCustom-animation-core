--1021940:超サイヤ人ベジータ(GT)＿迫撃のファイナルシャインアタック（アクティブ）
--sp_effect_a1_00290

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
SP_01=	157225	;--	ベジータ登場〜フィニッシュ
SP_02=	157226	;--	ベジータ登場〜フィニッシュ
SP_03=	157227	;--	KO


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 584 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 610);      -- スキップ先フレーム指定

           --気弾に飲まれる
           SE027 = playSe( spep_0 + 610, 1226 );
           stopSe( spep_0 + 646, SE027, 90 );

           SE028 = playSe( spep_0 + 610, 1161 );
           setSeVolumeByWorkId( spep_0 + 610, SE028, 64 );
           stopSe( spep_0 + 756, SE028, 12 );

           SE029 = playSe( spep_0 + 610, 1024 );
           setSeVolumeByWorkId( spep_0 + 610, SE029, 84 );

           SE030 = playSe( spep_0 + 610, 1067 );
           setSeVolumeByWorkId( spep_0 + 610, SE030, 81 );
           
           SE031 = playSe( spep_0 + 610, 1159 );
           setSeVolumeByWorkId( spep_0 + 610, SE031, 72 );
           stopSe( spep_0 + 756, SE031, 18 );
       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ベジータ登場〜フィニッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 730, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 730, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 730, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 730, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 730, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 730, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 730, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 730, eff_b, 255 );


--敵の動き
setDisp( spep_0-3 + 552, 1, 1);
changeAnime( spep_0-3 + 552, 1, 118);
setBlendColor(spep_0-3 + 552,1,3,0.28,1,1,0.5);

setMoveKey( spep_0-3 + 552, 1, 186, 151.4 , 0 );
setMoveKey( spep_0 + 584, 1, 186, 151.4 , 0 );

setScaleKey( spep_0-3 + 552, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 584, 1, 1.04, 1.04 );

setRotateKey( spep_0-3 + 552, 1, -10 );
setRotateKey( spep_0 + 584, 1, -10 );

--文字エントリー
ctzuo = entryEffectLife( spep_0-3 + 484,  10012, 28, 0x100, -1, 0, -192.6, 27.5 );--ズオッ

setEffMoveKey( spep_0-3 + 484, ctzuo, -192.6, 27.5 , 0 );
setEffMoveKey( spep_0-3 + 486, ctzuo, -162.6, 58.3 , 0 );
setEffMoveKey( spep_0-3 + 488, ctzuo, -107, 141.7 , 0 );
setEffMoveKey( spep_0-3 + 490, ctzuo, -112, 148.2 , 0 );
setEffMoveKey( spep_0-3 + 492, ctzuo, -131.7, 176.7 , 0 );
setEffMoveKey( spep_0-3 + 494, ctzuo, -99.4, 205.4 , 0 );
setEffMoveKey( spep_0-3 + 496, ctzuo, -105.7, 208.1 , 0 );
setEffMoveKey( spep_0-3 + 498, ctzuo, -128.6, 225.7 , 0 );
setEffMoveKey( spep_0-3 + 500, ctzuo, -94.8, 243.8 , 0 );
setEffMoveKey( spep_0-3 + 502, ctzuo, -102.8, 234.4 , 0 );
setEffMoveKey( spep_0-3 + 504, ctzuo, -126.9, 251.6 , 0 );
setEffMoveKey( spep_0-3 + 506, ctzuo, -91.7, 269.3 , 0 );
setEffMoveKey( spep_0-3 + 508, ctzuo, -100.2, 258.2 , 0 );
setEffMoveKey( spep_0-3 + 510, ctzuo, -125.4, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 512, ctzuo, -124.9, 282.1 , 0 );

setEffScaleKey( spep_0-3 + 484, ctzuo,1.59,1.59);
setEffScaleKey( spep_0-3 + 486, ctzuo,2.12,2.12);
setEffScaleKey( spep_0-3 + 488, ctzuo,3.8,3.8);
setEffScaleKey( spep_0-3 + 490, ctzuo,3.99,3.95);
setEffScaleKey( spep_0-3 + 492, ctzuo,4.14,4.14);
setEffScaleKey( spep_0-3 + 494, ctzuo,4.33,4.29);
setEffScaleKey( spep_0-3 + 496, ctzuo,4.48,4.44);
setEffScaleKey( spep_0-3 + 498, ctzuo,4.56,4.52);
setEffScaleKey( spep_0-3 + 500, ctzuo,4.63,4.59);
setEffScaleKey( spep_0-3 + 502, ctzuo,4.71,4.67);
setEffScaleKey( spep_0-3 + 504, ctzuo,4.78,4.75);
setEffScaleKey( spep_0-3 + 506, ctzuo,4.86,4.78);
setEffScaleKey( spep_0-3 + 508, ctzuo,4.94,4.86);
setEffScaleKey( spep_0-3 + 510, ctzuo,5.01,4.94);
setEffScaleKey( spep_0-3 + 512, ctzuo,5.05,4.97);

setEffRotateKey( spep_0-3 + 484, ctzuo, -30 );
setEffRotateKey( spep_0-3 + 490, ctzuo, -30 );
setEffRotateKey( spep_0-3 + 492, ctzuo, -30.1 );
setEffRotateKey( spep_0-3 + 504, ctzuo, -30.1 );
setEffRotateKey( spep_0-3 + 506, ctzuo, -30 );
setEffRotateKey( spep_0-3 + 512, ctzuo, -30 );

setEffAlphaKey( spep_0-3 + 484, ctzuo, 84 );
setEffAlphaKey( spep_0-3 + 486, ctzuo, 126 );
setEffAlphaKey( spep_0-3 + 488, ctzuo, 255 );
setEffAlphaKey( spep_0-3 + 496, ctzuo, 255 );
setEffAlphaKey( spep_0-3 + 498, ctzuo, 219 );
setEffAlphaKey( spep_0-3 + 500, ctzuo, 184 );
setEffAlphaKey( spep_0-3 + 502, ctzuo, 151 );
setEffAlphaKey( spep_0-3 + 504, ctzuo, 118 );
setEffAlphaKey( spep_0-3 + 506, ctzuo, 87 );
setEffAlphaKey( spep_0-3 + 508, ctzuo, 57 );
setEffAlphaKey( spep_0-3 + 510, ctzuo, 28 );
setEffAlphaKey( spep_0-3 + 512, ctzuo, 0 );

--SE
--入り
SE002 = playSe( spep_0 + 0, 1168 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE002, 2.8 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 5.6 );
setSeVolumeByWorkId( spep_0 + 3, SE002, 8.4 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 11.2 );
setSeVolumeByWorkId( spep_0 + 5, SE002, 14 );
setSeVolumeByWorkId( spep_0 + 6, SE002, 16.8 );
setSeVolumeByWorkId( spep_0 + 7, SE002, 19.6 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 22.4 );
setSeVolumeByWorkId( spep_0 + 9, SE002, 25.2 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 28 );
setSeVolumeByWorkId( spep_0 + 11, SE002, 30.8 );
setSeVolumeByWorkId( spep_0 + 12, SE002, 33.6 );
setSeVolumeByWorkId( spep_0 + 13, SE002, 36.4 );
setSeVolumeByWorkId( spep_0 + 14, SE002, 39 );
SE001 = playSe( spep_0 + 4, 1072 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 16.7 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 33.4 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 50.1 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 66.8 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 83.5 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 100 );
setStartTimeMs( SE001,  367 );

--セリフカットイン
SE003 = playSe( spep_0 + 10, 1018 );

--入り
SE004 = playSe( spep_0 + 18, 1175 );
setSeVolumeByWorkId( spep_0 + 18, SE004, 26 );
stopSe( spep_0 + 80, SE004, 18 );

--気ダメ
SE005 = playSe( spep_0 + 88, 1024 );
setSeVolumeByWorkId( spep_0 + 88, SE005, 79 );
setPitch( spep_0 + 88, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );
SE006 = playSe( spep_0 + 88, 1035 );

--大猿化
SE007 = playSe( spep_0 + 168, 1278 );
setSeVolumeByWorkId( spep_0 + 168, SE007, 79 );
stopSe( spep_0 + 246, SE007, 34 );
SE008 = playSe( spep_0 + 186, 1125 );
setSeVolumeByWorkId( spep_0 + 186, SE008, 141 );
stopSe( spep_0 + 270, SE008, 30 );
SE009 = playSe( spep_0 + 188, 1116 );
setSeVolumeByWorkId( spep_0 + 188, SE009, 79 );
stopSe( spep_0 + 212, SE009, 36 );

--ふりかぶり
SE010 = playSe( spep_0 + 278, 1116 );
stopSe( spep_0 + 304, SE010, 8 );
SE011 = playSe( spep_0 + 278, 1004 );

--地面パンチ
SE012 = playSe( spep_0 + 292, 1153 );
setSeVolumeByWorkId( spep_0 + 292, SE012, 78 );
SE013 = playSe( spep_0 + 296, 1010 );
SE014 = playSe( spep_0 + 296, 1187 );
setSeVolumeByWorkId( spep_0 + 296, SE014, 86 );
stopSe( spep_0 + 372, SE014, 8 );

--地面爆発
SE015 = playSe( spep_0 + 320, 1258 );
setSeVolumeByWorkId( spep_0 + 320, SE015, 0 );
setSeVolumeByWorkId( spep_0 + 321, SE015, 10 );
setSeVolumeByWorkId( spep_0 + 322, SE015, 20 );
setSeVolumeByWorkId( spep_0 + 323, SE015, 30 );
setSeVolumeByWorkId( spep_0 + 324, SE015, 40 );
setSeVolumeByWorkId( spep_0 + 325, SE015, 50 );
setSeVolumeByWorkId( spep_0 + 326, SE015, 60 );
setSeVolumeByWorkId( spep_0 + 327, SE015, 70 );
setSeVolumeByWorkId( spep_0 + 328, SE015, 80 );
setSeVolumeByWorkId( spep_0 + 329, SE015, 95 );
setSeVolumeByWorkId( spep_0 + 330, SE015, 120 );
setStartTimeMs( SE015,  133 );
setPitch( spep_0 + 320, SE015, -300 );
setTimeStretch( SE015, 0.8, 10, 1 );
stopSe( spep_0 + 364, SE015, 30 );
SE016 = playSe( spep_0 + 328, 1188 );
setSeVolumeByWorkId( spep_0 + 328, SE016, 66 );
SE017 = playSe( spep_0 + 330, 1033 );
setSeVolumeByWorkId( spep_0 + 330, SE017, 62 );
stopSe( spep_0 + 374, SE017, 8 );

--構えて気弾溜め
SE018 = playSe( spep_0 + 382, 1003 );
SE019 = playSe( spep_0 + 384, 49 );
stopSe( spep_0 + 402, SE019, 12 );
SE020 = playSe( spep_0 + 386, 1296 );
setSeVolumeByWorkId( spep_0 + 386, SE020, 112 );
stopSe( spep_0 + 478, SE020, 10 );
SE021 = playSe( spep_0 + 386, 1191 );
setSeVolumeByWorkId( spep_0 + 386, SE021, 126 );
stopSe( spep_0 + 442, SE021, 36 );

--気弾発射
SE022 = playSe( spep_0 + 458, 1027 );
setSeVolumeByWorkId( spep_0 + 458, SE022, 58 );
SE023 = playSe( spep_0 + 458, 1146 );
stopSe( spep_0 + 620, SE023, 10 );
SE024 = playSe( spep_0 + 458, 1213 );
setSeVolumeByWorkId( spep_0 + 458, SE024, 52 );
stopSe( spep_0 + 618, SE024, 16 );

--気弾に飲まれる
SE025 = playSe( spep_0 + 628, 1266 );
setSeVolumeByWorkId( spep_0 + 628, SE025, 0 );
setSeVolumeByWorkId( spep_0 + 629, SE025, 4.2 );
setSeVolumeByWorkId( spep_0 + 630, SE025, 8.4 );
setSeVolumeByWorkId( spep_0 + 631, SE025, 12.6 );
setSeVolumeByWorkId( spep_0 + 632, SE025, 16.8 );
setSeVolumeByWorkId( spep_0 + 633, SE025, 21 );
setSeVolumeByWorkId( spep_0 + 634, SE025, 25.2 );
setSeVolumeByWorkId( spep_0 + 635, SE025, 29.4 );
setSeVolumeByWorkId( spep_0 + 636, SE025, 33.6 );
setSeVolumeByWorkId( spep_0 + 637, SE025, 37.8 );
setSeVolumeByWorkId( spep_0 + 638, SE025, 42 );
setSeVolumeByWorkId( spep_0 + 639, SE025, 46.2 );
setSeVolumeByWorkId( spep_0 + 640, SE025, 50.4 );
setSeVolumeByWorkId( spep_0 + 641, SE025, 54.6 );
setSeVolumeByWorkId( spep_0 + 642, SE025, 58.8 );
setSeVolumeByWorkId( spep_0 + 643, SE025, 63 );
setSeVolumeByWorkId( spep_0 + 644, SE025, 67.2 );
setSeVolumeByWorkId( spep_0 + 645, SE025, 71.4 );
setSeVolumeByWorkId( spep_0 + 646, SE025, 75.6 );
setSeVolumeByWorkId( spep_0 + 647, SE025, 79.8 );
setSeVolumeByWorkId( spep_0 + 648, SE025, 84 );
setSeVolumeByWorkId( spep_0 + 649, SE025, 88.2 );
setSeVolumeByWorkId( spep_0 + 650, SE025, 92.4 );
setSeVolumeByWorkId( spep_0 + 651, SE025, 96.6 );
setSeVolumeByWorkId( spep_0 + 652, SE025, 100.8 );
setSeVolumeByWorkId( spep_0 + 653, SE025, 105 );
setSeVolumeByWorkId( spep_0 + 654, SE025, 109.2 );
setSeVolumeByWorkId( spep_0 + 655, SE025, 113.4 );
setSeVolumeByWorkId( spep_0 + 656, SE025, 117.6 );
setSeVolumeByWorkId( spep_0 + 657, SE025, 121.8 );
setSeVolumeByWorkId( spep_0 + 658, SE025, 126 );
setSeVolumeByWorkId( spep_0 + 659, SE025, 130.2 );
setSeVolumeByWorkId( spep_0 + 660, SE025, 133 );
setStartTimeMs( SE025,  2317 );
stopSe( spep_0 + 714, SE025, 28 );

--追い気弾
SE026 = playSe( spep_0 + 540, 1021 );
setSeVolumeByWorkId( spep_0 + 540, SE026, 74 );

--気弾に飲まれる
SE027 = playSe( spep_0 + 546, 1226 );
setSeVolumeByWorkId( spep_0 + 546, SE027, 0 );
setSeVolumeByWorkId( spep_0 + 547, SE027, 2.3 );
setSeVolumeByWorkId( spep_0 + 548, SE027, 4.6 );
setSeVolumeByWorkId( spep_0 + 549, SE027, 6.9 );
setSeVolumeByWorkId( spep_0 + 550, SE027, 9.2 );
setSeVolumeByWorkId( spep_0 + 551, SE027, 11.5 );
setSeVolumeByWorkId( spep_0 + 552, SE027, 13.8 );
setSeVolumeByWorkId( spep_0 + 553, SE027, 16.1 );
setSeVolumeByWorkId( spep_0 + 554, SE027, 18.4 );
setSeVolumeByWorkId( spep_0 + 555, SE027, 20.7 );
setSeVolumeByWorkId( spep_0 + 556, SE027, 23 );
setSeVolumeByWorkId( spep_0 + 557, SE027, 25.3 );
setSeVolumeByWorkId( spep_0 + 558, SE027, 27.6 );
setSeVolumeByWorkId( spep_0 + 559, SE027, 29.9 );
setSeVolumeByWorkId( spep_0 + 560, SE027, 32.2 );
setSeVolumeByWorkId( spep_0 + 561, SE027, 34.5 );
setSeVolumeByWorkId( spep_0 + 562, SE027, 36.8 );
setSeVolumeByWorkId( spep_0 + 563, SE027, 39.1 );
setSeVolumeByWorkId( spep_0 + 564, SE027, 41.4 );
setSeVolumeByWorkId( spep_0 + 565, SE027, 43.7 );
setSeVolumeByWorkId( spep_0 + 566, SE027, 46 );
setSeVolumeByWorkId( spep_0 + 567, SE027, 48.3 );
setSeVolumeByWorkId( spep_0 + 568, SE027, 50.6 );
setSeVolumeByWorkId( spep_0 + 569, SE027, 52.9 );
setSeVolumeByWorkId( spep_0 + 570, SE027, 55.2 );
setSeVolumeByWorkId( spep_0 + 571, SE027, 57.5 );
setSeVolumeByWorkId( spep_0 + 572, SE027, 59.8 );


--ボイス
--くらえオレ様の新必殺技
playVoice( spep_0 + 0, 286 );
setVoiceVolume( spep_0 + 0, 286, 140 );

--はぁぁああ！！(大猿)
playVoice( spep_0 + 168, 287 );
setVoiceVolume( spep_0 + 168, 287, 138 );

--ファイナルシャインアタック！！
playVoice( spep_0 + 356, 288 );
setVoiceVolume( spep_0 + 356, 288, 140 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 730, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 584; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );
    stopSe( SP_dodge - 12, SE025, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );

    --敵位置の固定
    setMoveKey( SP_dodge+9, 1, 186, 151.4 , 0 );
    setScaleKey( SP_dodge+9, 1, 1.04, 1.04 );
    setRotateKey( SP_dodge+9, 1, -10 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** エフェクト等 ** --
KO = entryEffect( spep_0 + 716, SP_03, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_0 + 716, KO, 0, 0 , 0 );
setEffMoveKey( spep_0 + 956, KO, 0, 0 , 0 );
setEffScaleKey( spep_0 + 716, KO, 1.0 , 1.0 );
setEffScaleKey( spep_0 + 956, KO, 1.0 , 1.0 );
setEffRotateKey( spep_0 + 716, KO, 0 );
setEffRotateKey( spep_0 + 956, KO, 0 );
setEffAlphaKey( spep_0 + 716, KO, 255 );
setEffAlphaKey( spep_0 + 956, KO, 255 );

--敵の動き
changeAnime( spep_0-1 + 608, 1, 106);

setBlendColor(spep_0-1 + 608,1,3,0.56,1,1,0.33);
setBlendColor(spep_0-3 + 648,1,3,0.56,1,1,0.33);
setBlendColor(spep_0-3 + 649,1,3,0.5664,1,1,0.3435);
setBlendColor(spep_0-3 + 650,1,3,0.5728,1,1,0.357);
setBlendColor(spep_0-3 + 651,1,3,0.5792,1,1,0.3705);
setBlendColor(spep_0-3 + 652,1,3,0.5856,1,1,0.384);
setBlendColor(spep_0-3 + 653,1,3,0.592,1,1,0.3975);
setBlendColor(spep_0-3 + 654,1,3,0.5984,1,1,0.411);
setBlendColor(spep_0-3 + 655,1,3,0.6048,1,1,0.4245);
setBlendColor(spep_0-3 + 656,1,3,0.6112,1,1,0.438);
setBlendColor(spep_0-3 + 657,1,3,0.6176,1,1,0.4515);
setBlendColor(spep_0-3 + 658,1,3,0.624,1,1,0.465);
setBlendColor(spep_0-3 + 659,1,3,0.6304,1,1,0.4785);
setBlendColor(spep_0-3 + 660,1,3,0.6368,1,1,0.492);
setBlendColor(spep_0-3 + 661,1,3,0.6432,1,1,0.5055);
setBlendColor(spep_0-3 + 662,1,3,0.6496,1,1,0.519);
setBlendColor(spep_0-3 + 663,1,3,0.655,1,1,0.5325);
setBlendColor(spep_0-3 + 664,1,3,0.6623,1,1,0.546);
setBlendColor(spep_0-3 + 665,1,3,0.6687,1,1,0.5595);
setBlendColor(spep_0-3 + 666,1,3,0.6751,1,1,0.573);
setBlendColor(spep_0-3 + 667,1,3,0.6815,1,1,0.5865);
setBlendColor(spep_0-3 + 668,1,3,0.687,1,1,0.6);
setBlendColor(spep_0-3 + 669,1,3,0.6943,1,1,0.6135);
setBlendColor(spep_0-3 + 670,1,3,0.7007,1,1,0.627);
setBlendColor(spep_0-3 + 671,1,3,0.7071,1,1,0.6405);
setBlendColor(spep_0-3 + 672,1,3,0.7135,1,1,0.654);
setBlendColor(spep_0-3 + 673,1,3,0.719,1,1,0.6675);
setBlendColor(spep_0-3 + 674,1,3,0.7263,1,1,0.681);
setBlendColor(spep_0-3 + 675,1,3,0.7327,1,1,0.6945);
setBlendColor(spep_0-3 + 676,1,3,0.7391,1,1,0.708);
setBlendColor(spep_0-3 + 677,1,3,0.7455,1,1,0.7214);
setBlendColor(spep_0-3 + 678,1,3,0.751,1,1,0.734);
setBlendColor(spep_0-3 + 679,1,3,0.7583,1,1,0.7484);
setBlendColor(spep_0-3 + 680,1,3,0.7647,1,1,0.761);
setBlendColor(spep_0-3 + 681,1,3,0.7711,1,1,0.7754);
setBlendColor(spep_0-3 + 682,1,3,0.7775,1,1,0.788);
setBlendColor(spep_0-3 + 683,1,3,0.783,1,1,0.8024);
setBlendColor(spep_0-3 + 684,1,3,0.7903,1,1,0.815);
setBlendColor(spep_0-3 + 685,1,3,0.7967,1,1,0.8294);
setBlendColor(spep_0-3 + 686,1,3,0.8031,1,1,0.842);
setBlendColor(spep_0-3 + 687,1,3,0.8095,1,1,0.8564);
setBlendColor(spep_0-3 + 688,1,3,0.815,1,1,0.869);
setBlendColor(spep_0-3 + 689,1,3,0.8223,1,1,0.8834);
setBlendColor(spep_0-3 + 690,1,3,0.83,1,1,0.9);
setBlendColor(spep_0 + 714,1,3,0.83,1,1,0.9);
setBlendColor(spep_0 + 715,1,3,0.83,1,1,0.9);
setBlendColor(spep_0 + 716,1,3,0.83,1,1,0);

setMoveKey( spep_0-1 + 607, 1, 186, 151.4 , 0 );

setMoveKey( spep_0-1 + 608, 1, -40.1, -18.2 , 0 );
setMoveKey( spep_0-3 + 610, 1, -37.9, -16.4 , 0 );
setMoveKey( spep_0-3 + 612, 1, -35.8, -14.8 , 0 );
setMoveKey( spep_0-3 + 614, 1, -33.8, -13.2 , 0 );
setMoveKey( spep_0-3 + 616, 1, -31.9, -11.7 , 0 );
setMoveKey( spep_0-3 + 618, 1, -30, -10.3 , 0 );
setMoveKey( spep_0-3 + 620, 1, -28.2, -8.9 , 0 );
setMoveKey( spep_0-3 + 622, 1, -26.5, -7.6 , 0 );
setMoveKey( spep_0-3 + 624, 1, -24.8, -6.3 , 0 );
setMoveKey( spep_0-3 + 626, 1, -23.2, -5 , 0 );
setMoveKey( spep_0-3 + 628, 1, -21.6, -3.8 , 0 );
setMoveKey( spep_0-3 + 630, 1, -20.1, -2.6 , 0 );
setMoveKey( spep_0-3 + 632, 1, -18.6, -1.5 , 0 );
setMoveKey( spep_0-3 + 634, 1, -17.2, -0.4 , 0 );
setMoveKey( spep_0-3 + 636, 1, -15.8, 0.7 , 0 );
setMoveKey( spep_0-3 + 638, 1, -14.5, 1.8 , 0 );
setMoveKey( spep_0-3 + 640, 1, -13.1, 2.8 , 0 );
setMoveKey( spep_0-3 + 642, 1, -11.8, 3.8 , 0 );
setMoveKey( spep_0-3 + 644, 1, -10.6, 4.8 , 0 );
setMoveKey( spep_0-3 + 646, 1, -9.3, 5.7 , 0 );
setMoveKey( spep_0-3 + 648, 1, -8.1, 6.7 , 0 );
setMoveKey( spep_0-3 + 650, 1, -7, 7.6 , 0 );
setMoveKey( spep_0-3 + 652, 1, -5.8, 8.5 , 0 );
setMoveKey( spep_0-3 + 654, 1, -4.7, 9.3 , 0 );
setMoveKey( spep_0-3 + 656, 1, -3.6, 10.2 , 0 );
setMoveKey( spep_0-3 + 658, 1, -2.5, 11 , 0 );
setMoveKey( spep_0-3 + 660, 1, -1.5, 11.8 , 0 );
setMoveKey( spep_0-3 + 662, 1, -0.5, 12.6 , 0 );
setMoveKey( spep_0-3 + 664, 1, 0.5, 13.4 , 0 );
setMoveKey( spep_0-3 + 666, 1, 1.5, 14.1 , 0 );
setMoveKey( spep_0-3 + 668, 1, 2.5, 14.9 , 0 );
setMoveKey( spep_0-3 + 670, 1, 3.4, 15.6 , 0 );
setMoveKey( spep_0-3 + 672, 1, 4.3, 16.3 , 0 );
setMoveKey( spep_0-3 + 674, 1, 5.2, 17 , 0 );
setMoveKey( spep_0-3 + 676, 1, 6.1, 17.7 , 0 );
setMoveKey( spep_0-3 + 678, 1, 6.9, 18.3 , 0 );
setMoveKey( spep_0-3 + 680, 1, 7.8, 19 , 0 );
setMoveKey( spep_0-3 + 682, 1, 8.6, 19.6 , 0 );
setMoveKey( spep_0-3 + 684, 1, 9.4, 20.2 , 0 );
setMoveKey( spep_0-3 + 686, 1, 10.1, 20.8 , 0 );
setMoveKey( spep_0-3 + 688, 1, 10.9, 21.4 , 0 );
setMoveKey( spep_0-3 + 690, 1, 11.6, 22 , 0 );
setMoveKey( spep_0-3 + 692, 1, 12.3, 22.5 , 0 );
setMoveKey( spep_0-3 + 694, 1, 13, 23 , 0 );
setMoveKey( spep_0-3 + 696, 1, 13.6, 23.6 , 0 );
setMoveKey( spep_0-3 + 698, 1, 14.3, 24 , 0 );
setMoveKey( spep_0-3 + 700, 1, 14.9, 24.5 , 0 );
setMoveKey( spep_0-3 + 702, 1, 15.4, 24.9 , 0 );
setMoveKey( spep_0-3 + 704, 1, 15.9, 25.3 , 0 );
setMoveKey( spep_0-3 + 706, 1, 16.3, 25.6 , 0 );
setMoveKey( spep_0-3 + 720, 1, 16.8, 26.5 , 0 );

setScaleKey( spep_0-1 + 607, 1, 1.04, 1.04 );

setScaleKey( spep_0-1 + 608, 1, 2, 2 );
setScaleKey( spep_0-3 + 720, 1, 2, 2 );

setRotateKey( spep_0-1 + 607, 1, -10 );

setRotateKey( spep_0-1 + 608, 1, -20 );
setRotateKey( spep_0-3 + 610, 1, -19.8 );
setRotateKey( spep_0-3 + 612, 1, -19.6 );
setRotateKey( spep_0-3 + 614, 1, -19.4 );
setRotateKey( spep_0-3 + 616, 1, -19.3 );
setRotateKey( spep_0-3 + 618, 1, -19.1 );
setRotateKey( spep_0-3 + 620, 1, -18.9 );
setRotateKey( spep_0-3 + 622, 1, -18.8 );
setRotateKey( spep_0-3 + 624, 1, -18.6 );
setRotateKey( spep_0-3 + 626, 1, -18.5 );
setRotateKey( spep_0-3 + 628, 1, -18.4 );
setRotateKey( spep_0-3 + 630, 1, -18.2 );
setRotateKey( spep_0-3 + 632, 1, -18.1 );
setRotateKey( spep_0-3 + 634, 1, -18 );
setRotateKey( spep_0-3 + 636, 1, -17.9 );
setRotateKey( spep_0-3 + 638, 1, -17.7 );
setRotateKey( spep_0-3 + 640, 1, -17.6 );
setRotateKey( spep_0-3 + 642, 1, -17.5 );
setRotateKey( spep_0-3 + 644, 1, -17.4 );
setRotateKey( spep_0-3 + 646, 1, -17.3 );
setRotateKey( spep_0-3 + 648, 1, -17.2 );
setRotateKey( spep_0-3 + 650, 1, -17.1 );
setRotateKey( spep_0-3 + 652, 1, -17 );
setRotateKey( spep_0-3 + 654, 1, -16.9 );
setRotateKey( spep_0-3 + 656, 1, -16.8 );
setRotateKey( spep_0-3 + 658, 1, -16.7 );
setRotateKey( spep_0-3 + 660, 1, -16.6 );
setRotateKey( spep_0-3 + 662, 1, -16.5 );
setRotateKey( spep_0-3 + 664, 1, -16.4 );
setRotateKey( spep_0-3 + 666, 1, -16.3 );
setRotateKey( spep_0-3 + 668, 1, -16.2 );
setRotateKey( spep_0-3 + 670, 1, -16.2 );
setRotateKey( spep_0-3 + 672, 1, -16.1 );
setRotateKey( spep_0-3 + 674, 1, -16 );
setRotateKey( spep_0-3 + 676, 1, -15.9 );
setRotateKey( spep_0-3 + 678, 1, -15.9 );
setRotateKey( spep_0-3 + 680, 1, -15.8 );
setRotateKey( spep_0-3 + 682, 1, -15.7 );
setRotateKey( spep_0-3 + 684, 1, -15.6 );
setRotateKey( spep_0-3 + 686, 1, -15.6 );
setRotateKey( spep_0-3 + 688, 1, -15.5 );
setRotateKey( spep_0-3 + 690, 1, -15.4 );
setRotateKey( spep_0-3 + 692, 1, -15.4 );
setRotateKey( spep_0-3 + 694, 1, -15.3 );
setRotateKey( spep_0-3 + 696, 1, -15.3 );
setRotateKey( spep_0-3 + 698, 1, -15.2 );
setRotateKey( spep_0-3 + 700, 1, -15.2 );
setRotateKey( spep_0-3 + 702, 1, -15.1 );
setRotateKey( spep_0-3 + 704, 1, -15.1 );
setRotateKey( spep_0-3 + 720, 1, -15 );

--SE
--気弾に飲まれる
setSeVolumeByWorkId( spep_0 + 573, SE027, 62.1 );
setSeVolumeByWorkId( spep_0 + 574, SE027, 64.4 );
setSeVolumeByWorkId( spep_0 + 575, SE027, 66.7 );
setSeVolumeByWorkId( spep_0 + 576, SE027, 69 );
setSeVolumeByWorkId( spep_0 + 577, SE027, 71.3 );
setSeVolumeByWorkId( spep_0 + 578, SE027, 73.6 );
setSeVolumeByWorkId( spep_0 + 579, SE027, 75.9 );
setSeVolumeByWorkId( spep_0 + 580, SE027, 78.2 );
setSeVolumeByWorkId( spep_0 + 581, SE027, 80.5 );
setSeVolumeByWorkId( spep_0 + 582, SE027, 82.8 );
setSeVolumeByWorkId( spep_0 + 583, SE027, 85.1 );
setSeVolumeByWorkId( spep_0 + 584, SE027, 87.4 );
setSeVolumeByWorkId( spep_0 + 585, SE027, 89.7 );
setSeVolumeByWorkId( spep_0 + 586, SE027, 92 );
setSeVolumeByWorkId( spep_0 + 587, SE027, 94.3 );
setSeVolumeByWorkId( spep_0 + 588, SE027, 96.6 );
setSeVolumeByWorkId( spep_0 + 589, SE027, 98.9 );
setSeVolumeByWorkId( spep_0 + 590, SE027, 101.2 );
setSeVolumeByWorkId( spep_0 + 591, SE027, 103.5 );
setSeVolumeByWorkId( spep_0 + 592, SE027, 105.8 );
setSeVolumeByWorkId( spep_0 + 593, SE027, 108.1 );
setSeVolumeByWorkId( spep_0 + 594, SE027, 110.4 );
setSeVolumeByWorkId( spep_0 + 595, SE027, 112.7 );
setSeVolumeByWorkId( spep_0 + 596, SE027, 115 );
setSeVolumeByWorkId( spep_0 + 597, SE027, 117.3 );
setSeVolumeByWorkId( spep_0 + 598, SE027, 119.6 );
setSeVolumeByWorkId( spep_0 + 599, SE027, 121.9 );
setSeVolumeByWorkId( spep_0 + 600, SE027, 124.2 );
setSeVolumeByWorkId( spep_0 + 601, SE027, 126.5 );
setSeVolumeByWorkId( spep_0 + 602, SE027, 128.8 );
setSeVolumeByWorkId( spep_0 + 603, SE027, 131.1 );
setSeVolumeByWorkId( spep_0 + 604, SE027, 133.4 );
setSeVolumeByWorkId( spep_0 + 605, SE027, 135.7 );
setSeVolumeByWorkId( spep_0 + 606, SE027, 138 );
setSeVolumeByWorkId( spep_0 + 607, SE027, 140.3 );
setSeVolumeByWorkId( spep_0 + 608, SE027, 141 );
stopSe( spep_0 + 646, SE027, 90 );
SE028 = playSe( spep_0 + 600, 1161 );
setSeVolumeByWorkId( spep_0 + 600, SE028, 64 );
stopSe( spep_0 + 756, SE028, 12 );
SE029 = playSe( spep_0 + 600, 1024 );
setSeVolumeByWorkId( spep_0 + 600, SE029, 84 );
SE030 = playSe( spep_0 + 604, 1067 );
setSeVolumeByWorkId( spep_0 + 604, SE030, 81 );
SE031 = playSe( spep_0 + 604, 1159 );
setSeVolumeByWorkId( spep_0 + 604, SE031, 72 );
stopSe( spep_0 + 756, SE031, 18 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 610 );
entryFade( spep_0 +710, 2,  8, 2, 255, 255, 255, 255);             -- black fade
endPhase( spep_0 + 720 );
else end