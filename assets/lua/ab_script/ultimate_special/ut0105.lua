--1031820:LR_四星龍_アクティブ必殺_バーニングスピン
--sp_effect_b4_00385
--ut0105

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163980; --最初から最後まで_前 ef_001
SP_02 = 163981; --最初から最後まで_奥 ef_001b

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

--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
--setAlphaKey( 0, 1, 255 );

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 80 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 734- 1);  -- スキップ先フレーム指定
            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
            --爆発
            SE022 = playSeVer2( spep_0 + 734, 1069, "", 0, 0, 0, -1);
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初から最後まで
-------------------------------------------------

MAX_FRAME_0 = 1138;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初から最後まで_前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 最初から最後まで_奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 165.4, 53.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 168.1, 53.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 168.1, 53.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 170.8, 53.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 170.8, 53.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 173.5, 53.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 173.5, 53.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 176.2, 53.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 176.2, 53.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 178.9, 53.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 178.9, 53.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 181.6, 53.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 181.6, 53.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 184.3, 53.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 184.3, 53.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 187, 53.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 187, 53.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 189.7, 53.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 189.7, 53.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 192.4, 53.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 192.4, 53.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 195.1, 53.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 195.1, 53.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 197.7, 53.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 197.7, 53.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 200.4, 53.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 200.4, 53.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 203.1, 53.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 203.1, 53.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 205.8, 53.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 205.8, 53.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 208.5, 53.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 208.5, 53.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 211.2, 53.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 211.2, 53.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 213.9, 53.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 213.9, 53.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 216.6, 53.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 216.6, 53.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 219.3, 53.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 219.3, 53.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 222, 53.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 222, 53.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 224.7, 53.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 224.7, 53.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 227.4, 53.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 227.4, 53.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.45, 1.45 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 0 );

setRotateKey( spep_0 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 65.6, 9.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 65.6, 9.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 66.7, 9.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 66.7, 9.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 67.7, 9.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 67.7, 9.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 68.8, 9.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 68.8, 9.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 69.9, 9.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 69.9, 9.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 70.9, 9.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 70.9, 9.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 72, 9.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 72, 9.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 73.1, 9.9 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 73.1, 9.9 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 74.1, 9.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 74.1, 9.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 75.2, 9.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 75.2, 9.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 76.3, 9.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 76.3, 9.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 77.3, 9.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 77.3, 9.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 78.4, 9.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 78.4, 9.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 79.5, 9.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 79.5, 9.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 80.5, 9.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 80.5, 9.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 81.6, 9.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 81.6, 9.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 81.5, 9.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 81.5, 9.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 95.5, 9.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 95.5, 9.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 109.6, 9.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 109.6, 9.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 123.6, 9.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 123.6, 9.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 137.6, 9.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 137.6, 9.9 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, -11.7, -23.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -11.7, -23.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -11.6, -23.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -11.6, -23.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 44.4, 49.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 44.4, 49.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 17.7, -11.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 17.7, -11.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 41.5, 46.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 41.5, 46.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 8.8, 5.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 8.8, 5.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 46.4, 33.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 46.4, 33.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 19.3, -11.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 19.3, -11.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 35.4, 46.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 35.4, 46.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 11.5, -7.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 11.5, -7.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 29.6, 26.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 29.6, 26.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 12.7, 5.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 12.7, 5.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 28.6, 46.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 28.6, 46.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 17.5, -6.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 17.5, -6.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 41.1, 41.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 41.1, 41.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 12.5, 10.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 12.5, 10.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 28.6, 33.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 28.6, 33.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 13, -6.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 13, -6.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 36.9, 48.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 36.9, 48.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 12, 7.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 12, 7.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 32.9, 41.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 32.9, 41.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 16.2, 0.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 16.2, 0.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 32.6, 27.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 32.6, 27.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 182.1, 135.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 182.1, 135.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 187.2, 138.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 187.2, 138.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 180, 131.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 180, 131.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 186, 139.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 186, 139.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 179.2, 131.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 179.2, 131.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 183.6, 138.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 183.6, 138.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 175.1, 131.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 175.1, 131.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 179.9, 139.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 179.9, 139.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 171.9, 131.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 171.9, 131.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 175.1, 138.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 175.1, 138.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 165.4, 131.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 165.4, 131.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 169, 139.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 169, 139.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 159.7, 131.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 159.7, 131.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 161.7, 138.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 161.7, 138.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 150.8, 131.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 150.8, 131.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 153.2, 139.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 153.2, 139.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 143.3, 131.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 143.3, 131.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 145.3, 138.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 145.3, 138.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 135, 131.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 135, 131.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 138.6, 139.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 138.6, 139.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 129.9, 131.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 129.9, 131.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 133.1, 138.7 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 133.1, 138.7 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 124.1, 131.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 124.1, 131.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 123.5, 135.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 123.5, 135.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 127.2, 138.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 127.2, 138.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 119, 131.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 119, 131.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 124.8, 139.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 124.8, 139.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 118.2, 131.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 118.2, 131.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 123.6, 138.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 123.6, 138.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 123.4, 138.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 123.4, 138.7 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.48, 1.48 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -45 );

setBlendColor( spep_0 + 252 + OFFSET_X, 1, 3, 0.72, 0.16, 0.01, 0.6 );
setBlendColor( spep_0 + 390 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き4
setDisp( spep_0 + 700 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 734 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 700 + OFFSET_X, 1, 85.4, 141.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 85.4, 141.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 90.7, 133.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 81.7, 147.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 89.5, 135.7 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 82.7, 145.7 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 82.7, 145.7 , 0 );

setScaleKey( spep_0 + 700 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_0 + 700 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, -45 );

setBlendColor( spep_0 + 700 + OFFSET_X, 1, 3, 0.72, 0.16, 0.01, 0.6 );
setBlendColor( spep_0 + 734 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 296, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--腕広げる
SE003 = playSeVer2( spep_0 + 56, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 56, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 70, 1006, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 8, SE005, 0);
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
--炎はじめ
SE006 = playSeVer2( spep_0 + 86, 1014, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 86, 1184, "", 0, 0, 0, -1);

--炎広がる
SE008 = playSeVer2( spep_0 + 130, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE008, 67 );
SE009 = playSeVer2( spep_0 + 130, 1268, "",spep_0 + 830, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009, 151 );
SE010 = playSeVer2( spep_0 + 130, 1173, "",spep_0 + 290, 0, 32, -1);
SE011 = playSeVer2( spep_0 + 130, 1145, "",spep_0 + 284, 0, 46, -1);

--忍び寄る
SE012 = playSeVer2( spep_0 + 246, 1116, "",spep_0 + 316, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 246, 1161, "",spep_0 + 322, 0, 20, -1);

--敵つかむ
SE014 = playSeVer2( spep_0 + 288, 1006, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 288, 1012, "", 0, 0, 0, -1);

--バリア溜め
SE016 = playSeVer2( spep_0 + 374, 1255, "", 0, 18, 0, -1);
setStartTimeMs( SE016,  1200 );

--セリフカットイン
SE017 = playSeVer2( spep_0 + 342, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE017, 63 );

--バリア溜め
SE018 = playSeVer2( spep_0 + 380, 1239, "",spep_0 + 532, 0, 22, -1);
setPitch( spep_0 + 380, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );
SE019 = playSeVer2( spep_0 + 506, 1239, "",spep_0 + 678, 0, 46, -1);
setPitch( spep_0 + 506, SE019, -500 );
setTimeStretch( SE019, 0.67, 30, 4 );

--バリア向かってくる
SE020 = playSeVer2( spep_0 + 630, 1505, "",spep_0 + 784, 18, 36, -1);
setStartTimeMs( SE020,  433 );
SE021 = playSeVer2( spep_0 + 636, 1137, "", 0, 0, 0, -1);

--爆発
SE022 = playSeVer2( spep_0 + 726, 1069, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 740, 1024, "", 0, 0, 0, -1);

--降り注ぐ
SE024 = playSeVer2( spep_0 + 820, 1409, "",spep_0 + 938, 0, 34, -1);
SE025 = playSeVer2( spep_0 + 820, 1406, "",spep_0 + 946, 0, 40, -1);

--地面爆発
SE026 = playSeVer2( spep_0 + 838, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 870, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 870, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 870, SE028, -1200 );
setTimeStretch( SE028, 0.2, 30, 4 );


-- ** ボイス ** --
--「私の究極の技を受けてみろ。」
playVoice( spep_0 + 344, 1029 );
setVoiceVolume( spep_0 + 344, 1029, 134 );

--「バーニングスピン。」
playVoice( spep_0 + 530, 1030 );
setVoiceVolume( spep_0 + 530, 1030, 134 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 756);
endPhase( spep_0 + MAX_FRAME_0); -- 1138f

else end