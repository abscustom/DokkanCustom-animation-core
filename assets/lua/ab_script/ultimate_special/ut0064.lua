-- 1028060:LR_超サイヤ人孫悟空&超サイヤ人ベジータ&超サイヤ人トランクス(青年期)_アクティブ必殺：元気玉超サイヤ人
-- sp_effect_b1_00271
-- ut0064

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162529;  -- 前面ef_001
SP_01b = 162530;  -- 背面ef_001b
SP_01u = 162531;  -- 最前面ef_001u

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
setAlphaKey( 0, 1, 255 );

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
           skipFrame(0, spep_0 + 662 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 662 -13, SP_01, spep_0 + 662 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1590);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1590, SP_01, spep_0 + 1590 -1 + 2, 1);

           --環境音
           SE071 = playSeVer2( spep_0 + 1590, 1356, "", 0, 14, 0, -1); 
           setSeVolumeByWorkId( spep_0 + 1560, SE071, 59 );
           setStartTimeMs( SE071,  3000 );
           SE078 = playSeVer2( spep_0 + 1590, 1278, "", 0, 28, 0, -1); 
           setSeVolumeByWorkId( spep_0 + 1590, SE078, 50 ); 
           setStartTimeMs( SE078,  2533 );
           
       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭
------------------------------------------------------
MAX_FRAME_0 = 1706;

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

base_0u = entryEffect( spep_0 + 0, SP_01u, 0x100, -1, 0, 0, 0); -- 手前(ef_001u)
setEffMoveKey( spep_0 + 0, base_0u, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0u, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0u, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0u, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0u, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0u, 0);
setEffAlphaKey( spep_0 + 0, base_0u, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0u, 255);

base_0u = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 手前(ef_001b)
setEffMoveKey( spep_0 + 0, base_0u, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0u, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0u, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0u, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0u, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0u, 0);
setEffAlphaKey( spep_0 + 0, base_0u, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0u, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1,   170 + 222.5, -225.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1,   170 + 222.6, -225.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1,   170 + 222.6, -225.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1,   170 + 222.8, -225.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1,   170 + 222.8, -225.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1,   170 + 223, -225.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1,   170 + 223, -225.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1,   170 + 223.2, -225.9 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1,   170 + 223.2, -225.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1,  170 + 223.4, -226 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1,  170 + 223.4, -226 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1,  170 + 223.5, -226.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1,  170 + 223.5, -226.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1,  170 + 223.7, -226.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1,  170 + 223.7, -226.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1,  170 + 223.9, -226.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1,  170 + 223.9, -226.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1,  170 + 224.1, -226.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1,  170 + 224.1, -226.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1,  170 + 224.3, -226.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1,  170 + 224.3, -226.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1,  170 + 224.4, -226.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1,  170 + 224.4, -226.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1,  170 + 224.6, -227 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1,  170 + 224.6, -227 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1,  170 + 224.8, -227.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1,  170 + 224.8, -227.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1,  170 + 225, -227.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1,  170 + 225, -227.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1,  170 + 225.2, -227.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1,  170 + 225.2, -227.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1,  170 + 225.3, -227.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1,  170 + 225.3, -227.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1,  170 + 225.5, -227.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1,  170 + 225.5, -227.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1,  170 + 225.7, -227.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1,  170 + 225.7, -227.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1,  170 + 225.9, -227.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1,  170 + 225.9, -227.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1,  170 + 226.1, -228 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1,  170 + 226.1, -228 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1,  170 + 226.2, -228.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1,  170 + 226.2, -228.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1,  170 + 226.4, -228.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1,  170 + 226.4, -228.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1,  170 + 226.6, -228.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1,  170 + 226.6, -228.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1,  170 + 226.8, -228.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1,  170 + 226.8, -228.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1,  170 + 227, -228.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1,  170 + 227, -228.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1,  170 + 227.1, -228.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1,  170 + 227.1, -228.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1,  170 + 227.3, -228.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1,  170 + 227.3, -228.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1,  170 + 227.5, -229 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1,  170 + 227.5, -229 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1,  170 + 227.7, -229.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1,  170 + 227.7, -229.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1,  170 + 227.9, -229.3 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1,  170 + 227.9, -229.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1,  170 + 228.1, -229.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1,  170 + 228.1, -229.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1,  170 + 228.2, -229.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1,  170 + 228.2, -229.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1,  170 + 228.4, -229.7 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1,  170 + 228.4, -229.7 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1,  170 + 228.6, -229.8 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1,  170 + 228.6, -229.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1,  170 + 228.8, -230 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1,  170 + 228.8, -230 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1,  170 + 229, -230.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1,  170 + 229, -230.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1,  170 + 229.1, -230.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1,  170 + 229.1, -230.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1,  170 + 229.3, -230.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1,  170 + 229.3, -230.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1,  170 + 229.5, -230.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1,  170 + 229.5, -230.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1,  170 + 229.7, -230.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1,  170 + 229.7, -230.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1,  170 + 229.9, -230.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1,  170 + 229.9, -230.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1,  170 + 230, -230.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1,  170 + 230, -230.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1,  170 + 230.2, -231 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1,  170 + 230.2, -231 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1,  170 + 230.4, -231.1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1,  170 + 230.4, -231.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1,  170 + 230.6, -231.3 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1,  170 + 230.6, -231.3 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1,  170 + 230.8, -231.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1,  170 + 230.8, -231.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1,  170 + 230.9, -231.5 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1,  170 + 230.9, -231.5 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1,  170 + 231.1, -231.7 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1,  170 + 231.1, -231.7 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1,  170 + 231.3, -231.8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1,  170 + 231.3, -231.8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 170 + 231.5, -231.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 170 + 231.5, -231.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 170 + 231.7, -232 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 170 + 231.7, -232 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 170 + 231.8, -232.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 170 + 231.8, -232.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 170 + 232, -232.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 170 + 232, -232.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 170 + 232.2, -232.4 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 170 + 232.2, -232.4 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 170 + 232.4, -232.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 170 + 232.4, -232.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 170 + 232.6, -232.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 170 + 232.6, -232.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 170 + 232.7, -232.8 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 170 + 232.7, -232.8 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 170 + 232.9, -233 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 170 + 232.9, -233 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 170 + 233.1, -233.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 170 + 233.1, -233.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 170 + 233.3, -233.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 170 + 233.3, -233.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 170 + 233.5, -233.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 170 + 233.5, -233.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 170 + 233.6, -233.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 170 + 233.6, -233.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 170 + 233.8, -233.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 170 + 233.8, -233.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 170 + 234, -233.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 170 + 234, -233.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 170 + 234.2, -233.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 170 + 234.2, -233.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 170 + 234.4, -234 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 170 + 234.4, -234 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 170 + 234.5, -234.1 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 170 + 234.5, -234.1 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 170 + 234.7, -234.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 170 + 234.7, -234.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 170 + 234.9, -234.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 170 + 234.9, -234.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 170 + 235.1, -234.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 170 + 235.1, -234.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 170 + 235.3, -234.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 170 + 235.3, -234.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 170 + 235.4, -234.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 170 + 235.4, -234.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 170 + 235.6, -234.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 170 + 235.6, -234.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 170 + 235.8, -235 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 170 + 235.8, -235 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 170 + 236, -235.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 170 + 236, -235.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 170 + 236.2, -235.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 170 + 236.2, -235.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 170 + 236.3, -235.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 170 + 236.3, -235.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 170 + 236.5, -235.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 170 + 236.5, -235.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 170 + 236.7, -235.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 170 + 236.7, -235.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 170 + 236.9, -235.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 170 + 236.9, -235.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 170 + 237.1, -236 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 170 + 237.1, -236 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 170 + 237.2, -236.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 170 + 237.2, -236.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 170 + 237.4, -236.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 170 + 237.4, -236.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 170 + 237.6, -236.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 170 + 237.6, -236.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 170 + 237.8, -236.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 170 + 237.8, -236.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 170 + 238, -236.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 170 + 238, -236.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 170 + 238.1, -236.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 170 + 238.1, -236.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 170 + 238.3, -236.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 170 + 238.3, -236.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 170 + 238.5, -237 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 170 + 238.5, -237 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 170 + 238.7, -237.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 170 + 238.7, -237.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 170 + 238.9, -237.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 170 + 238.9, -237.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 170 + 239, -237.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 170 + 239, -237.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 170 + 239.2, -237.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 170 + 239.2, -237.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 170 + 239.4, -237.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 170 + 239.4, -237.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 170 + 239.6, -237.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 170 + 239.6, -237.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 170 + 239.8, -237.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 170 + 239.8, -237.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 170 + 239.9, -238 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 170 + 239.9, -238 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 170 + 240.1, -238.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 170 + 240.1, -238.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 170 + 240.3, -238.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 170 + 240.3, -238.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 170 + 240.5, -238.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 170 + 240.5, -238.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 170 + 249, -240.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 170 + 249, -240.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 170 + 274.6, -247.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 170 + 274.6, -247.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 170 + 317.3, -258.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 170 + 317.3, -258.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 170 + 377.1, -274.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 170 + 377.1, -274.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 170 + 454, -294.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 170 + 454, -294.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 170 + 547.9, -318.8 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 670 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 700 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 670 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 670 + OFFSET_X, 1, 227, -285.9 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 227, -285.9 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 255.4, -299.2 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 255.4, -299.2 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 283.8, -312.4 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 283.8, -312.4 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 312.3, -325.7 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 312.3, -325.7 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 340.7, -338.9 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 340.7, -338.9 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 369.2, -352.2 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 369.2, -352.2 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 397.6, -365.4 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 397.6, -365.4 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 419.8, -523.8 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 419.8, -523.8 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 442, -682.3 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 442, -682.3 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 380, -744.3 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 380, -744.3 , 0 );

setScaleKey( spep_0 + 670 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 7.7, 7.7 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 7.7, 7.7 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 10.3, 10.3 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 10.3, 10.3 );

setRotateKey( spep_0 + 670 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 720 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 740 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 720 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 720 + OFFSET_X, 1, 75.6, -86.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 75.6, -86.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 80.8, -85.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 80.8, -85.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 86, -84.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 86, -84.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 91.2, -83.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 91.2, -83.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 84.9, -95.8 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 84.9, -95.8 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 72.3, -95.8 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 72.3, -95.8 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 97.5, -108.4 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 97.5, -108.4 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 151.1, -102.1 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 151.1, -102.1 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 201.5, -86.4 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 201.5, -86.4 , 0 );

setScaleKey( spep_0 + 720 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 2.48, 2.48 );

setRotateKey( spep_0 + 720 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, -67 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, -67 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, -69 );

-- 敵の動き4
setDisp( spep_0 + 754 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 854 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 754 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 804 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 810 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 754 + OFFSET_X, 1, 51.7, -79.3 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 51.7, -79.3 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 61.5, -72.5 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 61.5, -72.5 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 71.4, -65.8 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 71.4, -65.8 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 81.3, -59 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 81.3, -59 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 91.2, -52.3 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 91.2, -52.3 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 101, -45.5 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 101, -45.5 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 110.9, -38.7 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 110.9, -38.7 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 120.8, -32 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 120.8, -32 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 130.7, -25.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 130.7, -25.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 135.7, -22.4 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 135.7, -22.4 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 140.7, -19.5 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 140.7, -19.5 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 145.6, -16.6 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 145.6, -16.6 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 150.6, -13.7 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 150.6, -13.7 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 155.6, -10.9 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 155.6, -10.9 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 160.6, -8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 160.6, -8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 165.6, -5.1 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 165.6, -5.1 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 170.6, -2.2 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 170.6, -2.2 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 174, 0.4 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 174, 0.4 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 177.5, 3 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 177.5, 3 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 180.9, 5.6 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 180.9, 5.6 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 184.4, 8.3 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 184.4, 8.3 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 187.8, 10.9 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 187.8, 10.9 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 191.2, 13.5 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 191.2, 13.5 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 194.7, 16.2 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 194.7, 16.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 198.1, 18.8 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 198.1, 18.8 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 189.2, -143 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 189.2, -143 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 193.7, -115.2 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 193.7, -115.2 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 2 + 198.2, -117.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 2 + 198.2, -117.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 8 + 202.7, -119.7 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 8 + 202.7, -119.7 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 16 + 207.2, -122 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 16 + 207.2, -122 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 30 + 211.7, -161 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 30 + 211.7, -161 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 65 + 216.3, -126.5 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 65 + 216.3, -126.5 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 91 + 228.1, -138.6 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 91 + 228.1, -138.6 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 128 + 232.6, -140.8 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 128 + 232.6, -140.8 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 165 + 237.1, -143.1 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 165 + 237.1, -143.1 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 205 + 241.6, -145.3 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 205 + 241.6, -145.3 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 256 + 246.1, -147.6 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 256 + 246.1, -147.6 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 318 + 250.7, -149.9 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 318 + 250.7, -149.9 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 380 + 255.2, -152.1 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 380 + 255.2, -152.1 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 495 + 259.7, -154.4 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 495 + 259.7, -154.4 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 558 + 264.2, -156.6 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 558 + 264.2, -156.6 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 650 + 268.7, -158.9 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 650 + 268.7, -158.9 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 750 + 273.2, -161.2 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 750 + 273.2, -161.2 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 850 + 277.7, -163.4 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 850 + 277.7, -163.4 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 950 + 282.2, -165.7 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 950 + 282.2, -165.7 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 1050 + 286.7, -167.9 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 1050 + 286.7, -167.9 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 1150 + 291.2, -170.2 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 1150 + 291.2, -170.2 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 1250 + 295.7, -172.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 1250 + 295.7, -172.5 , 0 );

setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 809 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 817 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 818 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 819 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 820 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 821 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 822 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 837 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 838 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 845 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 846 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 851 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 852 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 4.95, 4.95 );

setRotateKey( spep_0 + 754 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -32.2 );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -32.2 );

-- 敵の動き5
setDisp( spep_0 + 1466 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1700 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1466 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 1568 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 1576 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 1466 + OFFSET_X, 1, 12.1, -95.6 , 0 );
setMoveKey( spep_0 + 1467 + OFFSET_X, 1, 12.1, -95.6 , 0 );
setMoveKey( spep_0 + 1468 + OFFSET_X, 1, 21, -89.1 , 0 );
setMoveKey( spep_0 + 1469 + OFFSET_X, 1, 21, -89.1 , 0 );
setMoveKey( spep_0 + 1470 + OFFSET_X, 1, 29.9, -82.6 , 0 );
setMoveKey( spep_0 + 1471 + OFFSET_X, 1, 29.9, -82.6 , 0 );
setMoveKey( spep_0 + 1472 + OFFSET_X, 1, 38.7, -76.2 , 0 );
setMoveKey( spep_0 + 1473 + OFFSET_X, 1, 38.7, -76.2 , 0 );
setMoveKey( spep_0 + 1474 + OFFSET_X, 1, 47.4, -69.8 , 0 );
setMoveKey( spep_0 + 1475 + OFFSET_X, 1, 47.4, -69.8 , 0 );
setMoveKey( spep_0 + 1476 + OFFSET_X, 1, 55.9, -63.5 , 0 );
setMoveKey( spep_0 + 1477 + OFFSET_X, 1, 55.9, -63.5 , 0 );
setMoveKey( spep_0 + 1478 + OFFSET_X, 1, 64.4, -57.3 , 0 );
setMoveKey( spep_0 + 1479 + OFFSET_X, 1, 64.4, -57.3 , 0 );
setMoveKey( spep_0 + 1480 + OFFSET_X, 1, 72.8, -51.1 , 0 );
setMoveKey( spep_0 + 1481 + OFFSET_X, 1, 72.8, -51.1 , 0 );
setMoveKey( spep_0 + 1482 + OFFSET_X, 1, 81.2, -45 , 0 );
setMoveKey( spep_0 + 1483 + OFFSET_X, 1, 81.2, -45 , 0 );
setMoveKey( spep_0 + 1484 + OFFSET_X, 1, 89.4, -39 , 0 );
setMoveKey( spep_0 + 1485 + OFFSET_X, 1, 89.4, -39 , 0 );
setMoveKey( spep_0 + 1486 + OFFSET_X, 1, 97.5, -33 , 0 );
setMoveKey( spep_0 + 1487 + OFFSET_X, 1, 97.5, -33 , 0 );
setMoveKey( spep_0 + 1488 + OFFSET_X, 1, 105.5, -27.1 , 0 );
setMoveKey( spep_0 + 1489 + OFFSET_X, 1, 105.5, -27.1 , 0 );
setMoveKey( spep_0 + 1490 + OFFSET_X, 1, 113.5, -21.3 , 0 );
setMoveKey( spep_0 + 1491 + OFFSET_X, 1, 113.5, -21.3 , 0 );
setMoveKey( spep_0 + 1492 + OFFSET_X, 1, 121.4, -15.5 , 0 );
setMoveKey( spep_0 + 1493 + OFFSET_X, 1, 121.4, -15.5 , 0 );
setMoveKey( spep_0 + 1494 + OFFSET_X, 1, 129.1, -9.8 , 0 );
setMoveKey( spep_0 + 1495 + OFFSET_X, 1, 129.1, -9.8 , 0 );
setMoveKey( spep_0 + 1496 + OFFSET_X, 1, 136.8, -4.2 , 0 );
setMoveKey( spep_0 + 1497 + OFFSET_X, 1, 136.8, -4.2 , 0 );
setMoveKey( spep_0 + 1498 + OFFSET_X, 1, 144.4, 1.4 , 0 );
setMoveKey( spep_0 + 1499 + OFFSET_X, 1, 144.4, 1.4 , 0 );
setMoveKey( spep_0 + 1500 + OFFSET_X, 1, 151.9, 6.9 , 0 );
setMoveKey( spep_0 + 1501 + OFFSET_X, 1, 151.9, 6.9 , 0 );
setMoveKey( spep_0 + 1502 + OFFSET_X, 1, 158.6, 12.1 , 0 );
setMoveKey( spep_0 + 1503 + OFFSET_X, 1, 158.6, 12.1 , 0 );
setMoveKey( spep_0 + 1504 + OFFSET_X, 1, 220.4, 12.6 , 0 );
setMoveKey( spep_0 + 1505 + OFFSET_X, 1, 220.4, 12.6 , 0 );
setMoveKey( spep_0 + 1506 + OFFSET_X, 1, 246.7, 45 , 0 );
setMoveKey( spep_0 + 1507 + OFFSET_X, 1, 246.7, 45 , 0 );
setMoveKey( spep_0 + 1508 + OFFSET_X, 1, 273, 77.3 , 0 );
setMoveKey( spep_0 + 1509 + OFFSET_X, 1, 273, 77.3 , 0 );
setMoveKey( spep_0 + 1510 + OFFSET_X, 1, 299.3, 109.8 , 0 );
setMoveKey( spep_0 + 1511 + OFFSET_X, 1, 299.3, 109.8 , 0 );
setMoveKey( spep_0 + 1512 + OFFSET_X, 1, 287.6, 110 , 0 );
setMoveKey( spep_0 + 1513 + OFFSET_X, 1, 287.6, 110 , 0 );
setMoveKey( spep_0 + 1514 + OFFSET_X, 1, 252.7, 110.5 , 0 );
setMoveKey( spep_0 + 1515 + OFFSET_X, 1, 252.7, 110.5 , 0 );
setMoveKey( spep_0 + 1516 + OFFSET_X, 1, 194.4, 111.3 , 0 );
setMoveKey( spep_0 + 1517 + OFFSET_X, 1, 194.4, 111.3 , 0 );
setMoveKey( spep_0 + 1518 + OFFSET_X, 1, 107.1, 142.1 , 0 );
setMoveKey( spep_0 + 1519 + OFFSET_X, 1, 107.1, 142.1 , 0 );
setMoveKey( spep_0 + 1520 + OFFSET_X, 1, -112.3, 170.3 , 0 );
setMoveKey( spep_0 + 1521 + OFFSET_X, 1, -112.3, 170.3 , 0 );
setMoveKey( spep_0 + 1522 + OFFSET_X, 1, -127.2, 160 , 0 );
setMoveKey( spep_0 + 1523 + OFFSET_X, 1, -127.2, 160 , 0 );
setMoveKey( spep_0 + 1524 + OFFSET_X, 1, -142.1, 149.7 , 0 );
setMoveKey( spep_0 + 1525 + OFFSET_X, 1, -142.1, 149.7 , 0 );
setMoveKey( spep_0 + 1526 + OFFSET_X, 1, -157, 139.5 , 0 );
setMoveKey( spep_0 + 1527 + OFFSET_X, 1, -157, 139.5 , 0 );
setMoveKey( spep_0 + 1528 + OFFSET_X, 1, -171.9, 129.2 , 0 );
setMoveKey( spep_0 + 1529 + OFFSET_X, 1, -171.9, 129.2 , 0 );
setMoveKey( spep_0 + 1530 + OFFSET_X, 1, -186.8, 118.9 , 0 );
setMoveKey( spep_0 + 1531 + OFFSET_X, 1, -186.8, 118.9 , 0 );
setMoveKey( spep_0 + 1532 + OFFSET_X, 1, -201.7, 108.6 , 0 );
setMoveKey( spep_0 + 1533 + OFFSET_X, 1, -201.7, 108.6 , 0 );
setMoveKey( spep_0 + 1534 + OFFSET_X, 1, -216.6, 98.3 , 0 );
setMoveKey( spep_0 + 1535 + OFFSET_X, 1, -216.6, 98.3 , 0 );
setMoveKey( spep_0 + 1536 + OFFSET_X, 1, -231.5, 88 , 0 );
setMoveKey( spep_0 + 1537 + OFFSET_X, 1, -231.5, 88 , 0 );
setMoveKey( spep_0 + 1538 + OFFSET_X, 1, -246.4, 77.8 , 0 );
setMoveKey( spep_0 + 1539 + OFFSET_X, 1, -246.4, 77.8 , 0 );
setMoveKey( spep_0 + 1540 + OFFSET_X, 1, -261.4, 67.5 , 0 );
setMoveKey( spep_0 + 1541 + OFFSET_X, 1, -261.4, 67.5 , 0 );
setMoveKey( spep_0 + 1542 + OFFSET_X, 1, -267.2, 68.6 , 0 );
setMoveKey( spep_0 + 1543 + OFFSET_X, 1, -267.2, 68.6 , 0 );
setMoveKey( spep_0 + 1544 + OFFSET_X, 1, -273.1, 69.7 , 0 );
setMoveKey( spep_0 + 1545 + OFFSET_X, 1, -273.1, 69.7 , 0 );
setMoveKey( spep_0 + 1546 + OFFSET_X, 1, -278.9, 70.9 , 0 );
setMoveKey( spep_0 + 1547 + OFFSET_X, 1, -278.9, 70.9 , 0 );
setMoveKey( spep_0 + 1548 + OFFSET_X, 1, -284.8, 72 , 0 );
setMoveKey( spep_0 + 1549 + OFFSET_X, 1, -284.8, 72 , 0 );
setMoveKey( spep_0 + 1550 + OFFSET_X, 1, -290.6, 73.1 , 0 );
setMoveKey( spep_0 + 1551 + OFFSET_X, 1, -290.6, 73.1 , 0 );
setMoveKey( spep_0 + 1552 + OFFSET_X, 1, -296.5, 74.2 , 0 );
setMoveKey( spep_0 + 1553 + OFFSET_X, 1, -296.5, 74.2 , 0 );
setMoveKey( spep_0 + 1554 + OFFSET_X, 1, -302.3, 75.4 , 0 );
setMoveKey( spep_0 + 1555 + OFFSET_X, 1, -302.3, 75.4 , 0 );
setMoveKey( spep_0 + 1556 + OFFSET_X, 1, -308.2, 76.5 , 0 );
setMoveKey( spep_0 + 1557 + OFFSET_X, 1, -308.2, 76.5 , 0 );
setMoveKey( spep_0 + 1558 + OFFSET_X, 1, -314, 77.6 , 0 );
setMoveKey( spep_0 + 1559 + OFFSET_X, 1, -314, 77.6 , 0 );
setMoveKey( spep_0 + 1560 + OFFSET_X, 1, -319.9, 78.7 , 0 );
setMoveKey( spep_0 + 1561 + OFFSET_X, 1, -319.9, 78.7 , 0 );
setMoveKey( spep_0 + 1562 + OFFSET_X, 1, -325.7, 79.9 , 0 );
setMoveKey( spep_0 + 1563 + OFFSET_X, 1, -325.7, 79.9 , 0 );
setMoveKey( spep_0 + 1564 + OFFSET_X, 1, -331.6, 81 , 0 );
setMoveKey( spep_0 + 1565 + OFFSET_X, 1, -331.6, 81 , 0 );
setMoveKey( spep_0 + 1566 + OFFSET_X, 1, -337.4, 82.1 , 0 );
setMoveKey( spep_0 + 1567 + OFFSET_X, 1, -337.4, 82.1 , 0 );
setMoveKey( spep_0 + 1568 + OFFSET_X, 1, -240.2, -245.6 , 0 );
setMoveKey( spep_0 + 1569 + OFFSET_X, 1, -240.2, -245.6 , 0 );
setMoveKey( spep_0 + 1570 + OFFSET_X, 1, -317.2, -168.5 , 0 );
setMoveKey( spep_0 + 1571 + OFFSET_X, 1, -317.2, -168.5 , 0 );
setMoveKey( spep_0 + 1572 + OFFSET_X, 1, -271, -168.5 , 0 );
setMoveKey( spep_0 + 1573 + OFFSET_X, 1, -271, -168.5 , 0 );
setMoveKey( spep_0 + 1574 + OFFSET_X, 1, -301.8, -121.3 , 0 );
setMoveKey( spep_0 + 1575 + OFFSET_X, 1, -301.8, -121.3 , 0 );
setMoveKey( spep_0 + 1576 + OFFSET_X, 1, -267.1, 121 , 0 );
setMoveKey( spep_0 + 1577 + OFFSET_X, 1, -267.1, 121 , 0 );
setMoveKey( spep_0 + 1578 + OFFSET_X, 1, -267.3, 83.3 , 0 );
setMoveKey( spep_0 + 1579 + OFFSET_X, 1, -267.3, 83.3 , 0 );
setMoveKey( spep_0 + 1580 + OFFSET_X, 1, -267.3, 9.9 , 0 );
setMoveKey( spep_0 + 1581 + OFFSET_X, 1, -267.3, 9.9 , 0 );
setMoveKey( spep_0 + 1582 + OFFSET_X, 1, -250.2, 9.9 , 0 );
setMoveKey( spep_0 + 1583 + OFFSET_X, 1, -250.2, 9.9 , 0 );
setMoveKey( spep_0 + 1584 + OFFSET_X, 1, -201.2, 10 , 0 );
setMoveKey( spep_0 + 1587 + OFFSET_X, 1, -201.2, 10 , 0 );
setMoveKey( spep_0 + 1588 + OFFSET_X, 1, -211, 10.1 , 0 );
setMoveKey( spep_0 + 1589 + OFFSET_X, 1, -211, 10.1 , 0 );
setMoveKey( spep_0 + 1590 + OFFSET_X, 1, -235.5, -38.9 , 0 );
setMoveKey( spep_0 + 1591 + OFFSET_X, 1, -235.5, -38.9 , 0 );
setMoveKey( spep_0 + 1592 + OFFSET_X, 1, -238, -32.7 , 0 );
setMoveKey( spep_0 + 1593 + OFFSET_X, 1, -238, -32.7 , 0 );
setMoveKey( spep_0 + 1594 + OFFSET_X, 1, -240.4, -26.6 , 0 );
setMoveKey( spep_0 + 1603 + OFFSET_X, 1, -240.4, -26.6 , 0 );
setMoveKey( spep_0 + 1604 + OFFSET_X, 1, -240.4, -22 , 0 );
setMoveKey( spep_0 + 1605 + OFFSET_X, 1, -240.4, -22 , 0 );
setMoveKey( spep_0 + 1606 + OFFSET_X, 1, -241.7, -17.3 , 0 );
setMoveKey( spep_0 + 1607 + OFFSET_X, 1, -241.7, -17.3 , 0 );
setMoveKey( spep_0 + 1608 + OFFSET_X, 1, -243, -26.6 , 0 );
setMoveKey( spep_0 + 1609 + OFFSET_X, 1, -243, -26.6 , 0 );
setMoveKey( spep_0 + 1610 + OFFSET_X, 1, -244.3, -16.3 , 0 );
setMoveKey( spep_0 + 1611 + OFFSET_X, 1, -244.3, -16.3 , 0 );
setMoveKey( spep_0 + 1612 + OFFSET_X, 1, -235.3, -16.3 , 0 );
setMoveKey( spep_0 + 1613 + OFFSET_X, 1, -235.3, -16.3 , 0 );
setMoveKey( spep_0 + 1614 + OFFSET_X, 1, -236.5, -23.5 , 0 );
setMoveKey( spep_0 + 1615 + OFFSET_X, 1, -236.5, -23.5 , 0 );
setMoveKey( spep_0 + 1616 + OFFSET_X, 1, -237.8, -14.2 , 0 );
setMoveKey( spep_0 + 1617 + OFFSET_X, 1, -237.8, -14.2 , 0 );
setMoveKey( spep_0 + 1618 + OFFSET_X, 1, -239.1, -10.1 , 0 );
setMoveKey( spep_0 + 1619 + OFFSET_X, 1, -239.1, -10.1 , 0 );
setMoveKey( spep_0 + 1620 + OFFSET_X, 1, -240.4, -14.2 , 0 );
setMoveKey( spep_0 + 1621 + OFFSET_X, 1, -240.4, -14.2 , 0 );
setMoveKey( spep_0 + 1622 + OFFSET_X, 1, -241.7, -7 , 0 );
setMoveKey( spep_0 + 1623 + OFFSET_X, 1, -241.7, -7 , 0 );
setMoveKey( spep_0 + 1624 + OFFSET_X, 1, -250.2, -7 , 0 );
setMoveKey( spep_0 + 1625 + OFFSET_X, 1, -250.2, -7 , 0 );
setMoveKey( spep_0 + 1626 + OFFSET_X, 1, -251.5, -16.3 , 0 );
setMoveKey( spep_0 + 1627 + OFFSET_X, 1, -251.5, -16.3 , 0 );
setMoveKey( spep_0 + 1628 + OFFSET_X, 1, -248.6, -9.1 , 0 );
setMoveKey( spep_0 + 1629 + OFFSET_X, 1, -248.6, -9.1 , 0 );
setMoveKey( spep_0 + 1630 + OFFSET_X, 1, -249.9, -15.3 , 0 );
setMoveKey( spep_0 + 1631 + OFFSET_X, 1, -249.9, -15.3 , 0 );
setMoveKey( spep_0 + 1632 + OFFSET_X, 1, -251.2, -16.3 , 0 );
setMoveKey( spep_0 + 1633 + OFFSET_X, 1, -251.2, -16.3 , 0 );
setMoveKey( spep_0 + 1634 + OFFSET_X, 1, -249.4, -12.2 , 0 );
setMoveKey( spep_0 + 1635 + OFFSET_X, 1, -249.4, -12.2 , 0 );
setMoveKey( spep_0 + 1636 + OFFSET_X, 1, -256.9, -12.1 , 0 );
setMoveKey( spep_0 + 1637 + OFFSET_X, 1, -256.9, -12.1 , 0 );
setMoveKey( spep_0 + 1638 + OFFSET_X, 1, -258.2, -13.1 , 0 );
setMoveKey( spep_0 + 1639 + OFFSET_X, 1, -258.2, -13.1 , 0 );
setMoveKey( spep_0 + 1640 + OFFSET_X, 1, -265.7, -12.1 , 0 );
setMoveKey( spep_0 + 1641 + OFFSET_X, 1, -265.7, -12.1 , 0 );
setMoveKey( spep_0 + 1642 + OFFSET_X, 1, -262.8, -9 , 0 );
setMoveKey( spep_0 + 1643 + OFFSET_X, 1, -262.8, -9 , 0 );
setMoveKey( spep_0 + 1644 + OFFSET_X, 1, -263.3, -10 , 0 );
setMoveKey( spep_0 + 1645 + OFFSET_X, 1, -263.3, -10 , 0 );
setMoveKey( spep_0 + 1646 + OFFSET_X, 1, -267.9, -10 , 0 );
setMoveKey( spep_0 + 1647 + OFFSET_X, 1, -267.9, -10 , 0 );
setMoveKey( spep_0 + 1648 + OFFSET_X, 1, -268.4, -5.9 , 0 );
setMoveKey( spep_0 + 1649 + OFFSET_X, 1, -268.4, -5.9 , 0 );
setMoveKey( spep_0 + 1650 + OFFSET_X, 1, -262.6, -6.9 , 0 );
setMoveKey( spep_0 + 1651 + OFFSET_X, 1, -262.6, -6.9 , 0 );
setMoveKey( spep_0 + 1652 + OFFSET_X, 1, -263.1, -5.9 , 0 );
setMoveKey( spep_0 + 1653 + OFFSET_X, 1, -263.1, -5.9 , 0 );
setMoveKey( spep_0 + 1654 + OFFSET_X, 1, -269.8, -5.9 , 0 );
setMoveKey( spep_0 + 1655 + OFFSET_X, 1, -269.8, -5.9 , 0 );
setMoveKey( spep_0 + 1656 + OFFSET_X, 1, -264.1, -12.1 , 0 );
setMoveKey( spep_0 + 1657 + OFFSET_X, 1, -264.1, -12.1 , 0 );
setMoveKey( spep_0 + 1658 + OFFSET_X, 1, -265.6, -8 , 0 );
setMoveKey( spep_0 + 1659 + OFFSET_X, 1, -265.6, -8 , 0 );
setMoveKey( spep_0 + 1660 + OFFSET_X, 1, -269.1, -11.1 , 0 );
setMoveKey( spep_0 + 1661 + OFFSET_X, 1, -269.1, -11.1 , 0 );
setMoveKey( spep_0 + 1662 + OFFSET_X, 1, -266.5, -14.2 , 0 );
setMoveKey( spep_0 + 1663 + OFFSET_X, 1, -266.5, -14.2 , 0 );
setMoveKey( spep_0 + 1664 + OFFSET_X, 1, -266, -14.2 , 0 );
setMoveKey( spep_0 + 1665 + OFFSET_X, 1, -266, -14.2 , 0 );
setMoveKey( spep_0 + 1666 + OFFSET_X, 1, -266.5, -13.2 , 0 );
setMoveKey( spep_0 + 1667 + OFFSET_X, 1, -266.5, -13.2 , 0 );
setMoveKey( spep_0 + 1668 + OFFSET_X, 1, -268.9, -12.2 , 0 );
setMoveKey( spep_0 + 1669 + OFFSET_X, 1, -268.9, -12.2 , 0 );
setMoveKey( spep_0 + 1670 + OFFSET_X, 1, -269.4, -4.5 , 0 );
setMoveKey( spep_0 + 1671 + OFFSET_X, 1, -269.4, -4.5 , 0 );
setMoveKey( spep_0 + 1672 + OFFSET_X, 1, -269.9, -15.3 , 0 );
setMoveKey( spep_0 + 1673 + OFFSET_X, 1, -269.9, -15.3 , 0 );
setMoveKey( spep_0 + 1674 + OFFSET_X, 1, -270.4, -9.1 , 0 );
setMoveKey( spep_0 + 1675 + OFFSET_X, 1, -270.4, -9.1 , 0 );
setMoveKey( spep_0 + 1676 + OFFSET_X, 1, -271.8, -9.1 , 0 );
setMoveKey( spep_0 + 1677 + OFFSET_X, 1, -271.8, -9.1 , 0 );
setMoveKey( spep_0 + 1678 + OFFSET_X, 1, -273.3, -9.1 , 0 );
setMoveKey( spep_0 + 1679 + OFFSET_X, 1, -273.3, -9.1 , 0 );
setMoveKey( spep_0 + 1680 + OFFSET_X, 1, -273.8, -12.2 , 0 );
setMoveKey( spep_0 + 1681 + OFFSET_X, 1, -273.8, -12.2 , 0 );
setMoveKey( spep_0 + 1682 + OFFSET_X, 1, -274.3, -15.3 , 0 );
setMoveKey( spep_0 + 1683 + OFFSET_X, 1, -274.3, -15.3 , 0 );
setMoveKey( spep_0 + 1684 + OFFSET_X, 1, -268.1, -25.1 , 0 );
setMoveKey( spep_0 + 1685 + OFFSET_X, 1, -268.1, -25.1 , 0 );
setMoveKey( spep_0 + 1686 + OFFSET_X, 1, -261.8, -16.3 , 0 );
setMoveKey( spep_0 + 1687 + OFFSET_X, 1, -261.8, -16.3 , 0 );
setMoveKey( spep_0 + 1688 + OFFSET_X, 1, -262.3, -7 , 0 );
setMoveKey( spep_0 + 1689 + OFFSET_X, 1, -262.3, -7 , 0 );
setMoveKey( spep_0 + 1690 + OFFSET_X, 1, -262.8, -16.3 , 0 );
setMoveKey( spep_0 + 1691 + OFFSET_X, 1, -262.8, -16.3 , 0 );
setMoveKey( spep_0 + 1692 + OFFSET_X, 1, -263.3, -7 , 0 );
setMoveKey( spep_0 + 1693 + OFFSET_X, 1, -263.3, -7 , 0 );
setMoveKey( spep_0 + 1694 + OFFSET_X, 1, -263.7, -16.3 , 0 );
setMoveKey( spep_0 + 1695 + OFFSET_X, 1, -263.7, -16.3 , 0 );
setMoveKey( spep_0 + 1696 + OFFSET_X, 1, -264.2, -21.2 , 0 );
setMoveKey( spep_0 + 1697 + OFFSET_X, 1, -264.2, -21.2 , 0 );
setMoveKey( spep_0 + 1698 + OFFSET_X, 1, -267.1, -16.3 , 0 );
setMoveKey( spep_0 + 1699 + OFFSET_X, 1, -267.1, -16.3 , 0 );
setMoveKey( spep_0 + 1700 + OFFSET_X, 1, -267.6, -21.2 , 0 );

setScaleKey( spep_0 + 1466 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 1467 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 1468 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 1469 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 1470 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 1471 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 1472 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 1473 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 1474 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 1475 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 1476 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 1477 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 1478 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 1479 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 1480 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 1481 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 1482 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 1483 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 1484 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 1485 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 1486 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 1487 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 1488 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 1489 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 1490 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1491 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1492 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 1493 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 1494 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 1495 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 1496 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 1497 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 1498 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 1499 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 1500 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 1501 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 1502 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 1503 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 1504 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 1505 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 1506 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 1507 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 1508 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 1509 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 1510 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 1511 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 1512 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 1513 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 1514 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 1515 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 1516 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 1517 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 1518 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 1519 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 1520 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1527 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1528 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1559 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1560 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1567 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1568 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_0 + 1575 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_0 + 1576 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 1577 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 1578 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1579 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1580 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1581 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1582 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1583 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1584 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1585 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1586 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1587 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1588 + OFFSET_X, 1, 1.43, 1.42 );
setScaleKey( spep_0 + 1589 + OFFSET_X, 1, 1.43, 1.42 );
setScaleKey( spep_0 + 1590 + OFFSET_X, 1, 1.3, 1.29 );
setScaleKey( spep_0 + 1605 + OFFSET_X, 1, 1.3, 1.29 );
setScaleKey( spep_0 + 1606 + OFFSET_X, 1, 1.29, 1.28 );
setScaleKey( spep_0 + 1607 + OFFSET_X, 1, 1.29, 1.28 );
setScaleKey( spep_0 + 1608 + OFFSET_X, 1, 1.28, 1.27 );
setScaleKey( spep_0 + 1609 + OFFSET_X, 1, 1.28, 1.27 );
setScaleKey( spep_0 + 1610 + OFFSET_X, 1, 1.27, 1.26 );
setScaleKey( spep_0 + 1611 + OFFSET_X, 1, 1.27, 1.26 );
setScaleKey( spep_0 + 1612 + OFFSET_X, 1, 1.26, 1.25 );
setScaleKey( spep_0 + 1613 + OFFSET_X, 1, 1.26, 1.25 );
setScaleKey( spep_0 + 1614 + OFFSET_X, 1, 1.25, 1.24 );
setScaleKey( spep_0 + 1615 + OFFSET_X, 1, 1.25, 1.24 );
setScaleKey( spep_0 + 1616 + OFFSET_X, 1, 1.24, 1.23 );
setScaleKey( spep_0 + 1617 + OFFSET_X, 1, 1.24, 1.23 );
setScaleKey( spep_0 + 1618 + OFFSET_X, 1, 1.23, 1.22 );
setScaleKey( spep_0 + 1619 + OFFSET_X, 1, 1.23, 1.22 );
setScaleKey( spep_0 + 1620 + OFFSET_X, 1, 1.22, 1.21 );
setScaleKey( spep_0 + 1621 + OFFSET_X, 1, 1.22, 1.21 );
setScaleKey( spep_0 + 1622 + OFFSET_X, 1, 1.21, 1.2 );
setScaleKey( spep_0 + 1623 + OFFSET_X, 1, 1.21, 1.2 );
setScaleKey( spep_0 + 1624 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 1625 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 1626 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 1627 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 1628 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 1629 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 1630 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 1631 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 1632 + OFFSET_X, 1, 1.15, 1.14 );
setScaleKey( spep_0 + 1633 + OFFSET_X, 1, 1.15, 1.14 );
setScaleKey( spep_0 + 1634 + OFFSET_X, 1, 1.14, 1.13 );
setScaleKey( spep_0 + 1635 + OFFSET_X, 1, 1.14, 1.13 );
setScaleKey( spep_0 + 1636 + OFFSET_X, 1, 1.13, 1.12 );
setScaleKey( spep_0 + 1637 + OFFSET_X, 1, 1.13, 1.12 );
setScaleKey( spep_0 + 1638 + OFFSET_X, 1, 1.12, 1.11 );
setScaleKey( spep_0 + 1639 + OFFSET_X, 1, 1.12, 1.11 );
setScaleKey( spep_0 + 1640 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_0 + 1641 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_0 + 1642 + OFFSET_X, 1, 1.1, 1.09 );
setScaleKey( spep_0 + 1645 + OFFSET_X, 1, 1.1, 1.09 );
setScaleKey( spep_0 + 1646 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 1647 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 1648 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_0 + 1651 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_0 + 1652 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 1653 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 1654 + OFFSET_X, 1, 1.08, 1.07 );
setScaleKey( spep_0 + 1659 + OFFSET_X, 1, 1.08, 1.07 );
setScaleKey( spep_0 + 1660 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_0 + 1665 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_0 + 1666 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 1667 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 1668 + OFFSET_X, 1, 1.06, 1.05 );
setScaleKey( spep_0 + 1671 + OFFSET_X, 1, 1.06, 1.05 );
setScaleKey( spep_0 + 1672 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 1673 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 1674 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_0 + 1677 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_0 + 1678 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 1679 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 1680 + OFFSET_X, 1, 1.04, 1.03 );
setScaleKey( spep_0 + 1683 + OFFSET_X, 1, 1.04, 1.03 );
setScaleKey( spep_0 + 1684 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 1685 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 1686 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_0 + 1689 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_0 + 1690 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 1691 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 1692 + OFFSET_X, 1, 1.02, 1.01 );
setScaleKey( spep_0 + 1697 + OFFSET_X, 1, 1.02, 1.01 );
setScaleKey( spep_0 + 1698 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 1700 + OFFSET_X, 1, 1.01, 1.01 );

setRotateKey( spep_0 + 1466 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 1503 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 1504 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 1517 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 1518 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 1519 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 1520 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 1521 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 1522 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 1523 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 1524 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 1525 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 1526 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 1527 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 1528 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 1529 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 1530 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 1531 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 1532 + OFFSET_X, 1, -74.6 );
setRotateKey( spep_0 + 1533 + OFFSET_X, 1, -74.6 );
setRotateKey( spep_0 + 1534 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_0 + 1535 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_0 + 1536 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 1537 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 1538 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 1539 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 1540 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 1541 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 1542 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 1543 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 1544 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 1547 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 1548 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 1549 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 1550 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 1551 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 1552 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_0 + 1555 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_0 + 1556 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 1557 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 1558 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 1559 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 1560 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 1563 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 1564 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 1565 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 1566 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 1567 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 1568 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 1575 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 1576 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1700 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 1466 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 1603 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 1604 + OFFSET_X, 1, 210 );
setAlphaKey( spep_0 + 1684 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 1699 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 1700 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 696, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 56 );

--集中線
SE003 = playSeVer2( spep_0 + 178, 1072, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 218, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE004, 75 );
SE005 = playSeVer2( spep_0 + 218, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE005, 81 );

--ベジータ飛び込んでくる
SE006 = playSeVer2( spep_0 + 294, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 294, 1117, "", 0, 0, 0, -1);

--飛行音
SE008 = playSeVer2( spep_0 + 294, 1019, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 358, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 420, 1019, "",spep_0 + 478, 0, 32, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE009, 50 );
SE010 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE010, 50 );
SE011 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE011, 50 );
SE013 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE013, 50 );
SE014 = playSeVer2( spep_0 + 390, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE014, 50 );
SE016 = playSeVer2( spep_0 + 414, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE016, 50 );

--元気玉溜める
SE015 = playSeVer2( spep_0 + 596, 1115, "",spep_0 + 732, 24, 38, -1);
setSeVolumeByWorkId( spep_0 + 596, SE015, 126 );
setStartTimeMs( SE015,  3233 );

--画面遷移
SE018 = playSeVer2( spep_0 + 440, 1232, "", 0, 0, 0, -1);

--トランクス飛び込んでくる
SE019 = playSeVer2( spep_0 + 456, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 456, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE020, 84 );
SE021 = playSeVer2( spep_0 + 456, 44, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE022, 50 );
SE024 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE024, 50 );
SE025 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE025, 50 );
SE028 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE028, 50 );
SE029 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE029, 50 );
SE030 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE030, 50 );
SE033 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE033, 50 );

--飛行音
SE023 = playSeVer2( spep_0 + 456, 1019, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 520, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 584, 1019, "",spep_0 + 648, 0, 28, -1);

--元気玉溜める
SE027 = playSeVer2( spep_0 + 590, 1288, "",spep_0 + 714, 22, 44, -1);
setSeVolumeByWorkId( spep_0 + 590, SE027, 140 );
setStartTimeMs( SE027,  1167 );
SE034 = playSeVer2( spep_0 + 610, 1263, "",spep_0 + 732, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 610, SE034, 126 );

--画面遷移
SE031 = playSeVer2( spep_0 + 576, 1072, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「オラに元気を…すべての元気をわけてくれ……！！」
playVoice( spep_0 + 0, 734 );
setVoiceVolume( spep_0 + 0, 734, 100 );

--「カカロットはオレのものだ！！」
playVoice( spep_0 + 284, 735 );
setVoiceVolume( spep_0 + 284, 735, 100 );

--「悟空さんに元気玉を…！！」
playVoice( spep_0 + 474, 736 );
setVoiceVolume( spep_0 + 474, 736, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 662; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);

setVoiceVolume( SP_dodge - 12, 736, 0 );

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
--ベジータ向かってくる
SE035 = playSeVer2( spep_0 + 666, 1116, "",spep_0 + 712, 0, 20, -1);
SE036 = playSeVer2( spep_0 + 666, 1167, "",spep_0 + 716, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 666, SE036, 56 );

--オーラ
SE037 = playSeVer2( spep_0 + 666, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 666, SE037, 63 );
SE040 = playSeVer2( spep_0 + 690, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE040, 63 );
SE041 = playSeVer2( spep_0 + 714, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 714, SE041, 63 );
SE042 = playSeVer2( spep_0 + 738, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 738, SE042, 63 );
SE045 = playSeVer2( spep_0 + 762, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE045, 63 );
SE048 = playSeVer2( spep_0 + 786, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE048, 63 );

--気弾溜める
SE038 = playSeVer2( spep_0 + 684, 1341, "",spep_0 + 774, 0, 24, -1);
SE039 = playSeVer2( spep_0 + 686, 1296, "",spep_0 + 768, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 686, SE039, 112 );

--爆発
SE043 = playSeVer2( spep_0 + 742, 1023, "",spep_0 + 808, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 742, SE043, 83 );
SE044 = playSeVer2( spep_0 + 748, 1067, "",spep_0 + 858, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 748, SE044, 114 );

--トランクス振りかぶる
SE046 = playSeVer2( spep_0 + 770, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 770, SE046, 136 );
SE047 = playSeVer2( spep_0 + 770, 1116, "",spep_0 + 816, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 770, SE047, 123 );

--斬る
SE049 = playSeVer2( spep_0 + 802, 1141, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 802, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE050, 126 );
SE051 = playSeVer2( spep_0 + 806, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE051, 78 );
SE052 = playSeVer2( spep_0 + 806, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE052, 79 );
SE054 = playSeVer2( spep_0 + 810, 1031, "", 0, 0, 0, -1);

--オーラ
SE053 = playSeVer2( spep_0 + 810, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 810, SE053, 63 );
SE055 = playSeVer2( spep_0 + 834, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 834, SE055, 63 );

--元気玉溜め
SE056 = playSeVer2( spep_0 + 834, 1397, "",spep_0 + 1300, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 834, SE056, 29 );
setPitch( spep_0 + 834, SE056, 900 );
setTimeStretch( SE056, 1.6, 30, 4 );
SE058 = playSeVer2( spep_0 + 856, 1396, "",spep_0 + 1296, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 856, SE058, 87 );
setPitch( spep_0 + 862, SE058, -500 );
setTimeStretch( SE058, 0.67, 30, 4 );

--画面遷移
SE057 = playSeVer2( spep_0 + 856, 8, "", 0, 0, 0, -1);

--気ダメ
SE059 = playSeVer2( spep_0 + 958, 1035, "", 0, 0, 0, -1);

--ズーム
SE060 = playSeVer2( spep_0 + 1008, 1183, "",spep_0 + 1134, 0, 30, -1);
SE061 = playSeVer2( spep_0 + 1016, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE061, 51 );
setTimeStretch( SE061, 1.4, 30, 4 );
SE062 = playSeVer2( spep_0 + 1038, 1128, "",spep_0 + 1330, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 1038, SE062, 71 );
setPitch( spep_0 + 1038, SE062, -1200 );
setTimeStretch( SE062, 1.0, 30, 4 );
SE063 = playSeVer2( spep_0 + 1040, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE063, 1.65, 30, 4 );

--元気玉吸収
SE064 = playSeVer2( spep_0 + 1096, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE064, 71 );
SE065 = playSeVer2( spep_0 + 1098, 1158, "",spep_0 + 1232, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE065, 63 );
SE066 = playSeVer2( spep_0 + 1098, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE066, 79 );
SE067 = playSeVer2( spep_0 + 1100, 1157, "",spep_0 + 1218, 0, 12, -1);

--元気玉爆発
SE068 = playSeVer2( spep_0 + 1200, 1206, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_0 + 1200, 1068, "", 0, 0, 0, -1);

--ズームアウト
SE070 = playSeVer2( spep_0 + 1262, 44, "", 0, 0, 0, -1);

--環境音
SE071 = playSeVer2( spep_0 + 1350, 1356, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 1350, SE071, 59 );
setStartTimeMs( SE071,  1100 );

--悟空向かっていく
--SE072 = playSeVer2( spep_0 + 1284, 1356, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_0 + 1312, 1011, "", 0, 0, 0, -1);
SE074 = playSeVer2( spep_0 + 1312, 1182, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_0 + 1312, 1117, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_0 + 1312, 1019, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_0 + 1312, 9, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_0 + 1358, 1019, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_0 + 1440, 1019, "",spep_0 + 1504, 0, 24, -1);

--環境音
SE078 = playSeVer2( spep_0 + 1312, 1278, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 1312, SE078, 50 );
setStartTimeMs( SE078,  800 );

--加速
SE079 = playSeVer2( spep_0 + 1344, 1116, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_0 + 1350, 1004, "", 0, 0, 0, -1);

--画面遷移
SE082 = playSeVer2( spep_0 + 1440, 1072, "", 0, 6, 0, -1);
setStartTimeMs( SE082,  200 );

--オーラ
SE084 = playSeVer2( spep_0 + 1458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1458, SE084, 56 );
SE085 = playSeVer2( spep_0 + 1482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1482, SE085, 56 );
SE089 = playSeVer2( spep_0 + 1506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1506, SE089, 56 );
SE090 = playSeVer2( spep_0 + 1530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1530, SE090, 56 );
SE091 = playSeVer2( spep_0 + 1554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1554, SE091, 56 );

--振りかぶる2
SE086 = playSeVer2( spep_0 + 1498, 1116, "",spep_0 + 1546, 0, 24, -1);
SE087 = playSeVer2( spep_0 + 1498, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1498, SE087, 135 );
SE088 = playSeVer2( spep_0 + 1498, 1182, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 1498, SE088, 125 );
setStartTimeMs( SE088,  100 );

--ラスト殴る
SE092 = playSeVer2( spep_0 + 1554, 1003, "", 0, 0, 0, -1);
SE093 = playSeVer2( spep_0 + 1568, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1568, SE093, 75 );
SE094 = playSeVer2( spep_0 + 1568, 1120, "", 0, 0, 0, -1);
SE095 = playSeVer2( spep_0 + 1570, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1570, SE095, 62 );
SE096 = playSeVer2( spep_0 + 1576, 1359, "", 0, 0, 0, -1);
SE098 = playSeVer2( spep_0 + 1578, 1067, "", 0, 0, 0, -1);

--オーラ
SE097 = playSeVer2( spep_0 + 1578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1578, SE097, 56 );
SE099 = playSeVer2( spep_0 + 1602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1602, SE099, 56 );
SE100 = playSeVer2( spep_0 + 1626, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1626, SE100, 56 );
SE101 = playSeVer2( spep_0 + 1650, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1650, SE101, 56 );
SE102 = playSeVer2( spep_0 + 1674, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1674, SE102, 56 );

-- ** ボイス ** --
--「うおおおおっ！！」
playVoice( spep_0 + 1284, 737 );
setVoiceVolume( spep_0 + 1284, 737, 112 );

-- ** おわり ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 1600 );
endPhase( spep_0 + MAX_FRAME_0 - 2); -- 終了フレーム 1706F - 2

else end
