--1031670:キング・ゴマー(ジャイアント)_必殺技：ジャイアントコラープス(エネミー)
--sp_effect_a7_00073
--sp2880

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01r  = 163916;  --ef_001r  カードカットイン前
SP_01br = 163917;  --ef_001br カードカットイン前
SP_02r  = 163918;  --ef_002r  カードカットイン〜フィニッシュ
SP_02br = 163919;  --ef_002br カードカットイン〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 196;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カードカットイン前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- カードカットイン前(ef_001br)
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 179.1, -245.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 179.1, -245.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 179.1, -245.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 182.5, -238 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 182.5, -238 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 177.2, -264.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 177.2, -264.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 184.3, -229.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 184.3, -229.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 172.7, -263 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 172.7, -263 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 181.9, -240.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 181.9, -240.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 180.8, -260 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 180.8, -260 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 175, -238.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 175, -238.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 184.6, -258.9 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 184.6, -258.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 173.6, -240.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 173.6, -240.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 183.5, -253.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 183.5, -253.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 175, -238.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 175, -238.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 183.3, -252.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 183.3, -252.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 176.8, -239.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 176.8, -239.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 180.2, -251.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 180.2, -251.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 174.4, -241.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 174.4, -241.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 183, -251.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 183, -251.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 175.8, -241.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 175.8, -241.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 180.1, -250.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 180.1, -250.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 174.1, -243.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 174.1, -243.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 181.5, -241.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 181.5, -241.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 178.3, -251.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 178.3, -251.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 181.7, -241.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 181.7, -241.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 178.4, -251.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 178.4, -251.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 181, -241 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 181, -241 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 177.3, -251 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 177.3, -251 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 182.5, -241.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 182.5, -241.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 176.6, -251 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 176.6, -251 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 181.4, -240.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 181.4, -240.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 178.6, -247.7 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 178.6, -247.7 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 177.9, -240.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 177.9, -240.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 181.3, -248.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 181.3, -248.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 175.8, -241.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 175.8, -241.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 181.8, -250.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 181.8, -250.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 179.2, -241.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 179.2, -241.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 181.9, -250.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 181.9, -250.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 177.9, -240.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 177.9, -240.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 180.5, -248.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 180.5, -248.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 177.7, -243.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 177.7, -243.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 178.1, -249.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 178.1, -249.7 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 178.3, -243.2 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 178.3, -243.2 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 180.7, -246.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 180.7, -246.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 179, -243.2 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 179, -243.2 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 177.3, -247.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 177.3, -247.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 180.8, -247 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 180.8, -247 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 178, -244.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 178, -244.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 180.4, -244.7 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 180.4, -244.7 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 179.9, -247 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 179.9, -247 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 178.3, -244.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 178.3, -244.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 179.7, -244.7 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 179.7, -244.7 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 178, -244.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 178, -244.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 180.4, -244.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 180.4, -244.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 178.8, -243.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 179.9, -247 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 179.9, -247 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 178.3, -244.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 178.3, -244.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 179.7, -244.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 179.7, -244.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 178.1, -247.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 179.6, -246.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 179.6, -246.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 179.1, -246 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 179.1, -246 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 179.3, -245.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 179.3, -245.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 180.2, -247 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 180.2, -247 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 179.6, -247 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 179.6, -247 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 179.1, -247.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 179.1, -247.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 179.6, -246.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 179.6, -246.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 179.1, -247.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 179.1, -247.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 179.1, -246.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 179.1, -246.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 179.5, -246.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 179.5, -246.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 179.6, -244.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 179.6, -244.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 179.8, -246.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 179.8, -246.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 179.7, -245.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 179.7, -245.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 179.6, -245.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 179.3, -245.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 179.3, -245.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 179.4, -246.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 179.4, -246.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 179.1, -246.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 179.1, -246.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 179.1, -246.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 179.1, -246.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 179.2, -246.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 179.2, -246.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 179.1, -246 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 179.1, -246 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 179.1, -246.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 179.1, -246.1 , 0 );

setScaleKey( spep_0 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 0, 1, 2, 0.317, 0.000, 0.388, 0.1 );
setBlendColor( spep_0 + 30 + OFFSET_X, 1, 2, 0.317, 0.000, 0.388, 0.2 );
setBlendColor( spep_0 + 42 + OFFSET_X, 1, 2, 0.317, 0.000, 0.388, 0.3 );
setBlendColor( spep_0 + 84 + OFFSET_X, 1, 2, 0.317, 0.000, 0.388, 0.4 );
setBlendColor( spep_0 + 198 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 188, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1457, "",spep_0 + 206, 0, 60, -1);
SE003 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 232, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );
SE004 = playSeVer2( spep_0 + 8, 1379, "",spep_0 + 222, 0, 24, -1);
SE005 = playSeVer2( spep_0 + 18, 1188, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 146 );
SE006 = playSeVer2( spep_0 + 40, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --196f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--目開く
SE008 = playSeVer2( spep_1 + 72, 1278, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE008, 47 );
setStartTimeMs( SE008,  1000 );
SE009 = playSeVer2( spep_1 + 82, 3, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 81 );
setPitch( spep_1 + 82, SE009, 500 );
setTimeStretch( SE009, 1.33, 30, 4 );
SE010 = playSeVer2( spep_1 + 82, 1465, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 82, 1418, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 582;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン〜フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, -71.8, -107.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -71.8, -107.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -31.8, -87.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -31.8, -87.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -52.3, -107.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -52.3, -107.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -52.6, -107.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -52.6, -107.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 12.7, 35.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 12.7, 35.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 26.4, 53.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 26.4, 53.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 11.7, 69.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 11.7, 69.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 13.4, 67.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 13.4, 67.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 50.8, 68.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 50.8, 68.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 44.5, 60.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 44.5, 60.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 64.3, 58.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 64.3, 58.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 77.8, 77.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 77.8, 77.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 77.4, 77.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 77.4, 77.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 73, 73 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 73, 73 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 68.6, 78.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 68.6, 78.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 93, 71.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 93, 71.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 88.6, 77.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 88.6, 77.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 88.3, 77 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 88.3, 77 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 86, 72.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 86, 72.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 101.7, 80.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 101.7, 80.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 97.4, 77.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 97.4, 77.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 95.1, 81.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 95.1, 81.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 107.6, 84 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 107.6, 84 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 107.3, 83.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 107.3, 83.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 107.1, 87.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 107.1, 87.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 104.9, 85 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 104.9, 85 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 117.4, 89.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 117.4, 89.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 119.2, 84.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 119.2, 84.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 118.9, 84.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 118.9, 84.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 116.6, 90.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 116.6, 90.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 125.5, 92.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 125.5, 92.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 127.2, 96.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 127.2, 96.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 124.9, 91.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 124.9, 91.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 124.6, 91.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 124.6, 91.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 127.5, 94.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 127.5, 94.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 127.1, 90.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 127.1, 90.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 128.8, 93.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 128.8, 93.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 131.6, 94.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 131.6, 94.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 131.2, 93.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 131.2, 93.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 134.9, 95.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 134.9, 95.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 132.4, 92.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 132.4, 92.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 133.4, 93.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 133.4, 93.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 135, 91.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 135, 91.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 134.6, 90.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 134.6, 90.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 134.2, 94.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 134.2, 94.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 136.2, 95.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 136.2, 95.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 133.7, 102.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 133.7, 102.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 137.3, 100.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 137.3, 100.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 136.8, 99.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 136.8, 99.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 137.3, 98.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 137.3, 98.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 138.8, 94.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 138.8, 94.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 124.3, 85.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 124.3, 85.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 124.3, 71.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 124.3, 71.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 126.2, 76.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 126.2, 76.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 132.1, 82.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 132.1, 82.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 139.8, 72.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 139.8, 72.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 125.3, 87.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 125.3, 87.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 124.3, 80.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 124.3, 80.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 124.3, 80.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 124.3, 80.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 126.3, 86.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 126.3, 86.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 126.2, 86.7 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 126.2, 86.7 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 106.2, 92.7 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 106.2, 92.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 127, 72.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 127, 72.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 126.9, 73 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 126.9, 73 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 126.8, 73.6 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 126.8, 73.6 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 148.7, 66.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 148.7, 66.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 173.4, 87.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 173.4, 87.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 158.7, 69.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 158.7, 69.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 166.7, 69.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 166.7, 69.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 126.7, 81.2 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 126.7, 81.2 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 128.6, 65.5 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 128.6, 65.5 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 130.3, 88.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 130.3, 88.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 121.9, 74.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 121.9, 74.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 122.2, 73.6 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 122.2, 73.6 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 128.4, 74.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 128.4, 74.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 114.1, 59.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 114.1, 59.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 111.3, 86.7 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 111.3, 86.7 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 113, 86.6 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 113, 86.6 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 116.7, 64.5 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 116.7, 64.5 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 118, 84.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 118, 84.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 123.4, 66.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 123.4, 66.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 121.8, 73.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 121.8, 73.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 122.8, 83.5 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 122.8, 83.5 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 125.8, 86.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 125.8, 86.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 128.8, 81.8 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 128.8, 81.8 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 79 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 79 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 95 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 95 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 115.8 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 115.8 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 239 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 239 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 262 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 262 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 286.8 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 286.8 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 291 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 291 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 335 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 335 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 338 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 338 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 369 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 369 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 407 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 407 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 439 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 439 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 453 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 453 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 477 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 477 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 491 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 491 );

setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 1.000, 0.800, 0.996, 0.4 );
setBlendColor( spep_2 + 433 + OFFSET_X, 1, 3, 1.000, 0.800, 0.996, 0.4 );
setBlendColor( spep_2 + 434 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--目開く
SE012 = playSeVer2( spep_2 + 0, 1311, "", 0, 0, 0, -1);

--目からエネルギー放つ
SE013 = playSeVer2( spep_2 + 66, 1491, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 66, 1043, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 96, 1491, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 110, 1240, "",spep_2 + 208, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 110, SE016, 141 );
SE017 = playSeVer2( spep_2 + 122, 1491, "", 0, 0, 0, -1);

--爆発する
SE018 = playSeVer2( spep_2 + 184, 1026, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 184, 1159, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 194, 1343, "",spep_2 + 492, 0, 90, -1);
SE021 = playSeVer2( spep_2 + 200, 1258, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 254; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);

setBlendColor( SP_dodge + 9, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--地響き
SE022 = playSeVer2( spep_2 + 248, 1044, "",spep_2 + 484, 0, 52, -1);
SE025 = playSeVer2( spep_2 + 286, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 286, SE025, 71 );

--敵吹き飛ぶ
SE023 = playSeVer2( spep_2 + 260, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 260, 1121, "",spep_2 + 450, 0, 98, -1);

--爆発
SE026 = playSeVer2( spep_2 + 376, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 390, 1168, "", 0, 0, 0, -1);

--目光る
SE028 = playSeVer2( spep_2 + 416, 1495, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 416, SE028, 68 );

--画面遷移
SE029 = playSeVer2( spep_2 + 416, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 468); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  582f


end
