-- 4027130:LR_超サイヤ人ゴッドSSベジット_アクティブ必殺技：ゴッドインパクト
-- sp_effect_b1_00261
-- ut0059

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162190;  -- 手前 ef_001
--SP_01b = 162191;  -- 奥 ef_001b


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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 52 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 52 -13, SP_01, spep_0 + 52 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1196);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1196, SP_01, spep_0 + 1196, 1);
           
           ----敵飛んでいく
           SE066 = playSeVer2( spep_0 + 1196, 1121, "",spep_0 + 1228, 0, 8, -1);
           setSeVolumeByWorkId( spep_0 + 1196, SE066, 69 );
       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 手前・奥 (1274F)
------------------------------------------------------
MAX_FRAME_0 = 1274;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 書き文字エントリー ** --
--[[ctdogon = entryEffectLife( spep_0 + 1219, 10018, 56, 0x100, -1, 0, 97.1, -88.8 );   --ドゴォンッ
setEffMoveKey( spep_0 + 1219 + OFFSET_X, ctdogon, 97.1, -88.8 , 0 );
setEffMoveKey( spep_0 + 1220 + OFFSET_X, ctdogon, 97.1, -88.8 , 0 );
setEffMoveKey( spep_0 + 1222 + OFFSET_X, ctdogon, 51.8, -28 , 0 );
setEffMoveKey( spep_0 + 1224 + OFFSET_X, ctdogon, 36, 10.7 , 0 );
setEffMoveKey( spep_0 + 1226 + OFFSET_X, ctdogon, 31, 20.1 , 0 );
setEffMoveKey( spep_0 + 1228 + OFFSET_X, ctdogon, 19.7, 22.5 , 0 );
setEffMoveKey( spep_0 + 1230 + OFFSET_X, ctdogon, 27.3, 26.9 , 0 );
setEffMoveKey( spep_0 + 1232 + OFFSET_X, ctdogon, 19.9, 24.5 , 0 );
setEffMoveKey( spep_0 + 1234 + OFFSET_X, ctdogon, 25, 34.3 , 0 );
setEffMoveKey( spep_0 + 1236 + OFFSET_X, ctdogon, 17.1, 30.8 , 0 );
setEffMoveKey( spep_0 + 1238 + OFFSET_X, ctdogon, 23.6, 34.6 , 0 );
setEffMoveKey( spep_0 + 1240 + OFFSET_X, ctdogon, 15.2, 35.7 , 0 );
setEffMoveKey( spep_0 + 1242 + OFFSET_X, ctdogon, 22.8, 37.2 , 0 );
setEffMoveKey( spep_0 + 1244 + OFFSET_X, ctdogon, 13.2, 40.2 , 0 );
setEffMoveKey( spep_0 + 1246 + OFFSET_X, ctdogon, 23.3, 41.5 , 0 );
setEffMoveKey( spep_0 + 1248 + OFFSET_X, ctdogon, 12.3, 41.7 , 0 );
setEffMoveKey( spep_0 + 1250 + OFFSET_X, ctdogon, 22.4, 40.4 , 0 );
setEffMoveKey( spep_0 + 1252 + OFFSET_X, ctdogon, 10.2, 42.8 , 0 );
setEffMoveKey( spep_0 + 1254 + OFFSET_X, ctdogon, 20.9, 45.1 , 0 );
setEffMoveKey( spep_0 + 1256 + OFFSET_X, ctdogon, 14.1, 38.2 , 0 );
setEffMoveKey( spep_0 + 1258 + OFFSET_X, ctdogon, 19.9, 49.9 , 0 );
setEffMoveKey( spep_0 + 1260 + OFFSET_X, ctdogon, 11.8, 45.4 , 0 );
setEffMoveKey( spep_0 + 1262 + OFFSET_X, ctdogon, 20, 42.4 , 0 );
setEffMoveKey( spep_0 + 1264 + OFFSET_X, ctdogon, 14.2, 51.4 , 0 );
setEffMoveKey( spep_0 + 1266 + OFFSET_X, ctdogon, 14.5, 41.6 , 0 );
setEffMoveKey( spep_0 + 1268 + OFFSET_X, ctdogon, 11.7, 51.3 , 0 );
setEffMoveKey( spep_0 + 1270 + OFFSET_X, ctdogon, 20.2, 42.6 , 0 );
setEffMoveKey( spep_0 + 1272 + OFFSET_X, ctdogon, 14.8, 51.5 , 0 );
setEffMoveKey( spep_0 + 1274 + OFFSET_X, ctdogon, 11.8, 43.6 , 0 );
setEffMoveKey( spep_0 + 1274 + OFFSET_X, ctdogon, 22.9, 45.6 , 0 );

setEffScaleKey( spep_0 + 1219 + OFFSET_X, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_0 + 1220 + OFFSET_X, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_0 + 1222 + OFFSET_X, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_0 + 1224 + OFFSET_X, ctdogon, 3.17, 3.17 );
setEffScaleKey( spep_0 + 1226 + OFFSET_X, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_0 + 1228 + OFFSET_X, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_0 + 1230 + OFFSET_X, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_0 + 1232 + OFFSET_X, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_0 + 1234 + OFFSET_X, ctdogon, 3.42, 3.42 );
setEffScaleKey( spep_0 + 1236 + OFFSET_X, ctdogon, 3.44, 3.44 );
setEffScaleKey( spep_0 + 1238 + OFFSET_X, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_0 + 1240 + OFFSET_X, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_0 + 1242 + OFFSET_X, ctdogon, 3.5, 3.5 );
setEffScaleKey( spep_0 + 1244 + OFFSET_X, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_0 + 1246 + OFFSET_X, ctdogon, 3.54, 3.54 );
setEffScaleKey( spep_0 + 1248 + OFFSET_X, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_0 + 1250 + OFFSET_X, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_0 + 1252 + OFFSET_X, ctdogon, 3.58, 3.58 );
setEffScaleKey( spep_0 + 1254 + OFFSET_X, ctdogon, 3.59, 3.59 );
setEffScaleKey( spep_0 + 1256 + OFFSET_X, ctdogon, 3.6, 3.6 );
setEffScaleKey( spep_0 + 1258 + OFFSET_X, ctdogon, 3.61, 3.61 );
setEffScaleKey( spep_0 + 1260 + OFFSET_X, ctdogon, 3.62, 3.62 );
setEffScaleKey( spep_0 + 1262 + OFFSET_X, ctdogon, 3.63, 3.63 );
setEffScaleKey( spep_0 + 1264 + OFFSET_X, ctdogon, 3.64, 3.64 );
setEffScaleKey( spep_0 + 1266 + OFFSET_X, ctdogon, 3.64, 3.64 );
setEffScaleKey( spep_0 + 1268 + OFFSET_X, ctdogon, 3.65, 3.65 );
setEffScaleKey( spep_0 + 1270 + OFFSET_X, ctdogon, 3.65, 3.65 );
setEffScaleKey( spep_0 + 1272 + OFFSET_X, ctdogon, 3.66, 3.66 );
setEffScaleKey( spep_0 + 1274 + OFFSET_X, ctdogon, 3.66, 3.66 );

setEffRotateKey( spep_0 + 1219 + OFFSET_X, ctdogon, -21.1 );
setEffRotateKey( spep_0 + 1274 + OFFSET_X, ctdogon, -21.1 );

setEffAlphaKey( spep_0 + 1219 + OFFSET_X, ctdogon, 255 );
setEffAlphaKey( spep_0 + 1273 + OFFSET_X, ctdogon, 255 );
setEffAlphaKey( spep_0 + 1274 + OFFSET_X, ctdogon, 0 );]]

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp(spep_0 + 0, 1, 1);
setDisp(spep_0 + 128 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 42 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 62 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 0, 1, 188, -236 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 186.9, -236 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 186.9, -236 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 185.8, -236 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 185.8, -236 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 184.7, -236 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 184.7, -236 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 183.6, -236 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 182.5, -236 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 181.4, -236 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 180.3, -236 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 179.2, -236 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 178.1, -236 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 177, -236 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 175.9, -236 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 174.8, -236 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 173.7, -236 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 172.6, -236 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 171.5, -236 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 170.4, -236 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 169.3, -236 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 168.2, -236 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 167.1, -236 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 166, -236 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 166, -236 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 183.3, -238.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 183.3, -238.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -234.8, -111.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -234.8, -111.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -226.8, -86.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -226.8, -86.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -217.3, -119.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -217.3, -119.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -219.3, -97.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -219.3, -97.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -239.3, -112.7 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -239.3, -112.7 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -229.3, -88.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -229.3, -88.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -217.7, -118.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -217.7, -118.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -220.8, -97.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -220.8, -97.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -239.8, -112.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -239.8, -112.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -227.8, -87.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -227.8, -87.7 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -219.2, -119.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -219.2, -119.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -220.8, -96.7 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -220.8, -96.7 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 96.7, 91.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 96.7, 91.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 63.1, -44.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 63.1, -44.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 59.6, -47.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 59.6, -47.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 54.8, -65 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 54.8, -65 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 55.2, -65.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 55.2, -65.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 52.5, -73.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 52.5, -73.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 50.2, -72.7 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 50.2, -72.7 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 50.7, -78 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 50.7, -78 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 77.6, 16.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 77.6, 16.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 77.5, 16.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 77.5, 16.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 77.6, 13.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 77.6, 13.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 122, 59.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 122, 59.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 165.9, 90.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 165.9, 90.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 167.5, 90.8 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 167.5, 90.8 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 167.6, 70.3 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 167.6, 70.3 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 174.1, 64.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 174.1, 64.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 168.7, 26.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 168.7, 26.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 277.8, 1.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 277.8, 1.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 272, -11.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 272, -11.1 , 0 );

setScaleKey( spep_0 + 0, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 86  + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.27, 2.27 );

setRotateKey( spep_0 + 0, 1, 13.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 41 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 63 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -99.8 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, -99.8 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -101 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -101 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -102.8 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -102.8 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -102 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -102 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -98.3 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -98.3 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -97 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -97 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -96.4 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -96.4 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -95.8 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -95.8 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -165 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -165 );

-- 敵の動き2
setDisp(spep_0 + 130 + OFFSET_X, 1, 1);
setDisp(spep_0 + 240 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 130 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, -221.2, 238 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -221.2, 238 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -160.5, 152.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -160.5, 152.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -162.7, 145.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -162.7, 145.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -95.8, 89.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -95.8, 89.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -95.2, 85.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -95.2, 85.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -41.7, 180.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -41.7, 180.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -42.7, 177.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -42.7, 177.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -5.8, 152.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -5.8, 152.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 20.5, 127.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 20.5, 127.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 20.4, 124.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 20.4, 124.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 23.8, 130.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 23.8, 130.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 22.4, 122.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 22.4, 122.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 83.9, 66.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 83.9, 66.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 83.9, 66.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 81.5, 58.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 81.5, 58.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 133.2, -63.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 133.2, -63.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 131.9, -77.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 131.9, -77.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 146.3, -73.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 146.3, -73.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 146.2, -81.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 146.2, -81.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 170.6, -88 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 170.6, -88 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 171.4, -91 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 171.4, -91 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 185.5, -97.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 185.5, -97.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 205.8, -108 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 205.8, -108 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 228.8, -119.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 228.8, -119.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 243, -126.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 243, -126.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 243.3, -134.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 243.3, -134.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 263.5, -139.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 263.5, -139.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 270, -142.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 270, -142.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 281.3, -143.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 281.3, -143.5 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -117 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -117 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -122 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -122 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -118 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -118 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -125.8 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -125.8 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -130.7 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -130.7 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -118 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -118 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -118.9 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -118.9 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -118.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -118.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -110 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -110 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -107.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -107.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -104 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -104 );

-- 敵の動き3
setDisp(spep_0 + 562 + OFFSET_X, 1, 1);
setDisp(spep_0 + 680 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 562 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 562 + OFFSET_X, 1, 218.3, -15.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 218.3, -15.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 211.5, 6.8 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 211.5, 6.8 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 182.6, 28.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 182.6, 28.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 176, 17.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 176, 17.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 171.8, 45 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 171.8, 45 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 175.6, 35.6 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 175.6, 35.6 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 176.5, 30 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 176.5, 30 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 169.6, 46.4 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 169.6, 46.4 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 167.6, 25.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 167.6, 25.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 172.6, 51.4 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 172.6, 51.4 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 166.1, 26.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 166.1, 26.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 167.6, 26.4 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 167.6, 26.4 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 177.6, 51 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 177.6, 51 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 176, 37.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 176, 37.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 172.6, 39.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 172.6, 39.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 176.6, 38.5 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 176.6, 38.5 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 177.6, 38.5 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 177.6, 38.5 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 170.1, 54.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 170.1, 54.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 171.5, 36.4 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 171.5, 36.4 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 170.1, 44.5 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 170.1, 44.5 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 171.1, 23.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 171.1, 23.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 171, 24.4 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 171, 24.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 157.1, 52.9 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 157.1, 52.9 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 167.1, 14.5 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 167.1, 14.5 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 174.1, 80.9 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 174.1, 80.9 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 161, 15.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 161, 15.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 161.5, 16.4 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 161.5, 16.4 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 159.6, 49.5 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 159.6, 49.5 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 186.1, 36.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 186.1, 36.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 168.6, 60.9 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 168.6, 60.9 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 167.6, 17 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 167.6, 17 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 170.1, 16.9 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 170.1, 16.9 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 165.6, 62.4 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 165.6, 62.4 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 175, -1.1 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 175, -1.1 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 171.2, 62.5 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 171.2, 62.5 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 186, -0.6 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 186, -0.6 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 186, -0.1 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 186, -0.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 169.6, 46.4 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 169.6, 46.4 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 165.6, -3.1 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 165.6, -3.1 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 169.6, 76 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 169.6, 76 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 167.3, 11.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 167.3, 11.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 166.5, 12.7 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 166.5, 12.7 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 186.9, 55.5 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 186.9, 55.5 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 157.3, -4.8 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 157.3, -4.8 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 169.1, 52.2 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 169.1, 52.2 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 175.6, 38.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 175.6, 38.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 175.6, 39 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 175.6, 39 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 170.8, 51.7 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 170.8, 51.7 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 156.8, -0.8 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 156.8, -0.8 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 154.4, 69 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 154.4, 69 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 157.1, 14.2 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 157.1, 14.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 156.3, 12.9 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 156.3, 12.9 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 186.8, 45.4 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 186.8, 45.4 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 186.4, 39.9 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 186.4, 39.9 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 170.1, 43.9 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 170.1, 43.9 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 179.5, 25.2 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 179.5, 25.2 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 179.8, 26.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 179.8, 26.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 189.2, 81.7 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 189.2, 81.7 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 162, 21.4 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 162, 21.4 , 0 );

setScaleKey( spep_0 + 562 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 2.36, 2.36 );

setRotateKey( spep_0 + 562 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 657 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 659 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 661 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 662 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 671 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 675 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 677 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 678 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 680 + OFFSET_X, 1, -3 );

-- 敵の動き4
setDisp(spep_0 + 898 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1100 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1048 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 898 + OFFSET_X, 1, 23.7, 6.6 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 23.7, 6.6 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 22.4, 5.6 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 22.4, 5.6 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 22.4, 5.6 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 19.8, 8.5 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 19.8, 8.5 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 18.5, 3.8 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 18.5, 3.8 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 20.9, 5.4 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 20.9, 5.4 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 21.3, 0.6 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 21.3, 0.6 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 21.3, 0.6 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 20.5, 10.6 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 20.5, 10.6 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 21.9, 4.9 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 21.9, 4.9 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 19.1, 7.7 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 19.1, 7.7 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 22.1, 4.8 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 22.1, 4.8 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 22.1, 4.8 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 20.6, 10.2 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 20.6, 10.2 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 20, 3.8 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 20, 3.8 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 23.2, 9.6 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 23.2, 9.6 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 20.9, 0.9 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 20.9, 0.9 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 20.9, 0.9 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 23.4, 6.3 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 23.4, 6.3 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 21.2, -0.6 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 21.2, -0.6 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 20.7, 8.6 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 20.7, 8.6 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 19.4, -1.3 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 19.4, -1.3 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 19.4, -1.3 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 22, 9.8 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 22, 9.8 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 21.1, 0.7 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 21.1, 0.7 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 20.6, 10.6 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 20.6, 10.6 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 24.1, 1.7 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 24.1, 1.7 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 22.6, 10.3 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 22.6, 10.3 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 21.9, 1.3 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 21.9, 1.3 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 20.4, 9.6 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 20.4, 9.6 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 21.2, 0.5 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 21.2, 0.5 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 22.6, 8.1 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 22.6, 8.1 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 19.7, 3.1 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 19.7, 3.1 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 23.5, 9.2 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 23.5, 9.2 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 19.3, -0.5 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 19.3, -0.5 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 19.2, 6.1 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 19.2, 6.1 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 19.8, 4.1 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 19.8, 4.1 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 21.3, 5.9 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 21.3, 5.9 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 22.3, -1.4 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 22.3, -1.4 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 20.5, 6.5 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 20.5, 6.5 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 23.2, 2.1 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 23.2, 2.1 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 19.7, 9.5 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 19.7, 9.5 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 22.3, 5.3 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 22.3, 5.3 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 19.8, 8.3 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 19.8, 8.3 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 19.9, 1.9 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 19.9, 1.9 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 21.7, 8.9 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 21.7, 8.9 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 23.8, 0.9 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 23.8, 0.9 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 23.3, 8.6 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 23.3, 8.6 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 23.3, 1.6 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 23.3, 1.6 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 23.4, 6.5 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 23.4, 6.5 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 23.9, 1.3 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 23.9, 1.3 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 28, 7.7 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 28, 7.7 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 30.6, -3.4 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 30.6, -3.4 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 28.3, 0.4 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 28.3, 0.4 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 27.3, -1.4 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 27.3, -1.4 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 29.5, 11.8 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 29.5, 11.8 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 29.4, 6 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 29.4, 6 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 25.6, 8.9 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 25.6, 8.9 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 24.1, -0.2 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 24.1, -0.2 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 18.3, 5.5 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 18.3, 5.5 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 15.3, -3 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 15.3, -3 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 16.1, 12.3 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 16.1, 12.3 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 19.2, 4.5 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 19.2, 4.5 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 14.2, 18.6 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 14.2, 18.6 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 23, 2.3 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 23, 2.3 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, -173.5, 43.3 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, -173.5, 43.3 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, -189.7, 25.8 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, -189.7, 25.8 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, -159.9, 44.7 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, -159.9, 44.7 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, -181.4, 39.8 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, -181.4, 39.8 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, -161, 46.7 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, -161, 46.7 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, -182.7, 44.4 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, -182.7, 44.4 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, -162.6, 40.4 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, -162.6, 40.4 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, -172.5, 50 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, -172.5, 50 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, -165.1, 35.6 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, -165.1, 35.6 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, -171.1, 46.3 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, -171.1, 46.3 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, -157.3, 41.5 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, -157.3, 41.5 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, -164.6, 46.8 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, -164.6, 46.8 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, -157.6, 40.6 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, -157.6, 40.6 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, -159.2, 46.8 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, -159.2, 46.8 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, -151.7, 41.1 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, -151.7, 41.1 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, -149.3, 47.5 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, -149.3, 47.5 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, -145.7, 41.7 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, -145.7, 41.7 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, -135.7, 47.2 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, -135.7, 47.2 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, -131.5, 44.6 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, -131.5, 44.6 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, -116.2, 46.2 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, -116.2, 46.2 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, -104.4, 46 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, -104.4, 46 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, -78.6, 49.4 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, -78.6, 49.4 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, -44.6, 50.3 , 0 );
setMoveKey( spep_0 + 1093 + OFFSET_X, 1, -44.6, 50.3 , 0 );
setMoveKey( spep_0 + 1094 + OFFSET_X, 1, 18.8, 53.8 , 0 );
setMoveKey( spep_0 + 1095 + OFFSET_X, 1, 18.8, 53.8 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 321.4, 70.7 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 321.4, 70.7 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 857.1, 100.1 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 857.1, 100.1 , 0 );

setScaleKey( spep_0 + 898 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1051 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1052 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1057 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1058 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1061 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1062 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 1065 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 1066 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1069 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1070 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1071 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1072 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1073 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1074 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 1075 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 1076 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1077 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1078 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1079 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1080 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1081 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1082 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 1083 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 1084 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1085 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1086 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 1087 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 1088 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1089 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1090 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 1091 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 1092 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 1093 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 1094 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 1095 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 1096 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 1097 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 1098 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 1100 + OFFSET_X, 1, 4.94, 4.94 );

setRotateKey( spep_0 + 898 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1100 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 898 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 1047 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 1048 + OFFSET_X, 1, 3, 0.1, 0.6, 1, 0.3);
setBlendColor( spep_0 + 1095 + OFFSET_X , 1, 3, 0.1, 0.6, 1, 0.3);
setBlendColor( spep_0 + 1096 + OFFSET_X , 1, 3, 0, 0, 0, 0);

-- 敵の動き5
setDisp(spep_0 + 1118 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1122 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1118 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1118 + OFFSET_X, 1, -258.6, 72.4 , 0 );
setMoveKey( spep_0 + 1122 + OFFSET_X, 1, -258.6, 72.4 , 0 );

setScaleKey( spep_0 + 1118 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1122 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 1118 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 1122 + OFFSET_X, 1, 30 );

-- 敵の動き6
setDisp(spep_0 + 1137 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1156 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 1137 + OFFSET_X, 1, 74.7, 66.1 , 0 );
setMoveKey( spep_0 + 1138 + OFFSET_X, 1, 117.3, 72.9 , 0 );
setMoveKey( spep_0 + 1140 + OFFSET_X, 1, 162.6, 72.7 , 0 );
setMoveKey( spep_0 + 1141 + OFFSET_X, 1, 162.6, 72.7 , 0 );
setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 195.1, 67.8 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 195.1, 67.8 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 199.7, 65.7 , 0 );
setMoveKey( spep_0 + 1145 + OFFSET_X, 1, 199.7, 65.7 , 0 );
setMoveKey( spep_0 + 1146 + OFFSET_X, 1, 184.1, 66.1 , 0 );
setMoveKey( spep_0 + 1147 + OFFSET_X, 1, 184.1, 66.1 , 0 );
setMoveKey( spep_0 + 1148 + OFFSET_X, 1, 160, 67.3 , 0 );
setMoveKey( spep_0 + 1149 + OFFSET_X, 1, 160, 67.3 , 0 );
setMoveKey( spep_0 + 1150 + OFFSET_X, 1, 205.3, 67 , 0 );
setMoveKey( spep_0 + 1151 + OFFSET_X, 1, 205.3, 67 , 0 );
setMoveKey( spep_0 + 1152 + OFFSET_X, 1, 178.2, 69.2 , 0 );
setMoveKey( spep_0 + 1153 + OFFSET_X, 1, 178.2, 69.2 , 0 );
setMoveKey( spep_0 + 1154 + OFFSET_X, 1, 148.9, 71.1 , 0 );
setMoveKey( spep_0 + 1156 + OFFSET_X, 1, 148.9, 71.1 , 0 );

setScaleKey( spep_0 + 1137 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1156 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 1137 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 1156 + OFFSET_X, 1, 30 );

-- 敵の動き7
setDisp(spep_0 + 1172 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1184 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 1172 + OFFSET_X, 1, -66.2, 51.1 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, -82.6, 60.5 , 0 );
setMoveKey( spep_0 + 1175 + OFFSET_X, 1, -82.6, 60.5 , 0 );
setMoveKey( spep_0 + 1176 + OFFSET_X, 1, -91.9, 55.3 , 0 );
setMoveKey( spep_0 + 1178 + OFFSET_X, 1, -80, 56.9 , 0 );
setMoveKey( spep_0 + 1180 + OFFSET_X, 1, -25.2, 58.1 , 0 );
setMoveKey( spep_0 + 1182 + OFFSET_X, 1, 13.3, 57.4 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, 13.3, 57.4 , 0 );

setScaleKey( spep_0 + 1172 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1184 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 1172 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 1184 + OFFSET_X, 1, 30 );

-- 敵の動き8
setDisp(spep_0 + 1196 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1220 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1196 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 1196 + OFFSET_X, 1, -503.8, -251.2 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, -466.7, -251.6 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, -275.7, -253.9 , 0 );
setMoveKey( spep_0 + 1202 + OFFSET_X, 1, -130.2, -255.6 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, -39.5, -256.6 , 0 );
setMoveKey( spep_0 + 1206 + OFFSET_X, 1, 26.2, -257.4 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, 73.6, -257.9 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, 105, -258.3 , 0 );
setMoveKey( spep_0 + 1212 + OFFSET_X, 1, 124.7, -258.5 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, 137, -258.7 , 0 );
setMoveKey( spep_0 + 1216 + OFFSET_X, 1, 145.4, -258.8 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, 152.4, -258.7 , 0 );
setMoveKey( spep_0 + 1220 + OFFSET_X, 1, 152.4, -258.7 , 0 );

setScaleKey( spep_0 + 1196 + OFFSET_X, 1, 7.18, 7.18 );
setScaleKey( spep_0 + 1198 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_0 + 1200 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 1202 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 1204 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 1206 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 1208 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 1210 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 1212 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 1214 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 1216 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 1218 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1220 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 1196 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 1220 + OFFSET_X, 1, 30.1 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 90, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 224 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 92, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 35 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 16 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 16 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 52; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--オーラ
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 16 );

--パンチ
SE006 = playSeVer2( spep_0 + 46, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 54, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE007, 100 );
SE008 = playSeVer2( spep_0 + 56, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 100 );

--地面に殴りつける
SE009 = playSeVer2( spep_0 + 82, 1014, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 82, 1159, "",spep_0 + 126, 0, 24, -1);

--蹴り飛ばす
SE011 = playSeVer2( spep_0 + 110, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 172 );
SE012 = playSeVer2( spep_0 + 118, 1120, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 118, 1009, "", 0, 0, 0, -1);

--地面ひきずられる
SE014 = playSeVer2( spep_0 + 166, 1159, "",spep_0 + 308, 22, 80, -1);
setStartTimeMs( SE014,  800 );

--地面バウンド
SE015 = playSeVer2( spep_0 + 134, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE015, 82 );
SE016 = playSeVer2( spep_0 + 134, 1060, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE016, 85 );

--地面ひきずられる
SE017 = playSeVer2( spep_0 + 166, 1168, "",spep_0 + 278, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 166, SE017, 79 );

--セリフカットイン
SE018 = playSeVer2( spep_0 + 238, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE018, 63 );

--気を高める
SE019 = playSeVer2( spep_0 + 272, 1117, "",spep_0 + 350, 0, 48, -1);
SE020 = playSeVer2( spep_0 + 272, 1258, "",spep_0 + 332, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 272, SE020, 66 );
SE021 = playSeVer2( spep_0 + 280, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE021, 126 );

--オーラ
SE022 = playSeVer2( spep_0 + 284, 1181, "",spep_0 + 496, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 284, SE022, 282 );
SE023 = playSeVer2( spep_0 + 284, 1176, "",spep_0 + 500, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 284, SE023, 55 );
SE024 = playSeVer2( spep_0 + 284, 1407, "",spep_0 + 502, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 284, SE024, 180 );
SE025 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE025, 16 );
SE026 = playSeVer2( spep_0 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE026, 16 );
SE027 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE027, 16 );
SE028 = playSeVer2( spep_0 + 386, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE028, 16 );
SE029 = playSeVer2( spep_0 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE029, 16 );
SE030 = playSeVer2( spep_0 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE030, 16 );

--向かってくる
SE031 = playSeVer2( spep_0 + 458, 1182, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 458, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 466, 1117, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 466, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE034, 45 );
setTimeStretch( SE034, 1.65, 30, 4 );

--振りかぶる
SE035 = playSeVer2( spep_0 + 494, 1116, "",spep_0 + 538, 0, 16, -1);
SE036 = playSeVer2( spep_0 + 500, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  100 );
SE037 = playSeVer2( spep_0 + 544, 1003, "", 0, 0, 0, -1);

----パンチヒット
SE038 = playSeVer2( spep_0 + 562, 1312, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 562, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE039, 101 );
SE040 = playSeVer2( spep_0 + 562, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE040, 101 );
SE041 = playSeVer2( spep_0 + 564, 1371, "",spep_0 + 688, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 564, SE041, 80 );
SE042 = playSeVer2( spep_0 + 564, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE042, 95 );

----風光る
SE043 = playSeVer2( spep_0 + 600, 1026, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 600, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE044, 68 );
SE045 = playSeVer2( spep_0 + 612, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE045, 145 );

----地割れ音
SE046 = playSeVer2( spep_0 + 612, 1226, "",spep_0 + 936, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 612, SE046, 40 );

----オーラ
SE047 = playSeVer2( spep_0 + 660, 1351, "", 0, 0, 0, -1);
setPitch( spep_0 + 660, SE047, 400 );
setTimeStretch( SE047, 1.8, 30, 4 );

SE048 = playSeVer2( spep_0 + 660, 1227, "",spep_0 + 1108, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 660, SE048, 63 );

SE049 = playSeVer2( spep_0 + 672, 1407, "",spep_0 + 1104, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 672, SE049, 166 );
SE050 = playSeVer2( spep_0 + 672, 1181, "",spep_0 + 1104, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 672, SE050, 155 );

----画面遷移
SE051 = playSeVer2( spep_0 + 678, 1232, "", 0, 0, 0, -1);

----顔重なる
SE052 = playSeVer2( spep_0 + 758, 1263, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 768, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE053, 78 );

----光広がる
SE054 = playSeVer2( spep_0 + 890, 1023, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 894, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 894, SE055, 71 );
SE056 = playSeVer2( spep_0 + 898, 1226, "",spep_0 + 1156, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 898, SE056, 115 );
SE057 = playSeVer2( spep_0 + 898, 1403, "",spep_0 + 1120, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 898, SE057, 71 );
SE058 = playSeVer2( spep_0 + 898, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE058, 78 );
setPitch( spep_0 + 898, SE058, 300 );
setTimeStretch( SE058, 1.2, 30, 4 );

----爆発
SE059 = playSeVer2( spep_0 + 984, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 984, SE059, 71 );
SE060 = playSeVer2( spep_0 + 1010, 1067, "", 0, 0, 0, -1);

----吹き飛ばす
SE061 = playSeVer2( spep_0 + 1044, 1303, "",spep_0 + 1140, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 1044, SE061, 47 );
SE062 = playSeVer2( spep_0 + 1044, 1282, "",spep_0 + 1130, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 1044, SE062, 56 );
setPitch( spep_0 + 1044, SE062, 500 );
setTimeStretch( SE062, 1.33, 30, 4 );

SE063 = playSeVer2( spep_0 + 1052, 1187, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_0 + 1052, 1120, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_0 + 1072, 1027, "", 0, 0, 0, -1);
setTimeStretch( SE065, 1.24, 30, 4 );

----敵飛んでいく
SE066 = playSeVer2( spep_0 + 1082, 1121, "",spep_0 + 1228, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 1082, SE066, 69 );

----ビル激突１
SE067 = playSeVer2( spep_0 + 1122, 1061, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 1126, 1024, "",spep_0 + 1200, 0, 38, -1);

----ビル激突２
SE069 = playSeVer2( spep_0 + 1154, 1023, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_0 + 1158, 1061, "", 0, 0, 0, -1);

----ビル激突３
SE071 = playSeVer2( spep_0 + 1188, 1061, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_0 + 1188, 1068, "", 0, 0, 0, -1);

----最後ビル激突
SE073 = playSeVer2( spep_0 + 1218, 1024, "",spep_0 + 1300, 0, 10, -1);
SE074 = playSeVer2( spep_0 + 1218, 1159, "",spep_0 + 1302, 0, 12, -1);

-- ** ボイス ** --
-- 「どうした！　オレのスピードにはついてこられないか？」
playVoice( spep_0 + 225, 674 );
setVoiceVolume( spep_0 + 225, 674, 120 );

-- 「くたばりやがれぇえええ！！」
playVoice( spep_0 + 666, 675 );
setVoiceVolume( spep_0 + 666, 675, 120 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1190 );
endPhase( spep_0 +  MAX_FRAME_0 );

else end
