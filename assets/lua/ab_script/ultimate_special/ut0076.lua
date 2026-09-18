-- 1029270:LR_バイオブロリー_アクティブ必殺技：超ゲノム光線
-- sp_effect_a1_00458
-- ut0076

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163219 --水面から出てくる～水飛沫 ef_001
SP_01b = 163220 --水面から出てくる～水飛沫 ef_001b

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
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 90 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 324 -1);  -- スキップ先フレーム指定

        --光線発射
        SE012 = playSeVer2( spep_0 + 324, 1027, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 324, SE012, 71 );
        SE013 = playSeVer2( spep_0 + 324, 1177, "",spep_0 + 404, 0, 16, -1);
        SE014 = playSeVer2( spep_0 + 324, 1249, "",spep_0 + 406, 0, 18, -1);
        SE015 = playSeVer2( spep_0 + 324, 1423, "",spep_0 + 408, 0, 22, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 水面から出てくる～水飛沫
------------------------------------------------------
MAX_FRAME_0 = 516;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 水面から出てくる～水飛沫 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 水面から出てくる～水飛沫 背面(ef_001_b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 26 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 26 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 26 + OFFSET_X, 1, 602.9, -603.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 602.9, -603.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 647.9, -592.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 647.9, -592.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 595.8, -629.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 595.8, -629.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 634.4, -595.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 634.4, -595.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 555.8, -586.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 555.8, -586.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 579.9, -552.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 579.9, -552.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 509.5, -547.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 509.5, -547.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 496.6, -541.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 496.6, -541.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 452.9, -486.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 452.9, -486.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 425.6, -462.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 425.6, -462.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 397.6, -438.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 397.6, -438.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 347.4, -423.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 347.4, -423.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 297.5, -408.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 297.5, -408.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 270.8, -380.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 270.8, -380.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 244.4, -352.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 244.4, -352.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 204, -326.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 204, -326.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 188.5, -304.8 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 188.5, -304.8 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 172.5, -282.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 172.5, -282.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 155.7, -258.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 155.7, -258.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 156.3, -256.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 156.3, -256.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 157.6, -255.8 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 157.6, -255.8 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 159.1, -255.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 159.1, -255.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 160.5, -255.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 160.5, -255.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 162.1, -254.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 162.1, -254.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 161.7, -254.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 161.7, -254.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 161.3, -253.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 161.3, -253.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 160.9, -252.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 160.9, -252.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 160.6, -251.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 160.6, -251.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 160.2, -250.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 160.2, -250.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 159.9, -250 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 159.9, -250 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 159.6, -249.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 159.6, -249.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 159.2, -248.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 159.2, -248.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 158.9, -247.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 158.9, -247.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 158.6, -247.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 158.6, -247.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 158.3, -246.5 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 158.3, -246.5 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 158, -245.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 158, -245.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 157.7, -245.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 157.7, -245.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 157.4, -244.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 157.4, -244.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 157.1, -243.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 157.1, -243.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 156.9, -243.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 156.9, -243.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 156.5, -242.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 156.5, -242.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 156.1, -241.4 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 156.1, -241.4 , 0 );

setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.79, 0.79 );

setRotateKey( spep_0 + 26 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 4.5 );

--敵の動き2
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 346 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, -9.7, -12.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -9.7, -12.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -31, 16.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -31, 16.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -49.3, 39.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -49.3, 39.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -65.6, 58.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -65.6, 58.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -80.9, 76.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -80.9, 76.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -95.5, 92.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -95.5, 92.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -109.7, 108 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -109.7, 108 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -123.8, 123.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -123.8, 123.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -137.8, 138.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -137.8, 138.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -152, 153.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -152, 153.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -166.5, 169.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -166.5, 169.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -136.7, 199.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -136.7, 199.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -175.7, 101.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -175.7, 101.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -136.6, 110.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -136.6, 110.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -126.2, 89.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -126.2, 89.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -115.7, 68.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -115.7, 68.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -104.9, 47.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -104.9, 47.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -94, 25.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -94, 25.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -83, 3.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -83, 3.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -71.8, -18.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -71.8, -18.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -60.6, -40.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -60.6, -40.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -49.2, -63.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -49.2, -63.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -37.8, -85.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -37.8, -85.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -26.2, -108.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -26.2, -108.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -14.6, -131.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -14.6, -131.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -2.9, -155 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -2.9, -155 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 8.9, -178.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 8.9, -178.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 20.7, -201.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 20.7, -201.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 32.6, -225.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 32.6, -225.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 44.7, -249.1 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.84, 0.83 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.84, 0.83 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.37, 0.36 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.37, 0.36 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.34, 0.33 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.34, 0.33 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.31, 0.3 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.31, 0.3 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.29, 0.28 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.29, 0.28 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.27, 0.26 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.27, 0.26 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.26, 0.25 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.26, 0.25 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.25, 0.24 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -36.3 );

-- ** 音 ** --
--水面から出てくる
SE001 = playSeVer2( spep_0 + 0, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 263 );
SE002 = playSeVer2( spep_0 + 0, 1166, "",spep_0 + 220, 0, 132, -1);
SE003 = playSeVer2( spep_0 + 6, 1471, "",spep_0 + 102, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 162 );
SE004 = playSeVer2( spep_0 + 6, 1168, "",spep_0 + 124, 0, 96, -1);
SE005 = playSeVer2( spep_0 + 12, 1023, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 66, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示
    
    entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge + 10);
    
    do return end
    else end
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--セリフカットイン
SE007 = playSeVer2( spep_0 + 150, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 63 );

--叫ぶ
SE008 = playSeVer2( spep_0 + 154, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE008, 71 );

--光溢れる
SE009 = playSeVer2( spep_0 + 176, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE009, 63 );
SE010 = playSeVer2( spep_0 + 180, 1198, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 180, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE011, 56 );

--光線発射
SE012 = playSeVer2( spep_0 + 266, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE012, 71 );
SE013 = playSeVer2( spep_0 + 266, 1177, "",spep_0 + 404, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 266, 1249, "",spep_0 + 406, 0, 18, -1);
SE015 = playSeVer2( spep_0 + 266, 1423, "",spep_0 + 408, 0, 22, -1);

--ヒット
SE016 = playSeVer2( spep_0 + 334, 1011, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 334, 1021, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_0 + 382, 1159, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 388, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 396, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE020, 282 );
SE021 = playSeVer2( spep_0 + 428, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE021, 82 );

-- ** ボイス ** --
--「グオオォォォ！」
playVoice( spep_0 + 144, 861 );
setVoiceVolume( spep_0 + 144, 861, 170 );

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 416 );
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 516f

else end
