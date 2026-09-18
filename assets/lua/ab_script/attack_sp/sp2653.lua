--1027980:LR_超サイヤ人ゴジータ_超必殺技：スターダストフォール
--sp_effect_a1_00423
--sp2653

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162648; --ef_001  前半手前
SP_01b = 162649; --ef_001b 前半奥
SP_02  = 162650; --ef_002  後半手前
SP_02b = 162651; --ef_002b 後半奥
SP_03  = 162692; --ef_003  KO

--エフェクト(敵)
SP_01r  = 162652;  --ef_001r  前半手前：敵
SP_01br = 162653;  --ef_001br 前半奥：敵


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 214;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前半手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 前半奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 20 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 20 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 58 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 80 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 20 + OFFSET_X, 1, 421.2, -387.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 421.2, -387.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 352.4, -324.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 352.4, -324.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 294.4, -270.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 294.4, -270.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 227.1, -208.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 227.1, -208.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 167.7, -153.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 167.7, -153.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 162.5, -148.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 162.5, -148.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 48.1, -30.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 48.1, -30.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 25.1, -13.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 25.1, -13.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 27.6, -25.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 27.6, -25.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 30.8, -7.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 30.8, -7.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 22.6, -20.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 22.6, -20.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 24.1, -27.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 24.1, -27.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 28.3, -29.4 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 28.3, -29.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 29.8, -36.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 29.8, -36.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 29.7, -36.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 29.7, -36.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -35, -105.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -35, -105.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 13.2, -42.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 13.2, -42.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 58.9, 16.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 58.9, 16.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 67.8, 58.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 67.8, 58.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 76.3, 98.8 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 76.3, 98.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 84.2, 136.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 84.2, 136.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 75.8, 130.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 75.8, 130.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 86.5, 92.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 86.5, 92.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 60.5, 119.7 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 60.5, 119.7 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 55.3, 112.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 55.3, 112.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 50.6, 106 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 50.6, 106 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 46.2, 100.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 46.2, 100.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 42.8, 94.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 42.8, 94.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 39.8, 88.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 39.8, 88.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 37.2, 84.3 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 37.2, 84.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 43.7, 75.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 43.7, 75.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 49, 68.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 49, 68.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 53.2, 63.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 53.2, 63.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 56.2, 59.5 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 56.2, 59.5 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 48.7, 47 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 48.7, 47 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 46.2, 42.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 46.2, 42.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 46.6, 36.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 46.6, 36.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 47.1, 29.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 47.1, 29.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 47.5, 22.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 47.5, 22.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 48, 16 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 48, 16 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 48.5, 9.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 48.5, 9.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 48.9, 2.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 48.9, 2.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 49.4, -4.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 49.4, -4.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 49.9, -10.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 49.9, -10.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 48.6, -15.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 48.6, -15.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 47.3, -19.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 47.3, -19.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 46, -24.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 46, -24.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 44.7, -28.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 44.7, -28.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 43.4, -32.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 43.4, -32.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 42.2, -37.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 42.2, -37.2 , 0 );

setScaleKey( spep_0 + 20 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.22, 9.22 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.22, 9.22 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.47, 0.47 );

setRotateKey( spep_0 + 20 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 83 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -109.4 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -109.4 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -131.3 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -131.3 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -153.2 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, -153.2 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -175.1 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -175.1 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -196.9 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -196.9 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -218.8 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -218.8 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -240.7 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -240.7 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -262.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -262.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -284.5 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -284.5 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -306.4 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -306.4 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -328.2 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -328.2 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -350.1 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -350.1 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -372 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -372 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -393.9 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -393.9 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -415.8 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -415.8 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -437.6 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -437.6 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -459.5 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -459.5 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -481.4 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -481.4 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -503.3 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -503.3 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -525.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -525.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -547.1 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -547.1 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -568.9 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -568.9 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -590.8 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -590.8 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -612.7 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -612.7 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -634.6 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -634.6 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -656.5 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -656.5 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -678.4 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -678.4 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -700.2 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -700.2 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -722.1 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -722.1 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -744 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -744 );

setBlendColor( spep_0 + 20 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 150 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き2
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, 1348, -161.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 1348, -161.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 799.3, -114.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 799.3, -114.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 551.4, -93.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 551.4, -93.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 399.6, -80.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 399.6, -80.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 299.3, -71.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 299.3, -71.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 231.5, -65.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 231.5, -65.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 185.8, -62 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 185.8, -62 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 155.3, -59.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 155.3, -59.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 135, -57.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 135, -57.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 120.3, -56.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 120.3, -56.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 106.6, -55 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 106.6, -55 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.49, 2.49 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -25.8 );

setBlendColor( spep_0 + 162 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 183 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 184 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE003 = playSeVer2( spep_0 + 16, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 34; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 5 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE004 = playSeVer2( spep_0 + 46, 1359, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 46, 1187, "", spep_0 + 140, 0, 10, -1);

--敵飛んでいく
SE006 = playSeVer2( spep_0 + 66, 1121, "",spep_0 + 182, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE007 = playSeVer2( spep_0 + 76, 1183, "",spep_0 + 218, 0, 34, -1);

--ゴジータ回り込む
SE008 = playSeVer2( spep_0 + 100, 1232, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 108, 63, "",spep_0 + 186, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 71 );
SE010 = playSeVer2( spep_0 + 108, 1117, "",spep_0 + 190, 0, 24, -1);
SE011 = playSeVer2( spep_0 + 146, 1013, "", spep_0 + 168, 0, 0, -1);

--腕回す
SE012 = playSeVer2( spep_0 + 170, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 172, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE013, 63 );
SE014 = playSeVer2( spep_0 + 174, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 174, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
SE015 = playSeVer2( spep_0 + 182, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 182, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );
SE016 = playSeVer2( spep_0 + 190, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 190, SE016, -500 );
setTimeStretch( SE016, 0.67, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --214f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
SE018 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE018, 188 );

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 884;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後半奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

KO = entryEffectLife( spep_2 + 876, SP_03, 108, 0x100, -1, 0, 0, 0); -- KO(ef_003)
setEffMoveKey( spep_2 + 876, KO, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2 + 108, KO, 0, 0 , 0);
setEffScaleKey( spep_2 + 876, KO, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2 + 108, KO, 1.0, 1.0);
setEffRotateKey( spep_2 + 876, KO, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2 + 108, KO, 0);
setEffAlphaKey( spep_2 + 876, KO, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 + 108, KO, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 344;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 7 );
changeAnime( spep_2 + 48 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 94.6, 521.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 94.6, 521.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 115.1, 496.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 115.1, 496.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 74.4, 544.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 74.4, 544.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 92.4, 495.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 92.4, 495.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 135.4, 517.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 135.4, 517.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 60.3, 540.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 60.3, 540.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 71.2, 518.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 71.2, 518.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 123.7, 498.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 123.7, 498.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 101.6, 541 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 101.6, 541 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 80.6, 540.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 80.6, 540.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 102.2, 509.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 102.2, 509.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 98.2, 534.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 98.2, 534.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 111.3, 523.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 111.3, 523.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 89.7, 534.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 89.7, 534.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 104.9, 512.7 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 104.9, 512.7 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 96.6, 515.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 96.6, 515.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 94.6, 521.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 94.6, 521.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -147.2, 94.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -147.2, 94.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -149.6, 99 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -149.6, 99 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -145.4, 107.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -145.4, 107.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -140.6, 113.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -140.6, 113.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -140.5, 114.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -140.5, 114.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -144.5, 113.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -144.5, 113.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -146, 111.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -146, 111.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -142.9, 118.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -142.9, 118.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -134.5, 127.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -134.5, 127.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -133.9, 130.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -133.9, 130.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -142.1, 133.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -142.1, 133.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -146.8, 134.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -146.8, 134.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -143.4, 133.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -143.4, 133.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -143.7, 140 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -143.7, 140 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -150.7, 153.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -150.7, 153.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -159.3, 155.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -159.3, 155.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -160.3, 153.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -160.3, 153.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -161.3, 152.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -161.3, 152.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -161.4, 141.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -161.4, 141.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -156.8, 125.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -156.8, 125.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -153.3, 117.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -153.3, 117.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -154, 114.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -154, 114.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -155.9, 116 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -155.9, 116 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -146.7, 97.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -146.7, 97.3 , 0 );

setScaleKey( spep_2 + 0, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 0, 1, 69.7 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -111.8 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -111.8 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -112 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -112 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -112.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -112.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -112.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -112.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -112.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -112.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -112.7 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -112.7 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -112.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -112.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -113.1 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -113.1 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -113.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -113.2 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -113.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -113.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -113.6 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -113.6 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -113.8 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -113.8 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -113.9 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -113.9 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -114.1 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -114.1 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -114.3 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -114.3 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -114.5 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -114.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -114.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -114.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -114.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -115 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -115 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -115.2 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -115.2 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -115.3 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -115.3 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -115.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -115.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -115.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -115.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -115.8 );

setBlendColor( spep_2 + 0, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き2
setDisp( spep_2 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 12 );

setMoveKey( spep_2 + 106 + OFFSET_X, 1, -158.1, 91.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -158.1, 91.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 192.8, 144.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 192.8, 144.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 144.3, 76 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 144.3, 76 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 172.7, 108.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 172.7, 108.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 203.3, 134.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 203.3, 134.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 181.7, 86.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 181.7, 86.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 222.2, 126.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 222.2, 126.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 257.2, 179.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 257.2, 179.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 212.9, 138.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 212.9, 138.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 195.3, 149.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 195.3, 149.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 133.3, 78.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 133.3, 78.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 151, 103.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 151, 103.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 174.4, 123.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 174.4, 123.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 152.8, 78.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 152.8, 78.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 196.7, 141.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 196.7, 141.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 225.8, 184.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 225.8, 184.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 186, 98.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 186, 98.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 211.2, 119.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 211.2, 119.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 204.2, 137.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 204.2, 137.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 139.5, 66.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 139.5, 66.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 180.7, 126.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 180.7, 126.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 156.4, 162.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 156.4, 162.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 39, 43.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 39, 43.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -78.4, -75.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -78.4, -75.3 , 0 );

setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 106 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -66.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -66.9 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 154 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き3
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 644 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, -130.1, -159.1 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -130.1, -159.1 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -142.1, -146.4 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -142.1, -146.4 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -120.6, -168.6 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -120.6, -168.6 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -122, -142.8 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -122, -142.8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -140.2, -170.1 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -140.2, -170.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -138.1, -149.5 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -138.1, -149.5 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -120.7, -173.1 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -120.7, -173.1 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -115.6, -144.3 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -115.6, -144.3 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -144.5, -177.3 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -144.5, -177.3 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -144.5, -149.4 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -144.5, -149.4 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -121, -172.2 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -121, -172.2 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -119.3, -143.8 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -119.3, -143.8 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -142.7, -170 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -142.7, -170 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -139.6, -144.4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -139.6, -144.4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -120.8, -176.4 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -120.8, -176.4 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -122.5, -144.9 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -122.5, -144.9 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -145.1, -176.4 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -145.1, -176.4 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -137.9, -148.6 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -137.9, -148.6 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -116.2, -175.1 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -116.2, -175.1 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -120.5, -148.6 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -120.5, -148.6 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -138.4, -168.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -138.4, -168.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -144.1, -141.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -144.1, -141.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -120, -172.7 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -120, -172.7 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -116.6, -148.5 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -116.6, -148.5 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -143.5, -169 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -143.5, -169 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -138.3, -144.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -138.3, -144.3 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -115.7, -171.7 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -115.7, -171.7 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -122, -149.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -122, -149.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -143.6, -170.9 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -143.6, -170.9 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -140.6, -146.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -140.6, -146.4 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 20.9 );

setBlendColor( spep_2 + 582 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 644 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き4
setDisp( spep_2 + 758 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1060 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 758 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 762 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 784 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 806 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 822 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 838 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 856 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 872 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 988 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 1058 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 758 + OFFSET_X, 1, 138.8, -34.2 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 138.8, -34.2 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 138.8, -34.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 138.8, -34.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 154.8, -94.1 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 154.8, -94.1 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 97.9, -79.8 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 97.9, -79.8 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 53.7, -68.7 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 53.7, -68.7 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 22.1, -60.8 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 22.1, -60.8 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 3.1, -56 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 3.1, -56 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -3.2, -54.4 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -3.2, -54.4 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 11, -60 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 11, -60 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 53.7, -76.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 53.7, -76.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 124.9, -104.5 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 124.9, -104.5 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 106.9, -93.4 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 106.9, -93.4 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 88.8, -82.4 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 88.8, -82.4 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 90.9, -85.1 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 90.9, -85.1 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 97.3, -93.3 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 97.3, -93.3 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 107.9, -106.8 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 107.9, -106.8 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 122.7, -125.8 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 122.7, -125.8 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 140.8, -148.9 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 140.8, -148.9 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 155.6, -167.9 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 155.6, -167.9 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 166.2, -181.4 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, 166.2, -181.4 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, 172.6, -189.6 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, 172.6, -189.6 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, 174.7, -192.3 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, 174.7, -192.3 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, 72.6, -194.4 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, 72.6, -194.4 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, -29.5, -196.6 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, -29.5, -196.6 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, -51.5, -185 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, -51.5, -185 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, -43.5, -218.4 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, -43.5, -218.4 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, -48.5, -228.4 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, -48.5, -228.4 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, -48.5, -233.4 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, -48.5, -233.4 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, -53.5, -258.4 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, -53.5, -258.4 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, -89.5, -149.8 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, -89.5, -149.8 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, -39.4, -161.1 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, -39.4, -161.1 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, 10.6, -172.4 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, 10.6, -172.4 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, 24.6, -187.4 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, 24.6, -187.4 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, 38.6, -202.4 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, 38.6, -202.4 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, 52.6, -217.4 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, 52.6, -217.4 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, 66.6, -232.4 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, 66.6, -232.4 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, 80.7, -247.4 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 80.7, -247.4 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 94.7, -262.4 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 94.7, -262.4 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 12.6, -222.5 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 12.6, -222.5 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, -69.5, -182.5 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, -69.5, -182.5 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, -111.5, -190.1 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, -111.5, -190.1 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, -149, -200 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, -149, -200 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, -170, -218.1 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, -170, -218.1 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, -188.3, -236.8 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, -188.3, -236.8 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, -188.1, -243.6 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, -188.1, -243.6 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, -199.5, -232.5 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, -199.5, -232.5 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, -134.2, -182.4 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, -134.2, -182.4 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, -68.9, -132.3 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, -68.9, -132.3 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, -3.6, -82.2 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, -3.6, -82.2 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 2.9, -94.4 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 2.9, -94.4 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 8, -103.9 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 8, -103.9 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 11.6, -110.7 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 11.6, -110.7 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 13.8, -114.8 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 13.8, -114.8 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 14.5, -116.1 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 14.5, -116.1 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 9.9, -73.6 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 9.9, -73.6 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 5.3, -31 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 5.3, -31 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 0.6, 11.6 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 0.6, 11.6 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 0.6, 11.7 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, 0.6, 11.7 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, -12.4, 22.4 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, -12.4, 22.4 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, 2.3, 11.7 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, 2.3, 11.7 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, -4.9, 22.5 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, -4.9, 22.5 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, -6, 11.7 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, -6, 11.7 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, -3, 22.4 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, -3, 22.4 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, -16.4, 11.7 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, -16.4, 11.7 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, -12.7, 23 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X, 1, -12.7, 23 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X, 1, 0.3, 12 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, 0.3, 12 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X, 1, -16.9, 22.4 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X, 1, -16.9, 22.4 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X, 1, -15.5, 11.9 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, -15.5, 11.9 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, 2.6, 22.4 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X, 1, 2.6, 22.4 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X, 1, -17.4, 11.7 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, -17.4, 11.7 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, 1.1, 11.9 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, 1.1, 11.9 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, -2.7, 22.4 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, -2.7, 22.4 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, -0.7, 11.7 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, -0.7, 11.7 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, -12.4, 22.4 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, -12.4, 22.4 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, -15.5, 11.7 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, -15.5, 11.7 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, 1.6, 11.7 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X, 1, 1.6, 11.7 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, -12, 11.7 , 0 );
setMoveKey( spep_2 + 921 + OFFSET_X, 1, -12, 11.7 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X, 1, -4.9, 22.4 , 0 );
setMoveKey( spep_2 + 923 + OFFSET_X, 1, -4.9, 22.4 , 0 );
setMoveKey( spep_2 + 924 + OFFSET_X, 1, -6.7, 11.7 , 0 );
setMoveKey( spep_2 + 925 + OFFSET_X, 1, -6.7, 11.7 , 0 );
setMoveKey( spep_2 + 926 + OFFSET_X, 1, -13.2, 22.4 , 0 );
setMoveKey( spep_2 + 927 + OFFSET_X, 1, -13.2, 22.4 , 0 );
setMoveKey( spep_2 + 928 + OFFSET_X, 1, -3.9, 11.7 , 0 );
setMoveKey( spep_2 + 929 + OFFSET_X, 1, -3.9, 11.7 , 0 );
setMoveKey( spep_2 + 930 + OFFSET_X, 1, -2.2, 22.5 , 0 );
setMoveKey( spep_2 + 931 + OFFSET_X, 1, -2.2, 22.5 , 0 );
setMoveKey( spep_2 + 932 + OFFSET_X, 1, -1.2, 11.7 , 0 );
setMoveKey( spep_2 + 933 + OFFSET_X, 1, -1.2, 11.7 , 0 );
setMoveKey( spep_2 + 934 + OFFSET_X, 1, -10, 22.4 , 0 );
setMoveKey( spep_2 + 935 + OFFSET_X, 1, -10, 22.4 , 0 );
setMoveKey( spep_2 + 936 + OFFSET_X, 1, 1.4, 11.6 , 0 );
setMoveKey( spep_2 + 937 + OFFSET_X, 1, 1.4, 11.6 , 0 );
setMoveKey( spep_2 + 938 + OFFSET_X, 1, 1.6, 22.5 , 0 );
setMoveKey( spep_2 + 939 + OFFSET_X, 1, 1.6, 22.5 , 0 );
setMoveKey( spep_2 + 940 + OFFSET_X, 1, -1.4, 14 , 0 );
setMoveKey( spep_2 + 941 + OFFSET_X, 1, -1.4, 14 , 0 );
setMoveKey( spep_2 + 942 + OFFSET_X, 1, 1.1, 26.9 , 0 );
setMoveKey( spep_2 + 943 + OFFSET_X, 1, 1.1, 26.9 , 0 );
setMoveKey( spep_2 + 944 + OFFSET_X, 1, -15.5, 13.5 , 0 );
setMoveKey( spep_2 + 945 + OFFSET_X, 1, -15.5, 13.5 , 0 );
setMoveKey( spep_2 + 946 + OFFSET_X, 1, -1.9, 19.9 , 0 );
setMoveKey( spep_2 + 947 + OFFSET_X, 1, -1.9, 19.9 , 0 );
setMoveKey( spep_2 + 948 + OFFSET_X, 1, -9.4, 7.4 , 0 );
setMoveKey( spep_2 + 949 + OFFSET_X, 1, -9.4, 7.4 , 0 );
setMoveKey( spep_2 + 950 + OFFSET_X, 1, -13.7, 16.7 , 0 );
setMoveKey( spep_2 + 951 + OFFSET_X, 1, -13.7, 16.7 , 0 );
setMoveKey( spep_2 + 952 + OFFSET_X, 1, -4, 5.4 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X, 1, -4, 5.4 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X, 1, -18.1, 22.2 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X, 1, -18.1, 22.2 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X, 1, 3.4, 15.8 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X, 1, 3.4, 15.8 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X, 1, 1.4, 22.7 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X, 1, 1.4, 22.7 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X, 1, -15, 12 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X, 1, -15, 12 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X, 1, -13.5, 29.4 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X, 1, -13.5, 29.4 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X, 1, -18, 24.2 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X, 1, -18, 24.2 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X, 1, 6.8, 33.5 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X, 1, 6.8, 33.5 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X, 1, 4.9, 14.3 , 0 );
setMoveKey( spep_2 + 969 + OFFSET_X, 1, 4.9, 14.3 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X, 1, 9.1, 16.9 , 0 );
setMoveKey( spep_2 + 971 + OFFSET_X, 1, 9.1, 16.9 , 0 );
setMoveKey( spep_2 + 972 + OFFSET_X, 1, 5, -0.7 , 0 );
setMoveKey( spep_2 + 973 + OFFSET_X, 1, 5, -0.7 , 0 );
setMoveKey( spep_2 + 974 + OFFSET_X, 1, -1.9, 8.3 , 0 );
setMoveKey( spep_2 + 975 + OFFSET_X, 1, -1.9, 8.3 , 0 );
setMoveKey( spep_2 + 976 + OFFSET_X, 1, -11.8, 2.9 , 0 );
setMoveKey( spep_2 + 977 + OFFSET_X, 1, -11.8, 2.9 , 0 );
setMoveKey( spep_2 + 978 + OFFSET_X, 1, -2.9, 22 , 0 );
setMoveKey( spep_2 + 979 + OFFSET_X, 1, -2.9, 22 , 0 );
setMoveKey( spep_2 + 980 + OFFSET_X, 1, -2.4, 12.6 , 0 );
setMoveKey( spep_2 + 981 + OFFSET_X, 1, -2.4, 12.6 , 0 );
setMoveKey( spep_2 + 982 + OFFSET_X, 1, -8.4, 18.7 , 0 );
setMoveKey( spep_2 + 983 + OFFSET_X, 1, -8.4, 18.7 , 0 );
setMoveKey( spep_2 + 984 + OFFSET_X, 1, 0.6, 11.7 , 0 );
setMoveKey( spep_2 + 987 + OFFSET_X, 1, 0.6, 11.7 , 0 );
setMoveKey( spep_2 + 988 + OFFSET_X, 1, 138.8, -34.2 , 0 );
setMoveKey( spep_2 + 1057 + OFFSET_X, 1, 138.8, -34.2 , 0 );
setMoveKey( spep_2 + 1058 + OFFSET_X, 1, 0.6, 11.7 , 0 );
setMoveKey( spep_2 + 1060 + OFFSET_X, 1, 0.6, 11.7 , 0 );

setScaleKey( spep_2 + 758 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 799 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 800 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 803 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 804 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 805 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 806 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 809 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 810 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 815 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 816 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 817 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 818 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 819 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 820 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 821 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 822 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 823 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 824 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 825 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 826 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 827 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 828 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 829 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 830 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 831 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 832 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 833 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 834 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 835 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 836 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 837 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 838 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 839 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 840 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 841 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 842 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 843 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 844 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 845 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 846 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 847 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 848 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 849 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 850 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 851 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 852 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 853 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 854 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 855 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 856 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 867 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 868 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 869 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 870 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 871 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 872 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 873 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 874 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 875 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 876 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 987 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 988 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 1057 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 1058 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 1060 + OFFSET_X, 1, 1.87, 1.87 );

setRotateKey( spep_2 + 758 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 763 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 764 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 799 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 800 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 803 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 804 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 805 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 806 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 807 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 808 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 809 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 810 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 811 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 812 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 813 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 814 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 815 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 816 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 817 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 818 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 819 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 820 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 821 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 822 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 823 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 824 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 825 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 826 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 827 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 828 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 829 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 830 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 831 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 832 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 833 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 834 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 835 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 836 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 837 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 838 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 839 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 840 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 841 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 842 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 843 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 844 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 845 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 846 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 847 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 848 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 849 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 850 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 851 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 852 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 853 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 854 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 855 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 856 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 857 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 858 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 859 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 860 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 861 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 862 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 863 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 864 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 865 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 987 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 988 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 1057 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 1058 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 1060 + OFFSET_X, 1, -31 );

setBlendColor( spep_2 + 758 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 1059 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 1060 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--エルボー
SE019 = playSeVer2( spep_2 + 0, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 2, 1187, "",spep_2 + 74, 0, 60, -1);
SE021 = playSeVer2( spep_2 + 8, 1190, "", 0, 0, 0, -1);

--回転
SE022 = playSeVer2( spep_2 + 64, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 64, 1117, "",spep_2 + 100, 0, 14, -1);

--蹴り落とし
SE024 = playSeVer2( spep_2 + 82, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 82, 1187, "", 0, 0, 0, -1);

--敵落ちる
SE026 = playSeVer2( spep_2 + 132, 1277, "",spep_2 + 224, 0, 30, -1);

--敵地面激突
SE027 = playSeVer2( spep_2 + 142, 1159, "", 0, 0, 0, -1);

--地面えぐれる
SE028 = playSeVer2( spep_2 + 160, 1044, "",spep_2 + 258, 58, 24, -1);

--画面遷移からゴジータ回る
SE029 = playSeVer2( spep_2 + 198, 8, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 206, 1304, "",spep_2 + 312, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 206, SE030, 107 );
setPitch( spep_2 + 206, SE030, 600 );
setTimeStretch( SE030, 1.4, 30, 4 );
SE031 = playSeVer2( spep_2 + 206, 1422, "",spep_2 + 308, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 206, SE031, 88 );
SE032 = playSeVer2( spep_2 + 206, 1183, "",spep_2 + 342, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 206, SE032, 102 );

--飛び上がる
SE033 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 244, SE033, 79 );
SE034 = playSeVer2( spep_2 + 244, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 244, 1182, "", 0, 0, 0, -1);

--スターダストフォール溜める
SE036 = playSeVer2( spep_2 + 272, 1449, "",spep_2 + 482, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 272, SE036, 186 );
SE037 = playSeVer2( spep_2 + 292, 1227, "",spep_2 + 484, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE037, 184 );
SE038 = playSeVer2( spep_2 + 292, 1356, "",spep_2 + 484, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE038, 112 );
SE039 = playSeVer2( spep_2 + 292, 1440, "", spep_2 + 400, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 292, SE039, 71 );
SE040 = playSeVer2( spep_2 + 292, 1445, "", spep_2 + 400, 0, 10, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE040, 162 );
SE041 = playSeVer2( spep_2 + 318, 1450, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 318, SE041, 80 );

--顔アップ
SE053 = playSeVer2( spep_2 + 402, 1264, "",spep_2 + 486, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 402, SE053, 81 );
setPitch( spep_2 + 402, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );
SE054 = playSeVer2( spep_2 + 402, 1226, "",spep_2 + 488, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 402, SE054, 81 );

--振りかぶる
SE060 = playSeVer2( spep_2 + 438, 1116, "",spep_2 + 490, 0, 22, -1);

--スターダストフォール発射
SE062 = playSeVer2( spep_2 + 478, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE062, 100 );
SE063 = playSeVer2( spep_2 + 486, 1446, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE063, 150 );
SE064 = playSeVer2( spep_2 + 486, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE064, 55 );
SE066 = playSeVer2( spep_2 + 614, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE066, 88 );
SE063_2 = playSeVer2( spep_2 + 738, 1446, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 738, SE063_2, 150 );

--地面衝突
SE065 = playSeVer2( spep_2 + 570, 1159, "",spep_2 + 882, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 570, SE065, 65 );

--ゴジータ空中浮遊
SE067 = playSeVer2( spep_2 + 630, 1117, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 680, 44, "", 0, 0, 0, -1);

--連続爆発
SE069 = playSeVer2( spep_2 + 738, 1023, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 738, SE069, 71 );
SE070 = playSeVer2( spep_2 + 754, 1451, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 754, SE070, 60 );
SE071 = playSeVer2( spep_2 + 764, 1024, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 764, SE071, 71 );
SE073 = playSeVer2( spep_2 + 798, 1068, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 798, SE073, 67 );
SE074 = playSeVer2( spep_2 + 810, 1067, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 810, SE074, 87 );


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 772 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  884f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 214;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 前半手前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 前半奥(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 20 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 20 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 58 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 80 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 20 + OFFSET_X, 1, 421.2, -387.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 421.2, -387.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 352.4, -324.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 352.4, -324.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 294.4, -270.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 294.4, -270.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 227.1, -208.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 227.1, -208.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 167.7, -153.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 167.7, -153.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 162.5, -148.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 162.5, -148.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 48.1, -30.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 48.1, -30.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 25.1, -13.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 25.1, -13.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 27.6, -25.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 27.6, -25.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 30.8, -7.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 30.8, -7.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 22.6, -20.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 22.6, -20.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 24.1, -27.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 24.1, -27.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 28.3, -29.4 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 28.3, -29.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 29.8, -36.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 29.8, -36.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 29.7, -36.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 29.7, -36.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 35, -105.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 35, -105.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -13.2, -42.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -13.2, -42.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -58.9, 16.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -58.9, 16.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -67.8, 58.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -67.8, 58.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -76.3, 98.8 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -76.3, 98.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -84.2, 136.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -84.2, 136.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -75.8, 130.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -75.8, 130.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -86.5, 92.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -86.5, 92.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -60.5, 119.7 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -60.5, 119.7 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -55.3, 112.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -55.3, 112.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -50.6, 106 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -50.6, 106 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -46.2, 100.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -46.2, 100.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -42.8, 94.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -42.8, 94.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -39.8, 88.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -39.8, 88.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -37.2, 84.3 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -37.2, 84.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -43.7, 75.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -43.7, 75.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -49, 68.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -49, 68.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -53.2, 63.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -53.2, 63.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -56.2, 59.5 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -56.2, 59.5 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -48.7, 47 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -48.7, 47 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -46.2, 42.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -46.2, 42.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -46.6, 36.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -46.6, 36.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -47.1, 29.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -47.1, 29.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -47.5, 22.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -47.5, 22.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -48, 16 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -48, 16 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -48.5, 9.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -48.5, 9.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -48.9, 2.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -48.9, 2.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -49.4, -4.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -49.4, -4.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -49.9, -10.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -49.9, -10.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -48.6, -15.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -48.6, -15.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -47.3, -19.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -47.3, -19.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -46, -24.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -46, -24.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -44.7, -28.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -44.7, -28.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -43.4, -32.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -43.4, -32.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -42.2, -37.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -42.2, -37.2 , 0 );

setScaleKey( spep_0 + 20 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.22, 9.22 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.22, 9.22 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.47, 0.47 );

setRotateKey( spep_0 + 20 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 83 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 87.5 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 87.5 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 109.4 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 109.4 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 131.3 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, 131.3 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 153.2 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 153.2 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 175.1 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 175.1 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 196.9 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 196.9 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 218.8 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 218.8 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 240.7 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 240.7 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 262.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 262.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 284.5 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 284.5 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 306.4 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 306.4 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 328.2 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 328.2 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 350.1 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 350.1 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 372 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 372 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 393.9 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 393.9 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 415.8 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 415.8 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 437.6 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 437.6 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 459.5 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 459.5 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 481.4 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 481.4 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 503.3 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 503.3 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 525.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 525.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 547.1 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 547.1 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 568.9 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 568.9 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 590.8 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 590.8 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 612.7 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 612.7 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 634.6 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 634.6 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 656.5 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 656.5 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 678.4 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 678.4 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 700.2 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 700.2 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 722.1 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 722.1 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 744 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 744 );

setBlendColor( spep_0 + 20 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 150 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き2
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, -1348, -161.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -1348, -161.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -799.3, -114.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -799.3, -114.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -551.4, -93.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -551.4, -93.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -399.6, -80.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -399.6, -80.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -299.3, -71.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -299.3, -71.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -231.5, -65.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -231.5, -65.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -185.8, -62 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -185.8, -62 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -155.3, -59.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -155.3, -59.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -135, -57.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -135, -57.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -120.3, -56.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -120.3, -56.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -106.6, -55 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -106.6, -55 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.49, 2.49 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 25.8 );

setBlendColor( spep_0 + 162 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 183 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_0 + 184 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE003 = playSeVer2( spep_0 + 16, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 34; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 5 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE004 = playSeVer2( spep_0 + 46, 1359, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 46, 1187, "", spep_0 + 140, 0, 10, -1);

--敵飛んでいく
SE006 = playSeVer2( spep_0 + 66, 1121, "",spep_0 + 182, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE007 = playSeVer2( spep_0 + 76, 1183, "",spep_0 + 218, 0, 34, -1);

--ゴジータ回り込む
SE008 = playSeVer2( spep_0 + 100, 1232, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 108, 63, "",spep_0 + 186, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 71 );
SE010 = playSeVer2( spep_0 + 108, 1117, "",spep_0 + 190, 0, 24, -1);
SE011 = playSeVer2( spep_0 + 146, 1013, "", spep_0 + 168, 0, 0, -1);

--腕回す
SE012 = playSeVer2( spep_0 + 170, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 172, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE013, 63 );
SE014 = playSeVer2( spep_0 + 174, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 174, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
SE015 = playSeVer2( spep_0 + 182, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 182, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );
SE016 = playSeVer2( spep_0 + 190, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 190, SE016, -500 );
setTimeStretch( SE016, 0.67, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --214f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
SE018 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE018, 188 );

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 884;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後半奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

KO = entryEffectLife( spep_2 + 876, SP_03, 108, 0x100, -1, 0, 0, 0); -- KO(ef_003)
setEffMoveKey( spep_2 + 876, KO, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2 + 108, KO, 0, 0 , 0);
setEffScaleKey( spep_2 + 876, KO, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2 + 108, KO, -1.0, 1.0);
setEffRotateKey( spep_2 + 876, KO, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2 + 108, KO, 0);
setEffAlphaKey( spep_2 + 876, KO, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 + 108, KO, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 344;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2 + 48 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 0, 1, -94.6, 521.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -94.6, 521.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -115.1, 496.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -115.1, 496.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -74.4, 544.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -74.4, 544.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -92.4, 495.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -92.4, 495.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -135.4, 517.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -135.4, 517.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -60.3, 540.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -60.3, 540.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -71.2, 518.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -71.2, 518.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -123.7, 498.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -123.7, 498.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -101.6, 541 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -101.6, 541 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -80.6, 540.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -80.6, 540.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -102.2, 509.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -102.2, 509.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -98.2, 534.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -98.2, 534.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -111.3, 523.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -111.3, 523.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -89.7, 534.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -89.7, 534.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -104.9, 512.7 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -104.9, 512.7 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -96.6, 515.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -96.6, 515.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -94.6, 521.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -94.6, 521.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 147.2, 94.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 147.2, 94.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 149.6, 99 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 149.6, 99 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 145.4, 107.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 145.4, 107.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 140.6, 113.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 140.6, 113.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 140.5, 114.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 140.5, 114.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 144.5, 113.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 144.5, 113.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 146, 111.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 146, 111.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 142.9, 118.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 142.9, 118.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 134.5, 127.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 134.5, 127.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 133.9, 130.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 133.9, 130.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 142.1, 133.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 142.1, 133.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 146.8, 134.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 146.8, 134.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 143.4, 133.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 143.4, 133.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 143.7, 140 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 143.7, 140 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 150.7, 153.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 150.7, 153.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 159.3, 155.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 159.3, 155.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 160.3, 153.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 160.3, 153.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 161.3, 152.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 161.3, 152.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 161.4, 141.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 161.4, 141.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 156.8, 125.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 156.8, 125.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 153.3, 117.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 153.3, 117.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 154, 114.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 154, 114.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 155.9, 116 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 155.9, 116 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 146.7, 97.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 146.7, 97.3 , 0 );

setScaleKey( spep_2 + 0, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 0, 1, -69.7 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -69.7 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 112 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 112 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 112.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 112.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 112.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 112.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 112.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 112.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 112.7 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 112.7 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 112.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 112.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 113.1 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 113.1 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 113.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 113.2 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 113.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 113.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 113.6 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 113.6 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 113.9 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 113.9 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 114.1 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 114.1 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 114.3 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 114.3 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 114.5 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 114.5 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 114.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 114.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 115 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 115 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 115.2 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 115.2 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 115.3 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 115.3 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 115.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 115.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 115.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 115.8 );

setBlendColor( spep_2 + 0, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き2
setDisp( spep_2 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 112 );

setMoveKey( spep_2 + 106 + OFFSET_X, 1, 158.1, 91.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 158.1, 91.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -192.8, 144.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -192.8, 144.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -144.3, 76 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -144.3, 76 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -172.7, 108.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -172.7, 108.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -203.3, 134.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -203.3, 134.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -181.7, 86.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -181.7, 86.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -222.2, 126.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -222.2, 126.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -257.2, 179.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -257.2, 179.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -212.9, 138.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -212.9, 138.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -195.3, 149.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -195.3, 149.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -133.3, 78.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -133.3, 78.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -151, 103.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -151, 103.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -174.4, 123.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -174.4, 123.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -152.8, 78.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -152.8, 78.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -196.7, 141.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -196.7, 141.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -225.8, 184.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -225.8, 184.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -186, 98.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -186, 98.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -211.2, 119.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -211.2, 119.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -204.2, 137.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -204.2, 137.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -139.5, 66.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -139.5, 66.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -180.7, 126.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -180.7, 126.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -156.4, 162.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -156.4, 162.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -39, 43.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -39, 43.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 78.4, -75.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 78.4, -75.3 , 0 );

setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 106 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 66.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 66.9 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 154 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き3
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 644 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, 130.1, -159.1 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 130.1, -159.1 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 142.1, -146.4 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 142.1, -146.4 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 120.6, -168.6 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 120.6, -168.6 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 122, -142.8 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 122, -142.8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 140.2, -170.1 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 140.2, -170.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 138.1, -149.5 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 138.1, -149.5 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 120.7, -173.1 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 120.7, -173.1 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 115.6, -144.3 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 115.6, -144.3 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 144.5, -177.3 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 144.5, -177.3 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 144.5, -149.4 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 144.5, -149.4 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 121, -172.2 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 121, -172.2 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 119.3, -143.8 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 119.3, -143.8 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 142.7, -170 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 142.7, -170 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 139.6, -144.4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 139.6, -144.4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 120.8, -176.4 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 120.8, -176.4 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 122.5, -144.9 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 122.5, -144.9 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 145.1, -176.4 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 145.1, -176.4 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 137.9, -148.6 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 137.9, -148.6 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 116.2, -175.1 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 116.2, -175.1 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 120.5, -148.6 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 120.5, -148.6 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 138.4, -168.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 138.4, -168.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 144.1, -141.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 144.1, -141.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 120, -172.7 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 120, -172.7 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 116.6, -148.5 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 116.6, -148.5 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 143.5, -169 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 143.5, -169 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 138.3, -144.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 138.3, -144.3 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 115.7, -171.7 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 115.7, -171.7 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 122, -149.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 122, -149.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 143.6, -170.9 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 143.6, -170.9 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 140.6, -146.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 140.6, -146.4 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -20.9 );

setBlendColor( spep_2 + 582 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 644 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);

--敵の動き4
setDisp( spep_2 + 758 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1060 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 758 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 762 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 784 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 806 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 822 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 838 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 856 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 872 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 988 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 1058 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 758 + OFFSET_X, 1, -138.8, -34.2 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -138.8, -34.2 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -138.8, -34.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -138.8, -34.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -154.8, -94.1 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -154.8, -94.1 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -97.9, -79.8 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -97.9, -79.8 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -53.7, -68.7 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -53.7, -68.7 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -22.1, -60.8 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -22.1, -60.8 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -3.1, -56 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -3.1, -56 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 3.2, -54.4 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 3.2, -54.4 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -11, -60 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -11, -60 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -53.7, -76.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -53.7, -76.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -124.9, -104.5 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -124.9, -104.5 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -106.9, -93.4 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -106.9, -93.4 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -88.8, -82.4 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -88.8, -82.4 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -90.9, -85.1 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -90.9, -85.1 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -97.3, -93.3 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -97.3, -93.3 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, -107.9, -106.8 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, -107.9, -106.8 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, -122.7, -125.8 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, -122.7, -125.8 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, -140.8, -148.9 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, -140.8, -148.9 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, -155.6, -167.9 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, -155.6, -167.9 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, -166.2, -181.4 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, -166.2, -181.4 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, -172.6, -189.6 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, -172.6, -189.6 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, -174.7, -192.3 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, -174.7, -192.3 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, -72.6, -194.4 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, -72.6, -194.4 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, 29.5, -196.6 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, 29.5, -196.6 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, 51.5, -185 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, 51.5, -185 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, 43.5, -218.4 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, 43.5, -218.4 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, 48.5, -228.4 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, 48.5, -228.4 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, 48.5, -233.4 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, 48.5, -233.4 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, 53.5, -258.4 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, 53.5, -258.4 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, 89.5, -149.8 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, 89.5, -149.8 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, 39.4, -161.1 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, 39.4, -161.1 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, -10.6, -172.4 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, -10.6, -172.4 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, -24.6, -187.4 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, -24.6, -187.4 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, -38.6, -202.4 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, -38.6, -202.4 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, -52.6, -217.4 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, -52.6, -217.4 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, -66.6, -232.4 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, -66.6, -232.4 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, -80.7, -247.4 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, -80.7, -247.4 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, -94.7, -262.4 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, -94.7, -262.4 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, -12.6, -222.5 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, -12.6, -222.5 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 69.5, -182.5 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 69.5, -182.5 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 111.5, -190.1 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 111.5, -190.1 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 149, -200 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 149, -200 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 170, -218.1 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 170, -218.1 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 188.3, -236.8 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 188.3, -236.8 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 188.1, -243.6 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 188.1, -243.6 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 199.5, -232.5 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 199.5, -232.5 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 134.2, -182.4 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 134.2, -182.4 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 68.9, -132.3 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 68.9, -132.3 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 3.6, -82.2 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 3.6, -82.2 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, -2.9, -94.4 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, -2.9, -94.4 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, -8, -103.9 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, -8, -103.9 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, -11.6, -110.7 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, -11.6, -110.7 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, -13.8, -114.8 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, -13.8, -114.8 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, -14.5, -116.1 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, -14.5, -116.1 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, -9.9, -73.6 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, -9.9, -73.6 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, -5.3, -31 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, -5.3, -31 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, -0.6, 11.6 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, -0.6, 11.6 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, -0.6, 11.7 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, -0.6, 11.7 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, 12.4, 22.4 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, 12.4, 22.4 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, -2.3, 11.7 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, -2.3, 11.7 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, 4.9, 22.5 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, 4.9, 22.5 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, 6, 11.7 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, 6, 11.7 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, 3, 22.4 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, 3, 22.4 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, 16.4, 11.7 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, 16.4, 11.7 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, 12.7, 23 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X, 1, 12.7, 23 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X, 1, -0.3, 12 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, -0.3, 12 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X, 1, 16.9, 22.4 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X, 1, 16.9, 22.4 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X, 1, 15.5, 11.9 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, 15.5, 11.9 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, -2.6, 22.4 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X, 1, -2.6, 22.4 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X, 1, 17.4, 11.7 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, 17.4, 11.7 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, 15.9, 22.5 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, 15.9, 22.5 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, -1.1, 11.9 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, -1.1, 11.9 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, 2.7, 22.4 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, 2.7, 22.4 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, 0.7, 11.7 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, 0.7, 11.7 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, 12.4, 22.4 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, 12.4, 22.4 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, 15.5, 11.7 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, 15.5, 11.7 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, -1.6, 11.7 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X, 1, -1.6, 11.7 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, 15.9, 22.5 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, 15.9, 22.5 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, 12, 11.7 , 0 );
setMoveKey( spep_2 + 921 + OFFSET_X, 1, 12, 11.7 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X, 1, 4.9, 22.4 , 0 );
setMoveKey( spep_2 + 923 + OFFSET_X, 1, 4.9, 22.4 , 0 );
setMoveKey( spep_2 + 924 + OFFSET_X, 1, 6.7, 11.7 , 0 );
setMoveKey( spep_2 + 925 + OFFSET_X, 1, 6.7, 11.7 , 0 );
setMoveKey( spep_2 + 926 + OFFSET_X, 1, 13.2, 22.4 , 0 );
setMoveKey( spep_2 + 927 + OFFSET_X, 1, 13.2, 22.4 , 0 );
setMoveKey( spep_2 + 928 + OFFSET_X, 1, 3.9, 11.7 , 0 );
setMoveKey( spep_2 + 929 + OFFSET_X, 1, 3.9, 11.7 , 0 );
setMoveKey( spep_2 + 930 + OFFSET_X, 1, 2.2, 22.5 , 0 );
setMoveKey( spep_2 + 931 + OFFSET_X, 1, 2.2, 22.5 , 0 );
setMoveKey( spep_2 + 932 + OFFSET_X, 1, 1.2, 11.7 , 0 );
setMoveKey( spep_2 + 933 + OFFSET_X, 1, 1.2, 11.7 , 0 );
setMoveKey( spep_2 + 934 + OFFSET_X, 1, 10, 22.4 , 0 );
setMoveKey( spep_2 + 935 + OFFSET_X, 1, 10, 22.4 , 0 );
setMoveKey( spep_2 + 936 + OFFSET_X, 1, -1.4, 11.6 , 0 );
setMoveKey( spep_2 + 937 + OFFSET_X, 1, -1.4, 11.6 , 0 );
setMoveKey( spep_2 + 938 + OFFSET_X, 1, -1.6, 22.5 , 0 );
setMoveKey( spep_2 + 939 + OFFSET_X, 1, -1.6, 22.5 , 0 );
setMoveKey( spep_2 + 940 + OFFSET_X, 1, 1.4, 14 , 0 );
setMoveKey( spep_2 + 941 + OFFSET_X, 1, 1.4, 14 , 0 );
setMoveKey( spep_2 + 942 + OFFSET_X, 1, -1.1, 26.9 , 0 );
setMoveKey( spep_2 + 943 + OFFSET_X, 1, -1.1, 26.9 , 0 );
setMoveKey( spep_2 + 944 + OFFSET_X, 1, 15.5, 13.5 , 0 );
setMoveKey( spep_2 + 945 + OFFSET_X, 1, 15.5, 13.5 , 0 );
setMoveKey( spep_2 + 946 + OFFSET_X, 1, 1.9, 19.9 , 0 );
setMoveKey( spep_2 + 947 + OFFSET_X, 1, 1.9, 19.9 , 0 );
setMoveKey( spep_2 + 948 + OFFSET_X, 1, 9.4, 7.4 , 0 );
setMoveKey( spep_2 + 949 + OFFSET_X, 1, 9.4, 7.4 , 0 );
setMoveKey( spep_2 + 950 + OFFSET_X, 1, 13.7, 16.7 , 0 );
setMoveKey( spep_2 + 951 + OFFSET_X, 1, 13.7, 16.7 , 0 );
setMoveKey( spep_2 + 952 + OFFSET_X, 1, 4, 5.4 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X, 1, 4, 5.4 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X, 1, 18.1, 22.2 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X, 1, 18.1, 22.2 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X, 1, -3.4, 15.8 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X, 1, -3.4, 15.8 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X, 1, -1.4, 22.7 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X, 1, -1.4, 22.7 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X, 1, 15, 12 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X, 1, 15, 12 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X, 1, 13.5, 29.4 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X, 1, 13.5, 29.4 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X, 1, 18, 24.2 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X, 1, 18, 24.2 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X, 1, -6.8, 33.5 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X, 1, -6.8, 33.5 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X, 1, -4.9, 14.3 , 0 );
setMoveKey( spep_2 + 969 + OFFSET_X, 1, -4.9, 14.3 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X, 1, -9.1, 16.9 , 0 );
setMoveKey( spep_2 + 971 + OFFSET_X, 1, -9.1, 16.9 , 0 );
setMoveKey( spep_2 + 972 + OFFSET_X, 1, -5, -0.7 , 0 );
setMoveKey( spep_2 + 973 + OFFSET_X, 1, -5, -0.7 , 0 );
setMoveKey( spep_2 + 974 + OFFSET_X, 1, 1.9, 8.3 , 0 );
setMoveKey( spep_2 + 975 + OFFSET_X, 1, 1.9, 8.3 , 0 );
setMoveKey( spep_2 + 976 + OFFSET_X, 1, 11.8, 2.9 , 0 );
setMoveKey( spep_2 + 977 + OFFSET_X, 1, 11.8, 2.9 , 0 );
setMoveKey( spep_2 + 978 + OFFSET_X, 1, 2.9, 22 , 0 );
setMoveKey( spep_2 + 979 + OFFSET_X, 1, 2.9, 22 , 0 );
setMoveKey( spep_2 + 980 + OFFSET_X, 1, 2.4, 12.6 , 0 );
setMoveKey( spep_2 + 981 + OFFSET_X, 1, 2.4, 12.6 , 0 );
setMoveKey( spep_2 + 982 + OFFSET_X, 1, 8.4, 18.7 , 0 );
setMoveKey( spep_2 + 983 + OFFSET_X, 1, 8.4, 18.7 , 0 );
setMoveKey( spep_2 + 984 + OFFSET_X, 1, -0.6, 11.7 , 0 );
setMoveKey( spep_2 + 987 + OFFSET_X, 1, -0.6, 11.7 , 0 );
setMoveKey( spep_2 + 988 + OFFSET_X, 1, -138.8, -34.2 , 0 );
setMoveKey( spep_2 + 1057 + OFFSET_X, 1, -138.8, -34.2 , 0 );
setMoveKey( spep_2 + 1058 + OFFSET_X, 1, -0.6, 11.7 , 0 );
setMoveKey( spep_2 + 1060 + OFFSET_X, 1, -0.6, 11.7 , 0 );

setScaleKey( spep_2 + 758 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 799 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 800 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 803 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 804 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 805 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 806 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 809 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 810 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 815 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 816 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 817 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 818 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 819 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 820 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 821 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 822 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 823 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 824 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 825 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 826 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 827 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 828 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 829 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 830 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 831 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 832 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 833 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 834 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 835 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 836 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 837 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 838 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 839 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 840 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 841 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 842 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 843 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 844 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 845 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 846 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 847 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 848 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 849 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 850 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 851 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 852 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 853 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 854 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 855 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 856 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 867 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 868 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 869 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 870 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 871 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 872 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 873 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 874 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 875 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 876 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 987 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 988 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 1057 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 1058 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 1060 + OFFSET_X, 1, 1.87, 1.87 );

setRotateKey( spep_2 + 758 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 763 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 764 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 799 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 800 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 803 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 804 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 805 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 806 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 807 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 808 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 809 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 810 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 811 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 812 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 813 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 814 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 815 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 816 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 817 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 818 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 819 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 820 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 821 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 822 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 823 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 824 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 825 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 826 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 827 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 828 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 829 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 830 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 831 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 832 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 833 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 834 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 835 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 836 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 837 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 838 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 839 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 840 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 841 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 842 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 843 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 844 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 845 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 846 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 847 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 848 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 849 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 850 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 851 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 852 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 853 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 854 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 855 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 856 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 857 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 858 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 859 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 860 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 861 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 862 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 863 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 864 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 865 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 987 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 988 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 1057 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 1058 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 1060 + OFFSET_X, 1, 31 );

setBlendColor( spep_2 + 758 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 1059 + OFFSET_X, 1, 5, 1.0, 0.0, 0.0, 0.2);
setBlendColor( spep_2 + 1060 + OFFSET_X, 1, 5, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--エルボー
SE019 = playSeVer2( spep_2 + 0, 1359, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 2, 1187, "",spep_2 + 74, 0, 60, -1);
SE021 = playSeVer2( spep_2 + 8, 1190, "", 0, 0, 0, -1);

--回転
SE022 = playSeVer2( spep_2 + 64, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 64, 1117, "",spep_2 + 100, 0, 14, -1);

--蹴り落とし
SE024 = playSeVer2( spep_2 + 82, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 82, 1187, "", 0, 0, 0, -1);

--敵落ちる
SE026 = playSeVer2( spep_2 + 132, 1277, "",spep_2 + 224, 0, 30, -1);

--敵地面激突
SE027 = playSeVer2( spep_2 + 142, 1159, "", 0, 0, 0, -1);

--地面えぐれる
SE028 = playSeVer2( spep_2 + 160, 1044, "",spep_2 + 258, 58, 24, -1);

--画面遷移からゴジータ回る
SE029 = playSeVer2( spep_2 + 198, 8, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 206, 1304, "",spep_2 + 312, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 206, SE030, 107 );
setPitch( spep_2 + 206, SE030, 600 );
setTimeStretch( SE030, 1.4, 30, 4 );
SE031 = playSeVer2( spep_2 + 206, 1422, "",spep_2 + 308, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 206, SE031, 88 );
SE032 = playSeVer2( spep_2 + 206, 1183, "",spep_2 + 342, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 206, SE032, 102 );

--飛び上がる
SE033 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 244, SE033, 79 );
SE034 = playSeVer2( spep_2 + 244, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 244, 1182, "", 0, 0, 0, -1);

--スターダストフォール溜める
SE036 = playSeVer2( spep_2 + 272, 1449, "",spep_2 + 482, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 272, SE036, 186 );
SE037 = playSeVer2( spep_2 + 292, 1227, "",spep_2 + 484, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE037, 184 );
SE038 = playSeVer2( spep_2 + 292, 1356, "",spep_2 + 484, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE038, 112 );
SE039 = playSeVer2( spep_2 + 292, 1440, "", spep_2 + 400, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 292, SE039, 71 );
SE040 = playSeVer2( spep_2 + 292, 1445, "", spep_2 + 400, 0, 10, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE040, 162 );
SE041 = playSeVer2( spep_2 + 318, 1450, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 318, SE041, 80 );

--顔アップ
SE053 = playSeVer2( spep_2 + 402, 1264, "",spep_2 + 486, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 402, SE053, 81 );
setPitch( spep_2 + 402, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );
SE054 = playSeVer2( spep_2 + 402, 1226, "",spep_2 + 488, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 402, SE054, 81 );

--振りかぶる
SE060 = playSeVer2( spep_2 + 438, 1116, "",spep_2 + 490, 0, 22, -1);

--スターダストフォール発射
SE062 = playSeVer2( spep_2 + 478, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE062, 100 );
SE063 = playSeVer2( spep_2 + 486, 1446, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE063, 150 );
SE064 = playSeVer2( spep_2 + 486, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE064, 55 );
SE066 = playSeVer2( spep_2 + 614, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE066, 88 );
SE063_2 = playSeVer2( spep_2 + 738, 1446, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 738, SE063_2, 150 );

--地面衝突
SE065 = playSeVer2( spep_2 + 570, 1159, "",spep_2 + 882, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 570, SE065, 65 );

--ゴジータ空中浮遊
SE067 = playSeVer2( spep_2 + 630, 1117, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 680, 44, "", 0, 0, 0, -1);

--連続爆発
SE069 = playSeVer2( spep_2 + 738, 1023, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 738, SE069, 71 );
SE070 = playSeVer2( spep_2 + 754, 1451, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 754, SE070, 60 );
SE071 = playSeVer2( spep_2 + 764, 1024, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 764, SE071, 71 );
SE073 = playSeVer2( spep_2 + 798, 1068, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 798, SE073, 67 );
SE074 = playSeVer2( spep_2 + 810, 1067, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 810, SE074, 87 );


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 772 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  884f -4


end
