--4032930:LR_超サイヤ人ゴッドSSべジータ(進化)+孫悟空(身勝手の極意"兆")_アクティブ必殺：ギャラクシーブレイカー
--sp_effect_a1_00522
--ut0121

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164431; --全編 ef_001

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

           skipFrame(0, spep_0 +  - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 +  - 13, SP_01, spep_0 +  - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 1024 );  -- スキップ先フレーム指定--1024
           setupMovie(spep_0 + 1024, SP_01, spep_0 + 1024 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
           --気が溢れる
           SE040 = playSeVer2( spep_0 + 1024 + 1, 1157, "",spep_0 + 1166, 0, 42, -1);
           SE041 = playSeVer2( spep_0 + 1024 + 1, 1443, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1024 + 1, SE041, 148 );
           setTimeStretch( SE041, 0.67, 30, 4 );
           SE042 = playSeVer2( spep_0 + 1024 + 1, 1449, "",spep_0 + 1162, 0, 40, -1);
           SE043 = playSeVer2( spep_0 + 1024 + 1, 1475, "", 0, 0, 0, -1);
           SE044 = playSeVer2( spep_0 + 1024 + 1, 1466, "", 0, 0, 0, -1);
           
       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- 全編
-------------------------------------------------

MAX_FRAME_0 = 1228;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 全編(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 88 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, -342, -370.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -342, -370.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -312.3, -334.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -312.3, -334.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -247.8, -253.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -247.8, -253.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -180.4, -169.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -180.4, -169.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -127.6, -103.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -127.6, -103.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -94.4, -62.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -94.4, -62.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -81.1, -45.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -81.1, -45.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -79.1, -43.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -79.1, -43.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -78.4, -42 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -78.4, -42 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -77.8, -41.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -77.8, -41.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -77.2, -40.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -77.2, -40.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -76.8, -40.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -76.8, -40.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -76.6, -39.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -76.6, -39.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -76.2, -39.1 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -76.2, -39.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -75.8, -38.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -75.8, -38.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -75.5, -38.3 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -75.5, -38.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -75.2, -38 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -75.2, -38 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -75.1, -37.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -75.1, -37.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -75, -37.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -75, -37.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -74.7, -37.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -74.7, -37.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -74.4, -36.8 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -74.4, -36.8 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -74.3, -36.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -74.3, -36.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -74.2, -36.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -74.2, -36.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -73.9, -36 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -73.9, -36 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -73.8, -35.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -73.8, -35.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -73.5, -35.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -73.5, -35.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -73.3, -35 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -73.3, -35 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -73, -34.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -73, -34.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -72.7, -34.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -72.7, -34.6 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 148 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 148 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 148 + OFFSET_X, 1, -328.2, -84.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -328.2, -84.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -246.9, -102.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -246.9, -102.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -296.1, -96.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -296.1, -96.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -239, -90.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -239, -90.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -269.7, -102.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -269.7, -102.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -236.4, -100.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -236.4, -100.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -258.1, -98.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -258.1, -98.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -240.1, -98.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -240.1, -98.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -252.1, -92.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -252.1, -92.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -241.3, -87.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -241.3, -87.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -249, -95.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -249, -95.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -242.8, -96 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -242.8, -96 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -249.4, -96.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -249.4, -96.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -248.1, -96.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -248.1, -96.5 , 0 );

setScaleKey( spep_0 + 148 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 6.79, 6.79 );

setRotateKey( spep_0 + 148 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 242 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, -59.7, 80 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -59.7, 80 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -6.8, 220.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -6.8, 220.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 2, 358.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 2, 358.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -15.7, 459.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -15.7, 459.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 6.2, 467.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 6.2, 467.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -11.7, 455.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -11.7, 455.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1.7, 477.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -1.7, 477.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -7.7, 458.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -7.7, 458.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -5.7, 466.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -5.7, 466.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 19.6, 21.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 19.6, 21.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 10, 17.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 10, 17.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -12.9, 7.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -12.9, 7.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -40.1, -4.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -40.1, -4.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -62.9, -14.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -62.9, -14.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -72.5, -18.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -72.5, -18.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -80.2, -27.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -80.2, -27.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -62.6, -7.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -62.6, -7.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 282.5, 446.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 282.5, 446.7 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.76, 2.77 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.76, 2.77 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.63, 1.64 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.63, 1.64 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.11, 0.12 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.11, 0.12 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -52 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -52 );


--敵の動き4
setDisp( spep_0 + 310 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 320 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 310 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 310 + OFFSET_X, 1, 86, 1480.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 86, 1480.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 133.9, 820 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 133.9, 820 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 166.3, 159.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 166.3, 159.9 , 0 );

setScaleKey( spep_0 + 310 + OFFSET_X, 1, 6.13, 6.14 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.13, 6.14 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.19, 6.2 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.19, 6.2 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 6.67, 6.67 );

setRotateKey( spep_0 + 310 + OFFSET_X, 1, 102 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 102 );


--敵の動き5
setDisp( spep_0 + 330 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 330 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -406.4, 553.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -406.4, 553.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -371.8, 573.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -371.8, 573.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -306.3, 472.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -306.3, 472.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -349.1, 442.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -349.1, 442.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -290.6, 349.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -290.6, 349.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -248.6, 339.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -248.6, 339.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -268.5, 282.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -268.5, 282.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -267.1, 307.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -267.1, 307.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -277.6, 329.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -277.6, 329.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -291.8, 341.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -291.8, 341.5 , 0 );

setScaleKey( spep_0 + 330 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 330 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 37 );


--敵の動き6
setDisp( spep_0 + 682 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 758 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 688 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 682 + OFFSET_X, 1, -101.9, 142 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -101.9, 142 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -107.7, 131.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -107.7, 131.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -116.1, 131.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -116.1, 131.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -103.3, 138.3 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -103.3, 138.3 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 36, 22.3 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 36, 22.3 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -80.5, 70.4 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -80.5, 70.4 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -30.8, 101 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -30.8, 101 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -54.9, 54.5 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -54.9, 54.5 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -31.8, 72.8 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -31.8, 72.8 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -25.2, 71.8 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -25.2, 71.8 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -38, 67.5 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -38, 67.5 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -41.5, 54.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -41.5, 54.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -28.8, 72.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -28.8, 72.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -36.2, 67.6 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -36.2, 67.6 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -40.2, 78.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -40.2, 78.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -40.8, 71.1 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -40.8, 71.1 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -36.5, 64.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -36.5, 64.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -26.9, 64.2 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -26.9, 64.2 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -31.6, 60.4 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -31.6, 60.4 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -48.7, 66.7 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -48.7, 66.7 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -43.2, 69.4 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -43.2, 69.4 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -33.7, 69 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -33.7, 69 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -41.6, 65.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -41.6, 65.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -38.2, 78.4 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -38.2, 78.4 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -46.6, 64.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -46.6, 64.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -37.9, 57.9 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -37.9, 57.9 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -35.4, 68.2 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -35.4, 68.2 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -31.5, 72.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -31.5, 72.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -44.2, 60.6 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -44.2, 60.6 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -41.8, 61.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -41.8, 61.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -34.6, 70.8 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -34.6, 70.8 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -37.4, 58.7 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -37.4, 58.7 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -46.8, 67.9 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -46.8, 67.9 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -37.1, 77.5 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -37.1, 77.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -46.2, 68 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -46.2, 68 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -47.5, 60.6 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -47.5, 60.6 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -31.6, 67.7 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -31.6, 67.7 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -52.6, 59.3 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -52.6, 59.3 , 0 );

setScaleKey( spep_0 + 682 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_0 + 682 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 687 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 688 + OFFSET_X, 1, 33 );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, 33 );

setBlendColor( spep_0 + 682 + OFFSET_X, 1, 3, 1, 0.8, 1, 0.25);
setBlendColor( spep_0 + 684 + OFFSET_X, 1, 3, 1, 0.8, 1, 0.42);
setBlendColor( spep_0 + 686 + OFFSET_X, 1, 3, 1, 0.8, 1, 0.5);
setBlendColor( spep_0 + 688 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 690 + OFFSET_X, 1, 3, 1, 1, 1, 0.5);
setBlendColor( spep_0 + 692 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 696 + OFFSET_X, 1, 3, 1, 0.92, 1, 0.5);
setBlendColor( spep_0 + 698 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 702 + OFFSET_X, 1, 3, 1, 0.92, 1, 0.5);
setBlendColor( spep_0 + 704 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 708 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 710 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 714 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 716 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 720 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 722 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 726 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 728 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 732 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 734 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 738 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 740 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 744 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 746 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 750 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 752 + OFFSET_X, 1, 3, 1, 0.85, 1, 0.5);
setBlendColor( spep_0 + 756 + OFFSET_X, 1, 3, 1, 0.95, 1, 0.5);
setBlendColor( spep_0 + 758 + OFFSET_X, 1, 3, 0, 0, 0, 0);


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カメラズームアウト
SE002 = playSeVer2( spep_0 + 22, 1072, "", 0, 20, 0, -1);
setStartTimeMs( SE002,  200 );
SE003 = playSeVer2( spep_0 + 24, 1188, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 62 );
setStartTimeMs( SE003,  33 );

--振りかぶる
SE004 = playSeVer2( spep_0 + 110, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 89 );
SE005 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 172, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 112 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 122; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 6, SE005, 0);
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
--腹パン
SE006 = playSeVer2( spep_0 + 142, 1359, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 142, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 150, 1190, "", 0, 0, 0, -1);

--パンチ１
SE009 = playSeVer2( spep_0 + 232, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE009, 158 );
SE010 = playSeVer2( spep_0 + 236, 1187, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_0 + 264, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE011, 67 );
SE012 = playSeVer2( spep_0 + 264, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE012, 74 );
SE013 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, -1);

--パンチ３
SE014 = playSeVer2( spep_0 + 310, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 316, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE015, 65 );
SE016 = playSeVer2( spep_0 + 316, 1120, "", 0, 0, 0, -1);

--セリフカットイン
SE017 = playSeVer2( spep_0 + 342, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE017, 63 );

--オーラ
SE018 = playSeVer2( spep_0 + 356, 1474, "",spep_0 + 630, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 356, SE018, 122 );
SE019 = playSeVer2( spep_0 + 356, 1176, "",spep_0 + 628, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 47 );

--左手握る
SE020 = playSeVer2( spep_0 + 362, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE020, 158 );
SE021 = playSeVer2( spep_0 + 362, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE021, 141 );

--右手握る
SE022 = playSeVer2( spep_0 + 414, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 414, 1233, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 428, 1006, "", 0, 0, 0, -1);

--気ダメ
SE025 = playSeVer2( spep_0 + 490, 1035, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 490, 1503, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 490, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE027, 63 );

--気を放出する
SE028 = playSeVer2( spep_0 + 570, 1114, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 570, 1258, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 570, 1213, "",spep_0 + 740, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 570, SE030, 76 );
SE031 = playSeVer2( spep_0 + 580, 1212, "",spep_0 + 726, 0, 34, -1);
SE032 = playSeVer2( spep_0 + 580, 1022, "", 0, 0, 0, -1);

--敵ヒット
SE033 = playSeVer2( spep_0 + 682, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 682, 1423, "",spep_0 + 812, 0, 26, -1);

--地響き
SE035 = playSeVer2( spep_0 + 758, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE035, 50 );
setTimeStretch( SE035, 1.11, 30, 4 );
SE036 = playSeVer2( spep_0 + 758, 1044, "",spep_0 + 1078, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 758, SE036, 71 );
SE037 = playSeVer2( spep_0 + 758, 1226, "",spep_0 + 1076, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 758, SE037, 58 );

--気が爆発する
SE038 = playSeVer2( spep_0 + 856, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE038, 75 );
SE039 = playSeVer2( spep_0 + 900, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 900, SE039, 76 );

--気が溢れる
SE040 = playSeVer2( spep_0 + 1022, 1157, "",spep_0 + 1166, 0, 42, -1);
SE041 = playSeVer2( spep_0 + 1022, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE041, 148 );
setTimeStretch( SE041, 0.67, 30, 4 );
SE042 = playSeVer2( spep_0 + 1022, 1449, "",spep_0 + 1162, 0, 40, -1);
SE043 = playSeVer2( spep_0 + 1022, 1475, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 1022, 1466, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_0 + 1114, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1114, SE045, 130 );
SE046 = playSeVer2( spep_0 + 1162, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1162, SE046, 130 );


-- ** ボイス ** --
--「神の極意などオレには必要ない！！」
playVoice( spep_0 + 358, 1157 );
setVoiceVolume( spep_0 + 358, 1157, 100 );

--「これがサイヤ人の力だ！！！」
playVoice( spep_0 + 818, 1158 );
setVoiceVolume( spep_0 + 822, 1158, 100 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1106);
endPhase( spep_0 + MAX_FRAME_0); -- 1228f

else end