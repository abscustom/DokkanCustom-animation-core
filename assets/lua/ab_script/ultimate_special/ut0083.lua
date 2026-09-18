--1030640:UR_グロリオ_アクティブ必殺技：ライトニングバスター
--sp_effect_a4_00027
--ut0083
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01  = 163516; --ビーム発射〜敵着弾まで ef_001
--SP_01b = 163517; --ビーム発射〜敵着弾まで ef_001b
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
           skipFrame(0, spep_0 + 774 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 774 -13, SP_01, spep_0 + 774 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 876);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 876, SP_01, spep_0 + 876 - 1 + 2, 1);

           -- ** 音 ** --
           --気弾飛んでいく
           SE032 = playSeVer2( spep_0 + 876 + 1, 1212, "", 0, 72, 0, -1);
           setStartTimeMs( SE032,  500 );
           SE033 = playSeVer2( spep_0 + 876 + 1, 1213, "",spep_0 + 974, 0, 30, -1);
           setSeVolumeByWorkId( spep_0 + 876 + 1, SE033, 46 );

           --気弾発射
           SE034 = playSeVer2( spep_0 + 876 + 1, 1215, "",spep_0 + 974, 0, 28, -1);
           SE035 = playSeVer2( spep_0 + 876 + 1, 1258, "", 0, 0, 0, -1);

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
  
  
-------------------------------------------------
-- ビーム発射〜敵着弾まで
-------------------------------------------------
 
MAX_FRAME_0 = 1094;

-- ** エフェクト等 ** --

base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ビーム発射〜敵着弾まで (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ビーム発射〜敵着弾まで (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 394 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 312 + OFFSET_X, 1, 118 )

setMoveKey( spep_0 + 312 + OFFSET_X, 1, 336.8, 147.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 336.8, 147.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 340.1, 147.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 340.1, 147.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 343.3, 147.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 343.3, 147.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 346.5, 147.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 346.5, 147.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 349.7, 147.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 349.7, 147.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 352.9, 147.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 352.9, 147.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 356.2, 147.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 356.2, 147.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 359.4, 147.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 359.4, 147.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 362.6, 147.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 362.6, 147.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 365.8, 147.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 365.8, 147.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 369.1, 147.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 369.1, 147.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 372.3, 147.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 372.3, 147.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 375.5, 147.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 375.5, 147.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 378.7, 147.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 378.7, 147.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 381.9, 147.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 381.9, 147.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 385.2, 147.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 385.2, 147.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 388.4, 147.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 388.4, 147.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 391.6, 147.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 391.6, 147.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 394.8, 147.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 394.8, 147.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 398.1, 147.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 398.1, 147.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 401.3, 147.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 401.3, 147.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 404.5, 147.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 404.5, 147.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 407.7, 147.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 407.7, 147.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 411, 147.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 411, 147.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 414.2, 147.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 414.2, 147.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 417.4, 147.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 417.4, 147.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 420.6, 147.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 420.6, 147.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 423.8, 147.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 423.8, 147.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 427.1, 147.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 427.1, 147.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 430.3, 147.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 430.3, 147.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 433.5, 147.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 433.5, 147.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 436.7, 147.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 436.7, 147.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 440, 147.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 440, 147.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 443.2, 147.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 443.2, 147.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 446.4, 147.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 446.4, 147.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 449.6, 147.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 449.6, 147.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 452.9, 147.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 452.9, 147.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 456.1, 147.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 456.1, 147.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 459.3, 147.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 459.3, 147.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 462.5, 147.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 462.5, 147.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 465.7, 147.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 465.7, 147.1 , 0 );

setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 3.87, 3.87 );

setRotateKey( spep_0 + 312 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -4.1 );

--敵の動き2
setDisp( spep_0 + 928 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1096 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 928 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 946 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 956 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 928 + OFFSET_X, 1, 0, -126.5 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 0, -126.5 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 0.2, -126.7 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 0.2, -126.7 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 0.5, -126.8 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 0.5, -126.8 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 0.7, -127 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 0.7, -127 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 23.9, -153.6 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 23.9, -153.6 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -7.6, -90.4 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, -7.6, -90.4 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 17.6, -105.7 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 17.6, -105.7 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 0.8, -126.5 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 0.8, -126.5 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 20.4, -157.6 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 20.4, -157.6 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 14.7, -117.3 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 14.7, -117.3 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 38.1, -146.6 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 38.1, -146.6 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 10.5, -101.7 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 10.5, -101.7 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 21.3, -117.3 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 21.3, -117.3 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 28.9, -104.1 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 28.9, -104.1 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 4.1, -121.5 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 4.1, -121.5 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 11.4, -135.1 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 6.8, -129 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 6.9, -129 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 6.9, -129 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 11.5, -135.1 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 6.9, -129 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 6.9, -129 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 11.6, -135.1 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 11.6, -135.1 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 7, -129 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 7, -129 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 11.6, -135.2 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 11.6, -135.2 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 7, -129 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 7, -129 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 11.7, -135.2 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 11.7, -135.2 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 7.1, -129 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 7.1, -129 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 11.8, -135.2 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 11.8, -135.2 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 7.1, -129 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 7.1, -129 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 11.8, -135.2 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 11.8, -135.2 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 7.2, -129.1 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 7.2, -129.1 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 11.9, -135.2 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 11.9, -135.2 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 7.3, -129.1 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 7.3, -129.1 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 12, -135.2 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 12, -135.2 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 7.4, -129.1 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 7.4, -129.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 12.1, -135.3 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 12.1, -135.3 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 7.5, -129.1 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 7.5, -129.1 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 12.2, -135.3 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 12.2, -135.3 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 7.6, -129.1 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 7.6, -129.1 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 12.3, -135.3 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 12.3, -135.3 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 7.7, -129.2 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 7.7, -129.2 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 12.4, -135.3 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 12.4, -135.3 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 7.9, -129.2 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 7.9, -129.2 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 12.6, -135.4 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 12.6, -135.4 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 8, -129.2 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 8, -129.2 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 12.7, -135.4 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 12.7, -135.4 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 8.1, -129.3 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 8.1, -129.3 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 12.9, -135.4 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 12.9, -135.4 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 8.3, -129.3 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 8.3, -129.3 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 13, -135.5 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 13, -135.5 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 8.5, -129.3 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 8.5, -129.3 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 13.2, -135.5 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 13.2, -135.5 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 8.6, -129.4 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 8.6, -129.4 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, 13.3, -135.6 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, 8.6, -129.5 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 8.6, -129.5 , 0 );

setScaleKey( spep_0 + 928 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1096 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 928 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 955 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 956 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 967 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 968 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_0 + 975 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 983 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 984 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 987 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 988 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_0 + 993 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 1009 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 1011 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 1012 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 1015 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 1016 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 1017 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 1018 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_0 + 1019 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 1021 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 1022 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 1023 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 1024 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 1025 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 1026 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 1027 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 1028 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 1029 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 1030 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 1031 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 1032 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 1033 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 1034 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 1035 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_0 + 1036 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 1037 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 1038 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_0 + 1039 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_0 + 1040 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 1041 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 1042 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_0 + 1043 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_0 + 1044 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 1045 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 1046 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 1096 + OFFSET_X, 1, -28.8 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 260, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 63 );

--顔かまえる
SE003 = playSeVer2( spep_0 + 80, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 76 );

--腕前に出す
SE004 = playSeVer2( spep_0 + 136, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE004, 77 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 204, 1334, "",spep_0 + 300, 0, 48, -1);
SE006 = playSeVer2( spep_0 + 206, 1393, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 206, 1443, "",spep_0 + 390, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 71 );
setTimeStretch( SE007, 1.43, 30, 4 );
SE008 = playSeVer2( spep_0 + 206, 1281, "", 0, 0, 0, -1);
setPitch( spep_0 + 206, SE008, 500 );
setTimeStretch( SE008, 1.33, 30, 4 );
SE009 = playSeVer2( spep_0 + 206, 1396, "",spep_0 + 736, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 206, SE009, 68 );
SE010 = playSeVer2( spep_0 + 252, 1371, "", 0, 50, 0, -1);
setStartTimeMs( SE010,  767 );
setPitch( spep_0 + 252, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );

--イナヅマ溜め
SE011 = playSeVer2( spep_0 + 266, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE011, 73 );

--気弾溜め
SE012 = playSeVer2( spep_0 + 266, 1444, "", 0, 0, 0, -1);
--SE013 = playSeVer2( spep_0 + 366, 1444, "", 0, 0, 0, -1);

--ラスト溜め
SE014 = playSeVer2( spep_0 + 556, 1336, "",spep_0 + 758, 94, 44, -1);
setStartTimeMs( SE014,  2800 );

--画面遷移
SE015 = playSeVer2( spep_0 + 390, 1232, "", 0, 0, 0, -1);

--気弾溜め
SE016 = playSeVer2( spep_0 + 452, 1444, "", 0, 0, 0, -1);

--風圧
SE018 = playSeVer2( spep_0 + 484, 1427, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_0 + 522, 1393, "",spep_0 + 756, 0, 68, -1);
SE021 = playSeVer2( spep_0 + 570, 1281, "",spep_0 + 724, 0, 40, -1);
setPitch( spep_0 + 570, SE021, 500 );
setTimeStretch( SE021, 1.33, 30, 4 );

--イナヅマ溜め
SE022 = playSeVer2( spep_0 + 606, 1147, "",spep_0 + 752, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 606, SE022, 65 );

--手のひらで気弾収束する
SE023 = playSeVer2( spep_0 + 674, 1431, "",spep_0 + 770, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 674, SE023, 135 );
SE024 = playSeVer2( spep_0 + 674, 1026, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 682, 1466, "",spep_0 + 764, 0, 44, -1);

--気弾発射
SE026 = playSeVer2( spep_0 + 736, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE026, 182 );
SE027 = playSeVer2( spep_0 + 736, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE027, 141 );
SE028 = playSeVer2( spep_0 + 736, 1177, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 736, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE029, 168 );
SE030 = playSeVer2( spep_0 + 736, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 750, 1056, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「そろそろ、終わりだ」
playVoice( spep_0 + 4, 897 );
setVoiceVolume( spep_0 + 4, 897, 114 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 774; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
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
--気弾飛んでいく
SE032 = playSeVer2( spep_0 + 816, 1212, "", 0, 72, 0, -1);
setStartTimeMs( SE032,  500 );
SE033 = playSeVer2( spep_0 + 816, 1213, "",spep_0 + 974, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 816, SE033, 46 );

--気弾発射
SE034 = playSeVer2( spep_0 + 816, 1215, "",spep_0 + 974, 0, 28, -1);
SE035 = playSeVer2( spep_0 + 816, 1258, "", 0, 0, 0, -1);

--敵ヒット
SE036 = playSeVer2( spep_0 + 936, 1043, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 936, 1038, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 946, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 974, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 974, SE039, 130 );
SE040 = playSeVer2( spep_0 + 1004, 1056, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1050, 1056, "", 0, 0, 0, -1);


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 956);
endPhase( spep_0 + MAX_FRAME_0);--1094f
 
else end