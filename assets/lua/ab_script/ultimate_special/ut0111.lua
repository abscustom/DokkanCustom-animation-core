--4032130:LR_超サイヤ人トランクス(少年期)(未来)_アクティブ必殺：魔閃光
--sp_effect_a1_00516
--ut0111

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164330; --本編 ef_001
SP_02 = 164331; --KO ef_002

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

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1040 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1040 -13, SP_01, spep_0 + 1040 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 922);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 922, SP_01, spep_0 + 922 -1 + 2, 1);

           -- ** 音 ** --
           --魔閃光溜め
           SE047 = playSeVer2( spep_0 + 922, 1507, "", 0, 0, 0, -1);
           SE048 = playSeVer2( spep_0 + 922, 1231, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 922, SE048, 136 );
           SE049 = playSeVer2( spep_0 + 922, 1296, "",spep_0 + 976, 0, 8, -1);
           SE050 = playSeVer2( spep_0 + 922, 1441, "",spep_0 + 982, 0, 22, -1);
           setTimeStretch( SE050, 1.2, 30, 4 );
       end

    else

     setupMovie(0 , SP_01, 0, 1);

    end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- 開幕～最後まで
-------------------------------------------------

MAX_FRAME_0 = 1332;

-- ** エフェクト等 ** --
base_lwf = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 本番(ef_001)
setEffMoveKey( spep_0 + 0, base_lwf, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_lwf, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_lwf, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_lwf, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_lwf, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_lwf, 0);
setEffAlphaKey( spep_0 + 0, base_lwf, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_lwf, 255);


spep_1 = MAX_FRAME_0 - 34;


KO = entryEffectLife( spep_1 + 0, SP_02, 74, 0x80, -1, 0, 0, 0); -- KO(ef_002)
setEffMoveKey( spep_1 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_1 + 74, KO, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, KO, 1.0, 1.0);
setEffScaleKey( spep_1 + 74, KO, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, KO, 0);
setEffRotateKey( spep_1 + 74, KO, 0);
setEffAlphaKey( spep_1 + 0, KO, 0);
setEffAlphaKey( spep_1 + 32, KO, 0);
setEffAlphaKey( spep_1 + 33, KO, 255);
setEffAlphaKey( spep_1 + 74, KO, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 312 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 312 + OFFSET_X, 1, 281.3, -685.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 281.3, -685.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 262, -605.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 262, -605.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 260.6, -599.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 260.6, -599.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 259.1, -593.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 259.1, -593.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 257.6, -587.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 257.6, -587.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 256.2, -581.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 256.2, -581.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 254.7, -575.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 254.7, -575.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 253.3, -569.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 253.3, -569.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 252, -564.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 252, -564.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 250.7, -558.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 250.7, -558.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 249.5, -553.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 249.5, -553.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 248.3, -548.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 248.3, -548.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 247.2, -544.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 247.2, -544.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 246.1, -539.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 246.1, -539.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 245.2, -535.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 245.2, -535.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 244.2, -531.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 244.2, -531.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 243.3, -528.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 243.3, -528.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 242.6, -525.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 242.6, -525.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 242, -522.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 242, -522.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 241.3, -520 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 241.3, -520 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 240.9, -518 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 240.9, -518 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 240.5, -516.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 240.5, -516.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 240.3, -515.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 240.3, -515.6 , 0 );

setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.03, 1.03 );

setRotateKey( spep_0 + 312 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 1180 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1184 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1180 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 1180 + OFFSET_X, 1, -228.1, -418.4 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, -228.1, -418.4 , 0 );

setScaleKey( spep_0 + 1180 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1184 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 1180 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 1184 + OFFSET_X, 1, -3 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 50 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 50 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 50 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 50 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 50 );
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 50 );
SE012 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE012, 50 );
SE013 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE013, 32 );
SE014 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE014, 32 );
SE015 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 32 );

--手フレームイン
SE002 = playSeVer2( spep_0 + 4, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 66 );
SE004 = playSeVer2( spep_0 + 40, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 78 );
setPitch( spep_0 + 40, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 60, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 63 );

--手重なる
SE008 = playSeVer2( spep_0 + 82, 231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 141 );

--気ダメ
SE016 = playSeVer2( spep_0 + 298, 1024, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 298, 1035, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 298, 1503, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 308, 1504, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 336, 1176, "",spep_0 + 622, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 336, SE020, 69 );
SE021 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE021, 79 );
SE022 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE022, 79 );
SE023 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE023, 79 );
SE024 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE024, 79 );
SE026 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE026, 79 );
SE028 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE028, 79 );
SE029 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE029, 79 );
SE032 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE032, 79 );
SE034 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE034, 79 );
SE035 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE035, 79 );
SE037 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE037, 50 );
SE039 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE039, 50 );
SE040 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE040, 50 );
SE041 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE041, 50 );
SE042 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE042, 50 );
SE044 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE044, 50 );
SE045 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE045, 50 );
SE046 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE046, 50 );
SE051 = playSeVer2( spep_0 + 778, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE051, 40 );
SE052 = playSeVer2( spep_0 + 802, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE052, 40 );
SE054 = playSeVer2( spep_0 + 826, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE054, 40 );
SE055 = playSeVer2( spep_0 + 850, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 850, SE055, 40 );
SE056 = playSeVer2( spep_0 + 874, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 874, SE056, 40 );
SE057 = playSeVer2( spep_0 + 898, 1036, "", 0, 0, 0, -1)
setSeVolumeByWorkId( spep_0 + 898, SE057, 40 );
SE058 = playSeVer2( spep_0 + 922, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 922, SE058, 40 );
SE059 = playSeVer2( spep_0 + 946, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE059, 40 );

--気を高める
SE025 = playSeVer2( spep_0 + 422, 1258, "",spep_0 + 554, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 422, SE025, 68 );
SE027 = playSeVer2( spep_0 + 430, 1061, "", 0, 0, 0, -1);

--覚醒する
SE030 = playSeVer2( spep_0 + 486, 1514, "",spep_0 + 530, 0, 32, -1);
SE031 = playSeVer2( spep_0 + 486, 1303, "",spep_0 + 594, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 486, SE031, 82 );

--構える
SE036 = playSeVer2( spep_0 + 552, 1380, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE036, 174 );

--手をかざす
SE033 = playSeVer2( spep_0 + 580, 1480, "",spep_0 + 822, 34, 44, -1);
setSeVolumeByWorkId( spep_0 + 580, SE033, 158 );
setStartTimeMs( SE033,  1267 );
SE038 = playSeVer2( spep_0 + 594, 1117, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 676, 1117, "", 0, 0, 0, -1);
setPitch( spep_0 + 676, SE043, -600 );
setTimeStretch( SE043, 0.6, 30, 4 );

--魔閃光溜め
SE047 = playSeVer2( spep_0 + 758, 1507, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 766, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE048, 136 );
SE049 = playSeVer2( spep_0 + 774, 1296, "",spep_0 + 976, 0, 8, -1);
SE050 = playSeVer2( spep_0 + 774, 1441, "",spep_0 + 982, 0, 22, -1);
setTimeStretch( SE050, 1.2, 30, 4 );

--悟飯重なる
SE053 = playSeVer2( spep_0 + 816, 8, "", 0, 0, 0, -1);

--魔閃光発射
SE060 = playSeVer2( spep_0 + 962, 1133, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 962, 1146, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 962, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 962, SE062, 54 );
SE063 = playSeVer2( spep_0 + 978, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 978, SE063, 72 );
SE064 = playSeVer2( spep_0 + 978, 1161, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「この力で…今度こそおまえたちを倒す！！」
playVoice( spep_0 + 66, 1104 );
setVoiceVolume( spep_0 + 66, 1104, 136 );

--「魔閃光ー！！」
SE_7_1105 = playVoice( spep_0 + 934, 1105 );
setVoiceVolume( spep_0 + 932, 1105, 136 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1040; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE060, 0);
stopSe( SP_dodge - 12, SE061, 0);
stopSe( SP_dodge - 12, SE062, 0);
stopSe( SP_dodge - 12, SE063, 0);
stopSe( SP_dodge - 12, SE064, 0);
setVoiceVolume( SP_dodge - 12, SE_7_1105, 0 );

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
--気弾飛んでくる
SE065 = playSeVer2( spep_0 + 1154, 1021, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 1156, 1145, "", 0, 0, 0, -1);

--爆発
SE067 = playSeVer2( spep_0 + 1196, 1159, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 1214, 1067, "", 0, 0, 0, -1);


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1328 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end


--終わり
hideKoScreen();
dealDamage( spep_0 + 1212);
endPhase( spep_0 + MAX_FRAME_0);-- 終了フレーム 1332f

else end