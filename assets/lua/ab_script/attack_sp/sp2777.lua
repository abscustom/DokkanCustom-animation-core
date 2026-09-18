--1029730:UR_スラッグ_必殺技：ダークネスアイビーム
--sp_effect_a3_00112
--sp2777

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163272 --腕組みスラッグ～カードカットイン前 ef_001
SP_02 = 163273 --腕組みスラッグ～カードカットイン前 ef_001b
SP_03 = 163276 --目からビーム～フィニッシュ ef_002

--エフェクト(敵)
SP_01r = 163274 --腕組みスラッグ～カードカットイン前 ef_001r
SP_02r = 163275 --腕組みスラッグ～カードカットイン前 ef_001br


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
]]--

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 腕組みスラッグ～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 624;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 腕組みスラッグ～カードカットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 腕組みスラッグ～カードカットイン前(ef_001b)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 165, 521.0, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 521.0 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 521.0 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 240.1, -386.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 290, -412.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 290, -412.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 439.9, -491.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 439.9, -491.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 673.2, -613.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 673.2, -613.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 889.6, -726.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 889.6, -726.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 1072.8, -822.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 1072.8, -822.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 7.89, 7.89 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 402 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 375.1, -244.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 375.1, -244.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 379.8, -248.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 379.8, -248.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 384.4, -251.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 384.4, -251.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 370.7, -243.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 370.7, -243.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 357.4, -235.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 357.4, -235.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 362.1, -239.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 362.1, -239.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 366.8, -243.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 366.8, -243.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 354, -235.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 354, -235.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 341.7, -227.9 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 341.7, -227.9 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 346.6, -231.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 346.6, -231.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 351.4, -235.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 351.4, -235.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 339.7, -228.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 339.7, -228.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 328.3, -221.5 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 328.3, -221.5 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 333.4, -225.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 333.4, -225.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 338.7, -229.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 338.7, -229.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 327.8, -223.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 327.8, -223.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 317.4, -216.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 317.4, -216.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 323, -220.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 323, -220.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 328.6, -225.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 328.6, -225.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 318.8, -219.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 318.8, -219.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 309.3, -213 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 309.3, -213 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 315.4, -217.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 315.4, -217.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 321.6, -222.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 321.6, -222.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 312.8, -216.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 312.8, -216.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 304.2, -211.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 304.2, -211.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 306.4, -213.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 306.4, -213.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 308.9, -215.2 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 308.9, -215.2 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 305.5, -213.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 305.5, -213.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 302.4, -211.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 302.4, -211.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 305.5, -213.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 305.5, -213.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 308.8, -216.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 308.8, -216.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 309.1, -216.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 309.1, -216.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 309.5, -216.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 309.5, -216.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 310.2, -217.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 310.2, -217.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 311.1, -218.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 311.1, -218.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 312.3, -219 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 312.3, -219 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 313.6, -219.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 313.6, -219.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 314.9, -220.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 314.9, -220.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 316.2, -221.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 316.2, -221.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 317.5, -222.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 317.5, -222.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 318.8, -223.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 318.8, -223.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 320.1, -224.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 320.1, -224.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 321.3, -225.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 321.3, -225.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 322.6, -226.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 322.6, -226.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 323.9, -227.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 323.9, -227.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 144.7, -206.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 144.7, -206.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 142.9, -204.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 142.9, -204.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 141.1, -201.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 141.1, -201.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 139.3, -198.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 139.3, -198.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 17.8, -30 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 17.8, -30 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 83.1, -41.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 83.1, -41.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 9.4, -168.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 9.4, -168.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 96.2, -78.6 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 96.2, -78.6 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 126.9, -117.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 126.9, -117.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 109.3, -84.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 109.3, -84.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 115.8, -98.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 115.8, -98.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 140.3, -107 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 140.3, -107 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 191.9, -136.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 191.9, -136.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 232.5, -158.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 232.5, -158.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 237.5, -171.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 237.5, -171.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 232.6, -177.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 232.6, -177.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 218.1, -179.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 218.1, -179.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 194.1, -174.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 194.1, -174.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 165.3, -167.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 165.3, -167.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 136.5, -160.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 136.5, -160.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 85.2, -1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 85.2, -1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 85.4, 0.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 85.4, 0.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 87.6, 19.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 87.6, 19.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 81.6, -5.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 81.6, -5.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 97.7, 41.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 97.7, 41.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 69.7, 21.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 69.7, 21.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 89.7, 48.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 89.7, 48.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 87.9, 42.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 87.9, 42.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 91.2, 60.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 91.2, 60.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 80.8, 54.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 80.8, 54.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 86.2, 68.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 86.2, 68.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 86.3, 71.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 86.3, 71.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 86.5, 73.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 86.5, 73.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 140.8, 36.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 140.8, 36.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 145, 23.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 145, 23.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 133.1, 57 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 133.1, 57 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 155.3, 38.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 155.3, 38.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 109.3, 47.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 109.3, 47.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 151.6, 57 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 151.6, 57 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 152.7, 22.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 152.7, 22.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 167.8, 42.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 167.8, 42.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 165.5, 19.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 165.5, 19.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 169.9, 30.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 169.9, 30.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 173.5, 30 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 173.5, 30 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 175.7, 30.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 175.7, 30.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 176.4, 31 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 176.4, 31 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 157.4, -48.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 157.4, -48.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 156.9, -50.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 156.9, -50.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 156.5, -53.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 156.5, -53.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 156, -55.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 156, -55.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 155.7, -58.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 155.7, -58.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 155.2, -60.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 155.2, -60.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 154.8, -63.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 154.8, -63.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 154.4, -65.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 154.4, -65.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 68.4, 67.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 68.4, 67.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 52.5, 36.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 52.5, 36.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 38.5, 72.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 38.5, 72.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 60.3, 40.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 60.3, 40.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 61.9, 72.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 61.9, 72.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 57.1, 62.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 57.1, 62.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 58.2, 76.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 58.2, 76.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 65, 65.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 65, 65.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 59.6, 78.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 59.6, 78.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 59.9, 79.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 59.9, 79.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 77.6, 50.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 77.6, 50.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 78.5, 50.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 78.5, 50.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 79.5, 51.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 79.5, 51.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 80.5, 52 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 80.5, 52 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 81.4, 52.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 81.4, 52.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 82.4, 53.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 82.4, 53.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 83.3, 53.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 83.3, 53.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 84.3, 54.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 84.3, 54.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 85.3, 55.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 85.3, 55.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 86.2, 55.8 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 86.2, 55.8 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 87.1, 56.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 87.1, 56.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 88.1, 57 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 88.1, 57 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 24.1, -12.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 24.1, -12.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 42.1, -133.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 42.1, -133.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 50.3, -85.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 50.3, -85.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 60.7, -114.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 60.7, -114.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 32.8, -78.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 32.8, -78.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 57.2, -99.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 57.2, -99.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 45.4, -99.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 45.4, -99.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 63.7, -103.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 63.7, -103.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 106.1, -247.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 106.1, -247.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 144.3, -256.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 144.3, -256.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 139, -300.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 139, -300.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 152.3, -334.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 152.3, -334.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 164.2, -360.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 164.2, -360.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 174.8, -382.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 174.8, -382.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 183.8, -400.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 183.8, -400.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 191.5, -416.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 191.5, -416.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 197.8, -428.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 197.8, -428.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 202.8, -437.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 202.8, -437.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 206.2, -443.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 206.2, -443.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 208.4, -446.6 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 208.4, -446.6 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 209.1, -446.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 209.1, -446.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 50.9, -7.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 50.9, -7.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 46.2, -12.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 46.2, -12.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 42, -16 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 42, -16 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 38, -19.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 38, -19.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 34.4, -21.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 34.4, -21.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 31.2, -22.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 31.2, -22.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 30.1, -25.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 30.1, -25.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 29.2, -27.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 29.2, -27.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 28.4, -29.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 28.4, -29.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 27.7, -31.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 27.7, -31.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 27.1, -32.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 27.1, -32.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 26.7, -33.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 26.7, -33.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 26.4, -34.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 26.4, -34.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 26.2, -34.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 26.2, -34.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 26.1, -34.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 26.1, -34.6 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 137.5 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 137.5 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 140.6 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 140.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 143.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 143.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 145.2 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 145.2 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 148.1 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 148.1 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 148.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 148.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 149 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 149 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 71 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 71 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 96.2 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 96.2 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 37.6 );

--敵の動き3
setDisp( spep_0 + 456 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 626 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 456 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 456 + OFFSET_X, 1, 170.8, -301.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 170.8, -301.1 , 0 );

setScaleKey( spep_0 + 456 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_0 + 456 + OFFSET_X, 1, 117 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 117 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 110, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 162 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 114, 0, 24, -1);

--ズーム
SE004 = playSeVer2( spep_0 + 6, 1072, "", 0, 0, 0, -1);

--集中線
SE005 = playSeVer2( spep_0 + 76, 1137, "",spep_0 + 216, 0, 102, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 74 );
SE006 = playSeVer2( spep_0 + 76, 1179, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 114, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE008, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--パンチ
SE009 = playSeVer2( spep_0 + 160, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);

--連打
SE011 = playSeVer2( spep_0 + 208, 1187, "",spep_0 + 268, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 208, SE011, 79 );
SE012 = playSeVer2( spep_0 + 208, 1001, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 222, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE013, 182 );
SE014 = playSeVer2( spep_0 + 232, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 232, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 270, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 270, 1153, "", 0, 0, 0, -1);

--叩き落とす
SE018 = playSeVer2( spep_0 + 308, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 314, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE020 = playSeVer2( spep_0 + 330, 1121, "",spep_0 + 408, 0, 16, -1);

--地面激突
SE021 = playSeVer2( spep_0 + 388, 1159, "",spep_0 + 628, 0, 22, -1);

--おりてくる
SE022 = playSeVer2( spep_0 + 444, 63, "",spep_0 + 496, 0, 14, -1);
SE023 = playSeVer2( spep_0 + 480, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE023, 260 );
SE024 = playSeVer2( spep_0 + 486, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE024, 224 );

--歩いてくる
SE025 = playSeVer2( spep_0 + 538, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE025, 224 );
SE026 = playSeVer2( spep_0 + 572, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE026, 204 );
SE027 = playSeVer2( spep_0 + 600, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE027, 200 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --624F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 目からビーム～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 290;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 目からビーム～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--歩いてくる
SE029 = playSeVer2( spep_2 + 10, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE029, 257 );
SE030 = playSeVer2( spep_2 + 52, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE030, 257 );
SE036 = playSeVer2( spep_2 + 94, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE036, 269 );

--ビーム放つ
SE032 = playSeVer2( spep_2 + 64, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE032, 133 );
SE033 = playSeVer2( spep_2 + 64, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE033, 63 );
SE034 = playSeVer2( spep_2 + 64, 1312, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 70, 1296, "",spep_2 + 168, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 70, SE035, 133 );
SE031 = playSeVer2( spep_2 + 90, 1128, "",spep_2 + 170, 12, 28, -1);
setSeVolumeByWorkId( spep_2 + 90, SE031, 54 );
setStartTimeMs( SE031,  567 );
setPitch( spep_2 + 90, SE031, 1200 );
setTimeStretch( SE031, 1.8, 30, 4 );

--爆発
SE037 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 152, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 190); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 290F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 腕組みスラッグ～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 624;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 腕組みスラッグ～カードカットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 腕組みスラッグ～カードカットイン前(ef_001b)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 165, 521.0, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 521.0 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 521.0 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -240.1, -386.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -290, -412.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -290, -412.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -439.9, -491.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -439.9, -491.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -673.2, -613.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -673.2, -613.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -889.6, -726.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -889.6, -726.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -1072.8, -822.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -1072.8, -822.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 7.89, 7.89 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 402 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, -375.1, -244.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -375.1, -244.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -379.8, -248.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -379.8, -248.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -384.4, -251.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -384.4, -251.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -370.7, -243.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -370.7, -243.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -357.4, -235.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -357.4, -235.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -362.1, -239.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -362.1, -239.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -366.8, -243.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -366.8, -243.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -354, -235.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -354, -235.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -341.7, -227.9 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -341.7, -227.9 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -346.6, -231.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -346.6, -231.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -351.4, -235.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -351.4, -235.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -339.7, -228.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -339.7, -228.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -328.3, -221.5 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -328.3, -221.5 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -333.4, -225.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -333.4, -225.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -338.7, -229.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -338.7, -229.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -327.8, -223.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -327.8, -223.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -317.4, -216.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -317.4, -216.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -323, -220.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -323, -220.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -328.6, -225.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -328.6, -225.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -318.8, -219.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -318.8, -219.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -309.3, -213 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -309.3, -213 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -315.4, -217.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -315.4, -217.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -321.6, -222.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -321.6, -222.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -312.8, -216.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -312.8, -216.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -304.2, -211.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -304.2, -211.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -306.4, -213.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -306.4, -213.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -308.9, -215.2 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -308.9, -215.2 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -305.5, -213.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -305.5, -213.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -302.4, -211.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -302.4, -211.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -305.5, -213.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -305.5, -213.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -308.8, -216.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -308.8, -216.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -309.1, -216.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -309.1, -216.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -309.5, -216.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -309.5, -216.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -310.2, -217.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -310.2, -217.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -311.1, -218.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -311.1, -218.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -312.3, -219 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -312.3, -219 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -313.6, -219.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -313.6, -219.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -314.9, -220.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -314.9, -220.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -316.2, -221.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -316.2, -221.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -317.5, -222.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -317.5, -222.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -318.8, -223.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -318.8, -223.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -320.1, -224.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -320.1, -224.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -321.3, -225.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -321.3, -225.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -322.6, -226.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -322.6, -226.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -323.9, -227.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -323.9, -227.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -144.7, -206.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -144.7, -206.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -142.9, -204.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -142.9, -204.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -141.1, -201.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -141.1, -201.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -139.3, -198.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -139.3, -198.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -17.8, -30 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -17.8, -30 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -83.1, -41.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -83.1, -41.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -9.4, -168.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -9.4, -168.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -96.2, -78.6 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -96.2, -78.6 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -126.9, -117.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -126.9, -117.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -109.3, -84.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -109.3, -84.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -115.8, -98.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -115.8, -98.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -140.3, -107 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -140.3, -107 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -191.9, -136.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -191.9, -136.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -232.5, -158.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -232.5, -158.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -237.5, -171.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -237.5, -171.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -232.6, -177.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -232.6, -177.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -218.1, -179.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -218.1, -179.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -194.1, -174.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -194.1, -174.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -165.3, -167.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -165.3, -167.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -136.5, -160.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -136.5, -160.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 85.2, -1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 85.2, -1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 85.4, 0.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 85.4, 0.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 87.6, 19.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 87.6, 19.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 81.6, -5.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 81.6, -5.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 97.7, 41.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 97.7, 41.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 69.7, 21.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 69.7, 21.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 89.7, 48.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 89.7, 48.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 87.9, 42.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 87.9, 42.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 91.2, 60.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 91.2, 60.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 80.8, 54.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 80.8, 54.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 86.2, 68.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 86.2, 68.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 86.3, 71.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 86.3, 71.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 86.5, 73.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 86.5, 73.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 140.8, 36.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 140.8, 36.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 145, 23.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 145, 23.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 133.1, 57 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 133.1, 57 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 155.3, 38.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 155.3, 38.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 109.3, 47.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 109.3, 47.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 151.6, 57 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 151.6, 57 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 152.7, 22.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 152.7, 22.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 167.8, 42.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 167.8, 42.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 165.5, 19.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 165.5, 19.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 169.9, 30.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 169.9, 30.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 173.5, 30 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 173.5, 30 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 175.7, 30.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 175.7, 30.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 176.4, 31 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 176.4, 31 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 157.4, -48.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 157.4, -48.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 156.9, -50.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 156.9, -50.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 156.5, -53.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 156.5, -53.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 156, -55.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 156, -55.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 155.7, -58.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 155.7, -58.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 155.2, -60.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 155.2, -60.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 154.8, -63.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 154.8, -63.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 154.4, -65.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 154.4, -65.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 68.4, 67.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 68.4, 67.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 52.5, 36.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 52.5, 36.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 38.5, 72.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 38.5, 72.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 60.3, 40.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 60.3, 40.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 61.9, 72.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 61.9, 72.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 57.1, 62.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 57.1, 62.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 58.2, 76.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 58.2, 76.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 65, 65.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 65, 65.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 59.6, 78.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 59.6, 78.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 59.9, 79.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 59.9, 79.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 77.6, 50.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 77.6, 50.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 78.5, 50.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 78.5, 50.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 79.5, 51.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 79.5, 51.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 80.5, 52 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 80.5, 52 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 81.4, 52.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 81.4, 52.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 82.4, 53.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 82.4, 53.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 83.3, 53.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 83.3, 53.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 84.3, 54.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 84.3, 54.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 85.3, 55.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 85.3, 55.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 86.2, 55.8 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 86.2, 55.8 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 87.1, 56.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 87.1, 56.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 88.1, 57 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 88.1, 57 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 24.1, -12.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 24.1, -12.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 42.1, -133.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 42.1, -133.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 50.3, -85.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 50.3, -85.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 60.7, -114.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 60.7, -114.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 32.8, -78.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 32.8, -78.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 57.2, -99.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 57.2, -99.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 45.4, -99.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 45.4, -99.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 63.7, -103.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 63.7, -103.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 106.1, -247.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 106.1, -247.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 144.3, -256.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 144.3, -256.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 139, -300.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 139, -300.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 152.3, -334.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 152.3, -334.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 164.2, -360.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 164.2, -360.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 174.8, -382.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 174.8, -382.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 183.8, -400.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 183.8, -400.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 191.5, -416.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 191.5, -416.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 197.8, -428.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 197.8, -428.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 202.8, -437.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 202.8, -437.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 206.2, -443.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 206.2, -443.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 208.4, -446.6 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 208.4, -446.6 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 209.1, -446.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 209.1, -446.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 50.9, -7.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 50.9, -7.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 46.2, -12.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 46.2, -12.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 42, -16 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 42, -16 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 38, -19.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 38, -19.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 34.4, -21.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 34.4, -21.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 31.2, -22.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 31.2, -22.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 30.1, -25.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 30.1, -25.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 29.2, -27.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 29.2, -27.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 28.4, -29.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 28.4, -29.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 27.7, -31.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 27.7, -31.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 27.1, -32.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 27.1, -32.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 26.7, -33.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 26.7, -33.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 26.4, -34.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 26.4, -34.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 26.2, -34.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 26.2, -34.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 26.1, -34.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 26.1, -34.6 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 137.5 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 137.5 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 140.6 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 140.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 143.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 143.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 145.2 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 145.2 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 148.1 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 148.1 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 148.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 148.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 149 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 149 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 71 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 71 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 96.2 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 96.2 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 37.6 );

--敵の動き3
setDisp( spep_0 + 456 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 626 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 456 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 456 + OFFSET_X, 1, -170.8, -301.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -170.8, -301.1 , 0 );

setScaleKey( spep_0 + 456 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_0 + 456 + OFFSET_X, 1, -117 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, -117 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 110, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 162 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 114, 0, 24, -1);

--ズーム
SE004 = playSeVer2( spep_0 + 6, 1072, "", 0, 0, 0, -1);

--集中線
SE005 = playSeVer2( spep_0 + 76, 1137, "",spep_0 + 216, 0, 102, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 74 );
SE006 = playSeVer2( spep_0 + 76, 1179, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 114, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE008, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--パンチ
SE009 = playSeVer2( spep_0 + 160, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);

--連打
SE011 = playSeVer2( spep_0 + 208, 1187, "",spep_0 + 268, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 208, SE011, 79 );
SE012 = playSeVer2( spep_0 + 208, 1001, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 222, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE013, 182 );
SE014 = playSeVer2( spep_0 + 232, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 232, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 270, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 270, 1153, "", 0, 0, 0, -1);

--叩き落とす
SE018 = playSeVer2( spep_0 + 308, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 314, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE020 = playSeVer2( spep_0 + 330, 1121, "",spep_0 + 408, 0, 16, -1);

--地面激突
SE021 = playSeVer2( spep_0 + 388, 1159, "",spep_0 + 628, 0, 22, -1);

--おりてくる
SE022 = playSeVer2( spep_0 + 444, 63, "",spep_0 + 496, 0, 14, -1);
SE023 = playSeVer2( spep_0 + 480, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE023, 260 );
SE024 = playSeVer2( spep_0 + 486, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE024, 224 );

--歩いてくる
SE025 = playSeVer2( spep_0 + 538, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE025, 224 );
SE026 = playSeVer2( spep_0 + 572, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE026, 204 );
SE027 = playSeVer2( spep_0 + 600, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE027, 200 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --624F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 目からビーム～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 290;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 目からビーム～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--歩いてくる
SE029 = playSeVer2( spep_2 + 10, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE029, 257 );
SE030 = playSeVer2( spep_2 + 52, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE030, 257 );
SE036 = playSeVer2( spep_2 + 94, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE036, 269 );

--ビーム放つ
SE032 = playSeVer2( spep_2 + 64, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE032, 133 );
SE033 = playSeVer2( spep_2 + 64, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE033, 63 );
SE034 = playSeVer2( spep_2 + 64, 1312, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 70, 1296, "",spep_2 + 168, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 70, SE035, 133 );
SE031 = playSeVer2( spep_2 + 90, 1128, "",spep_2 + 170, 12, 28, -1);
setSeVolumeByWorkId( spep_2 + 90, SE031, 54 );
setStartTimeMs( SE031,  567 );
setPitch( spep_2 + 90, SE031, 1200 );
setTimeStretch( SE031, 1.8, 30, 4 );

--爆発
SE037 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 152, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 190); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 290F

end

